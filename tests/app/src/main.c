/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr/ztest.h>
#include <counter.h>

#include <zephyr/device.h>
#include <zephyr/devicetree.h>
// #include <zephyr/drivers/display.h>
#include <zephyr/drivers/gpio.h>
// #include <lvgl.h>
#include <stdio.h>
#include <string.h>
#include <zephyr/kernel.h>
// #include <lvgl_input_device.h>
#include <zephyr/drivers/sensor.h>
#include <zephyr/drivers/adc.h>
#include <zephyr/drivers/pwm.h>
#include <zephyr/dt-bindings/pwm/stm32_pwm.h>

#define HTS221_LABEL DT_LABEL(DT_INST(0, st_hts221))
static const struct device *hts221_dev;

#define VL5310X_LABEL DT_LABEL(DT_INST(0, st_vl53l0x))
static const struct device *vl53l0x_dev;

#define TIM15_LABEL DT_LABEL(DT_NODELABEL(pwm15))
static const struct device *tim15_dev;
static struct k_timer tim15_timer;
#define TIM15_PERIOD_MS 1000 // 1 second
static volatile uint32_t timer_callback_count;

#define ADC_NODE DT_NODELABEL(adc1)
#define ADC_CHANNEL 14  // ADC1_IN14 (PC5)
#define ADC_RESOLUTION 12
#define ADC_GAIN ADC_GAIN_1
#define ADC_REFERENCE ADC_REF_INTERNAL
#define ADC_ACQUISITION_TIME ADC_ACQ_TIME_DEFAULT

#define ADC_VREF_MV 3300  // 3.3V reference voltage
#define SIGNAL_VOLTAGE_MV 1100  // 1.66V signal voltage
static const struct device *adc_dev;

/**
 * @brief Test Fixture HTS221 Sesnor: Temperature and Humidity
 *
 * This fixture will initialize the HTS221 sensor before each test case using this sensor.
 *
 */
static void *hts221_setup(void)
{
    hts221_dev = DEVICE_DT_GET(DT_INST(0, st_hts221));
    zassert_true(device_is_ready(hts221_dev), "HTS221 device is not ready");
    return NULL;
}
/**
 * @brief Test Fixture vl53l0x Sesnor: Proximity and Distance
 *
 * This fixture will initialize the vl53l0x sensor before each test case using this sensor.
 *
 */
static void *vl5310x_setup(void)
{
    vl53l0x_dev = DEVICE_DT_GET(DT_INST(0, st_vl53l0x));
    zassert_true(device_is_ready(vl53l0x_dev), "vl53l0x device is not ready");
    return NULL;
}
/**
 * @brief Test Timer Counter: Timer Usage
 *
 * This function incrments the callack value
 *
 */
void tim15_timer_callback(struct k_timer *timer)
{
    timer_callback_count++;
}

/**
 * @brief Test Fixture Timer: Timer Usage
 *
 * This fixture will initialize the timer before each test case using this timer.
 *
 */
static void *tim15_setup(void)
{
    tim15_dev = DEVICE_DT_GET(DT_NODELABEL(pwm15));
    zassert_true(device_is_ready(tim15_dev), "TIM15 device is not ready");

    k_timer_init(&tim15_timer, tim15_timer_callback, NULL);

    return NULL;
}
/**
 * @brief Test Fixture ADC: Voltage Reading
 *
 * This fixture will initialize the ADC before each test case using this ADC12_IN5 : PA0.
 *
 */
static void *adc_setup(void)
{
    adc_dev = DEVICE_DT_GET(ADC_NODE);
    zassert_true(device_is_ready(adc_dev), "ADC device is not ready");

    struct adc_channel_cfg channel_cfg = {
        .gain = ADC_GAIN,
        .reference = ADC_REFERENCE,
        .acquisition_time = ADC_ACQUISITION_TIME,
        .channel_id = ADC_CHANNEL,
    };

    int ret = adc_channel_setup(adc_dev, &channel_cfg);
    zassert_equal(ret, 0, "Failed to setup ADC channel");

    return NULL;
}
/**
 * @brief Test Fixture PWM: Freq and DC%
 *
 * This fixture will initialize the PWM before each test case using this TIM2_CH1 : PA5.
 *
 */
