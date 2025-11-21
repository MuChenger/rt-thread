################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/HAL_Drivers/drivers/drv_adc.c \
../libraries/HAL_Drivers/drivers/drv_can.c \
../libraries/HAL_Drivers/drivers/drv_crypto.c \
../libraries/HAL_Drivers/drivers/drv_dac.c \
../libraries/HAL_Drivers/drivers/drv_eth.c \
../libraries/HAL_Drivers/drivers/drv_fdcan.c \
../libraries/HAL_Drivers/drivers/drv_gpio.c \
../libraries/HAL_Drivers/drivers/drv_hard_i2c.c \
../libraries/HAL_Drivers/drivers/drv_lcd.c \
../libraries/HAL_Drivers/drivers/drv_lcd_mipi.c \
../libraries/HAL_Drivers/drivers/drv_lptim.c \
../libraries/HAL_Drivers/drivers/drv_nand.c \
../libraries/HAL_Drivers/drivers/drv_pm.c \
../libraries/HAL_Drivers/drivers/drv_pulse_encoder.c \
../libraries/HAL_Drivers/drivers/drv_pwm.c \
../libraries/HAL_Drivers/drivers/drv_qspi.c \
../libraries/HAL_Drivers/drivers/drv_rtc.c \
../libraries/HAL_Drivers/drivers/drv_sdio.c \
../libraries/HAL_Drivers/drivers/drv_sdmmc.c \
../libraries/HAL_Drivers/drivers/drv_sdram.c \
../libraries/HAL_Drivers/drivers/drv_soft_i2c.c \
../libraries/HAL_Drivers/drivers/drv_soft_spi.c \
../libraries/HAL_Drivers/drivers/drv_spi.c \
../libraries/HAL_Drivers/drivers/drv_tim.c \
../libraries/HAL_Drivers/drivers/drv_usart.c \
../libraries/HAL_Drivers/drivers/drv_usart_v2.c \
../libraries/HAL_Drivers/drivers/drv_usbd.c \
../libraries/HAL_Drivers/drivers/drv_usbh.c \
../libraries/HAL_Drivers/drivers/drv_wdt.c 

O_SRCS += \
../libraries/HAL_Drivers/drivers/drv_gpio.o 

OBJS += \
./libraries/HAL_Drivers/drivers/drv_adc.o \
./libraries/HAL_Drivers/drivers/drv_can.o \
./libraries/HAL_Drivers/drivers/drv_crypto.o \
./libraries/HAL_Drivers/drivers/drv_dac.o \
./libraries/HAL_Drivers/drivers/drv_eth.o \
./libraries/HAL_Drivers/drivers/drv_fdcan.o \
./libraries/HAL_Drivers/drivers/drv_gpio.o \
./libraries/HAL_Drivers/drivers/drv_hard_i2c.o \
./libraries/HAL_Drivers/drivers/drv_lcd.o \
./libraries/HAL_Drivers/drivers/drv_lcd_mipi.o \
./libraries/HAL_Drivers/drivers/drv_lptim.o \
./libraries/HAL_Drivers/drivers/drv_nand.o \
./libraries/HAL_Drivers/drivers/drv_pm.o \
./libraries/HAL_Drivers/drivers/drv_pulse_encoder.o \
./libraries/HAL_Drivers/drivers/drv_pwm.o \
./libraries/HAL_Drivers/drivers/drv_qspi.o \
./libraries/HAL_Drivers/drivers/drv_rtc.o \
./libraries/HAL_Drivers/drivers/drv_sdio.o \
./libraries/HAL_Drivers/drivers/drv_sdmmc.o \
./libraries/HAL_Drivers/drivers/drv_sdram.o \
./libraries/HAL_Drivers/drivers/drv_soft_i2c.o \
./libraries/HAL_Drivers/drivers/drv_soft_spi.o \
./libraries/HAL_Drivers/drivers/drv_spi.o \
./libraries/HAL_Drivers/drivers/drv_tim.o \
./libraries/HAL_Drivers/drivers/drv_usart.o \
./libraries/HAL_Drivers/drivers/drv_usart_v2.o \
./libraries/HAL_Drivers/drivers/drv_usbd.o \
./libraries/HAL_Drivers/drivers/drv_usbh.o \
./libraries/HAL_Drivers/drivers/drv_wdt.o 

