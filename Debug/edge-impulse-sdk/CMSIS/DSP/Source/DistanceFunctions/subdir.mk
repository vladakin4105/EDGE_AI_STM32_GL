################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c 

C_DEPS += \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d 

OBJS += \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o 


# Each subdirectory must supply rules for building sources it contributes
edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/%.o edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/%.su edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/%.cyclo: ../edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/%.c edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I.. -I../edge-impulse-sdk -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../edge-impulse-sdk/tensorflow/lite -I../edge-impulse-sdk/third_party/flatbuffers/include -I../edge-impulse-sdk/third_party/gemmlowp -I../edge-impulse-sdk/CMSIS/DSP/Include -I../model-parameters -I../tflite-model -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions

clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions:
	-$(RM) ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.su
	-$(RM) ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.su ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o ./edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.su

.PHONY: clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions

