/*!
 * @brief I2C Example
 * PB8 -> I2C1-SCL
 * PB9 -> I2C1-SDA
 *
 * Operating at standard mode with peripheral clock of 4 MHz
 */
#include "stm32l4xx.h"
#include <stdint.h>

uint8_t address = (0x55 << 1); 

// Reads the temperature of the fuel gauge
uint16_t read_temp(void)
{
    // Work flow is:
    // 1. Generate a START write to the device to tell it to set it's pointer to the temperature register (0x02)
    // 2. Generate a REPEATED START read to read back the value
    // temperature address is 0x02 0x03


    volatile uint32_t temp_reg = 0;
    uint8_t temperature_address = 0x02;
    temp_reg |= address;         // slave address
    temp_reg &= ~I2C_CR2_RD_WRN; // use write operation to set device pointer to temp. register
    temp_reg |= (sizeof(temperature_address) << I2C_CR2_NBYTES_Pos); // Program the number of bytes that will be written in this transaction
    temp_reg &= ~I2C_CR2_RELOAD;    // do not reload NBYTES
    temp_reg &= ~I2C_CR2_AUTOEND;   // software end more
    I2C1->CR2 = temp_reg;

    // transfer the temperature address byte:
    I2C1->TXDR = temperature_address;
    I2C1->CR2 |= I2C_CR2_START;

    // wait for transmit complete
    while((I2C1->ISR & I2C_ISR_TC) == 0);
    
    // at this point we got an ACK from the device, we can send a repeated start with read condition
    // we are also expecting to read 2 bytes of data
    I2C1->CR2 |= I2C_CR2_START | I2C_CR2_RD_WRN | (2U << I2C_CR2_NBYTES_Pos) | I2C_CR2_AUTOEND;
    
    // wait for RXNE
    uint8_t bytes_remaining = 2;
    uint8_t data[2];
    uint8_t i = 0;
    do
    {
        while((I2C1->ISR & I2C_ISR_RXNE) == 0);
        bytes_remaining--;
        volatile uint8_t data_rxd = I2C1->RXDR;
        data[i++] = data_rxd;
    } while(bytes_remaining > 0);

    return (data[1] << 8) | data[0];
}

int main(void)
{
    // Enable I2C1 and GPIOB clocks
    RCC->APB1ENR1 |= RCC_APB1ENR1_I2C1EN;
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;

    // configure PB8/PB9 for I2C1 (AF4)
    GPIOB->MODER &= ~(GPIO_MODER_MODE8_Msk | GPIO_MODER_MODE9_Msk);
    GPIOB->MODER |= (2U << GPIO_MODER_MODE8_Pos) | (2U << GPIO_MODER_MODE9_Pos);
    GPIOB->AFR[1] |= (4U << GPIO_AFRH_AFSEL8_Pos) | (4U << GPIO_AFRH_AFSEL9_Pos);

    // ensure OB8 and PB9 is open drain, we have external pull-up resistors 
    GPIOB->PUPDR &= ~ (GPIO_PUPDR_PUPD8 | GPIO_PUPDR_PUPD9);
    GPIOB->OTYPER |= (GPIO_OTYPER_ODR_8 | GPIO_OTYPER_ODR_9);

    // configure timing for I2C
    I2C1->TIMINGR = 0x00000E14;     // obtained from STM Timing Tool
    // enable the peripheral
    I2C1->CR1 |= I2C_CR1_PE;

    volatile uint16_t temperature = read_temp();
    temperature = temperature*0.1 - 273.15;

    for(;;);
    

    return 0;
}
