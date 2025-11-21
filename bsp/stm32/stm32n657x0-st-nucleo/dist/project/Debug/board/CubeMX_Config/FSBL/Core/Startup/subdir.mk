################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../board/CubeMX_Config/FSBL/Core/Startup/startup_stm32n657x0hxq_fsbl.s 

OBJS += \
./board/CubeMX_Config/FSBL/Core/Startup/startup_stm32n657x0hxq_fsbl.o 

S_DEPS += \
./board/CubeMX_Config/FSBL/Core/Startup/startup_stm32n657x0hxq_fsbl.d 


# Each subdirectory must supply rules for building sources it contributes
board/CubeMX_Config/FSBL/Core/Startup/%.o: ../board/CubeMX_Config/FSBL/Core/Startup/%.s board/CubeMX_Config/FSBL/Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m55 -g3 -DDEBUG -c -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-board-2f-CubeMX_Config-2f-FSBL-2f-Core-2f-Startup

clean-board-2f-CubeMX_Config-2f-FSBL-2f-Core-2f-Startup:
	-$(RM) ./board/CubeMX_Config/FSBL/Core/Startup/startup_stm32n657x0hxq_fsbl.d ./board/CubeMX_Config/FSBL/Core/Startup/startup_stm32n657x0hxq_fsbl.o

.PHONY: clean-board-2f-CubeMX_Config-2f-FSBL-2f-Core-2f-Startup

