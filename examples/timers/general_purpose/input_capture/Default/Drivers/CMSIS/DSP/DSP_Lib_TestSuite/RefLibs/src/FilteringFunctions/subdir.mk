################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/biquad.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/conv.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/correlate.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_decimate.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_interpolate.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_lattice.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_sparse.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/iir_lattice.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/lms.c 

OBJS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/biquad.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/conv.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/correlate.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_decimate.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_interpolate.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_lattice.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_sparse.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/iir_lattice.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/lms.o 

C_DEPS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/biquad.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/conv.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/correlate.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_decimate.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_interpolate.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_lattice.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/fir_sparse.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/iir_lattice.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/lms.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/%.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/FilteringFunctions/%.c
	arm-atollic-eabi-gcc -c "$<" -std=gnu11 -O0 -g -fstack-usage -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -specs=nano.specs -o "$@"

