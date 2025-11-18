################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/emcog/rtos/common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.c 

OBJS += \
./common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.o 

C_DEPS += \
./common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.c common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-common-2f-ThirdParty-2f-FreeRtos-2f-portable-2f-GCC-2f-ARM_CM3

clean-common-2f-ThirdParty-2f-FreeRtos-2f-portable-2f-GCC-2f-ARM_CM3:
	-$(RM) ./common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.cyclo ./common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.d ./common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.o ./common/ThirdParty/FreeRtos/portable/GCC/ARM_CM3/port.su

.PHONY: clean-common-2f-ThirdParty-2f-FreeRtos-2f-portable-2f-GCC-2f-ARM_CM3

