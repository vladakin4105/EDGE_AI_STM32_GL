################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c \
../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c 

C_DEPS += \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d 

OBJS += \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o \
./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o 


# Each subdirectory must supply rules for building sources it contributes
edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/%.o edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/%.su edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/%.cyclo: ../edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/%.c edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I.. -I../edge-impulse-sdk -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../edge-impulse-sdk/tensorflow/lite -I../edge-impulse-sdk/third_party/flatbuffers/include -I../edge-impulse-sdk/third_party/gemmlowp -I../edge-impulse-sdk/CMSIS/DSP/Include -I../model-parameters -I../tflite-model -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-MatrixFunctions

clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-MatrixFunctions:
	-$(RM) ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o
	-$(RM) ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.su
	-$(RM) ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.su
	-$(RM) ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.su ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.cyclo ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o ./edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.su

.PHONY: clean-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-MatrixFunctions

