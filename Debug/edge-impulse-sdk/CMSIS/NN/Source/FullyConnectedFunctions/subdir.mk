################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c \
../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c 

C_DEPS += \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.d \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d 

OBJS += \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.o \
./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o 


# Each subdirectory must supply rules for building sources it contributes
edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/%.o edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/%.su edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/%.cyclo: ../edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/%.c edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I.. -I../edge-impulse-sdk -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../edge-impulse-sdk/tensorflow/lite -I../edge-impulse-sdk/third_party/flatbuffers/include -I../edge-impulse-sdk/third_party/gemmlowp -I../edge-impulse-sdk/CMSIS/DSP/Include -I../model-parameters -I../tflite-model -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-NN-2f-Source-2f-FullyConnectedFunctions

clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-NN-2f-Source-2f-FullyConnectedFunctions:
	-$(RM) ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.su ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.cyclo ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o ./edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.su

.PHONY: clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-NN-2f-Source-2f-FullyConnectedFunctions

