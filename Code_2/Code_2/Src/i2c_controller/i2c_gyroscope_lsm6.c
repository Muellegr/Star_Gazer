/*
 * Controls the i2c init, read, and write to the devices gyroscope
 * model : LSM6DS33
 */

#include "i2c_gyroscope_lsm6.h"

// Primary address for the lsm6 gyrometer
#define I2C_ADDR_GYRO_R (0b11010101)
#define I2C_ADDR_GYRO_W (0b11010100)

#define GYRO_CTRL3_C     (0b00010010)
#define SET_REG_INC      (0b00000100)

#define GYRO_CTRL_X1     (0b00010000) //Acceleration register
#define DIS_ACCELERATION (0b00000000) //Ensures this is disabled
#define EN_ACCELERATION (0b10100000) //Ensures this is disabled

#define GYRO_CTRL_G  (0b00010001)           //orientation register
#define EN_ORIENTATION_FAST (0b10000000)   // 1.66kHz
#define EN_ORIENTATION_MEDIUM (0b01100000) // 416Hz

#define GYRO_ACCELERATION_X_L (0x28)
#define GYRO_ACCELERATION_X_H (0x29)
#define GYRO_ACCELERATION_Y_L (0x2A)
#define GYRO_ACCELERATION_Y_H (0x2B)
#define GYRO_ACCELERATION_Z_L (0x2C)
#define GYRO_ACCELERATION_Z_H (0x2D)

#define GYRO_ORIENTATION_X_L (0b00100010)
#define GYRO_ORIENTATION_X_H (0b00100011)
#define GYRO_ORIENTATION_Y_L (0b00100100)
#define GYRO_ORIENTATION_Y_H (0b00100101)
#define GYRO_ORIENTATION_Z_L (0b00100110)
#define GYRO_ORIENTATION_Z_H (0b00100111)

#define GYRO_WHOAMI (0b00001111)
#define GYRO_WHOAMI_RESPONSE (0b01101001)

void init_gyroscope()
{
    // Verify data can be read
    debug_assert_if( !is_alive() );

    //Setup device
    debug_assert_if( !init_gyro_registers() );
}


bool init_gyro_registers()
{
    uint8_t buffer[2];
    bool status = true;
    //--Ensure register increments automatically
//    buffer[0] = GYRO_CTRL3_C;
//    buffer[1] = SET_REG_INC;
//    status &= i2c_write( I2C_ADDR_GYRO_W, buffer, 2 );

    //--Enable acceleration sensor
    buffer[0] = GYRO_CTRL_X1;
    buffer[1] = EN_ACCELERATION;
    status &= i2c_write( I2C_ADDR_GYRO_W, buffer, 2 );

    //--Enable orientation-sensor and set its speed
    buffer[0] = GYRO_CTRL_G;         // Tell which register to set
    buffer[1] = EN_ORIENTATION_FAST; // Set orientation
    status &= i2c_write( I2C_ADDR_GYRO_W, buffer, 2 );
    return status;
}

//--Gets raw data from the gyroscope's orientation sensors.
bool get_gyroscope_orientation( gyroscope_orientation_raw *data )
{
    bool status = true;
    // One : Get the buffer
    // Two : Convert into 16bit or 32bit
    uint8_t x_l;
    uint8_t x_h;
    uint8_t y_l;
    uint8_t y_h;
    uint8_t z_l;
    uint8_t z_h;

    // Read the initial register.  Subsequent reads will increment this
    // automatically.
    uint8_t start_addr = GYRO_ACCELERATION_X_L;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );

    // Now read data
    //uint8_t buffer_test[6];
   // status &= i2c_read( I2C_ADDR_GYRO_R, &buffer_test, 6 );
//    status &= i2c_read( I2C_ADDR_GYRO_R, &x_l, 1 );
//    status &= i2c_read( I2C_ADDR_GYRO_R, &x_h, 1 );
//
//    status &= i2c_read( I2C_ADDR_GYRO_R, &y_l, 1 );
//    status &= i2c_read( I2C_ADDR_GYRO_R, &y_h, 1 );
//
//    status &= i2c_read( I2C_ADDR_GYRO_R, &z_l, 1 );
//    status &= i2c_read( I2C_ADDR_GYRO_R, &z_h, 1 );
/*
 #define GYRO_ORIENTATION_X_L (0b00100010)
#define GYRO_ORIENTATION_X_H (0b00100011)
#define GYRO_ORIENTATION_Y_L (0b00100100)
#define GYRO_ORIENTATION_Y_H (0b00100101)
#define GYRO_ORIENTATION_Z_L (0b00100110)
#define GYRO_ORIENTATION_Z_H (0b00100111)
 */
    start_addr = GYRO_ORIENTATION_X_L;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );
    status &= i2c_read( I2C_ADDR_GYRO_R, &x_l, 1 );

    start_addr = GYRO_ORIENTATION_X_H;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );
    status &= i2c_read( I2C_ADDR_GYRO_R, &x_h, 1 );

    start_addr = GYRO_ORIENTATION_Y_L;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );
    status &= i2c_read( I2C_ADDR_GYRO_R, &y_l, 1 );

    start_addr = GYRO_ORIENTATION_Y_H;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );
    status &= i2c_read( I2C_ADDR_GYRO_R, &y_h, 1 );

    start_addr = GYRO_ORIENTATION_Z_L;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );
    status &= i2c_read( I2C_ADDR_GYRO_R, &z_l, 1 );

    start_addr = GYRO_ORIENTATION_Z_H;
    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );
    status &= i2c_read( I2C_ADDR_GYRO_R, &z_h, 1 );


    // Recombine.  The output is a twos complement.
    data->x = (int16_t) ( x_h << 8 ) | x_l;
    data->y = (int16_t) ( y_h << 8 ) | y_l;
    data->z = (int16_t) ( z_h << 8 ) | z_l;

    return status;
}

//--Gets raw data from gyroscope's acceleration module.
bool get_gyroscope_acceleration( gyroscope_orientation_raw *data )
{
    bool status = true;

    uint8_t buffer[6];
    uint8_t start_addr = GYRO_ACCELERATION_X_L;

    status &= i2c_write( I2C_ADDR_GYRO_W, &start_addr, 1 );

    //Because the device increments the register automatically,
    //  we can extract all x,y,z 16-bit values at once.
    //  x_l, x_h, y_l, y_h, z_l, z_h    in that order.
    status &= i2c_read( I2C_ADDR_GYRO_R, buffer, 6 );

    volatile int16_t test_int = 0b0111111111111111;
    // Recombine.  Values are twos complement.
    data->x = (int16_t) ( buffer[1] << 8 ) | buffer[0];
    data->y = (int16_t) ( buffer[3] << 8 ) | buffer[2];
    data->z = (int16_t) ( buffer[5] << 8 ) | buffer[4];
    //-32768 = -2g
    //32767 = 2g
    return status;
}


//--Verify the device is able to respond by verifing write, read, and response.
static bool is_alive()
{
    uint8_t buffer;
    bool    result = true;
    buffer = GYRO_WHOAMI;
    result &= i2c_write( I2C_ADDR_GYRO_W, &buffer, 1 );
    debug_assert_if( !result );

    result &= i2c_read( I2C_ADDR_GYRO_R, &buffer, 1 );
    debug_assert_if( !result );

    //Verify the response matches its address
    debug_assert_if( buffer != GYRO_WHOAMI_RESPONSE );

    return result;
}
