################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup_stm32l496xx.s 

OBJS += \
./startup_stm32l496xx.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.s
	arm-atollic-eabi-gcc -c -g -Wa,--warn -x assembler-with-cpp -specs=nano.specs -o "$@" "$<"

