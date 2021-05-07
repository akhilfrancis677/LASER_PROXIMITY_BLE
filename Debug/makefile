################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/vl53l0x/subdir.mk
-include src/tasks/subdir.mk
-include src/bluetooth/Proxi/subdir.mk
-include src/bluetooth/Common/utilities/subdir.mk
-include src/bluetooth/Common/tl/subdir.mk
-include src/bluetooth/Common/hw_interface/subdir.mk
-include src/bluetooth/Common/ble_services/subdir.mk
-include src/bluetooth/Common/ble_core/subdir.mk
-include src/Drivers/subdir.mk
-include src/Applications/subdir.mk
-include HAL_Driver/Src/Legacy/subdir.mk
-include HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: LASER_PROXIMITY_BLE.elf

# Tool invocations
LASER_PROXIMITY_BLE.elf: $(OBJS) $(USER_OBJS) C:\Users\afrancis\Downloads\LASER_PROXIMITY_BLE/LinkerScript.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -T"C:/Users/afrancis/Downloads/LASER_PROXIMITY_BLE/LinkerScript.ld" -Wl,-Map=output.map -Wl,--gc-sections -o "LASER_PROXIMITY_BLE.elf" @"objects.list" $(USER_OBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "LASER_PROXIMITY_BLE.elf" "LASER_PROXIMITY_BLE.bin"
	arm-none-eabi-size "LASER_PROXIMITY_BLE.elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
