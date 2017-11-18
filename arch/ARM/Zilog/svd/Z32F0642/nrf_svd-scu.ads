--

--  This spec has been automatically generated from Z32F0642.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SMR_PREVMODE_Field is HAL.UInt2;

   --  System Mode Register
   type SMR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Read-only. PREVMODE
      PREVMODE       : SMR_PREVMODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  VDCAON
      VDCAON         : Boolean := False;
      --  LSIAON
      LSIAON         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PREVMODE       at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      VDCAON         at 0 range 8 .. 8;
      LSIAON         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  System Reset Control Register
   type SRCR_Register is record
      --  Internal soft reset activation
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  STBOP pin output polarity select bit
      STBOP         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRCR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      STBOP         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Wakeup Source Enable Register
   type WUER_Register is record
      --  LVDWUE
      LVDWUE         : Boolean := False;
      --  WDTWUE
      WDTWUE         : Boolean := False;
      --  FRTWUE
      FRTWUE         : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  GPIOAWUE
      GPIOAWUE       : Boolean := False;
      --  GPIOBWUE
      GPIOBWUE       : Boolean := False;
      --  GPIOCWUE
      GPIOCWUE       : Boolean := False;
      --  GPIODWUE
      GPIODWUE       : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUER_Register use record
      LVDWUE         at 0 range 0 .. 0;
      WDTWUE         at 0 range 1 .. 1;
      FRTWUE         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      GPIOAWUE       at 0 range 8 .. 8;
      GPIOBWUE       at 0 range 9 .. 9;
      GPIOCWUE       at 0 range 10 .. 10;
      GPIODWUE       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Wakeup Source Status Register
   type WUSR_Register is record
      --  Read-only. LVDWU
      LVDWU          : Boolean;
      --  Read-only. WDTWU
      WDTWU          : Boolean;
      --  Read-only. FRTWU
      FRTWU          : Boolean;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
      --  Read-only. GPIOAWU
      GPIOAWU        : Boolean;
      --  Read-only. GPIOBWU
      GPIOBWU        : Boolean;
      --  Read-only. GPIOCWU
      GPIOCWU        : Boolean;
      --  Read-only. GPIODWU
      GPIODWU        : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUSR_Register use record
      LVDWU          at 0 range 0 .. 0;
      WDTWU          at 0 range 1 .. 1;
      FRTWU          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      GPIOAWU        at 0 range 8 .. 8;
      GPIOBWU        at 0 range 9 .. 9;
      GPIOCWU        at 0 range 10 .. 10;
      GPIODWU        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Reset Source Enable Register
   type RSER_Register is record
      --  LVD reset enable
      LVDRST        : Boolean := True;
      --  MOSC Clock fail reset enable
      MOFRST        : Boolean := False;
      --  MCLK Clock fail reset enable
      MCKFRST       : Boolean := False;
      --  watch dog reset enable
      WDTRST        : Boolean := True;
      --  software reset enable
      SWRST         : Boolean := False;
      --  CPU request reset enable
      CPURST        : Boolean := True;
      --  external pin reset enable
      PINRST        : Boolean := True;
      --  CPU Lock up reset enable bit
      LOCKUPRST     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSER_Register use record
      LVDRST        at 0 range 0 .. 0;
      MOFRST        at 0 range 1 .. 1;
      MCKFRST       at 0 range 2 .. 2;
      WDTRST        at 0 range 3 .. 3;
      SWRST         at 0 range 4 .. 4;
      CPURST        at 0 range 5 .. 5;
      PINRST        at 0 range 6 .. 6;
      LOCKUPRST     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Reset Source Status Register
   type RSSR_Register is record
      --  lvd reset status
      LVDRST        : Boolean := False;
      --  MOSC Clock fail reset status
      MOFRST        : Boolean := False;
      --  MCLK failed reset status
      MCKFRST       : Boolean := False;
      --  watchdog timer reset status
      WDTRST        : Boolean := False;
      --  software reset status
      SWRST         : Boolean := False;
      --  cpu request reset status
      CPURST        : Boolean := False;
      --  extenral pin reset status
      PINRST        : Boolean := False;
      --  power on reset status
      PORST         : Boolean := True;
      --  CPU Lock up reset status
      LOCKUPRST     : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSR_Register use record
      LVDRST        at 0 range 0 .. 0;
      MOFRST        at 0 range 1 .. 1;
      MCKFRST       at 0 range 2 .. 2;
      WDTRST        at 0 range 3 .. 3;
      SWRST         at 0 range 4 .. 4;
      CPURST        at 0 range 5 .. 5;
      PINRST        at 0 range 6 .. 6;
      PORST         at 0 range 7 .. 7;
      LOCKUPRST     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PRER1_TIMER array
   type PRER1_TIMER_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PRER1_TIMER
   type PRER1_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt4;
         when True =>
            --  TIMER as an array
            Arr : PRER1_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PRER1_TIMER_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Peripheral Reset Enable Register 1
   type PRER1_Register is record
      --  Power Management Unit Reset enable
      SCU            : Boolean := True;
      --  Flash Memory controller Reset enable
      FMC            : Boolean := True;
      --  WatchDog timer reset enable
      WDT            : Boolean := True;
      --  Port Controller unit reset enable
      PCU            : Boolean := True;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  DIV64 Reset enable
      DIV64          : Boolean := True;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  GPIOA Reset enable
      GPIOA          : Boolean := True;
      --  GPIOB Reset enable
      GPIOB          : Boolean := True;
      --  GPIOC Reset enable
      GPIOC          : Boolean := True;
      --  GPIOD Reset enable
      GPIOD          : Boolean := True;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  TIMER0 Reset enable
      TIMER          : PRER1_TIMER_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  FRT Reset enable
      FRT            : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER1_Register use record
      SCU            at 0 range 0 .. 0;
      FMC            at 0 range 1 .. 1;
      WDT            at 0 range 2 .. 2;
      PCU            at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DIV64          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIMER          at 0 range 16 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      FRT            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  PRER2_UART array
   type PRER2_UART_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PRER2_UART
   type PRER2_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt2;
         when True =>
            --  UART as an array
            Arr : PRER2_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PRER2_UART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Reset Enable Register 2
   type PRER2_Register is record
      --  SPI Reset enable
      SPI            : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  I2C Reset enable
      I2C            : Boolean := True;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  UART0 Reset enable
      UART           : PRER2_UART_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  MPWM Reset enable
      MPWM           : Boolean := True;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  ADC Reset enable
      ADC            : Boolean := True;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER2_Register use record
      SPI            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      I2C            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      UART           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MPWM           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      ADC            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  PER1_TIMER array
   type PER1_TIMER_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PER1_TIMER
   type PER1_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt4;
         when True =>
            --  TIMER as an array
            Arr : PER1_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PER1_TIMER_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Peripheral Enable Register 1
   type PER1_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#F#;
      --  DIV64
      DIV64          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  GPIOA
      GPIOA          : Boolean := False;
      --  GPIOB
      GPIOB          : Boolean := False;
      --  GPIOC
      GPIOC          : Boolean := False;
      --  GPIOD
      GPIOD          : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  TIMER0
      TIMER          : PER1_TIMER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  FRT
      FRT            : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER1_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      DIV64          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIMER          at 0 range 16 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      FRT            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  PER2_UART array
   type PER2_UART_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER2_UART
   type PER2_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt2;
         when True =>
            --  UART as an array
            Arr : PER2_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER2_UART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Enable Register 2
   type PER2_Register is record
      --  SPI Enable
      SPI            : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  I2C
      I2C            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  UART0
      UART           : PER2_UART_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  MPWM
      MPWM           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  ADC
      ADC            : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER2_Register use record
      SPI            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      I2C            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      UART           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MPWM           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      ADC            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  PCER1_TIMER array
   type PCER1_TIMER_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PCER1_TIMER
   type PCER1_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt4;
         when True =>
            --  TIMER as an array
            Arr : PCER1_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PCER1_TIMER_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Peripheral Clock Enable Register 1
   type PCER1_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#F#;
      --  DIV64
      DIV64          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  GPIOA clock enable
      GPIOA          : Boolean := False;
      --  GPIOB clock enable
      GPIOB          : Boolean := False;
      --  GPIOC clock enable
      GPIOC          : Boolean := False;
      --  GPIOD clock enable
      GPIOD          : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  TIMER0
      TIMER          : PCER1_TIMER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  FRT clock enable
      FRT            : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCER1_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      DIV64          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIMER          at 0 range 16 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      FRT            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  PCER2_UART array
   type PCER2_UART_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCER2_UART
   type PCER2_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt2;
         when True =>
            --  UART as an array
            Arr : PCER2_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCER2_UART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Clock Enable Register 2
   type PCER2_Register is record
      --  SPI clock enable
      SPI            : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  I2C clock enable
      I2C            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  UART0
      UART           : PCER2_UART_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  MPWM clock enable
      MPWM           : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  ADC clock enable
      ADC            : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCER2_Register use record
      SPI            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      I2C            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      UART           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MPWM           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      ADC            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype CSCR_MOSCCON_Field is HAL.UInt2;
   subtype CSCR_HSICON_Field is HAL.UInt2;
   subtype CSCR_LSICON_Field is HAL.UInt2;
   subtype CSCR_SOSCCON_Field is HAL.UInt2;

   --  Clock Source Control Register
   type CSCR_Register is record
      --  External crystal main oscillator control
      MOSCCON       : CSCR_MOSCCON_Field := 16#0#;
      --  High speed internal oscillator control
      HSICON        : CSCR_HSICON_Field := 16#0#;
      --  Low speed internal oscillator control
      LSICON        : CSCR_LSICON_Field := 16#2#;
      --  External crystal sub oscillator control
      SOSCCON       : CSCR_SOSCCON_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSCR_Register use record
      MOSCCON       at 0 range 0 .. 1;
      HSICON        at 0 range 2 .. 3;
      LSICON        at 0 range 4 .. 5;
      SOSCCON       at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SCCR_MCLKSEL_Field is HAL.UInt3;

   --  System Clock Control Register
   type SCCR_Register is record
      --  System clock select
      MCLKSEL       : SCCR_MCLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCCR_Register use record
      MCLKSEL       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Monitoring Register
   type CMR_Register is record
      --  external OSC status
      MOSCSTS        : Boolean := False;
      --  external OSC failed flag
      MOSCFAIL       : Boolean := False;
      --  external OSC failed interrupt enable
      MOSCIE         : Boolean := False;
      --  External OSC monitor enable
      MOSCMNT        : Boolean := False;
      --  MCLK clock status
      MCLKSTS        : Boolean := True;
      --  MCLK Failed flag
      MCLKFAIL       : Boolean := False;
      --  MCLK fail Interrupt enable
      MCLKIE         : Boolean := False;
      --  MCLK monitor enable
      MCLKMNT        : Boolean := True;
      --  Sub Oscillator clock status
      SOSCSTS        : Boolean := False;
      --  Sub Oscillator fail interrupt flag
      SOSCFAIL       : Boolean := False;
      --  Sub Oscillator fail interrupt enable
      SOSCIE         : Boolean := False;
      --  Sub Oscillator monitoring enable
      SOSCMNT        : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  MCLK failed auto recovery
      MCLKREC        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      MOSCSTS        at 0 range 0 .. 0;
      MOSCFAIL       at 0 range 1 .. 1;
      MOSCIE         at 0 range 2 .. 2;
      MOSCMNT        at 0 range 3 .. 3;
      MCLKSTS        at 0 range 4 .. 4;
      MCLKFAIL       at 0 range 5 .. 5;
      MCLKIE         at 0 range 6 .. 6;
      MCLKMNT        at 0 range 7 .. 7;
      SOSCSTS        at 0 range 8 .. 8;
      SOSCFAIL       at 0 range 9 .. 9;
      SOSCIE         at 0 range 10 .. 10;
      SOSCMNT        at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      MCLKREC        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype NMIR_ACODE_Field is HAL.UInt16;

   --  NMI Control Register
   type NMIR_Register is record
      --  LVDEN
      LVDEN          : Boolean := True;
      --  MCLKFAILEN
      MCLKFAILEN     : Boolean := True;
      --  WDTINTEN
      WDTINTEN       : Boolean := False;
      --  OVPEN
      OVPEN          : Boolean := False;
      --  PROTEN
      PROTEN         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Read-only. LVDSTS
      LVDSTS         : Boolean := False;
      --  Read-only. MCLKFAILSTS
      MCLKFAILSTS    : Boolean := False;
      --  Read-only. WDTINTSTS
      WDTINTSTS      : Boolean := False;
      --  Read-only. OVPSTS
      OVPSTS         : Boolean := False;
      --  Read-only. PROTSTS
      PROTSTS        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  0xA32C to write
      ACODE          : NMIR_ACODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIR_Register use record
      LVDEN          at 0 range 0 .. 0;
      MCLKFAILEN     at 0 range 1 .. 1;
      WDTINTEN       at 0 range 2 .. 2;
      OVPEN          at 0 range 3 .. 3;
      PROTEN         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      LVDSTS         at 0 range 8 .. 8;
      MCLKFAILSTS    at 0 range 9 .. 9;
      WDTINTSTS      at 0 range 10 .. 10;
      OVPSTS         at 0 range 11 .. 11;
      PROTSTS        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ACODE          at 0 range 16 .. 31;
   end record;

   subtype COR_CLKODIV_Field is HAL.UInt4;

   --  Clock Output Register
   type COR_Register is record
      --  clock output divider value
      CLKODIV       : COR_CLKODIV_Field := 16#F#;
      --  clock output enable
      CLKOEN        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COR_Register use record
      CLKODIV       at 0 range 0 .. 3;
      CLKOEN        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype VDCCON_VDCWDLY_Field is HAL.UInt4;

   --  VDC Control Register
   type VDCCON_Register is record
      --  Write-only. VDC warm up delay count
      VDCWDLY        : VDCCON_VDCWDLY_Field := 16#F#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#7#;
      --  Write-only. VDCWDLY value write enable. Write only with VDCWDLY value
      VDCDE          : Boolean := False;
      --  unspecified
      Reserved_9_24  : HAL.UInt16 := 16#0#;
      --  Write-only. VDC STOP MODE Select bit
      STOPSEL        : Boolean := False;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  Write-only. VDCMODE value write enable. Write only with VDCMODE value
      VDCME          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VDCCON_Register use record
      VDCWDLY        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      VDCDE          at 0 range 8 .. 8;
      Reserved_9_24  at 0 range 9 .. 24;
      STOPSEL        at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      VDCME          at 0 range 31 .. 31;
   end record;

   subtype LVDCON_LVDSEL_Field is HAL.UInt2;

   --  LVD Control Register
   type LVDCON_Register is record
      --  LVDEN
      LVDEN          : Boolean := True;
      --  Read-only. LVDLVL
      LVDLVL         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  LVDSEL
      LVDSEL         : LVDCON_LVDSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. SELEN
      SELEN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDCON_Register use record
      LVDEN          at 0 range 0 .. 0;
      LVDLVL         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LVDSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      SELEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  High Speed Internal OSC Trim Register
   type HSIOSCTRIM_Register is record
      --  unspecified
      Reserved_0_29 : HAL.UInt30 := 16#7780FF#;
      --  Reference clock select for self-calibration
      REFSEL        : Boolean := False;
      --  Build in self calibration function enable
      BISCON        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSIOSCTRIM_Register use record
      Reserved_0_29 at 0 range 0 .. 29;
      REFSEL        at 0 range 30 .. 30;
      BISCON        at 0 range 31 .. 31;
   end record;

   subtype BISCCON_XTAL_COMP_Field is HAL.UInt16;
   subtype BISCCON_INTOSC_COMP_Field is HAL.UInt16;

   --  Build in self calibration control Register
   type BISCCON_Register is record
      --  XTAL_COMP
      XTAL_COMP   : BISCCON_XTAL_COMP_Field := 16#0#;
      --  Write-only. INTOSC_COMP
      INTOSC_COMP : BISCCON_INTOSC_COMP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BISCCON_Register use record
      XTAL_COMP   at 0 range 0 .. 15;
      INTOSC_COMP at 0 range 16 .. 31;
   end record;

   --  External Main Oscillator Control Register
   type EMOSCR_Register is record
      --  Control External Main Oscillator CLK invert
      INVCLKEN       : Boolean := False;
      --  unspecified
      Reserved_1_6   : HAL.UInt6 := 16#0#;
      --  Write-only. Write enable of bit field FILSKIPEN
      INVCLKWEN      : Boolean := False;
      --  Control External Main Oscillator Filter Skip
      FILSKIPEN      : Boolean := True;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#1#;
      --  Write-only. Write enable of bit field FILSKIPEN
      FILSKIPWEN     : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMOSCR_Register use record
      INVCLKEN       at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      INVCLKWEN      at 0 range 7 .. 7;
      FILSKIPEN      at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      FILSKIPWEN     at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Mode Status Register
   type EMODR_Register is record
      --  Read-only. boot pin level
      BOOT          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMODR_Register use record
      BOOT          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MCCR1_STCDIV_Field is HAL.UInt8;
   subtype MCCR1_STCSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 1
   type MCCR1_Register is record
      --  systick divider
      STCDIV         : MCCR1_STCDIV_Field := 16#0#;
      --  systick clock source sel
      STCSEL         : MCCR1_STCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR1_Register use record
      STCDIV         at 0 range 0 .. 7;
      STCSEL         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MCCR2_PWMDIV_Field is HAL.UInt8;
   subtype MCCR2_PWMCSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 2
   type MCCR2_Register is record
      --  MPWM clock n divider
      PWMDIV         : MCCR2_PWMDIV_Field := 16#0#;
      --  MPWM Clock source sel
      PWMCSEL        : MCCR2_PWMCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR2_Register use record
      PWMDIV         at 0 range 0 .. 7;
      PWMCSEL        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MCCR3_WDTDIV_Field is HAL.UInt8;
   subtype MCCR3_WDTCSEL_Field is HAL.UInt3;
   subtype MCCR3_TIMERDIV_Field is HAL.UInt8;
   subtype MCCR3_TIMERCSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 3
   type MCCR3_Register is record
      --  WDT divider
      WDTDIV         : MCCR3_WDTDIV_Field := 16#1#;
      --  WDT clock sel
      WDTCSEL        : MCCR3_WDTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Timer Clock divider
      TIMERDIV       : MCCR3_TIMERDIV_Field := 16#0#;
      --  Timer Clock source sel
      TIMERCSEL      : MCCR3_TIMERCSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR3_Register use record
      WDTDIV         at 0 range 0 .. 7;
      WDTCSEL        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      TIMERDIV       at 0 range 16 .. 23;
      TIMERCSEL      at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DBCLK1_PADDIV_Field is HAL.UInt8;
   subtype DBCLK1_PADCSEL_Field is HAL.UInt3;
   subtype DBCLK1_PBDDIV_Field is HAL.UInt8;
   subtype DBCLK1_PBDCSEL_Field is HAL.UInt3;

   --  Debounce Clock Control Register 1
   type DBCLK1_Register is record
      --  PORT A Debounce Clock N divider
      PADDIV         : DBCLK1_PADDIV_Field := 16#1#;
      --  Debounce Clock for Port A source select
      PADCSEL        : DBCLK1_PADCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  PORT B Debounce Clock N divider
      PBDDIV         : DBCLK1_PBDDIV_Field := 16#1#;
      --  Debounce Clock for Port B source select
      PBDCSEL        : DBCLK1_PBDCSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBCLK1_Register use record
      PADDIV         at 0 range 0 .. 7;
      PADCSEL        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PBDDIV         at 0 range 16 .. 23;
      PBDCSEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DBCLK2_PCDDIV_Field is HAL.UInt8;
   subtype DBCLK2_PCDCSEL_Field is HAL.UInt3;
   subtype DBCLK2_PDDDIV_Field is HAL.UInt8;
   subtype DBCLK2_PDDCSEL_Field is HAL.UInt3;

   --  Debounce Clock Control Register 2
   type DBCLK2_Register is record
      --  PORT C debounce divider
      PCDDIV         : DBCLK2_PCDDIV_Field := 16#1#;
      --  debouce clock for port C source clock sel
      PCDCSEL        : DBCLK2_PCDCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  PORT D debounce divider
      PDDDIV         : DBCLK2_PDDDIV_Field := 16#1#;
      --  debouce clock for port D source clock sel
      PDDCSEL        : DBCLK2_PDDCSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBCLK2_Register use record
      PCDDIV         at 0 range 0 .. 7;
      PCDCSEL        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PDDDIV         at 0 range 16 .. 23;
      PDDCSEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype MCCR4_UARTCDIV_Field is HAL.UInt8;
   subtype MCCR4_UARTCSEL_Field is HAL.UInt3;
   subtype MCCR4_ADCCDIV_Field is HAL.UInt8;
   subtype MCCR4_ADCCSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 4
   type MCCR4_Register is record
      --  UART Clock N divider
      UARTCDIV       : MCCR4_UARTCDIV_Field := 16#0#;
      --  UART clock source select bit
      UARTCSEL       : MCCR4_UARTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  ADC Clock N divider
      ADCCDIV        : MCCR4_ADCCDIV_Field := 16#1#;
      --  ADC clock source select bit
      ADCCSEL        : MCCR4_ADCCSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR4_Register use record
      UARTCDIV       at 0 range 0 .. 7;
      UARTCSEL       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      ADCCDIV        at 0 range 16 .. 23;
      ADCCSEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SYSTEM CONTROL UNIT
   type SCU_Peripheral is record
      --  System Mode Register
      SMR        : aliased SMR_Register;
      --  System Reset Control Register
      SRCR       : aliased SRCR_Register;
      --  Wakeup Source Enable Register
      WUER       : aliased WUER_Register;
      --  Wakeup Source Status Register
      WUSR       : aliased WUSR_Register;
      --  Reset Source Enable Register
      RSER       : aliased RSER_Register;
      --  Reset Source Status Register
      RSSR       : aliased RSSR_Register;
      --  Peripheral Reset Enable Register 1
      PRER1      : aliased PRER1_Register;
      --  Peripheral Reset Enable Register 2
      PRER2      : aliased PRER2_Register;
      --  Peripheral Enable Register 1
      PER1       : aliased PER1_Register;
      --  Peripheral Enable Register 2
      PER2       : aliased PER2_Register;
      --  Peripheral Clock Enable Register 1
      PCER1      : aliased PCER1_Register;
      --  Peripheral Clock Enable Register 2
      PCER2      : aliased PCER2_Register;
      --  Clock Source Control Register
      CSCR       : aliased CSCR_Register;
      --  System Clock Control Register
      SCCR       : aliased SCCR_Register;
      --  Clock Monitoring Register
      CMR        : aliased CMR_Register;
      --  NMI Control Register
      NMIR       : aliased NMIR_Register;
      --  Clock Output Register
      COR        : aliased COR_Register;
      --  VDC Control Register
      VDCCON     : aliased VDCCON_Register;
      --  LVD Control Register
      LVDCON     : aliased LVDCON_Register;
      --  High Speed Internal OSC Trim Register
      HSIOSCTRIM : aliased HSIOSCTRIM_Register;
      --  Build in self calibration control Register
      BISCCON    : aliased BISCCON_Register;
      --  External Main Oscillator Control Register
      EMOSCR     : aliased EMOSCR_Register;
      --  External Mode Status Register
      EMODR      : aliased EMODR_Register;
      --  Miscellaneous Clock Control Register 1
      MCCR1      : aliased MCCR1_Register;
      --  Miscellaneous Clock Control Register 2
      MCCR2      : aliased MCCR2_Register;
      --  Miscellaneous Clock Control Register 3
      MCCR3      : aliased MCCR3_Register;
      --  Debounce Clock Control Register 1
      DBCLK1     : aliased DBCLK1_Register;
      --  Debounce Clock Control Register 2
      DBCLK2     : aliased DBCLK2_Register;
      --  Miscellaneous Clock Control Register 4
      MCCR4      : aliased MCCR4_Register;
   end record
     with Volatile;

   for SCU_Peripheral use record
      SMR        at 16#4# range 0 .. 31;
      SRCR       at 16#8# range 0 .. 31;
      WUER       at 16#10# range 0 .. 31;
      WUSR       at 16#14# range 0 .. 31;
      RSER       at 16#18# range 0 .. 31;
      RSSR       at 16#1C# range 0 .. 31;
      PRER1      at 16#20# range 0 .. 31;
      PRER2      at 16#24# range 0 .. 31;
      PER1       at 16#28# range 0 .. 31;
      PER2       at 16#2C# range 0 .. 31;
      PCER1      at 16#30# range 0 .. 31;
      PCER2      at 16#34# range 0 .. 31;
      CSCR       at 16#40# range 0 .. 31;
      SCCR       at 16#44# range 0 .. 31;
      CMR        at 16#48# range 0 .. 31;
      NMIR       at 16#4C# range 0 .. 31;
      COR        at 16#50# range 0 .. 31;
      VDCCON     at 16#64# range 0 .. 31;
      LVDCON     at 16#68# range 0 .. 31;
      HSIOSCTRIM at 16#6C# range 0 .. 31;
      BISCCON    at 16#70# range 0 .. 31;
      EMOSCR     at 16#80# range 0 .. 31;
      EMODR      at 16#84# range 0 .. 31;
      MCCR1      at 16#90# range 0 .. 31;
      MCCR2      at 16#94# range 0 .. 31;
      MCCR3      at 16#98# range 0 .. 31;
      DBCLK1     at 16#9C# range 0 .. 31;
      DBCLK2     at 16#A0# range 0 .. 31;
      MCCR4      at 16#A8# range 0 .. 31;
   end record;

   --  SYSTEM CONTROL UNIT
   SCU_Periph : aliased SCU_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.SCU;
