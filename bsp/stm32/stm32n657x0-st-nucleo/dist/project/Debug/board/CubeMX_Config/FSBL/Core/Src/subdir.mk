################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/CubeMX_Config/FSBL/Core/Src/main.c \
../board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.c \
../board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.c \
../board/CubeMX_Config/FSBL/Core/Src/syscalls.c \
../board/CubeMX_Config/FSBL/Core/Src/sysmem.c \
../board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.c 

OBJS += \
./board/CubeMX_Config/FSBL/Core/Src/main.o \
./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.o \
./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.o \
./board/CubeMX_Config/FSBL/Core/Src/syscalls.o \
./board/CubeMX_Config/FSBL/Core/Src/sysmem.o \
./board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.o 

C_DEPS += \
./board/CubeMX_Config/FSBL/Core/Src/main.d \
./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.d \
./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.d \
./board/CubeMX_Config/FSBL/Core/Src/syscalls.d \
./board/CubeMX_Config/FSBL/Core/Src/sysmem.d \
./board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.d 


# Each subdirectory must supply rules for building sources it contributes
board/CubeMX_Config/FSBL/Core/Src/%.o board/CubeMX_Config/FSBL/Core/Src/%.su board/CubeMX_Config/FSBL/Core/Src/%.cyclo: ../board/CubeMX_Config/FSBL/Core/Src/%.c board/CubeMX_Config/FSBL/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-board-2f-CubeMX_Config-2f-FSBL-2f-Core-2f-Src

clean-board-2f-CubeMX_Config-2f-FSBL-2f-Core-2f-Src:
	-$(RM) ./board/CubeMX_Config/FSBL/Core/Src/main.cyclo ./board/CubeMX_Config/FSBL/Core/Src/main.d ./board/CubeMX_Config/FSBL/Core/Src/main.o ./board/CubeMX_Config/FSBL/Core/Src/main.su ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.cyclo ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.d ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.o ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_hal_msp.su ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.cyclo ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.d ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.o ./board/CubeMX_Config/FSBL/Core/Src/stm32n6xx_it.su ./board/CubeMX_Config/FSBL/Core/Src/syscalls.cyclo ./board/CubeMX_Config/FSBL/Core/Src/syscalls.d ./board/CubeMX_Config/FSBL/Core/Src/syscalls.o ./board/CubeMX_Config/FSBL/Core/Src/syscalls.su ./board/CubeMX_Config/FSBL/Core/Src/sysmem.cyclo ./board/CubeMX_Config/FSBL/Core/Src/sysmem.d ./board/CubeMX_Config/FSBL/Core/Src/sysmem.o ./board/CubeMX_Config/FSBL/Core/Src/sysmem.su ./board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.cyclo ./board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.d ./board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.o ./board/CubeMX_Config/FSBL/Core/Src/system_stm32n6xx_fsbl.su

.PHONY: clean-board-2f-CubeMX_Config-2f-FSBL-2f-Core-2f-Src

