/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */

/*
 * TODO
 *  Add notes / design file
 *  Add DEBUG mode for asserts
 *  Add asserts for out of place index, other values
 *      Throw red light when bad
 *  Come up with unified naming scheme for files, types, functions, ect
 *  static vs not static
 *
 *  global file for things like bool
 *  
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "ring_light_controller.h"
#include "i2c_controller.h"
#include "i2c_gyroscope_lsm6.h"
#include "i2c_magnometer.h"
#include "i2c_display.h"

#include "stdio.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
I2C_HandleTypeDef hi2c1;

SPI_HandleTypeDef hspi1;

TIM_HandleTypeDef htim3;

USART_HandleTypeDef husart1;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

static void MX_GPIO_Init(void);

static void MX_I2C1_Init(void);

static void MX_SPI1_Init(void);

static void MX_USART1_Init(void);

static void MX_TIM3_Init(void);
/* USER CODE BEGIN PFP */

//Activates upon interrupt.
void TIM3_Code_Interrupt()
{
	ring_light_controller_tim3_interrupt();
}
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */


/**
  * @brief  The application entry point.
  * @retval int
  */

#include "math.h"
int main(void)
{
	/* USER CODE BEGIN 1 */

	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_I2C1_Init();
	MX_SPI1_Init();
	MX_USART1_Init();
	MX_TIM3_Init();
	/* USER CODE BEGIN 2 */

	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	init_ring_light_controller(&hspi1, &htim3);
	uint32_t loop_int = 0;

	//run_i2c_example();
    HAL_GPIO_WritePin(GPIOA, LED_RED_Pin, RESET);
    chip_led_red_off();


	//Init I2C interfaces
    HAL_Delay(100); //Delay slightly to allow devices to clear
    init_i2c_controller(&hi2c1);
    init_gyroscope();
    init_mag();


    bool result = false;
    gyroscope_orientation_raw orientation_data = {0};
    magnometer_orientation_raw mag_orientation_data = {0};
    volatile gyroscope_orientation_raw orientation_data_diff = {0};
    result = get_gyroscope_orientation( &orientation_data );
    orientation_data_diff = orientation_data;

    int magData_counter = 0;
    int magData_max = 3;
     magnometer_orientation_raw mag_orientation_arr = {0};
    //double direction[1024] = {0};
    //double direction_angle[1024] = {0};


    typedef struct{
        double atan_d;
        double dir;
        double x;
        double y;
        double z;
    } direction_test_type;
    volatile direction_test_type direction[104] = {0};
    volatile float direction_avg = 0.0f;


    display_init();
	while (1)
	{
        //result = get_gyroscope_orientation( &orientation_data );
        //ITM_SEND

        result = get_gyroscope_acceleration( &orientation_data );
       // result = get_magnometer_orientation( &mag_orientation_data );
        if (magData_counter < magData_max)
        {
            get_magnometer_orientation( &mag_orientation_arr);
            double x = mag_orientation_arr.x;
            double y = mag_orientation_arr.y;
            double length = sqrt( x * x + y*y);
            x = x / length;
            y = y / length;

            direction[magData_counter].atan_d = atan2( y, x );
            direction[magData_counter].dir = direction[magData_counter].atan_d * 180.0f / 3.14f;
            direction[magData_counter].x = 1.0f * mag_orientation_arr.x;
            direction[magData_counter].y = 1.0f * mag_orientation_arr.y;
            direction[magData_counter].z = 1.0f * mag_orientation_arr.z;
            magData_counter++;
        }
        else{
            direction_avg = 0;
            double x = 0;
            double y = 0;
            double z = 0;
            double avg_length;
            double avg_dir;

            char str_deg[16] = {' '};
            char str_len[16] = {' '};
            char str_x[16] = {' '};
            char str_y[16] = {' '};


            for (int i = 0 ; i < magData_counter ; ++i ){
                direction_avg += direction[i].dir;
                x += direction[i].x;
                y += direction[i].y;
                z += direction[i].z;
            }
            direction_avg /= magData_counter;
            x = (int) (x / magData_counter);
            y = (int) (y / magData_counter);
            z = (int) (z / magData_counter);
            avg_length = sqrt( (double)(x * x + y*y + z*z));
            avg_dir = atan2(y / avg_length, x / avg_length) * 180.0f / 3.14f;
            if (direction_avg < 0){ direction_avg += 360.0f;}
            magData_counter = 0;

            snprintf(str_deg, 15, "d %f", avg_dir);
            snprintf(str_len, 15, "l %f", avg_length);
            snprintf(str_x, 15, "x %f", x);
            snprintf(str_y, 15, "y %f", y);
            display_4x_string( str_deg, str_len, str_x, str_y );
        }
		loop_int++;
	    if (loop_int % 5 == 0){HAL_GPIO_TogglePin(LED_GREEN_GPIO_Port, LED_GREEN_Pin); }

      //  HAL_GPIO_TogglePin(GPIOA, SWDIO_Pin);
		/* USER CODE END WHILE */
		//HAL_Delay(100);
		/* USER CODE BEGIN 3 */
	}
	/* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
	RCC_OscInitTypeDef RCC_OscInitStruct = {0};
	RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

	/** Configure the main internal regulator output voltage
	*/
	HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1);
	/** Initializes the RCC Oscillators according to the specified parameters
	* in the RCC_OscInitTypeDef structure.
	*/
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
	RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	RCC_OscInitStruct.HSIDiv = RCC_HSI_DIV1;
	RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
	RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV1;
	RCC_OscInitStruct.PLL.PLLN = 8;
	RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
	RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
	{
		Error_Handler();
	}
	/** Initializes the CPU, AHB and APB buses clocks
	*/
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
	                              | RCC_CLOCKTYPE_PCLK1;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
	{
		Error_Handler();
	}
}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */

