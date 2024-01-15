/**
  * SPI1 Generated Driver File
  *
  * @file spi1.c
  *
  * @ingroup spi1
  *
  * @brief This file contains the driver code for the SPI1 module.
  *
  * @version SPI1 Driver Version 3.0.0
*/
/*
© [2024] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

#include "../spi1.h"
#include "../spi_polling_types.h"

const struct SPI_INTERFACE SPI1_Host = 
{
    .Initialize = SPI1_Initialize,
    .Deinitialize = SPI1_Deinitialize,
    .Open = SPI1_Open,
    .Close = SPI1_Close,
    .BufferExchange = SPI1_BufferExchange,
    .BufferWrite = SPI1_BufferWrite,
    .BufferRead = SPI1_BufferRead,	
    .ByteExchange = SPI1_ByteExchange,
    .ByteWrite = SPI1_ByteWrite,
    .ByteRead = SPI1_ByteRead,
    .IsTxReady = SPI1_IsTxReady,
    .IsRxReady = SPI1_IsRxReady,
    .RxCompleteCallbackRegister = NULL,
    .TxCompleteCallbackRegister = NULL
};

static const spi_configuration_t spi1_configuration[] =
{
    { 0x27, 0xc5 },
    { 0x21, 0xC4 }
};

void SPI1_Initialize(void)
{
    SPI1.CTRLA = 0x00;
    SPI1.CTRLB = 0x00;
    SPI1.INTFLAGS = 0x00;
    SPI1.INTCTRL = 0x00;
}

void SPI1_Deinitialize(void)
{
    SPI1.CTRLA = 0x00;
    SPI1.CTRLB = 0x00;
    SPI1.INTFLAGS = 0x00;
    SPI1.INTCTRL = 0x00;
}

bool SPI1_Open(uint8_t spiConfigIndex)
{
    bool returnValue = false;
    if (0 == (SPI1.CTRLA & SPI_ENABLE_bm)) 
    {
        //BUFEN enabled; BUFWR enabled; MODE 0; SSD enabled; 
        SPI1.CTRLB = spi1_configuration[spiConfigIndex].ctrlb;
        //DREIE disabled; IE disabled; RXCIE disabled; SSIE disabled; TXCIE disabled; 
        SPI1.INTCTRL = 0x0;
        //CLK2X disabled; DORD disabled; ENABLE enabled; MASTER enabled; PRESC DIV4; 
        SPI1.CTRLA = spi1_configuration[spiConfigIndex].ctrla;
        returnValue = true;
    } 
    else 
    {
        returnValue = false;
    }
    return returnValue;
}

void SPI1_Close(void)
{
    SPI1.CTRLA = 0x00;
    SPI1.CTRLB = 0x00;
    SPI1.INTFLAGS = 0x00;
    SPI1.INTCTRL = 0x00;
}

uint8_t SPI1_ByteExchange(uint8_t byteData)
{
    uint8_t readData = 0;
    SPI1.DATA = byteData;
    while (0 == (SPI1.INTFLAGS & SPI_RXCIF_bm))
    { 
        ; // Wait until ongoing SPI transfer is completed
    }
    readData = SPI1.DATA;
    return readData;
}

void SPI1_ByteWrite(uint8_t byteData)
{
    SPI1.DATA = byteData;
}

uint8_t SPI1_ByteRead(void)
{
    return SPI1.DATA;
}

void SPI1_BufferExchange(void *bufferData, size_t bufferSize)
{
    uint8_t *buffer = (uint8_t *)bufferData;
	size_t bufferInputSize = bufferSize;
    while(0U != bufferInputSize) 
    {
        SPI1.DATA = *buffer;
        while (0 == (SPI1.INTFLAGS & SPI_RXCIF_bm))
        {
            ; // Wait until ongoing SPI transfer is completed
        }
        *buffer = SPI1.DATA;
        buffer++;
        bufferInputSize--;
    }
}

void SPI1_BufferWrite(void *bufferData, size_t bufferSize)
{
    uint8_t *buffer = (uint8_t *)bufferData;
    uint8_t  readData = 0;
	size_t bufferInputSize = bufferSize;
    while(0U != bufferInputSize) 
    {
        SPI1.DATA = *buffer;
        while(0 == (SPI1.INTFLAGS & SPI_RXCIF_bm))
        {
            ; // Wait until ongoing SPI transfer is completed
        }        
        readData = SPI1.DATA;
        (void) readData;
        buffer++;
        bufferInputSize--;
    }
}

void SPI1_BufferRead(void *bufferData, size_t bufferSize)
{
    uint8_t *buffer = (uint8_t *)bufferData;
	size_t bufferInputSize = bufferSize;
    while(0U != bufferInputSize) 
    {
        SPI1.DATA = 0;
        while (0 == (SPI1.INTFLAGS & SPI_RXCIF_bm))
            {
                ; // Wait until ongoing SPI transfer is completed
            }
        *buffer = SPI1.DATA;
        buffer++;
        bufferInputSize--;
    }
}

bool SPI1_IsTxReady(void)
{
    bool returnValue = false;
    if(0 != (SPI1.CTRLA & SPI_ENABLE_bm))
    {
        if(0 != (SPI1.INTFLAGS & SPI_DREIF_bm))
        {
            returnValue = true;
        }
        else
        {
           returnValue = false; 
        }
    }
    else
    {
        returnValue = false;
    }
    return returnValue;
}

bool SPI1_IsRxReady(void)
{
    bool returnValue = false;
    if(0 != (SPI1.CTRLA & SPI_ENABLE_bm))
    {
        if(0 != (SPI1.INTFLAGS & SPI_RXCIF_bm))
        {
            returnValue = true;
        }
        else
        {
           returnValue = false; 
        }
    }
    else
    {
        returnValue = false;
    }
    return returnValue;
}