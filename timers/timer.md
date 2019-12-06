# Timer

## Basic Timers
Register | Purpose | Range
--- | --- | ---
Counter (CNT) | The current counter value | `0 - 0xFFFF / 0xFFFF FFFF`
Auto-Reload Register (ARR) | The value for the timer to count up to | `0xFFFF / 0xFFFF FFFF `
Prescaler (PSC) | Clock frequency divider | `1 - 0xFFFF (0 would disable counter)` 

## Types of Timers
- Basic
- General Purpose
- Advanced
- High Resolution
- Low Power

## Basic Timer
![Basic Timer Block Diagram](resources/basic_timer_block_diagram.png)