//
// Created by Graham on 11/7/2020.
//

#ifndef CODE_2_I2C_DISPLAY_H
#define CODE_2_I2C_DISPLAY_H
#include "main.h"
#include "debug_assert.h"
#include "i2c_controller.h"

void display_init();
void display_4x_string( char *str_deg, char* str_len, char *str_x, char *str_y );
#endif //CODE_2_I2C_DISPLAY_H
