################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.c \
../Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.c 

OBJS += \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.o \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.o 

C_DEPS += \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.d \
./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32N6xx_HAL_Driver/Src/%.o Drivers/STM32N6xx_HAL_Driver/Src/%.su Drivers/STM32N6xx_HAL_Driver/Src/%.cyclo: ../Drivers/STM32N6xx_HAL_Driver/Src/%.c Drivers/STM32N6xx_HAL_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-STM32N6xx_HAL_Driver-2f-Src

clean-Drivers-2f-STM32N6xx_HAL_Driver-2f-Src:
	-$(RM) ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_cortex.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_dma_ex.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_exti.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_gpio.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_icache.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_pwr_ex.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_rcc_ex.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_uart_ex.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart.su ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.cyclo ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.d ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.o ./Drivers/STM32N6xx_HAL_Driver/Src/stm32n6xx_hal_usart_ex.su

.PHONY: clean-Drivers-2f-STM32N6xx_HAL_Driver-2f-Src

