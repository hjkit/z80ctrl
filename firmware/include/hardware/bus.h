/* z80ctrl (https://github.com/jblang/z80ctrl)
 * Copyright 2018-2023 J.B. Langston
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

/**
 * @file bus.h Low-level control of the Z80 bus
 */

#ifndef HARDWARE_BUS_H
#define HARDWARE_BUS_H

#include <stdint.h>
#include "gpio.h"

/**
 * Complete bus status all in one place
 */
typedef struct {
    uint8_t flags;
    uint8_t xflags;
    uint16_t addr;
    uint8_t data;
} bus_stat;

extern uint32_t base_addr;

void set_clkdiv(uint8_t div);
uint8_t get_clkdiv(void);
void clk_cycle(uint8_t cycles);
void clk_run(void);
void clk_stop(void);

uint8_t bus_request(void);
uint8_t bus_release(void);
void bus_init(void);

bus_stat bus_status(void);
bus_stat bus_status_fast(void);
void bus_log(bus_stat status);
#endif