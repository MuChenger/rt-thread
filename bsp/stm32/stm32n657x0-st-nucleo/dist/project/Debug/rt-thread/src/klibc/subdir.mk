################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/klibc/kerrno.c \
../rt-thread/src/klibc/kstdio.c \
../rt-thread/src/klibc/kstring.c \
../rt-thread/src/klibc/rt_vsnprintf_tiny.c \
../rt-thread/src/klibc/rt_vsscanf.c 

OBJS += \
./rt-thread/src/klibc/kerrno.o \
./rt-thread/src/klibc/kstdio.o \
./rt-thread/src/klibc/kstring.o \
./rt-thread/src/klibc/rt_vsnprintf_tiny.o \
./rt-thread/src/klibc/rt_vsscanf.o 

C_DEPS += \
./rt-thread/src/klibc/kerrno.d \
./rt-thread/src/klibc/kstdio.d \
./rt-thread/src/klibc/kstring.d \
./rt-thread/src/klibc/rt_vsnprintf_tiny.d \
./rt-thread/src/klibc/rt_vsscanf.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/klibc/%.o rt-thread/src/klibc/%.su rt-thread/src/klibc/%.cyclo: ../rt-thread/src/klibc/%.c rt-thread/src/klibc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rt-2d-thread-2f-src-2f-klibc

clean-rt-2d-thread-2f-src-2f-klibc:
	-$(RM) ./rt-thread/src/klibc/kerrno.cyclo ./rt-thread/src/klibc/kerrno.d ./rt-thread/src/klibc/kerrno.o ./rt-thread/src/klibc/kerrno.su ./rt-thread/src/klibc/kstdio.cyclo ./rt-thread/src/klibc/kstdio.d ./rt-thread/src/klibc/kstdio.o ./rt-thread/src/klibc/kstdio.su ./rt-thread/src/klibc/kstring.cyclo ./rt-thread/src/klibc/kstring.d ./rt-thread/src/klibc/kstring.o ./rt-thread/src/klibc/kstring.su ./rt-thread/src/klibc/rt_vsnprintf_tiny.cyclo ./rt-thread/src/klibc/rt_vsnprintf_tiny.d ./rt-thread/src/klibc/rt_vsnprintf_tiny.o ./rt-thread/src/klibc/rt_vsnprintf_tiny.su ./rt-thread/src/klibc/rt_vsscanf.cyclo ./rt-thread/src/klibc/rt_vsscanf.d ./rt-thread/src/klibc/rt_vsscanf.o ./rt-thread/src/klibc/rt_vsscanf.su

.PHONY: clean-rt-2d-thread-2f-src-2f-klibc

