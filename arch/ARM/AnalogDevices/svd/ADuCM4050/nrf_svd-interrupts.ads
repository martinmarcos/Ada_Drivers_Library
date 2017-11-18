--

--  This spec has been automatically generated from ADuCM4050.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Event
   RTC1_EVT                     : constant := 0;

   --  External Wakeup Interrupt n
   XINT_EVT0                    : constant := 1;

   --  External Wakeup Interrupt n
   XINT_EVT1                    : constant := 2;

   --  External Wakeup Interrupt n
   XINT_EVT2                    : constant := 3;

   --  External Wakeup Interrupt n
   XINT_EVT3                    : constant := 4;

   --  Expiration
   WDT_EXP                      : constant := 5;

   --  Voltage Regulator (VREG) Overvoltage
   PMG0_VREG_OVR                : constant := 6;

   --  Battery Voltage (VBAT) Out of Range
   PMG0_BATT_RANGE              : constant := 7;

   --  Event
   RTC0_EVT                     : constant := 8;

   --  GPIO Interrupt A
   SYS_GPIO_INTA                : constant := 9;

   --  GPIO Interrupt B
   SYS_GPIO_INTB                : constant := 10;

   --  Event
   TMR0_EVT                     : constant := 11;

   --  Event
   TMR1_EVT                     : constant := 12;

   --  UART0 Event
   UART0_EVT                    : constant := 14;

   --  Event
   SPI0_EVT                     : constant := 15;

   --  Event
   SPI2_EVT                     : constant := 16;

   --  Slave Event
   I2C_SLV_EVT                  : constant := 17;

   --  Master Event
   I2C_MST_EVT                  : constant := 18;

   --  Channel Error
   DMA_CHAN_ERR                 : constant := 19;

   --  Channel 0 Done
   DMA0_CH0_DONE                : constant := 20;

   --  Channel 1 Done
   DMA0_CH1_DONE                : constant := 21;

   --  Channel 2 Done
   DMA0_CH2_DONE                : constant := 22;

   --  Channel 3 Done
   DMA0_CH3_DONE                : constant := 23;

   --  Channel 4 Done
   DMA0_CH4_DONE                : constant := 24;

   --  Channel 5 Done
   DMA0_CH5_DONE                : constant := 25;

   --  Channel 6 Done
   DMA0_CH6_DONE                : constant := 26;

   --  Channel 7 Done
   DMA0_CH7_DONE                : constant := 27;

   --  Channel 8 Done
   DMA0_CH8_DONE                : constant := 28;

   --  Channel 9 Done
   DMA0_CH9_DONE                : constant := 29;

   --  Channel 10 Done
   DMA0_CH10_DONE               : constant := 30;

   --  Channel 11 Done
   DMA0_CH11_DONE               : constant := 31;

   --  Channel 12 Done
   DMA0_CH12_DONE               : constant := 32;

   --  Channel 13 Done
   DMA0_CH13_DONE               : constant := 33;

   --  Channel 14 Done
   DMA0_CH14_DONE               : constant := 34;

   --  Channel 15 Done
   DMA0_CH15_DONE               : constant := 35;

   --  Channel A Event
   SPORT_A_EVT                  : constant := 36;

   --  Channel B Event
   SPORT_B_EVT                  : constant := 37;

   --  Event
   CRYPT_EVT                    : constant := 38;

   --  Channel 24 Done
   DMA0_CH24_DONE               : constant := 39;

   --  Event
   TMR2_EVT                     : constant := 40;

   --  Crystal Oscillator Event
   CLKG_XTAL_OSC_EVT            : constant := 41;

   --  Event
   SPI1_EVT                     : constant := 42;

   --  PLL Event
   CLKG_PLL_EVT                 : constant := 43;

   --  Event
   RNG0_EVT                     : constant := 44;

   --  Event
   BEEP_EVT                     : constant := 45;

   --  Event
   ADC0_EVT                     : constant := 46;

   --  Channel 16 Done
   DMA0_CH16_DONE               : constant := 56;

   --  Channel 17 Done
   DMA0_CH17_DONE               : constant := 57;

   --  Channel 18 Done
   DMA0_CH18_DONE               : constant := 58;

   --  Channel 19 Done
   DMA0_CH19_DONE               : constant := 59;

   --  Channel 20 Done
   DMA0_CH20_DONE               : constant := 60;

   --  Channel 21 Done
   DMA0_CH21_DONE               : constant := 61;

   --  Channel 22 Done
   DMA0_CH22_DONE               : constant := 62;

   --  Channel 23 Done
   DMA0_CH23_DONE               : constant := 63;

   --  Event
   UART1_EVT                    : constant := 66;

   --  Channel 25 Done
   DMA0_CH25_DONE               : constant := 67;

   --  Channel 26 Done
   DMA0_CH26_DONE               : constant := 68;

   --  Event
   TMR_RGB_EVT                  : constant := 69;

   --  Root Clock Error
   CLKG_ROOTCLK_ERR             : constant := 71;

end NRF_SVD.Interrupts;
