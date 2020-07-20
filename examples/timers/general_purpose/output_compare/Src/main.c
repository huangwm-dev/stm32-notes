/*!
 * @brief   Output compare example
 *          This example uses output compare to generate a 1 kHz square wave form output
 *          on TIM2_CH3
 */

#include "stm32l4xx.h"

int main(void)
{
    // Enable timer clock and gpio clock
    RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN;
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;

    // Configure GPIO PB10 as alternate function -> AF1 for TIM2_CH3
    // ---- Setup as AF mode
    GPIOB->MODER &= ~GPIO_MODER_MODE10;
    GPIOB->MODER |= GPIO_MODER_MODE10_1;
    // ---- Setup as AF1
    GPIOB->AFR[1] &= ~GPIO_AFRH_AFSEL10;
    GPIOB->AFR[1] |= GPIO_AFRH_AFSEL10_0;

    // Configure TIM2 Channel 3 as output
    TIM2->CCMR2 &= ~TIM_CCMR2_CC3S;
    // Configure the behaviour as toggling the output on compare
    TIM2->CCMR2 |= (TIM_CCMR2_OC3M_0 | TIM_CCMR2_OC3M_1); // 0b0011 is toggle mode

    // Configure the CCR3 register so that compares happen on 1 kHz basis on a 4 MHz timer clock
    TIM2->PSC = 0;
    TIM2->ARR = 1999;
    TIM2->CCR3 = 1999;

    // Enable the compare and counter modules
    TIM2->CCER |= TIM_CCER_CC3E;
    TIM2->CR1 |= TIM_CR1_CEN;

    for(;;);
    return 0;
}
