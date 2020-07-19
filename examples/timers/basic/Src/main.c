#include "stm32l4xx.h"

void tim6_init(void)
{
    // Enable the clock
    RCC->APB1ENR1 |= RCC_APB1ENR1_TIM6EN;
    TIM6->PSC = 127;
    TIM6->ARR = 31249;
}

void tim6_delay_s(uint16_t s)
{
    TIM6->CR1 |= TIM_CR1_CEN;

    uint16_t i = 0;
    do
    {
        while( (TIM6->SR & TIM_SR_UIF) == 0 );
        TIM6->SR &= ~TIM_SR_UIF;
        i++;
    } while(i < s);

    TIM6->CR1 &= ~TIM_CR1_CEN;
}

int main(void)
{

    tim6_init();
    tim6_delay_s(5);
    return 0;
}
