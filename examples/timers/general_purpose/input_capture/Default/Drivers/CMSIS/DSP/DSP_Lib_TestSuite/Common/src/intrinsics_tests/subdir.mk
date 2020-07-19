################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/intrinsics_tests.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/intrinsics_tests_common_data.c 

OBJS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/intrinsics_tests.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/intrinsics_tests_common_data.o 

C_DEPS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/intrinsics_tests.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/intrinsics_tests_common_data.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/%.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/intrinsics_tests/%.c
	arm-atollic-eabi-gcc -c "$<" -std=gnu11 -O0 -g -fstack-usage -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -specs=nano.specs -o "$@"

