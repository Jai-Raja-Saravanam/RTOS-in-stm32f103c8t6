#include "main.h"
#include "keypad.h"

static uint8_t keys[4][4]={{'1','2','3','A'},
				 {'4','5','6','B'},
				 {'7','8','9','C'},
				 {'*','0','#','D'} };

int button_pressed(void){
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 , 0);
	if( (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_4)==0) || (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_5)==0) ||
	    (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6)==0) || (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_7)==0) )
	{
		HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 , 1);
		return 1;
	}
	return 0 ;
}

uint8_t whichkey(void){
	  int i=0,j=0;
	  for(i=0;i<4;i++)
	  {//you can use another for loop
		  HAL_GPIO_WritePin(GPIOA, 0x0F, 1);
		  HAL_GPIO_WritePin(GPIOA, (0b1<<i), 0);
		  if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_4)==0){
			  j=0;
			  while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_4)==0);
			  break ;
		  }
		  else if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_5)==0){
			  j=1;
			  while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_5)==0);
			  break ;
		  }
		  else if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6)==0){
			  j=2;
			  while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6)==0);
			  break ;
		  }
		  else if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_7)==0){
			  j=3;
			  while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_7)==0);
			  break ;
		  }
	  }
	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 , 0);
	  return keys[i][j];
}
