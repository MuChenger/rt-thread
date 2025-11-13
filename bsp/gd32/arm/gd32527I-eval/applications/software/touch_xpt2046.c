#include "touch_xpt2046.h"
#include "gd32f5xx.h"
#include <rtthread.h>
#include <stdint.h>
#include "stdio.h"

#include "lv_port_indev.h"
//使用XPT2046触摸屏 模拟SPI驱动


// 同时确保延迟函数也做防优化处理
static void delay_5us(void)
{
    // 使用volatile变量确保循环不被优化掉
    volatile uint32_t count;
    // 根据实际硬件校准循环次数
    for(count = 0; count < 20; count++)
    {
        __NOP();  // 空操作，确保指令执行
    }
}
/* 初化触摸屏的IO */
void XPT2046_gpio_init(void)
{ 
    rcu_periph_clock_enable(RCU_GPIOF);
    rcu_periph_clock_enable(RCU_GPIOH);
    rcu_periph_clock_enable(RCU_GPIOI);
    rcu_periph_clock_enable(RCU_GPIOG);
    #ifdef XPT2046_HARD_SPI
    rcu_periph_clock_enable(TOUCH_SPI);
    //初始化SPI 引脚
    
        // MOSI: PF9
    gpio_mode_set(XPT2046_MOSI_PORT, GPIO_MODE_AF, GPIO_PUPD_NONE, XPT2046_MOSI_PIN);
    gpio_output_options_set(XPT2046_MOSI_PORT, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, XPT2046_MOSI_PIN);
    gpio_af_set(XPT2046_MOSI_PORT, GPIO_AF_5, XPT2046_MOSI_PIN);
    
    // MISO: PH7
    gpio_mode_set(XPT2046_MISO_PORT, GPIO_MODE_AF, GPIO_PUPD_NONE, XPT2046_MISO_PIN);
    gpio_output_options_set(XPT2046_MISO_PORT, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, XPT2046_MISO_PIN);
    gpio_af_set(XPT2046_MISO_PORT, GPIO_AF_5, XPT2046_MISO_PIN);
    
    // SCK: PH6
    gpio_mode_set(XPT2046_SCK_PORT, GPIO_MODE_AF, GPIO_PUPD_NONE, XPT2046_SCK_PIN);
    gpio_output_options_set(XPT2046_SCK_PORT, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, XPT2046_SCK_PIN);
    gpio_af_set(XPT2046_SCK_PORT, GPIO_AF_5, XPT2046_SCK_PIN);


    // 初始化SPI4
    rcu_periph_clock_enable(RCU_SPI4);
    
    spi_parameter_struct spi_init_struct;
    spi_i2s_deinit(TOUCH_SPI);
    
    spi_init_struct.trans_mode           = SPI_TRANSMODE_FULLDUPLEX;
    spi_init_struct.device_mode          = SPI_MASTER;
    spi_init_struct.frame_size           = SPI_FRAMESIZE_8BIT;
    spi_init_struct.clock_polarity_phase = SPI_CK_PL_LOW_PH_1EDGE;
    spi_init_struct.nss                  = SPI_NSS_SOFT;
    spi_init_struct.prescale             = SPI_PSC_128;  // 分频，可根据需要调整
    spi_init_struct.endian               = SPI_ENDIAN_MSB;
    
    spi_init(TOUCH_SPI, &spi_init_struct);
    spi_enable(TOUCH_SPI);

    #else


    //初始化MOSI SCK NSS引脚
    gpio_mode_set(XPT2046_MOSI_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_PULLUP, XPT2046_MOSI_PIN);
    gpio_output_options_set(XPT2046_MOSI_PORT, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, XPT2046_MOSI_PIN);
    gpio_mode_set(XPT2046_SCK_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_PULLUP, XPT2046_SCK_PIN);
    gpio_output_options_set(XPT2046_SCK_PORT, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, XPT2046_SCK_PIN);
    //初始化MISO PENIRQ BUSY引脚
    gpio_mode_set(XPT2046_MISO_PORT, GPIO_MODE_INPUT, GPIO_PUPD_NONE, XPT2046_MISO_PIN);
    #endif

    gpio_mode_set(XPT2046_NSS_PORT, GPIO_MODE_OUTPUT, GPIO_PUPD_PULLUP, XPT2046_NSS_PIN);
    gpio_output_options_set(XPT2046_NSS_PORT, GPIO_OTYPE_PP, GPIO_OSPEED_50MHZ, XPT2046_NSS_PIN);
    gpio_mode_set(XPT2046_PENIRQ_PORT, GPIO_MODE_INPUT, GPIO_PUPD_NONE, XPT2046_PENIRQ_PIN);  //CS拉高

    XPT2046_CS_DISABLE();
    //SCK拉低
    XPT2046_SCK_LOW(); 
}

