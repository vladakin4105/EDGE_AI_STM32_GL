################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp \
../edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp 

OBJS += \
./edge-impulse-sdk/dsp/kissfft/kiss_fft.o \
./edge-impulse-sdk/dsp/kissfft/kiss_fftr.o 

CPP_DEPS += \
./edge-impulse-sdk/dsp/kissfft/kiss_fft.d \
./edge-impulse-sdk/dsp/kissfft/kiss_fftr.d 


# Each subdirectory must supply rules for building sources it contributes
edge-impulse-sdk/dsp/kissfft/%.o edge-impulse-sdk/dsp/kissfft/%.su edge-impulse-sdk/dsp/kissfft/%.cyclo: ../edge-impulse-sdk/dsp/kissfft/%.cpp edge-impulse-sdk/dsp/kissfft/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I.. -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/Inc -I../edge-impulse-sdk/tensorflow/lite -I../edge-impulse-sdk/third_party/flatbuffers/include -I../edge-impulse-sdk/third_party/gemmlowp -I../edge-impulse-sdk/CMSIS/DSP/Include -I../model-parameters -I../tflite-model -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-edge-2d-impulse-2d-sdk-2f-dsp-2f-kissfft

clean-edge-2d-impulse-2d-sdk-2f-dsp-2f-kissfft:
	-$(RM) ./edge-impulse-sdk/dsp/kissfft/kiss_fft.cyclo ./edge-impulse-sdk/dsp/kissfft/kiss_fft.d ./edge-impulse-sdk/dsp/kissfft/kiss_fft.o ./edge-impulse-sdk/dsp/kissfft/kiss_fft.su ./edge-impulse-sdk/dsp/kissfft/kiss_fftr.cyclo ./edge-impulse-sdk/dsp/kissfft/kiss_fftr.d ./edge-impulse-sdk/dsp/kissfft/kiss_fftr.o ./edge-impulse-sdk/dsp/kissfft/kiss_fftr.su

.PHONY: clean-edge-2d-impulse-2d-sdk-2f-dsp-2f-kissfft

