#include <stdint.h>

#include "hardware/timer.h"

#ifndef __AVR_ATmega1284P__

void config_timer(uint8_t timer, uint8_t prescaler)
{

}

uint16_t get_tcnt(uint8_t timer)
{
    return 0;
}

void set_tcnt(uint8_t timer, uint16_t value)
{

}

void set_pwm(uint8_t clkdiv)
{

}

#endif