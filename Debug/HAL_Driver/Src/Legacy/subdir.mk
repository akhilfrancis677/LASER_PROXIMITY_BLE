################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL_Driver/Src/Legacy/stm32l4xx_hal_can.c 

OBJS += \
./HAL_Driver/Src/Legacy/stm32l4xx_hal_can.o 

C_DEPS += \
./HAL_Driver/Src/Legacy/stm32l4xx_hal_can.d 


# Each subdirectory must supply rules for building sources it contributes
HAL_Driver/Src/Legacy/%.o: ../HAL_Driver/Src/Legacy/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32L4 -DSTM32L475VGTx -DDEBUG -DSTM32L475xx -DUSE_HAL_DRIVER -DBLUENRG_MS -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/HAL_Driver/Inc/Legacy" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/inc" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/CMSIS/device" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/CMSIS/core" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/HAL_Driver/Inc" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/src/tasks" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/src/Drivers" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/ble_core" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/ble_services" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/hr_rate" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/hw" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/tl" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/utilities" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/sensor" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