static void MX_I2C1_Init(void)
{

	/* USER CODE BEGIN I2C1_Init 0 */

	/* USER CODE END I2C1_Init 0 */

	/* USER CODE BEGIN I2C1_Init 1 */

	/* USER CODE END I2C1_Init 1 */
	hi2c1.Instance = I2C1;
	hi2c1.Init.Timing = 0x4030FDFF;
	hi2c1.Init.OwnAddress1 = 0;
	hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
	hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
	hi2c1.Init.OwnAddress2 = 0;
	hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
	hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
	hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
	if (HAL_I2C_Init(&hi2c1) != HAL_OK)
	{
		Error_Handler();
	}
	/** Configure Analogue filter
	*/
	if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
	{
		Error_Handler();
	}
	/** Configure Digital filter
	*/
	if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
	{
		Error_Handler();
	}
	//HAL_I2CEx_EnableFastModePlus(I2C_FASTMODEPLUS_I2C1);
	/* USER CODE BEGIN I2C1_Init 2 */

	/* USER CODE END I2C1_Init 2 */

}


/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

	/* USER CODE BEGIN SPI1_Init 0 */

	/* USER CODE END SPI1_Init 0 */

	/* USER CODE BEGIN SPI1_Init 1 */

	/* USER CODE END SPI1_Init 1 */
	/* SPI1 parameter configuration*/
	hspi1.Instance = SPI1;
	hspi1.Init.Mode = SPI_MODE_MASTER;
	hspi1.Init.Direction = SPI_DIRECTION_1LINE;//SPI_DIRECTION_2LINES;
	hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
	hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
	hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
	hspi1.Init.NSS = SPI_NSS_SOFT;
	hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_8;
	hspi1.Init.FirstBit = SPI_FIRSTBIT_LSB;//SPI_FIRSTBIT_MSB;
	hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
	hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
	hspi1.Init.CRCPolynomial = 7;
	hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
	hspi1.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;//SPI_NSS_PULSE_ENABLE;
	if (HAL_SPI_Init(&hspi1) != HAL_OK)
	{
		Error_Handler();
	}
	/* USER CODE BEGIN SPI1_Init 2 */

	/* USER CODE END SPI1_Init 2 */

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

	/* USER CODE BEGIN TIM3_Init 0 */

	/* USER CODE END TIM3_Init 0 */

	TIM_ClockConfigTypeDef sClockSourceConfig = {0};
	TIM_MasterConfigTypeDef sMasterConfig = {0};

	/* USER CODE BEGIN TIM3_Init 1 */

	/* USER CODE END TIM3_Init 1 */
	htim3.Instance = TIM3;
	htim3.Init.Prescaler = 1;
	htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
	htim3.Init.Period = 1000;
	htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
	if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
	{
		Error_Handler();
	}
	sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
	if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
	{
		Error_Handler();
	}
	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
	{
		Error_Handler();
	}
	/* USER CODE BEGIN TIM3_Init 2 */

	/* USER CODE END TIM3_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_Init(void)
{

	/* USER CODE BEGIN USART1_Init 0 */

	/* USER CODE END USART1_Init 0 */

	/* USER CODE BEGIN USART1_Init 1 */

	/* USER CODE END USART1_Init 1 */
	husart1.Instance = USART1;
	husart1.Init.BaudRate = 115200;
	husart1.Init.WordLength = USART_WORDLENGTH_8B;
	husart1.Init.StopBits = USART_STOPBITS_1;
	husart1.Init.Parity = USART_PARITY_NONE;
	husart1.Init.Mode = USART_MODE_TX_RX;
	husart1.Init.CLKPolarity = USART_POLARITY_LOW;
	husart1.Init.CLKPhase = USART_PHASE_1EDGE;
	husart1.Init.CLKLastBit = USART_LASTBIT_DISABLE;
	husart1.Init.ClockPrescaler = USART_PRESCALER_DIV1;
	husart1.SlaveMode = USART_SLAVEMODE_DISABLE;
	if (HAL_USART_Init(&husart1) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_USARTEx_SetTxFifoThreshold(&husart1, USART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_USARTEx_SetRxFifoThreshold(&husart1, USART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_USARTEx_DisableFifoMode(&husart1) != HAL_OK)
	{
		Error_Handler();
	}
	/* USER CODE BEGIN USART1_Init 2 */

	/* USER CODE END USART1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	/* GPIO Ports Clock Enable */
	__HAL_RCC_GPIOC_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(GPIOA,   SHIFT_REG_LATCH_Pin | SHIFT_REG_OUTPUT_ENABLE_N_Pin | LED_RED_Pin, GPIO_PIN_RESET);
    //HAL_GPIO_WritePin(SWDIO_GPIO_Port, SWDIO_Pin, GPIO_PIN_RESET);
	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(LED_GREEN_GPIO_Port, LED_GREEN_Pin, GPIO_PIN_RESET);

	/*Configure GPIO pins : SHIFT_REG_LATCH_Pin SHIFT_REG_OUTPUT_ENABLE_N_Pin LED_RED_Pin */
	GPIO_InitStruct.Pin = SHIFT_REG_LATCH_Pin | SHIFT_REG_OUTPUT_ENABLE_N_Pin | LED_RED_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	/*Configure GPIO pins : UI_JOY_Y_Pin UI_JOY_X_Pin */
	GPIO_InitStruct.Pin = UI_JOY_Y_Pin | UI_JOY_X_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	/*Configure GPIO pin : LED_GREEN_Pin */
	GPIO_InitStruct.Pin = LED_GREEN_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(LED_GREEN_GPIO_Port, &GPIO_InitStruct);

	/*Configure GPIO pin : UI_BUTTON_Pin */
	GPIO_InitStruct.Pin = UI_BUTTON_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(UI_BUTTON_GPIO_Port, &GPIO_InitStruct);

}

void chip_led_red_on()
{
	HAL_GPIO_WritePin(GPIOA, LED_RED_Pin, SET);
}

void chip_led_red_off()
{
	HAL_GPIO_WritePin(GPIOA, LED_RED_Pin, RESET);
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */

	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
	 tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
