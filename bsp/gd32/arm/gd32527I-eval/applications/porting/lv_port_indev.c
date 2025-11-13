/**
 * @file lv_port_indev_templ.c
 *
 */

/*Copy this file as "lv_port_indev.c" and set this value to "1" to enable content*/
#if 1

/*********************
 *      INCLUDES
 *********************/
#include "lv_port_indev.h"
#include "lvgl.h"
#include "stdio.h"
#include "touch_xpt2046.h"
/*********************
 *      DEFINES
 *********************/
#include <rtdevice.h>
#include "drv_xpt2046.h"
/**********************
 *      TYPEDEFS
 **********************/

/**********************
 *  STATIC PROTOTYPES
 **********************/

static void touchpad_init(void);
static void touchpad_read(lv_indev_drv_t * indev_drv, lv_indev_data_t * data);
static bool touchpad_is_pressed(void);
static void touchpad_get_xy(lv_coord_t * x, lv_coord_t * y);

/**********************
 *  STATIC VARIABLES
 **********************/
lv_indev_t * indev_touchpad;

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/

void lv_port_indev_init(void)
{
    static lv_indev_drv_t indev_drv;
    /*------------------
     * Touchpad
     * -----------------*/
    /*Initialize your touchpad if you have*/
    touchpad_init();

    /*Register a touchpad input device*/
    lv_indev_drv_init(&indev_drv);
    indev_drv.type = LV_INDEV_TYPE_POINTER;
    indev_drv.read_cb = touchpad_read;
    indev_touchpad = lv_indev_drv_register(&indev_drv);
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

/*------------------
 * Touchpad
 * -----------------*/
static volatile rt_device_t touch;
/*Initialize your touchpad*/
static void touchpad_init(void)
{
    /*Your code comes here*/
//	  touch = rt_device_find("xpt0");

//    if (touch == RT_NULL)
//    {
//        rt_kprintf("can't find device:%s\n", "xpt0");
//        while (1);
//    }
//    if (rt_device_open(touch, RT_DEVICE_FLAG_INT_RX) != RT_EOK)
//    {
//        rt_kprintf("open device failed!");
//        while (1);
//    }
		
		XPT2046_init();
}
		
volatile struct rt_touch_data read_data;
/*Will be called by the library to read the touchpad*/
static void touchpad_read(lv_indev_drv_t * indev_drv, lv_indev_data_t * data)
{
    static uint16_t last_x = 0;
    static uint16_t last_y = 0;
	
//	  rt_memset(&read_data, 0, sizeof(struct rt_touch_data));

//		if (rt_device_read(touch, 0, &read_data, 1) == 1)
//		{
//			data->state = LV_INDEV_STATE_PR;
//		}
//		else
//		{
//			data->state = LV_INDEV_STATE_REL;
//		}
//		
//		data->point.x = read_data.x_coordinate;
//    data->point.y = read_data.y_coordinate;

		if(XPT2046_touch_press()) 
		{
			XPT2046_read_cood(&last_x, &last_y);
			printf("x = %d, y = %d\r\n", last_x, last_y);
            data->state = LV_INDEV_STATE_PR;
		}
        else
            data->state = LV_INDEV_STATE_REL;
    /*Set the last pressed coordinates*/
    data->point.x = last_x;
    data->point.y = last_y;
//				
//		rt_kprintf("point.x: %d point.y: %d \r\n", data->point.x, data->point.y);
		
}

/*Return true is the touchpad is pressed*/
static bool touchpad_is_pressed(void)
{
    /*Your code comes here*/
   if(XPT2046_touch_press()){
       return true;
   } else {
       return false;
   }
}

/*Get the x and y coordinates if the touchpad is pressed*/
static void touchpad_get_xy(lv_coord_t * x, lv_coord_t * y)
{
    /*Your code comes here*/
//    (*x) = touch_x;
//    (*y) = touch_y;
}

#endif
