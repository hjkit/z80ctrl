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
 * @file bus.c Low-level control of the Z80 bus
 */

#include <avr/cpufunc.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <util/delay.h>

#include "util/pgmspace.h"
#include "util/string.h"

#include "hardware/bus.h"
#include "hardware/mcp23s17.h"
#include "hardware/timer.h"

/**
 * Run the clock for a specified number of cycles
 */
void clk_cycle(uint8_t cycles)
{
    uint8_t i;
    for (i = 0; i < cycles; i++) {
        CLK_HI;
        CLK_LO;
    }
}

uint8_t clkdiv = 2;

/**
 * Set clock divider
 */
void set_clkdiv(uint8_t div)
{
    clkdiv = div;
}

/**
 * Get clock divider
 */
uint8_t get_clkdiv(void)
{
    return clkdiv;
}

/**
 * Run the Z80's clock
 */
void clk_run(void)
{
    set_pwm(clkdiv);
}

/**
 * Stop the Z80's clock
 */
void clk_stop()
{
    set_pwm(0);
}

/**
 *  Request control of the bus from the Z80
 */
uint8_t bus_request(void)
{
    uint8_t i = 255;

    BUSRQ_LO; // request bus
    // Clock the Z80 until it releases control of the bus
    while (GET_BUSACK) {
        CLK_TOGGLE;
        if (i-- == 0) {
            BUSRQ_HI;
            return 0;
        }
    }
    IOMR_HI;
    RDWR_HI;
    IOMR_OUTPUT;
    RDWR_OUTPUT;
    ADDR_OUTPUT;
    DATA_INPUT;
    return 1;
}

/**
 *  Return control of the bus to the Z80
 */
uint8_t bus_release(void)
{
    uint8_t i = 255;

    IOMR_INPUT;
    RDWR_INPUT;
    ADDR_INPUT;
    DATA_INPUT;
    SET_DATA(0); // Disable pullups on data and address lines
    SET_ADDRLO(0);
    BUSRQ_HI;

    // Clock the Z80 until it takes back control of the bus
    while (!GET_BUSACK) {
        CLK_TOGGLE;
        if (i-- == 0) {
            return 0;
        }
    }
    return 1;
}

/**
 * Retrieve the current bus status
 */
bus_stat bus_status(void)
{
    bus_stat status;
    status.flags = GET_CTRL;
    status.xflags = GET_CTRLX;
    status.data = GET_DATA;
    status.addr = GET_ADDR;
    return status;
}

/**
 * Retrieve only the bus signals that can be retrieved quickly
 */
bus_stat bus_status_fast(void)
{
    bus_stat status;
    status.flags = GET_CTRL;
    status.xflags = 0xFF;
    status.data = GET_DATA;
    status.addr = GET_ADDRLO;
    return status;
}

/**
 * Log the bus status
 */
void bus_log(bus_stat status)
{
    printf_P(
        PSTR("\t%04x %02x %c    %s %s    %s %s %s %s %s %s %s %s\n"),
        status.addr,
        status.data,
        0x20 <= status.data && status.data <= 0x7e ? status.data : ' ',
        !MREQ_STATUS ? "mreq" : !IORQ_STATUS ? "iorq "
                                             : "    ",
        !RD_STATUS ? "rd  " : !WR_STATUS ? "wr  "
            : !RFSH_STATUS               ? "rfsh"
                                         : "    ",
        !M1_STATUS ? "m1" : "  ",
        !BUSRQ_STATUS ? "busrq" : "     ",
        !BUSACK_STATUS ? "busack" : "      ",
        !WAIT_STATUS ? "wait" : "    ",
        !HALT_STATUS ? "halt" : "    ",
        !INT_STATUS ? "int" : "   ",
        !NMI_STATUS ? "nmi" : "   ",
        !RESET_STATUS ? "reset" : "     ");
}

/**
 * Initialize the bus
 */
void bus_init(void)
{
    // Initialize I/O expander
    iox_init();

    // Initialize control signals
    CTRL_INIT;
    CTRLX_INIT;

    // Reset the processor
    BUSRQ_HI;
    RESET_OUTPUT;
    clk_cycle(3);
    RESET_INPUT;

    // Start out in control of the bus
    if (!bus_request())
        printf_P(PSTR("bus request timed out"));
}