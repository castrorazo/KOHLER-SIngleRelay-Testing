/*
 * Copyright (c) 2018 Jan Van Winkel <jan.van_winkel@dxplore.eu>
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr/device.h>
#include <zephyr/devicetree.h>
#include <zephyr/drivers/display.h>
#include <zephyr/drivers/gpio.h>
#include <lvgl.h>
#include <lvgl_input_device.h>
#include <stdio.h>
#include <string.h>
#include <zephyr/kernel.h>
#include "counter.h"
#include <zephyr/drivers/adc.h>


#define LOG_LEVEL CONFIG_LOG_DEFAULT_LEVEL
#include <zephyr/logging/log.h>
LOG_MODULE_REGISTER(app);

#define ADC_DEVICE_NAME         DT_LABEL(DT_NODELABEL(adc1))
#define ADC_RESOLUTION          12
#define ADC_GAIN                ADC_GAIN_1
#define ADC_REFERENCE           ADC_REF_INTERNAL
#define ADC_ACQUISITION_TIME    ADC_ACQ_TIME_DEFAULT
#define ADC_CHANNEL             0
#define ADC_NODE DT_NODELABEL(adc1)

static const struct device *adc_dev;
static int16_t adc_sample_buffer[1];

static void event_handler(lv_event_t * e)
{
    lv_event_code_t code = lv_event_get_code(e);
    lv_obj_t * obj = lv_event_get_target(e);
    if(code == LV_EVENT_VALUE_CHANGED) {
        char buf[32];
        lv_dropdown_get_selected_str(obj, buf, sizeof(buf));
        LV_LOG_USER("Option: %s", buf);
    }
}
static void light_on_button_event_cb(lv_event_t *event);
static struct gpio_dt_spec touch_int_gpio = GPIO_DT_SPEC_GET(DT_NODELABEL(ft5336), int_gpios);
static struct gpio_callback touch_int_cb_data;

static void touch_int_callback(const struct device *dev, struct gpio_callback *cb, uint32_t pins)
{
    printk("Touch interrupt detected!\n");
    // Note: You wouldn't typically process touch data here. 
    // The driver should handle this interrupt.
}

void setup_touch_interrupt(void)
{
    int ret;

    if (!device_is_ready(touch_int_gpio.port)) {
        printk("Error: touch interrupt GPIO device is not ready\n");
        return;
    }

    ret = gpio_pin_configure_dt(&touch_int_gpio, GPIO_INPUT);
    if (ret != 0) {
        printk("Error %d: failed to configure touch interrupt pin\n", ret);
        return;
    }

    ret = gpio_pin_interrupt_configure_dt(&touch_int_gpio, GPIO_INT_EDGE_TO_ACTIVE);
    if (ret != 0) {
        printk("Error %d: failed to configure touch interrupt\n", ret);
        return;
    }

    gpio_init_callback(&touch_int_cb_data, touch_int_callback, BIT(touch_int_gpio.pin));
    gpio_add_callback(touch_int_gpio.port, &touch_int_cb_data);

    printk("Touch interrupt configured\n");
}

//=======
static int adc_sample(void)
{
    int ret;
    const struct adc_sequence sequence = {
        .channels = BIT(ADC_CHANNEL),
        .buffer = adc_sample_buffer,
        .buffer_size = sizeof(adc_sample_buffer),
        .resolution = ADC_RESOLUTION,
    };

    if (adc_dev == NULL) {
        return -1;
    }

    ret = adc_read(adc_dev, &sequence);
    if (ret) {
        LOG_ERR("ADC reading failed with error");
    }

    return ret;
}



#ifdef CONFIG_GPIO
static struct gpio_dt_spec button_gpio = GPIO_DT_SPEC_GET_OR(
		DT_ALIAS(sw0), gpios, {0});
static struct gpio_callback button_callback;

static void button_isr_callback(const struct device *port,
				struct gpio_callback *cb,
				uint32_t pins)
{
	ARG_UNUSED(port);
	ARG_UNUSED(cb);
	ARG_UNUSED(pins);

	counter_reset();
    printk("Click Detected!/n");
}
#endif /* CONFIG_GPIO */

#ifdef CONFIG_LV_Z_ENCODER_INPUT
static const struct device *lvgl_encoder =
	DEVICE_DT_GET(DT_COMPAT_GET_ANY_STATUS_OKAY(zephyr_lvgl_encoder_input));
#endif /* CONFIG_LV_Z_ENCODER_INPUT */

#ifdef CONFIG_LV_Z_KEYPAD_INPUT
static const struct device *lvgl_keypad =
	DEVICE_DT_GET(DT_COMPAT_GET_ANY_STATUS_OKAY(zephyr_lvgl_keypad_input));
#endif /* CONFIG_LV_Z_KEYPAD_INPUT */

static void lv_btn_click_callback(lv_event_t *e)
{
	ARG_UNUSED(e);

	counter_reset();
}

static void light_on_button_event_cb(lv_event_t *event) {
    printk("Click Detected");
}


