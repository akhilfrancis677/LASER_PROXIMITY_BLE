################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/vl53l0x/vl53l0x_api.c \
../src/vl53l0x/vl53l0x_api_calibration.c \
../src/vl53l0x/vl53l0x_api_core.c \
../src/vl53l0x/vl53l0x_api_ranging.c \
../src/vl53l0x/vl53l0x_api_strings.c \
../src/vl53l0x/vl53l0x_platform_log.c \
../src/vl53l0x/vl53l0x_tof.c 

OBJS += \
./src/vl53l0x/vl53l0x_api.o \
./src/vl53l0x/vl53l0x_api_calibration.o \
./src/vl53l0x/vl53l0x_api_core.o \
./src/vl53l0x/vl53l0x_api_ranging.o \
./src/vl53l0x/vl53l0x_api_strings.o \
./src/vl53l0x/vl53l0x_platform_log.o \
./src/vl53l0x/vl53l0x_tof.o 

C_DEPS += \
./src/vl53l0x/vl53l0x_api.d \
./src/vl53l0x/vl53l0x_api_calibration.d \
./src/vl53l0x/vl53l0x_api_core.d \
./src/vl53l0x/vl53l0x_api_ranging.d \
./src/vl53l0x/vl53l0x_api_strings.d \
./src/vl53l0x/vl53l0x_platform_log.d \
./src/vl53l0x/vl53l0x_tof.d 


# Each subdirectory must supply rules for building sources it contributes
src/vl53l0x/%.o: ../src/vl53l0x/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32L4 -DSTM32L475VGTx -DDEBUG -DSTM32L475xx -DUSE_HAL_DRIVER -DBLUENRG_MS -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/HAL_Driver/Inc/Legacy" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/inc" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/CMSIS/device" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/CMSIS/core" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/HAL_Driver/Inc" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/src/tasks" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/src/Drivers" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/ble_core" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/ble_services" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/hr_rate" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/hw" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/tl" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/utilities" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/sensor" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


