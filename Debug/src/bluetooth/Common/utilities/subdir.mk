################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bluetooth/Common/utilities/list_ble.c \
../src/bluetooth/Common/utilities/lpm.c \
../src/bluetooth/Common/utilities/memory_manager.c \
../src/bluetooth/Common/utilities/scheduler.c 

OBJS += \
./src/bluetooth/Common/utilities/list_ble.o \
./src/bluetooth/Common/utilities/lpm.o \
./src/bluetooth/Common/utilities/memory_manager.o \
./src/bluetooth/Common/utilities/scheduler.o 

C_DEPS += \
./src/bluetooth/Common/utilities/list_ble.d \
./src/bluetooth/Common/utilities/lpm.d \
./src/bluetooth/Common/utilities/memory_manager.d \
./src/bluetooth/Common/utilities/scheduler.d 


# Each subdirectory must supply rules for building sources it contributes
src/bluetooth/Common/utilities/%.o: ../src/bluetooth/Common/utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32L4 -DSTM32L475VGTx -DDEBUG -DSTM32L475xx -DUSE_HAL_DRIVER -DBLUENRG_MS -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/HAL_Driver/Inc/Legacy" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/inc" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/CMSIS/device" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/CMSIS/core" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/HAL_Driver/Inc" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/src/tasks" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/src/Drivers" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/ble_core" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/ble_services" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/hr_rate" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/hw" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/tl" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes/utilities" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/includes" -I"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/include/sensor" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


