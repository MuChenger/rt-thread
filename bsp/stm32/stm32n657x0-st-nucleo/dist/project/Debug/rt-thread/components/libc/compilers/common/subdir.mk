################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/libc/compilers/common/cctype.c \
../rt-thread/components/libc/compilers/common/cstdlib.c \
../rt-thread/components/libc/compilers/common/cstring.c \
../rt-thread/components/libc/compilers/common/ctime.c \
../rt-thread/components/libc/compilers/common/cunistd.c \
../rt-thread/components/libc/compilers/common/cwchar.c 

OBJS += \
./rt-thread/components/libc/compilers/common/cctype.o \
./rt-thread/components/libc/compilers/common/cstdlib.o \
./rt-thread/components/libc/compilers/common/cstring.o \
./rt-thread/components/libc/compilers/common/ctime.o \
./rt-thread/components/libc/compilers/common/cunistd.o \
./rt-thread/components/libc/compilers/common/cwchar.o 

C_DEPS += \
./rt-thread/components/libc/compilers/common/cctype.d \
./rt-thread/components/libc/compilers/common/cstdlib.d \
./rt-thread/components/libc/compilers/common/cstring.d \
./rt-thread/components/libc/compilers/common/ctime.d \
./rt-thread/components/libc/compilers/common/cunistd.d \
./rt-thread/components/libc/compilers/common/cwchar.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/libc/compilers/common/%.o rt-thread/components/libc/compilers/common/%.su rt-thread/components/libc/compilers/common/%.cyclo: ../rt-thread/components/libc/compilers/common/%.c rt-thread/components/libc/compilers/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rt-2d-thread-2f-components-2f-libc-2f-compilers-2f-common

clean-rt-2d-thread-2f-components-2f-libc-2f-compilers-2f-common:
	-$(RM) ./rt-thread/components/libc/compilers/common/cctype.cyclo ./rt-thread/components/libc/compilers/common/cctype.d ./rt-thread/components/libc/compilers/common/cctype.o ./rt-thread/components/libc/compilers/common/cctype.su ./rt-thread/components/libc/compilers/common/cstdlib.cyclo ./rt-thread/components/libc/compilers/common/cstdlib.d ./rt-thread/components/libc/compilers/common/cstdlib.o ./rt-thread/components/libc/compilers/common/cstdlib.su ./rt-thread/components/libc/compilers/common/cstring.cyclo ./rt-thread/components/libc/compilers/common/cstring.d ./rt-thread/components/libc/compilers/common/cstring.o ./rt-thread/components/libc/compilers/common/cstring.su ./rt-thread/components/libc/compilers/common/ctime.cyclo ./rt-thread/components/libc/compilers/common/ctime.d ./rt-thread/components/libc/compilers/common/ctime.o ./rt-thread/components/libc/compilers/common/ctime.su ./rt-thread/components/libc/compilers/common/cunistd.cyclo ./rt-thread/components/libc/compilers/common/cunistd.d ./rt-thread/components/libc/compilers/common/cunistd.o ./rt-thread/components/libc/compilers/common/cunistd.su ./rt-thread/components/libc/compilers/common/cwchar.cyclo ./rt-thread/components/libc/compilers/common/cwchar.d ./rt-thread/components/libc/compilers/common/cwchar.o ./rt-thread/components/libc/compilers/common/cwchar.su

.PHONY: clean-rt-2d-thread-2f-components-2f-libc-2f-compilers-2f-common

