/*
 * sensor_task.h
 *
 *  Created on: 27-Apr-2020
 *      Author: afrancis
 */

#ifndef FREE_RTOS_TASK_SENSOR_TASK_H_
#define FREE_RTOS_TASK_SENSOR_TASK_H_

#include "config.h"
#include "vl53l0x_def.h"
#include "vl53l0x_api.h"
#include "vl53l0x_tof.h"
#include "global_Variables.h"
#include "stm32l475e_iot01.h"




uint32_t Proximity_Test(void);
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#define GETCHAR_PROTOTYPE int __io_getchar(void)
void VL53L0X_PROXIMITY_MspInit(void);
uint16_t VL53L0X_PROXIMITY_GetDistance(void);
void VL53L0X_PROXIMITY_Init(void);
uint32_t Serial_Scanf(uint32_t value);

#define PROXIMITY_I2C_ADDRESS         ((uint16_t)0x0052)
#define VL53L0X_ID                    ((uint16_t)0xEEAA)
#define VL53L0X_XSHUT_Pin GPIO_PIN_6
#define VL53L0X_XSHUT_GPIO_Port GPIOC



#endif /* FREE_RTOS_TASK_SENSOR_TASK_H_ */
