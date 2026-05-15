/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "lwip.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>
#include "lcd_hd44780.h"
#include "ags.h"
#include "lwip/tcp.h"
#include "secrets.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
I2C_HandleTypeDef hi2c1;
TIM_HandleTypeDef htim6;
UART_HandleTypeDef huart3;

/* USER CODE BEGIN PV */
uint8_t Rh_byte1, Rh_byte2, Temp_byte1, Temp_byte2;
uint16_t SUM;
uint8_t Presence = 0;

const char* thingspeak_api_key = THINGSPEAK_API_KEY;
char http_request[256];
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM6_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_I2C1_Init(void);

/* USER CODE BEGIN PFP */
/* Declarata in app.cpp, apelata din main.c */
extern Model_data run_ei_app(float temperature, float humidity, float tvoc_val);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

#ifdef __GNUC__
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

PUTCHAR_PROTOTYPE
{
  HAL_UART_Transmit(&huart3, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
  return ch;
}

void delay_us(uint16_t us)
{
	__HAL_TIM_SET_COUNTER(&htim6, 0);
	  uint32_t start_tick = HAL_GetTick();
	  while (__HAL_TIM_GET_COUNTER(&htim6) < us) {
	      if ((HAL_GetTick() - start_tick) > 5) break;
	  }
}

/* =========================================================
   FUNCTII ETHERNET - TCP CLIENT PENTRU THINGSPEAK
   ========================================================= */
static err_t http_recv_cb(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err) {
    if (p == NULL) {
        tcp_close(tpcb);
        HAL_UART_Transmit(&huart3, (uint8_t*)"[TCP] Conexiune inchisa de server (Succes).\r\n", 45, 100);
        return ERR_OK;
    }

    tcp_recved(tpcb, p->tot_len);

    HAL_UART_Transmit(&huart3, (uint8_t*)"[TCP] Raspuns primit de la ThingSpeak:\r\n", 40, 100);
    HAL_UART_Transmit(&huart3, (uint8_t*)p->payload, p->len, 500);
    HAL_UART_Transmit(&huart3, (uint8_t*)"\r\n", 2, 100);

    pbuf_free(p);

    return ERR_OK;
}

static void http_err_cb(void *arg, err_t err) {
    extern UART_HandleTypeDef huart3;
    char err_msg[64];
    sprintf(err_msg, "[TCP] Eroare conexiune ThingSpeak! Cod eroare: %d\r\n", err);
    HAL_UART_Transmit(&huart3, (uint8_t*)err_msg, strlen(err_msg), 100);
}

static err_t http_connected_cb(void *arg, struct tcp_pcb *tpcb, err_t err) {
    if (err != ERR_OK) {
        return err;
    }

    HAL_UART_Transmit(&huart3, (uint8_t*)"[TCP] Conectat la server. Trimitem datele...\r\n", 46, 100);

    extern char http_request[];
    tcp_write(tpcb, http_request, strlen(http_request), TCP_WRITE_FLAG_COPY);
    tcp_output(tpcb);

    tcp_recv(tpcb, http_recv_cb);
    return ERR_OK;
}

void send_to_thingspeak(float t, float h, uint32_t tvoc, float anomaly) {
    struct tcp_pcb *tpcb;
    ip4_addr_t server_ip;

    // IP-ul fix pentru api.thingspeak.com
    IP4_ADDR(&server_ip, 184, 106, 153, 149);

    tpcb = tcp_new();
    if (tpcb == NULL) {
        extern UART_HandleTypeDef huart3;
        HAL_UART_Transmit(&huart3, (uint8_t*)"[TCP] Esec alocare memorie LwIP!\r\n", 34, 100);
        return;
    }

    // Format HTTP 1.1 Corect
    // Trebuie specificat Host si acceptat raspunsul
    sprintf(http_request,
            "GET /update?api_key=%s&field1=%.1f&field2=%.1f&field3=%lu&field4=%.3f HTTP/1.1\r\n"
            "Host: api.thingspeak.com\r\n"
            "Connection: close\r\n"
            "Accept: */*\r\n"
            "\r\n",
            thingspeak_api_key, t, h, tvoc, anomaly);

    tcp_err(tpcb, http_err_cb);
    tcp_connect(tpcb, &server_ip, 80, http_connected_cb);
}


/* =========================================================
   FUNCTII DHT11
   ========================================================= */
void Set_Pin_Output(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  GPIO_InitStruct.Pin   = GPIO_Pin;
  GPIO_InitStruct.Mode  = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(GPIOx, &GPIO_InitStruct);
}

void Set_Pin_Input(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  GPIO_InitStruct.Pin  = GPIO_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOx, &GPIO_InitStruct);
}

void DHT11_Start(void)
{
  Set_Pin_Output(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin);
  HAL_GPIO_WritePin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin, GPIO_PIN_RESET);
  HAL_Delay(18);
  HAL_GPIO_WritePin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin, GPIO_PIN_SET);
  delay_us(20);
  Set_Pin_Input(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin);
}