static void *pwm_setup(void)
{
    const struct pwm_dt_spec pwm_led0 = PWM_DT_SPEC_GET(DT_ALIAS(pwm_led0));

    if (!pwm_is_ready_dt(&pwm_led0)) {
        printk("Error: PWM device %s is not ready\n", pwm_led0.dev->name);
        ztest_test_fail();
    }

    return NULL;
}

ZTEST_SUITE(embsys330_fp_tests, NULL, NULL, NULL, NULL, NULL);
ZTEST_SUITE(sensors_hts221, NULL, hts221_setup, NULL, NULL, NULL);
ZTEST_SUITE(sensors_vl5310x, NULL, vl5310x_setup, NULL, NULL, NULL);
ZTEST_SUITE(tim15_tests, NULL, tim15_setup, NULL, NULL, NULL);
ZTEST_SUITE(adc_tests, NULL, adc_setup, NULL, NULL, NULL);
ZTEST_SUITE(pwm_tests, NULL, pwm_setup, NULL, NULL, NULL);



/**
 * @brief Test Asserts
 *
 * This test verifies various assert macros provided by ztest.
 *
 */
ZTEST(embsys330_fp_tests, test_assert)
{
	zassert_true(1, "1 was false");
	zassert_false(0, "0 was true");
	zassert_is_null(NULL, "NULL was not NULL");
	zassert_not_null("foo", "\"foo\" was NULL");
	zassert_equal(1, 1, "1 was not equal to 1");
	zassert_equal_ptr(NULL, NULL, "NULL was not equal to NULL");
}
/**
 * @brief Test Counter
 *
 * ests the counter subsystem: reset and increment
 *
 */
ZTEST(embsys330_fp_tests, test_counter)
{
	counter_reset();
	zassert_equal(0, counter_value());

	counter_increment();
	zassert_equal(1, counter_value());

	counter_increment();
	zassert_equal(2, counter_value());

	counter_reset();
	zassert_equal(0, counter_value());
}
/**
 * @brief Test HTS221 Temperature Sensor
 *
 * Tests the HTS221 temperature Value
 *
 */
ZTEST(sensors_hts221, test_hts221_temperature)
{
    struct sensor_value temp;

    int ret = sensor_sample_fetch(hts221_dev);
    zassert_equal(ret, 0, "Failed to fetch sample from HTS221 sensor");

    ret = sensor_channel_get(hts221_dev, SENSOR_CHAN_AMBIENT_TEMP, &temp);
    zassert_equal(ret, 0, "Failed to get temperature data from HTS221 sensor");

    // Convert temperature to Celsius
    int32_t temp_celsius = temp.val1;

    // Add your temperature range assertions here
    zassert_within(temp_celsius, 20, 30, "Temperature out of expected range");
}
/**
 * @brief Test HTS221 Humidity Sensor
 *
 * Tests the HTS221 Humidity Value
 *
 */

ZTEST(sensors_hts221, test_hts221_humidity)
{
    struct sensor_value humidity;

    int ret = sensor_sample_fetch(hts221_dev);
    zassert_equal(ret, 0, "Failed to fetch sample from HTS221 sensor");

    ret = sensor_channel_get(hts221_dev, SENSOR_CHAN_HUMIDITY, &humidity);
    zassert_equal(ret, 0, "Failed to get humidity data from HTS221 sensor");

    // Convert humidity to percentage
    int32_t humidity_percent = humidity.val1;

    // Add your humidity range assertions here
    zassert_within(humidity_percent, 30, 70, "Humidity out of expected range");
}
/**
 * @brief Test vl53l0x distance Sensor
 *
 * Tests the vl53l0x distance Value
 *
 */