C_DEPS += \
./libraries/HAL_Drivers/drivers/drv_adc.d \
./libraries/HAL_Drivers/drivers/drv_can.d \
./libraries/HAL_Drivers/drivers/drv_crypto.d \
./libraries/HAL_Drivers/drivers/drv_dac.d \
./libraries/HAL_Drivers/drivers/drv_eth.d \
./libraries/HAL_Drivers/drivers/drv_fdcan.d \
./libraries/HAL_Drivers/drivers/drv_gpio.d \
./libraries/HAL_Drivers/drivers/drv_hard_i2c.d \
./libraries/HAL_Drivers/drivers/drv_lcd.d \
./libraries/HAL_Drivers/drivers/drv_lcd_mipi.d \
./libraries/HAL_Drivers/drivers/drv_lptim.d \
./libraries/HAL_Drivers/drivers/drv_nand.d \
./libraries/HAL_Drivers/drivers/drv_pm.d \
./libraries/HAL_Drivers/drivers/drv_pulse_encoder.d \
./libraries/HAL_Drivers/drivers/drv_pwm.d \
./libraries/HAL_Drivers/drivers/drv_qspi.d \
./libraries/HAL_Drivers/drivers/drv_rtc.d \
./libraries/HAL_Drivers/drivers/drv_sdio.d \
./libraries/HAL_Drivers/drivers/drv_sdmmc.d \
./libraries/HAL_Drivers/drivers/drv_sdram.d \
./libraries/HAL_Drivers/drivers/drv_soft_i2c.d \
./libraries/HAL_Drivers/drivers/drv_soft_spi.d \
./libraries/HAL_Drivers/drivers/drv_spi.d \
./libraries/HAL_Drivers/drivers/drv_tim.d \
./libraries/HAL_Drivers/drivers/drv_usart.d \
./libraries/HAL_Drivers/drivers/drv_usart_v2.d \
./libraries/HAL_Drivers/drivers/drv_usbd.d \
./libraries/HAL_Drivers/drivers/drv_usbh.d \
./libraries/HAL_Drivers/drivers/drv_wdt.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/HAL_Drivers/drivers/%.o libraries/HAL_Drivers/drivers/%.su libraries/HAL_Drivers/drivers/%.cyclo: ../libraries/HAL_Drivers/drivers/%.c libraries/HAL_Drivers/drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DRT_USING_LIBC -DRT_USING_NEWLIBC -DSTM32H743xx -D_POSIX_C_SOURCE=1 -D__RTTHREAD__ -c -I../Core/Inc -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/applications" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/BSP/STM32N6xx_Nucleo" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Device/ST/STM32N6xx/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/CMSIS/Include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers/STM32N6xx_HAL_Driver/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board/CubeMX_Config/FSBL/Core/Inc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/board" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers/config" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers/drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/libraries/HAL_Drivers" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/phy" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/drivers/smp_call" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/common/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/compilers/newlib" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/epoll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/eventfd" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/io/poll" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/libc/posix/ipc" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/components/net/utest" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/include" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/common" -I"E:/rt-thread/bsp/stm32/stm32n657x0-st-nucleo/dist/project/rt-thread/libcpu/arm/cortex-m7" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libraries-2f-HAL_Drivers-2f-drivers

