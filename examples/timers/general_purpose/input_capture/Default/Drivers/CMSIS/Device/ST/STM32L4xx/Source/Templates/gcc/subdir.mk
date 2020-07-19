################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l412xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l422xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l431xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l432xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l433xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l442xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l443xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l451xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l452xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l462xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l471xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l475xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l476xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l485xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l486xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l496xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4a6xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4p5xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4q5xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4r5xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4r7xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4r9xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4s5xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4s7xx.s \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4s9xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l412xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l422xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l431xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l432xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l433xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l442xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l443xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l451xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l452xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l462xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l471xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l475xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l476xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l485xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l486xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l496xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4a6xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4p5xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4q5xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4r5xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4r7xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4r9xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4s5xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4s7xx.o \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/startup_stm32l4s9xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/%.o: ../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc/%.s
	arm-atollic-eabi-gcc -c -g -Wa,--warn -x assembler-with-cpp -specs=nano.specs -o "$@" "$<"

