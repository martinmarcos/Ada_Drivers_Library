--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_PMUMODE_Field is HAL.UInt2;
   subtype MR_PREVMODE_Field is HAL.UInt2;

   --  PMU Mode Register
   type MR_Register is record
      --  PMUMODE
      PMUMODE       : MR_PMUMODE_Field := 16#0#;
      --  VDCLP
      VDCLP         : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  PREVMODE
      PREVMODE      : MR_PREVMODE_Field := 16#0#;
      --  PVDCLP
      PVDCLP        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      PMUMODE       at 0 range 0 .. 1;
      VDCLP         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      PREVMODE      at 0 range 4 .. 5;
      PVDCLP        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PMU CONFIGURATION REGISTER
   type CFGR_Register is record
      --  Setting for internal soft-reset
      SOFTRST       : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Output polarity of STBY pin
      STBYOP        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SOFTRST       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      STBYOP        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PMU Wake-up Source Enable Register
   type WSER_Register is record
      --  Setting of the wake-up by LVD (SLEEP)Setting value of the wake-up by
      --  Main OSC Fail Event (SLEEP)
      LVDE           : Boolean := False;
      --  Setting of the wake-up by Main OSC-fail event(SLEEP)Setting value of
      --  the wake-up by Sub OSC Fail Event (SLEEP)
      MXFAILE        : Boolean := False;
      --  Setting of the wake-up by the Sub OSC Fail Event(SLEEP)Setting value
      --  of the wake-up by LVD (SLEEP)
      SXFAILE        : Boolean := False;
      --  Setting of the wake-up by WDT (PD SLEEP)
      WDTE           : Boolean := False;
      --  Setting of the wake-up by FRT (PD SLEEP)
      FRTE           : Boolean := False;
      --  Setting of the wake-up by GPIO (PD SLEEP)
      GPIOAE         : Boolean := False;
      --  Setting of the wake-up by GPIOB (PD SLEEP)
      GPIOBE         : Boolean := False;
      --  Setting of the wake-up by GPIOC (PD SLEEP)
      GPIOCE         : Boolean := False;
      --  Setting of the wake-up by GPIOD (PD SLEEP)
      GPIODE         : Boolean := False;
      --  Setting of the wake-up by GPIOE (PD SLEEP)
      GPIOEE         : Boolean := False;
      --  Setting of the wake-up by GPIOF (PD SLEEP)
      GPIOFE         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WSER_Register use record
      LVDE           at 0 range 0 .. 0;
      MXFAILE        at 0 range 1 .. 1;
      SXFAILE        at 0 range 2 .. 2;
      WDTE           at 0 range 3 .. 3;
      FRTE           at 0 range 4 .. 4;
      GPIOAE         at 0 range 5 .. 5;
      GPIOBE         at 0 range 6 .. 6;
      GPIOCE         at 0 range 7 .. 7;
      GPIODE         at 0 range 8 .. 8;
      GPIOEE         at 0 range 9 .. 9;
      GPIOFE         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  PMU Wak-up Source Status Register
   type WSSR_Register is record
      --  LVD
      LVD            : Boolean := False;
      --  MXFAIL
      MXFAIL         : Boolean := False;
      --  SXFAIL
      SXFAIL         : Boolean := False;
      --  WDT
      WDT            : Boolean := False;
      --  FRT
      FRT            : Boolean := False;
      --  GPIOA
      GPIOA          : Boolean := False;
      --  GPIOB
      GPIOB          : Boolean := False;
      --  GPIOC
      GPIOC          : Boolean := False;
      --  GPIOD
      GPIOD          : Boolean := False;
      --  GPIOE
      GPIOE          : Boolean := False;
      --  GPIOF
      GPIOF          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WSSR_Register use record
      LVD            at 0 range 0 .. 0;
      MXFAIL         at 0 range 1 .. 1;
      SXFAIL         at 0 range 2 .. 2;
      WDT            at 0 range 3 .. 3;
      FRT            at 0 range 4 .. 4;
      GPIOA          at 0 range 5 .. 5;
      GPIOB          at 0 range 6 .. 6;
      GPIOC          at 0 range 7 .. 7;
      GPIOD          at 0 range 8 .. 8;
      GPIOE          at 0 range 9 .. 9;
      GPIOF          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Reset Source Enable Register
   type RSER_Register is record
      --  Enable/Disable LVD reset
      LVDRSTE       : Boolean := False;
      --  Enable/Disable auxiliary oscillator failure reset
      MXFAILRSTE    : Boolean := False;
      --  Enable/Disable auxiliary oscillator failure reset
      SXFAILRSTE    : Boolean := False;
      --  Enable/Disable WDT reset
      WDTRSTE       : Boolean := False;
      --  Enable/Disable Software Reset in PMUCFGR
      SWRSTE        : Boolean := False;
      --  Enable/Disable SystemReset from the core
      SYSRSTE       : Boolean := False;
      --  Enable/Disable external nRESET pin reset
      RSTRSTE       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSER_Register use record
      LVDRSTE       at 0 range 0 .. 0;
      MXFAILRSTE    at 0 range 1 .. 1;
      SXFAILRSTE    at 0 range 2 .. 2;
      WDTRSTE       at 0 range 3 .. 3;
      SWRSTE        at 0 range 4 .. 4;
      SYSRSTE       at 0 range 5 .. 5;
      RSTRSTE       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Reset Source Status Register
   type RSSR_Register is record
      --  Occurrence of LVD reset
      LVDRST        : Boolean := False;
      --  Occurrence of auxiliary oscillator failure reset
      MXFAILRST     : Boolean := False;
      --  Occurrence of auxiliary oscillator failure reset
      SXFAILRST     : Boolean := False;
      --  Occurrence of WDT reset
      WDTRST        : Boolean := False;
      --  Occurrence of Software Reset in PMUCFGR
      SWRST         : Boolean := False;
      --  Occurrence of SystemReset from the core
      SYSRST        : Boolean := False;
      --  Occurrence of external nRESET pin reset
      RSTRST        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSR_Register use record
      LVDRST        at 0 range 0 .. 0;
      MXFAILRST     at 0 range 1 .. 1;
      SXFAILRST     at 0 range 2 .. 2;
      WDTRST        at 0 range 3 .. 3;
      SWRST         at 0 range 4 .. 4;
      SYSRST        at 0 range 5 .. 5;
      RSTRST        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PERR_TIMER array
   type PERR_TIMER_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PERR_TIMER
   type PERR_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt3;
         when True =>
            --  TIMER as an array
            Arr : PERR_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PERR_TIMER_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PERR_SPI array
   type PERR_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PERR_SPI
   type PERR_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : PERR_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PERR_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PERR_I2C array
   type PERR_I2C_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PERR_I2C
   type PERR_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : PERR_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PERR_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PERR_UART array
   type PERR_UART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PERR_UART
   type PERR_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt4;
         when True =>
            --  UART as an array
            Arr : PERR_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PERR_UART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PERR_PWM array
   type PERR_PWM_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PERR_PWM
   type PERR_PWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWM as a value
            Val : HAL.UInt2;
         when True =>
            --  PWM as an array
            Arr : PERR_PWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PERR_PWM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PMU Peripheral Event Reset Register
   type PERR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#7#;
      --  Enabled Watchdog Timer reset
      WDT            : Boolean := True;
      --  Enble Free-run Timer reset
      FRT            : Boolean := True;
      --  Enable TIMER0, 1 reset
      TIMER          : PERR_TIMER_Field := (As_Array => False, Val => 16#1#);
      --  Enable GPIOA reset
      GPIOA          : Boolean := True;
      --  Enable GPIOB reset
      GPIOB          : Boolean := True;
      --  Enable GPIOC reset
      GPIOC          : Boolean := True;
      --  Enable GPIOD reset
      GPIOD          : Boolean := True;
      --  Enable GPIOE reset
      GPIOE          : Boolean := True;
      --  Enable GPIOF reset
      GPIOF          : Boolean := True;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Enable SPI0 reset
      SPI            : PERR_SPI_Field := (As_Array => False, Val => 16#1#);
      --  Enable I2C0 reset
      I2C            : PERR_I2C_Field := (As_Array => False, Val => 16#1#);
      --  Enable UART0 reset
      UART           : PERR_UART_Field := (As_Array => False, Val => 16#1#);
      --  Enable PWM0, 1,2,3 reset
      PWM            : PERR_PWM_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Enable ADC reset
      ADC            : Boolean := True;
      --  Enable PMC (Port Map Controller) reset
      PMC            : Boolean := True;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Enable JTAG reset
      JTAGEN         : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      WDT            at 0 range 3 .. 3;
      FRT            at 0 range 4 .. 4;
      TIMER          at 0 range 5 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      GPIOE          at 0 range 12 .. 12;
      GPIOF          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SPI            at 0 range 16 .. 17;
      I2C            at 0 range 18 .. 19;
      UART           at 0 range 20 .. 23;
      PWM            at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      ADC            at 0 range 28 .. 28;
      PMC            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      JTAGEN         at 0 range 31 .. 31;
   end record;

   --  PER_TIMER array
   type PER_TIMER_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PER_TIMER
   type PER_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt3;
         when True =>
            --  TIMER as an array
            Arr : PER_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PER_TIMER_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PER_SPI array
   type PER_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER_SPI
   type PER_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : PER_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PER_I2C array
   type PER_I2C_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER_I2C
   type PER_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : PER_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PER_UART array
   type PER_UART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PER_UART
   type PER_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt4;
         when True =>
            --  UART as an array
            Arr : PER_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PER_UART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PER_PWM array
   type PER_PWM_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PER_PWM
   type PER_PWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWM as a value
            Val : HAL.UInt2;
         when True =>
            --  PWM as an array
            Arr : PER_PWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PER_PWM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PMU Perpheral Enable Register
   type PER_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#7#;
      --  Enable-Reset Watch-dog Timer
      WDT            : Boolean := True;
      --  Enable-Reset Free-run Timer
      FRT            : Boolean := True;
      --  Enable-Reset TIMER0, 1
      TIMER          : PER_TIMER_Field := (As_Array => False, Val => 16#1#);
      --  Enable-Reset GPIOA
      GPIOA          : Boolean := True;
      --  Enable-Reset GPIOB
      GPIOB          : Boolean := True;
      --  Enable-Reset GPIOC
      GPIOC          : Boolean := True;
      --  Enable-Reset GPIOD
      GPIOD          : Boolean := True;
      --  Enable-Reset GPIOE
      GPIOE          : Boolean := True;
      --  Enable-Reset GPIOF
      GPIOF          : Boolean := True;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Enable-Reset SPI0
      SPI            : PER_SPI_Field := (As_Array => False, Val => 16#1#);
      --  Enable-Reset I2C0
      I2C            : PER_I2C_Field := (As_Array => False, Val => 16#1#);
      --  Enable-Reset UART0
      UART           : PER_UART_Field := (As_Array => False, Val => 16#1#);
      --  Enable-Reset PWM0, 1,2,3
      PWM            : PER_PWM_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Enable-Reset ADC
      ADC            : Boolean := True;
      --  Enable-Reset PMC
      PMC            : Boolean := True;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  JTAG enable - reset
      JTAGEN         : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PER_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      WDT            at 0 range 3 .. 3;
      FRT            at 0 range 4 .. 4;
      TIMER          at 0 range 5 .. 7;
      GPIOA          at 0 range 8 .. 8;
      GPIOB          at 0 range 9 .. 9;
      GPIOC          at 0 range 10 .. 10;
      GPIOD          at 0 range 11 .. 11;
      GPIOE          at 0 range 12 .. 12;
      GPIOF          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SPI            at 0 range 16 .. 17;
      I2C            at 0 range 18 .. 19;
      UART           at 0 range 20 .. 23;
      PWM            at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      ADC            at 0 range 28 .. 28;
      PMC            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      JTAGEN         at 0 range 31 .. 31;
   end record;

   --  PCCR_TIMER array
   type PCCR_TIMER_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PCCR_TIMER
   type PCCR_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : HAL.UInt3;
         when True =>
            --  TIMER as an array
            Arr : PCCR_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PCCR_TIMER_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PCCR_SPI array
   type PCCR_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCCR_SPI
   type PCCR_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : PCCR_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCCR_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PCCR_I2C array
   type PCCR_I2C_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCCR_I2C
   type PCCR_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt2;
         when True =>
            --  I2C as an array
            Arr : PCCR_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCCR_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PCCR_UART array
   type PCCR_UART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PCCR_UART
   type PCCR_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : HAL.UInt4;
         when True =>
            --  UART as an array
            Arr : PCCR_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PCCR_UART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PCCR_PWM array
   type PCCR_PWM_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PCCR_PWM
   type PCCR_PWM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWM as a value
            Val : HAL.UInt2;
         when True =>
            --  PWM as an array
            Arr : PCCR_PWM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PCCR_PWM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PMU Peripheral Clock Control Register
   type PCCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#7#;
      --  Enable-Disable Watch-dog Timer clock
      WDT            : Boolean := True;
      --  Enable-Disable Free-run Timer clock
      FRT            : Boolean := True;
      --  Enable-Disable TIMER0, 1 clock
      TIMER          : PCCR_TIMER_Field := (As_Array => False, Val => 16#0#);
      --  Enable-Disable GPIO clock
      GPIO           : Boolean := True;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#1F#;
      --  Enable-Disable SPI0 clock
      SPI            : PCCR_SPI_Field := (As_Array => False, Val => 16#0#);
      --  Enable-Disable I2C0 clock
      I2C            : PCCR_I2C_Field := (As_Array => False, Val => 16#0#);
      --  Enable-Disable UART0 clock
      UART           : PCCR_UART_Field := (As_Array => False, Val => 16#0#);
      --  Enable-Disable PWM0, 1,2,3 clock
      PWM            : PCCR_PWM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Enable-Disable ADC clock
      ADC            : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      WDT            at 0 range 3 .. 3;
      FRT            at 0 range 4 .. 4;
      TIMER          at 0 range 5 .. 7;
      GPIO           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      SPI            at 0 range 16 .. 17;
      I2C            at 0 range 18 .. 19;
      UART           at 0 range 20 .. 23;
      PWM            at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      ADC            at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CCR_MXOSCEN_Field is HAL.UInt2;
   subtype CCR_SXOSCEN_Field is HAL.UInt2;
   subtype CCR_IOSC16EN_Field is HAL.UInt2;
   subtype CCR_ROSCEN_Field is HAL.UInt2;

   --  PMU Clock Control Register
   type CCR_Register is record
      --  Enable external main crystal oscillator
      MXOSCEN       : CCR_MXOSCEN_Field := 16#0#;
      --  Enable external sub-crystal oscillator
      SXOSCEN       : CCR_SXOSCEN_Field := 16#0#;
      --  Enable internal 16MHz oscillator
      IOSC16EN      : CCR_IOSC16EN_Field := 16#0#;
      --  Enable internal ring oscillator
      ROSCEN        : CCR_ROSCEN_Field := 16#2#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      MXOSCEN       at 0 range 0 .. 1;
      SXOSCEN       at 0 range 2 .. 3;
      IOSC16EN      at 0 range 4 .. 5;
      ROSCEN        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PMU Clock Monitoring Register
   type CMR_Register is record
      --  The oscillation status of external main crystal oscillation (To clear
      --  this flag, write 1 to the bit)
      MXOSCSTS       : Boolean := False;
      --  The oscillation status of external auxiliary crystal oscillation (To
      --  clear this flag, write 1 to the bit)
      SXOSCSTS       : Boolean := False;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Failure dectection flag of external main crystal oscillation (To
      --  clear this flag, write 1 to the bit)
      MXOSCIF        : Boolean := False;
      --  Failure dectection flag of external auxiliary crystal oscillation (To
      --  clear this flag, write 1 to the bit)
      SXOSCIF        : Boolean := False;
      --  Enable-Disable the monitoring function of external main crystal
      --  oscillator
      MXOSCMNT       : Boolean := False;
      --  Enable-Disable the monitoring function of external auxiliary crystal
      --  oscillator
      SXOSCMNT       : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Enable-Disable the interrupt event of monitoring external main
      --  crystal oscillation
      MXOSCIE        : Boolean := False;
      --  Enable-Disable the interrupt event of monitoring external auxiliary
      --  crystal oscillation
      SXOSCIE        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      MXOSCSTS       at 0 range 0 .. 0;
      SXOSCSTS       at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      MXOSCIF        at 0 range 6 .. 6;
      SXOSCIF        at 0 range 7 .. 7;
      MXOSCMNT       at 0 range 8 .. 8;
      SXOSCMNT       at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      MXOSCIE        at 0 range 14 .. 14;
      SXOSCIE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BCCR_MCLKSEL_Field is HAL.UInt2;
   subtype BCCR_HCLKDIV_Field is HAL.UInt2;

   --  PMU BUS Clock Control Register
   type BCCR_Register is record
      --  Main clock source selection
      MCLKSEL        : BCCR_MCLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  PLL input clock selection
      PLLCLKSEL      : Boolean := False;
      --  PLL input clock divider
      PLLCLKDIV      : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  HCLK clock dvider set
      HCLKDIV        : BCCR_HCLKDIV_Field := 16#0#;
      --  PCLK clock divider set
      PCLKDIV        : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCCR_Register use record
      MCLKSEL        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PLLCLKSEL      at 0 range 4 .. 4;
      PLLCLKDIV      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      HCLKDIV        at 0 range 8 .. 9;
      PCLKDIV        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype PCSR_WDTCS_Field is HAL.UInt2;
   subtype PCSR_FRTCS_Field is HAL.UInt2;
   subtype PCSR_T01CS_Field is HAL.UInt2;
   subtype PCSR_T25CS_Field is HAL.UInt2;
   subtype PCSR_T69CS_Field is HAL.UInt2;

   --  PMU Peripheral Clock Select Register
   type PCSR_Register is record
      --  Select WDT input clock
      WDTCS          : PCSR_WDTCS_Field := 16#0#;
      --  Select FRT input clock
      FRTCS          : PCSR_FRTCS_Field := 16#0#;
      --  Select timer 0,1 input clock
      T01CS          : PCSR_T01CS_Field := 16#0#;
      --  Select timer 2,3,4,5 input clock
      T25CS          : PCSR_T25CS_Field := 16#0#;
      --  Select the timer 6,7,8,9 input clock
      T69CS          : PCSR_T69CS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCSR_Register use record
      WDTCS          at 0 range 0 .. 1;
      FRTCS          at 0 range 2 .. 3;
      T01CS          at 0 range 4 .. 5;
      T25CS          at 0 range 6 .. 7;
      T69CS          at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype COR_CLKODIV_Field is HAL.UInt4;

   --  PMU Clock Output Register
   type COR_Register is record
      --  set the value of the division of CLKO
      CLKODIV       : COR_CLKODIV_Field := 16#0#;
      --  Enable CLKO divider output
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
      --  Post-scaler control
      FBCTRL         : PLLCON_FBCTRL_Field := 16#0#;
      --  Pre-Divider division control
      PREDIV         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Read-only. PLL Lock state
      LOCKSTS        : Boolean := False;
      --  Select PLL input clock bypass
      BYPASS         : Boolean := False;
      --  PLL Enable
      PLLEN          : Boolean := False;
      --  PLL Reset
      PLLRESB        : Boolean := False;
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
      PLLRESB        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LVDCON_LVDIL_Field is HAL.UInt3;
   subtype LVDCON_LVDRL_Field is HAL.UInt3;

   --  LVD Control Register
   type LVDCON_Register is record
      --  Select LVD Interrupt voltage level
      LVDIL          : LVDCON_LVDIL_Field := 16#0#;
      --  Enable LVD interrupt
      LVDIEN         : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Read-only. LVD interrupt current status
      LVDICS         : Boolean := False;
      --  LVD interrupt flag (cleared when writing 1)
      LVDIF          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Select LVD Reset voltage level
      LVDRL          : LVDCON_LVDRL_Field := 16#0#;
      --  Enable LVD Reset
      LVDREN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  LVD reset flag (cleared when writing 1)
      LVDRF          : Boolean := False;
      --  Enable LVD
      LVDEN          : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDCON_Register use record
      LVDIL          at 0 range 0 .. 2;
      LVDIEN         at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      LVDICS         at 0 range 5 .. 5;
      LVDIF          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LVDRL          at 0 range 8 .. 10;
      LVDREN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      LVDRF          at 0 range 14 .. 14;
      LVDEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VDCCON_VDCDELAY_Field is HAL.UInt8;
   subtype VDCCON_VDCTRIM_Field is HAL.UInt4;
   subtype VDCCON_LVDTRIM_Field is HAL.UInt4;

   --  VDC/LVD Trimming Register
   type VDCCON_Register is record
      --  VDC Delay Time from starting wake-up
      VDCDELAY       : VDCCON_VDCDELAY_Field := 16#FF#;
      --  VDC Trimming Value
      VDCTRIM        : VDCCON_VDCTRIM_Field := 16#0#;
      --  LVD Trimming Value
      LVDTRIM        : VDCCON_LVDTRIM_Field := 16#0#;
      --  Write-only. Enable writing on VDCDELAY bit field
      VDCD_EN        : Boolean := False;
      --  Write-only. Enable writing on VDCTRIM bit field
      VDCT_EN        : Boolean := False;
      --  Write-only. Enable writing on LVDTRIM bit field
      LVDT_EN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VDCCON_Register use record
      VDCDELAY       at 0 range 0 .. 7;
      VDCTRIM        at 0 range 8 .. 11;
      LVDTRIM        at 0 range 12 .. 15;
      VDCD_EN        at 0 range 16 .. 16;
      VDCT_EN        at 0 range 17 .. 17;
      LVDT_EN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype IOSC16TRIM_UDCL_Field is HAL.UInt3;
   subtype IOSC16TRIM_UDCH_Field is HAL.UInt2;
   subtype IOSC16TRIM_TSL_Field is HAL.UInt3;
   subtype IOSC16TRIM_LTM_Field is HAL.UInt2;
   subtype IOSC16TRIM_LT_Field is HAL.UInt4;

   --  IOSC16 Trimming Register
   type IOSC16TRIM_Register is record
      --  UDCL
      UDCL           : IOSC16TRIM_UDCL_Field := 16#3#;
      --  UDCH
      UDCH           : IOSC16TRIM_UDCH_Field := 16#1#;
      --  TSL
      TSL            : IOSC16TRIM_TSL_Field := 16#4#;
      --  LTM
      LTM            : IOSC16TRIM_LTM_Field := 16#2#;
      --  LT
      LT             : IOSC16TRIM_LT_Field := 16#8#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Write-only. Enable writing on UDCL bit field
      UDCL_EN        : Boolean := False;
      --  Write-only. Enable writing on UDCH bit field
      UDCH_EN        : Boolean := False;
      --  Write-only. Enable writing on TSL bit field
      TSL_EN         : Boolean := False;
      --  Write-only. Enable writing on LTM bit field
      LTM_EN         : Boolean := False;
      --  Write-only. Enable writing on LT bit field
      LT_EN          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOSC16TRIM_Register use record
      UDCL           at 0 range 0 .. 2;
      UDCH           at 0 range 3 .. 4;
      TSL            at 0 range 5 .. 7;
      LTM            at 0 range 8 .. 9;
      LT             at 0 range 10 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      UDCL_EN        at 0 range 16 .. 16;
      UDCH_EN        at 0 range 17 .. 17;
      TSL_EN         at 0 range 18 .. 18;
      LTM_EN         at 0 range 19 .. 19;
      LT_EN          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  External Mode Read Register
   type EXTMODER_Register is record
      --  Read-only. Read BOOT pin
      BOOT          : Boolean := False;
      --  Read-only. Read TEST pin
      TEST          : Boolean := False;
      --  Read-only. Read SCANMD pin
      SCANMD        : Boolean := False;
      --  Read-only. Read ROSCAON pin
      ROSCAON       : Boolean := False;
      --  Read-only. Read XRSTON pin
      XRSTON        : Boolean := False;
      --  Read-only. Read PDON pin
      PDON          : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Write-only. Set all pins to test mode
      FMTEST        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTMODER_Register use record
      BOOT          at 0 range 0 .. 0;
      TEST          at 0 range 1 .. 1;
      SCANMD        at 0 range 2 .. 2;
      ROSCAON       at 0 range 3 .. 3;
      XRSTON        at 0 range 4 .. 4;
      PDON          at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      FMTEST        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  POWER MANAGEMENT UNIT
   type PMU_Peripheral is record
      --  Chip ID Register
      IDR        : aliased HAL.UInt32;
      --  PMU Mode Register
      MR         : aliased MR_Register;
      --  PMU CONFIGURATION REGISTER
      CFGR       : aliased CFGR_Register;
      --  PMU Wake-up Source Enable Register
      WSER       : aliased WSER_Register;
      --  PMU Wak-up Source Status Register
      WSSR       : aliased WSSR_Register;
      --  Reset Source Enable Register
      RSER       : aliased RSER_Register;
      --  Reset Source Status Register
      RSSR       : aliased RSSR_Register;
      --  PMU Peripheral Event Reset Register
      PERR       : aliased PERR_Register;
      --  PMU Perpheral Enable Register
      PER        : aliased PER_Register;
      --  PMU Peripheral Clock Control Register
      PCCR       : aliased PCCR_Register;
      --  PMU Clock Control Register
      CCR        : aliased CCR_Register;
      --  PMU Clock Monitoring Register
      CMR        : aliased CMR_Register;
      --  PMU BUS Clock Control Register
      BCCR       : aliased BCCR_Register;
      --  PMU Peripheral Clock Select Register
      PCSR       : aliased PCSR_Register;
      --  PMU Clock Output Register
      COR        : aliased COR_Register;
      --  PLL Control Register
      PLLCON     : aliased PLLCON_Register;
      --  LVD Control Register
      LVDCON     : aliased LVDCON_Register;
      --  VDC/LVD Trimming Register
      VDCCON     : aliased VDCCON_Register;
      --  IOSC16 Trimming Register
      IOSC16TRIM : aliased IOSC16TRIM_Register;
      --  External Mode Read Register
      EXTMODER   : aliased EXTMODER_Register;
   end record
     with Volatile;

   for PMU_Peripheral use record
      IDR        at 16#0# range 0 .. 31;
      MR         at 16#4# range 0 .. 31;
      CFGR       at 16#8# range 0 .. 31;
      WSER       at 16#10# range 0 .. 31;
      WSSR       at 16#14# range 0 .. 31;
      RSER       at 16#18# range 0 .. 31;
      RSSR       at 16#1C# range 0 .. 31;
      PERR       at 16#20# range 0 .. 31;
      PER        at 16#24# range 0 .. 31;
      PCCR       at 16#28# range 0 .. 31;
      CCR        at 16#30# range 0 .. 31;
      CMR        at 16#34# range 0 .. 31;
      BCCR       at 16#3C# range 0 .. 31;
      PCSR       at 16#40# range 0 .. 31;
      COR        at 16#44# range 0 .. 31;
      PLLCON     at 16#50# range 0 .. 31;
      LVDCON     at 16#54# range 0 .. 31;
      VDCCON     at 16#58# range 0 .. 31;
      IOSC16TRIM at 16#5C# range 0 .. 31;
      EXTMODER   at 16#70# range 0 .. 31;
   end record;

   --  POWER MANAGEMENT UNIT
   PMU_Periph : aliased PMU_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.PMU;
