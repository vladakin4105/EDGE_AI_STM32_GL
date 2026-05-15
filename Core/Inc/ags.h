/*
 * ags.h
 *
 *  Created on: Apr 12, 2026
 *      Author: PGV
 */

#ifndef INC_AGS_H_
#define INC_AGS_H_

#include "stm32f4xx_hal.h"
#include <stdint.h>
// Adresa I2C => 0x1A
// STM32 HAL cere adresa shiftata la stanga cu 1 bit -> 0x34
// conform datasheet pagina 2/9  write 0x34, read 0x35
#define AGS10_I2C_ADDR (0x1A << 1)

/* Functie pentru citirea TVOC (Total Volatile Organic Compounds)
   Returneaza 1 daca citirea a avut succes, 0 daca a esuat. */
uint8_t AGS10_Read_TVOC(I2C_HandleTypeDef *hi2c, uint32_t *tvoc);

#endif /* INC_AGS_H_ */
