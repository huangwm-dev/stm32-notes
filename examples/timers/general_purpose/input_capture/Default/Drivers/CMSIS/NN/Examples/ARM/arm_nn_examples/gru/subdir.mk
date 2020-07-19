################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/arm_nnexamples_gru.cpp 

OBJS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/arm_nnexamples_gru.o 

CPP_DEPS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/arm_nnexamples_gru.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/%.o: ../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/%.cpp
	arm-atollic-eabi-g++ -c "$<" -std=gnu++98 -O0 -g -fstack-usage -Wall -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -specs=nano.specs -o "$@"

