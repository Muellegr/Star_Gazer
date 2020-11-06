//
// Created by Graham on 10/25/2020.
//

#ifndef CODE_2_RING_LIGHT_CONTROLLER_H
#define CODE_2_RING_LIGHT_CONTROLLER_H

#include "main.h"
#include "RingLight.h"


void init_ring_light_controller(SPI_HandleTypeDef *spi_pointer_input, TIM_HandleTypeDef* timer3_pointer_input);

void ring_light_controller_tim3_interrupt();

static void ring_pwm_off();

static void ring_pwm_on();

static void rasterize_to_buffer();

void rasterize_bar();

void rasterize_led(led_index_type visual_index);

#endif //CODE_2_RING_LIGHT_CONTROLLER_H
