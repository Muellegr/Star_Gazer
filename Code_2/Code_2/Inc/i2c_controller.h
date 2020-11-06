//
// Created by Graham on 11/3/2020.
//

#ifndef CODE_2_I2C_CONTROLLER_H
#define CODE_2_I2C_CONTROLLER_H
#include "main.h"

void init_i2c_controller(I2C_HandleTypeDef *hi2c);
bool i2c_write(uint8_t addr, uint8_t *buffer, uint8_t length);
bool i2c_read(uint8_t addr, uint8_t *buffer, uint8_t length);

#endif //CODE_2_I2C_CONTROLLER_H