/* 向XPT2046发送一个字节 */
void XPT2046_send_byte(uint8_t byte)
{
		uint8_t i;
    XPT2046_SCK_LOW();
    delay_5us();
    for(i=0; i<8; i++)
    {
        delay_5us();
        if(byte & (0x80 >> i))
        {
            XPT2046_MOSI_HIGH();
        }
        else
        {
            XPT2046_MOSI_LOW();
        }
        XPT2046_SCK_HIGH();
        delay_5us();
        XPT2046_SCK_LOW();
    }

}

/* 从XPT2046接收12位数据  */
uint16_t XPT2046_recv_byte(void)
{
    uint8_t i;
    uint16_t data = 0;
    // 确保变量不被编译器优化
    volatile uint8_t miso_state;
    
    // 对硬件操作添加内存屏障，防止编译器重排序
    __asm volatile("" : : : "memory");
    
    XPT2046_SCK_LOW();
    delay_5us();  // 确保延迟函数在高优化下仍能正常工作
    
    for(i = 0; i < 12; i++)
    {
        XPT2046_SCK_HIGH();
        delay_5us();
        
        XPT2046_SCK_LOW();
        // 读取MISO引脚状态，用volatile变量存储防止优化
        miso_state = XPT2046_MISO_READ();
        data <<= 1;
        if(miso_state)
        {
            data |= 0x01;
        }
        
        delay_5us();
        // 内存屏障，确保时序操作按顺序执行
        __asm volatile("" : : : "memory");
    }
    
    return data & 0x0FFF;
}

/* 从XPT2046读取x坐标 
  加入超时处理
*/
#ifdef XPT2046_HARD_SPI
static uint16_t XPT2046_readXY(uint8_t cmd)
{
    spi_parameter_struct spi_init_struct;
		spi_i2s_deinit(TOUCH_SPI);
    spi_init_struct.trans_mode           = SPI_TRANSMODE_FULLDUPLEX;
    spi_init_struct.device_mode          = SPI_MASTER;
    spi_init_struct.frame_size           = SPI_FRAMESIZE_8BIT;
    spi_init_struct.clock_polarity_phase = SPI_CK_PL_LOW_PH_1EDGE;
    spi_init_struct.nss                  = SPI_NSS_SOFT;
    spi_init_struct.prescale             = SPI_PSC_128;  // 分频，可根据需要调整
    spi_init_struct.endian               = SPI_ENDIAN_MSB;
    
    spi_init(TOUCH_SPI, &spi_init_struct);
    XPT2046_CS_ENABLE();
    uint16_t data = 0;
    while(RESET == spi_i2s_flag_get(TOUCH_SPI, SPI_FLAG_TBE));
    spi_i2s_data_transmit(TOUCH_SPI, cmd);
    while(RESET == spi_i2s_flag_get(TOUCH_SPI, SPI_FLAG_RBNE));
    data = spi_i2s_data_receive(TOUCH_SPI);
    delay_1ms(1);
		spi_i2s_deinit(TOUCH_SPI);
    spi_init_struct.frame_size           = SPI_FRAMESIZE_16BIT;
    spi_init(TOUCH_SPI, &spi_init_struct);

    while(RESET == spi_i2s_flag_get(TOUCH_SPI, SPI_FLAG_TBE));
    spi_i2s_data_transmit(TOUCH_SPI, 0x0000);
    while(RESET == spi_i2s_flag_get(TOUCH_SPI, SPI_FLAG_RBNE));
    data = spi_i2s_data_receive(TOUCH_SPI);

    XPT2046_CS_DISABLE();
    return data>>3;
}
#else
static uint16_t XPT2046_readXY(uint8_t cmd)
{
    XPT2046_CS_ENABLE();
    uint16_t data = 0;
    XPT2046_send_byte(cmd);
    rt_thread_mdelay(1);
    data = XPT2046_recv_byte();
    XPT2046_CS_DISABLE();
    return data;
}
#endif // DEBUG
/* 检测触摸屏是否按下 */
uint8_t XPT2046_touch_press(void)
{
    if(gpio_input_bit_get(XPT2046_PENIRQ_PORT, XPT2046_PENIRQ_PIN) == RESET)
    {
        return 1;
    }
    else
    {
        return 0;
    }
    
}


