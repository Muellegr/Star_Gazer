//
// Created by Graham on 11/5/2020.
//

#ifndef CODE_2_I2C_MAGNOMETER_H
#define CODE_2_I2C_MAGNOMETER_H

#include "main.h"
#include "debug_assert.h"
#include "i2c_controller.h"

typedef struct
{
    int32_t x;
    int32_t y;
    int32_t z;
} magnometer_orientation_raw;

void init_mag();
bool get_magnometer_orientation( magnometer_orientation_raw *data );

static bool init_mag_registers();

static bool is_alive();

#endif //CODE_2_I2C_MAGNOMETER_H
