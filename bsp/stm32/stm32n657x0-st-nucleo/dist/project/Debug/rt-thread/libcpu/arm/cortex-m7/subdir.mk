################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/arm/cortex-m7/cpu_cache.c \
../rt-thread/libcpu/arm/cortex-m7/cpuport.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/arm/cortex-m7/context_gcc.S 

OBJS += \
./rt-thread/libcpu/arm/cortex-m7/context_gcc.o \
./rt-thread/libcpu/arm/cortex-m7/cpu_cache.o \
./rt-thread/libcpu/arm/cortex-m7/cpuport.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/arm/cortex-m7/context_gcc.d 

C_DEPS += \
./rt-thread/libcpu/arm/cortex-m7/cpu_cache.d \
./rt-thread/libcpu/arm/cortex-m7/cpuport.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/arm/cortex-m7/%.o: ../rt-thread/libcpu/arm/cortex-m7/%.S rt-thread/libcpu/arm/cortex-m7/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m55 -g3 -DDEBUG -c -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
rt-thread/libcpu/arm/cortex-m7/%.o rt-thread/libcpu/arm/cortex-m7/%.su rt-thread/libcpu/arm/cortex-m7/%.cyclo: ../rt-thread/libcpu/arm/cortex-m7/%.c rt-thread/libcpu/arm/cortex-m7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/finsh" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-rt-2d-thread-2f-libcpu-2f-arm-2f-cortex-2d-m7

clean-rt-2d-thread-2f-libcpu-2f-arm-2f-cortex-2d-m7:
	-$(RM) ./rt-thread/libcpu/arm/cortex-m7/context_gcc.d ./rt-thread/libcpu/arm/cortex-m7/context_gcc.o ./rt-thread/libcpu/arm/cortex-m7/cpu_cache.cyclo ./rt-thread/libcpu/arm/cortex-m7/cpu_cache.d ./rt-thread/libcpu/arm/cortex-m7/cpu_cache.o ./rt-thread/libcpu/arm/cortex-m7/cpu_cache.su ./rt-thread/libcpu/arm/cortex-m7/cpuport.cyclo ./rt-thread/libcpu/arm/cortex-m7/cpuport.d ./rt-thread/libcpu/arm/cortex-m7/cpuport.o ./rt-thread/libcpu/arm/cortex-m7/cpuport.su

.PHONY: clean-rt-2d-thread-2f-libcpu-2f-arm-2f-cortex-2d-m7

