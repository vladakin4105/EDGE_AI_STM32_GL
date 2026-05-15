#ifndef LCD_HD44780_H
#define LCD_HD44780_H

#include "stm32f4xx_hal.h"

#define LCD_PORT GPIOE
#define LCD_RS   GPIO_PIN_7
#define LCD_RW   GPIO_PIN_10
#define LCD_EN   GPIO_PIN_11
#define LCD_D4   GPIO_PIN_12
#define LCD_D5   GPIO_PIN_13
#define LCD_D6   GPIO_PIN_14
#define LCD_D7   GPIO_PIN_15
#define LCD_BL   GPIO_PIN_9

void lcd_init(void);
void lcd_clear(void);
void lcd_set_cursor(uint8_t row, uint8_t col);
void lcd_print(char *str);
void lcd_backlight(uint8_t state);

#endif


