#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/display.h>
#include <lvgl.h>

#define LOG_LEVEL CONFIG_LOG_DEFAULT_LEVEL
#include <zephyr/logging/log.h>
LOG_MODULE_REGISTER(app);

static void lv_example_label(void)
{
    lv_obj_t * label1 = lv_label_create(lv_scr_act());
    lv_label_set_text(label1, "Hello world");
    lv_obj_align(label1, LV_ALIGN_CENTER, 0, 0);
}

int main(void)
{
    const struct device *display_dev;
    display_dev = DEVICE_DT_GET(DT_CHOSEN(zephyr_display));
    if (!device_is_ready(display_dev)) {
        LOG_ERR("Device not ready, aborting test");
        return 0;
    }

    lv_example_label();

    while (1) {
        printf("Testing GitHub\n");
        lv_task_handler();
        k_sleep(K_MSEC(10));
    }
	return 0;
}