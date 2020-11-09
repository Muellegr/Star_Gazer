/*This controls the visible lights on the device.
 * Critically, this applies a PWM using a timer.
 * The values for the lights are determined by the LED index at the time.
 *
 *
 */
#include "ring_light_controller.h"
#include "RingLight.h"
#include "main.h"
#include "ring_light_bar.h"


#define PWM_ON_PERIOD (25000)
#define PWM_OFF_PERIOD (750)

typedef enum
{
	pwm_off,
	pwm_on
} pwm_state;

typedef struct
{
	int pwm_frame;
	pwm_state pwm_state;
	uint8_t ring_led_buffer[3]  __attribute__((aligned (8)));
	led_ring_type led_ring;
	ring_light_bar_type led_bar; //Gradiants
} ring_light_controller_type;


ring_light_controller_type ring_light_controller;
static SPI_HandleTypeDef *spi_pointer;
static TIM_HandleTypeDef *timer3_pointer;

void increment_gradiant(int index, int offset)
{
	int ind = ring_light_controller.led_bar.gradiants[index].index + offset;
	if (ind >= GRADIANT_MAX_INDEX)
	{ ind = 0; }
	else if (ind < 0)
	{ ind = GRADIANT_MAX_INDEX - 1; }
	ring_light_controller.led_bar.gradiants[index].index = ind;
}


void ring_light_controller_tim3_interrupt()
{
	if (ring_light_controller.pwm_frame == 90)
	{
		increment_gradiant(0, 1);
		increment_gradiant(1, -3);
		rasterize_bar();
	}

	switch (ring_light_controller.pwm_state)
	{
		case (pwm_off):
			ring_light_controller.pwm_state = pwm_on;
			ring_light_controller.pwm_frame += 1;
			if (ring_light_controller.pwm_frame > 100)
			{ ring_light_controller.pwm_frame = 0; }

			ring_pwm_on();
			break;

		case (pwm_on):
			ring_light_controller.pwm_state = pwm_off;
			ring_pwm_off();
			break;

		default:
			//GM todo assert here
			ring_light_controller.pwm_state = pwm_on;
			ring_pwm_off();
			break;
	}
}

void ring_pwm_off()
{
	TIM3->ARR = PWM_OFF_PERIOD;
	timer3_pointer->Instance->ARR = PWM_OFF_PERIOD;
	__HAL_TIM_SET_COUNTER(timer3_pointer, 0);

	//Turn LEDs off
	HAL_GPIO_WritePin(GPIOA, SHIFT_REG_OUTPUT_ENABLE_N_Pin, SET);
}

void ring_pwm_on()
{
	rasterize_to_buffer();

	HAL_SPI_Transmit(spi_pointer, ring_light_controller.ring_led_buffer, 3, 100);

	//shift registers and enable output
	HAL_GPIO_WritePin(GPIOA, SHIFT_REG_LATCH_Pin, SET);
	HAL_GPIO_WritePin(GPIOA, SHIFT_REG_LATCH_Pin, RESET);
	//Turn LEDs on
	HAL_GPIO_WritePin(GPIOA, SHIFT_REG_OUTPUT_ENABLE_N_Pin, RESET);

	TIM3->ARR = PWM_ON_PERIOD;
	timer3_pointer->Instance->ARR = PWM_ON_PERIOD;
	__HAL_TIM_SET_COUNTER(timer3_pointer, 0);
}

void rasterize_to_buffer()
{
	//Take if each LED is meant to be on and add it to the array buffer.
	uint8_t tempVar;
	tempVar = 0;

	for (int i = 0; i < 8; ++i)
	{
		int serial_on = Is_Serial_Led_On(&ring_light_controller.led_ring, i, ring_light_controller.pwm_frame);
		tempVar |= serial_on << (i);
	}
	ring_light_controller.ring_led_buffer[0] = tempVar;
	tempVar = 0;
	for (int i = 0; i < 8; ++i)
	{
		int serial_on = Is_Serial_Led_On(&ring_light_controller.led_ring, i + 8, ring_light_controller.pwm_frame);
		tempVar |= serial_on << (i);
	}
	ring_light_controller.ring_led_buffer[1] = tempVar;
	tempVar = 0;
	for (int i = 0; i < 8; ++i)
	{
		int serial_on = Is_Serial_Led_On(&ring_light_controller.led_ring, i + 16, ring_light_controller.pwm_frame);
		tempVar |= serial_on << (i);
	}
	ring_light_controller.ring_led_buffer[2] = tempVar;
}

void rasterize_bar()
{
	//This takes an existing bar and translates
	//For each led, look at all the gradiants.
	//Find the distance from the visual index and the gradiant.
	//For now, only do first gradiant.
	Led_Ring_Clear(&ring_light_controller.led_ring);
	for (int i = 0; i < BOARD_LED_COUNT; ++i)
	{
		rasterize_led(i);
	}
}


void rasterize_led(led_index_type visual_index)
{
	ring_light_bar_gradiant_type *gradiant;
	int visual_gradiant_index = visual_index * (GRADIANT_MAX_INDEX / BOARD_LED_COUNT);
	for (int i = 0; i < MAX_GRADIANTS; ++i)
	{
		gradiant = &ring_light_controller.led_bar.gradiants[i];
		//If index is empty, skip
		if (gradiant->index == EMPTY_GRADIANT_INDEX)
		{ continue; }

		//Gradiant is not empty.  We now calculate the width here.
		int dist_up = gradiant->index - visual_gradiant_index;
		int dist_down = visual_gradiant_index - gradiant->index;
		int min_width;
		if (dist_up < 0)
		{ dist_up += GRADIANT_MAX_INDEX; }
		if (dist_down < 0)
		{ dist_down += GRADIANT_MAX_INDEX; }
		min_width = dist_up;
		if (min_width > dist_down)
		{ min_width = dist_down; }

		//min_width is now the minimum width
		if (min_width > gradiant->width)
		{ continue; }
		int intensity_final = 0;

		intensity_final = gradiant->intensity - (gradiant->intensity * min_width) / gradiant->width;
		//void Set_Visual_Led_Intensity(led_ring_type *ring_led, led_index_type visual_index, led_intensity_type intensity){
		//
		Add_Visual_Led_Intensity(&ring_light_controller.led_ring, visual_index, intensity_final);
	}
}

void init_ring_light_controller(SPI_HandleTypeDef *spi_pointer_input, TIM_HandleTypeDef *timer3_pointer_input)
{
	spi_pointer = spi_pointer_input;
	timer3_pointer = timer3_pointer_input;

	for (int i = 0; i < 3; ++i)
	{
		ring_light_controller.ring_led_buffer[i] = 0xaa;
	}
	//Set LED ring to constant state.
    init_led_ring_type( &ring_light_controller.led_ring );

	//Ensure LED ring is off.
	ring_pwm_off();

	//Set PWM frame to 0 to start properly
	ring_light_controller.pwm_frame = 0;

	//Create a gradiant to use
	init_ring_light_bar_type(&ring_light_controller.led_bar);
	//Add a gradiant
	ring_light_bar_gradiant_type gradiant;
	init_ring_light_bar_gradiant(&gradiant, 512, 20, 200, 10);
	ring_light_bar_add_gradiant(&ring_light_controller.led_bar, gradiant);

	init_ring_light_bar_gradiant(&gradiant, 100, 100, 100, 10);
	ring_light_bar_add_gradiant(&ring_light_controller.led_bar, gradiant);

	rasterize_bar();
	//Begin hardware timer.
	HAL_TIM_Base_Start_IT(timer3_pointer);
}