ZTEST(sensors_vl5310x, test_vl53l0x_distance)
{
    struct sensor_value distance;

    int ret = sensor_sample_fetch(vl53l0x_dev);
    zassert_equal(ret, 0, "Failed to fetch sample from vl53l0x sensor");

    ret = sensor_channel_get(vl53l0x_dev, SENSOR_CHAN_DISTANCE, &distance);
    zassert_equal(ret, 0, "Failed to get distance data from vl53l0x sensor");

	//Convert distance to mm
	int distance_mm = distance.val1 * 1000 + distance.val2 / 1000;

    //Print he distance for user confirmation
    printk("Measured Distance: %d\n", distance_mm);
    printk("Acceptable Distance: [20,50]\n");

    // Add your humidity range assertions here
    zassert_within(distance_mm, 20, 50, "Distance (mm) out of expected range");
}

/**
 * @brief Test Timer: Counting Up and Stopping
 * This fixture will initialize the timer before each test case using this timer.
 *
 */
ZTEST(tim15_tests, test_tim15_start_stop)
{
    timer_callback_count = 0;

    // Start the timer
    k_timer_start(&tim15_timer, K_MSEC(TIM15_PERIOD_MS), K_NO_WAIT);

    // Wait for the timer to expire
    k_msleep(TIM15_PERIOD_MS);

    // Check if the timer callback was invoked
    zassert_equal(timer_callback_count, 1, "Timer callback not invoked");

    // Stop the timer
    k_timer_stop(&tim15_timer);

    // Wait for an additional period
    k_msleep(TIM15_PERIOD_MS);

    // Check if the timer callback count remains the same
    zassert_equal(timer_callback_count, 1, "Timer callback invoked after stop");

    // Get the user data (should be NULL)
    void *user_data = k_timer_user_data_get(&tim15_timer);
    zassert_is_null(user_data, "User data is not NULL");
}
/**
 * @brief Test ADC: 
 * This fixture will initialize the ADC before each test case using this ADC.
 *
 */
ZTEST(adc_tests, test_adc_read_1_66v)
{
    int16_t sample_buffer;

    struct adc_sequence sequence = {
        .channels = BIT(ADC_CHANNEL),
        .buffer = &sample_buffer,
        .buffer_size = sizeof(sample_buffer),
        .resolution = ADC_RESOLUTION,
    };

    int ret = adc_read(adc_dev, &sequence);
    zassert_equal(ret, 0, "Failed to read ADC");

    int32_t adc_value = sample_buffer;

    // Calculate the expected ADC value range for a 1.66V signal
    int32_t expected_adc_value = (SIGNAL_VOLTAGE_MV * (1 << ADC_RESOLUTION)) / ADC_VREF_MV;
    int32_t adc_tolerance = (1 << ADC_RESOLUTION)*10 / 100;  // 10% tolerance

    // Print the actual ADC value and the expected range for debugging
    printk("ADC value: %d\n", adc_value);
    printk("Expected range: [%d, %d]\n", expected_adc_value - adc_tolerance, expected_adc_value + adc_tolerance);

    // Check if the ADC value is within the expected range
    zassert_true(adc_value >= expected_adc_value - adc_tolerance,
                 "ADC value is below the expected range");
    zassert_true(adc_value <= expected_adc_value + adc_tolerance,
                 "ADC value is above the expected range");
}

ZTEST(pwm_tests, test_pwm_100khz_50_duty)
{
    const struct pwm_dt_spec pwm_led0 = PWM_DT_SPEC_GET(DT_ALIAS(pwm_led0));
    int ret;

    // Set the PWM configuration for 100kHz frequency and 50% duty cycle
    uint32_t period_nsec = 10000; // 10μs (100kHz)
    uint32_t pulse_width_nsec = 5000; // 5μs (50% duty cycle)

    // Set the PWM configuration
    ret = pwm_set_dt(&pwm_led0, period_nsec, pulse_width_nsec);
    zassert_equal(ret, 0, "Failed to set PWM output");

    // Delay to allow the PWM signal to stabilize
    k_sleep(K_MSEC(100));

    // Verify the PWM signal using an oscilloscope or logic analyzer
    printk("PWM output on TIM2_CH1 (PA5) should have:\n");
    printk("Frequency: 100kHz, Duty Cycle: 50%%\n");

    // You can add additional assertions based on the expected signal characteristics
    // For example, you can measure the actual frequency and duty cycle using an oscilloscope
    // and compare them with the expected values within a tolerance range.
}