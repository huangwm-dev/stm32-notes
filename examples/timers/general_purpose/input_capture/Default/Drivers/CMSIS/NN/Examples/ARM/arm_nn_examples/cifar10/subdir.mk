################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.cpp 

OBJS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.o 

CPP_DEPS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/%.o: ../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/%.cpp
	arm-atollic-eabi-g++ -c "$<" -std=gnu++98 -O0 -g -fstack-usage -Wall -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -specs=nano.specs -o "$@"

