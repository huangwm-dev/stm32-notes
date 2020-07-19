/**
 * \brief   Example on input capture
 * This example will configure TIM2_CH3 (PB10/AF1) for input capture on rising edges
 * The timer clock is left as default (4MHz)
 */
#include "stm32l4xx.h"

#define TIMER_CLK   4000000UL   //!< 4MHz timer clock

volatile uint8_t isr_flag = 0;
volatile uint32_t current_count = 0;
volatile uint32_t prev_count = 0;
volatile uint32_t frequency = 0;

int main(void)
{
    SystemCoreClockUpdate();

    // enable the peripheral clocks
    RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN;   // enable the TIM2 clock
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;    // enable the GPIOB clock


    // Configuring GPIO
    // ++++ configure PB10 for TIM2_CH3 (AF1)
    GPIOB->MODER &= ~GPIO_MODER_MODE10;     // clear the bits
    GPIOB->MODER |= GPIO_MODER_MODE10_1;    // alternate function mode
    GPIOB->AFR[1] |= GPIO_AFRH_AFSEL10_0;   // AF1 on PB10

    // timer configurations:
    // configure CH3 as input:
    // 1. Select active input. Map TIM2_CCR3 to TI3 input, so write the CC3S bits to 01 in the TIM2_CCMR3 register
    TIM2->CCMR2 |= TIM_CCMR2_CC3S_0;     // 01 to CC3S -> Configures Channel 3 as input channel on TI3
    // 2. Select rising edge as active edge of transition by writing to CC3P/NP bits in CCER register
    // This corresponds to CC3P = 0, CC3NP = 0
    TIM2->CCER &= ~TIM_CCER_CC3P;
    TIM2->CCER &= ~TIM_CCER_CC3NP;
    // Note: we will ignore filtering and prescaling the timer for this example.
    
    // Enable interrupts on active edge
    // 1. Enable in DIER register: CC3IE
    TIM2->DIER |= (TIM_DIER_CC3IE);
    // note UIE is for overflow
    // 2. Enable in the NVIC controller via TIM2 global interrupt
    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_ClearPendingIRQ(TIM2_IRQn);

    // Enable the timer and compare capture
    TIM2->CCER |= TIM_CCER_CC3E;
    TIM2->CR1 |= TIM_CR1_CEN;
    
    for(;;)
    {
        while(isr_flag == 0);
        isr_flag = 0;
        uint32_t time_unit = current_count - prev_count;
        prev_count = current_count;
        frequency = TIMER_CLK / time_unit; // determine the signal frequency
    }
    return 0;
    

}

// ISR Handler for the TIM2 global interrupt
void TIM2_IRQHandler(void)
{
    // check if interrupt is  
    if(TIM2->SR & TIM_SR_CC3IF)
    {
        TIM2->SR &= ~ TIM_SR_CC3IF;
        // Channel 3 input interrupted
        current_count = TIM2->CCR3; // read the value to clear the interrupt
                                    // alternative, the flag can be cleared by writing 0 to the CC3IF bit                            
        isr_flag = 1;
    }
}
