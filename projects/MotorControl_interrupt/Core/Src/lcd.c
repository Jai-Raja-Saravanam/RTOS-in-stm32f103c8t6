#include "lcd.h"

static uint8_t command1[]={0x30,0x30,0x30,0x20,'\0'};
static uint8_t command[]={0x28,0x0E,0x01,0x06,0x80,'\0'};


void lcd_init(void){
	uint8_t i=0;
	//while(command[i]!='\0'){
	//	lcd_write_command(command[i]);
	//	i++;
	//}
	for(i=0;i<4;i++){
		lcd_write_command8bitmode(command1[i]);
		delay(10);//HAL_Delay(5);
	}
	for(i=0;i<6;i++){
		lcd_write_command4bitmode(command[i]);
		delay(10);//HAL_Delay(5);
	}
}

void lcd_write_command8bitmode(uint8_t command)
{
	uint8_t upper_nibble = command&0xF0;
	uint8_t backlight = 0x08;
	uint8_t en = 0x04;
	uint8_t rw = 0x02;
	uint8_t rs = 0x01;
	uint8_t packet = (upper_nibble | backlight | en) & ~(rw | rs);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet, 1, 10);
	delay(10);//HAL_Delay(1);
	packet = (upper_nibble | backlight) & ~(en | rw | rs);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet, 1, 10);
	delay(10);//HAL_Delay(5);
}


void lcd_write_command4bitmode(uint8_t command)
{
	uint8_t upper_nibble = command&0xF0;
	uint8_t lower_nibble = (command<<4)&0xF0;
	uint8_t backlight = 0x08;
	uint8_t en = 0x04;
	uint8_t rw = 0x02;
	uint8_t rs = 0x01;

	//uint8_t packet1 = upper_nibble | backlight ;
	//packet1 = packet1 | en ;
	//packet1 = packet1 &(~(rw|rs))  ;
	uint8_t packet1 = (upper_nibble | backlight | en ) & ~(rw | rs);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet1, 1, 10);
	delay(10);//HAL_Delay(2);
	packet1 = (upper_nibble | backlight ) & ~(en | rw | rs);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet1, 1, 10);
	delay(10);//HAL_Delay(2);
	uint8_t packet2 = (lower_nibble | backlight | en ) & ~(rw | rs);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet2, 1, 10);
	delay(10);//HAL_Delay(2);
	packet2 = (lower_nibble | backlight ) & ~(en | rw | rs);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet2, 1, 10);
	delay(10);//HAL_Delay(2);
}

void lcd_write_data4bitmode(uint8_t data){

	uint8_t upper_nibble = data&0xF0;
	uint8_t lower_nibble = (data<<4)&0xF0;
	uint8_t backlight = 0x08;
	uint8_t en = 0x04;
	uint8_t rw = 0x02;
	uint8_t rs = 0x01;
	//uint8_t packet1 = upper_nibble | backlight | rs ;
	//packet1 = packet1 | en ;
	//packet1 = packet1 &(~rw)  ;
	uint8_t packet1 = (upper_nibble | backlight | en | rs) & ~(rw);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet1, 1, 10);
	delay(10);//HAL_Delay(2);
	//packet1 = packet1 &(~en)  ;
	packet1 = (upper_nibble | backlight | rs) & ~(en | rw);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet1, 1, 10);
	delay(10);//HAL_Delay(2);

	uint8_t packet2 = (lower_nibble | backlight | en | rs) & ~(rw);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet2, 1, 10);
	delay(10);//HAL_Delay(2);
	packet2 = (lower_nibble | backlight | rs) & ~(en | rw);
	HAL_I2C_Master_Transmit(&hi2c1, DEVICE_ADDR, &packet2, 1, 10);
	delay(10);
	//HAL_Delay(2);

}


void delay(int time){
	int i,j;
	for(i=0;i<time;i++){
		for(j=0;j<1000;j++);
	}
}
