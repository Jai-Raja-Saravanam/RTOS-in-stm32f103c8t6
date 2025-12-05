################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/emcog/rtos/common/ThirdParty/FreeRtos/croutine.c \
D:/emcog/rtos/common/ThirdParty/FreeRtos/event_groups.c \
D:/emcog/rtos/common/ThirdParty/FreeRtos/list.c \
D:/emcog/rtos/common/ThirdParty/FreeRtos/queue.c \
D:/emcog/rtos/common/ThirdParty/FreeRtos/stream_buffer.c \
D:/emcog/rtos/common/ThirdParty/FreeRtos/tasks.c \
D:/emcog/rtos/common/ThirdParty/FreeRtos/timers.c 

OBJS += \
./common/ThirdParty/FreeRtos/croutine.o \
./common/ThirdParty/FreeRtos/event_groups.o \
./common/ThirdParty/FreeRtos/list.o \
./common/ThirdParty/FreeRtos/queue.o \
./common/ThirdParty/FreeRtos/stream_buffer.o \
./common/ThirdParty/FreeRtos/tasks.o \
./common/ThirdParty/FreeRtos/timers.o 

C_DEPS += \
./common/ThirdParty/FreeRtos/croutine.d \
./common/ThirdParty/FreeRtos/event_groups.d \
./common/ThirdParty/FreeRtos/list.d \
./common/ThirdParty/FreeRtos/queue.d \
./common/ThirdParty/FreeRtos/stream_buffer.d \
./common/ThirdParty/FreeRtos/tasks.d \
./common/ThirdParty/FreeRtos/timers.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThirdParty/FreeRtos/croutine.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/croutine.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/ThirdParty/FreeRtos/event_groups.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/event_groups.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/ThirdParty/FreeRtos/list.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/list.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/ThirdParty/FreeRtos/queue.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/queue.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/ThirdParty/FreeRtos/stream_buffer.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/stream_buffer.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/ThirdParty/FreeRtos/tasks.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/tasks.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/ThirdParty/FreeRtos/timers.o: D:/emcog/rtos/common/ThirdParty/FreeRtos/timers.c common/ThirdParty/FreeRtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/include" -I"D:/emcog/rtos/rtos_codes/RTOS-in-stm32f103c8t6/common/ThirdParty/FreeRTOS/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-common-2f-ThirdParty-2f-FreeRtos

clean-common-2f-ThirdParty-2f-FreeRtos:
	-$(RM) ./common/ThirdParty/FreeRtos/croutine.cyclo ./common/ThirdParty/FreeRtos/croutine.d ./common/ThirdParty/FreeRtos/croutine.o ./common/ThirdParty/FreeRtos/croutine.su ./common/ThirdParty/FreeRtos/event_groups.cyclo ./common/ThirdParty/FreeRtos/event_groups.d ./common/ThirdParty/FreeRtos/event_groups.o ./common/ThirdParty/FreeRtos/event_groups.su ./common/ThirdParty/FreeRtos/list.cyclo ./common/ThirdParty/FreeRtos/list.d ./common/ThirdParty/FreeRtos/list.o ./common/ThirdParty/FreeRtos/list.su ./common/ThirdParty/FreeRtos/queue.cyclo ./common/ThirdParty/FreeRtos/queue.d ./common/ThirdParty/FreeRtos/queue.o ./common/ThirdParty/FreeRtos/queue.su ./common/ThirdParty/FreeRtos/stream_buffer.cyclo ./common/ThirdParty/FreeRtos/stream_buffer.d ./common/ThirdParty/FreeRtos/stream_buffer.o ./common/ThirdParty/FreeRtos/stream_buffer.su ./common/ThirdParty/FreeRtos/tasks.cyclo ./common/ThirdParty/FreeRtos/tasks.d ./common/ThirdParty/FreeRtos/tasks.o ./common/ThirdParty/FreeRtos/tasks.su ./common/ThirdParty/FreeRtos/timers.cyclo ./common/ThirdParty/FreeRtos/timers.d ./common/ThirdParty/FreeRtos/timers.o ./common/ThirdParty/FreeRtos/timers.su

.PHONY: clean-common-2f-ThirdParty-2f-FreeRtos

