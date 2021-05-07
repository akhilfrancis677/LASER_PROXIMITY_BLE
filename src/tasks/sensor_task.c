/*
 * sensor_task.c
 *
 *  Created on: 27-Apr-2020
 *      Author: afrancis
 */

#include "sensor_task.h"
#include "stm32l475e_iot01.h"

extern I2C_HandleTypeDef hI2cHandler;
extern UART_HandleTypeDef xConsoleUart;

VL53L0X_Dev_t Dev = { .I2cHandle = &hI2cHandler, .I2cDevAddr =
		PROXIMITY_I2C_ADDRESS };

uint32_t Proximity_Test(void) {

	uint16_t prox_value = 0;
	uint32_t modulus, count = 0, ret_distance;
	int32_t shift = 0;
	char data[5];
	prox_value = VL53L0X_PROXIMITY_GetDistance();
	prox_value /= 10;
	if (prox_value > 1 && prox_value < 200) {
		ret_distance = prox_value;
		while (prox_value != 0) {
			modulus = prox_value % 10;
			for (shift = (count - 1); shift >= 0; shift--) {
				data[shift + 1] = data[shift];
			}
			data[0] = modulus + '0';
			prox_value /= 10;
			count++;
		}
		HAL_UART_Transmit(&xConsoleUart, (uint8_t *)"Distance From the Wall = ", 25, 30000);
		HAL_UART_Transmit(&xConsoleUart, (uint8_t *) &data, count, 30000);
		HAL_UART_Transmit(&xConsoleUart, (uint8_t *)"cm\n", 3, 30000);
		count = 0;
	} else {
		ret_distance = 0;
	}
	return ret_distance;
}

extern void VL53L0X_PROXIMITY_Init(void) {
	SENSOR_IO_Init();
	VL53L0X_PROXIMITY_MspInit();

}

uint16_t VL53L0X_PROXIMITY_GetDistance(void) {
	uint16_t vl53l0x_id = 0;
	VL53L0X_DeviceInfo_t VL53L0X_DeviceInfo;
	VL53L0X_RangingMeasurementData_t RangingMeasurementData;

	memset(&VL53L0X_DeviceInfo, 0, sizeof(VL53L0X_DeviceInfo_t));

	if (VL53L0X_ERROR_NONE
			== VL53L0X_GetDeviceInfo(&Dev, &VL53L0X_DeviceInfo)) {
		if (VL53L0X_ERROR_NONE
				== VL53L0X_RdWord(&Dev, VL53L0X_REG_IDENTIFICATION_MODEL_ID,
						(uint16_t *) &vl53l0x_id)) {
			if (vl53l0x_id == VL53L0X_ID) {
				if (VL53L0X_ERROR_NONE == VL53L0X_DataInit(&Dev)) {
					Dev.Present = 1;
					SetupSingleShot(Dev);
				}
			}
		}
	}

	VL53L0X_PerformSingleRangingMeasurement(&Dev, &RangingMeasurementData);

	return RangingMeasurementData.RangeMilliMeter;
}

void VL53L0X_PROXIMITY_MspInit(void) {
	GPIO_InitTypeDef GPIO_InitStruct;

	GPIO_InitStruct.Pin = VL53L0X_XSHUT_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
	HAL_GPIO_Init(VL53L0X_XSHUT_GPIO_Port, &GPIO_InitStruct);

	HAL_GPIO_WritePin(VL53L0X_XSHUT_GPIO_Port, VL53L0X_XSHUT_Pin, GPIO_PIN_SET);

	HAL_Delay(1000);
}

