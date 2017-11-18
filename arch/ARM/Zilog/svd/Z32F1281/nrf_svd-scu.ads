--

--  This spec has been automatically generated from Z32F1281.svd

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
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  PREVMODE
      PREVMODE      : SMR_PREVMODE_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      PREVMODE      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  System Reset Control Register
   type SRCR_Register is record
      --  Internal soft reset activation
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRCR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Wakeup Source Enable Register
   type WUER_Register is record
      --  LVDWUE
      LVDWUE         : Boolean := False;
      --  WDTWUE
      WDTWUE         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
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
      Reserved_2_7   at 0 range 2 .. 7;
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
      --  unspecified
      Reserved_2_7   : HAL.UInt6;
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
      Reserved_2_7   at 0 range 2 .. 7;
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
      --  external OSC clock failed enable
      XFRST         : Boolean := False;
      --  MCLK failed reset enable
      MCKFRST       : Boolean := False;
      --  watch dog reset enable
      WDTRST        : Boolean := True;
      --  software reset enable
      SWRST         : Boolean := False;
      --  CPU request reset enable
      CPURST        : Boolean := False;
      --  external pin reset enable
      PINRST        : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSER_Register use record
      LVDRST        at 0 range 0 .. 0;
      XFRST         at 0 range 1 .. 1;
      MCKFRST       at 0 range 2 .. 2;
      WDTRST        at 0 range 3 .. 3;
      SWRST         at 0 range 4 .. 4;
      CPURST        at 0 range 5 .. 5;
      PINRST        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Reset Source Status Register
   type RSSR_Register is record
      --  lvd reset status
      LVDRST        : Boolean := False;
      --  clock failed reset status
      XFRST         : Boolean := False;
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
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSR_Register use record
      LVDRST        at 0 range 0 .. 0;
      XFRST         at 0 range 1 .. 1;
      MCKFRST       at 0 range 2 .. 2;
      WDTRST        at 0 range 3 .. 3;
      SWRST         at 0 range 4 .. 4;
      CPURST        at 0 range 5 .. 5;
      PINRST        at 0 range 6 .. 6;
      PORST         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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

   --  PRER1_TIMER array
   type PRER1_TIMER_Field_Array_1 is array (8 .. 9) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PRER1_TIMER
   type PRER1_TIMER_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  TIMER as an array
            Arr : PRER1_TIMER_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PRER1_TIMER_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Reset Enable Register 1
   type PRER1_Register is record
      --  Power Management Unit Reset
      SCU            : Boolean := True;
      --  Flash Memory controll Reset
      FMC            : Boolean := True;
      --  Watch Dog Timer Reset
      WDT            : Boolean := True;
      --  Port controll Reset
      PCU            : Boolean := True;
      --  DMA Reset
      DMA            : Boolean := True;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  GPIOA Reset
      GPIOA          : Boolean := True;
      --  GPIOB Reset
      GPIOB          : Boolean := True;
      --  GPIOC Reset
      GPIOC          : Boolean := True;
      --  GPIOD Reset
      GPIOD          : Boolean := True;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  TIMER0 reset
      TIMER          : PRER1_TIMER_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#F#;
      --  TIMER8 Reset
      TIMER_1        : PRER1_TIMER_Field_1 :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER1_Register use record
      SCU            at 0 range 0 .. 0;
      FMC            at 0 range 1 .. 1;
      WDT            at 0 range 2 .. 2;
      PCU            at 0 range 3 .. 3;
      DMA            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIMER          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TIMER_1        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PRER2_SPI array
   type PRER2_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PRER2_SPI
   type PRER2_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : PRER2_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PRER2_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PRER2_I2C array
   type PRER2_I2C_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PRER2_I2C
   type PRER2_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : PRER2_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PRER2_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PRER2_UART array
   type PRER2_UART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PRER2_UART
   type PRER2_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt4;
         when True =>
            --  UART as an array
            Arr : PRER2_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PRER2_UART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PRER2_MPWM array
   type PRER2_MPWM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PRER2_MPWM
   type PRER2_MPWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MPWM as a value
            Val : HAL.UInt2;
         when True =>
            --  MPWM as an array
            Arr : PRER2_MPWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PRER2_MPWM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PRER2_ADC array
   type PRER2_ADC_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PRER2_ADC
   type PRER2_ADC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADC as a value
            Val : HAL.UInt3;
         when True =>
            --  ADC as an array
            Arr : PRER2_ADC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PRER2_ADC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Peripheral Reset Enable Register 2
   type PRER2_Register is record
      --  SPI0 Reset
      SPI            : PRER2_SPI_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  I2C0 Reset
      I2C            : PRER2_I2C_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  UART0 Reset
      UART           : PRER2_UART_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  MPWM0 Reset
      MPWM           : PRER2_MPWM_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  ADC0 Reset
      ADC            : PRER2_ADC_Field := (As_Array => False, Val => 16#1#);
      --  AFE Reset
      AFE            : Boolean := True;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER2_Register use record
      SPI            at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      I2C            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      UART           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MPWM           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADC            at 0 range 20 .. 22;
      AFE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
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

   --  PER1_TIMER array
   type PER1_TIMER_Field_Array_1 is array (8 .. 9) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER1_TIMER
   type PER1_TIMER_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  TIMER as an array
            Arr : PER1_TIMER_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER1_TIMER_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Enable Register 1
   type PER1_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#F#;
      --  DMA Function Enable
      DMA            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
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
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  TIMER8 Enable
      TIMER_1        : PER1_TIMER_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER1_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DMA            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIMER          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TIMER_1        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PER2_SPI array
   type PER2_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER2_SPI
   type PER2_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : PER2_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER2_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PER2_I2C array
   type PER2_I2C_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER2_I2C
   type PER2_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : PER2_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER2_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PER2_UART array
   type PER2_UART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PER2_UART
   type PER2_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt4;
         when True =>
            --  UART as an array
            Arr : PER2_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PER2_UART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PER2_MPWM array
   type PER2_MPWM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER2_MPWM
   type PER2_MPWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MPWM as a value
            Val : HAL.UInt2;
         when True =>
            --  MPWM as an array
            Arr : PER2_MPWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER2_MPWM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PER2_ADC array
   type PER2_ADC_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PER2_ADC
   type PER2_ADC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADC as a value
            Val : HAL.UInt3;
         when True =>
            --  ADC as an array
            Arr : PER2_ADC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PER2_ADC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Peripheral Enable Register 2
   type PER2_Register is record
      --  SPI0 Enable
      SPI            : PER2_SPI_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  I2C0 Enable
      I2C            : PER2_I2C_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  UART0 Enable
      UART           : PER2_UART_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  MPWM0 Enable
      MPWM           : PER2_MPWM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  ADC0
      ADC            : PER2_ADC_Field := (As_Array => False, Val => 16#0#);
      --  AFE
      AFE            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER2_Register use record
      SPI            at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      I2C            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      UART           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MPWM           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADC            at 0 range 20 .. 22;
      AFE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
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

   --  PCER1_TIMER array
   type PCER1_TIMER_Field_Array_1 is array (8 .. 9) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCER1_TIMER
   type PCER1_TIMER_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  TIMER as an array
            Arr : PCER1_TIMER_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCER1_TIMER_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Clock Enable Register 1
   type PCER1_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#F#;
      --  DMA Function Enable
      DMA            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
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
      TIMER          : PCER1_TIMER_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  TIMER8 Enable
      TIMER_1        : PCER1_TIMER_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCER1_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DMA            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIMER          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TIMER_1        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PCER2_SPI array
   type PCER2_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCER2_SPI
   type PCER2_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : PCER2_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCER2_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PCER2_I2C array
   type PCER2_I2C_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCER2_I2C
   type PCER2_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : PCER2_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCER2_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PCER2_UART array
   type PCER2_UART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PCER2_UART
   type PCER2_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt4;
         when True =>
            --  UART as an array
            Arr : PCER2_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PCER2_UART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PCER2_MPWM array
   type PCER2_MPWM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCER2_MPWM
   type PCER2_MPWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MPWM as a value
            Val : HAL.UInt2;
         when True =>
            --  MPWM as an array
            Arr : PCER2_MPWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCER2_MPWM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PCER2_ADC array
   type PCER2_ADC_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PCER2_ADC
   type PCER2_ADC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADC as a value
            Val : HAL.UInt3;
         when True =>
            --  ADC as an array
            Arr : PCER2_ADC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PCER2_ADC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Peripheral Clock Enable Register 2
   type PCER2_Register is record
      --  SPI0 Enable
      SPI            : PCER2_SPI_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  I2C0 Enable
      I2C            : PCER2_I2C_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  UART0 Enable
      UART           : PCER2_UART_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  MPWM0 Enable
      MPWM           : PCER2_MPWM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  ADC0
      ADC            : PCER2_ADC_Field := (As_Array => False, Val => 16#0#);
      --  AFE
      AFE            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCER2_Register use record
      SPI            at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      I2C            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      UART           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MPWM           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADC            at 0 range 20 .. 22;
      AFE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CSCR_EOSCON_Field is HAL.UInt2;
   subtype CSCR_IOSCCON_Field is HAL.UInt2;
   subtype CSCR_RINGOSCCON_Field is HAL.UInt2;

   --  Clock Source Control Register
   type CSCR_Register is record
      --  External crystal OSC control
      EOSCON        : CSCR_EOSCON_Field := 16#0#;
      --  Internal OSC control
      IOSCCON       : CSCR_IOSCCON_Field := 16#0#;
      --  Internal ring OSC control
      RINGOSCCON    : CSCR_RINGOSCCON_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSCR_Register use record
      EOSCON        at 0 range 0 .. 1;
      IOSCCON       at 0 range 2 .. 3;
      RINGOSCCON    at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SCCR_MCLKSEL_Field is HAL.UInt2;

   --  System Clock Control Register
   type SCCR_Register is record
      --  System clock select
      MCLKSEL       : SCCR_MCLKSEL_Field := 16#0#;
      --  PLL Input source FIN Select
      FINSEL        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCCR_Register use record
      MCLKSEL       at 0 range 0 .. 1;
      FINSEL        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Monitoring Register
   type CMR_Register is record
      --  external OSC status
      EOSCSTS        : Boolean := True;
      --  external OSC failed flag
      EOSCFAIL       : Boolean := True;
      --  external OSC failed interrupt enable
      EOSCIE         : Boolean := False;
      --  Externaler OSC monitor enable
      EOSCMNT        : Boolean := False;
      --  MCLK clock status
      MCLKSTS        : Boolean := False;
      --  MCLK Failed flag
      MCLKFAIL       : Boolean := False;
      --  MCLK fail Interrupt enable
      MCLKIE         : Boolean := False;
      --  MCLK monitor enable
      MCLKMNT        : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Read-only. MCLK failed auto recovery
      MCLKREC        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      EOSCSTS        at 0 range 0 .. 0;
      EOSCFAIL       at 0 range 1 .. 1;
      EOSCIE         at 0 range 2 .. 2;
      EOSCMNT        at 0 range 3 .. 3;
      MCLKSTS        at 0 range 4 .. 4;
      MCLKFAIL       at 0 range 5 .. 5;
      MCLKIE         at 0 range 6 .. 6;
      MCLKMNT        at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      MCLKREC        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  NMI Control Register
   type NMIR_Register is record
      --  NMIEN
      NMIEN         : Boolean := False;
      --  NMI Debounce enable
      NMIDBEN       : Boolean := False;
      --  NMI interrupt flag
      NMIFLAG       : Boolean := False;
      --  NMI Pin status
      NMISTAT       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIR_Register use record
      NMIEN         at 0 range 0 .. 0;
      NMIDBEN       at 0 range 1 .. 1;
      NMIFLAG       at 0 range 2 .. 2;
      NMISTAT       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
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

   subtype PLLCON_POSTDIV_Field is HAL.UInt4;
   subtype PLLCON_FBCTRL_Field is HAL.UInt4;

   --  PLL Control Register
   type PLLCON_Register is record
      --  post divider
      POSTDIV        : PLLCON_POSTDIV_Field := 16#0#;
      --  Feedback control
      FBCTRL         : PLLCON_FBCTRL_Field := 16#0#;
      --  FIN pre divider
      PREDIV         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Read-only. PLL Lock state
      LOCKSTS        : Boolean := False;
      --  FIN Bypass to FOUT
      BYPASS         : Boolean := False;
      --  PLL Enable
      PLLEN          : Boolean := False;
      --  PLL reset
      PLLRSTB        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCON_Register use record
      POSTDIV        at 0 range 0 .. 3;
      FBCTRL         at 0 range 4 .. 7;
      PREDIV         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      LOCKSTS        at 0 range 12 .. 12;
      BYPASS         at 0 range 13 .. 13;
      PLLEN          at 0 range 14 .. 14;
      PLLRSTB        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VDCCON_VDCWDLY_Field is HAL.UInt8;
   subtype VDCCON_VDCTRIM_Field is HAL.UInt4;
   subtype VDCCON_BMRTRIM_Field is HAL.UInt3;

   --  VDC Control Register
   type VDCCON_Register is record
      --  VDC warm up delay count
      VDCWDLY        : VDCCON_VDCWDLY_Field := 16#F#;
      --  Write-only. VDC Warm-up Delay value write enable
      VDCDE          : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  VDC output voltage trim value
      VDCTRIM        : VDCCON_VDCTRIM_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Write-only. VDCTRIM Value write enable
      VDCTE          : Boolean := False;
      --  Reference BGR output voltage trim value
      BMRTRIM        : VDCCON_BMRTRIM_Field := 16#0#;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  Write-only. Reference BGR Trim write enable
      BMRTE          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VDCCON_Register use record
      VDCWDLY        at 0 range 0 .. 7;
      VDCDE          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VDCTRIM        at 0 range 16 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      VDCTE          at 0 range 23 .. 23;
      BMRTRIM        at 0 range 24 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      BMRTE          at 0 range 31 .. 31;
   end record;

   subtype LVDCON_LVDSEL_Field is HAL.UInt2;
   subtype LVDCON_LVDTRIM_Field is HAL.UInt2;

   --  LVD Control Register
   type LVDCON_Register is record
      --  LVD function enable
      LVDEN          : Boolean := True;
      --  Read-only. LVD Level state
      LVDLVL         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  LVD detect level select
      LVDSEL         : LVDCON_LVDSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. LVDSEL value write enable
      SELEN          : Boolean := False;
      --  LVD voltage level trim value
      LVDTRIM        : LVDCON_LVDTRIM_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Write-only. LVDTRIM value write enable
      LVDTE          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
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
      LVDTRIM        at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      LVDTE          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype IOSCTRIM_UDCL_Field is HAL.UInt3;
   subtype IOSCTRIM_UDCH_Field is HAL.UInt2;
   subtype IOSCTRIM_LTM_Field is HAL.UInt2;
   subtype IOSCTRIM_LT_Field is HAL.UInt4;
   subtype IOSCTRIM_TSL_Field is HAL.UInt3;

   --  Internal OSC Trim Register
   type IOSCTRIM_Register is record
      --  UDCL
      UDCL           : IOSCTRIM_UDCL_Field := 16#0#;
      --  UDCH
      UDCH           : IOSCTRIM_UDCH_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  UDCEN
      UDCEN          : Boolean := False;
      --  interal oscillator LT trim value
      LTM            : IOSCTRIM_LTM_Field := 16#0#;
      --  interal oscillator LT trim value
      LT             : IOSCTRIM_LT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  LTEN
      LTEN           : Boolean := False;
      --  TSL
      TSL            : IOSCTRIM_TSL_Field := 16#0#;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  TSLEN
      TSLEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOSCTRIM_Register use record
      UDCL           at 0 range 0 .. 2;
      UDCH           at 0 range 3 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      UDCEN          at 0 range 7 .. 7;
      LTM            at 0 range 8 .. 9;
      LT             at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      LTEN           at 0 range 15 .. 15;
      TSL            at 0 range 16 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      TSLEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA0TRIM_ATRIM_Field is HAL.UInt4;
   subtype OPA0TRIM_GTRIM_Field is HAL.UInt4;
   subtype OPA0TRIM_ABM_Field is HAL.UInt2;

   --  Internal OPAMP 0 Trim Register
   type OPA0TRIM_Register is record
      --  OPAMP VIO (offset) Trim
      ATRIM          : OPA0TRIM_ATRIM_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Write-only. ATRIM value write enable
      ATRIMEN        : Boolean := False;
      --  Opamp Gain Trim value
      GTRIM          : OPA0TRIM_GTRIM_Field := 16#2#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Write-only. GTRIM value write enable
      GTRIMEN        : Boolean := False;
      --  OPAMP BIAS trim value
      ABM            : OPA0TRIM_ABM_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Write-only. ABM trim value write enable
      ABMEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0TRIM_Register use record
      ATRIM          at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ATRIMEN        at 0 range 7 .. 7;
      GTRIM          at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      GTRIMEN        at 0 range 15 .. 15;
      ABM            at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      ABMEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA1TRIM_ATRIM_Field is HAL.UInt4;
   subtype OPA1TRIM_GTRIM_Field is HAL.UInt4;
   subtype OPA1TRIM_ABM_Field is HAL.UInt2;

   --  Internal OPAMP 1 Trim Register
   type OPA1TRIM_Register is record
      --  OPAMP VIO (offset) Trim
      ATRIM          : OPA1TRIM_ATRIM_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Write-only. ATRIM value write enable
      ATRIMEN        : Boolean := False;
      --  Opamp Gain Trim value
      GTRIM          : OPA1TRIM_GTRIM_Field := 16#2#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Write-only. GTRIM value write enable
      GTRIMEN        : Boolean := False;
      --  OPAMP BIAS trim value
      ABM            : OPA1TRIM_ABM_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Write-only. ABM trim value write enable
      ABMEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1TRIM_Register use record
      ATRIM          at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ATRIMEN        at 0 range 7 .. 7;
      GTRIM          at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      GTRIMEN        at 0 range 15 .. 15;
      ABM            at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      ABMEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA2TRIM_ATRIM_Field is HAL.UInt4;
   subtype OPA2TRIM_GTRIM_Field is HAL.UInt4;
   subtype OPA2TRIM_ABM_Field is HAL.UInt2;

   --  Internal OPAMP 2 Trim Register
   type OPA2TRIM_Register is record
      --  OPAMP VIO (offset) Trim
      ATRIM          : OPA2TRIM_ATRIM_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Write-only. ATRIM value write enable
      ATRIMEN        : Boolean := False;
      --  Opamp Gain Trim value
      GTRIM          : OPA2TRIM_GTRIM_Field := 16#2#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Write-only. GTRIM value write enable
      GTRIMEN        : Boolean := False;
      --  OPAMP BIAS trim value
      ABM            : OPA2TRIM_ABM_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Write-only. ABM trim value write enable
      ABMEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2TRIM_Register use record
      ATRIM          at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ATRIMEN        at 0 range 7 .. 7;
      GTRIM          at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      GTRIMEN        at 0 range 15 .. 15;
      ABM            at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      ABMEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA3TRIM_ATRIM_Field is HAL.UInt4;
   subtype OPA3TRIM_GTRIM_Field is HAL.UInt4;
   subtype OPA3TRIM_ABM_Field is HAL.UInt2;

   --  Internal OPAMP 3 Trim Register
   type OPA3TRIM_Register is record
      --  OPAMP VIO (offset) Trim
      ATRIM          : OPA3TRIM_ATRIM_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Write-only. ATRIM value write enable
      ATRIMEN        : Boolean := False;
      --  Opamp Gain Trim value
      GTRIM          : OPA3TRIM_GTRIM_Field := 16#2#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Write-only. GTRIM value write enable
      GTRIMEN        : Boolean := False;
      --  OPAMP BIAS trim value
      ABM            : OPA3TRIM_ABM_Field := 16#0#;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Write-only. ABM trim value write enable
      ABMEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3TRIM_Register use record
      ATRIM          at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      ATRIMEN        at 0 range 7 .. 7;
      GTRIM          at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      GTRIMEN        at 0 range 15 .. 15;
      ABM            at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      ABMEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype EOSCR_ISEL_Field is HAL.UInt2;

   --  External Oscillator Control Register
   type EOSCR_Register is record
      --  Select AMP type
      AMPSEL         : Boolean := False;
      --  unspecified
      Reserved_1_6   : HAL.UInt6 := 16#0#;
      --  Write-only. write enable for bit field AMPSEL
      AMPEN          : Boolean := False;
      --  select current
      ISEL           : EOSCR_ISEL_Field := 16#3#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. write enable for bit field ISEL
      ISELEN         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EOSCR_Register use record
      AMPSEL         at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      AMPEN          at 0 range 7 .. 7;
      ISEL           at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      ISELEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Mode Status Register
   type EMODR_Register is record
      --  boot pin level
      BOOT          : Boolean := False;
      --  TEST PIN level
      TEST          : Boolean := False;
      --  scan mode pin level
      SCANMD        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMODR_Register use record
      BOOT          at 0 range 0 .. 0;
      TEST          at 0 range 1 .. 1;
      SCANMD        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MCCR1_STDIV_Field is HAL.UInt8;
   subtype MCCR1_STCSEL_Field is HAL.UInt3;
   subtype MCCR1_TRACEDIV_Field is HAL.UInt8;
   subtype MCCR1_TRCSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 1
   type MCCR1_Register is record
      --  systick divider
      STDIV          : MCCR1_STDIV_Field := 16#1#;
      --  systick clock source sel
      STCSEL         : MCCR1_STCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  TRACEDIV
      TRACEDIV       : MCCR1_TRACEDIV_Field := 16#4#;
      --  trace clock source sel
      TRCSEL         : MCCR1_TRCSEL_Field := 16#4#;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  Write-only. TRCPOL
      TRCPOL         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR1_Register use record
      STDIV          at 0 range 0 .. 7;
      STCSEL         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      TRACEDIV       at 0 range 16 .. 23;
      TRCSEL         at 0 range 24 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      TRCPOL         at 0 range 31 .. 31;
   end record;

   subtype MCCR2_PWM0DIV_Field is HAL.UInt8;
   subtype MCCR2_PWM0CSEL_Field is HAL.UInt3;
   subtype MCCR2_PWM1DIV_Field is HAL.UInt8;
   subtype MCCR2_PWM1CSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 2
   type MCCR2_Register is record
      --  PWM0 divider
      PWM0DIV        : MCCR2_PWM0DIV_Field := 16#0#;
      --  pwm0 clock sel
      PWM0CSEL       : MCCR2_PWM0CSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  pwm1 divider
      PWM1DIV        : MCCR2_PWM1DIV_Field := 16#0#;
      --  PWM1 clock sel
      PWM1CSEL       : MCCR2_PWM1CSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR2_Register use record
      PWM0DIV        at 0 range 0 .. 7;
      PWM0CSEL       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PWM1DIV        at 0 range 16 .. 23;
      PWM1CSEL       at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype MCCR3_WDTDIV_Field is HAL.UInt8;
   subtype MCCR3_WDTCSEL_Field is HAL.UInt3;
   subtype MCCR3_TEXT0DIV_Field is HAL.UInt8;
   subtype MCCR3_TEXT0CSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 3
   type MCCR3_Register is record
      --  WDT divider
      WDTDIV         : MCCR3_WDTDIV_Field := 16#1#;
      --  WDT clock sel
      WDTCSEL        : MCCR3_WDTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  text0 divider
      TEXT0DIV       : MCCR3_TEXT0DIV_Field := 16#1#;
      --  text0 clock sel
      TEXT0CSEL      : MCCR3_TEXT0CSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR3_Register use record
      WDTDIV         at 0 range 0 .. 7;
      WDTCSEL        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      TEXT0DIV       at 0 range 16 .. 23;
      TEXT0CSEL      at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DBCLK1_PADDIV_Field is HAL.UInt8;
   subtype DBCLK1_PADCSEL_Field is HAL.UInt3;
   subtype DBCLK1_PBDDIV_Field is HAL.UInt8;
   subtype DBCLK1_PBDSEL_Field is HAL.UInt3;

   --  Debounce Clock Control Register 1
   type DBCLK1_Register is record
      --  PORT A debounce divider
      PADDIV         : DBCLK1_PADDIV_Field := 16#1#;
      --  debouce clock for port A source clock sel
      PADCSEL        : DBCLK1_PADCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  PORT B debounce divider
      PBDDIV         : DBCLK1_PBDDIV_Field := 16#1#;
      --  debouce clock for port B source clock sel
      PBDSEL         : DBCLK1_PBDSEL_Field := 16#0#;
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
      PBDSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DBCLK2_PCDDIV_Field is HAL.UInt8;
   subtype DBCLK2_PCDSEK_Field is HAL.UInt3;
   subtype DBCLK2_PDDDIV_Field is HAL.UInt8;
   subtype DBCLK2_PDDCSEL_Field is HAL.UInt3;

   --  Debounce Clock Control Register 2
   type DBCLK2_Register is record
      --  PORT C debounce divider
      PCDDIV         : DBCLK2_PCDDIV_Field := 16#1#;
      --  debouce clock for port C source clock sel
      PCDSEK         : DBCLK2_PCDSEK_Field := 16#0#;
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
      PCDSEK         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PDDDIV         at 0 range 16 .. 23;
      PDDCSEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype MCCR4_ETCDDIV_Field is HAL.UInt8;
   subtype MCCR4_ETCDCSEL_Field is HAL.UInt3;
   subtype MCCR4_ADCCDIV_Field is HAL.UInt8;
   subtype MCCR4_ADCCSEL_Field is HAL.UInt3;

   --  Miscellaneous Clock Control Register 4
   type MCCR4_Register is record
      --  ETC Debounce clock divider
      ETCDDIV        : MCCR4_ETCDDIV_Field := 16#1#;
      --  Debouce clock for ETC source clock sel
      ETCDCSEL       : MCCR4_ETCDCSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  ADC Clock N divider
      ADCCDIV        : MCCR4_ADCCDIV_Field := 16#0#;
      --  ADC clock source select bitl
      ADCCSEL        : MCCR4_ADCCSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR4_Register use record
      ETCDDIV        at 0 range 0 .. 7;
      ETCDCSEL       at 0 range 8 .. 10;
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
      --  Chip ID Register
      CIDR     : aliased HAL.UInt32;
      --  System Mode Register
      SMR      : aliased SMR_Register;
      --  System Reset Control Register
      SRCR     : aliased SRCR_Register;
      --  Wakeup Source Enable Register
      WUER     : aliased WUER_Register;
      --  Wakeup Source Status Register
      WUSR     : aliased WUSR_Register;
      --  Reset Source Enable Register
      RSER     : aliased RSER_Register;
      --  Reset Source Status Register
      RSSR     : aliased RSSR_Register;
      --  Peripheral Reset Enable Register 1
      PRER1    : aliased PRER1_Register;
      --  Peripheral Reset Enable Register 2
      PRER2    : aliased PRER2_Register;
      --  Peripheral Enable Register 1
      PER1     : aliased PER1_Register;
      --  Peripheral Enable Register 2
      PER2     : aliased PER2_Register;
      --  Peripheral Clock Enable Register 1
      PCER1    : aliased PCER1_Register;
      --  Peripheral Clock Enable Register 2
      PCER2    : aliased PCER2_Register;
      --  Clock Source Control Register
      CSCR     : aliased CSCR_Register;
      --  System Clock Control Register
      SCCR     : aliased SCCR_Register;
      --  Clock Monitoring Register
      CMR      : aliased CMR_Register;
      --  NMI Control Register
      NMIR     : aliased NMIR_Register;
      --  Clock Output Register
      COR      : aliased COR_Register;
      --  PLL Control Register
      PLLCON   : aliased PLLCON_Register;
      --  VDC Control Register
      VDCCON   : aliased VDCCON_Register;
      --  LVD Control Register
      LVDCON   : aliased LVDCON_Register;
      --  Internal OSC Trim Register
      IOSCTRIM : aliased IOSCTRIM_Register;
      --  Internal OPAMP 0 Trim Register
      OPA0TRIM : aliased OPA0TRIM_Register;
      --  Internal OPAMP 1 Trim Register
      OPA1TRIM : aliased OPA1TRIM_Register;
      --  Internal OPAMP 2 Trim Register
      OPA2TRIM : aliased OPA2TRIM_Register;
      --  Internal OPAMP 3 Trim Register
      OPA3TRIM : aliased OPA3TRIM_Register;
      --  External Oscillator Control Register
      EOSCR    : aliased EOSCR_Register;
      --  External Mode Status Register
      EMODR    : aliased EMODR_Register;
      --  Miscellaneous Clock Control Register 1
      MCCR1    : aliased MCCR1_Register;
      --  Miscellaneous Clock Control Register 2
      MCCR2    : aliased MCCR2_Register;
      --  Miscellaneous Clock Control Register 3
      MCCR3    : aliased MCCR3_Register;
      --  Debounce Clock Control Register 1
      DBCLK1   : aliased DBCLK1_Register;
      --  Debounce Clock Control Register 2
      DBCLK2   : aliased DBCLK2_Register;
      --  Miscellaneous Clock Control Register 4
      MCCR4    : aliased MCCR4_Register;
   end record
     with Volatile;

   for SCU_Peripheral use record
      CIDR     at 16#0# range 0 .. 31;
      SMR      at 16#4# range 0 .. 31;
      SRCR     at 16#8# range 0 .. 31;
      WUER     at 16#10# range 0 .. 31;
      WUSR     at 16#14# range 0 .. 31;
      RSER     at 16#18# range 0 .. 31;
      RSSR     at 16#1C# range 0 .. 31;
      PRER1    at 16#20# range 0 .. 31;
      PRER2    at 16#24# range 0 .. 31;
      PER1     at 16#28# range 0 .. 31;
      PER2     at 16#2C# range 0 .. 31;
      PCER1    at 16#30# range 0 .. 31;
      PCER2    at 16#34# range 0 .. 31;
      CSCR     at 16#40# range 0 .. 31;
      SCCR     at 16#44# range 0 .. 31;
      CMR      at 16#48# range 0 .. 31;
      NMIR     at 16#4C# range 0 .. 31;
      COR      at 16#50# range 0 .. 31;
      PLLCON   at 16#60# range 0 .. 31;
      VDCCON   at 16#64# range 0 .. 31;
      LVDCON   at 16#68# range 0 .. 31;
      IOSCTRIM at 16#6C# range 0 .. 31;
      OPA0TRIM at 16#70# range 0 .. 31;
      OPA1TRIM at 16#74# range 0 .. 31;
      OPA2TRIM at 16#78# range 0 .. 31;
      OPA3TRIM at 16#7C# range 0 .. 31;
      EOSCR    at 16#80# range 0 .. 31;
      EMODR    at 16#84# range 0 .. 31;
      MCCR1    at 16#90# range 0 .. 31;
      MCCR2    at 16#94# range 0 .. 31;
      MCCR3    at 16#98# range 0 .. 31;
      DBCLK1   at 16#9C# range 0 .. 31;
      DBCLK2   at 16#A0# range 0 .. 31;
      MCCR4    at 16#A4# range 0 .. 31;
   end record;

   --  SYSTEM CONTROL UNIT
   SCU_Periph : aliased SCU_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.SCU;
