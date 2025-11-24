################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include rt-thread/src/klibc/subdir.mk
-include rt-thread/src/subdir.mk
-include rt-thread/libcpu/arm/cortex-m7/subdir.mk
-include rt-thread/libcpu/arm/common/subdir.mk
-include rt-thread/components/libc/compilers/newlib/subdir.mk
-include rt-thread/components/libc/compilers/common/subdir.mk
-include rt-thread/components/finsh/subdir.mk
-include rt-thread/components/drivers/ipc/subdir.mk
-include rt-thread/components/drivers/core/subdir.mk
-include libraries/HAL_Drivers/subdir.mk
-include build/libraries/HAL_Drivers/subdir.mk
-include build/kernel/src/klibc/subdir.mk
-include build/kernel/src/subdir.mk
-include build/kernel/libcpu/arm/cortex-m7/subdir.mk
-include build/kernel/libcpu/arm/common/subdir.mk
-include build/kernel/components/libc/compilers/newlib/subdir.mk
-include build/kernel/components/libc/compilers/common/subdir.mk
-include build/kernel/components/finsh/subdir.mk
-include build/kernel/components/drivers/serial/subdir.mk
-include build/kernel/components/drivers/pin/subdir.mk
-include build/kernel/components/drivers/ipc/subdir.mk
-include build/kernel/components/drivers/core/subdir.mk
-include build/board/CubeMX_Config/FSBL/Core/Startup/subdir.mk
-include build/board/CubeMX_Config/FSBL/Core/Src/subdir.mk
-include build/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Src/subdir.mk
-include build/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo/subdir.mk
-include build/board/subdir.mk
-include build/applications/subdir.mk
-include board/CubeMX_Config/FSBL/Core/Startup/subdir.mk
-include board/CubeMX_Config/FSBL/Core/Src/subdir.mk
-include board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Src/subdir.mk
-include board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo/subdir.mk
-include board/subdir.mk
-include applications/subdir.mk
-include Template_FSBL/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := project
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
project.elf \

MAP_FILES += \
project.map \

SIZE_OUTPUT += \
rt-thread.size.stdout \

OBJDUMP_LIST += \
project.list \

OBJCOPY_BIN += \
project.bin \


# All Target
all: main-build

# Main-build Target
main-build: project.elf secondary-outputs

# Tool invocations
project.elf project.map: $(OBJS) $(USER_OBJS) E:\rt-thread\bsp\stm32\stm32n657x0-st-nucleo\dist\project\board\CubeMX_Config\FSBL\STM32N657X0HXQ_AXISRAM2_fsbl.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "project.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m55 -T"E:\rt-thread\bsp\stm32\stm32n657x0-st-nucleo\dist\project\board\CubeMX_Config\FSBL\STM32N657X0HXQ_AXISRAM2_fsbl.ld" --specs=nosys.specs -Wl,-Map="project.map" -Wl,--gc-sections -static -Wl,--cmse-implib -Wl,--out-implib=./secure_nsclib.o  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

rt-thread.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

project.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "project.list"
	@echo 'Finished building: $@'
	@echo ' '

project.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "project.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) project.bin project.elf project.list project.map rt-thread.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