uint8_t DHT11_Check_Response(void)
{
  uint8_t Response = 0;
  delay_us(40);
  if (!(HAL_GPIO_ReadPin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin)))
  {
    delay_us(80);
    if ((HAL_GPIO_ReadPin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin)))
      Response = 1;
    else
      Response = (uint8_t)-1;
  }

  uint32_t timeout = 0;
  while ((HAL_GPIO_ReadPin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin))) {
      timeout++;
      if (timeout > 50000) return 0;
  }
  return Response;
}

uint8_t DHT11_Read(void)
{
  uint8_t i = 0, j;
  for (j = 0; j < 8; j++)
  {
    uint32_t timeout = 0;
    while (!(HAL_GPIO_ReadPin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin))) {
        timeout++;
        if (timeout > 50000) return 0;
    }

    delay_us(40);

    if (!(HAL_GPIO_ReadPin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin)))
      i &= ~(1 << (7 - j));
    else
    {
      i |= (1 << (7 - j));
      timeout = 0;
      while ((HAL_GPIO_ReadPin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin))) {
          timeout++;
          if (timeout > 50000) return 0;
      }
    }
  }
  return i;
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/
  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM6_Init();
  MX_USART3_UART_Init();
  MX_I2C1_Init();

  /* USER CODE BEGIN SysInit_extra */
  HAL_TIM_Base_Start(&htim6);
  /* USER CODE END SysInit_extra */

  /* USER CODE BEGIN 2 */
  char startMsg[] = "STM32F407 DHT11 + AGS10 + Edge Impulse Started...\r\n";
  HAL_UART_Transmit(&huart3, (uint8_t*)startMsg, strlen(startMsg), HAL_MAX_DELAY);

  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);

  // ========================================================================
  // 1. HARDWARE RESET PENTRU PHY (KSZ8021)
  // ========================================================================
  HAL_UART_Transmit(&huart3, (uint8_t*)"\r\n[ETH] Assert hardware reset (LOW)...\r\n", 40, 100);
  HAL_GPIO_WritePin(RHY_RST_GPIO_Port, RHY_RST_Pin, GPIO_PIN_RESET);

  HAL_Delay(50); //minim 10ms conform datasheet

  HAL_UART_Transmit(&huart3, (uint8_t*)"[ETH] De-assert hardware reset (HIGH)...\r\n", 42, 100);
  HAL_GPIO_WritePin(RHY_RST_GPIO_Port, RHY_RST_Pin, GPIO_PIN_SET);


  HAL_Delay(50);

  // ========================================================================
  // 2. INIȚIALIZARE ETHERNET & LwIP
  // ========================================================================
  HAL_UART_Transmit(&huart3, (uint8_t*)"[ETH] Initializare MAC si LwIP...\r\n", 35, 100);

  MX_LWIP_Init();

  extern struct netif gnetif;
  netif_set_link_up(&gnetif);

  extern ETH_HandleTypeDef heth;
  HAL_ETH_Start(&heth);
  HAL_UART_Transmit(&huart3, (uint8_t*)"[ETH] MAC si DMA au fost pornite (HAL_ETH_Start)!\r\n", 51, 100);


  lcd_backlight(1);
  lcd_init();
  lcd_clear();
  lcd_set_cursor(0, 0);
  lcd_print("STM32 Edge AI");
  lcd_set_cursor(1, 0);
  lcd_print("Sensors Init...");

  HAL_Delay(2000);
  lcd_clear();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  uint32_t last_cloud_time = 0;
  uint32_t last_lcd_time = 0;
  uint32_t last_net_debug = 0;

  while(1)
  {
    /* USER CODE END WHILE */
    /* USER CODE BEGIN 3 */

    MX_LWIP_Process();

    // --- DEBUG RETEA ---
    if (HAL_GetTick() - last_net_debug > 5000) {
        last_net_debug = HAL_GetTick();

        uint32_t phy_bsr = 0;
        extern ETH_HandleTypeDef heth;
        HAL_ETH_ReadPHYRegister(&heth, 0, 0x01, &phy_bsr);

        char net_dbg[128];
        uint8_t *ip = (uint8_t *)&gnetif.ip_addr.addr;
        sprintf(net_dbg, "\r\n[NET DEBUG] PHY BSR Reg: 0x%04lX -> Link Fizic: %s | IP LwIP: %d.%d.%d.%d\r\n\r\n",
                phy_bsr,
                (phy_bsr & 0x0004) ? "UP" : "DOWN",
                ip[0], ip[1], ip[2], ip[3]);
        HAL_UART_Transmit(&huart3, (uint8_t*)net_dbg, strlen(net_dbg), 100);
    }

    if (HAL_GetTick() - last_lcd_time > 2500)
    {
      last_lcd_time = HAL_GetTick();

      // --- 1. DHT11 ---
      float temperature = 0.0f;
      float humidity = 0.0f;

      DHT11_Start();
      Presence = DHT11_Check_Response();

      if (Presence == 1)
      {
        Rh_byte1   = DHT11_Read();
        Rh_byte2   = DHT11_Read();
        Temp_byte1 = DHT11_Read();
        Temp_byte2 = DHT11_Read();
        SUM        = DHT11_Read();

        if (SUM == (uint16_t)(Rh_byte1 + Rh_byte2 + Temp_byte1 + Temp_byte2))
        {
          temperature = (float)Temp_byte1 + (float)Temp_byte2 / 10.0f;
          humidity    = (float)Rh_byte1   + (float)Rh_byte2   / 10.0f;
        }
        else {
          HAL_UART_Transmit(&huart3, (uint8_t*)"Eroare: Checksum invalid DHT11!\r\n", 33, 100);
        }
      }
      else {
        HAL_UART_Transmit(&huart3, (uint8_t*)"Eroare: DHT11 nu raspunde!\r\n", 28, 100);
      }

      // --- 2. AGS10 ---
      uint32_t tvoc_val = 0;
      if (AGS10_Read_TVOC(&hi2c1, &tvoc_val)) {
          // OK
      } else {
          HAL_UART_Transmit(&huart3, (uint8_t*)"Eroare: AGS10 nu raspunde (I2C)!\r\n", 35, 100);
      }

      uint32_t start_inference = HAL_GetTick();
      // --- 3. Inferenta Edge Impulse ---
      Model_data results = run_ei_app(temperature, humidity, (float)tvoc_val);

      uint32_t inference_time = HAL_GetTick() - start_inference;

      // --- 4. Afisare Debug pe Seriala (huart3) ---
      char msg[150];
            sprintf(msg, "AI: %s (%.1f%%) | Anomaly: %.3f | T:%.1f H:%.1f TVOC:%lu\r\n"
                         "-> Timp inferenta: %lu ms\r\n",
                          results.Label, results.Percentage, results.Anomaly,
                          temperature, humidity, tvoc_val,
                          inference_time);
            HAL_UART_Transmit(&huart3, (uint8_t*)msg, strlen(msg), 100);

      // --- 5. LCD(16x2) ---
      char lcd_buf[17];
      lcd_clear();
      lcd_set_cursor(0, 0);
      sprintf(lcd_buf, "T:%.1f V:%lu", temperature, tvoc_val);
      lcd_print(lcd_buf);

      lcd_set_cursor(1, 0);
      if (results.Anomaly > 0.5f) {
          sprintf(lcd_buf, "! %s (%.0f%%)", results.Label, results.Percentage);
      } else {
          sprintf(lcd_buf, "AI:%s (%.0f%%)", results.Label, results.Percentage);
      }
      lcd_print(lcd_buf);


      // --- 6. ThingSpeak ---
      if (HAL_GetTick() - last_cloud_time > 15000){
          last_cloud_time = HAL_GetTick();
          extern struct netif gnetif;

          if (gnetif.ip_addr.addr != 0) {
              HAL_UART_Transmit(&huart3, (uint8_t*)"---> TCP Trimitere spre ThingSpeak...\r\n", 39, 100);
              send_to_thingspeak(temperature, humidity, tvoc_val, results.Anomaly);
          } else {
              HAL_UART_Transmit(&huart3, (uint8_t*)"---> Asteptare DHCP (IP lipsa)...\r\n", 35, 100);
          }
      }

    }
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration (HSI stabil la 168MHz)
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

static void MX_I2C1_Init(void)
{
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
}

static void MX_TIM6_Init(void)
{
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  htim6.Instance = TIM6;
  htim6.Init.Prescaler = 83;
  htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim6.Init.Period = 65535;
  htim6.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim6) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim6, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
}

static void MX_USART3_UART_Init(void)
{
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 115200;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
}

static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(GPIOE, DISP_RS_Pin|BKL_PWM_Pin|DISP_RW_Pin|DISP_ENA_Pin
                          |DISP_DB4_Pin|DISP_DB5_Pin|DISP_DB6_Pin|DISP_DB7_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(RHY_RST_GPIO_Port, RHY_RST_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(DHT11_PIN_GPIO_Port, DHT11_PIN_Pin, GPIO_PIN_SET);

  GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = DISP_RS_Pin|BKL_PWM_Pin|DISP_RW_Pin|DISP_ENA_Pin
                          |DISP_DB4_Pin|DISP_DB5_Pin|DISP_DB6_Pin|DISP_DB7_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = RMII_PHY_INT_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(RMII_PHY_INT_GPIO_Port, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = RHY_RST_Pin|DHT11_PIN_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);
}

void Error_Handler(void)
{
  __disable_irq();
  while (1) {}
}

#ifdef  USE_FULL_ASSERT
void assert_failed(uint8_t *file, uint32_t line) {}
#endif /* USE_FULL_ASSERT */