int main(void)
{
	char count_str[11] = {0};
	const struct device *display_dev;
	lv_obj_t *hello_world_label;
	lv_obj_t *count_label;

	display_dev = DEVICE_DT_GET(DT_CHOSEN(zephyr_display));
	if (!device_is_ready(display_dev)) {
		LOG_ERR("Device not ready, aborting test");
		return 0;
	}

#ifdef CONFIG_GPIO
	if (gpio_is_ready_dt(&button_gpio)) {
		int err;

		err = gpio_pin_configure_dt(&button_gpio, GPIO_INPUT);
		if (err) {
			LOG_ERR("failed to configure button gpio: %d", err);
			return 0;
		}

		gpio_init_callback(&button_callback, button_isr_callback,
				   BIT(button_gpio.pin));

		err = gpio_add_callback(button_gpio.port, &button_callback);
		if (err) {
			LOG_ERR("failed to add button callback: %d", err);
			return 0;
		}

		err = gpio_pin_interrupt_configure_dt(&button_gpio,
						      GPIO_INT_EDGE_TO_ACTIVE);
		if (err) {
			LOG_ERR("failed to enable button callback: %d", err);
			return 0;
		}
	}
#endif /* CONFIG_GPIO */

#ifdef CONFIG_LV_Z_ENCODER_INPUT
	lv_obj_t *arc;
	lv_group_t *arc_group;

	arc = lv_arc_create(lv_scr_act());
	lv_obj_align(arc, LV_ALIGN_CENTER, 0, -15);
	lv_obj_set_size(arc, 150, 150);

	arc_group = lv_group_create();
	lv_group_add_obj(arc_group, arc);
	lv_indev_set_group(lvgl_input_get_indev(lvgl_encoder), arc_group);
#endif /* CONFIG_LV_Z_ENCODER_INPUT */

#ifdef CONFIG_LV_Z_KEYPAD_INPUT
	lv_obj_t *btn_matrix;
	lv_group_t *btn_matrix_group;
	static const char *const btnm_map[] = {"1", "2", "3", "4", ""};

	btn_matrix = lv_btnmatrix_create(lv_scr_act());
	lv_obj_align(btn_matrix, LV_ALIGN_CENTER, 0, 70);
	lv_btnmatrix_set_map(btn_matrix, (const char **)btnm_map);
	lv_obj_set_size(btn_matrix, 100, 50);

	btn_matrix_group = lv_group_create();
	lv_group_add_obj(btn_matrix_group, btn_matrix);
	lv_indev_set_group(lvgl_input_get_indev(lvgl_keypad), btn_matrix_group);
#endif /* CONFIG_LV_Z_KEYPAD_INPUT */

	if (IS_ENABLED(CONFIG_LV_Z_POINTER_KSCAN) || IS_ENABLED(CONFIG_LV_Z_POINTER_INPUT)) {
		lv_obj_t *hello_world_button;

		hello_world_button = lv_btn_create(lv_scr_act());
		lv_obj_align(hello_world_button, LV_ALIGN_LEFT_MID, 0, 20);
		lv_obj_add_event_cb(hello_world_button, lv_btn_click_callback, LV_EVENT_CLICKED,
				    NULL);
		hello_world_label = lv_label_create(hello_world_button);
	} else {
		hello_world_label = lv_label_create(lv_scr_act());
	}

    lv_obj_t *light_on_relay = lv_btn_create(lv_scr_act());
  lv_obj_align(light_on_relay, LV_ALIGN_TOP_MID, 0, -0);
  lv_obj_set_size(light_on_relay, 120, 50);
  lv_obj_add_event_cb(light_on_relay, light_on_button_event_cb,
                      LV_EVENT_CLICKED, NULL);
  lv_obj_set_style_bg_img_src(light_on_relay, LV_SYMBOL_CHARGE, 0);
  lv_obj_set_style_text_font(light_on_relay,
                             lv_theme_get_font_large(light_on_relay), 0);

	lv_label_set_text(hello_world_label, "Hello world!");
	lv_obj_align(hello_world_label, LV_ALIGN_LEFT_MID, 0, 20);

	count_label = lv_label_create(lv_scr_act());
	lv_obj_align(count_label, LV_ALIGN_BOTTOM_MID, 0, 0);
	//=============================================
        adc_dev = DEVICE_DT_GET(ADC_NODE);
    if (!device_is_ready(adc_dev)) {
        LOG_ERR("ADC device not ready");
        return 0;
    }

    struct adc_channel_cfg channel_cfg = {
        .gain = ADC_GAIN,
        .reference = ADC_REFERENCE,
        .acquisition_time = ADC_ACQUISITION_TIME,
        .channel_id = ADC_CHANNEL,
    };

    if (adc_channel_setup(adc_dev, &channel_cfg) < 0) {
        LOG_ERR("Failed to setup ADC channel");
        return 0;
    }
    int16_t sample_buffer;
    struct adc_sequence sequence = {
        .channels = BIT(ADC_CHANNEL),
        .buffer = &sample_buffer,
        .buffer_size = sizeof(sample_buffer),
        .resolution = ADC_RESOLUTION,
    };
    if (adc_channel_setup(adc_dev, &channel_cfg) < 0) {
        LOG_ERR("Failed to setup ADC channel");
        return;
    }
    

    lv_obj_t *adc_label = lv_label_create(lv_scr_act());
    lv_obj_align(adc_label, LV_ALIGN_RIGHT_MID, -50, 0);  // Adjust position as needed
    setup_touch_interrupt();
	//=========================
	lv_task_handler();
	display_blanking_off(display_dev);

	while (1) {
        if ((counter_value() % 100) == 0U) {
            sprintf(count_str, "%d", counter_value()/100U);
            lv_label_set_text(count_label, count_str);

            // Read ADC and update label
            if (adc_sample() == 0) {
                int32_t mv = adc_sample_buffer[0];
                adc_raw_to_millivolts(adc_ref_internal(adc_dev),
                                      ADC_GAIN,
                                      ADC_RESOLUTION,
                                      &mv);
                char voltage_str[20];
                snprintf(voltage_str, sizeof(voltage_str), "Voltage: %ld mV", mv);
                lv_label_set_text(adc_label, voltage_str);
            }
        }
        counter_increment();
        lv_task_handler();
        k_sleep(K_MSEC(10));
    }
}