clean-libraries-2f-HAL_Drivers-2f-drivers:
	-$(RM) ./libraries/HAL_Drivers/drivers/drv_adc.cyclo ./libraries/HAL_Drivers/drivers/drv_adc.d ./libraries/HAL_Drivers/drivers/drv_adc.o ./libraries/HAL_Drivers/drivers/drv_adc.su ./libraries/HAL_Drivers/drivers/drv_can.cyclo ./libraries/HAL_Drivers/drivers/drv_can.d ./libraries/HAL_Drivers/drivers/drv_can.o ./libraries/HAL_Drivers/drivers/drv_can.su ./libraries/HAL_Drivers/drivers/drv_crypto.cyclo ./libraries/HAL_Drivers/drivers/drv_crypto.d ./libraries/HAL_Drivers/drivers/drv_crypto.o ./libraries/HAL_Drivers/drivers/drv_crypto.su ./libraries/HAL_Drivers/drivers/drv_dac.cyclo ./libraries/HAL_Drivers/drivers/drv_dac.d ./libraries/HAL_Drivers/drivers/drv_dac.o ./libraries/HAL_Drivers/drivers/drv_dac.su ./libraries/HAL_Drivers/drivers/drv_eth.cyclo ./libraries/HAL_Drivers/drivers/drv_eth.d ./libraries/HAL_Drivers/drivers/drv_eth.o ./libraries/HAL_Drivers/drivers/drv_eth.su ./libraries/HAL_Drivers/drivers/drv_fdcan.cyclo ./libraries/HAL_Drivers/drivers/drv_fdcan.d ./libraries/HAL_Drivers/drivers/drv_fdcan.o ./libraries/HAL_Drivers/drivers/drv_fdcan.su ./libraries/HAL_Drivers/drivers/drv_gpio.cyclo ./libraries/HAL_Drivers/drivers/drv_gpio.d ./libraries/HAL_Drivers/drivers/drv_gpio.o ./libraries/HAL_Drivers/drivers/drv_gpio.su ./libraries/HAL_Drivers/drivers/drv_hard_i2c.cyclo ./libraries/HAL_Drivers/drivers/drv_hard_i2c.d ./libraries/HAL_Drivers/drivers/drv_hard_i2c.o ./libraries/HAL_Drivers/drivers/drv_hard_i2c.su ./libraries/HAL_Drivers/drivers/drv_lcd.cyclo ./libraries/HAL_Drivers/drivers/drv_lcd.d ./libraries/HAL_Drivers/drivers/drv_lcd.o ./libraries/HAL_Drivers/drivers/drv_lcd.su ./libraries/HAL_Drivers/drivers/drv_lcd_mipi.cyclo ./libraries/HAL_Drivers/drivers/drv_lcd_mipi.d ./libraries/HAL_Drivers/drivers/drv_lcd_mipi.o ./libraries/HAL_Drivers/drivers/drv_lcd_mipi.su ./libraries/HAL_Drivers/drivers/drv_lptim.cyclo ./libraries/HAL_Drivers/drivers/drv_lptim.d ./libraries/HAL_Drivers/drivers/drv_lptim.o ./libraries/HAL_Drivers/drivers/drv_lptim.su ./libraries/HAL_Drivers/drivers/drv_nand.cyclo ./libraries/HAL_Drivers/drivers/drv_nand.d ./libraries/HAL_Drivers/drivers/drv_nand.o ./libraries/HAL_Drivers/drivers/drv_nand.su ./libraries/HAL_Drivers/drivers/drv_pm.cyclo ./libraries/HAL_Drivers/drivers/drv_pm.d ./libraries/HAL_Drivers/drivers/drv_pm.o ./libraries/HAL_Drivers/drivers/drv_pm.su ./libraries/HAL_Drivers/drivers/drv_pulse_encoder.cyclo ./libraries/HAL_Drivers/drivers/drv_pulse_encoder.d ./libraries/HAL_Drivers/drivers/drv_pulse_encoder.o ./libraries/HAL_Drivers/drivers/drv_pulse_encoder.su ./libraries/HAL_Drivers/drivers/drv_pwm.cyclo ./libraries/HAL_Drivers/drivers/drv_pwm.d ./libraries/HAL_Drivers/drivers/drv_pwm.o ./libraries/HAL_Drivers/drivers/drv_pwm.su ./libraries/HAL_Drivers/drivers/drv_qspi.cyclo ./libraries/HAL_Drivers/drivers/drv_qspi.d ./libraries/HAL_Drivers/drivers/drv_qspi.o ./libraries/HAL_Drivers/drivers/drv_qspi.su ./libraries/HAL_Drivers/drivers/drv_rtc.cyclo ./libraries/HAL_Drivers/drivers/drv_rtc.d ./libraries/HAL_Drivers/drivers/drv_rtc.o ./libraries/HAL_Drivers/drivers/drv_rtc.su ./libraries/HAL_Drivers/drivers/drv_sdio.cyclo ./libraries/HAL_Drivers/drivers/drv_sdio.d ./libraries/HAL_Drivers/drivers/drv_sdio.o ./libraries/HAL_Drivers/drivers/drv_sdio.su ./libraries/HAL_Drivers/drivers/drv_sdmmc.cyclo ./libraries/HAL_Drivers/drivers/drv_sdmmc.d ./libraries/HAL_Drivers/drivers/drv_sdmmc.o ./libraries/HAL_Drivers/drivers/drv_sdmmc.su ./libraries/HAL_Drivers/drivers/drv_sdram.cyclo ./libraries/HAL_Drivers/drivers/drv_sdram.d ./libraries/HAL_Drivers/drivers/drv_sdram.o ./libraries/HAL_Drivers/drivers/drv_sdram.su ./libraries/HAL_Drivers/drivers/drv_soft_i2c.cyclo ./libraries/HAL_Drivers/drivers/drv_soft_i2c.d ./libraries/HAL_Drivers/drivers/drv_soft_i2c.o ./libraries/HAL_Drivers/drivers/drv_soft_i2c.su ./libraries/HAL_Drivers/drivers/drv_soft_spi.cyclo ./libraries/HAL_Drivers/drivers/drv_soft_spi.d ./libraries/HAL_Drivers/drivers/drv_soft_spi.o ./libraries/HAL_Drivers/drivers/drv_soft_spi.su ./libraries/HAL_Drivers/drivers/drv_spi.cyclo ./libraries/HAL_Drivers/drivers/drv_spi.d ./libraries/HAL_Drivers/drivers/drv_spi.o ./libraries/HAL_Drivers/drivers/drv_spi.su ./libraries/HAL_Drivers/drivers/drv_tim.cyclo ./libraries/HAL_Drivers/drivers/drv_tim.d ./libraries/HAL_Drivers/drivers/drv_tim.o ./libraries/HAL_Drivers/drivers/drv_tim.su ./libraries/HAL_Drivers/drivers/drv_usart.cyclo ./libraries/HAL_Drivers/drivers/drv_usart.d ./libraries/HAL_Drivers/drivers/drv_usart.o ./libraries/HAL_Drivers/drivers/drv_usart.su ./libraries/HAL_Drivers/drivers/drv_usart_v2.cyclo ./libraries/HAL_Drivers/drivers/drv_usart_v2.d ./libraries/HAL_Drivers/drivers/drv_usart_v2.o ./libraries/HAL_Drivers/drivers/drv_usart_v2.su ./libraries/HAL_Drivers/drivers/drv_usbd.cyclo ./libraries/HAL_Drivers/drivers/drv_usbd.d ./libraries/HAL_Drivers/drivers/drv_usbd.o ./libraries/HAL_Drivers/drivers/drv_usbd.su ./libraries/HAL_Drivers/drivers/drv_usbh.cyclo ./libraries/HAL_Drivers/drivers/drv_usbh.d ./libraries/HAL_Drivers/drivers/drv_usbh.o ./libraries/HAL_Drivers/drivers/drv_usbh.su ./libraries/HAL_Drivers/drivers/drv_wdt.cyclo ./libraries/HAL_Drivers/drivers/drv_wdt.d ./libraries/HAL_Drivers/drivers/drv_wdt.o ./libraries/HAL_Drivers/drivers/drv_wdt.su

.PHONY: clean-libraries-2f-HAL_Drivers-2f-drivers

