################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/HAL_Drivers/drv_common.c 

OBJS += \
./libraries/HAL_Drivers/drv_common.o 

C_DEPS += \
./libraries/HAL_Drivers/drv_common.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/HAL_Drivers/%.o libraries/HAL_Drivers/%.su libraries/HAL_Drivers/%.cyclo: ../libraries/HAL_Drivers/%.c libraries/HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libraries-2f-HAL_Drivers

clean-libraries-2f-HAL_Drivers:
	-$(RM) ./libraries/HAL_Drivers/drv_common.cyclo ./libraries/HAL_Drivers/drv_common.d ./libraries/HAL_Drivers/drv_common.o ./libraries/HAL_Drivers/drv_common.su

.PHONY: clean-libraries-2f-HAL_Drivers

