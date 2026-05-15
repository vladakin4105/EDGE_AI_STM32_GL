/**
  ******************************************************************************
  * @file    app.cpp
  * @brief   Edge Impulse integration (Actualizat pentru T, H, TVOC + Anomalie)
  ******************************************************************************
  */

extern "C" {
  #include "main.h"
}

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>

#include "edge-impulse-sdk/classifier/ei_run_classifier.h"
#include "model-parameters/model_metadata.h"

/* =============================================================================
 * Functiile platform Edge Impulse
 * SDK-ul le declara ca C++ (fara extern "C") in ei_classifier_porting.h
 * deci le definim si noi fara extern "C" - altfel apare conflict de linkage
 * ============================================================================= */

extern "C" UART_HandleTypeDef huart3;

uint64_t ei_read_timer_ms() {
  return (uint64_t)HAL_GetTick();
}

uint64_t ei_read_timer_us() {
  return (uint64_t)HAL_GetTick() * 1000ULL;
}

void ei_printf(const char *format, ...) {
  char buf[256];
  va_list args;
  va_start(args, format);
  vsnprintf(buf, sizeof(buf), format, args);
  va_end(args);
  HAL_UART_Transmit(&huart3, (uint8_t*)buf, strlen(buf), HAL_MAX_DELAY);
}

void ei_printf_float(float f) {
  ei_printf("%.4f", f);
}

void *ei_malloc(size_t size)           { return malloc(size); }
void *ei_calloc(size_t n, size_t size) { return calloc(n, size); }
void  ei_free(void *ptr)               { free(ptr); }

void DebugLog(const char *s) { ei_printf("%s", s); }

EI_IMPULSE_ERROR ei_run_impulse_check_canceled() {
  return EI_IMPULSE_OK;
}

/* =============================================================================
 * run_ei_app() - apelata din main.c (C pur)
 * Doar aceasta functie are extern "C" ca sa fie vizibila din main.c
 * ============================================================================= */
extern "C" Model_data run_ei_app(float temperature, float humidity, float tvoc_val)
{
  float features[EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE];

  // Acum avem 3 intrari: Temperatura, Umiditate, TVOC
  if (EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE >= 3) {
    features[0] = temperature;
    features[1] = humidity;
    features[2] = tvoc_val;
  }

  signal_t signal;
  int err = numpy::signal_from_buffer(
      features,
      EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE,
      &signal
  );

  if (err != 0) {
    ei_printf("ERR: signal_from_buffer (%d)\r\n", err);
    return Model_data{(char*)"Eroare_Buf", 0.0f, 0.0f};
  }

  ei_impulse_result_t result = { 0 };
  EI_IMPULSE_ERROR res = run_classifier(&signal, &result, false);

  if (res != EI_IMPULSE_OK) {
    ei_printf("ERR: run_classifier (%d)\r\n", res);
    return Model_data{(char*)"Eroare_AI", 0.0f, 0.0f};
  }

  float max_val = 0.0f;
  const char *max_label = "?";
  for (size_t i = 0; i < EI_CLASSIFIER_LABEL_COUNT; i++) {
    if (result.classification[i].value > max_val) {
      max_val   = result.classification[i].value;
      max_label = result.classification[i].label;
    }
  }

  // Setam rezultatele in structura (inclusiv result.anomaly generat de K-means!)
  static Model_data results;
  results = Model_data{(char*)max_label, max_val * 100.0f, result.anomaly};
  return results;
}
