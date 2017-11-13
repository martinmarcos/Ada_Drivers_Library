--  This spec has been automatically generated from ATSAM4CMS32C_0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Segment LCD Controller
package SAM_SVD.SLCDC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SLCDC Control Register
   type SLCDC_CR_Register is record
      --  Write-only. Enable the LCDC
      LCDEN         : Boolean := False;
      --  Write-only. Disable LCDC
      LCDDIS        : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_CR_Register use record
      LCDEN         at 0 range 0 .. 0;
      LCDDIS        at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      SWRST         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Selection of the Number of Commons
   type MR_COMSEL_Field is
     (
      --  COM0 is driven by SLCDC, COM1:5 are driven by digital function
      Com_0,
      --  COM0:1 are driven by SLCDC, COM2:5 are driven by digital function
      Com_0To1,
      --  COM0:2 are driven by SLCDC, COM3:5 are driven by digital function
      Com_0To2,
      --  COM0:3 are driven by SLCDC, COM4:5 are driven by digital function
      Com_0To3,
      --  COM0:4 are driven by SLCDC, COM5 is driven by digital function
      Com_0To4,
      --  COM0:5 are driven by SLCDC, No COM pin driven by digital function
      Com_0To5)
     with Size => 3;
   for MR_COMSEL_Field use
     (Com_0 => 0,
      Com_0To1 => 1,
      Com_0To2 => 2,
      Com_0To3 => 3,
      Com_0To4 => 4,
      Com_0To5 => 5);

   subtype SLCDC_MR_SEGSEL_Field is HAL.UInt6;

   --  Buffer On-Time
   type MR_BUFTIME_Field is
     (
      --  Nominal drive time is 0% of SLCK period
      Off,
      --  Nominal drive time is 2 periods of SLCK clock
      X2_Slck_Period,
      --  Nominal drive time is 4 periods of SLCK clock
      X4_Slck_Period,
      --  Nominal drive time is 8 periods of SLCK clock
      X8_Slck_Period,
      --  Nominal drive time is 16 periods of SLCK clock
      X16_Slck_Period,
      --  Nominal drive time is 32 periods of SLCK clock
      X32_Slck_Period,
      --  Nominal drive time is 64 periods of SLCK clock
      X64_Slck_Period,
      --  Nominal drive time is 128 periods of SLCK clock
      X128_Slck_Period,
      --  Nominal drive time is 50% of SLCK period
      Percent_50,
      --  Nominal drive time is 100% of SLCK period
      Percent_100)
     with Size => 4;
   for MR_BUFTIME_Field use
     (Off => 0,
      X2_Slck_Period => 1,
      X4_Slck_Period => 2,
      X8_Slck_Period => 3,
      X16_Slck_Period => 4,
      X32_Slck_Period => 5,
      X64_Slck_Period => 6,
      X128_Slck_Period => 7,
      Percent_50 => 8,
      Percent_100 => 9);

   --  LCD Display Configuration
   type MR_BIAS_Field is
     (
      --  Static
      Static,
      --  Bias 1/2
      Bias_1_2,
      --  Bias 1/3
      Bias_1_3)
     with Size => 2;
   for MR_BIAS_Field use
     (Static => 0,
      Bias_1_2 => 1,
      Bias_1_3 => 2);

   --  SLCDC Mode Register
   type SLCDC_MR_Register is record
      --  Selection of the Number of Commons
      COMSEL         : MR_COMSEL_Field := SAM_SVD.SLCDC.Com_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Selection of the Number of Segments
      SEGSEL         : SLCDC_MR_SEGSEL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Buffer On-Time
      BUFTIME        : MR_BUFTIME_Field := SAM_SVD.SLCDC.Off;
      --  LCD Display Configuration
      BIAS           : MR_BIAS_Field := SAM_SVD.SLCDC.Static;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Low Power Mode
      LPMODE         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_MR_Register use record
      COMSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SEGSEL         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BUFTIME        at 0 range 16 .. 19;
      BIAS           at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      LPMODE         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Clock Prescaler
   type FRR_PRESC_Field is
     (
      --  Slow clock is divided by 8
      Slck_Div8,
      --  Slow clock is divided by 16
      Slck_Div16,
      --  Slow clock is divided by 32
      Slck_Div32,
      --  Slow clock is divided by 64
      Slck_Div64,
      --  Slow clock is divided by 128
      Slck_Div128,
      --  Slow clock is divided by 256
      Slck_Div256,
      --  Slow clock is divided by 512
      Slck_Div512,
      --  Slow clock is divided by 1024
      Slck_Div1024)
     with Size => 3;
   for FRR_PRESC_Field use
     (Slck_Div8 => 0,
      Slck_Div16 => 1,
      Slck_Div32 => 2,
      Slck_Div64 => 3,
      Slck_Div128 => 4,
      Slck_Div256 => 5,
      Slck_Div512 => 6,
      Slck_Div1024 => 7);

   --  Clock Division
   type FRR_DIV_Field is
     (
      --  Clock output from prescaler is divided by 1
      Presc_Clk_Div1,
      --  Clock output from prescaler is divided by 2
      Presc_Clk_Div2,
      --  Clock output from prescaler is divided by 3
      Presc_Clk_Div3,
      --  Clock output from prescaler is divided by 4
      Presc_Clk_Div4,
      --  Clock output from prescaler is divided by 5
      Presc_Clk_Div5,
      --  Clock output from prescaler is divided by 6
      Presc_Clk_Div6,
      --  Clock output from prescaler is divided by 7
      Presc_Clk_Div7,
      --  Clock output from prescaler is divided by 8
      Presc_Clk_Div8)
     with Size => 3;
   for FRR_DIV_Field use
     (Presc_Clk_Div1 => 0,
      Presc_Clk_Div2 => 1,
      Presc_Clk_Div3 => 2,
      Presc_Clk_Div4 => 3,
      Presc_Clk_Div5 => 4,
      Presc_Clk_Div6 => 5,
      Presc_Clk_Div7 => 6,
      Presc_Clk_Div8 => 7);

   --  SLCDC Frame Rate Register
   type SLCDC_FRR_Register is record
      --  Clock Prescaler
      PRESC          : FRR_PRESC_Field := SAM_SVD.SLCDC.Slck_Div8;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Clock Division
      DIV            : FRR_DIV_Field := SAM_SVD.SLCDC.Presc_Clk_Div1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_FRR_Register use record
      PRESC          at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DIV            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Display Mode Register
   type DR_DISPMODE_Field is
     (
      --  Normal Mode-Latched data are displayed.
      Normal,
      --  Force Off Mode-All pixels are invisible. (The SLCDC memory is
      --  unchanged.)
      Force_Off,
      --  Force On Mode-All pixels are visible. (The SLCDC memory is
      --  unchanged.)
      Force_On,
      --  Blinking Mode-All pixels are alternately turned off to the predefined
      --  state in SLCDC memory at LCDBLKFREQ frequency. (The SLCDC memory is
      --  unchanged.)
      Blinking,
      --  Inverted Mode-All pixels are set in the inverted state as defined in
      --  SLCDC memory. (The SLCDC memory is unchanged.)
      Inverted,
      --  Inverted Blinking Mode-All pixels are alternately turned off to the
      --  predefined opposite state in SLCDC memory at LCDBLKFREQ frequency.
      --  (The SLCDC memory is unchanged.)
      Inverted_Blink,
      --  User Buffer Only Load Mode-Blocks the automatic transfer from User
      --  Buffer to Display Buffer.
      User_Buffer_Load,
      --  Buffer Swap Mode-All pixels are alternatively assigned to the state
      --  defined in the User Buffer, then to the state defined in the Display
      --  Buffer at LCDBLKFREQ frequency.
      Buffers_Swap)
     with Size => 3;
   for DR_DISPMODE_Field use
     (Normal => 0,
      Force_Off => 1,
      Force_On => 2,
      Blinking => 3,
      Inverted => 4,
      Inverted_Blink => 5,
      User_Buffer_Load => 6,
      Buffers_Swap => 7);

   subtype SLCDC_DR_LCDBLKFREQ_Field is HAL.UInt8;

   --  SLCDC Display Register
   type SLCDC_DR_Register is record
      --  Display Mode Register
      DISPMODE       : DR_DISPMODE_Field := SAM_SVD.SLCDC.Normal;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  LCD Blinking Frequency Selection
      LCDBLKFREQ     : SLCDC_DR_LCDBLKFREQ_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_DR_Register use record
      DISPMODE       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      LCDBLKFREQ     at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SLCDC Status Register
   type SLCDC_SR_Register is record
      --  Read-only. Enable Status (Automatically Set/Reset)
      ENA           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_SR_Register use record
      ENA           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SLCDC Interrupt Enable Register
   type SLCDC_IER_Register is record
      --  Write-only. End of Frame Interrupt Enable
      ENDFRAME      : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Write-only. SLCDC Disable Completion Interrupt Enable
      DIS           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_IER_Register use record
      ENDFRAME      at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DIS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SLCDC Interrupt Disable Register
   type SLCDC_IDR_Register is record
      --  Write-only. End of Frame Interrupt Disable
      ENDFRAME      : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Write-only. SLCDC Disable Completion Interrupt Disable
      DIS           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_IDR_Register use record
      ENDFRAME      at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DIS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SLCDC Interrupt Mask Register
   type SLCDC_IMR_Register is record
      --  Read-only. End of Frame Interrupt Mask
      ENDFRAME      : Boolean;
      --  unspecified
      Reserved_1_1  : HAL.Bit;
      --  Read-only. SLCDC Disable Completion Interrupt Mask
      DIS           : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_IMR_Register use record
      ENDFRAME      at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DIS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SLCDC Interrupt Status Register
   type SLCDC_ISR_Register is record
      --  Read-only. End of Frame Interrupt Status
      ENDFRAME      : Boolean;
      --  unspecified
      Reserved_1_1  : HAL.Bit;
      --  Read-only. SLCDC Disable Completion Interrupt Status
      DIS           : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_ISR_Register use record
      ENDFRAME      at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DIS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SLCDC_SMR0_LCD array
   type SLCDC_SMR0_LCD_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SLCDC Segment Map Register 0
   type SLCDC_SMR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCD as a value
            Val : HAL.UInt32;
         when True =>
            --  LCD as an array
            Arr : SLCDC_SMR0_LCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SLCDC_SMR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SLCDC_SMR1_LCD array
   type SLCDC_SMR1_LCD_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for SLCDC_SMR1_LCD
   type SLCDC_SMR1_LCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCD as a value
            Val : HAL.UInt18;
         when True =>
            --  LCD as an array
            Arr : SLCDC_SMR1_LCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for SLCDC_SMR1_LCD_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  SLCDC Segment Map Register 1
   type SLCDC_SMR1_Register is record
      --  LCD Segment Mapped on SEGx I/O Pin
      LCD            : SLCDC_SMR1_LCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_SMR1_Register use record
      LCD            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 4997956);

   --  SLCDC Write Protection Mode Register
   type SLCDC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SLCDC_WPSR_WPVSRC_Field is HAL.UInt16;

   --  SLCDC Write Protection Status Register
   type SLCDC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SLCDC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCDC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Segment LCD Controller
   type SLCDC_Peripheral is record
      --  SLCDC Control Register
      CR     : aliased SLCDC_CR_Register;
      --  SLCDC Mode Register
      MR     : aliased SLCDC_MR_Register;
      --  SLCDC Frame Rate Register
      FRR    : aliased SLCDC_FRR_Register;
      --  SLCDC Display Register
      DR     : aliased SLCDC_DR_Register;
      --  SLCDC Status Register
      SR     : aliased SLCDC_SR_Register;
      --  SLCDC Interrupt Enable Register
      IER    : aliased SLCDC_IER_Register;
      --  SLCDC Interrupt Disable Register
      IDR    : aliased SLCDC_IDR_Register;
      --  SLCDC Interrupt Mask Register
      IMR    : aliased SLCDC_IMR_Register;
      --  SLCDC Interrupt Status Register
      ISR    : aliased SLCDC_ISR_Register;
      --  SLCDC Segment Map Register 0
      SMR0   : aliased SLCDC_SMR0_Register;
      --  SLCDC Segment Map Register 1
      SMR1   : aliased SLCDC_SMR1_Register;
      --  SLCDC Write Protection Mode Register
      WPMR   : aliased SLCDC_WPMR_Register;
      --  SLCDC Write Protection Status Register
      WPSR   : aliased SLCDC_WPSR_Register;
      --  SLCDC LSB Memory Register (com = 0)
      LMEMR0 : aliased HAL.UInt32;
      --  SLCDC MSB Memory Register (com = 0)
      MMEMR0 : aliased HAL.UInt32;
      --  SLCDC LSB Memory Register (com = 1)
      LMEMR1 : aliased HAL.UInt32;
      --  SLCDC MSB Memory Register (com = 1)
      MMEMR1 : aliased HAL.UInt32;
      --  SLCDC LSB Memory Register (com = 2)
      LMEMR2 : aliased HAL.UInt32;
      --  SLCDC MSB Memory Register (com = 2)
      MMEMR2 : aliased HAL.UInt32;
      --  SLCDC LSB Memory Register (com = 3)
      LMEMR3 : aliased HAL.UInt32;
      --  SLCDC MSB Memory Register (com = 3)
      MMEMR3 : aliased HAL.UInt32;
      --  SLCDC LSB Memory Register (com = 4)
      LMEMR4 : aliased HAL.UInt32;
      --  SLCDC MSB Memory Register (com = 4)
      MMEMR4 : aliased HAL.UInt32;
      --  SLCDC LSB Memory Register (com = 5)
      LMEMR5 : aliased HAL.UInt32;
      --  SLCDC MSB Memory Register (com = 5)
      MMEMR5 : aliased HAL.UInt32;
   end record
     with Volatile;

   for SLCDC_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      MR     at 16#4# range 0 .. 31;
      FRR    at 16#8# range 0 .. 31;
      DR     at 16#C# range 0 .. 31;
      SR     at 16#10# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      ISR    at 16#2C# range 0 .. 31;
      SMR0   at 16#30# range 0 .. 31;
      SMR1   at 16#34# range 0 .. 31;
      WPMR   at 16#E4# range 0 .. 31;
      WPSR   at 16#E8# range 0 .. 31;
      LMEMR0 at 16#200# range 0 .. 31;
      MMEMR0 at 16#204# range 0 .. 31;
      LMEMR1 at 16#208# range 0 .. 31;
      MMEMR1 at 16#20C# range 0 .. 31;
      LMEMR2 at 16#210# range 0 .. 31;
      MMEMR2 at 16#214# range 0 .. 31;
      LMEMR3 at 16#218# range 0 .. 31;
      MMEMR3 at 16#21C# range 0 .. 31;
      LMEMR4 at 16#220# range 0 .. 31;
      MMEMR4 at 16#224# range 0 .. 31;
      LMEMR5 at 16#228# range 0 .. 31;
      MMEMR5 at 16#22C# range 0 .. 31;
   end record;

   --  Segment LCD Controller
   SLCDC_Periph : aliased SLCDC_Peripheral
     with Import, Address => SLCDC_Base;

end SAM_SVD.SLCDC;
