/*
 * RingLight.h
 *
 *  Created on: Oct 12, 2020
 *      Author: Graham
 */

#ifndef SRC_RINGLIGHT_H_
#define SRC_RINGLIGHT_H_

#include "main.h"
//--DEFINES
#define BOARD_LED_COUNT 24

//--TYPES
typedef int led_index_type; //TODO turn into basic uint index type
typedef int led_intensity_type; //TODO turn into basic percentage type

typedef struct
{
	led_intensity_type intensity;
	led_index_type serial_index;
} led_type;

/* Handles the visual intensity of LEDs on the board.  Intended to be low level.
 * visual index : Starts at shift register CCW to the reset button.  Index moves clockwise.
 *                led array is stored as visual index.
 * serial index : Index position of bit shifted out to shift registers.
 */
typedef struct
{
	led_type led[BOARD_LED_COUNT];
	led_index_type visual_to_serial_map[BOARD_LED_COUNT];
	led_index_type serial_to_visual_map[BOARD_LED_COUNT];
} led_ring_type;

//--FUNCTIONS--//

//Initiates the low level led ring to a blank slate.
void Init_Led_Ring_Type(led_ring_type *led_ring);

//Sets the led brightness to specified amount.
void Set_Visual_Led_Intensity(led_ring_type *ring_led, led_index_type visual_index, led_intensity_type intensity);

//Adds or subtracts led brightness to specified amount. Clamps to 0-100
void Add_Visual_Led_Intensity(led_ring_type *ring_led, led_index_type visual_index, led_intensity_type intensity);

//Debug function that allows only 1 led on at a time.
void Set_One_Led_On(led_ring_type *led_ring, led_index_type visual_index);

//Determines if LED should be on with PWM
bool Is_Serial_Led_On(led_ring_type *ring_led, led_index_type serial_index, int frame);

//Sets intensity for all LEDs off.
void Led_Ring_Clear(led_ring_type *ring_led);

//Adds or subtracts a value from an led index.  Clamps to 0-LED_COUNT
led_index_type Led_Index_Add(led_index_type index, int add);

#endif /* SRC_RINGLIGHT_H_ */

