/**
 * @file    touch_xt2046.h
 * @brief   XPT2046触摸屏驱动程序头文件
 */

#ifndef __TOUCH_XPT2046_H
#define __TOUCH_XPT2046_H

#include "gd32f5xx.h"
//#include "lvgl.h"
// 引脚定义
#define XPT2046_PENIRQ_PORT    GPIOI
#define XPT2046_PENIRQ_PIN     GPIO_PIN_3
#define XPT2046_MOSI_PORT      GPIOF
#define XPT2046_MOSI_PIN       GPIO_PIN_9
#define XPT2046_MISO_PORT      GPIOH
#define XPT2046_MISO_PIN       GPIO_PIN_7
#define XPT2046_SCK_PORT       GPIOH
#define XPT2046_SCK_PIN        GPIO_PIN_6
#define XPT2046_NSS_PORT       GPIOF
#define XPT2046_NSS_PIN        GPIO_PIN_6
#define XPT2046_BUSY_PORT      GPIOG
#define XPT2046_BUSY_PIN       GPIO_PIN_3

#define XPT2046_CS_ENABLE()  gpio_bit_reset(XPT2046_NSS_PORT, XPT2046_NSS_PIN)
#define XPT2046_CS_DISABLE() gpio_bit_set(XPT2046_NSS_PORT, XPT2046_NSS_PIN)
#define XPT2046_PENIRQ_READ()  gpio_input_bit_get(XPT2046_PENIRQ_PORT, XPT2046_PENIRQ_PIN)
#define XPT2046_BUSY_READ()  gpio_input_bit_get(XPT2046_BUSY_PORT, XPT2046_BUSY_PIN)
#define XPT2046_MOSI_HIGH()  gpio_bit_set(XPT2046_MOSI_PORT, XPT2046_MOSI_PIN)
#define XPT2046_MOSI_LOW()   gpio_bit_reset(XPT2046_MOSI_PORT, XPT2046_MOSI_PIN)
#define XPT2046_SCK_HIGH()   gpio_bit_set(XPT2046_SCK_PORT, XPT2046_SCK_PIN)
#define XPT2046_SCK_LOW()    gpio_bit_reset(XPT2046_SCK_PORT, XPT2046_SCK_PIN)
#define XPT2046_MISO_READ()  gpio_input_bit_get(XPT2046_MISO_PORT, XPT2046_MISO_PIN)


// 定义一个软件SPI 硬件SPI的开关
//#define XPT2046_HARD_SPI



// SPI定义
#define TOUCH_SPI            SPI4


/* 坐标转换参数 */
#define TOUCH_X_MIN     221     // 触摸屏X轴最小值
#define TOUCH_X_MAX     3823    // 触摸屏X轴最大值
#define TOUCH_Y_MIN     228     // 触摸屏Y轴最小值
#define TOUCH_Y_MAX     3743    // 触摸屏Y轴最大值

#define SCREEN_WIDTH    480     // 屏幕宽度
#define SCREEN_HEIGHT   272     // 屏幕高度


// 触摸坐标结构体
typedef struct {
    uint16_t x;         // X坐标
    uint16_t y;         // Y坐标
    uint8_t pressed;    // 触摸状态 1:按下 0:未按下
    uint8_t pressure;   // 触摸压力值
} TouchCoordinate;

// 函数声明
int XPT2046_init(void);
//bool XPT2046_read(lv_indev_drv_t * drv, lv_indev_data_t*data);

uint8_t XPT2046_touch_press(void);
void XPT2046_read_cood(uint16_t *x, uint16_t *y);

#endif /* __TOUCH_XT2046_H */