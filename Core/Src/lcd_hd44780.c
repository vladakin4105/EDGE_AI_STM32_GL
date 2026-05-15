
#include "lcd_hd44780.h"

// Folosim functia ta de delay din main.c
extern void delay_us(uint16_t us);

static void lcd_pulse_enable(void) {
    HAL_GPIO_WritePin(LCD_PORT, LCD_EN, GPIO_PIN_SET);
    delay_us(2); // delay foarte scurt
    HAL_GPIO_WritePin(LCD_PORT, LCD_EN, GPIO_PIN_RESET);
    delay_us(50);
}

static void lcd_write_nibble(uint8_t nibble) {
    HAL_GPIO_WritePin(LCD_PORT, LCD_D4, (nibble & 0x01) ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LCD_PORT, LCD_D5, (nibble & 0x02) ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LCD_PORT, LCD_D6, (nibble & 0x04) ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LCD_PORT, LCD_D7, (nibble & 0x08) ? GPIO_PIN_SET : GPIO_PIN_RESET);
    lcd_pulse_enable();
}

static void lcd_send(uint8_t value, uint8_t mode) {
    HAL_GPIO_WritePin(LCD_PORT, LCD_RS, mode ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LCD_PORT, LCD_RW, GPIO_PIN_RESET); // Mereu Write
    lcd_write_nibble(value >> 4);   // Trimite partea High
    lcd_write_nibble(value & 0x0F); // Trimite partea Low
}

void lcd_init(void) {
    HAL_Delay(50); // Asteptam sa porneasca ecranul
    HAL_GPIO_WritePin(LCD_PORT, LCD_RS, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LCD_PORT, LCD_RW, GPIO_PIN_RESET);

    // Secventa de reset 4-bit
    lcd_write_nibble(0x03); HAL_Delay(5);
    lcd_write_nibble(0x03); delay_us(150);
    lcd_write_nibble(0x03); delay_us(150);
    lcd_write_nibble(0x02); delay_us(150); // Setam mod 4-bit

    lcd_send(0x28, 0); // 4-bit, 2 linii, 5x8
    lcd_send(0x0C, 0); // Display ON, Cursor OFF
    lcd_clear();
    lcd_send(0x06, 0); // Auto-increment cursor
}

void lcd_clear(void) {
    lcd_send(0x01, 0);
    HAL_Delay(2);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
    uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
    lcd_send(0x80 | (col + row_offsets[row]), 0);
}

void lcd_print(char *str) {
    while (*str) {
        lcd_send((uint8_t)(*str), 1);
        str++;
    }
}

void lcd_backlight(uint8_t state) {
    HAL_GPIO_WritePin(LCD_PORT, LCD_BL, state ? GPIO_PIN_SET : GPIO_PIN_RESET);
}
