#ifndef LCD_H
#define LCD_H

#include "main.h"

#define DEVICE_ADDR (0x27<<1)

//extern uint8_t command1[5];
//extern uint8_t command[6];

extern I2C_HandleTypeDef hi2c1;

void lcd_init(void);
void lcd_write_command8bitmode(uint8_t command);
void lcd_write_command4bitmode(uint8_t command);
void lcd_write_data4bitmode(uint8_t data);
void delay(int time); //dummy delay


#endif
