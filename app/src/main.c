#include <zephyr/kernel.h>
#include <zephyr/device.h>
#define LOG_LEVEL CONFIG_LOG_DEFAULT_LEVEL
#include <zephyr/logging/log.h>


int main(void)
{
    while (1) {
        printf("Testing GitHub\n");
        k_sleep(K_MSEC(500));
    }
	return 0;
}