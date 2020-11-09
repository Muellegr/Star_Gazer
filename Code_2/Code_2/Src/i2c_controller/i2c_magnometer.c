//
// Created by Graham on 11/5/2020.
//

#include "i2c_magnometer.h"

// Primary address for the lsm6 gyrometer
#define I2C_ADDR_MAG_R (0b01100001)
#define I2C_ADDR_MAG_W (0b01100000)


#define MAG_INT_CON_0     (0x1B)
#define MAG_INT_CON_0_CONT_FREQ_EN (1 << 7)
#define MAG_INT_CON_0_TM_M (1 << 0)
#define MAG_INT_CON_0_RESET (1 << 4)
#define MAG_INT_CON_0_AUTO_SR_EN (1 << 5)


#define MAG_ODR (0x1A)
#define MAG_ODR_VAL (0xFF) //255hz

#define MAG_STATUS_1 (0x18)
#define MAG_STATUS_1_MEASURE_DONE (1 << 6)

#define GYRO_MAG_X_0 (0x00)
#define GYRO_MAG_X_1 (0x01)
#define GYRO_MAG_Y_0 (0x02)
#define GYRO_MAG_Y_1 (0x03)
#define GYRO_MAG_Z_0 (0x04)
#define GYRO_MAG_Z_1 (0x05)
#define GYRO_MAG_X_2 (0x06)
#define GYRO_MAG_Y_2 (0x07)
#define GYRO_MAG_Z_2 (0x08)

#define MAG_WHOAMI (0x39)
#define MAG_WHOAMI_RESPONSE (0x10)

void init_mag()
{
    // Verify data can be read
    debug_assert_if( !is_alive() );

    //Setup device's registers.
    debug_assert_if( !init_mag_registers() );
}

static bool init_mag_registers()
{
    uint8_t buffer[2];
    bool    status = true;

    buffer[0] = MAG_INT_CON_0;
    //initiate a reset command.  This is active for 375ns.
    //It takes about 24 clocks at 64Mhz to reach that.
    //Sending just the address of the next i2c command takes significantly longer.

    buffer[1] = MAG_INT_CON_0_RESET;
    status &= i2c_write( I2C_ADDR_MAG_W, buffer, 2 );

    return status;
}

//--Gets raw data from gyroscope's acceleration module.
bool get_magnometer_orientation( magnometer_orientation_raw *data )
{
    bool    status = true;
    uint8_t buffer[9];

    //Notify device we are measuring the magnetic field.
    buffer[0] = MAG_INT_CON_0;
    buffer[1] = MAG_INT_CON_0_TM_M;// | MAG_INT_CON_0_AUTO_SR_EN;
    status &= i2c_write( I2C_ADDR_MAG_W, buffer, 2 );

    uint8_t status_reg = 0;
    uint8_t check_reg  = MAG_STATUS_1_MEASURE_DONE;
    //Reading the sensor can take a brief amount of time.  Check the register until the bit is set.
    while ( CHECK_BIT(status_reg, MAG_STATUS_1_MEASURE_DONE)  == 0 )
    {
        buffer[0] = MAG_STATUS_1;
        status &= i2c_write( I2C_ADDR_MAG_W, buffer, 1 );
        status &= i2c_read( I2C_ADDR_MAG_R, &status_reg, 1 );
    }
    //Retrieve data
    buffer[0] = GYRO_MAG_X_0;
    status &= i2c_write( I2C_ADDR_MAG_W, buffer, 1 );
    status &= i2c_read( I2C_ADDR_MAG_R, buffer, 9 );

    //Combine data.
    uint32_t x = (uint32_t) ( ( buffer[1] << 8 ) | buffer[0] );
    uint32_t y = (uint32_t) ( ( buffer[3] << 8 ) | buffer[2] );
    uint32_t z = (uint32_t) ( ( buffer[5] << 8 ) | buffer[4] );
    //The final 3 bytes contain optional LSBs.
    x = ( x << 4 | buffer[6] >> 4 );
    y = ( y << 4 | buffer[7] >> 4 );
    z = ( z << 4 | buffer[8] >> 4 );

    //Convert to integers and remove the 20-bit null value.
    data->x = (int32_t) ( x - 524288 );
    data->y = (int32_t) ( y - 524288 );
    data->z = (int32_t) ( z - 524288 );

    return status;
}

//--Verify the device is able to respond by verifying write, read, and response.
static bool is_alive()
{
    uint8_t buffer;
    bool    result = true;
    buffer = MAG_WHOAMI;
    result &= i2c_write( I2C_ADDR_MAG_W, &buffer, 1 );
    debug_assert_if( !result );

    result &= i2c_read( I2C_ADDR_MAG_R, &buffer, 1 );
    debug_assert_if( !result );

    //Verify the response matches its address
    debug_assert_if( buffer != MAG_WHOAMI_RESPONSE );

    return result;
}
