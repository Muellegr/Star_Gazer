/*
 * RingLight.c
 */
#include "RingLight.h"

//--Increments the visual or serial index to wrap around naturally. Supports subtraction.
led_index_type increment_led_index(led_index_type index, int add)
{
	led_index_type return_index = index + (led_index_type) add;

	while (return_index < 0)
	{ return_index += BOARD_LED_COUNT; }
	while (return_index >= BOARD_LED_COUNT)
	{ return_index -= BOARD_LED_COUNT; }

	return return_index;
}

//--Need to remove these, they make it more complex.
led_index_type int_to_led_index_type(int i)
{
	led_index_type return_index = (led_index_type) i;

	return increment_led_index(return_index, 0);
}

//--Configures ordering of LEDs on device.
void init_led_ring_type( led_ring_type *led_ring)
{
	int visual_index = 0;
	//Because shift registers are in series we have to carefully assign LEDs.
	//This should not need updating.
	for (int i = 19; i >= 16; i--)
	{
		led_ring->led[visual_index].serial_index = int_to_led_index_type(i);
		led_ring->visual_to_serial_map[visual_index] = int_to_led_index_type(i);
		led_ring->serial_to_visual_map[i] = int_to_led_index_type(visual_index);
		visual_index++;
	}

	for (int i = 7; i >= 0 && i <= 7; i--)
	{
		led_ring->led[visual_index].serial_index = int_to_led_index_type(i);
		led_ring->visual_to_serial_map[visual_index] = int_to_led_index_type(i);
		led_ring->serial_to_visual_map[i] = int_to_led_index_type(visual_index);
		visual_index++;
	}

	for (int i = 15; i >= 8; i--)
	{
		led_ring->led[visual_index].serial_index = int_to_led_index_type(i);
		led_ring->visual_to_serial_map[visual_index] = int_to_led_index_type(i);
		led_ring->serial_to_visual_map[i] = int_to_led_index_type(visual_index);
		visual_index++;
	}

	for (int i = 23; i >= 20; i--)
	{
		led_ring->led[visual_index].serial_index = int_to_led_index_type(i);
		led_ring->visual_to_serial_map[visual_index] = int_to_led_index_type(i);
		led_ring->serial_to_visual_map[i] = int_to_led_index_type(visual_index);
		visual_index++;
	}
	Led_Ring_Clear(led_ring);
}

//--Debug function
void Set_One_Led_On(led_ring_type *led_ring, led_index_type visual_index)
{
	Led_Ring_Clear(led_ring);
	Set_Visual_Led_Intensity(led_ring, visual_index, 100);
}

//--Sets LED intensity by its visual index.  0 is off.
void Set_Visual_Led_Intensity(led_ring_type *ring_led, led_index_type visual_index, led_intensity_type intensity)
{
	led_type *led = &(ring_led->led[visual_index]);
	led->intensity = intensity;
}

//--Adds LED intensity by its visual index.  Supports subtraction and handles min/max limits.
void Add_Visual_Led_Intensity(led_ring_type *ring_led, led_index_type visual_index, led_intensity_type intensity)
{
	led_type *led = &(ring_led->led[visual_index]);
	int working_intensity = led->intensity + intensity;

	if (working_intensity > 100)
	{ working_intensity = 100; }
	else if (working_intensity < 0)
	{ working_intensity = 0; }

	led->intensity = working_intensity;
}

//--Set all LEDs on the ring off by setting their intensity to 0
void Led_Ring_Clear(led_ring_type *ring_led)
{
	for (int i = 0; i < BOARD_LED_COUNT; ++i)
	{
		Set_Visual_Led_Intensity(ring_led, i, 0);
	}
}

//--Checks if an LED should be on while accounting for PWM.
bool Is_Serial_Led_On(led_ring_type *ring_led, led_index_type serial_index, int frame)
{
	led_index_type visual_index = (int) ring_led->serial_to_visual_map[serial_index];
	led_type *led = &ring_led->led[visual_index];

	if (led->intensity > frame)
	{ return true; }
	return false;
}
