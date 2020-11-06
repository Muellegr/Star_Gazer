//
// Created by Graham on 11/3/2020.
//

#ifndef CODE_2_I2C_GYROSCOPE_LSM6_H
#define CODE_2_I2C_GYROSCOPE_LSM6_H

#include "main.h"
#include "i2c_controller.h"
#include "debug_assert.h"

typedef struct
{
    int16_t x;
    int16_t y;
    int16_t z;
} gyroscope_orientation_raw;

void init_gyroscope();
bool get_gyroscope_orientation( gyroscope_orientation_raw *data );
bool get_gyroscope_acceleration( gyroscope_orientation_raw *data );
static void enable_gyro();

static bool is_alive();
static bool init_gyro_registers();


#endif //CODE_2_I2C_GYROSCOPE_LSM6_H
