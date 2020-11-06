/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g0xx_hal.h"
//#include "debug_assert.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
typedef enum {false, true} bool;

void chip_led_red_on();
void chip_led_red_off();


/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */
#define arr_length(a) (sizeof(a) / (sizeof(a[0])))
/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
void TIM3_Code_Interrupt(void);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SPI_CLK_SHIFT_REG_Pin GPIO_PIN_1
#define SPI_CLK_SHIFT_REG_GPIO_Port GPIOA
#define SPI_MOSI_SHIFT_REG_DATA_Pin GPIO_PIN_2
#define SPI_MOSI_SHIFT_REG_DATA_GPIO_Port GPIOA
#define SHIFT_REG_LATCH_Pin GPIO_PIN_3
#define SHIFT_REG_LATCH_GPIO_Port GPIOA
#define SHIFT_REG_OUTPUT_ENABLE_N_Pin GPIO_PIN_4
#define SHIFT_REG_OUTPUT_ENABLE_N_GPIO_Port GPIOA
#define UI_JOY_Y_Pin GPIO_PIN_0
#define UI_JOY_Y_GPIO_Port GPIOB
#define UI_JOY_X_Pin GPIO_PIN_1
#define UI_JOY_X_GPIO_Port GPIOB
#define LED_GREEN_Pin GPIO_PIN_2
#define LED_GREEN_GPIO_Port GPIOB
#define LED_RED_Pin GPIO_PIN_8
#define LED_RED_GPIO_Port GPIOA
#define UI_BUTTON_Pin GPIO_PIN_12
#define UI_BUTTON_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