/**
 * @brief 将触摸屏原始坐标转换为屏幕坐标
 * @param touch_x: 触摸屏原始X坐标
 * @param touch_y: 触摸屏原始Y坐标
 * @param screen_x: 转换后的屏幕X坐标指针
 * @param screen_y: 转换后的屏幕Y坐标指针
 */
void XPT2046_convert_cood(uint16_t touch_x, uint16_t touch_y, uint16_t *screen_x, uint16_t *screen_y)
{
    // 限制输入坐标在有效范围内
    if(touch_x < TOUCH_X_MIN) touch_x = TOUCH_X_MIN;
    if(touch_x > TOUCH_X_MAX) touch_x = TOUCH_X_MAX;
    if(touch_y < TOUCH_Y_MIN) touch_y = TOUCH_Y_MIN;
    if(touch_y > TOUCH_Y_MAX) touch_y = TOUCH_Y_MAX;
    
    // X轴转换 (反向)
    *screen_x = ((TOUCH_X_MAX - touch_x) * (SCREEN_WIDTH - 1)) / (TOUCH_X_MAX - TOUCH_X_MIN);
    
    // Y轴转换 (反向)
    *screen_y = ((TOUCH_Y_MAX - touch_y) * (SCREEN_HEIGHT - 1)) / (TOUCH_Y_MAX - TOUCH_Y_MIN);
    
    // 确保输出坐标不会超出屏幕范围
    if(*screen_x >= SCREEN_WIDTH) *screen_x = SCREEN_WIDTH - 1;
    if(*screen_y >= SCREEN_HEIGHT) *screen_y = SCREEN_HEIGHT - 1;
}


/**
 * @brief 读取触摸屏坐标 - 高精度采样版本
 * 采集5个样本，排序后取中位数，确保数据稳定性
 * @param x: 屏幕X坐标输出指针
 * @param y: 屏幕Y坐标输出指针
 */
void XPT2046_read_cood(uint16_t *x, uint16_t *y)
{
    uint16_t raw_x, raw_y;
    
    if(x == NULL || y == NULL)
    {
        return;
    }
    
    {
        uint16_t buf[5];
        uint8_t i, j;
        
        for(i = 0; i < 5; ++i)
        {
            buf[i] = XPT2046_readXY(0x90);
        }
        
        for(i = 0; i < 4; ++i)
        {
            for(j = i + 1; j < 5; ++j)
            {
                if(buf[i] > buf[j])
                {
                    uint16_t temp = buf[i];
                    buf[i] = buf[j];
                    buf[j] = temp;
                }
            }
        }
        
        raw_x = buf[2];
        delay_5us();
    }
    
    {
        uint16_t buf[5];
        uint8_t i, j;
        
        for(i = 0; i < 5; ++i)
        {
            buf[i] = XPT2046_readXY(0xD0);
        }
        
        for(i = 0; i < 4; ++i)
        {
            for(j = i + 1; j < 5; ++j)
            {
                if(buf[i] > buf[j])
                {
                    uint16_t temp = buf[i];
                    buf[i] = buf[j];
                    buf[j] = temp;
                }
            }
        }
        
        raw_y = buf[2];
        delay_5us();
    }
    
    XPT2046_convert_cood(raw_x, raw_y, x, y);
}

// 初始化XPT2046触摸屏
int XPT2046_init(void)
{
    XPT2046_gpio_init();
	return RT_EOK;
}

// 注册到设备初始化阶段，系统启动时自动执行
INIT_DEVICE_EXPORT(XPT2046_init);