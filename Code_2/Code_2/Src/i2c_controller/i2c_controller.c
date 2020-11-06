
#include "i2c_controller.h"

static I2C_HandleTypeDef* h_i2c;


void init_i2c_controller(I2C_HandleTypeDef *hi2c)
{
	h_i2c = hi2c;
}

bool i2c_write(uint8_t addr, uint8_t *buffer, uint8_t length) {
	HAL_StatusTypeDef status = HAL_ERROR;
    status = HAL_I2C_Master_Transmit(h_i2c, addr, buffer, length, HAL_MAX_DELAY);

	if (status != HAL_OK){ return false; }
	return true;
}

bool i2c_read(uint8_t addr, uint8_t *buffer, uint8_t length)
{
	HAL_StatusTypeDef status = HAL_ERROR;
    status = HAL_I2C_Master_Receive(h_i2c, addr, buffer, length, HAL_MAX_DELAY);

	if (status != HAL_OK){ return false; }
	return true;
}