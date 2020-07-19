################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.cpp 

OBJS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.o 

CPP_DEPS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/%.o: ../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/%.cpp
	arm-atollic-eabi-g++ -c "$<" -std=gnu++98 -O0 -g -fstack-usage -Wall -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -specs=nano.specs -o "$@"

