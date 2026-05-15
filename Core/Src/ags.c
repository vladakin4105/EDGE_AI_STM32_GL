/*
 * ags.c
 *
 *  Created on: Apr 12, 2026
 *      Author: vldpo
 */
#include "ags.h"


uint8_t AGS10_Read_TVOC(I2C_HandleTypeDef *hi2c, uint32_t *tvoc) {
    uint8_t reg = 0x00;
    uint8_t data[5];

    if (HAL_I2C_Master_Transmit(hi2c, AGS10_I2C_ADDR, &reg, 1, 100) != HAL_OK) {
        return 0;
    }

    HAL_Delay(30);

    if (HAL_I2C_Master_Receive(hi2c, AGS10_I2C_ADDR, data, 5, 100) != HAL_OK) {
        return 0;
    }

    if ((data[0] & 0x01) != 0) {
        return 0;
    }

    *tvoc = (data[1] << 16) | (data[2] << 8) | data[3];

    // Byte 4 este CRC (Cyclic Redundancy Check)

    return 1;
}
