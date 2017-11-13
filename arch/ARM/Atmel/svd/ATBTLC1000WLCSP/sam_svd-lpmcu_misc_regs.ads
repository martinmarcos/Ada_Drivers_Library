--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.LPMCU_MISC_REGS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LPMCU_CHIP_ID_REV_ID_Field is HAL.UInt24;

   --  The hard-coded ID for the chip.
   type LPMCU_CHIP_ID_Register is record
      --  Read-only. Chip ID
      REV_ID         : LPMCU_CHIP_ID_REV_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCU_CHIP_ID_Register use record
      REV_ID         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  All individual software controllable resets. 0: Reset the selected
   --  function. 1: Normal operation.
   type LPMCU_GLOBAL_RESET_0_Register is record
      --  LPMCU Global Reset (self setting)
      GLOBAL_RSTN           : Boolean := True;
      --  LPMCU CPU Reset
      CPU_RSTN              : Boolean := False;
      --  SPI_FLASH0 Sys Reset
      SPIFLASH_SYS_RSTN     : Boolean := True;
      --  SPI_FLASH0 Interface Reset
      SPIFLASH_RSTN         : Boolean := True;
      --  SPI0 Core Reset
      CORTUS_SPI0_CORE_RSTN : Boolean := True;
      --  SPI0 Interface Reset
      CORTUS_SPI0_IF_RSTN   : Boolean := True;
      --  unspecified
      Reserved_6_7          : HAL.UInt2 := 16#3#;
      --  I2C0 Core Reset
      CORTUS_I2C0_CORE_RSTN : Boolean := True;
      --  I2C0 Interface Reset
      CORTUS_I2C0_IF_RSTN   : Boolean := True;
      --  GPIO Controller Reset
      GPIO_RSTN             : Boolean := True;
      --  TIMER0 Reset
      COUNTER_0_RSTN        : Boolean := True;
      --  UART0 Core Reset
      UART_CORE_RSTN        : Boolean := True;
      --  UART0 Interface Reset
      UART_IF_RSTN          : Boolean := True;
      --  UART1 Core Reset
      UART_1_CORE_RSTN      : Boolean := True;
      --  UART1 Interface Reset
      UART_1_IF_RSTN        : Boolean := True;
      --  WDT0 Reset
      WATCHDOG_0_RSTN       : Boolean := True;
      --  WDT1 Reset
      WATCHDOG_1_RSTN       : Boolean := True;
      --  NVIC Reset
      IRQ_CTRLR_CORE_RSTN   : Boolean := True;
      --  MBIST Logic Reset
      MBIST_RSTN            : Boolean := True;
      --  Low Power Clock Calibration Core Reset
      CALIB_RSTN            : Boolean := True;
      --  Low Power Clock Calibration APB Reset
      CALIB_XBAR_IF_RSTN    : Boolean := True;
      --  LPMCU Debug Reset
      DBUG_RSTN             : Boolean := True;
      --  Free Running ARM Clock Reset
      ARM_FREE_CLK_RSTN     : Boolean := True;
      --  ARM APB Reset
      ARM_PRESETN_RSTN      : Boolean := True;
      --  QUAD_DEC0 Reset
      QUAD_DEC_1_RSTN       : Boolean := True;
      --  QUAD_DEC1 Reset
      QUAD_DEC_2_RSTN       : Boolean := True;
      --  QUAD_DEC2 Reset
      QUAD_DEC_3_RSTN       : Boolean := True;
      --  PWM0 Reset
      PWM_1_RSTN            : Boolean := True;
      --  PWM1 Reset
      PWM_2_RSTN            : Boolean := True;
      --  PWM2 Reset
      PWM_3_RSTN            : Boolean := True;
      --  PWM3 Reset
      PWM_4_RSTN            : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCU_GLOBAL_RESET_0_Register use record
      GLOBAL_RSTN           at 0 range 0 .. 0;
      CPU_RSTN              at 0 range 1 .. 1;
      SPIFLASH_SYS_RSTN     at 0 range 2 .. 2;
      SPIFLASH_RSTN         at 0 range 3 .. 3;
      CORTUS_SPI0_CORE_RSTN at 0 range 4 .. 4;
      CORTUS_SPI0_IF_RSTN   at 0 range 5 .. 5;
      Reserved_6_7          at 0 range 6 .. 7;
      CORTUS_I2C0_CORE_RSTN at 0 range 8 .. 8;
      CORTUS_I2C0_IF_RSTN   at 0 range 9 .. 9;
      GPIO_RSTN             at 0 range 10 .. 10;
      COUNTER_0_RSTN        at 0 range 11 .. 11;
      UART_CORE_RSTN        at 0 range 12 .. 12;
      UART_IF_RSTN          at 0 range 13 .. 13;
      UART_1_CORE_RSTN      at 0 range 14 .. 14;
      UART_1_IF_RSTN        at 0 range 15 .. 15;
      WATCHDOG_0_RSTN       at 0 range 16 .. 16;
      WATCHDOG_1_RSTN       at 0 range 17 .. 17;
      IRQ_CTRLR_CORE_RSTN   at 0 range 18 .. 18;
      MBIST_RSTN            at 0 range 19 .. 19;
      CALIB_RSTN            at 0 range 20 .. 20;
      CALIB_XBAR_IF_RSTN    at 0 range 21 .. 21;
      DBUG_RSTN             at 0 range 22 .. 22;
      ARM_FREE_CLK_RSTN     at 0 range 23 .. 23;
      ARM_PRESETN_RSTN      at 0 range 24 .. 24;
      QUAD_DEC_1_RSTN       at 0 range 25 .. 25;
      QUAD_DEC_2_RSTN       at 0 range 26 .. 26;
      QUAD_DEC_3_RSTN       at 0 range 27 .. 27;
      PWM_1_RSTN            at 0 range 28 .. 28;
      PWM_2_RSTN            at 0 range 29 .. 29;
      PWM_3_RSTN            at 0 range 30 .. 30;
      PWM_4_RSTN            at 0 range 31 .. 31;
   end record;

   --  All individual software controllable resets. 0: Reset the selected
   --  function. 1: Normal operation.
   type LPMCU_GLOBAL_RESET_1_Register is record
      --  DUALTIMER0 Reset
      DUALTIMER_RSTN                     : Boolean := True;
      --  I2C1 Core Reset
      CORTUS_I2C1_CORE_RSTN              : Boolean := True;
      --  I2C1 Interface Reset
      CORTUS_I2C1_IF_RSTN                : Boolean := True;
      --  Security SHA Core Reset
      SECURITY_SHA_CORE_RSTN             : Boolean := True;
      --  Security SHA AHB Interface Reset
      SECURITY_SHA_AHB_RSTN              : Boolean := True;
      --  Security AES Core Reset
      SECURITY_AES_CORE_RSTN             : Boolean := True;
      --  Security AES AHB Interface Reset
      SECURITY_AES_AHB_RSTN              : Boolean := True;
      --  SPI0 SCK Clock Reset
      CORTUS_SPI0_SCK_CLK_RSTN           : Boolean := True;
      --  unspecified
      Reserved_8_8                       : HAL.Bit := 16#1#;
      --  SPI0 SCK Phase Clock Reset
      CORTUS_SPI0_SCK_PHASE_INT_CLK_RSTN : Boolean := True;
      --  unspecified
      Reserved_10_10                     : HAL.Bit := 16#1#;
      --  PROV_DMA_CTRL0 Reset
      DMA_CONTROLLER_RSTN                : Boolean := True;
      --  unspecified
      Reserved_12_15                     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LPMCU_GLOBAL_RESET_1_Register use record
      DUALTIMER_RSTN                     at 0 range 0 .. 0;
      CORTUS_I2C1_CORE_RSTN              at 0 range 1 .. 1;
      CORTUS_I2C1_IF_RSTN                at 0 range 2 .. 2;
      SECURITY_SHA_CORE_RSTN             at 0 range 3 .. 3;
      SECURITY_SHA_AHB_RSTN              at 0 range 4 .. 4;
      SECURITY_AES_CORE_RSTN             at 0 range 5 .. 5;
      SECURITY_AES_AHB_RSTN              at 0 range 6 .. 6;
      CORTUS_SPI0_SCK_CLK_RSTN           at 0 range 7 .. 7;
      Reserved_8_8                       at 0 range 8 .. 8;
      CORTUS_SPI0_SCK_PHASE_INT_CLK_RSTN at 0 range 9 .. 9;
      Reserved_10_10                     at 0 range 10 .. 10;
      DMA_CONTROLLER_RSTN                at 0 range 11 .. 11;
      Reserved_12_15                     at 0 range 12 .. 15;
   end record;

   --  All individual software controllable clock enables. Values are: 0:
   --  Disable clock. 1: Normal operation.
   type LPMCU_CLOCK_ENABLES_0_Register is record
      --  unspecified
      Reserved_0_0            : HAL.Bit := 16#0#;
      --  SPI_FLASH0 Clock Enable
      SPIFLASH_CLK_EN         : Boolean := True;
      --  SPI0 Core Clock Enable
      CORTUS_SPI0_CORE_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_3_3            : HAL.Bit := 16#1#;
      --  I2C0 Core Clock Enable
      CORTUS_I2C0_CORE_CLK_EN : Boolean := True;
      --  DUALTIMER0 Clock Enable
      DUALTIMER_CLK_EN        : Boolean := True;
      --  unspecified
      Reserved_6_6            : HAL.Bit := 16#0#;
      --  GPIO Controller Clock Enable
      GPIO_CLK_EN             : Boolean := True;
      --  TIMER0 Clock Enable
      COUNTER_0_CLK_EN        : Boolean := True;
      --  unspecified
      Reserved_9_10           : HAL.UInt2 := 16#0#;
      --  WDT0 Clock Enable
      WATCHDOG_0_CLK_EN       : Boolean := True;
      --  WDT1 Clock Enable
      WATCHDOG_1_CLK_EN       : Boolean := True;
      --  UART0 Core Clock Enable
      UART_CORE_CLK_EN        : Boolean := True;
      --  UART0 Interface Clock Enable
      UART_IF_CLK_EN          : Boolean := True;
      --  UART1 Core Clock Enable
      UART_1_CORE_CLK_EN      : Boolean := True;
      --  UART1 Interface Clock Enable
      UART_1_IF_CLK_EN        : Boolean := True;
      --  NVIC Clock Enable
      IRQ_CTRLR_CORE_CLK_EN   : Boolean := True;
      --  IDRAM1 Glue Logic Clock Enable
      IDRAM_1_GL_MEM_CLK_EN   : Boolean := True;
      --  IDRAM2 Glue Logic Clock Enable
      IDRAM_2_GL_MEM_CLK_EN   : Boolean := True;
      --  ROM Clock Enable
      ROM_MEM_CLK_EN          : Boolean := True;
      --  Low Power Clock Calibration Interface Clock Enable
      CALIB_XBAR_IF_CLK_EN    : Boolean := True;
      --  AON Wrapper Clock Enable
      AON_WRAPPER_CLK_EN      : Boolean := True;
      --  ARM PCLK Clock Enable (override)
      ARM_PCLK_EN             : Boolean := False;
      --  ARM Gated PCLK Clock Enable (override)
      ARM_PCLKG_EN            : Boolean := False;
      --  ARM BLE 8K Retention Memory Clock Enable
      BLE_MEM_CLK_EN          : Boolean := True;
      --  QUAD_DEC0 Clock Enable
      QUAD_DEC_1_CLK_EN       : Boolean := False;
      --  QUAD_DEC1 Clock Enable
      QUAD_DEC_2_CLK_EN       : Boolean := False;
      --  QUAD_DEC2 Clock Enable
      QUAD_DEC_3_CLK_EN       : Boolean := False;
      --  I2C1 Core Clock Enable
      CORTUS_I2C1_CORE_CLK_EN : Boolean := True;
      --  Low Power Clock Calibration Core Clock Enable
      CALIB_CLK_EN            : Boolean := True;
      --  unspecified
      Reserved_31_31          : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCU_CLOCK_ENABLES_0_Register use record
      Reserved_0_0            at 0 range 0 .. 0;
      SPIFLASH_CLK_EN         at 0 range 1 .. 1;
      CORTUS_SPI0_CORE_CLK_EN at 0 range 2 .. 2;
      Reserved_3_3            at 0 range 3 .. 3;
      CORTUS_I2C0_CORE_CLK_EN at 0 range 4 .. 4;
      DUALTIMER_CLK_EN        at 0 range 5 .. 5;
      Reserved_6_6            at 0 range 6 .. 6;
      GPIO_CLK_EN             at 0 range 7 .. 7;
      COUNTER_0_CLK_EN        at 0 range 8 .. 8;
      Reserved_9_10           at 0 range 9 .. 10;
      WATCHDOG_0_CLK_EN       at 0 range 11 .. 11;
      WATCHDOG_1_CLK_EN       at 0 range 12 .. 12;
      UART_CORE_CLK_EN        at 0 range 13 .. 13;
      UART_IF_CLK_EN          at 0 range 14 .. 14;
      UART_1_CORE_CLK_EN      at 0 range 15 .. 15;
      UART_1_IF_CLK_EN        at 0 range 16 .. 16;
      IRQ_CTRLR_CORE_CLK_EN   at 0 range 17 .. 17;
      IDRAM_1_GL_MEM_CLK_EN   at 0 range 18 .. 18;
      IDRAM_2_GL_MEM_CLK_EN   at 0 range 19 .. 19;
      ROM_MEM_CLK_EN          at 0 range 20 .. 20;
      CALIB_XBAR_IF_CLK_EN    at 0 range 21 .. 21;
      AON_WRAPPER_CLK_EN      at 0 range 22 .. 22;
      ARM_PCLK_EN             at 0 range 23 .. 23;
      ARM_PCLKG_EN            at 0 range 24 .. 24;
      BLE_MEM_CLK_EN          at 0 range 25 .. 25;
      QUAD_DEC_1_CLK_EN       at 0 range 26 .. 26;
      QUAD_DEC_2_CLK_EN       at 0 range 27 .. 27;
      QUAD_DEC_3_CLK_EN       at 0 range 28 .. 28;
      CORTUS_I2C1_CORE_CLK_EN at 0 range 29 .. 29;
      CALIB_CLK_EN            at 0 range 30 .. 30;
      Reserved_31_31          at 0 range 31 .. 31;
   end record;

   --  All individual software controllable clock enables. Values are: 0:
   --  Disable clock. 1: Normal operation.
   type LPMCU_CLOCK_ENABLES_1_Register is record
      --  EFUSE0 Clock Enable
      EFUSE_1_CLK_EN            : Boolean := True;
      --  EFUSE1 Clock Enable
      EFUSE_2_CLK_EN            : Boolean := True;
      --  EFUSE2 Clock Enable
      EFUSE_3_CLK_EN            : Boolean := True;
      --  EFUSE3 Clock Enable
      EFUSE_4_CLK_EN            : Boolean := True;
      --  EFUSE4 Clock Enable
      EFUSE_5_CLK_EN            : Boolean := True;
      --  EFUSE5 Clock Enable
      EFUSE_6_CLK_EN            : Boolean := True;
      --  PWM0 Clock Enable
      PWM_1_CLK_EN              : Boolean := False;
      --  PWM1 Clock Enable
      PWM_2_CLK_EN              : Boolean := False;
      --  PWM2 Clock Enable
      PWM_3_CLK_EN              : Boolean := False;
      --  PWM3 Clock Enable
      PWM_4_CLK_EN              : Boolean := False;
      --  PMU Sensor ADC Clock Enable
      SENS_ADC_CLK_EN           : Boolean := False;
      --  SPI0 SCK Phase Internal Clock Enable
      SPI0_SCK_PHASE_INT_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_12_12            : HAL.Bit := 16#1#;
      --  GPIO Controller Clock Enable
      GPIO_GCLK_EN              : Boolean := True;
      --  TIMER0 Gated APB Clock
      COUNTER_0_PGCLK_EN        : Boolean := True;
      --  SHA Core Clock Enable
      SHA_CORE_CLK_EN           : Boolean := False;
      --  SHA AHB Clock Enable
      SHA_AHB_CLK_EN            : Boolean := False;
      --  AES Core Clock Enable
      AES_CORE_CLK_EN           : Boolean := False;
      --  AES AHB Clock Enable
      AES_AHB_CLK_EN            : Boolean := False;
      --  IDRAM1_0 Memory Clock Enable
      IDRAM_1_0_MEM_CLK_EN      : Boolean := True;
      --  IDRAM1_1 Memory Clock Enable
      IDRAM_1_1_MEM_CLK_EN      : Boolean := True;
      --  IDRAM1_2 Memory Clock Enable
      IDRAM_1_2_MEM_CLK_EN      : Boolean := True;
      --  IDRAM2_0 Memory Clock Enable
      IDRAM_2_0_MEM_CLK_EN      : Boolean := True;
      --  IDRAM2_1 Memory Clock Enable
      IDRAM_2_1_MEM_CLK_EN      : Boolean := True;
      --  unspecified
      Reserved_24_31            : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCU_CLOCK_ENABLES_1_Register use record
      EFUSE_1_CLK_EN            at 0 range 0 .. 0;
      EFUSE_2_CLK_EN            at 0 range 1 .. 1;
      EFUSE_3_CLK_EN            at 0 range 2 .. 2;
      EFUSE_4_CLK_EN            at 0 range 3 .. 3;
      EFUSE_5_CLK_EN            at 0 range 4 .. 4;
      EFUSE_6_CLK_EN            at 0 range 5 .. 5;
      PWM_1_CLK_EN              at 0 range 6 .. 6;
      PWM_2_CLK_EN              at 0 range 7 .. 7;
      PWM_3_CLK_EN              at 0 range 8 .. 8;
      PWM_4_CLK_EN              at 0 range 9 .. 9;
      SENS_ADC_CLK_EN           at 0 range 10 .. 10;
      SPI0_SCK_PHASE_INT_CLK_EN at 0 range 11 .. 11;
      Reserved_12_12            at 0 range 12 .. 12;
      GPIO_GCLK_EN              at 0 range 13 .. 13;
      COUNTER_0_PGCLK_EN        at 0 range 14 .. 14;
      SHA_CORE_CLK_EN           at 0 range 15 .. 15;
      SHA_AHB_CLK_EN            at 0 range 16 .. 16;
      AES_CORE_CLK_EN           at 0 range 17 .. 17;
      AES_AHB_CLK_EN            at 0 range 18 .. 18;
      IDRAM_1_0_MEM_CLK_EN      at 0 range 19 .. 19;
      IDRAM_1_1_MEM_CLK_EN      at 0 range 20 .. 20;
      IDRAM_1_2_MEM_CLK_EN      at 0 range 21 .. 21;
      IDRAM_2_0_MEM_CLK_EN      at 0 range 22 .. 22;
      IDRAM_2_1_MEM_CLK_EN      at 0 range 23 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   --  Miscellaneous BLE control
   type BTMCU_CONTROL_Register is record
      --  BLE RXTX Sequencer Clock Enable
      RXTX_SEQ_CLK_EN    : Boolean := True;
      --  BLE HAB Clock Enable
      AHB_CLK_EN         : Boolean := True;
      --  BLE Periph Regs Clock Enable
      PERIPH_REGS_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_3_7       : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BTMCU_CONTROL_Register use record
      RXTX_SEQ_CLK_EN    at 0 range 0 .. 0;
      AHB_CLK_EN         at 0 range 1 .. 1;
      PERIPH_REGS_CLK_EN at 0 range 2 .. 2;
      Reserved_3_7       at 0 range 3 .. 7;
   end record;

   --  LPMCU Clock Frequency Selection
   type LPMCU_CONTROL_LPMCU_CLK_SEL_Field is
     (
      --  26MHz
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_0,
      --  13MHz
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_1,
      --  6.5MHz
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_2,
      --  3.25MHz
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_3)
     with Size => 2;
   for LPMCU_CONTROL_LPMCU_CLK_SEL_Field use
     (LPMCU_CONTROL_LPMCU_CLK_SEL_Field_0 => 0,
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_1 => 1,
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_2 => 2,
      LPMCU_CONTROL_LPMCU_CLK_SEL_Field_3 => 3);

   --  DUALTIMER0 Clock Frequency Select
   type LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field is
     (
      --  26MHz
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_0,
      --  13MHz
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_1,
      --  6.5MHz
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_2,
      --  3.25MHz
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_3)
     with Size => 2;
   for LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field use
     (LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_0 => 0,
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_1 => 1,
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_2 => 2,
      LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_3 => 3);

   --  SPI_FLASH0 Clock Frequency Select
   type LPMCU_CONTROL_SPIFLASH_CLKSEL_Field is
     (
      --  3.25MHz
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_0,
      --  6.5MHz
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_1,
      --  13MHz
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_2,
      --  26MHz
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_3)
     with Size => 2;
   for LPMCU_CONTROL_SPIFLASH_CLKSEL_Field use
     (LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_0 => 0,
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_1 => 1,
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_2 => 2,
      LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_3 => 3);

   subtype LPMCU_CONTROL_SPI_FLASH_CLOCK_DIV_VALUE_Field is HAL.UInt8;

   --  Miscellaneous LPMCU control
   type LPMCU_CONTROL_Register is record
      --  LPMCU Clock Frequency Selection
      LPMCU_CLK_SEL             : LPMCU_CONTROL_LPMCU_CLK_SEL_Field :=
                                   SAM_SVD.LPMCU_MISC_REGS.LPMCU_CONTROL_LPMCU_CLK_SEL_Field_0;
      --  Use XO as ARM clock (must also set use_arm_lp_clk)
      USE_BT26M_CLK             : Boolean := False;
      --  Use either LP 2MHz clock or XO as ARM clock
      USE_ARM_LP_CLK            : Boolean := False;
      --  DUALTIMER0 Clock Frequency Select
      DUALTIMER_CLK_SEL         : LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field :=
                                   SAM_SVD.LPMCU_MISC_REGS.LPMCU_CONTROL_DUALTIMER_CLK_SEL_Field_0;
      --  unspecified
      Reserved_6_7              : HAL.UInt2 := 16#0#;
      --  Bypass Wakeup Interrupt Controller
      BYPASS_WIC                : Boolean := True;
      --  Use the XO for Low Power Clock Calibration
      USE_XO_FOR_LP_CAL_CLK     : Boolean := False;
      --  unspecified
      Reserved_10_11            : HAL.UInt2 := 16#0#;
      --  SPI_FLASH0 Clock Frequency Select
      SPIFLASH_CLKSEL           : LPMCU_CONTROL_SPIFLASH_CLKSEL_Field :=
                                   SAM_SVD.LPMCU_MISC_REGS.LPMCU_CONTROL_SPIFLASH_CLKSEL_Field_3;
      --  unspecified
      Reserved_14_15            : HAL.UInt2 := 16#0#;
      --  Use Generated Divided Clock for SPI_FLASH0
      SPIFLASH_DIV_CLK_SEL      : Boolean := False;
      --  unspecified
      Reserved_17_18            : HAL.UInt2 := 16#0#;
      --  Mux Control to select between FECE and standard IDRAM memory. Default
      --  to IDRAM ARM Memory
      IDRAM_1_MEM_IQ_BYP_EN     : Boolean := False;
      --  Integer divider value. 26mhz clock will be divided by this register
      --  value
      SPI_FLASH_CLOCK_DIV_VALUE : LPMCU_CONTROL_SPI_FLASH_CLOCK_DIV_VALUE_Field :=
                                   16#3#;
      --  Inverts UART0 interface clock
      INVERT_UART_IF_CLK        : Boolean := False;
      --  Inverts UART1 interface clock
      INVERT_UART_1_IF_CLK      : Boolean := False;
      --  unspecified
      Reserved_30_31            : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCU_CONTROL_Register use record
      LPMCU_CLK_SEL             at 0 range 0 .. 1;
      USE_BT26M_CLK             at 0 range 2 .. 2;
      USE_ARM_LP_CLK            at 0 range 3 .. 3;
      DUALTIMER_CLK_SEL         at 0 range 4 .. 5;
      Reserved_6_7              at 0 range 6 .. 7;
      BYPASS_WIC                at 0 range 8 .. 8;
      USE_XO_FOR_LP_CAL_CLK     at 0 range 9 .. 9;
      Reserved_10_11            at 0 range 10 .. 11;
      SPIFLASH_CLKSEL           at 0 range 12 .. 13;
      Reserved_14_15            at 0 range 14 .. 15;
      SPIFLASH_DIV_CLK_SEL      at 0 range 16 .. 16;
      Reserved_17_18            at 0 range 17 .. 18;
      IDRAM_1_MEM_IQ_BYP_EN     at 0 range 19 .. 19;
      SPI_FLASH_CLOCK_DIV_VALUE at 0 range 20 .. 27;
      INVERT_UART_IF_CLK        at 0 range 28 .. 28;
      INVERT_UART_1_IF_CLK      at 0 range 29 .. 29;
      Reserved_30_31            at 0 range 30 .. 31;
   end record;

   --  MBIST designation
   type LPMCU_MBIST_Register is record
      --  Puts the chip in MBIST mode
      MBIST_MODE   : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for LPMCU_MBIST_Register use record
      MBIST_MODE   at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  BLE Control
   type BLE_CTRL_Register is record
      --  BLE Wakeup Request (to BLE Sleep Timer)
      BLE_WAKEUP_REQ      : Boolean := False;
      --  BLE Wakeup Request (to BLE Core)
      BLE_WAKEUP_REQ_CORE : Boolean := False;
      --  unspecified
      Reserved_2_7        : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BLE_CTRL_Register use record
      BLE_WAKEUP_REQ      at 0 range 0 .. 0;
      BLE_WAKEUP_REQ_CORE at 0 range 1 .. 1;
      Reserved_2_7        at 0 range 2 .. 7;
   end record;

   subtype MBIST_STATUS_MBIST_BUS_Field is HAL.UInt21;
   subtype MBIST_STATUS_MBIST_BLOCK_SEL_Field is HAL.UInt5;
   subtype MBIST_STATUS_MBIST_WRAPPER_SEL_Field is HAL.UInt5;

   --  MBIST Status Register
   type MBIST_STATUS_Register is record
      --  Read-only. Observation of MBIST results
      MBIST_BUS         : MBIST_STATUS_MBIST_BUS_Field;
      --  Read-only. Observation of block field of MBIST control
      MBIST_BLOCK_SEL   : MBIST_STATUS_MBIST_BLOCK_SEL_Field;
      --  Read-only. Observation of wrapper field of MBIST control
      MBIST_WRAPPER_SEL : MBIST_STATUS_MBIST_WRAPPER_SEL_Field;
      --  Read-only. Observation of mbist_mode signal
      MBIST_MODE        : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBIST_STATUS_Register use record
      MBIST_BUS         at 0 range 0 .. 20;
      MBIST_BLOCK_SEL   at 0 range 21 .. 25;
      MBIST_WRAPPER_SEL at 0 range 26 .. 30;
      MBIST_MODE        at 0 range 31 .. 31;
   end record;

   --  Enables MBIST algorithms
   type MBIST_SRAM_ALG_SEL_Register is record
      --  Enables the march2 algorithm
      MARCH2_ENABLE          : Boolean := True;
      --  Enables the unique address algorithm
      UNIQUE_ENABLE          : Boolean := True;
      --  Enables the checkerboard algorithm
      CHECKERBOARD_ENABLE    : Boolean := True;
      --  Enables the diagonal algorithm
      DIAGONAL_ENABLE        : Boolean := True;
      --  Enables the address decoder bg0 algorithm
      ADDRDEC0_ENABLE        : Boolean := False;
      --  Enables the address decoder bg1 algorithm
      ADDRDEC1_ENABLE        : Boolean := False;
      --  Enables the col_march1 algorithm
      COLMARCH1_ENABLE       : Boolean := True;
      --  Enables the fillwith0 algorithm
      FILLWITH0_ENABLE       : Boolean := False;
      --  Enables the ret read zeros algorithm
      RET_READ_ZEROS_ENABLE  : Boolean := False;
      --  Enables the ret write zeros algorithm
      RET_WRITE_ZEROS_ENABLE : Boolean := False;
      --  Enables the ret read ones algorithm
      RET_READ_ONES_ENABLE   : Boolean := False;
      --  Enables the ret write ones algorithm
      RET_WRITE_ONES_ENABLE  : Boolean := False;
      --  Enables the ret read checkerboard algorithm
      RET_READ_CB_ENABLE     : Boolean := False;
      --  Enables the ret write checkerboard algorithm
      RET_WRITE_CB_ENABLE    : Boolean := False;
      --  Enables the ret read inv checkerboard algorithm
      RET_READ_INVCB_ENABLE  : Boolean := False;
      --  Enables the ret write inv checkerboard algorithm
      RET_WRITE_INVCB_ENABLE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MBIST_SRAM_ALG_SEL_Register use record
      MARCH2_ENABLE          at 0 range 0 .. 0;
      UNIQUE_ENABLE          at 0 range 1 .. 1;
      CHECKERBOARD_ENABLE    at 0 range 2 .. 2;
      DIAGONAL_ENABLE        at 0 range 3 .. 3;
      ADDRDEC0_ENABLE        at 0 range 4 .. 4;
      ADDRDEC1_ENABLE        at 0 range 5 .. 5;
      COLMARCH1_ENABLE       at 0 range 6 .. 6;
      FILLWITH0_ENABLE       at 0 range 7 .. 7;
      RET_READ_ZEROS_ENABLE  at 0 range 8 .. 8;
      RET_WRITE_ZEROS_ENABLE at 0 range 9 .. 9;
      RET_READ_ONES_ENABLE   at 0 range 10 .. 10;
      RET_WRITE_ONES_ENABLE  at 0 range 11 .. 11;
      RET_READ_CB_ENABLE     at 0 range 12 .. 12;
      RET_WRITE_CB_ENABLE    at 0 range 13 .. 13;
      RET_READ_INVCB_ENABLE  at 0 range 14 .. 14;
      RET_WRITE_INVCB_ENABLE at 0 range 15 .. 15;
   end record;

   --  Controls all of the test bus functionality
   type TEST_BUS_CONTROL_Register is record
      --  Selects periph test bus
      TEST_ENABLE_ARM : Boolean := False;
      --  unspecified
      Reserved_1_7    : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TEST_BUS_CONTROL_Register use record
      TEST_ENABLE_ARM at 0 range 0 .. 0;
      Reserved_1_7    at 0 range 1 .. 7;
   end record;

   --  Invert Output Control
   type INVERT_OUTPUT_CTRL_Register is record
      --  Invert the output for lp_gpio_0
      LP_GPIO_0      : Boolean := False;
      --  Invert the output for lp_gpio_1
      LP_GPIO_1      : Boolean := False;
      --  Invert the output for lp_gpio_2
      LP_GPIO_2      : Boolean := False;
      --  Invert the output for lp_gpio_3
      LP_GPIO_3      : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Invert the output for lp_gpio_8
      LP_GPIO_8      : Boolean := False;
      --  Invert the output for lp_gpio_9
      LP_GPIO_9      : Boolean := False;
      --  Invert the output for lp_gpio_10
      LP_GPIO_10     : Boolean := False;
      --  Invert the output for lp_gpio_11
      LP_GPIO_11     : Boolean := False;
      --  Invert the output for lp_gpio_12
      LP_GPIO_12     : Boolean := False;
      --  Invert the output for lp_gpio_13
      LP_GPIO_13     : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INVERT_OUTPUT_CTRL_Register use record
      LP_GPIO_0      at 0 range 0 .. 0;
      LP_GPIO_1      at 0 range 1 .. 1;
      LP_GPIO_2      at 0 range 2 .. 2;
      LP_GPIO_3      at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      LP_GPIO_8      at 0 range 8 .. 8;
      LP_GPIO_9      at 0 range 9 .. 9;
      LP_GPIO_10     at 0 range 10 .. 10;
      LP_GPIO_11     at 0 range 11 .. 11;
      LP_GPIO_12     at 0 range 12 .. 12;
      LP_GPIO_13     at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Pinmux select for LP_GPIO_0
   type PINMUX_SEL_0_LP_GPIO_0_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Swd_Clk,
      --  MUX function 7
      Test_Out_0)
     with Size => 3;
   for PINMUX_SEL_0_LP_GPIO_0_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Swd_Clk => 2,
      Test_Out_0 => 7);

   --  Pinmux select for LP_GPIO_1
   type PINMUX_SEL_0_LP_GPIO_1_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Swd_Io,
      --  MUX function 7
      Test_Out_1)
     with Size => 3;
   for PINMUX_SEL_0_LP_GPIO_1_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Swd_Io => 2,
      Test_Out_1 => 7);

   --  Pinmux select for LP_GPIO_2
   type PINMUX_SEL_0_LP_GPIO_2_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Uart0_Rxd,
      --  MUX function 5
      Spi0_Sck,
      --  MUX function 6
      Spi_Flash0_Sck,
      --  MUX function 7
      Test_Out_2)
     with Size => 3;
   for PINMUX_SEL_0_LP_GPIO_2_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Uart0_Rxd => 2,
      Spi0_Sck => 5,
      Spi_Flash0_Sck => 6,
      Test_Out_2 => 7);

   --  Pinmux select for LP_GPIO_3
   type PINMUX_SEL_0_LP_GPIO_3_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Uart0_Txd,
      --  MUX function 5
      Spi0_Mosi,
      --  MUX function 6
      Spi_Flash0_Txd,
      --  MUX function 7
      Test_Out_3)
     with Size => 3;
   for PINMUX_SEL_0_LP_GPIO_3_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Uart0_Txd => 2,
      Spi0_Mosi => 5,
      Spi_Flash0_Txd => 6,
      Test_Out_3 => 7);

   --  Pinmux select for LP_GPIO_0, LP_GPIO_1, LP_GPIO_2, LP_GPIO_3, LP_GPIO_4,
   --  LP_GPIO_5, LP_GPIO_6, LP_GPIO_7
   type PINMUX_SEL_0_Register is record
      --  Pinmux select for LP_GPIO_0
      LP_GPIO_0_SEL  : PINMUX_SEL_0_LP_GPIO_0_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Swd_Clk;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_1
      LP_GPIO_1_SEL  : PINMUX_SEL_0_LP_GPIO_1_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Swd_Io;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_2
      LP_GPIO_2_SEL  : PINMUX_SEL_0_LP_GPIO_2_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Gpio;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_3
      LP_GPIO_3_SEL  : PINMUX_SEL_0_LP_GPIO_3_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Gpio;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINMUX_SEL_0_Register use record
      LP_GPIO_0_SEL  at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LP_GPIO_1_SEL  at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LP_GPIO_2_SEL  at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LP_GPIO_3_SEL  at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Pinmux select for LP_GPIO_8
   type PINMUX_SEL_1_LP_GPIO_8_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      I2C0_Sda,
      --  Reset value for the field
      Pinmux_Sel_1_Lp_Gpio_8_Sel_Field_Reset,
      --  MUX function 5
      Spi0_Ssn,
      --  MUX function 6
      Spi_Flash0_Ssn,
      --  MUX function 7
      Test_Out_8)
     with Size => 3;
   for PINMUX_SEL_1_LP_GPIO_8_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      I2C0_Sda => 2,
      Pinmux_Sel_1_Lp_Gpio_8_Sel_Field_Reset => 3,
      Spi0_Ssn => 5,
      Spi_Flash0_Ssn => 6,
      Test_Out_8 => 7);

   --  Pinmux select for LP_GPIO_9
   type PINMUX_SEL_1_LP_GPIO_9_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      I2C0_Scl,
      --  Reset value for the field
      Pinmux_Sel_1_Lp_Gpio_9_Sel_Field_Reset,
      --  MUX function 5
      Spi0_Miso,
      --  MUX function 6
      Spi_Flash0_Rxd,
      --  MUX function 7
      Test_Out_9)
     with Size => 3;
   for PINMUX_SEL_1_LP_GPIO_9_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      I2C0_Scl => 2,
      Pinmux_Sel_1_Lp_Gpio_9_Sel_Field_Reset => 3,
      Spi0_Miso => 5,
      Spi_Flash0_Rxd => 6,
      Test_Out_9 => 7);

   --  Pinmux select for LP_GPIO_10
   type PINMUX_SEL_1_LP_GPIO_10_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Spi0_Sck,
      --  MUX function 6
      Spi_Flash0_Sck,
      --  MUX function 7
      Test_Out_10)
     with Size => 3;
   for PINMUX_SEL_1_LP_GPIO_10_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Spi0_Sck => 2,
      Spi_Flash0_Sck => 6,
      Test_Out_10 => 7);

   --  Pinmux select for LP_GPIO_11
   type PINMUX_SEL_1_LP_GPIO_11_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Spi0_Mosi,
      --  MUX function 6
      Spi_Flash0_Txd,
      --  MUX function 7
      Test_Out_11)
     with Size => 3;
   for PINMUX_SEL_1_LP_GPIO_11_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Spi0_Mosi => 2,
      Spi_Flash0_Txd => 6,
      Test_Out_11 => 7);

   --  Pinmux select for LP_GPIO_12
   type PINMUX_SEL_1_LP_GPIO_12_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Spi0_Ssn,
      --  MUX function 6
      Spi_Flash0_Ssn,
      --  MUX function 7
      Test_Out_12)
     with Size => 3;
   for PINMUX_SEL_1_LP_GPIO_12_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Spi0_Ssn => 2,
      Spi_Flash0_Ssn => 6,
      Test_Out_12 => 7);

   --  Pinmux select for LP_GPIO_13
   type PINMUX_SEL_1_LP_GPIO_13_SEL_Field is
     (
      --  MUX function 0
      Gpio,
      --  MUX function 1
      Megamux,
      --  MUX function 2
      Spi0_Miso,
      --  MUX function 6
      Spi_Flash0_Rxd,
      --  MUX function 7
      Test_Out_13)
     with Size => 3;
   for PINMUX_SEL_1_LP_GPIO_13_SEL_Field use
     (Gpio => 0,
      Megamux => 1,
      Spi0_Miso => 2,
      Spi_Flash0_Rxd => 6,
      Test_Out_13 => 7);

   --  Pinmux select for LP_GPIO_8, LP_GPIO_9, LP_GPIO_10, LP_GPIO_11,
   --  LP_GPIO_12, LP_GPIO_13, LP_GPIO_14, LP_GPIO_15
   type PINMUX_SEL_1_Register is record
      --  Pinmux select for LP_GPIO_8
      LP_GPIO_8_SEL  : PINMUX_SEL_1_LP_GPIO_8_SEL_Field :=
                        Pinmux_Sel_1_Lp_Gpio_8_Sel_Field_Reset;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_9
      LP_GPIO_9_SEL  : PINMUX_SEL_1_LP_GPIO_9_SEL_Field :=
                        Pinmux_Sel_1_Lp_Gpio_9_Sel_Field_Reset;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_10
      LP_GPIO_10_SEL : PINMUX_SEL_1_LP_GPIO_10_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Gpio;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_11
      LP_GPIO_11_SEL : PINMUX_SEL_1_LP_GPIO_11_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Gpio;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_12
      LP_GPIO_12_SEL : PINMUX_SEL_1_LP_GPIO_12_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Gpio;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_13
      LP_GPIO_13_SEL : PINMUX_SEL_1_LP_GPIO_13_SEL_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.Gpio;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINMUX_SEL_1_Register use record
      LP_GPIO_8_SEL  at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LP_GPIO_9_SEL  at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LP_GPIO_10_SEL at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LP_GPIO_11_SEL at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LP_GPIO_12_SEL at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      LP_GPIO_13_SEL at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype PINMUX_SEL_2_LP_GPIO_16_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_17_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_18_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_19_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_20_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_21_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_22_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_2_LP_GPIO_23_SEL_Field is HAL.UInt3;

   --  Pinmux select for LP_GPIO_16, LP_GPIO_17, LP_GPIO_18, LP_GPIO_19,
   --  LP_GPIO_20, LP_GPIO_21, LP_GPIO_22, LP_GPIO_23
   type PINMUX_SEL_2_Register is record
      --  Pinmux select for LP_GPIO_16
      LP_GPIO_16_SEL : PINMUX_SEL_2_LP_GPIO_16_SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_17
      LP_GPIO_17_SEL : PINMUX_SEL_2_LP_GPIO_17_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_18
      LP_GPIO_18_SEL : PINMUX_SEL_2_LP_GPIO_18_SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_19
      LP_GPIO_19_SEL : PINMUX_SEL_2_LP_GPIO_19_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_20
      LP_GPIO_20_SEL : PINMUX_SEL_2_LP_GPIO_20_SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_21
      LP_GPIO_21_SEL : PINMUX_SEL_2_LP_GPIO_21_SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_22
      LP_GPIO_22_SEL : PINMUX_SEL_2_LP_GPIO_22_SEL_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_GPIO_23
      LP_GPIO_23_SEL : PINMUX_SEL_2_LP_GPIO_23_SEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINMUX_SEL_2_Register use record
      LP_GPIO_16_SEL at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LP_GPIO_17_SEL at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LP_GPIO_18_SEL at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LP_GPIO_19_SEL at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LP_GPIO_20_SEL at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      LP_GPIO_21_SEL at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LP_GPIO_22_SEL at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      LP_GPIO_23_SEL at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Active Low Pull Enables for LPMCU Pads
   type PULL_ENABLE_Register is record
      --  Pull Enable for LP_GPIO_0
      LP_GPIO_0      : Boolean := False;
      --  Pull Enable for LP_GPIO_1
      LP_GPIO_1      : Boolean := False;
      --  Pull Enable for LP_GPIO_2
      LP_GPIO_2      : Boolean := False;
      --  Pull Enable for LP_GPIO_3
      LP_GPIO_3      : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Pull Enable for LP_GPIO_8
      LP_GPIO_8      : Boolean := False;
      --  Pull Enable for LP_GPIO_9
      LP_GPIO_9      : Boolean := False;
      --  Pull Enable for LP_GPIO_10
      LP_GPIO_10     : Boolean := False;
      --  Pull Enable for LP_GPIO_11
      LP_GPIO_11     : Boolean := False;
      --  Pull Enable for LP_GPIO_12
      LP_GPIO_12     : Boolean := False;
      --  Pull Enable for LP_GPIO_13
      LP_GPIO_13     : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PULL_ENABLE_Register use record
      LP_GPIO_0      at 0 range 0 .. 0;
      LP_GPIO_1      at 0 range 1 .. 1;
      LP_GPIO_2      at 0 range 2 .. 2;
      LP_GPIO_3      at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      LP_GPIO_8      at 0 range 8 .. 8;
      LP_GPIO_9      at 0 range 9 .. 9;
      LP_GPIO_10     at 0 range 10 .. 10;
      LP_GPIO_11     at 0 range 11 .. 11;
      LP_GPIO_12     at 0 range 12 .. 12;
      LP_GPIO_13     at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Controls the RTYPE (Pull Level) pad value for LPMCU Pads (0 = Pull Up)
   type RTYPE_PAD_0_Register is record
      --  Controls RTYPE (Pull Level) value for LP_GPIO_0
      LP_GPIO_0      : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_1
      LP_GPIO_1      : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_2
      LP_GPIO_2      : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_3
      LP_GPIO_3      : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Controls RTYPE (Pull Level) value for LP_GPIO_8
      LP_GPIO_8      : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_9
      LP_GPIO_9      : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_10
      LP_GPIO_10     : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_11
      LP_GPIO_11     : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_12
      LP_GPIO_12     : Boolean := False;
      --  Controls RTYPE (Pull Level) value LP_GPIO_13
      LP_GPIO_13     : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTYPE_PAD_0_Register use record
      LP_GPIO_0      at 0 range 0 .. 0;
      LP_GPIO_1      at 0 range 1 .. 1;
      LP_GPIO_2      at 0 range 2 .. 2;
      LP_GPIO_3      at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      LP_GPIO_8      at 0 range 8 .. 8;
      LP_GPIO_9      at 0 range 9 .. 9;
      LP_GPIO_10     at 0 range 10 .. 10;
      LP_GPIO_11     at 0 range 11 .. 11;
      LP_GPIO_12     at 0 range 12 .. 12;
      LP_GPIO_13     at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PINMUX_SEL_3_LP_SIP_0_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_3_LP_SIP_1_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_3_LP_SIP_2_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_3_LP_SIP_3_SEL_Field is HAL.UInt3;
   subtype PINMUX_SEL_3_LP_SIP_4_SEL_Field is HAL.UInt3;

   --  Pinmux select for LP_SIP_0, LP_SIP_1, LP_SIP_2, LP_SIP_3, LP_SIP_4
   type PINMUX_SEL_3_Register is record
      --  Pinmux select for LP_SIP_0
      LP_SIP_0_SEL   : PINMUX_SEL_3_LP_SIP_0_SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_SIP_1
      LP_SIP_1_SEL   : PINMUX_SEL_3_LP_SIP_1_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pinmux select for LP_SIP_2
      LP_SIP_2_SEL   : PINMUX_SEL_3_LP_SIP_2_SEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_SIP_3
      LP_SIP_3_SEL   : PINMUX_SEL_3_LP_SIP_3_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Pinmux select for LP_SIP_4
      LP_SIP_4_SEL   : PINMUX_SEL_3_LP_SIP_4_SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINMUX_SEL_3_Register use record
      LP_SIP_0_SEL   at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LP_SIP_1_SEL   at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LP_SIP_2_SEL   at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LP_SIP_3_SEL   at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LP_SIP_4_SEL   at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ISHAPE_PAD_3_LP_SIP_0_Field is HAL.UInt3;
   subtype ISHAPE_PAD_3_LP_SIP_1_Field is HAL.UInt3;
   subtype ISHAPE_PAD_3_LP_SIP_2_Field is HAL.UInt3;
   subtype ISHAPE_PAD_3_LP_SIP_3_Field is HAL.UInt3;
   subtype ISHAPE_PAD_3_LP_SIP_4_Field is HAL.UInt3;

   --  Controls the ISHAPE pad value for LPMCU SIP Pads
   type ISHAPE_PAD_3_Register is record
      --  Controls ISHAPE value LP_SIP_0
      LP_SIP_0       : ISHAPE_PAD_3_LP_SIP_0_Field := 16#5#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Controls ISHAPE value LP_SIP_1
      LP_SIP_1       : ISHAPE_PAD_3_LP_SIP_1_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Controls ISHAPE value LP_SIP_2
      LP_SIP_2       : ISHAPE_PAD_3_LP_SIP_2_Field := 16#5#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Controls ISHAPE value LP_SIP_3
      LP_SIP_3       : ISHAPE_PAD_3_LP_SIP_3_Field := 16#5#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Controls ISHAPE value LP_SIP_4
      LP_SIP_4       : ISHAPE_PAD_3_LP_SIP_4_Field := 16#5#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISHAPE_PAD_3_Register use record
      LP_SIP_0       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LP_SIP_1       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LP_SIP_2       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LP_SIP_3       at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LP_SIP_4       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PINMUX_SEL_4_LP_GPIO_24_SEL_Field is HAL.UInt3;

   --  Pinmux select for LP_GPIO_24
   type PINMUX_SEL_4_Register is record
      --  Pinmux select for LP_GPIO_24
      LP_GPIO_24_SEL : PINMUX_SEL_4_LP_GPIO_24_SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PINMUX_SEL_4_Register use record
      LP_GPIO_24_SEL at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
   end record;

   --  Control for VDDIO of SPI FLASH
   type SPIFLASH_VDDIO_CTRL_Register is record
      --  Enables power for the stacked (internal) SPI FLASH
      ENABLE       : Boolean := True;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPIFLASH_VDDIO_CTRL_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  SPI FLASH Bypass
   type SPIFLASH_BYPASS_Register is record
      --  Enables Bypass of SPI Flash Controller
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPIFLASH_BYPASS_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  IRQ_0 Source Selection
   type IRQ_MUX_IO_SEL_0_MUX_0_Field is
     (
      --  UART0 RX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_0_MUX_0_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_0_MUX_0_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_0_MUX_0_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_0_MUX_0_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_0_MUX_0_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_0_MUX_0_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_0_MUX_0_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_0_MUX_0_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_0_MUX_0_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_0_MUX_0_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_0_MUX_0_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_0_MUX_0_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_0_MUX_0_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_0_MUX_0_Field use
     (IRQ_MUX_IO_SEL_0_MUX_0_Field_0 => 0,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_1 => 1,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_2 => 2,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_3 => 3,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_4 => 4,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_5 => 5,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_6 => 6,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_9 => 9,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_10 => 10,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_11 => 11,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_12 => 12,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_13 => 13,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_14 => 14,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_15 => 15,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_16 => 16,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_17 => 17,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_18 => 18,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_19 => 19,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_20 => 20,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_21 => 21,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_22 => 22,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_23 => 23,
      IRQ_MUX_IO_SEL_0_MUX_0_Field_24 => 24);

   --  IRQ_1 Source Selection
   type IRQ_MUX_IO_SEL_0_MUX_1_Field is
     (
      --  UART0 TX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_0_MUX_1_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_0_MUX_1_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_0_MUX_1_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_0_MUX_1_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_0_MUX_1_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_0_MUX_1_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_0_MUX_1_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_0_MUX_1_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_0_MUX_1_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_0_MUX_1_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_0_MUX_1_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_0_MUX_1_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_0_MUX_1_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_0_MUX_1_Field use
     (IRQ_MUX_IO_SEL_0_MUX_1_Field_0 => 0,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_1 => 1,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_2 => 2,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_3 => 3,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_4 => 4,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_5 => 5,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_6 => 6,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_9 => 9,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_10 => 10,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_11 => 11,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_12 => 12,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_13 => 13,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_14 => 14,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_15 => 15,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_16 => 16,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_17 => 17,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_18 => 18,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_19 => 19,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_20 => 20,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_21 => 21,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_22 => 22,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_23 => 23,
      IRQ_MUX_IO_SEL_0_MUX_1_Field_24 => 24);

   --  IRQ_2 Source Selection
   type IRQ_MUX_IO_SEL_0_MUX_2_Field is
     (
      --  UART1 RX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_0_MUX_2_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_0_MUX_2_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_0_MUX_2_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_0_MUX_2_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_0_MUX_2_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_0_MUX_2_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_0_MUX_2_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_0_MUX_2_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_0_MUX_2_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_0_MUX_2_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_0_MUX_2_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_0_MUX_2_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_0_MUX_2_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_0_MUX_2_Field use
     (IRQ_MUX_IO_SEL_0_MUX_2_Field_0 => 0,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_1 => 1,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_2 => 2,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_3 => 3,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_4 => 4,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_5 => 5,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_6 => 6,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_9 => 9,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_10 => 10,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_11 => 11,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_12 => 12,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_13 => 13,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_14 => 14,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_15 => 15,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_16 => 16,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_17 => 17,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_18 => 18,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_19 => 19,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_20 => 20,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_21 => 21,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_22 => 22,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_23 => 23,
      IRQ_MUX_IO_SEL_0_MUX_2_Field_24 => 24);

   --  IRQ_3 Source Selection
   type IRQ_MUX_IO_SEL_0_MUX_3_Field is
     (
      --  UART1 TX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_0_MUX_3_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_0_MUX_3_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_0_MUX_3_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_0_MUX_3_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_0_MUX_3_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_0_MUX_3_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_0_MUX_3_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_0_MUX_3_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_0_MUX_3_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_0_MUX_3_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_0_MUX_3_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_0_MUX_3_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_0_MUX_3_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_0_MUX_3_Field use
     (IRQ_MUX_IO_SEL_0_MUX_3_Field_0 => 0,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_1 => 1,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_2 => 2,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_3 => 3,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_4 => 4,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_5 => 5,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_6 => 6,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_9 => 9,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_10 => 10,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_11 => 11,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_12 => 12,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_13 => 13,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_14 => 14,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_15 => 15,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_16 => 16,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_17 => 17,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_18 => 18,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_19 => 19,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_20 => 20,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_21 => 21,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_22 => 22,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_23 => 23,
      IRQ_MUX_IO_SEL_0_MUX_3_Field_24 => 24);

   --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
   type IRQ_MUX_IO_SEL_0_Register is record
      --  IRQ_0 Source Selection
      MUX_0          : IRQ_MUX_IO_SEL_0_MUX_0_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_0_MUX_0_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  IRQ_1 Source Selection
      MUX_1          : IRQ_MUX_IO_SEL_0_MUX_1_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_0_MUX_1_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  IRQ_2 Source Selection
      MUX_2          : IRQ_MUX_IO_SEL_0_MUX_2_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_0_MUX_2_Field_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  IRQ_3 Source Selection
      MUX_3          : IRQ_MUX_IO_SEL_0_MUX_3_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_0_MUX_3_Field_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_MUX_IO_SEL_0_Register use record
      MUX_0          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUX_1          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MUX_2          at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MUX_3          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  IRQ_4 Source Selection
   type IRQ_MUX_IO_SEL_1_MUX_4_Field is
     (
      --  SPI0 RX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_1_MUX_4_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_1_MUX_4_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_1_MUX_4_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_1_MUX_4_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_1_MUX_4_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_1_MUX_4_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_1_MUX_4_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_1_MUX_4_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_1_MUX_4_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_1_MUX_4_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_1_MUX_4_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_1_MUX_4_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_1_MUX_4_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_1_MUX_4_Field use
     (IRQ_MUX_IO_SEL_1_MUX_4_Field_0 => 0,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_1 => 1,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_2 => 2,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_3 => 3,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_4 => 4,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_5 => 5,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_6 => 6,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_9 => 9,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_10 => 10,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_11 => 11,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_12 => 12,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_13 => 13,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_14 => 14,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_15 => 15,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_16 => 16,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_17 => 17,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_18 => 18,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_19 => 19,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_20 => 20,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_21 => 21,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_22 => 22,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_23 => 23,
      IRQ_MUX_IO_SEL_1_MUX_4_Field_24 => 24);

   --  IRQ_5 Source Selection
   type IRQ_MUX_IO_SEL_1_MUX_5_Field is
     (
      --  SPI0 TX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_1_MUX_5_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_1_MUX_5_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_1_MUX_5_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_1_MUX_5_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_1_MUX_5_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_1_MUX_5_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_1_MUX_5_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_1_MUX_5_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_1_MUX_5_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_1_MUX_5_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_1_MUX_5_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_1_MUX_5_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_1_MUX_5_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_1_MUX_5_Field use
     (IRQ_MUX_IO_SEL_1_MUX_5_Field_0 => 0,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_1 => 1,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_2 => 2,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_3 => 3,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_4 => 4,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_5 => 5,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_6 => 6,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_9 => 9,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_10 => 10,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_11 => 11,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_12 => 12,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_13 => 13,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_14 => 14,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_15 => 15,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_16 => 16,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_17 => 17,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_18 => 18,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_19 => 19,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_20 => 20,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_21 => 21,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_22 => 22,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_23 => 23,
      IRQ_MUX_IO_SEL_1_MUX_5_Field_24 => 24);

   --  IRQ_6 Source Selection
   type IRQ_MUX_IO_SEL_1_MUX_6_Field is
     (
      --  Reset value for the field
      Irq_Mux_Io_Sel_1_Mux_6_Field_Reset,
      --  UART0 RX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_1_MUX_6_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_1_MUX_6_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_1_MUX_6_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_1_MUX_6_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_1_MUX_6_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_1_MUX_6_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_1_MUX_6_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_1_MUX_6_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_1_MUX_6_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_1_MUX_6_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_1_MUX_6_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_1_MUX_6_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_1_MUX_6_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_1_MUX_6_Field use
     (Irq_Mux_Io_Sel_1_Mux_6_Field_Reset => 0,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_1 => 1,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_2 => 2,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_3 => 3,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_4 => 4,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_5 => 5,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_6 => 6,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_9 => 9,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_10 => 10,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_11 => 11,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_12 => 12,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_13 => 13,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_14 => 14,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_15 => 15,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_16 => 16,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_17 => 17,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_18 => 18,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_19 => 19,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_20 => 20,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_21 => 21,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_22 => 22,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_23 => 23,
      IRQ_MUX_IO_SEL_1_MUX_6_Field_24 => 24);

   --  IRQ_7 Source Selection
   type IRQ_MUX_IO_SEL_1_MUX_7_Field is
     (
      --  Reset value for the field
      Irq_Mux_Io_Sel_1_Mux_7_Field_Reset,
      --  UART0 RX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_1_MUX_7_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_1_MUX_7_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_1_MUX_7_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_1_MUX_7_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_1_MUX_7_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_1_MUX_7_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_1_MUX_7_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_1_MUX_7_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_1_MUX_7_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_1_MUX_7_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_1_MUX_7_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_1_MUX_7_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_1_MUX_7_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_1_MUX_7_Field use
     (Irq_Mux_Io_Sel_1_Mux_7_Field_Reset => 0,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_1 => 1,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_2 => 2,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_3 => 3,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_4 => 4,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_5 => 5,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_6 => 6,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_9 => 9,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_10 => 10,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_11 => 11,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_12 => 12,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_13 => 13,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_14 => 14,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_15 => 15,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_16 => 16,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_17 => 17,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_18 => 18,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_19 => 19,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_20 => 20,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_21 => 21,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_22 => 22,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_23 => 23,
      IRQ_MUX_IO_SEL_1_MUX_7_Field_24 => 24);

   --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
   type IRQ_MUX_IO_SEL_1_Register is record
      --  IRQ_4 Source Selection
      MUX_4          : IRQ_MUX_IO_SEL_1_MUX_4_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_1_MUX_4_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  IRQ_5 Source Selection
      MUX_5          : IRQ_MUX_IO_SEL_1_MUX_5_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_1_MUX_5_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  IRQ_6 Source Selection
      MUX_6          : IRQ_MUX_IO_SEL_1_MUX_6_Field :=
                        Irq_Mux_Io_Sel_1_Mux_6_Field_Reset;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  IRQ_7 Source Selection
      MUX_7          : IRQ_MUX_IO_SEL_1_MUX_7_Field :=
                        Irq_Mux_Io_Sel_1_Mux_7_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_MUX_IO_SEL_1_Register use record
      MUX_4          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUX_5          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MUX_6          at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MUX_7          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  IRQ_8 Source Selection
   type IRQ_MUX_IO_SEL_2_MUX_8_Field is
     (
      --  I2C0 RX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_2_MUX_8_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_2_MUX_8_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_2_MUX_8_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_2_MUX_8_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_2_MUX_8_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_2_MUX_8_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_2_MUX_8_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_2_MUX_8_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_2_MUX_8_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_2_MUX_8_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_2_MUX_8_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_2_MUX_8_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_2_MUX_8_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_2_MUX_8_Field use
     (IRQ_MUX_IO_SEL_2_MUX_8_Field_0 => 0,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_1 => 1,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_2 => 2,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_3 => 3,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_4 => 4,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_5 => 5,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_6 => 6,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_9 => 9,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_10 => 10,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_11 => 11,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_12 => 12,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_13 => 13,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_14 => 14,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_15 => 15,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_16 => 16,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_17 => 17,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_18 => 18,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_19 => 19,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_20 => 20,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_21 => 21,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_22 => 22,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_23 => 23,
      IRQ_MUX_IO_SEL_2_MUX_8_Field_24 => 24);

   --  IRQ_9 Source Selection
   type IRQ_MUX_IO_SEL_2_MUX_9_Field is
     (
      --  I2C0 TX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_2_MUX_9_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_2_MUX_9_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_2_MUX_9_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_2_MUX_9_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_2_MUX_9_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_2_MUX_9_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_2_MUX_9_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_2_MUX_9_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_2_MUX_9_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_2_MUX_9_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_2_MUX_9_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_2_MUX_9_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_2_MUX_9_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_2_MUX_9_Field use
     (IRQ_MUX_IO_SEL_2_MUX_9_Field_0 => 0,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_1 => 1,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_2 => 2,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_3 => 3,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_4 => 4,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_5 => 5,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_6 => 6,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_9 => 9,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_10 => 10,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_11 => 11,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_12 => 12,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_13 => 13,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_14 => 14,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_15 => 15,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_16 => 16,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_17 => 17,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_18 => 18,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_19 => 19,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_20 => 20,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_21 => 21,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_22 => 22,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_23 => 23,
      IRQ_MUX_IO_SEL_2_MUX_9_Field_24 => 24);

   --  IRQ_10 Source Selection
   type IRQ_MUX_IO_SEL_2_MUX_10_Field is
     (
      --  I2C1 RX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_2_MUX_10_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_2_MUX_10_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_2_MUX_10_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_2_MUX_10_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_2_MUX_10_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_2_MUX_10_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_2_MUX_10_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_2_MUX_10_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_2_MUX_10_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_2_MUX_10_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_2_MUX_10_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_2_MUX_10_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_2_MUX_10_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_2_MUX_10_Field use
     (IRQ_MUX_IO_SEL_2_MUX_10_Field_0 => 0,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_1 => 1,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_2 => 2,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_3 => 3,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_4 => 4,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_5 => 5,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_6 => 6,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_9 => 9,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_10 => 10,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_11 => 11,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_12 => 12,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_13 => 13,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_14 => 14,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_15 => 15,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_16 => 16,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_17 => 17,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_18 => 18,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_19 => 19,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_20 => 20,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_21 => 21,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_22 => 22,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_23 => 23,
      IRQ_MUX_IO_SEL_2_MUX_10_Field_24 => 24);

   --  IRQ_11 Source Selection
   type IRQ_MUX_IO_SEL_2_MUX_11_Field is
     (
      --  I2C1 TX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_2_MUX_11_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_2_MUX_11_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_2_MUX_11_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_2_MUX_11_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_2_MUX_11_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_2_MUX_11_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_2_MUX_11_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_2_MUX_11_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_2_MUX_11_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_2_MUX_11_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_2_MUX_11_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_2_MUX_11_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_2_MUX_11_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_2_MUX_11_Field use
     (IRQ_MUX_IO_SEL_2_MUX_11_Field_0 => 0,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_1 => 1,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_2 => 2,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_3 => 3,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_4 => 4,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_5 => 5,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_6 => 6,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_9 => 9,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_10 => 10,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_11 => 11,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_12 => 12,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_13 => 13,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_14 => 14,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_15 => 15,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_16 => 16,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_17 => 17,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_18 => 18,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_19 => 19,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_20 => 20,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_21 => 21,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_22 => 22,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_23 => 23,
      IRQ_MUX_IO_SEL_2_MUX_11_Field_24 => 24);

   --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
   type IRQ_MUX_IO_SEL_2_Register is record
      --  IRQ_8 Source Selection
      MUX_8          : IRQ_MUX_IO_SEL_2_MUX_8_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_2_MUX_8_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  IRQ_9 Source Selection
      MUX_9          : IRQ_MUX_IO_SEL_2_MUX_9_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_2_MUX_9_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  IRQ_10 Source Selection
      MUX_10         : IRQ_MUX_IO_SEL_2_MUX_10_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_2_MUX_10_Field_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  IRQ_11 Source Selection
      MUX_11         : IRQ_MUX_IO_SEL_2_MUX_11_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_2_MUX_11_Field_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_MUX_IO_SEL_2_Register use record
      MUX_8          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUX_9          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MUX_10         at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MUX_11         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  IRQ_12 Source Selection
   type IRQ_MUX_IO_SEL_3_MUX_12_Field is
     (
      --  WDT0
      IRQ_MUX_IO_SEL_3_MUX_12_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_3_MUX_12_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_3_MUX_12_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_3_MUX_12_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_3_MUX_12_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_3_MUX_12_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_3_MUX_12_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_3_MUX_12_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_3_MUX_12_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_3_MUX_12_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_3_MUX_12_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_3_MUX_12_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_3_MUX_12_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_3_MUX_12_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_3_MUX_12_Field use
     (IRQ_MUX_IO_SEL_3_MUX_12_Field_0 => 0,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_1 => 1,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_2 => 2,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_3 => 3,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_4 => 4,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_5 => 5,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_6 => 6,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_9 => 9,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_10 => 10,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_11 => 11,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_12 => 12,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_13 => 13,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_14 => 14,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_15 => 15,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_16 => 16,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_17 => 17,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_18 => 18,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_19 => 19,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_20 => 20,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_21 => 21,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_22 => 22,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_23 => 23,
      IRQ_MUX_IO_SEL_3_MUX_12_Field_24 => 24);

   --  IRQ_13 Source Selection
   type IRQ_MUX_IO_SEL_3_MUX_13_Field is
     (
      --  WDT1
      IRQ_MUX_IO_SEL_3_MUX_13_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_3_MUX_13_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_3_MUX_13_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_3_MUX_13_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_3_MUX_13_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_3_MUX_13_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_3_MUX_13_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_3_MUX_13_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_3_MUX_13_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_3_MUX_13_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_3_MUX_13_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_3_MUX_13_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_3_MUX_13_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_3_MUX_13_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_3_MUX_13_Field use
     (IRQ_MUX_IO_SEL_3_MUX_13_Field_0 => 0,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_1 => 1,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_2 => 2,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_3 => 3,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_4 => 4,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_5 => 5,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_6 => 6,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_9 => 9,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_10 => 10,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_11 => 11,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_12 => 12,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_13 => 13,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_14 => 14,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_15 => 15,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_16 => 16,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_17 => 17,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_18 => 18,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_19 => 19,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_20 => 20,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_21 => 21,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_22 => 22,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_23 => 23,
      IRQ_MUX_IO_SEL_3_MUX_13_Field_24 => 24);

   --  IRQ_14 Source Selection
   type IRQ_MUX_IO_SEL_3_MUX_14_Field is
     (
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_3_MUX_14_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_3_MUX_14_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_3_MUX_14_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_3_MUX_14_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_3_MUX_14_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_3_MUX_14_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_3_MUX_14_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_3_MUX_14_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_3_MUX_14_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_3_MUX_14_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_3_MUX_14_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_3_MUX_14_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_3_MUX_14_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_3_MUX_14_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_3_MUX_14_Field use
     (IRQ_MUX_IO_SEL_3_MUX_14_Field_0 => 0,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_1 => 1,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_2 => 2,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_3 => 3,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_4 => 4,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_5 => 5,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_6 => 6,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_9 => 9,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_10 => 10,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_11 => 11,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_12 => 12,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_13 => 13,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_14 => 14,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_15 => 15,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_16 => 16,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_17 => 17,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_18 => 18,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_19 => 19,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_20 => 20,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_21 => 21,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_22 => 22,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_23 => 23,
      IRQ_MUX_IO_SEL_3_MUX_14_Field_24 => 24);

   --  IRQ_15 Source Selection
   type IRQ_MUX_IO_SEL_3_MUX_15_Field is
     (
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_3_MUX_15_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_3_MUX_15_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_3_MUX_15_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_3_MUX_15_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_3_MUX_15_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_3_MUX_15_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_3_MUX_15_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_3_MUX_15_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_3_MUX_15_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_3_MUX_15_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_3_MUX_15_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_3_MUX_15_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_3_MUX_15_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_3_MUX_15_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_3_MUX_15_Field use
     (IRQ_MUX_IO_SEL_3_MUX_15_Field_0 => 0,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_1 => 1,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_2 => 2,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_3 => 3,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_4 => 4,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_5 => 5,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_6 => 6,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_9 => 9,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_10 => 10,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_11 => 11,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_12 => 12,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_13 => 13,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_14 => 14,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_15 => 15,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_16 => 16,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_17 => 17,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_18 => 18,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_19 => 19,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_20 => 20,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_21 => 21,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_22 => 22,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_23 => 23,
      IRQ_MUX_IO_SEL_3_MUX_15_Field_24 => 24);

   --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
   type IRQ_MUX_IO_SEL_3_Register is record
      --  IRQ_12 Source Selection
      MUX_12         : IRQ_MUX_IO_SEL_3_MUX_12_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_3_MUX_12_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  IRQ_13 Source Selection
      MUX_13         : IRQ_MUX_IO_SEL_3_MUX_13_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_3_MUX_13_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  IRQ_14 Source Selection
      MUX_14         : IRQ_MUX_IO_SEL_3_MUX_14_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_3_MUX_14_Field_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  IRQ_15 Source Selection
      MUX_15         : IRQ_MUX_IO_SEL_3_MUX_15_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_3_MUX_15_Field_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_MUX_IO_SEL_3_Register use record
      MUX_12         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUX_13         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MUX_14         at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MUX_15         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  IRQ_16 Source Selection
   type IRQ_MUX_IO_SEL_4_MUX_16_Field is
     (
      --  SECURITY
      IRQ_MUX_IO_SEL_4_MUX_16_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_4_MUX_16_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_4_MUX_16_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_4_MUX_16_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_4_MUX_16_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_4_MUX_16_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_4_MUX_16_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_4_MUX_16_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_4_MUX_16_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_4_MUX_16_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_4_MUX_16_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_4_MUX_16_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_4_MUX_16_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_4_MUX_16_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_4_MUX_16_Field use
     (IRQ_MUX_IO_SEL_4_MUX_16_Field_0 => 0,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_1 => 1,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_2 => 2,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_3 => 3,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_4 => 4,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_5 => 5,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_6 => 6,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_9 => 9,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_10 => 10,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_11 => 11,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_12 => 12,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_13 => 13,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_14 => 14,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_15 => 15,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_16 => 16,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_17 => 17,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_18 => 18,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_19 => 19,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_20 => 20,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_21 => 21,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_22 => 22,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_23 => 23,
      IRQ_MUX_IO_SEL_4_MUX_16_Field_24 => 24);

   --  IRQ_17 Source Selection
   type IRQ_MUX_IO_SEL_4_MUX_17_Field is
     (
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_4_MUX_17_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_4_MUX_17_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_4_MUX_17_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_4_MUX_17_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_4_MUX_17_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_4_MUX_17_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_4_MUX_17_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_4_MUX_17_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_4_MUX_17_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_4_MUX_17_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_4_MUX_17_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_4_MUX_17_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_4_MUX_17_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_4_MUX_17_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_4_MUX_17_Field use
     (IRQ_MUX_IO_SEL_4_MUX_17_Field_0 => 0,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_1 => 1,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_2 => 2,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_3 => 3,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_4 => 4,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_5 => 5,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_6 => 6,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_9 => 9,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_10 => 10,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_11 => 11,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_12 => 12,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_13 => 13,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_14 => 14,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_15 => 15,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_16 => 16,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_17 => 17,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_18 => 18,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_19 => 19,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_20 => 20,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_21 => 21,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_22 => 22,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_23 => 23,
      IRQ_MUX_IO_SEL_4_MUX_17_Field_24 => 24);

   --  IRQ_18 Source Selection
   type IRQ_MUX_IO_SEL_4_MUX_18_Field is
     (
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_4_MUX_18_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_4_MUX_18_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_4_MUX_18_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_4_MUX_18_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_4_MUX_18_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_4_MUX_18_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_4_MUX_18_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_4_MUX_18_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_4_MUX_18_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_4_MUX_18_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_4_MUX_18_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_4_MUX_18_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_4_MUX_18_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_4_MUX_18_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_4_MUX_18_Field use
     (IRQ_MUX_IO_SEL_4_MUX_18_Field_0 => 0,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_1 => 1,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_2 => 2,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_3 => 3,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_4 => 4,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_5 => 5,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_6 => 6,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_9 => 9,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_10 => 10,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_11 => 11,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_12 => 12,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_13 => 13,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_14 => 14,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_15 => 15,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_16 => 16,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_17 => 17,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_18 => 18,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_19 => 19,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_20 => 20,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_21 => 21,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_22 => 22,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_23 => 23,
      IRQ_MUX_IO_SEL_4_MUX_18_Field_24 => 24);

   --  IRQ_19 Source Selection
   type IRQ_MUX_IO_SEL_4_MUX_19_Field is
     (
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_4_MUX_19_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_4_MUX_19_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_4_MUX_19_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_4_MUX_19_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_4_MUX_19_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_4_MUX_19_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_4_MUX_19_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_4_MUX_19_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_4_MUX_19_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_4_MUX_19_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_4_MUX_19_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_4_MUX_19_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_4_MUX_19_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_4_MUX_19_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_4_MUX_19_Field use
     (IRQ_MUX_IO_SEL_4_MUX_19_Field_0 => 0,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_1 => 1,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_2 => 2,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_3 => 3,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_4 => 4,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_5 => 5,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_6 => 6,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_9 => 9,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_10 => 10,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_11 => 11,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_12 => 12,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_13 => 13,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_14 => 14,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_15 => 15,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_16 => 16,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_17 => 17,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_18 => 18,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_19 => 19,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_20 => 20,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_21 => 21,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_22 => 22,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_23 => 23,
      IRQ_MUX_IO_SEL_4_MUX_19_Field_24 => 24);

   --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
   type IRQ_MUX_IO_SEL_4_Register is record
      --  IRQ_16 Source Selection
      MUX_16         : IRQ_MUX_IO_SEL_4_MUX_16_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_4_MUX_16_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  IRQ_17 Source Selection
      MUX_17         : IRQ_MUX_IO_SEL_4_MUX_17_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_4_MUX_17_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  IRQ_18 Source Selection
      MUX_18         : IRQ_MUX_IO_SEL_4_MUX_18_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_4_MUX_18_Field_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  IRQ_19 Source Selection
      MUX_19         : IRQ_MUX_IO_SEL_4_MUX_19_Field :=
                        SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_4_MUX_19_Field_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_MUX_IO_SEL_4_Register use record
      MUX_16         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MUX_17         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MUX_18         at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MUX_19         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  IRQ_20 Source Selection
   type IRQ_MUX_IO_SEL_5_MUX_20_Field is
     (
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_5_MUX_20_Field_0,
      --  UART0 RX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_1,
      --  UART0 TX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_2,
      --  UART1 RX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_3,
      --  UART1 TX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_4,
      --  SPI0 RX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_5,
      --  SPI0 TX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_6,
      --  I2C0 RX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_9,
      --  I2C0 TX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_10,
      --  I2C1 RX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_11,
      --  I2C1 TX
      IRQ_MUX_IO_SEL_5_MUX_20_Field_12,
      --  WDT0
      IRQ_MUX_IO_SEL_5_MUX_20_Field_13,
      --  WDT1
      IRQ_MUX_IO_SEL_5_MUX_20_Field_14,
      --  DUALTIMER0
      IRQ_MUX_IO_SEL_5_MUX_20_Field_15,
      --  PROV_DMA_CTRL0
      IRQ_MUX_IO_SEL_5_MUX_20_Field_16,
      --  SECURITY
      IRQ_MUX_IO_SEL_5_MUX_20_Field_17,
      --  EFUSE_OUT_OF_RESET
      IRQ_MUX_IO_SEL_5_MUX_20_Field_18,
      --  QUAD_DEC0_1_2
      IRQ_MUX_IO_SEL_5_MUX_20_Field_19,
      --  BLE_FRONTEND
      IRQ_MUX_IO_SEL_5_MUX_20_Field_20,
      --  PROG_AHB_TRIG_TIMEOUT
      IRQ_MUX_IO_SEL_5_MUX_20_Field_21,
      --  SXPLL_NEED_RESET
      IRQ_MUX_IO_SEL_5_MUX_20_Field_22,
      --  LP_CLK_CAL_DONE
      IRQ_MUX_IO_SEL_5_MUX_20_Field_23,
      --  BROWNOUT_DETECTED
      IRQ_MUX_IO_SEL_5_MUX_20_Field_24)
     with Size => 5;
   for IRQ_MUX_IO_SEL_5_MUX_20_Field use
     (IRQ_MUX_IO_SEL_5_MUX_20_Field_0 => 0,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_1 => 1,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_2 => 2,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_3 => 3,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_4 => 4,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_5 => 5,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_6 => 6,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_9 => 9,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_10 => 10,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_11 => 11,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_12 => 12,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_13 => 13,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_14 => 14,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_15 => 15,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_16 => 16,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_17 => 17,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_18 => 18,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_19 => 19,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_20 => 20,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_21 => 21,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_22 => 22,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_23 => 23,
      IRQ_MUX_IO_SEL_5_MUX_20_Field_24 => 24);

   --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
   type IRQ_MUX_IO_SEL_5_Register is record
      --  IRQ_20 Source Selection
      MUX_20       : IRQ_MUX_IO_SEL_5_MUX_20_Field :=
                      SAM_SVD.LPMCU_MISC_REGS.IRQ_MUX_IO_SEL_5_MUX_20_Field_0;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for IRQ_MUX_IO_SEL_5_Register use record
      MUX_20       at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Sample Method
   type PWM_1_CONTROL_SAMPLE_METHOD_Field is
     (
      --  Samples agcdata at >= 1024 cycles and does not lose precision
      PWM_1_CONTROL_SAMPLE_METHOD_Field_0,
      --  Samples at PWM period but will lose LSBs if less than 1024
      PWM_1_CONTROL_SAMPLE_METHOD_Field_1)
     with Size => 1;
   for PWM_1_CONTROL_SAMPLE_METHOD_Field use
     (PWM_1_CONTROL_SAMPLE_METHOD_Field_0 => 0,
      PWM_1_CONTROL_SAMPLE_METHOD_Field_1 => 1);

   subtype PWM_1_CONTROL_PWM_PERIOD_Field is HAL.UInt4;
   subtype PWM_1_CONTROL_AGCDATA_IN_Field is HAL.UInt10;

   --  PWM Source Clock Frequency Select
   type PWM_1_CONTROL_CLOCK_SEL_Field is
     (
      --  26MHz
      PWM_1_CONTROL_CLOCK_SEL_Field_0,
      --  13MHz
      PWM_1_CONTROL_CLOCK_SEL_Field_1,
      --  6.5MHz
      PWM_1_CONTROL_CLOCK_SEL_Field_2,
      --  3.25MHz
      PWM_1_CONTROL_CLOCK_SEL_Field_3)
     with Size => 2;
   for PWM_1_CONTROL_CLOCK_SEL_Field use
     (PWM_1_CONTROL_CLOCK_SEL_Field_0 => 0,
      PWM_1_CONTROL_CLOCK_SEL_Field_1 => 1,
      PWM_1_CONTROL_CLOCK_SEL_Field_2 => 2,
      PWM_1_CONTROL_CLOCK_SEL_Field_3 => 3);

   --  PWM 1 Control Register
   type PWM_1_CONTROL_Register is record
      --  Active High PWM Enable
      PWM_EN          : Boolean := False;
      --  1 to inverse the polarity
      OUTPUT_POLARITY : Boolean := False;
      --  AGC data format
      AGCDATA_FMT     : Boolean := False;
      --  Sample Method
      SAMPLE_METHOD   : PWM_1_CONTROL_SAMPLE_METHOD_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_1_CONTROL_SAMPLE_METHOD_Field_0;
      --  unspecified
      Reserved_4_4    : HAL.Bit := 16#0#;
      --  programmable PWM update period
      PWM_PERIOD      : PWM_1_CONTROL_PWM_PERIOD_Field := 16#0#;
      --  agc value from AGC
      AGCDATA_IN      : PWM_1_CONTROL_AGCDATA_IN_Field := 16#0#;
      --  unspecified
      Reserved_19_20  : HAL.UInt2 := 16#0#;
      --  PWM Source Clock Frequency Select
      CLOCK_SEL       : PWM_1_CONTROL_CLOCK_SEL_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_1_CONTROL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_1_CONTROL_Register use record
      PWM_EN          at 0 range 0 .. 0;
      OUTPUT_POLARITY at 0 range 1 .. 1;
      AGCDATA_FMT     at 0 range 2 .. 2;
      SAMPLE_METHOD   at 0 range 3 .. 3;
      Reserved_4_4    at 0 range 4 .. 4;
      PWM_PERIOD      at 0 range 5 .. 8;
      AGCDATA_IN      at 0 range 9 .. 18;
      Reserved_19_20  at 0 range 19 .. 20;
      CLOCK_SEL       at 0 range 21 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   --  Sample Method
   type PWM_2_CONTROL_SAMPLE_METHOD_Field is
     (
      --  Samples agcdata at >= 1024 cycles and does not lose precision
      PWM_2_CONTROL_SAMPLE_METHOD_Field_0,
      --  Samples at PWM period but will lose LSBs if less than 1024
      PWM_2_CONTROL_SAMPLE_METHOD_Field_1)
     with Size => 1;
   for PWM_2_CONTROL_SAMPLE_METHOD_Field use
     (PWM_2_CONTROL_SAMPLE_METHOD_Field_0 => 0,
      PWM_2_CONTROL_SAMPLE_METHOD_Field_1 => 1);

   subtype PWM_2_CONTROL_PWM_PERIOD_Field is HAL.UInt4;
   subtype PWM_2_CONTROL_AGCDATA_IN_Field is HAL.UInt10;

   --  PWM Source Clock Frequency Select
   type PWM_2_CONTROL_CLOCK_SEL_Field is
     (
      --  26MHz
      PWM_2_CONTROL_CLOCK_SEL_Field_0,
      --  13MHz
      PWM_2_CONTROL_CLOCK_SEL_Field_1,
      --  6.5MHz
      PWM_2_CONTROL_CLOCK_SEL_Field_2,
      --  3.25MHz
      PWM_2_CONTROL_CLOCK_SEL_Field_3)
     with Size => 2;
   for PWM_2_CONTROL_CLOCK_SEL_Field use
     (PWM_2_CONTROL_CLOCK_SEL_Field_0 => 0,
      PWM_2_CONTROL_CLOCK_SEL_Field_1 => 1,
      PWM_2_CONTROL_CLOCK_SEL_Field_2 => 2,
      PWM_2_CONTROL_CLOCK_SEL_Field_3 => 3);

   --  PWM 2 Control Register
   type PWM_2_CONTROL_Register is record
      --  Active High PWM Enable
      PWM_EN          : Boolean := False;
      --  1 to inverse the polarity
      OUTPUT_POLARITY : Boolean := False;
      --  AGC data format
      AGCDATA_FMT     : Boolean := False;
      --  Sample Method
      SAMPLE_METHOD   : PWM_2_CONTROL_SAMPLE_METHOD_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_2_CONTROL_SAMPLE_METHOD_Field_0;
      --  unspecified
      Reserved_4_4    : HAL.Bit := 16#0#;
      --  programmable PWM update period
      PWM_PERIOD      : PWM_2_CONTROL_PWM_PERIOD_Field := 16#0#;
      --  agc value from AGC
      AGCDATA_IN      : PWM_2_CONTROL_AGCDATA_IN_Field := 16#0#;
      --  unspecified
      Reserved_19_20  : HAL.UInt2 := 16#0#;
      --  PWM Source Clock Frequency Select
      CLOCK_SEL       : PWM_2_CONTROL_CLOCK_SEL_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_2_CONTROL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_2_CONTROL_Register use record
      PWM_EN          at 0 range 0 .. 0;
      OUTPUT_POLARITY at 0 range 1 .. 1;
      AGCDATA_FMT     at 0 range 2 .. 2;
      SAMPLE_METHOD   at 0 range 3 .. 3;
      Reserved_4_4    at 0 range 4 .. 4;
      PWM_PERIOD      at 0 range 5 .. 8;
      AGCDATA_IN      at 0 range 9 .. 18;
      Reserved_19_20  at 0 range 19 .. 20;
      CLOCK_SEL       at 0 range 21 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   --  Sample Method
   type PWM_3_CONTROL_SAMPLE_METHOD_Field is
     (
      --  Samples agcdata at >= 1024 cycles and does not lose precision
      PWM_3_CONTROL_SAMPLE_METHOD_Field_0,
      --  Samples at PWM period but will lose LSBs if less than 1024
      PWM_3_CONTROL_SAMPLE_METHOD_Field_1)
     with Size => 1;
   for PWM_3_CONTROL_SAMPLE_METHOD_Field use
     (PWM_3_CONTROL_SAMPLE_METHOD_Field_0 => 0,
      PWM_3_CONTROL_SAMPLE_METHOD_Field_1 => 1);

   subtype PWM_3_CONTROL_PWM_PERIOD_Field is HAL.UInt4;
   subtype PWM_3_CONTROL_AGCDATA_IN_Field is HAL.UInt10;

   --  PWM Source Clock Frequency Select
   type PWM_3_CONTROL_CLOCK_SEL_Field is
     (
      --  26MHz
      PWM_3_CONTROL_CLOCK_SEL_Field_0,
      --  13MHz
      PWM_3_CONTROL_CLOCK_SEL_Field_1,
      --  6.5MHz
      PWM_3_CONTROL_CLOCK_SEL_Field_2,
      --  3.25MHz
      PWM_3_CONTROL_CLOCK_SEL_Field_3)
     with Size => 2;
   for PWM_3_CONTROL_CLOCK_SEL_Field use
     (PWM_3_CONTROL_CLOCK_SEL_Field_0 => 0,
      PWM_3_CONTROL_CLOCK_SEL_Field_1 => 1,
      PWM_3_CONTROL_CLOCK_SEL_Field_2 => 2,
      PWM_3_CONTROL_CLOCK_SEL_Field_3 => 3);

   --  PWM 3 Control Register
   type PWM_3_CONTROL_Register is record
      --  Active High PWM Enable
      PWM_EN          : Boolean := False;
      --  1 to inverse the polarity
      OUTPUT_POLARITY : Boolean := False;
      --  AGC data format
      AGCDATA_FMT     : Boolean := False;
      --  Sample Method
      SAMPLE_METHOD   : PWM_3_CONTROL_SAMPLE_METHOD_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_3_CONTROL_SAMPLE_METHOD_Field_0;
      --  unspecified
      Reserved_4_4    : HAL.Bit := 16#0#;
      --  programmable PWM update period
      PWM_PERIOD      : PWM_3_CONTROL_PWM_PERIOD_Field := 16#0#;
      --  agc value from AGC
      AGCDATA_IN      : PWM_3_CONTROL_AGCDATA_IN_Field := 16#0#;
      --  unspecified
      Reserved_19_20  : HAL.UInt2 := 16#0#;
      --  PWM Source Clock Frequency Select
      CLOCK_SEL       : PWM_3_CONTROL_CLOCK_SEL_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_3_CONTROL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_3_CONTROL_Register use record
      PWM_EN          at 0 range 0 .. 0;
      OUTPUT_POLARITY at 0 range 1 .. 1;
      AGCDATA_FMT     at 0 range 2 .. 2;
      SAMPLE_METHOD   at 0 range 3 .. 3;
      Reserved_4_4    at 0 range 4 .. 4;
      PWM_PERIOD      at 0 range 5 .. 8;
      AGCDATA_IN      at 0 range 9 .. 18;
      Reserved_19_20  at 0 range 19 .. 20;
      CLOCK_SEL       at 0 range 21 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   --  Sample Method
   type PWM_4_CONTROL_SAMPLE_METHOD_Field is
     (
      --  Samples agcdata at >= 1024 cycles and does not lose precision
      PWM_4_CONTROL_SAMPLE_METHOD_Field_0,
      --  Samples at PWM period but will lose LSBs if less than 1024
      PWM_4_CONTROL_SAMPLE_METHOD_Field_1)
     with Size => 1;
   for PWM_4_CONTROL_SAMPLE_METHOD_Field use
     (PWM_4_CONTROL_SAMPLE_METHOD_Field_0 => 0,
      PWM_4_CONTROL_SAMPLE_METHOD_Field_1 => 1);

   subtype PWM_4_CONTROL_PWM_PERIOD_Field is HAL.UInt4;
   subtype PWM_4_CONTROL_AGCDATA_IN_Field is HAL.UInt10;

   --  PWM Source Clock Frequency Select
   type PWM_4_CONTROL_CLOCK_SEL_Field is
     (
      --  26MHz
      PWM_4_CONTROL_CLOCK_SEL_Field_0,
      --  13MHz
      PWM_4_CONTROL_CLOCK_SEL_Field_1,
      --  6.5MHz
      PWM_4_CONTROL_CLOCK_SEL_Field_2,
      --  3.25MHz
      PWM_4_CONTROL_CLOCK_SEL_Field_3)
     with Size => 2;
   for PWM_4_CONTROL_CLOCK_SEL_Field use
     (PWM_4_CONTROL_CLOCK_SEL_Field_0 => 0,
      PWM_4_CONTROL_CLOCK_SEL_Field_1 => 1,
      PWM_4_CONTROL_CLOCK_SEL_Field_2 => 2,
      PWM_4_CONTROL_CLOCK_SEL_Field_3 => 3);

   --  PWM 4 Control Register
   type PWM_4_CONTROL_Register is record
      --  Active High PWM Enable
      PWM_EN          : Boolean := False;
      --  1 to inverse the polarity
      OUTPUT_POLARITY : Boolean := False;
      --  AGC data format
      AGCDATA_FMT     : Boolean := False;
      --  Sample Method
      SAMPLE_METHOD   : PWM_4_CONTROL_SAMPLE_METHOD_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_4_CONTROL_SAMPLE_METHOD_Field_0;
      --  unspecified
      Reserved_4_4    : HAL.Bit := 16#0#;
      --  programmable PWM update period
      PWM_PERIOD      : PWM_4_CONTROL_PWM_PERIOD_Field := 16#0#;
      --  agc value from AGC
      AGCDATA_IN      : PWM_4_CONTROL_AGCDATA_IN_Field := 16#0#;
      --  unspecified
      Reserved_19_20  : HAL.UInt2 := 16#0#;
      --  PWM Source Clock Frequency Select
      CLOCK_SEL       : PWM_4_CONTROL_CLOCK_SEL_Field :=
                         SAM_SVD.LPMCU_MISC_REGS.PWM_4_CONTROL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_4_CONTROL_Register use record
      PWM_EN          at 0 range 0 .. 0;
      OUTPUT_POLARITY at 0 range 1 .. 1;
      AGCDATA_FMT     at 0 range 2 .. 2;
      SAMPLE_METHOD   at 0 range 3 .. 3;
      Reserved_4_4    at 0 range 4 .. 4;
      PWM_PERIOD      at 0 range 5 .. 8;
      AGCDATA_IN      at 0 range 9 .. 18;
      Reserved_19_20  at 0 range 19 .. 20;
      CLOCK_SEL       at 0 range 21 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   subtype MBIST_DUAL_STATUS_MBIST_BUS_Field is HAL.UInt21;

   --  Reflects the status of MBIST from lpmcu and btmcu
   type MBIST_DUAL_STATUS_Register is record
      --  Read-only. Observation of lpmcu and btmcu MBIST results
      MBIST_BUS      : MBIST_DUAL_STATUS_MBIST_BUS_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBIST_DUAL_STATUS_Register use record
      MBIST_BUS      at 0 range 0 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Dual Timer Control
   type DUALTIMER_CTRL_Register is record
      --  Enable Dual Timer 1 Decoder
      CNTR_1_ENABLE : Boolean := False;
      --  Enable Dual Timer 2 Decoder
      CNTR_2_ENABLE : Boolean := False;
      --  unspecified
      Reserved_2_7  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DUALTIMER_CTRL_Register use record
      CNTR_1_ENABLE at 0 range 0 .. 0;
      CNTR_2_ENABLE at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
   end record;

   --  Sleep and Wakeup Control for the AON Power Sequencer
   type ARM_SLEEP_WAKEUP_CTRL_Register is record
      --  Sleep Request 1 from the ARM to the AON Power Sequencer
      SLEEP_1        : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Wakeup Request from the ARM to the AON Power Sequencer
      WAKEUP         : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Wakeup Request from the ARM to the RxTx Sequencer
      RXTX_WAKEUP    : Boolean := True;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARM_SLEEP_WAKEUP_CTRL_Register use record
      SLEEP_1        at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      WAKEUP         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      RXTX_WAKEUP    at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  LP_GPIO_0 mega mux selection
   type MEGA_MUX_IO_SEL_0_LP_GPIO_0_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_0_LP_GPIO_0_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_0_Lp_Gpio_0_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_0_LP_GPIO_0_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_0_LP_GPIO_0_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_0_Lp_Gpio_0_Field_Reset => 63);

   --  LP_GPIO_1 mega mux selection
   type MEGA_MUX_IO_SEL_0_LP_GPIO_1_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_0_LP_GPIO_1_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_0_Lp_Gpio_1_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_0_LP_GPIO_1_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_0_LP_GPIO_1_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_0_Lp_Gpio_1_Field_Reset => 63);

   --  LP_GPIO_2 mega mux selection
   type MEGA_MUX_IO_SEL_0_LP_GPIO_2_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_0_LP_GPIO_2_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_0_Lp_Gpio_2_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_0_LP_GPIO_2_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_0_LP_GPIO_2_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_0_Lp_Gpio_2_Field_Reset => 63);

   --  LP_GPIO_3 mega mux selection
   type MEGA_MUX_IO_SEL_0_LP_GPIO_3_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_0_LP_GPIO_3_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_0_Lp_Gpio_3_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_0_LP_GPIO_3_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_0_LP_GPIO_3_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_0_Lp_Gpio_3_Field_Reset => 63);

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_0_Register is record
      --  LP_GPIO_0 mega mux selection
      LP_GPIO_0      : MEGA_MUX_IO_SEL_0_LP_GPIO_0_Field :=
                        Mega_Mux_Io_Sel_0_Lp_Gpio_0_Field_Reset;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  LP_GPIO_1 mega mux selection
      LP_GPIO_1      : MEGA_MUX_IO_SEL_0_LP_GPIO_1_Field :=
                        Mega_Mux_Io_Sel_0_Lp_Gpio_1_Field_Reset;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_2 mega mux selection
      LP_GPIO_2      : MEGA_MUX_IO_SEL_0_LP_GPIO_2_Field :=
                        Mega_Mux_Io_Sel_0_Lp_Gpio_2_Field_Reset;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_3 mega mux selection
      LP_GPIO_3      : MEGA_MUX_IO_SEL_0_LP_GPIO_3_Field :=
                        Mega_Mux_Io_Sel_0_Lp_Gpio_3_Field_Reset;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_0_Register use record
      LP_GPIO_0      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LP_GPIO_1      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LP_GPIO_2      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LP_GPIO_3      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MEGA_MUX_IO_SEL_1_LP_GPIO_4_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_1_LP_GPIO_5_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_1_LP_GPIO_6_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_1_LP_GPIO_7_Field is HAL.UInt6;

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_1_Register is record
      --  LP_GPIO_4 mega mux selection
      LP_GPIO_4      : MEGA_MUX_IO_SEL_1_LP_GPIO_4_Field := 16#3F#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  LP_GPIO_5 mega mux selection
      LP_GPIO_5      : MEGA_MUX_IO_SEL_1_LP_GPIO_5_Field := 16#3F#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_6 mega mux selection
      LP_GPIO_6      : MEGA_MUX_IO_SEL_1_LP_GPIO_6_Field := 16#3F#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_7 mega mux selection
      LP_GPIO_7      : MEGA_MUX_IO_SEL_1_LP_GPIO_7_Field := 16#3F#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_1_Register use record
      LP_GPIO_4      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LP_GPIO_5      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LP_GPIO_6      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LP_GPIO_7      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  LP_GPIO_8 mega mux selection
   type MEGA_MUX_IO_SEL_2_LP_GPIO_8_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_2_LP_GPIO_8_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_2_Lp_Gpio_8_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_2_LP_GPIO_8_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_2_LP_GPIO_8_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_2_Lp_Gpio_8_Field_Reset => 63);

   --  LP_GPIO_9 mega mux selection
   type MEGA_MUX_IO_SEL_2_LP_GPIO_9_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_2_LP_GPIO_9_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_2_Lp_Gpio_9_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_2_LP_GPIO_9_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_2_LP_GPIO_9_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_2_Lp_Gpio_9_Field_Reset => 63);

   --  LP_GPIO_10 mega mux selection
   type MEGA_MUX_IO_SEL_2_LP_GPIO_10_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_2_LP_GPIO_10_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_2_Lp_Gpio_10_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_2_LP_GPIO_10_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_2_LP_GPIO_10_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_2_Lp_Gpio_10_Field_Reset => 63);

   --  LP_GPIO_11 mega mux selection
   type MEGA_MUX_IO_SEL_2_LP_GPIO_11_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_2_LP_GPIO_11_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_2_Lp_Gpio_11_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_2_LP_GPIO_11_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_2_LP_GPIO_11_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_2_Lp_Gpio_11_Field_Reset => 63);

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_2_Register is record
      --  LP_GPIO_8 mega mux selection
      LP_GPIO_8      : MEGA_MUX_IO_SEL_2_LP_GPIO_8_Field :=
                        Mega_Mux_Io_Sel_2_Lp_Gpio_8_Field_Reset;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  LP_GPIO_9 mega mux selection
      LP_GPIO_9      : MEGA_MUX_IO_SEL_2_LP_GPIO_9_Field :=
                        Mega_Mux_Io_Sel_2_Lp_Gpio_9_Field_Reset;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_10 mega mux selection
      LP_GPIO_10     : MEGA_MUX_IO_SEL_2_LP_GPIO_10_Field :=
                        Mega_Mux_Io_Sel_2_Lp_Gpio_10_Field_Reset;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_11 mega mux selection
      LP_GPIO_11     : MEGA_MUX_IO_SEL_2_LP_GPIO_11_Field :=
                        Mega_Mux_Io_Sel_2_Lp_Gpio_11_Field_Reset;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_2_Register use record
      LP_GPIO_8      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LP_GPIO_9      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LP_GPIO_10     at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LP_GPIO_11     at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  LP_GPIO_12 mega mux selection
   type MEGA_MUX_IO_SEL_3_LP_GPIO_12_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_3_LP_GPIO_12_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_3_Lp_Gpio_12_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_3_LP_GPIO_12_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_3_LP_GPIO_12_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_3_Lp_Gpio_12_Field_Reset => 63);

   --  LP_GPIO_13 mega mux selection
   type MEGA_MUX_IO_SEL_3_LP_GPIO_13_Field is
     (
      --  UART0_RXD
      Uart0_Rxd,
      --  UART0_TXD
      Uart0_Txd,
      --  UART0_CTS
      Uart0_Cts,
      --  UART0_RTS
      Uart0_Rts,
      --  UART1_RXD
      Uart1_Rxd,
      --  UART1_TXD
      Uart1_Txd,
      --  UART1_CTS
      Uart1_Cts,
      --  UART1_RTS
      Uart1_Rts,
      --  I2C0_SDA
      I2C0_Sda,
      --  I2C0_SCL
      I2C0_Scl,
      --  I2C1_SDA
      I2C1_Sda,
      --  I2C1_SCL
      I2C1_Scl,
      --  PWM0_OUT
      Pwm0_Out,
      --  PWM1_OUT
      Pwm1_Out,
      --  PWM2_OUT
      Pwm2_Out,
      --  PWM3_OUT
      Pwm3_Out,
      --  32KHZ_CLK
      MEGA_MUX_IO_SEL_3_LP_GPIO_13_Field_32Khz_Clk,
      --  COEX_WLAN_TX
      Coex_Wlan_Tx,
      --  COEX_WLAN_RX
      Coex_Wlan_Rx,
      --  COEX_BLE_TX
      Coex_Ble_Tx,
      --  COEX_BLE_RX
      Coex_Ble_Rx,
      --  COEX_BLE_IN_PROCESS
      Coex_Ble_In_Process,
      --  COEX_BLE_MBSY
      Coex_Ble_Mbsy,
      --  COEX_BLE_SYNC
      Coex_Ble_Sync,
      --  COEX_BLE_RXNTX
      Coex_Ble_Rxntx,
      --  COEX_BLE_PTI_0
      Coex_Ble_Pti_0,
      --  COEX_BLE_PTI_1
      Coex_Ble_Pti_1,
      --  COEX_BLE_PTI_2
      Coex_Ble_Pti_2,
      --  COEX_BLE_PTI_3
      Coex_Ble_Pti_3,
      --  QUAD_DEC0_A
      Quad_Dec0_A,
      --  QUAD_DEC0_B
      Quad_Dec0_B,
      --  QUAD_DEC1_A
      Quad_Dec1_A,
      --  QUAD_DEC1_B
      Quad_Dec1_B,
      --  QUAD_DEC2_A
      Quad_Dec2_A,
      --  QUAD_DEC2_B
      Quad_Dec2_B,
      --  Reset value for the field
      Mega_Mux_Io_Sel_3_Lp_Gpio_13_Field_Reset)
     with Size => 6;
   for MEGA_MUX_IO_SEL_3_LP_GPIO_13_Field use
     (Uart0_Rxd => 0,
      Uart0_Txd => 1,
      Uart0_Cts => 2,
      Uart0_Rts => 3,
      Uart1_Rxd => 4,
      Uart1_Txd => 5,
      Uart1_Cts => 6,
      Uart1_Rts => 7,
      I2C0_Sda => 8,
      I2C0_Scl => 9,
      I2C1_Sda => 10,
      I2C1_Scl => 11,
      Pwm0_Out => 12,
      Pwm1_Out => 13,
      Pwm2_Out => 14,
      Pwm3_Out => 15,
      MEGA_MUX_IO_SEL_3_LP_GPIO_13_Field_32Khz_Clk => 16,
      Coex_Wlan_Tx => 17,
      Coex_Wlan_Rx => 18,
      Coex_Ble_Tx => 19,
      Coex_Ble_Rx => 20,
      Coex_Ble_In_Process => 21,
      Coex_Ble_Mbsy => 22,
      Coex_Ble_Sync => 23,
      Coex_Ble_Rxntx => 24,
      Coex_Ble_Pti_0 => 25,
      Coex_Ble_Pti_1 => 26,
      Coex_Ble_Pti_2 => 27,
      Coex_Ble_Pti_3 => 28,
      Quad_Dec0_A => 29,
      Quad_Dec0_B => 30,
      Quad_Dec1_A => 31,
      Quad_Dec1_B => 32,
      Quad_Dec2_A => 33,
      Quad_Dec2_B => 34,
      Mega_Mux_Io_Sel_3_Lp_Gpio_13_Field_Reset => 63);

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_3_Register is record
      --  LP_GPIO_12 mega mux selection
      LP_GPIO_12     : MEGA_MUX_IO_SEL_3_LP_GPIO_12_Field :=
                        Mega_Mux_Io_Sel_3_Lp_Gpio_12_Field_Reset;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  LP_GPIO_13 mega mux selection
      LP_GPIO_13     : MEGA_MUX_IO_SEL_3_LP_GPIO_13_Field :=
                        Mega_Mux_Io_Sel_3_Lp_Gpio_13_Field_Reset;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#FCFC#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_3_Register use record
      LP_GPIO_12     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LP_GPIO_13     at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype MEGA_MUX_IO_SEL_4_LP_GPIO_16_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_4_LP_GPIO_17_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_4_LP_GPIO_18_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_4_LP_GPIO_19_Field is HAL.UInt6;

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_4_Register is record
      --  LP_GPIO_16 mega mux selection
      LP_GPIO_16     : MEGA_MUX_IO_SEL_4_LP_GPIO_16_Field := 16#3F#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  LP_GPIO_17 mega mux selection
      LP_GPIO_17     : MEGA_MUX_IO_SEL_4_LP_GPIO_17_Field := 16#3F#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_18 mega mux selection
      LP_GPIO_18     : MEGA_MUX_IO_SEL_4_LP_GPIO_18_Field := 16#3F#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_19 mega mux selection
      LP_GPIO_19     : MEGA_MUX_IO_SEL_4_LP_GPIO_19_Field := 16#3F#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_4_Register use record
      LP_GPIO_16     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LP_GPIO_17     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LP_GPIO_18     at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LP_GPIO_19     at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MEGA_MUX_IO_SEL_5_LP_GPIO_20_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_5_LP_GPIO_21_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_5_LP_GPIO_22_Field is HAL.UInt6;
   subtype MEGA_MUX_IO_SEL_5_LP_GPIO_23_Field is HAL.UInt6;

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_5_Register is record
      --  LP_GPIO_20 mega mux selection
      LP_GPIO_20     : MEGA_MUX_IO_SEL_5_LP_GPIO_20_Field := 16#3F#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  LP_GPIO_21 mega mux selection
      LP_GPIO_21     : MEGA_MUX_IO_SEL_5_LP_GPIO_21_Field := 16#3F#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_22 mega mux selection
      LP_GPIO_22     : MEGA_MUX_IO_SEL_5_LP_GPIO_22_Field := 16#3F#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  LP_GPIO_23 mega mux selection
      LP_GPIO_23     : MEGA_MUX_IO_SEL_5_LP_GPIO_23_Field := 16#3F#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_5_Register use record
      LP_GPIO_20     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LP_GPIO_21     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LP_GPIO_22     at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LP_GPIO_23     at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MEGA_MUX_IO_SEL_6_LP_GPIO_24_Field is HAL.UInt6;

   --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
   type MEGA_MUX_IO_SEL_6_Register is record
      --  LP_GPIO_24 mega mux selection
      LP_GPIO_24   : MEGA_MUX_IO_SEL_6_LP_GPIO_24_Field := 16#3F#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MEGA_MUX_IO_SEL_6_Register use record
      LP_GPIO_24   at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   subtype SENS_ADC_CLK_CTRL_FRAC_PART_Field is HAL.UInt8;
   subtype SENS_ADC_CLK_CTRL_INT_PART_Field is HAL.UInt12;

   --  Clock control for the Sensor ADC
   type SENS_ADC_CLK_CTRL_Register is record
      --  Fractional part for the clock divider
      FRAC_PART      : SENS_ADC_CLK_CTRL_FRAC_PART_Field := 16#0#;
      --  Integer part for the clock divider
      INT_PART       : SENS_ADC_CLK_CTRL_INT_PART_Field := 16#1A#;
      --  Invert Sens ADC Clock
      INVERT         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SENS_ADC_CLK_CTRL_Register use record
      FRAC_PART      at 0 range 0 .. 7;
      INT_PART       at 0 range 8 .. 19;
      INVERT         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SENS_ADC_RAW_STATUS_ADC_OUT_Field is HAL.UInt11;
   subtype SENS_ADC_RAW_STATUS_ADC_CH_Field is HAL.UInt2;

   --  Raw Status from the Sensor ADC
   type SENS_ADC_RAW_STATUS_Register is record
      --  Read-only. Raw Status of the sens_adc_out port of the PMU
      ADC_OUT        : SENS_ADC_RAW_STATUS_ADC_OUT_Field;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Raw Status of the sens_adc_ch port of the PMU
      ADC_CH         : SENS_ADC_RAW_STATUS_ADC_CH_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Raw Status of the sens_adc_done port of the PMU
      ADC_DONE       : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SENS_ADC_RAW_STATUS_Register use record
      ADC_OUT        at 0 range 0 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ADC_CH         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ADC_DONE       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Configure the IRQ inputs to the system as either Rising Edge or Level
   --  Shift
   type IRQ_CTRL_Register is record
      --  Enable the OSC_en signal for Level Shift and Clear Mode
      BLE_LVL_OSC_EN_IRQ_EN                 : Boolean := False;
      --  if ble_lvl_osc_en_irq_en is enabled, setting irq clr to 1 will clear
      --  the irq request
      BLE_LVL_OSC_EN_IRQ_CLR                : Boolean := False;
      --  Enable the wakeup_lp signal for Level Shift and Clear Mode
      BLE_LVL_WAKEUP_LP_IRQ_EN              : Boolean := False;
      --  if ble_lvl_wakeup_lp_irq_en is enabled, setting irq clr to 1 will
      --  clear the irq request
      BLE_LVL_WAKEUP_LP_IRQ_CLR             : Boolean := False;
      --  Enable the lp_out_of_reset signal for Level Shift and Clear Mode
      BLE_LVL_BLE_LP_OUT_OF_RESET_IRQ_EN    : Boolean := False;
      --  if lp_out_of_reset is enabled, setting irq clr to 1 will clear the
      --  irq request
      BLE_LVL_BLE_LP_OUT_OF_RESET_IRQ_CLR   : Boolean := False;
      --  Enable the core_out_of_reset signal for Level Shift and Clear Mode
      BLE_LVL_BLE_CORE_OUT_OF_RESET_IRQ_EN  : Boolean := False;
      --  if core_out_of_reset is enabled, setting irq clr to 1 will clear the
      --  irq request
      BLE_LVL_BLE_CORE_OUT_OF_RESET_IRQ_CLR : Boolean := False;
      --  Enable the rxtx_seq_in_sleep signal for Level Shift and Clear Mode
      RXTX_LVL_RXTX_SEQ_IN_SLEEP_IRQ_EN     : Boolean := False;
      --  if rxtx_seq_in_sleep is enabled, setting irq clr to 1 will clear the
      --  irq request
      RXTX_LVL_RXTX_SEQ_IN_SLEEP_IRQ_CLR    : Boolean := False;
      --  unspecified
      Reserved_10_15                        : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for IRQ_CTRL_Register use record
      BLE_LVL_OSC_EN_IRQ_EN                 at 0 range 0 .. 0;
      BLE_LVL_OSC_EN_IRQ_CLR                at 0 range 1 .. 1;
      BLE_LVL_WAKEUP_LP_IRQ_EN              at 0 range 2 .. 2;
      BLE_LVL_WAKEUP_LP_IRQ_CLR             at 0 range 3 .. 3;
      BLE_LVL_BLE_LP_OUT_OF_RESET_IRQ_EN    at 0 range 4 .. 4;
      BLE_LVL_BLE_LP_OUT_OF_RESET_IRQ_CLR   at 0 range 5 .. 5;
      BLE_LVL_BLE_CORE_OUT_OF_RESET_IRQ_EN  at 0 range 6 .. 6;
      BLE_LVL_BLE_CORE_OUT_OF_RESET_IRQ_CLR at 0 range 7 .. 7;
      RXTX_LVL_RXTX_SEQ_IN_SLEEP_IRQ_EN     at 0 range 8 .. 8;
      RXTX_LVL_RXTX_SEQ_IN_SLEEP_IRQ_CLR    at 0 range 9 .. 9;
      Reserved_10_15                        at 0 range 10 .. 15;
   end record;

   --  Read the raw (no level or rise detect) IRQ inputs to the system from the
   --  designated cores
   type IRQ_STS_Register is record
      --  Read-only. Read the OSC_en signal from the lp core
      BLE_OSC_EN_IRQ               : Boolean;
      --  Read-only. Read the wakeup_lp_irq signal from the lp core
      BLE_WAKEUP_LP_IRQ            : Boolean;
      --  Read-only. Read the ble_lp_out_of_reset signal from the ble lp core
      BLE_LP_OUT_OF_RESET_IRQ      : Boolean;
      --  Read-only. Read the ble_core_out_of_reset_irq signal from the ble
      --  core
      BLE_CORE_OUT_OF_RESET_IRQ_EN : Boolean;
      --  Read-only. Read the efuse_out_of_reset signal from the efuse wrapper
      EFUSE_OUT_OF_RESET           : Boolean;
      --  unspecified
      Reserved_5_7                 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for IRQ_STS_Register use record
      BLE_OSC_EN_IRQ               at 0 range 0 .. 0;
      BLE_WAKEUP_LP_IRQ            at 0 range 1 .. 1;
      BLE_LP_OUT_OF_RESET_IRQ      at 0 range 2 .. 2;
      BLE_CORE_OUT_OF_RESET_IRQ_EN at 0 range 3 .. 3;
      EFUSE_OUT_OF_RESET           at 0 range 4 .. 4;
      Reserved_5_7                 at 0 range 5 .. 7;
   end record;

   --  Control the rwm, rm and wm on the Mobile Semi Memories
   type MSEMI_MEM_CTRL_Register is record
      --  RWM control for pd2a memory
      PD2A_MEM_RWM_EN : Boolean := False;
      --  WM control for pd2a memory
      PD2A_MEM_WM_EN  : Boolean := False;
      --  RM control for pd2a memory
      PD2A_MEM_RM_EN  : Boolean := False;
      --  unspecified
      Reserved_3_3    : HAL.Bit := 16#0#;
      --  RWM control for pd2b memory
      PD2B_MEM_RWM_EN : Boolean := False;
      --  WM control for pd2b memory
      PD2B_MEM_WM_EN  : Boolean := False;
      --  RM control for pd2b memory
      PD2B_MEM_RM_EN  : Boolean := False;
      --  unspecified
      Reserved_7_7    : HAL.Bit := 16#0#;
      --  RWM control for pd3a memory
      PD3A_MEM_RWM_EN : Boolean := False;
      --  WM control for pd3a memory
      PD3A_MEM_WM_EN  : Boolean := False;
      --  RM control for pd3a memory
      PD3A_MEM_RM_EN  : Boolean := False;
      --  unspecified
      Reserved_11_11  : HAL.Bit := 16#0#;
      --  RWM control for pd3b memory
      PD3B_MEM_RWM_EN : Boolean := False;
      --  WM control for pd3b memory
      PD3B_MEM_WM_EN  : Boolean := False;
      --  RM control for pd3b memory
      PD3B_MEM_RM_EN  : Boolean := False;
      --  unspecified
      Reserved_15_15  : HAL.Bit := 16#0#;
      --  RWM control for pd3c memory
      PD3C_MEM_RWM_EN : Boolean := False;
      --  WM control for pd3c memory
      PD3C_MEM_WM_EN  : Boolean := False;
      --  RM control for pd3c memory
      PD3C_MEM_RM_EN  : Boolean := False;
      --  unspecified
      Reserved_19_19  : HAL.Bit := 16#0#;
      --  RWM control for pd5 memory
      PD5_MEM_RWM_EN  : Boolean := False;
      --  WM control for pd5 memory
      PD5_MEM_WM_EN   : Boolean := False;
      --  RM control for pd5 memory
      PD5_MEM_RM_EN   : Boolean := False;
      --  unspecified
      Reserved_23_23  : HAL.Bit := 16#0#;
      --  RWM control for pd8 memory
      PD8_MEM_RWM_EN  : Boolean := False;
      --  WM control for pd8 memory
      PD8_MEM_WM_EN   : Boolean := False;
      --  RM control for pd8 memory
      PD8_MEM_RM_EN   : Boolean := False;
      --  unspecified
      Reserved_27_31  : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSEMI_MEM_CTRL_Register use record
      PD2A_MEM_RWM_EN at 0 range 0 .. 0;
      PD2A_MEM_WM_EN  at 0 range 1 .. 1;
      PD2A_MEM_RM_EN  at 0 range 2 .. 2;
      Reserved_3_3    at 0 range 3 .. 3;
      PD2B_MEM_RWM_EN at 0 range 4 .. 4;
      PD2B_MEM_WM_EN  at 0 range 5 .. 5;
      PD2B_MEM_RM_EN  at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      PD3A_MEM_RWM_EN at 0 range 8 .. 8;
      PD3A_MEM_WM_EN  at 0 range 9 .. 9;
      PD3A_MEM_RM_EN  at 0 range 10 .. 10;
      Reserved_11_11  at 0 range 11 .. 11;
      PD3B_MEM_RWM_EN at 0 range 12 .. 12;
      PD3B_MEM_WM_EN  at 0 range 13 .. 13;
      PD3B_MEM_RM_EN  at 0 range 14 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
      PD3C_MEM_RWM_EN at 0 range 16 .. 16;
      PD3C_MEM_WM_EN  at 0 range 17 .. 17;
      PD3C_MEM_RM_EN  at 0 range 18 .. 18;
      Reserved_19_19  at 0 range 19 .. 19;
      PD5_MEM_RWM_EN  at 0 range 20 .. 20;
      PD5_MEM_WM_EN   at 0 range 21 .. 21;
      PD5_MEM_RM_EN   at 0 range 22 .. 22;
      Reserved_23_23  at 0 range 23 .. 23;
      PD8_MEM_RWM_EN  at 0 range 24 .. 24;
      PD8_MEM_WM_EN   at 0 range 25 .. 25;
      PD8_MEM_RM_EN   at 0 range 26 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   --  Miscellaneous Force control values for LPMCU
   type LPMCU_FORCE_CONTROL_Register is record
      --  Enable Force Control of SCLK
      SCLK_EN            : Boolean := True;
      --  Enable Force Control of SCLK Value
      SCLK_VAL           : Boolean := True;
      --  Enable Force Control of DCLK
      DCLK_EN            : Boolean := True;
      --  Enable Force Control of DCLK Value
      DCLK_VAL           : Boolean := True;
      --  Enable Force Control of PCLKG
      PCLKG_EN           : Boolean := True;
      --  Enable Force Control of PCLKG Value
      PCLKG_VAL          : Boolean := True;
      --  Enable Force Control of WIC Enable Request to use WIC during Sleep
      --  Conditions
      WICENREQ_EN        : Boolean := True;
      --  Enable Force Control of WIC Enable Value
      WICENREQ_VAL       : Boolean := False;
      --  Enable Force Control of GPIO Modules Clk (override clock gating and
      --  enable)
      GPIO_GCLK_EN       : Boolean := True;
      --  Enable Force Control of Counter Modules Clk (override clock gating
      --  and enable)
      COUNTER_PGCLK_EN   : Boolean := True;
      --  Enable Force Control of DualTimer Modules PGClk (override clock
      --  gating and enable)
      DUALTIMER_PGCLK_EN : Boolean := True;
      --  Enable Force Control of WIC ACK to use WIC during Sleep Conditions -
      --  Requires Handshake from WIC when its ok to sleep
      WICENACK_EN        : Boolean := True;
      --  Enable Force Control of WIC Enable Value - Requires Handshake from
      --  WIC when its ok to sleep
      WICENACK_VAL       : Boolean := False;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LPMCU_FORCE_CONTROL_Register use record
      SCLK_EN            at 0 range 0 .. 0;
      SCLK_VAL           at 0 range 1 .. 1;
      DCLK_EN            at 0 range 2 .. 2;
      DCLK_VAL           at 0 range 3 .. 3;
      PCLKG_EN           at 0 range 4 .. 4;
      PCLKG_VAL          at 0 range 5 .. 5;
      WICENREQ_EN        at 0 range 6 .. 6;
      WICENREQ_VAL       at 0 range 7 .. 7;
      GPIO_GCLK_EN       at 0 range 8 .. 8;
      COUNTER_PGCLK_EN   at 0 range 9 .. 9;
      DUALTIMER_PGCLK_EN at 0 range 10 .. 10;
      WICENACK_EN        at 0 range 11 .. 11;
      WICENACK_VAL       at 0 range 12 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
   end record;

   --  BLE Deep Sleep Enables
   type BLE_DEEP_SLEEP_ENABLES_Register is record
      --  Enables FW Timer Correction Operation
      FW_TIMER_CORR_EN : Boolean := True;
      --  Enables HW Timer Correction Operation
      HW_TIMER_CORR_EN : Boolean := False;
      --  unspecified
      Reserved_2_7     : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BLE_DEEP_SLEEP_ENABLES_Register use record
      FW_TIMER_CORR_EN at 0 range 0 .. 0;
      HW_TIMER_CORR_EN at 0 range 1 .. 1;
      Reserved_2_7     at 0 range 2 .. 7;
   end record;

   subtype DEEP_SLEEP_HW_TIMER_CORR_WAIT_Field is HAL.UInt10;
   subtype DEEP_SLEEP_HW_TIMER_CORR_RTC_TOSC_Field is HAL.UInt18;

   --  Configures the HW auto correction algorithm of the fine/base timers
   --  after wakeup from deep sleep
   type DEEP_SLEEP_HW_TIMER_CORR_Register is record
      --  Wait time in us after wakeup before correction begins
      WAIT           : DEEP_SLEEP_HW_TIMER_CORR_WAIT_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Period of RTC clock in us [7.11]
      RTC_TOSC       : DEEP_SLEEP_HW_TIMER_CORR_RTC_TOSC_Field := 16#F424#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEEP_SLEEP_HW_TIMER_CORR_Register use record
      WAIT           at 0 range 0 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RTC_TOSC       at 0 range 12 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Reflects the IRQ status of the Quad Decoders
   type QUAD_DEC_IRQS_Register is record
      --  Read-only. QUAD_DEC0 Interrupt
      QUAD_DEC_1_IRQ : Boolean;
      --  Read-only. QUAD_DEC1 Interrupt
      QUAD_DEC_2_IRQ : Boolean;
      --  Read-only. QUAD_DEC2 Interrupt
      QUAD_DEC_3_IRQ : Boolean;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for QUAD_DEC_IRQS_Register use record
      QUAD_DEC_1_IRQ at 0 range 0 .. 0;
      QUAD_DEC_2_IRQ at 0 range 1 .. 1;
      QUAD_DEC_3_IRQ at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
   end record;

   subtype QUAD_DEC_1_THRESHOLD_UPPER_Field is HAL.UInt16;
   subtype QUAD_DEC_1_THRESHOLD_LOWER_Field is HAL.UInt16;

   --  Thresholds for Quad Decoder 1
   type QUAD_DEC_1_THRESHOLD_Register is record
      --  Upper Threshold of counter for QUAD_DEC0
      UPPER : QUAD_DEC_1_THRESHOLD_UPPER_Field := 16#FF00#;
      --  Lower Threshold of counter for QUAD_DEC0
      LOWER : QUAD_DEC_1_THRESHOLD_LOWER_Field := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QUAD_DEC_1_THRESHOLD_Register use record
      UPPER at 0 range 0 .. 15;
      LOWER at 0 range 16 .. 31;
   end record;

   --  Quad Decoder Source Clock Frequency Select
   type QUAD_DEC_1_CTRL_CLOCK_SEL_Field is
     (
      --  26MHz
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_0,
      --  13MHz
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_1,
      --  6.5MHz
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_2,
      --  3.25MHz
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_3)
     with Size => 2;
   for QUAD_DEC_1_CTRL_CLOCK_SEL_Field use
     (QUAD_DEC_1_CTRL_CLOCK_SEL_Field_0 => 0,
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_1 => 1,
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_2 => 2,
      QUAD_DEC_1_CTRL_CLOCK_SEL_Field_3 => 3);

   --  Control for Quad Decoder 1
   type QUAD_DEC_1_CTRL_Register is record
      --  Enable Quad Decoder
      ENABLE       : Boolean := False;
      --  Clear IRQ From Quad Decoder
      CLR_IRQ      : Boolean := False;
      --  Quad Decoder Source Clock Frequency Select
      CLOCK_SEL    : QUAD_DEC_1_CTRL_CLOCK_SEL_Field :=
                      SAM_SVD.LPMCU_MISC_REGS.QUAD_DEC_1_CTRL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for QUAD_DEC_1_CTRL_Register use record
      ENABLE       at 0 range 0 .. 0;
      CLR_IRQ      at 0 range 1 .. 1;
      CLOCK_SEL    at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype QUAD_DEC_2_THRESHOLD_UPPER_Field is HAL.UInt16;
   subtype QUAD_DEC_2_THRESHOLD_LOWER_Field is HAL.UInt16;

   --  Thresholds for Quad Decoder 2
   type QUAD_DEC_2_THRESHOLD_Register is record
      --  Upper Threshold of counter for QUAD_DEC1
      UPPER : QUAD_DEC_2_THRESHOLD_UPPER_Field := 16#FF00#;
      --  Lower Threshold of counter for QUAD_DEC1
      LOWER : QUAD_DEC_2_THRESHOLD_LOWER_Field := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QUAD_DEC_2_THRESHOLD_Register use record
      UPPER at 0 range 0 .. 15;
      LOWER at 0 range 16 .. 31;
   end record;

   --  Quad Decoder Source Clock Frequency Select
   type QUAD_DEC_2_CTRL_CLOCK_SEL_Field is
     (
      --  26MHz
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_0,
      --  13MHz
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_1,
      --  6.5MHz
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_2,
      --  3.25MHz
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_3)
     with Size => 2;
   for QUAD_DEC_2_CTRL_CLOCK_SEL_Field use
     (QUAD_DEC_2_CTRL_CLOCK_SEL_Field_0 => 0,
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_1 => 1,
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_2 => 2,
      QUAD_DEC_2_CTRL_CLOCK_SEL_Field_3 => 3);

   --  Control for Quad Decoder 2
   type QUAD_DEC_2_CTRL_Register is record
      --  Enable Quad Decoder
      ENABLE       : Boolean := False;
      --  Clear IRQ From Quad Decoder
      CLR_IRQ      : Boolean := False;
      --  Quad Decoder Source Clock Frequency Select
      CLOCK_SEL    : QUAD_DEC_2_CTRL_CLOCK_SEL_Field :=
                      SAM_SVD.LPMCU_MISC_REGS.QUAD_DEC_2_CTRL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for QUAD_DEC_2_CTRL_Register use record
      ENABLE       at 0 range 0 .. 0;
      CLR_IRQ      at 0 range 1 .. 1;
      CLOCK_SEL    at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype QUAD_DEC_3_THRESHOLD_UPPER_Field is HAL.UInt16;
   subtype QUAD_DEC_3_THRESHOLD_LOWER_Field is HAL.UInt16;

   --  Thresholds for Quad Decoder 3
   type QUAD_DEC_3_THRESHOLD_Register is record
      --  Upper Threshold of counter for QUAD_DEC2
      UPPER : QUAD_DEC_3_THRESHOLD_UPPER_Field := 16#FF00#;
      --  Lower Threshold of counter for QUAD_DEC2
      LOWER : QUAD_DEC_3_THRESHOLD_LOWER_Field := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QUAD_DEC_3_THRESHOLD_Register use record
      UPPER at 0 range 0 .. 15;
      LOWER at 0 range 16 .. 31;
   end record;

   --  Quad Decoder Source Clock Frequency Select
   type QUAD_DEC_3_CTRL_CLOCK_SEL_Field is
     (
      --  26MHz
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_0,
      --  13MHz
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_1,
      --  6.5MHz
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_2,
      --  3.25MHz
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_3)
     with Size => 2;
   for QUAD_DEC_3_CTRL_CLOCK_SEL_Field use
     (QUAD_DEC_3_CTRL_CLOCK_SEL_Field_0 => 0,
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_1 => 1,
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_2 => 2,
      QUAD_DEC_3_CTRL_CLOCK_SEL_Field_3 => 3);

   --  Control for Quad Decoder 3
   type QUAD_DEC_3_CTRL_Register is record
      --  Enable Quad Decoder
      ENABLE       : Boolean := False;
      --  Clear IRQ From Quad Decoder
      CLR_IRQ      : Boolean := False;
      --  Quad Decoder Source Clock Frequency Select
      CLOCK_SEL    : QUAD_DEC_3_CTRL_CLOCK_SEL_Field :=
                      SAM_SVD.LPMCU_MISC_REGS.QUAD_DEC_3_CTRL_CLOCK_SEL_Field_0;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for QUAD_DEC_3_CTRL_Register use record
      ENABLE       at 0 range 0 .. 0;
      CLR_IRQ      at 0 range 1 .. 1;
      CLOCK_SEL    at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Flash Breakpoint Enable Register
   type FP_COMP_ENABLE_Register is record
      --  Enable Compare 0
      CMP_0_EN  : Boolean := False;
      --  Enable Compare 1
      CMP_1_EN  : Boolean := False;
      --  Enable Compare 2
      CMP_2_EN  : Boolean := False;
      --  Enable Compare 3
      CMP_3_EN  : Boolean := False;
      --  Enable Compare 4
      CMP_4_EN  : Boolean := False;
      --  Enable Compare 5
      CMP_5_EN  : Boolean := False;
      --  Enable Compare 6
      CMP_6_EN  : Boolean := False;
      --  Enable Compare 7
      CMP_7_EN  : Boolean := False;
      --  Enable Compare 8
      CMP_8_EN  : Boolean := False;
      --  Enable Compare 9
      CMP_9_EN  : Boolean := False;
      --  Enable Compare 10
      CMP_10_EN : Boolean := False;
      --  Enable Compare 11
      CMP_11_EN : Boolean := False;
      --  Enable Compare 12
      CMP_12_EN : Boolean := False;
      --  Enable Compare 13
      CMP_13_EN : Boolean := False;
      --  Enable Compare 14
      CMP_14_EN : Boolean := False;
      --  Enable Compare 15
      CMP_15_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FP_COMP_ENABLE_Register use record
      CMP_0_EN  at 0 range 0 .. 0;
      CMP_1_EN  at 0 range 1 .. 1;
      CMP_2_EN  at 0 range 2 .. 2;
      CMP_3_EN  at 0 range 3 .. 3;
      CMP_4_EN  at 0 range 4 .. 4;
      CMP_5_EN  at 0 range 5 .. 5;
      CMP_6_EN  at 0 range 6 .. 6;
      CMP_7_EN  at 0 range 7 .. 7;
      CMP_8_EN  at 0 range 8 .. 8;
      CMP_9_EN  at 0 range 9 .. 9;
      CMP_10_EN at 0 range 10 .. 10;
      CMP_11_EN at 0 range 11 .. 11;
      CMP_12_EN at 0 range 12 .. 12;
      CMP_13_EN at 0 range 13 .. 13;
      CMP_14_EN at 0 range 14 .. 14;
      CMP_15_EN at 0 range 15 .. 15;
   end record;

   --  PMU_READ_REGS_READREG array element
   subtype PMU_READ_REGS_READREG_Element is HAL.UInt8;

   --  PMU_READ_REGS_READREG array
   type PMU_READ_REGS_READREG_Field_Array is array (1 .. 3)
     of PMU_READ_REGS_READREG_Element
     with Component_Size => 8, Size => 24;

   --  Type definition for PMU_READ_REGS_READREG
   type PMU_READ_REGS_READREG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  READREG as a value
            Val : HAL.UInt24;
         when True =>
            --  READREG as an array
            Arr : PMU_READ_REGS_READREG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for PMU_READ_REGS_READREG_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  PMU Status Registers
   type PMU_READ_REGS_Register is record
      --  Read-only. PMU Read Register 1
      READREG        : PMU_READ_REGS_READREG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_READ_REGS_Register use record
      READREG        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Control for Mixed Signal GPIOs
   type MS_GPIO_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Mixed Signal LP_GPIO_47 Pull Type Select. 1: PD, 0: PU.
      PULL_TYPE_47   : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#7#;
      --  Active Low Pull Enable for Mixed Signal LP_GPIO_47
      PULL_ENABLE_47 : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MS_GPIO_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PULL_TYPE_47   at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      PULL_ENABLE_47 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPMCU Misc Registers
   type LPMCU_MISC_REGS0_Peripheral is record
      --  The hard-coded ID for the chip.
      LPMCU_CHIP_ID            : aliased LPMCU_CHIP_ID_Register;
      --  All individual software controllable resets. 0: Reset the selected
      --  function. 1: Normal operation.
      LPMCU_GLOBAL_RESET_0     : aliased LPMCU_GLOBAL_RESET_0_Register;
      --  All individual software controllable resets. 0: Reset the selected
      --  function. 1: Normal operation.
      LPMCU_GLOBAL_RESET_1     : aliased LPMCU_GLOBAL_RESET_1_Register;
      --  All individual software controllable clock enables. Values are: 0:
      --  Disable clock. 1: Normal operation.
      LPMCU_CLOCK_ENABLES_0    : aliased LPMCU_CLOCK_ENABLES_0_Register;
      --  All individual software controllable clock enables. Values are: 0:
      --  Disable clock. 1: Normal operation.
      LPMCU_CLOCK_ENABLES_1    : aliased LPMCU_CLOCK_ENABLES_1_Register;
      --  Miscellaneous BLE control
      BTMCU_CONTROL            : aliased BTMCU_CONTROL_Register;
      --  Miscellaneous LPMCU control
      LPMCU_CONTROL            : aliased LPMCU_CONTROL_Register;
      --  MBIST designation
      LPMCU_MBIST              : aliased LPMCU_MBIST_Register;
      --  BLE Control
      BLE_CTRL                 : aliased BLE_CTRL_Register;
      --  MBIST Control Register
      MBIST_CONTROL            : aliased HAL.UInt32;
      --  MBIST Status Register
      MBIST_STATUS             : aliased MBIST_STATUS_Register;
      --  Enables MBIST algorithms
      MBIST_SRAM_ALG_SEL       : aliased MBIST_SRAM_ALG_SEL_Register;
      --  MBIST Background for MARCH2 algorithm (bits 31:0)
      MBIST_BG                 : aliased HAL.UInt32;
      --  Controls all of the test bus functionality
      TEST_BUS_CONTROL         : aliased TEST_BUS_CONTROL_Register;
      --  ROM MBIST Signature
      WP3_MISR_DATAOUT         : aliased HAL.UInt32;
      --  Invert Output Control
      INVERT_OUTPUT_CTRL       : aliased INVERT_OUTPUT_CTRL_Register;
      --  Pinmux select for LP_GPIO_0, LP_GPIO_1, LP_GPIO_2, LP_GPIO_3,
      --  LP_GPIO_4, LP_GPIO_5, LP_GPIO_6, LP_GPIO_7
      PINMUX_SEL_0             : aliased PINMUX_SEL_0_Register;
      --  Pinmux select for LP_GPIO_8, LP_GPIO_9, LP_GPIO_10, LP_GPIO_11,
      --  LP_GPIO_12, LP_GPIO_13, LP_GPIO_14, LP_GPIO_15
      PINMUX_SEL_1             : aliased PINMUX_SEL_1_Register;
      --  Pinmux select for LP_GPIO_16, LP_GPIO_17, LP_GPIO_18, LP_GPIO_19,
      --  LP_GPIO_20, LP_GPIO_21, LP_GPIO_22, LP_GPIO_23
      PINMUX_SEL_2             : aliased PINMUX_SEL_2_Register;
      --  Active Low Pull Enables for LPMCU Pads
      PULL_ENABLE              : aliased PULL_ENABLE_Register;
      --  Controls the RTYPE (Pull Level) pad value for LPMCU Pads (0 = Pull
      --  Up)
      RTYPE_PAD_0              : aliased RTYPE_PAD_0_Register;
      --  Pinmux select for LP_SIP_0, LP_SIP_1, LP_SIP_2, LP_SIP_3, LP_SIP_4
      PINMUX_SEL_3             : aliased PINMUX_SEL_3_Register;
      --  Controls the ISHAPE pad value for LPMCU SIP Pads
      ISHAPE_PAD_3             : aliased ISHAPE_PAD_3_Register;
      --  Pinmux select for LP_GPIO_24
      PINMUX_SEL_4             : aliased PINMUX_SEL_4_Register;
      --  Misc control for the LPMCU
      LPMCU_CONTROL_2          : aliased HAL.UInt8;
      --  Control for VDDIO of SPI FLASH
      SPIFLASH_VDDIO_CTRL      : aliased SPIFLASH_VDDIO_CTRL_Register;
      --  SPI FLASH Bypass
      SPIFLASH_BYPASS          : aliased SPIFLASH_BYPASS_Register;
      --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
      IRQ_MUX_IO_SEL_0         : aliased IRQ_MUX_IO_SEL_0_Register;
      --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
      IRQ_MUX_IO_SEL_1         : aliased IRQ_MUX_IO_SEL_1_Register;
      --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
      IRQ_MUX_IO_SEL_2         : aliased IRQ_MUX_IO_SEL_2_Register;
      --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
      IRQ_MUX_IO_SEL_3         : aliased IRQ_MUX_IO_SEL_3_Register;
      --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
      IRQ_MUX_IO_SEL_4         : aliased IRQ_MUX_IO_SEL_4_Register;
      --  Arm Cortex IRQ Mux Selection (Refer to Interrupts Spreadsheet)
      IRQ_MUX_IO_SEL_5         : aliased IRQ_MUX_IO_SEL_5_Register;
      --  PWM 1 Control Register
      PWM_1_CONTROL            : aliased PWM_1_CONTROL_Register;
      --  PWM 2 Control Register
      PWM_2_CONTROL            : aliased PWM_2_CONTROL_Register;
      --  PWM 3 Control Register
      PWM_3_CONTROL            : aliased PWM_3_CONTROL_Register;
      --  PWM 4 Control Register
      PWM_4_CONTROL            : aliased PWM_4_CONTROL_Register;
      --  Reflects the status of MBIST from lpmcu and btmcu
      MBIST_DUAL_STATUS        : aliased MBIST_DUAL_STATUS_Register;
      --  Dual Timer Control
      DUALTIMER_CTRL           : aliased DUALTIMER_CTRL_Register;
      --  Sleep and Wakeup Control for the AON Power Sequencer
      ARM_SLEEP_WAKEUP_CTRL    : aliased ARM_SLEEP_WAKEUP_CTRL_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_0        : aliased MEGA_MUX_IO_SEL_0_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_1        : aliased MEGA_MUX_IO_SEL_1_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_2        : aliased MEGA_MUX_IO_SEL_2_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_3        : aliased MEGA_MUX_IO_SEL_3_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_4        : aliased MEGA_MUX_IO_SEL_4_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_5        : aliased MEGA_MUX_IO_SEL_5_Register;
      --  Mega Mux Selection (Refer to Mega_Mux_IO Spreadsheet)
      MEGA_MUX_IO_SEL_6        : aliased MEGA_MUX_IO_SEL_6_Register;
      --  Clock control for the Sensor ADC
      SENS_ADC_CLK_CTRL        : aliased SENS_ADC_CLK_CTRL_Register;
      --  Raw Status from the Sensor ADC
      SENS_ADC_RAW_STATUS      : aliased SENS_ADC_RAW_STATUS_Register;
      --  Current data of the Sensor ADC for Channel 0
      SENS_ADC_CH0_DATA        : aliased HAL.UInt16;
      --  Current data of the Sensor ADC for Channel 1
      SENS_ADC_CH1_DATA        : aliased HAL.UInt16;
      --  Current data of the Sensor ADC for Channel 2
      SENS_ADC_CH2_DATA        : aliased HAL.UInt16;
      --  Current data of the Sensor ADC for Channel 3
      SENS_ADC_CH3_DATA        : aliased HAL.UInt16;
      --  Configure the IRQ inputs to the system as either Rising Edge or Level
      --  Shift
      IRQ_CTRL                 : aliased IRQ_CTRL_Register;
      --  Read the raw (no level or rise detect) IRQ inputs to the system from
      --  the designated cores
      IRQ_STS                  : aliased IRQ_STS_Register;
      --  Control the rwm, rm and wm on the Mobile Semi Memories
      MSEMI_MEM_CTRL           : aliased MSEMI_MEM_CTRL_Register;
      --  EFUSE_1_3 Status
      EFUSE_1_STATUS_3         : aliased HAL.UInt32;
      --  Miscellaneous Force control values for LPMCU
      LPMCU_FORCE_CONTROL      : aliased LPMCU_FORCE_CONTROL_Register;
      --  ARM Cortex M0 IRQ Status
      ARM_IRQ_STATUS_0         : aliased HAL.UInt32;
      --  ARM Cortex M0 IRQ Status
      ARM_IRQ_STATUS_1         : aliased HAL.UInt32;
      --  BLE Deep Sleep Enables
      BLE_DEEP_SLEEP_ENABLES   : aliased BLE_DEEP_SLEEP_ENABLES_Register;
      --  Configures the HW auto correction algorithm of the fine/base timers
      --  after wakeup from deep sleep
      DEEP_SLEEP_HW_TIMER_CORR : aliased DEEP_SLEEP_HW_TIMER_CORR_Register;
      --  ARM Cortex M0 idram 1 remap base addr
      REMAP_IDRAM1_BASE_ADDR   : aliased HAL.UInt32;
      --  ARM Cortex M0 idram 1 remap end addr
      REMAP_IDRAM1_END_ADDR    : aliased HAL.UInt32;
      --  ARM Cortex M0 idram 2 remap base addr
      REMAP_IDRAM2_BASE_ADDR   : aliased HAL.UInt32;
      --  ARM Cortex M0 idram 2 remap end addr
      REMAP_IDRAM2_END_ADDR    : aliased HAL.UInt32;
      --  ARM Cortex M0 bootrom remap base addr
      REMAP_BOOT_BASE_ADDR     : aliased HAL.UInt32;
      --  ARM Cortex M0 bootrom remap end addr
      REMAP_BOOT_END_ADDR      : aliased HAL.UInt32;
      --  Reflects the IRQ status of the Quad Decoders
      QUAD_DEC_IRQS            : aliased QUAD_DEC_IRQS_Register;
      --  Current status of Quad Decoder 1
      QUAD_DEC_1_STATUS        : aliased HAL.UInt16;
      --  Current status of Quad Decoder 2
      QUAD_DEC_2_STATUS        : aliased HAL.UInt16;
      --  Current status of Quad Decoder 3
      QUAD_DEC_3_STATUS        : aliased HAL.UInt16;
      --  Thresholds for Quad Decoder 1
      QUAD_DEC_1_THRESHOLD     : aliased QUAD_DEC_1_THRESHOLD_Register;
      --  Control for Quad Decoder 1
      QUAD_DEC_1_CTRL          : aliased QUAD_DEC_1_CTRL_Register;
      --  Thresholds for Quad Decoder 2
      QUAD_DEC_2_THRESHOLD     : aliased QUAD_DEC_2_THRESHOLD_Register;
      --  Control for Quad Decoder 2
      QUAD_DEC_2_CTRL          : aliased QUAD_DEC_2_CTRL_Register;
      --  Thresholds for Quad Decoder 3
      QUAD_DEC_3_THRESHOLD     : aliased QUAD_DEC_3_THRESHOLD_Register;
      --  Control for Quad Decoder 3
      QUAD_DEC_3_CTRL          : aliased QUAD_DEC_3_CTRL_Register;
      --  Flash Breakpoint Compare Register 0
      FP_COMP0_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 1
      FP_COMP1_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 2
      FP_COMP2_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 3
      FP_COMP3_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 4
      FP_COMP4_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 5
      FP_COMP5_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 6
      FP_COMP6_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 7
      FP_COMP7_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 8
      FP_COMP8_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 9
      FP_COMP9_COMP            : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 10
      FP_COMP10_COMP           : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 11
      FP_COMP11_COMP           : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 12
      FP_COMP12_COMP           : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 13
      FP_COMP13_COMP           : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 14
      FP_COMP14_COMP           : aliased HAL.UInt32;
      --  Flash Breakpoint Compare Register 15
      FP_COMP15_COMP           : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 0
      FP_COMP0_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 1
      FP_COMP1_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 2
      FP_COMP2_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 3
      FP_COMP3_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 4
      FP_COMP4_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 5
      FP_COMP5_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 6
      FP_COMP6_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 7
      FP_COMP7_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 8
      FP_COMP8_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 9
      FP_COMP9_REPLACE         : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 10
      FP_COMP10_REPLACE        : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 11
      FP_COMP11_REPLACE        : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 12
      FP_COMP12_REPLACE        : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 13
      FP_COMP13_REPLACE        : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 14
      FP_COMP14_REPLACE        : aliased HAL.UInt32;
      --  Flash Breakpoint Replace Register 14
      FP_COMP15_REPLACE        : aliased HAL.UInt32;
      --  Flash Breakpoint Enable Register
      FP_COMP_ENABLE           : aliased FP_COMP_ENABLE_Register;
      --  PMU Status Registers
      PMU_READ_REGS            : aliased PMU_READ_REGS_Register;
      --  Control for Mixed Signal GPIOs
      MS_GPIO                  : aliased MS_GPIO_Register;
      --  Current value of the AON Sleep Timer (syncd to ARM clock)
      AON_SLEEP_TIMER_COUNTER  : aliased HAL.UInt32;
   end record
     with Volatile;

   for LPMCU_MISC_REGS0_Peripheral use record
      LPMCU_CHIP_ID            at 16#0# range 0 .. 31;
      LPMCU_GLOBAL_RESET_0     at 16#4# range 0 .. 31;
      LPMCU_GLOBAL_RESET_1     at 16#8# range 0 .. 15;
      LPMCU_CLOCK_ENABLES_0    at 16#C# range 0 .. 31;
      LPMCU_CLOCK_ENABLES_1    at 16#10# range 0 .. 31;
      BTMCU_CONTROL            at 16#14# range 0 .. 7;
      LPMCU_CONTROL            at 16#18# range 0 .. 31;
      LPMCU_MBIST              at 16#1C# range 0 .. 7;
      BLE_CTRL                 at 16#20# range 0 .. 7;
      MBIST_CONTROL            at 16#24# range 0 .. 31;
      MBIST_STATUS             at 16#28# range 0 .. 31;
      MBIST_SRAM_ALG_SEL       at 16#2C# range 0 .. 15;
      MBIST_BG                 at 16#30# range 0 .. 31;
      TEST_BUS_CONTROL         at 16#38# range 0 .. 7;
      WP3_MISR_DATAOUT         at 16#3C# range 0 .. 31;
      INVERT_OUTPUT_CTRL       at 16#40# range 0 .. 31;
      PINMUX_SEL_0             at 16#44# range 0 .. 31;
      PINMUX_SEL_1             at 16#48# range 0 .. 31;
      PINMUX_SEL_2             at 16#4C# range 0 .. 31;
      PULL_ENABLE              at 16#50# range 0 .. 31;
      RTYPE_PAD_0              at 16#54# range 0 .. 31;
      PINMUX_SEL_3             at 16#68# range 0 .. 31;
      ISHAPE_PAD_3             at 16#6C# range 0 .. 31;
      PINMUX_SEL_4             at 16#80# range 0 .. 7;
      LPMCU_CONTROL_2          at 16#90# range 0 .. 7;
      SPIFLASH_VDDIO_CTRL      at 16#A0# range 0 .. 7;
      SPIFLASH_BYPASS          at 16#A4# range 0 .. 7;
      IRQ_MUX_IO_SEL_0         at 16#C0# range 0 .. 31;
      IRQ_MUX_IO_SEL_1         at 16#C4# range 0 .. 31;
      IRQ_MUX_IO_SEL_2         at 16#C8# range 0 .. 31;
      IRQ_MUX_IO_SEL_3         at 16#CC# range 0 .. 31;
      IRQ_MUX_IO_SEL_4         at 16#D0# range 0 .. 31;
      IRQ_MUX_IO_SEL_5         at 16#D4# range 0 .. 7;
      PWM_1_CONTROL            at 16#160# range 0 .. 31;
      PWM_2_CONTROL            at 16#164# range 0 .. 31;
      PWM_3_CONTROL            at 16#168# range 0 .. 31;
      PWM_4_CONTROL            at 16#16C# range 0 .. 31;
      MBIST_DUAL_STATUS        at 16#170# range 0 .. 31;
      DUALTIMER_CTRL           at 16#188# range 0 .. 7;
      ARM_SLEEP_WAKEUP_CTRL    at 16#190# range 0 .. 31;
      MEGA_MUX_IO_SEL_0        at 16#1A0# range 0 .. 31;
      MEGA_MUX_IO_SEL_1        at 16#1A4# range 0 .. 31;
      MEGA_MUX_IO_SEL_2        at 16#1A8# range 0 .. 31;
      MEGA_MUX_IO_SEL_3        at 16#1AC# range 0 .. 31;
      MEGA_MUX_IO_SEL_4        at 16#1B0# range 0 .. 31;
      MEGA_MUX_IO_SEL_5        at 16#1B4# range 0 .. 31;
      MEGA_MUX_IO_SEL_6        at 16#1B8# range 0 .. 7;
      SENS_ADC_CLK_CTRL        at 16#1C0# range 0 .. 31;
      SENS_ADC_RAW_STATUS      at 16#1C4# range 0 .. 31;
      SENS_ADC_CH0_DATA        at 16#1C8# range 0 .. 15;
      SENS_ADC_CH1_DATA        at 16#1CC# range 0 .. 15;
      SENS_ADC_CH2_DATA        at 16#1D0# range 0 .. 15;
      SENS_ADC_CH3_DATA        at 16#1D4# range 0 .. 15;
      IRQ_CTRL                 at 16#1E8# range 0 .. 15;
      IRQ_STS                  at 16#1EC# range 0 .. 7;
      MSEMI_MEM_CTRL           at 16#200# range 0 .. 31;
      EFUSE_1_STATUS_3         at 16#204# range 0 .. 31;
      LPMCU_FORCE_CONTROL      at 16#210# range 0 .. 15;
      ARM_IRQ_STATUS_0         at 16#214# range 0 .. 31;
      ARM_IRQ_STATUS_1         at 16#218# range 0 .. 31;
      BLE_DEEP_SLEEP_ENABLES   at 16#240# range 0 .. 7;
      DEEP_SLEEP_HW_TIMER_CORR at 16#244# range 0 .. 31;
      REMAP_IDRAM1_BASE_ADDR   at 16#254# range 0 .. 31;
      REMAP_IDRAM1_END_ADDR    at 16#258# range 0 .. 31;
      REMAP_IDRAM2_BASE_ADDR   at 16#25C# range 0 .. 31;
      REMAP_IDRAM2_END_ADDR    at 16#260# range 0 .. 31;
      REMAP_BOOT_BASE_ADDR     at 16#264# range 0 .. 31;
      REMAP_BOOT_END_ADDR      at 16#268# range 0 .. 31;
      QUAD_DEC_IRQS            at 16#280# range 0 .. 7;
      QUAD_DEC_1_STATUS        at 16#284# range 0 .. 15;
      QUAD_DEC_2_STATUS        at 16#288# range 0 .. 15;
      QUAD_DEC_3_STATUS        at 16#28C# range 0 .. 15;
      QUAD_DEC_1_THRESHOLD     at 16#290# range 0 .. 31;
      QUAD_DEC_1_CTRL          at 16#294# range 0 .. 7;
      QUAD_DEC_2_THRESHOLD     at 16#2A0# range 0 .. 31;
      QUAD_DEC_2_CTRL          at 16#2A4# range 0 .. 7;
      QUAD_DEC_3_THRESHOLD     at 16#2B0# range 0 .. 31;
      QUAD_DEC_3_CTRL          at 16#2B4# range 0 .. 7;
      FP_COMP0_COMP            at 16#2C0# range 0 .. 31;
      FP_COMP1_COMP            at 16#2C4# range 0 .. 31;
      FP_COMP2_COMP            at 16#2C8# range 0 .. 31;
      FP_COMP3_COMP            at 16#2CC# range 0 .. 31;
      FP_COMP4_COMP            at 16#2D0# range 0 .. 31;
      FP_COMP5_COMP            at 16#2D4# range 0 .. 31;
      FP_COMP6_COMP            at 16#2D8# range 0 .. 31;
      FP_COMP7_COMP            at 16#2DC# range 0 .. 31;
      FP_COMP8_COMP            at 16#2E0# range 0 .. 31;
      FP_COMP9_COMP            at 16#2E4# range 0 .. 31;
      FP_COMP10_COMP           at 16#2E8# range 0 .. 31;
      FP_COMP11_COMP           at 16#2EC# range 0 .. 31;
      FP_COMP12_COMP           at 16#2F0# range 0 .. 31;
      FP_COMP13_COMP           at 16#2F4# range 0 .. 31;
      FP_COMP14_COMP           at 16#2F8# range 0 .. 31;
      FP_COMP15_COMP           at 16#2FC# range 0 .. 31;
      FP_COMP0_REPLACE         at 16#300# range 0 .. 31;
      FP_COMP1_REPLACE         at 16#304# range 0 .. 31;
      FP_COMP2_REPLACE         at 16#308# range 0 .. 31;
      FP_COMP3_REPLACE         at 16#30C# range 0 .. 31;
      FP_COMP4_REPLACE         at 16#310# range 0 .. 31;
      FP_COMP5_REPLACE         at 16#314# range 0 .. 31;
      FP_COMP6_REPLACE         at 16#318# range 0 .. 31;
      FP_COMP7_REPLACE         at 16#31C# range 0 .. 31;
      FP_COMP8_REPLACE         at 16#320# range 0 .. 31;
      FP_COMP9_REPLACE         at 16#324# range 0 .. 31;
      FP_COMP10_REPLACE        at 16#328# range 0 .. 31;
      FP_COMP11_REPLACE        at 16#32C# range 0 .. 31;
      FP_COMP12_REPLACE        at 16#330# range 0 .. 31;
      FP_COMP13_REPLACE        at 16#334# range 0 .. 31;
      FP_COMP14_REPLACE        at 16#338# range 0 .. 31;
      FP_COMP15_REPLACE        at 16#33C# range 0 .. 31;
      FP_COMP_ENABLE           at 16#340# range 0 .. 15;
      PMU_READ_REGS            at 16#410# range 0 .. 31;
      MS_GPIO                  at 16#414# range 0 .. 7;
      AON_SLEEP_TIMER_COUNTER  at 16#420# range 0 .. 31;
   end record;

   --  LPMCU Misc Registers
   LPMCU_MISC_REGS0_Periph : aliased LPMCU_MISC_REGS0_Peripheral
     with Import, Address => System'To_Address (16#4000B000#);

end SAM_SVD.LPMCU_MISC_REGS;
