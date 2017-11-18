--

--  This spec has been automatically generated from SN32F760B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Counter enable
   type TMRCTRL_CEN_Field is
     (
      --  Disable counter
      Disable,
      --  Enable Timer Counter and Prescale Counter for counting
      Enable)
     with Size => 1;
   for TMRCTRL_CEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Counter Reset
   type TMRCTRL_CRST_Field is
     (
      --  Disable
      Disable,
      --  Timer Counter and the Prescale Counter are synchronously reset on the
      --  next positive edge of PCLK
      Reset Counter)
     with Size => 1;
   for TMRCTRL_CRST_Field use
     (Disable => 0,
      Reset Counter => 1);

   --  Offset:0x00 CT16Bn Timer Control Register
   type TMRCTRL_Register is record
      --  Counter enable
      CEN           : TMRCTRL_CEN_Field := NRF_SVD.TIMER.Disable;
      --  Counter Reset
      CRST          : TMRCTRL_CRST_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TMRCTRL_Register use record
      CEN           at 0 range 0 .. 0;
      CRST          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TC_TC_Field is HAL.UInt16;

   --  Offset:0x04 CT16Bn Timer Counter Register
   type TC_Register is record
      --  Timer Counter
      TC             : TC_TC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_Register use record
      TC             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PRE_PRE_Field is HAL.UInt8;

   --  Offset:0x08 CT16Bn Prescale Register
   type PRE_Register is record
      --  Prescaler
      PRE           : PRE_PRE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRE_Register use record
      PRE           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PC_PC_Field is HAL.UInt8;

   --  Offset:0x0C CT16Bn Prescale Counter Register
   type PC_Register is record
      --  Prescaler Counter
      PC            : PC_PC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_Register use record
      PC            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Counter/Timer Mode
   type CNTCTRL_CTM_Field is
     (
      --  Every rising PCLK edge
      Timer Mode,
      --  TC is incremented on rising edges on the CAP0 input selected by CIS
      --  bits.
      Counter Mode,
      --  TC is incremented on falling edges on the CAP0 input selected by CIS
      --  bits.
      Counter Mode_1,
      --  TC is incremented on both edges on the CAP0 input selected by CIS
      --  bits.
      Counter Mode_2)
     with Size => 2;
   for CNTCTRL_CTM_Field use
     (Timer Mode => 0,
      Counter Mode => 1,
      Counter Mode_1 => 2,
      Counter Mode_2 => 3);

   --  Counter Input Select
   type CNTCTRL_CIS_Field is
     (
      --  CT16Bn_CAP0
      Ct16Bn_Cap0)
     with Size => 2;
   for CNTCTRL_CIS_Field use
     (Ct16Bn_Cap0 => 0);

   --  Offset:0x10 CT16Bn Counter Control Register
   type CNTCTRL_Register is record
      --  Counter/Timer Mode
      CTM           : CNTCTRL_CTM_Field := NRF_SVD.TIMER.Timer Mode;
      --  Counter Input Select
      CIS           : CNTCTRL_CIS_Field := NRF_SVD.TIMER.Ct16Bn_Cap0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTCTRL_Register use record
      CTM           at 0 range 0 .. 1;
      CIS           at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Enable generating an interrupt when MR0 matches TC
   type MCTRL_MR0IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR0 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR0IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR0 matches TC
   type MCTRL_MR0RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR0 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR0RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR0 matches TC
   type MCTRL_MR0STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR0 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR0STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x14 CT16Bn Match Control Register
   type MCTRL_Register is record
      --  Enable generating an interrupt when MR0 matches TC
      MR0IE         : MCTRL_MR0IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR0 matches TC
      MR0RST        : MCTRL_MR0RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR0 matches TC
      MR0STOP       : MCTRL_MR0STOP_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCTRL_Register use record
      MR0IE         at 0 range 0 .. 0;
      MR0RST        at 0 range 1 .. 1;
      MR0STOP       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Capture on CT16Bn_CAP0 rising edge
   type CAPCTRL_CAP0RE_Field is
     (
      --  Disable
      Disable,
      --  A sequence of 0 then 1 on CT16Bn_CAP0 will cause CAP0 to be loaded
      --  with the contents of TC.
      Enable)
     with Size => 1;
   for CAPCTRL_CAP0RE_Field use
     (Disable => 0,
      Enable => 1);

   --  Capture on CT16Bn_CAP0 falling edge
   type CAPCTRL_CAP0FE_Field is
     (
      --  Disable
      Disable,
      --  A sequence of 1 then 0 on CT16Bn_CAP0 will cause CAP0 to be loaded
      --  with the contents of TC.
      Enable)
     with Size => 1;
   for CAPCTRL_CAP0FE_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on CT16Bn_CAP0 event
   type CAPCTRL_CAP0IE_Field is
     (
      --  Disable
      Disable,
      --  A CAP0 load due to a CT16Bn_CAP0 event will generate an interrupt.
      Enable)
     with Size => 1;
   for CAPCTRL_CAP0IE_Field use
     (Disable => 0,
      Enable => 1);

   --  CAP0 function enable
   type CAPCTRL_CAP0EN_Field is
     (
      --  Disable
      Disable,
      --  Enable CAP0 function
      Enable)
     with Size => 1;
   for CAPCTRL_CAP0EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x80 CT16Bn Capture Control Register
   type CAPCTRL_Register is record
      --  Capture on CT16Bn_CAP0 rising edge
      CAP0RE        : CAPCTRL_CAP0RE_Field := NRF_SVD.TIMER.Disable;
      --  Capture on CT16Bn_CAP0 falling edge
      CAP0FE        : CAPCTRL_CAP0FE_Field := NRF_SVD.TIMER.Disable;
      --  Interrupt on CT16Bn_CAP0 event
      CAP0IE        : CAPCTRL_CAP0IE_Field := NRF_SVD.TIMER.Disable;
      --  CAP0 function enable
      CAP0EN        : CAPCTRL_CAP0EN_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPCTRL_Register use record
      CAP0RE        at 0 range 0 .. 0;
      CAP0FE        at 0 range 1 .. 1;
      CAP0IE        at 0 range 2 .. 2;
      CAP0EN        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CAP0_CAP0_Field is HAL.UInt16;

   --  Offset:0x84 CT16Bn CAP0 Register
   type CAP0_Register is record
      --  Read-only. Timer counter capture value
      CAP0           : CAP0_CAP0_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAP0_Register use record
      CAP0           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Match channel 0 interrupt flag
   type RIS_MR0IF_Field is
     (
      --  No interrupt on match channel 0
      No INTERRUPT,
      --  Interrupt requirements met on match channel 0
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR0IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Interrupt flag for capture channel 0
   type RIS_CAP0IF_Field is
     (
      --  No interrupt on CAP0
      No,
      --  Interrupt requirements met on CAP0
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_CAP0IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0xA4 CT16Bn Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. Match channel 0 interrupt flag
      MR0IF          : RIS_MR0IF_Field;
      --  unspecified
      Reserved_1_24  : HAL.UInt24;
      --  Read-only. Interrupt flag for capture channel 0
      CAP0IF         : RIS_CAP0IF_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      MR0IF          at 0 range 0 .. 0;
      Reserved_1_24  at 0 range 1 .. 24;
      CAP0IF         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  MR0IF clear bit
   type IC_MR0IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR0IF
      Clear)
     with Size => 1;
   for IC_MR0IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  CAP0IF clear bit
   type IC_CAP0IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear CAP0IF
      Clear)
     with Size => 1;
   for IC_CAP0IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0xA8 CT16Bn Interrupt Clear Register
   type IC_Register is record
      --  Write-only. MR0IF clear bit
      MR0IC          : IC_MR0IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  unspecified
      Reserved_1_24  : HAL.UInt24 := 16#0#;
      --  Write-only. CAP0IF clear bit
      CAP0IC         : IC_CAP0IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      MR0IC          at 0 range 0 .. 0;
      Reserved_1_24  at 0 range 1 .. 24;
      CAP0IC         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Enable generating an interrupt when MR1 matches TC
   type MCTRL_MR1IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR1 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR1IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR1 matches TC
   type MCTRL_MR1RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR1 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR1RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR1 matches TC
   type MCTRL_MR1STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR1 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR1STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR2 matches TC
   type MCTRL_MR2IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR2 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR2IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR2 matches TC
   type MCTRL_MR2RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR2 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR2RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR2 matches TC
   type MCTRL_MR2STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR2 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR2STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR3 matches TC
   type MCTRL_MR3IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR3 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR3IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR3 matches TC
   type MCTRL_MR3RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR3 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR3RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR3 matches TC
   type MCTRL_MR3STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR3 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR3STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR4 matches TC
   type MCTRL_MR4IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR4 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR4IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR4 matches TC
   type MCTRL_MR4RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR4 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR4RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR4 matches TC
   type MCTRL_MR4STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR4 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR4STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR5 matches TC
   type MCTRL_MR5IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR5 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR5IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR5 matches TC
   type MCTRL_MR5RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR5 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR5RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR5 matches TC
   type MCTRL_MR5STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR5 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR5STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR6 matches TC
   type MCTRL_MR6IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR6 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR6IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR6 matches TC
   type MCTRL_MR6RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR6 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR6RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR6 matches TC
   type MCTRL_MR6STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR6 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR6STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR7 matches TC
   type MCTRL_MR7IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR7 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR7IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR7 matches TC
   type MCTRL_MR7RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR7 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR7RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR7 matches TC
   type MCTRL_MR7STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR7 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR7STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR8 matches TC
   type MCTRL_MR8IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR8 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR8IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR8 matches TC
   type MCTRL_MR8RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR8 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR8RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR8 matches TC
   type MCTRL_MR8STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR8 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR8STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR9 matches TC
   type MCTRL_MR9IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR9 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR9IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR9 matches TC
   type MCTRL_MR9RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR9 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR9RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR9 matches TC
   type MCTRL_MR9STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR9 matches TC
      Enable)
     with Size => 1;
   for MCTRL_MR9STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x14 CT16Bn Match Control Register
   type MCTRL_Register_1 is record
      --  Enable generating an interrupt when MR0 matches TC
      MR0IE          : MCTRL_MR0IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR0 matches TC
      MR0RST         : MCTRL_MR0RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR0 matches TC
      MR0STOP        : MCTRL_MR0STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR1 matches TC
      MR1IE          : MCTRL_MR1IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR1 matches TC
      MR1RST         : MCTRL_MR1RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR1 matches TC
      MR1STOP        : MCTRL_MR1STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR2 matches TC
      MR2IE          : MCTRL_MR2IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR2 matches TC
      MR2RST         : MCTRL_MR2RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR2 matches TC
      MR2STOP        : MCTRL_MR2STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR3 matches TC
      MR3IE          : MCTRL_MR3IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR3 matches TC
      MR3RST         : MCTRL_MR3RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR3 matches TC
      MR3STOP        : MCTRL_MR3STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR4 matches TC
      MR4IE          : MCTRL_MR4IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR4 matches TC
      MR4RST         : MCTRL_MR4RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR4 matches TC
      MR4STOP        : MCTRL_MR4STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR5 matches TC
      MR5IE          : MCTRL_MR5IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR5 matches TC
      MR5RST         : MCTRL_MR5RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR5 matches TC
      MR5STOP        : MCTRL_MR5STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR6 matches TC
      MR6IE          : MCTRL_MR6IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR6 matches TC
      MR6RST         : MCTRL_MR6RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR6 matches TC
      MR6STOP        : MCTRL_MR6STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR7 matches TC
      MR7IE          : MCTRL_MR7IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR7 matches TC
      MR7RST         : MCTRL_MR7RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR7 matches TC
      MR7STOP        : MCTRL_MR7STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR8 matches TC
      MR8IE          : MCTRL_MR8IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR8 matches TC
      MR8RST         : MCTRL_MR8RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR8 matches TC
      MR8STOP        : MCTRL_MR8STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR9 matches TC
      MR9IE          : MCTRL_MR9IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR9 matches TC
      MR9RST         : MCTRL_MR9RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR9 matches TC
      MR9STOP        : MCTRL_MR9STOP_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCTRL_Register_1 use record
      MR0IE          at 0 range 0 .. 0;
      MR0RST         at 0 range 1 .. 1;
      MR0STOP        at 0 range 2 .. 2;
      MR1IE          at 0 range 3 .. 3;
      MR1RST         at 0 range 4 .. 4;
      MR1STOP        at 0 range 5 .. 5;
      MR2IE          at 0 range 6 .. 6;
      MR2RST         at 0 range 7 .. 7;
      MR2STOP        at 0 range 8 .. 8;
      MR3IE          at 0 range 9 .. 9;
      MR3RST         at 0 range 10 .. 10;
      MR3STOP        at 0 range 11 .. 11;
      MR4IE          at 0 range 12 .. 12;
      MR4RST         at 0 range 13 .. 13;
      MR4STOP        at 0 range 14 .. 14;
      MR5IE          at 0 range 15 .. 15;
      MR5RST         at 0 range 16 .. 16;
      MR5STOP        at 0 range 17 .. 17;
      MR6IE          at 0 range 18 .. 18;
      MR6RST         at 0 range 19 .. 19;
      MR6STOP        at 0 range 20 .. 20;
      MR7IE          at 0 range 21 .. 21;
      MR7RST         at 0 range 22 .. 22;
      MR7STOP        at 0 range 23 .. 23;
      MR8IE          at 0 range 24 .. 24;
      MR8RST         at 0 range 25 .. 25;
      MR8STOP        at 0 range 26 .. 26;
      MR9IE          at 0 range 27 .. 27;
      MR9RST         at 0 range 28 .. 28;
      MR9STOP        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Enable generating an interrupt when MR10 matches TC
   type MCTRL2_MR10IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR10 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR10IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR10 matches TC
   type MCTRL2_MR10RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR10 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR10RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR10 matches TC
   type MCTRL2_MR10STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR10 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR10STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR11 matches TC
   type MCTRL2_MR11IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR11 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR11IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR11 matches TC
   type MCTRL2_MR11RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR11 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR11RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR11 matches TC
   type MCTRL2_MR11STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR11 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR11STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR12 matches TC
   type MCTRL2_MR12IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR12 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR12IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR12 matches TC
   type MCTRL2_MR12RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR12 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR12RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR12 matches TC
   type MCTRL2_MR12STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR12 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR12STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR13 matches TC
   type MCTRL2_MR13IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR13 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR13IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR13 matches TC
   type MCTRL2_MR13RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR13 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR13RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR13 matches TC
   type MCTRL2_MR13STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR13 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR13STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR14 matches TC
   type MCTRL2_MR14IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR14 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR14IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR14 matches TC
   type MCTRL2_MR14RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR14 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR14RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR14 matches TC
   type MCTRL2_MR14STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR14 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR14STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR15 matches TC
   type MCTRL2_MR15IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR15 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR15IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR15 matches TC
   type MCTRL2_MR15RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR15 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR15RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR15 matches TC
   type MCTRL2_MR15STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR15 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR15STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR16 matches TC
   type MCTRL2_MR16IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR16 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR16IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR16 matches TC
   type MCTRL2_MR16RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR16 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR16RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR16 matches TC
   type MCTRL2_MR16STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR16 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR16STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR17 matches TC
   type MCTRL2_MR17IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR17 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR17IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR17 matches TC
   type MCTRL2_MR17RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR17 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR17RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR17 matches TC
   type MCTRL2_MR17STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR17 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR17STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR18 matches TC
   type MCTRL2_MR18IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR18 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR18IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR18 matches TC
   type MCTRL2_MR18RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR18 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR18RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR18 matches TC
   type MCTRL2_MR18STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR18 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR18STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR19 matches TC
   type MCTRL2_MR19IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR19 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR19IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR19 matches TC
   type MCTRL2_MR19RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR19 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR19RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR19 matches TC
   type MCTRL2_MR19STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR19 matches TC
      Enable)
     with Size => 1;
   for MCTRL2_MR19STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x18 CT16Bn Match Control Register 2
   type MCTRL2_Register is record
      --  Enable generating an interrupt when MR10 matches TC
      MR10IE         : MCTRL2_MR10IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR10 matches TC
      MR10RST        : MCTRL2_MR10RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR10 matches TC
      MR10STOP       : MCTRL2_MR10STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR11 matches TC
      MR11IE         : MCTRL2_MR11IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR11 matches TC
      MR11RST        : MCTRL2_MR11RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR11 matches TC
      MR11STOP       : MCTRL2_MR11STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR12 matches TC
      MR12IE         : MCTRL2_MR12IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR12 matches TC
      MR12RST        : MCTRL2_MR12RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR12 matches TC
      MR12STOP       : MCTRL2_MR12STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR13 matches TC
      MR13IE         : MCTRL2_MR13IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR13 matches TC
      MR13RST        : MCTRL2_MR13RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR13 matches TC
      MR13STOP       : MCTRL2_MR13STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR14 matches TC
      MR14IE         : MCTRL2_MR14IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR14 matches TC
      MR14RST        : MCTRL2_MR14RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR14 matches TC
      MR14STOP       : MCTRL2_MR14STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR15 matches TC
      MR15IE         : MCTRL2_MR15IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR15 matches TC
      MR15RST        : MCTRL2_MR15RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR15 matches TC
      MR15STOP       : MCTRL2_MR15STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR16 matches TC
      MR16IE         : MCTRL2_MR16IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR16 matches TC
      MR16RST        : MCTRL2_MR16RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR16 matches TC
      MR16STOP       : MCTRL2_MR16STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR17 matches TC
      MR17IE         : MCTRL2_MR17IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR17 matches TC
      MR17RST        : MCTRL2_MR17RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR17 matches TC
      MR17STOP       : MCTRL2_MR17STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR18 matches TC
      MR18IE         : MCTRL2_MR18IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR18 matches TC
      MR18RST        : MCTRL2_MR18RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR18 matches TC
      MR18STOP       : MCTRL2_MR18STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR19 matches TC
      MR19IE         : MCTRL2_MR19IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR19 matches TC
      MR19RST        : MCTRL2_MR19RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR19 matches TC
      MR19STOP       : MCTRL2_MR19STOP_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCTRL2_Register use record
      MR10IE         at 0 range 0 .. 0;
      MR10RST        at 0 range 1 .. 1;
      MR10STOP       at 0 range 2 .. 2;
      MR11IE         at 0 range 3 .. 3;
      MR11RST        at 0 range 4 .. 4;
      MR11STOP       at 0 range 5 .. 5;
      MR12IE         at 0 range 6 .. 6;
      MR12RST        at 0 range 7 .. 7;
      MR12STOP       at 0 range 8 .. 8;
      MR13IE         at 0 range 9 .. 9;
      MR13RST        at 0 range 10 .. 10;
      MR13STOP       at 0 range 11 .. 11;
      MR14IE         at 0 range 12 .. 12;
      MR14RST        at 0 range 13 .. 13;
      MR14STOP       at 0 range 14 .. 14;
      MR15IE         at 0 range 15 .. 15;
      MR15RST        at 0 range 16 .. 16;
      MR15STOP       at 0 range 17 .. 17;
      MR16IE         at 0 range 18 .. 18;
      MR16RST        at 0 range 19 .. 19;
      MR16STOP       at 0 range 20 .. 20;
      MR17IE         at 0 range 21 .. 21;
      MR17RST        at 0 range 22 .. 22;
      MR17STOP       at 0 range 23 .. 23;
      MR18IE         at 0 range 24 .. 24;
      MR18RST        at 0 range 25 .. 25;
      MR18STOP       at 0 range 26 .. 26;
      MR19IE         at 0 range 27 .. 27;
      MR19RST        at 0 range 28 .. 28;
      MR19STOP       at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Enable generating an interrupt when MR20 matches TC
   type MCTRL3_MR20IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR20 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR20IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR20 matches TC
   type MCTRL3_MR20RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR20 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR20RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR20 matches TC
   type MCTRL3_MR20STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR20 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR20STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR21 matches TC
   type MCTRL3_MR21IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR21 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR21IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR21 matches TC
   type MCTRL3_MR21RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR21 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR21RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR21 matches TC
   type MCTRL3_MR21STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR21 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR21STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR22 matches TC
   type MCTRL3_MR22IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR22 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR22IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR22 matches TC
   type MCTRL3_MR22RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR22 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR22RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR22 matches TC
   type MCTRL3_MR22STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR22 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR22STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR23 matches TC
   type MCTRL3_MR23IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR23 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR23IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR23 matches TC
   type MCTRL3_MR23RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR23 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR23RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR23 matches TC
   type MCTRL3_MR23STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR23 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR23STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable generating an interrupt when MR24 matches TC
   type MCTRL3_MR24IE_Field is
     (
      --  Disable
      Disable,
      --  Generating an interrupt when MR24 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR24IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable reset TC when MR24 matches TC
   type MCTRL3_MR24RST_Field is
     (
      --  Disable
      Disable,
      --  Reset TC when MR24 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR24RST_Field use
     (Disable => 0,
      Enable => 1);

   --  Stop TC and PC and clear CEN bit when MR24 matches TC
   type MCTRL3_MR24STOP_Field is
     (
      --  Disable
      Disable,
      --  Stop TC and PC and clear CEN bit when MR24 matches TC
      Enable)
     with Size => 1;
   for MCTRL3_MR24STOP_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x1C CT16Bn Match Control Register 3
   type MCTRL3_Register is record
      --  Enable generating an interrupt when MR20 matches TC
      MR20IE         : MCTRL3_MR20IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR20 matches TC
      MR20RST        : MCTRL3_MR20RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR20 matches TC
      MR20STOP       : MCTRL3_MR20STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR21 matches TC
      MR21IE         : MCTRL3_MR21IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR21 matches TC
      MR21RST        : MCTRL3_MR21RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR21 matches TC
      MR21STOP       : MCTRL3_MR21STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR22 matches TC
      MR22IE         : MCTRL3_MR22IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR22 matches TC
      MR22RST        : MCTRL3_MR22RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR22 matches TC
      MR22STOP       : MCTRL3_MR22STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR23 matches TC
      MR23IE         : MCTRL3_MR23IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR23 matches TC
      MR23RST        : MCTRL3_MR23RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR23 matches TC
      MR23STOP       : MCTRL3_MR23STOP_Field := NRF_SVD.TIMER.Disable;
      --  Enable generating an interrupt when MR24 matches TC
      MR24IE         : MCTRL3_MR24IE_Field := NRF_SVD.TIMER.Disable;
      --  Enable reset TC when MR24 matches TC
      MR24RST        : MCTRL3_MR24RST_Field := NRF_SVD.TIMER.Disable;
      --  Stop TC and PC and clear CEN bit when MR24 matches TC
      MR24STOP       : MCTRL3_MR24STOP_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCTRL3_Register use record
      MR20IE         at 0 range 0 .. 0;
      MR20RST        at 0 range 1 .. 1;
      MR20STOP       at 0 range 2 .. 2;
      MR21IE         at 0 range 3 .. 3;
      MR21RST        at 0 range 4 .. 4;
      MR21STOP       at 0 range 5 .. 5;
      MR22IE         at 0 range 6 .. 6;
      MR22RST        at 0 range 7 .. 7;
      MR22STOP       at 0 range 8 .. 8;
      MR23IE         at 0 range 9 .. 9;
      MR23RST        at 0 range 10 .. 10;
      MR23STOP       at 0 range 11 .. 11;
      MR24IE         at 0 range 12 .. 12;
      MR24RST        at 0 range 13 .. 13;
      MR24STOP       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  EM array
   type EM_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for EM
   type EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt24;
         when True =>
            --  EM as an array
            Arr : EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for EM_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Offset:0x88 CT16Bn External Match Register
   type EM_Register is record
      --  When the TC matches MR0, this bit will act according to EMC0[1:0],
      --  and also drive the state of CT16Bn_PWM0 output.
      EM             : EM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM_Register use record
      EM             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  CT16Bn_PWM0 functionality
   type EMC_EMC0_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM0 pin is LOW
      Low,
      --  CT16Bn_PWM0 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM0 pin
      Toggle)
     with Size => 2;
   for EMC_EMC0_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM1 functionality
   type EMC_EMC1_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM1 pin is LOW
      Low,
      --  CT16Bn_PWM1 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM1 pin
      Toggle)
     with Size => 2;
   for EMC_EMC1_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM2 functionality
   type EMC_EMC2_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM2 pin is LOW
      Low,
      --  CT16Bn_PWM2 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM2 pin
      Toggle)
     with Size => 2;
   for EMC_EMC2_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM3 functionality
   type EMC_EMC3_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM3 pin is LOW
      Low,
      --  CT16Bn_PWM3 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM3 pin
      Toggle)
     with Size => 2;
   for EMC_EMC3_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM4 functionality
   type EMC_EMC4_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM4 pin is LOW
      Low,
      --  CT16Bn_PWM4 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM4 pin
      Toggle)
     with Size => 2;
   for EMC_EMC4_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM5 functionality
   type EMC_EMC5_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM5 pin is LOW
      Low,
      --  CT16Bn_PWM5 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM5 pin
      Toggle)
     with Size => 2;
   for EMC_EMC5_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM6 functionality
   type EMC_EMC6_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM6 pin is LOW
      Low,
      --  CT16Bn_PWM6 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM6 pin
      Toggle)
     with Size => 2;
   for EMC_EMC6_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM7 functionality
   type EMC_EMC7_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM7 pin is LOW
      Low,
      --  CT16Bn_PWM7 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM7 pin
      Toggle)
     with Size => 2;
   for EMC_EMC7_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM8 functionality
   type EMC_EMC8_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM8 pin is LOW
      Low,
      --  CT16Bn_PWM8 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM8 pin
      Toggle)
     with Size => 2;
   for EMC_EMC8_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM9 functionality
   type EMC_EMC9_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM9 pin is LOW
      Low,
      --  CT16Bn_PWM9 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM9 pin
      Toggle)
     with Size => 2;
   for EMC_EMC9_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM10 functionality
   type EMC_EMC10_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM10 pin is LOW
      Low,
      --  CT16Bn_PWM10 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM10 pin
      Toggle)
     with Size => 2;
   for EMC_EMC10_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM11 functionality
   type EMC_EMC11_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM11 pin is LOW
      Low,
      --  CT16Bn_PWM11 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM11 pin
      Toggle)
     with Size => 2;
   for EMC_EMC11_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM12 functionality
   type EMC_EMC12_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM12 pin is LOW
      Low,
      --  CT16Bn_PWM12 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM12 pin
      Toggle)
     with Size => 2;
   for EMC_EMC12_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM13 functionality
   type EMC_EMC13_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM13 pin is LOW
      Low,
      --  CT16Bn_PWM13 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM13 pin
      Toggle)
     with Size => 2;
   for EMC_EMC13_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM14 functionality
   type EMC_EMC14_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM14 pin is LOW
      Low,
      --  CT16Bn_PWM14 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM14 pin
      Toggle)
     with Size => 2;
   for EMC_EMC14_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM15 functionality
   type EMC_EMC15_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM15 pin is LOW
      Low,
      --  CT16Bn_PWM15 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM15 pin
      Toggle)
     with Size => 2;
   for EMC_EMC15_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  Offset:0x8C CT16Bn External Match Control register
   type EMC_Register is record
      --  CT16Bn_PWM0 functionality
      EMC0  : EMC_EMC0_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM1 functionality
      EMC1  : EMC_EMC1_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM2 functionality
      EMC2  : EMC_EMC2_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM3 functionality
      EMC3  : EMC_EMC3_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM4 functionality
      EMC4  : EMC_EMC4_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM5 functionality
      EMC5  : EMC_EMC5_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM6 functionality
      EMC6  : EMC_EMC6_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM7 functionality
      EMC7  : EMC_EMC7_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM8 functionality
      EMC8  : EMC_EMC8_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM9 functionality
      EMC9  : EMC_EMC9_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM10 functionality
      EMC10 : EMC_EMC10_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM11 functionality
      EMC11 : EMC_EMC11_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM12 functionality
      EMC12 : EMC_EMC12_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM13 functionality
      EMC13 : EMC_EMC13_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM14 functionality
      EMC14 : EMC_EMC14_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM15 functionality
      EMC15 : EMC_EMC15_Field := NRF_SVD.TIMER.Do Nothing;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMC_Register use record
      EMC0  at 0 range 0 .. 1;
      EMC1  at 0 range 2 .. 3;
      EMC2  at 0 range 4 .. 5;
      EMC3  at 0 range 6 .. 7;
      EMC4  at 0 range 8 .. 9;
      EMC5  at 0 range 10 .. 11;
      EMC6  at 0 range 12 .. 13;
      EMC7  at 0 range 14 .. 15;
      EMC8  at 0 range 16 .. 17;
      EMC9  at 0 range 18 .. 19;
      EMC10 at 0 range 20 .. 21;
      EMC11 at 0 range 22 .. 23;
      EMC12 at 0 range 24 .. 25;
      EMC13 at 0 range 26 .. 27;
      EMC14 at 0 range 28 .. 29;
      EMC15 at 0 range 30 .. 31;
   end record;

   --  CT16Bn_PWM16 functionality
   type EMC2_EMC16_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM16 pin is LOW
      Low,
      --  CT16Bn_PWM16 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM16 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC16_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM17 functionality
   type EMC2_EMC17_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM17 pin is LOW
      Low,
      --  CT16Bn_PWM17 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM17 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC17_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM18 functionality
   type EMC2_EMC18_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM18 pin is LOW
      Low,
      --  CT16Bn_PWM18 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM18 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC18_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM19 functionality
   type EMC2_EMC19_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM19 pin is LOW
      Low,
      --  CT16Bn_PWM19 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM19 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC19_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM20 functionality
   type EMC2_EMC20_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM20 pin is LOW
      Low,
      --  CT16Bn_PWM20 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM20 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC20_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM21 functionality
   type EMC2_EMC21_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM21 pin is LOW
      Low,
      --  CT16Bn_PWM21 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM21 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC21_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM22 functionality
   type EMC2_EMC22_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM22 pin is LOW
      Low,
      --  CT16Bn_PWM22 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM22 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC22_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  CT16Bn_PWM23 functionality
   type EMC2_EMC23_Field is
     (
      --  Do nothing
      Do Nothing,
      --  CT16Bn_PWM23 pin is LOW
      Low,
      --  CT16Bn_PWM23 pin is HIGH
      High,
      --  Toggle CT16Bn_PWM23 pin
      Toggle)
     with Size => 2;
   for EMC2_EMC23_Field use
     (Do Nothing => 0,
      Low => 1,
      High => 2,
      Toggle => 3);

   --  Offset:0x90 CT16Bn External Match Control register 2
   type EMC2_Register is record
      --  CT16Bn_PWM16 functionality
      EMC16          : EMC2_EMC16_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM17 functionality
      EMC17          : EMC2_EMC17_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM18 functionality
      EMC18          : EMC2_EMC18_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM19 functionality
      EMC19          : EMC2_EMC19_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM20 functionality
      EMC20          : EMC2_EMC20_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM21 functionality
      EMC21          : EMC2_EMC21_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM22 functionality
      EMC22          : EMC2_EMC22_Field := NRF_SVD.TIMER.Do Nothing;
      --  CT16Bn_PWM23 functionality
      EMC23          : EMC2_EMC23_Field := NRF_SVD.TIMER.Do Nothing;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMC2_Register use record
      EMC16          at 0 range 0 .. 1;
      EMC17          at 0 range 2 .. 3;
      EMC18          at 0 range 4 .. 5;
      EMC19          at 0 range 6 .. 7;
      EMC20          at 0 range 8 .. 9;
      EMC21          at 0 range 10 .. 11;
      EMC22          at 0 range 12 .. 13;
      EMC23          at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWM0 output mode
   type PWMCTRL_PWM0MODE_Field is
     (
      --  During up-counting, PWM0 is 0 when TC is less than MR0. During
      --  down-counting, PWM0 is 1 when TC is larger/equal than MR0
      Pwm MODE 1,
      --  During up-counting, PWM0 is 1 when TC is less than MR0. During
      --  down-counting, PWM0 is 0 when TC is larger/equal than MR0
      Pwm MODE 2,
      --  PWM0 is forced to 0
      Force 0,
      --  PWM0 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM0MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM1 output mode
   type PWMCTRL_PWM1MODE_Field is
     (
      --  During up-counting, PWM1 is 0 when TC is less than MR1. During
      --  down-counting, PWM1 is 1 when TC is larger/equal than MR1
      Pwm MODE 1,
      --  During up-counting, PWM1 is 1 when TC is less than MR1. During
      --  down-counting, PWM1 is 0 when TC is larger/equal than MR1
      Pwm MODE 2,
      --  PWM1 is forced to 0
      Force 0,
      --  PWM1 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM1MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM2 output mode
   type PWMCTRL_PWM2MODE_Field is
     (
      --  During up-counting, PWM2 is 0 when TC is less than MR2. During
      --  down-counting, PWM2 is 1 when TC is larger/equal than MR2
      Pwm MODE 1,
      --  During up-counting, PWM2 is 1 when TC is less than MR2. During
      --  down-counting, PWM2 is 0 when TC is larger/equal than MR2
      Pwm MODE 2,
      --  PWM2 is forced to 0
      Force 0,
      --  PWM2 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM2MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM3 output mode
   type PWMCTRL_PWM3MODE_Field is
     (
      --  During up-counting, PWM3 is 0 when TC is less than MR3. During
      --  down-counting, PWM3 is 1 when TC is larger/equal than MR3
      Pwm MODE 1,
      --  During up-counting, PWM3 is 1 when TC is less than MR3. During
      --  down-counting, PWM3 is 0 when TC is larger/equal than MR3
      Pwm MODE 2,
      --  PWM3 is forced to 0
      Force 0,
      --  PWM3 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM3MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM4 output mode
   type PWMCTRL_PWM4MODE_Field is
     (
      --  During up-counting, PWM4 is 0 when TC is less than MR4. During
      --  down-counting, PWM4 is 1 when TC is larger/equal than MR4
      Pwm MODE 1,
      --  During up-counting, PWM4 is 1 when TC is less than MR4. During
      --  down-counting, PWM4 is 0 when TC is larger/equal than MR4
      Pwm MODE 2,
      --  PWM4 is forced to 0
      Force 0,
      --  PWM4 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM4MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM5 output mode
   type PWMCTRL_PWM5MODE_Field is
     (
      --  During up-counting, PWM5 is 0 when TC is less than MR5. During
      --  down-counting, PWM5 is 1 when TC is larger/equal than MR5
      Pwm MODE 1,
      --  During up-counting, PWM5 is 1 when TC is less than MR5. During
      --  down-counting, PWM5 is 0 when TC is larger/equal than MR5
      Pwm MODE 2,
      --  PWM5 is forced to 0
      Force 0,
      --  PWM5 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM5MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM6 output mode
   type PWMCTRL_PWM6MODE_Field is
     (
      --  During up-counting, PWM6 is 0 when TC is less than MR6. During
      --  down-counting, PWM6 is 1 when TC is larger/equal than MR6
      Pwm MODE 1,
      --  During up-counting, PWM6 is 1 when TC is less than MR6. During
      --  down-counting, PWM6 is 0 when TC is larger/equal than MR6
      Pwm MODE 2,
      --  PWM6 is forced to 0
      Force 0,
      --  PWM6 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM6MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM7 output mode
   type PWMCTRL_PWM7MODE_Field is
     (
      --  During up-counting, PWM7 is 0 when TC is less than MR7. During
      --  down-counting, PWM7 is 1 when TC is larger/equal than MR7
      Pwm MODE 1,
      --  During up-counting, PWM7 is 1 when TC is less than MR7. During
      --  down-counting, PWM7 is 0 when TC is larger/equal than MR7
      Pwm MODE 2,
      --  PWM7 is forced to 0
      Force 0,
      --  PWM7 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM7MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM8 output mode
   type PWMCTRL_PWM8MODE_Field is
     (
      --  During up-counting, PWM8 is 0 when TC is less than MR8. During
      --  down-counting, PWM8 is 1 when TC is larger/equal than MR8
      Pwm MODE 1,
      --  During up-counting, PWM8 is 1 when TC is less than MR8. During
      --  down-counting, PWM8 is 0 when TC is larger/equal than MR8
      Pwm MODE 2,
      --  PWM8 is forced to 0
      Force 0,
      --  PWM8 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM8MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM9 output mode
   type PWMCTRL_PWM9MODE_Field is
     (
      --  During up-counting, PWM9 is 0 when TC is less than MR9. During
      --  down-counting, PWM9 is 1 when TC is larger/equal than MR9
      Pwm MODE 1,
      --  During up-counting, PWM9 is 1 when TC is less than MR9. During
      --  down-counting, PWM9 is 0 when TC is larger/equal than MR9
      Pwm MODE 2,
      --  PWM9 is forced to 0
      Force 0,
      --  PWM9 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM9MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM10 output mode
   type PWMCTRL_PWM10MODE_Field is
     (
      --  During up-counting, PWM10 is 0 when TC is less than MR10. During
      --  down-counting, PWM10 is 1 when TC is larger/equal than MR10
      Pwm MODE 1,
      --  During up-counting, PWM10 is 1 when TC is less than MR10. During
      --  down-counting, PWM10 is 0 when TC is larger/equal than MR10
      Pwm MODE 2,
      --  PWM10 is forced to 0
      Force 0,
      --  PWM10 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM10MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM11 output mode
   type PWMCTRL_PWM11MODE_Field is
     (
      --  During up-counting, PWM11 is 0 when TC is less than MR11. During
      --  down-counting, PWM11 is 1 when TC is larger/equal than MR11
      Pwm MODE 1,
      --  During up-counting, PWM11 is 1 when TC is less than MR11. During
      --  down-counting, PWM11 is 0 when TC is larger/equal than MR11
      Pwm MODE 2,
      --  PWM11 is forced to 0
      Force 0,
      --  PWM11 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM11MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM12 output mode
   type PWMCTRL_PWM12MODE_Field is
     (
      --  During up-counting, PWM12 is 0 when TC is less than MR12. During
      --  down-counting, PWM12 is 1 when TC is larger/equal than MR12
      Pwm MODE 1,
      --  During up-counting, PWM12 is 1 when TC is less than MR12. During
      --  down-counting, PWM12 is 0 when TC is larger/equal than MR12
      Pwm MODE 2,
      --  PWM12 is forced to 0
      Force 0,
      --  PWM12 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM12MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM13 output mode
   type PWMCTRL_PWM13MODE_Field is
     (
      --  During up-counting, PWM13 is 0 when TC is less than MR13. During
      --  down-counting, PWM13 is 1 when TC is larger/equal than MR13
      Pwm MODE 1,
      --  During up-counting, PWM13 is 1 when TC is less than MR13. During
      --  down-counting, PWM13 is 0 when TC is larger/equal than MR13
      Pwm MODE 2,
      --  PWM13 is forced to 0
      Force 0,
      --  PWM13 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM13MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM14 output mode
   type PWMCTRL_PWM14MODE_Field is
     (
      --  During up-counting, PWM14 is 0 when TC is less than MR14. During
      --  down-counting, PWM14 is 1 when TC is larger/equal than MR14
      Pwm MODE 1,
      --  During up-counting, PWM14 is 1 when TC is less than MR14. During
      --  down-counting, PWM14 is 0 when TC is larger/equal than MR14
      Pwm MODE 2,
      --  PWM14 is forced to 0
      Force 0,
      --  PWM14 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM14MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM15 output mode
   type PWMCTRL_PWM15MODE_Field is
     (
      --  During up-counting, PWM15 is 0 when TC is less than MR15. During
      --  down-counting, PWM15 is 1 when TC is larger/equal than MR15
      Pwm MODE 1,
      --  During up-counting, PWM15 is 1 when TC is less than MR15. During
      --  down-counting, PWM15 is 0 when TC is larger/equal than MR15
      Pwm MODE 2,
      --  PWM15 is forced to 0
      Force 0,
      --  PWM15 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL_PWM15MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  Offset:0x94 CT16Bn PWM Control Register
   type PWMCTRL_Register is record
      --  PWM0 output mode
      PWM0MODE  : PWMCTRL_PWM0MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM1 output mode
      PWM1MODE  : PWMCTRL_PWM1MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM2 output mode
      PWM2MODE  : PWMCTRL_PWM2MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM3 output mode
      PWM3MODE  : PWMCTRL_PWM3MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM4 output mode
      PWM4MODE  : PWMCTRL_PWM4MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM5 output mode
      PWM5MODE  : PWMCTRL_PWM5MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM6 output mode
      PWM6MODE  : PWMCTRL_PWM6MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM7 output mode
      PWM7MODE  : PWMCTRL_PWM7MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM8 output mode
      PWM8MODE  : PWMCTRL_PWM8MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM9 output mode
      PWM9MODE  : PWMCTRL_PWM9MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM10 output mode
      PWM10MODE : PWMCTRL_PWM10MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM11 output mode
      PWM11MODE : PWMCTRL_PWM11MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM12 output mode
      PWM12MODE : PWMCTRL_PWM12MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM13 output mode
      PWM13MODE : PWMCTRL_PWM13MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM14 output mode
      PWM14MODE : PWMCTRL_PWM14MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM15 output mode
      PWM15MODE : PWMCTRL_PWM15MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWMCTRL_Register use record
      PWM0MODE  at 0 range 0 .. 1;
      PWM1MODE  at 0 range 2 .. 3;
      PWM2MODE  at 0 range 4 .. 5;
      PWM3MODE  at 0 range 6 .. 7;
      PWM4MODE  at 0 range 8 .. 9;
      PWM5MODE  at 0 range 10 .. 11;
      PWM6MODE  at 0 range 12 .. 13;
      PWM7MODE  at 0 range 14 .. 15;
      PWM8MODE  at 0 range 16 .. 17;
      PWM9MODE  at 0 range 18 .. 19;
      PWM10MODE at 0 range 20 .. 21;
      PWM11MODE at 0 range 22 .. 23;
      PWM12MODE at 0 range 24 .. 25;
      PWM13MODE at 0 range 26 .. 27;
      PWM14MODE at 0 range 28 .. 29;
      PWM15MODE at 0 range 30 .. 31;
   end record;

   --  PWM16 output mode
   type PWMCTRL2_PWM16MODE_Field is
     (
      --  During up-counting, PWM16 is 0 when TC is less than MR16. During
      --  down-counting, PWM16 is 1 when TC is larger/equal than MR16
      Pwm MODE 1,
      --  During up-counting, PWM16 is 1 when TC is less than MR16. During
      --  down-counting, PWM16 is 0 when TC is larger/equal than MR16
      Pwm MODE 2,
      --  PWM16 is forced to 0
      Force 0,
      --  PWM16 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM16MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM17 output mode
   type PWMCTRL2_PWM17MODE_Field is
     (
      --  During up-counting, PWM17 is 0 when TC is less than MR17. During
      --  down-counting, PWM17 is 1 when TC is larger/equal than MR17
      Pwm MODE 1,
      --  During up-counting, PWM17 is 1 when TC is less than MR17. During
      --  down-counting, PWM17 is 0 when TC is larger/equal than MR17
      Pwm MODE 2,
      --  PWM17 is forced to 0
      Force 0,
      --  PWM17 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM17MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM18 output mode
   type PWMCTRL2_PWM18MODE_Field is
     (
      --  During up-counting, PWM18 is 0 when TC is less than MR18. During
      --  down-counting, PWM18 is 1 when TC is larger/equal than MR18
      Pwm MODE 1,
      --  During up-counting, PWM18 is 1 when TC is less than MR18. During
      --  down-counting, PWM18 is 0 when TC is larger/equal than MR18
      Pwm MODE 2,
      --  PWM18 is forced to 0
      Force 0,
      --  PWM18 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM18MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM19 output mode
   type PWMCTRL2_PWM19MODE_Field is
     (
      --  During up-counting, PWM19 is 0 when TC is less than MR19. During
      --  down-counting, PWM19 is 1 when TC is larger/equal than MR19
      Pwm MODE 1,
      --  During up-counting, PWM19 is 1 when TC is less than MR19. During
      --  down-counting, PWM19 is 0 when TC is larger/equal than MR19
      Pwm MODE 2,
      --  PWM19 is forced to 0
      Force 0,
      --  PWM19 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM19MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM20 output mode
   type PWMCTRL2_PWM20MODE_Field is
     (
      --  During up-counting, PWM20 is 0 when TC is less than MR20. During
      --  down-counting, PWM20 is 1 when TC is larger/equal than MR20
      Pwm MODE 1,
      --  During up-counting, PWM20 is 1 when TC is less than MR20. During
      --  down-counting, PWM20 is 0 when TC is larger/equal than MR20
      Pwm MODE 2,
      --  PWM20 is forced to 0
      Force 0,
      --  PWM20 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM20MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM21 output mode
   type PWMCTRL2_PWM21MODE_Field is
     (
      --  During up-counting, PWM21 is 0 when TC is less than MR21. During
      --  down-counting, PWM21 is 1 when TC is larger/equal than MR21
      Pwm MODE 1,
      --  During up-counting, PWM21 is 1 when TC is less than MR21. During
      --  down-counting, PWM21 is 0 when TC is larger/equal than MR21
      Pwm MODE 2,
      --  PWM21 is forced to 0
      Force 0,
      --  PWM21 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM21MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM22 output mode
   type PWMCTRL2_PWM22MODE_Field is
     (
      --  During up-counting, PWM22 is 0 when TC is less than MR22. During
      --  down-counting, PWM22 is 1 when TC is larger/equal than MR22
      Pwm MODE 1,
      --  During up-counting, PWM22 is 1 when TC is less than MR22. During
      --  down-counting, PWM22 is 0 when TC is larger/equal than MR22
      Pwm MODE 2,
      --  PWM22 is forced to 0
      Force 0,
      --  PWM22 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM22MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  PWM23 output mode
   type PWMCTRL2_PWM23MODE_Field is
     (
      --  During up-counting, PWM23 is 0 when TC is less than MR23. During
      --  down-counting, PWM22 is 1 when TC is larger/equal than MR23
      Pwm MODE 1,
      --  During up-counting, PWM23 is 1 when TC is less than MR23. During
      --  down-counting, PWM22 is 0 when TC is larger/equal than MR23
      Pwm MODE 2,
      --  PWM23 is forced to 0
      Force 0,
      --  PWM23 is forced to 1
      Force 1)
     with Size => 2;
   for PWMCTRL2_PWM23MODE_Field use
     (Pwm MODE 1 => 0,
      Pwm MODE 2 => 1,
      Force 0 => 2,
      Force 1 => 3);

   --  Offset:0x98 CT16Bn PWM Control Register 2
   type PWMCTRL2_Register is record
      --  PWM16 output mode
      PWM16MODE      : PWMCTRL2_PWM16MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM17 output mode
      PWM17MODE      : PWMCTRL2_PWM17MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM18 output mode
      PWM18MODE      : PWMCTRL2_PWM18MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM19 output mode
      PWM19MODE      : PWMCTRL2_PWM19MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM20 output mode
      PWM20MODE      : PWMCTRL2_PWM20MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM21 output mode
      PWM21MODE      : PWMCTRL2_PWM21MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM22 output mode
      PWM22MODE      : PWMCTRL2_PWM22MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  PWM23 output mode
      PWM23MODE      : PWMCTRL2_PWM23MODE_Field := NRF_SVD.TIMER.Pwm MODE 1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWMCTRL2_Register use record
      PWM16MODE      at 0 range 0 .. 1;
      PWM17MODE      at 0 range 2 .. 3;
      PWM18MODE      at 0 range 4 .. 5;
      PWM19MODE      at 0 range 6 .. 7;
      PWM20MODE      at 0 range 8 .. 9;
      PWM21MODE      at 0 range 10 .. 11;
      PWM22MODE      at 0 range 12 .. 13;
      PWM23MODE      at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWM0 enable
   type PWMENB_PWM0EN_Field is
     (
      --  CT16Bn_PWM0 is controlled by EM0
      Disable,
      --  Enable PWM mode for CT16Bn_PWM0
      Enable)
     with Size => 1;
   for PWMENB_PWM0EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM1 enable
   type PWMENB_PWM1EN_Field is
     (
      --  CT16Bn_PWM1 is controlled by EM1
      Disable,
      --  Enable PWM mode for CT16Bn_PWM1
      Enable)
     with Size => 1;
   for PWMENB_PWM1EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM2 enable
   type PWMENB_PWM2EN_Field is
     (
      --  CT16Bn_PWM2 is controlled by EM2
      Disable,
      --  Enable PWM mode for CT16Bn_PWM2
      Enable)
     with Size => 1;
   for PWMENB_PWM2EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM3 enable
   type PWMENB_PWM3EN_Field is
     (
      --  CT16Bn_PWM3 is controlled by EM3
      Disable,
      --  Enable PWM mode for CT16Bn_PWM3
      Enable)
     with Size => 1;
   for PWMENB_PWM3EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM4 enable
   type PWMENB_PWM4EN_Field is
     (
      --  CT16Bn_PWM4 is controlled by EM4
      Disable,
      --  Enable PWM mode for CT16Bn_PWM4
      Enable)
     with Size => 1;
   for PWMENB_PWM4EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM5 enable
   type PWMENB_PWM5EN_Field is
     (
      --  CT16Bn_PWM5 is controlled by EM5
      Disable,
      --  Enable PWM mode for CT16Bn_PWM5
      Enable)
     with Size => 1;
   for PWMENB_PWM5EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM6 enable
   type PWMENB_PWM6EN_Field is
     (
      --  CT16Bn_PWM6 is controlled by EM6
      Disable,
      --  Enable PWM mode for CT16Bn_PWM6
      Enable)
     with Size => 1;
   for PWMENB_PWM6EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM7 enable
   type PWMENB_PWM7EN_Field is
     (
      --  CT16Bn_PWM7 is controlled by EM7
      Disable,
      --  Enable PWM mode for CT16Bn_PWM7
      Enable)
     with Size => 1;
   for PWMENB_PWM7EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM8 enable
   type PWMENB_PWM8EN_Field is
     (
      --  CT16Bn_PWM8 is controlled by EM8
      Disable,
      --  Enable PWM mode for CT16Bn_PWM8
      Enable)
     with Size => 1;
   for PWMENB_PWM8EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM9 enable
   type PWMENB_PWM9EN_Field is
     (
      --  CT16Bn_PWM9 is controlled by EM9
      Disable,
      --  Enable PWM mode for CT16Bn_PWM9
      Enable)
     with Size => 1;
   for PWMENB_PWM9EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM10 enable
   type PWMENB_PWM10EN_Field is
     (
      --  CT16Bn_PWM10 is controlled by EM10
      Disable,
      --  Enable PWM mode for CT16Bn_PWM10
      Enable)
     with Size => 1;
   for PWMENB_PWM10EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM11 enable
   type PWMENB_PWM11EN_Field is
     (
      --  CT16Bn_PWM11 is controlled by EM11
      Disable,
      --  Enable PWM mode for CT16Bn_PWM11
      Enable)
     with Size => 1;
   for PWMENB_PWM11EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM12 enable
   type PWMENB_PWM12EN_Field is
     (
      --  CT16Bn_PWM12 is controlled by EM12
      Disable,
      --  Enable PWM mode for CT16Bn_PWM12
      Enable)
     with Size => 1;
   for PWMENB_PWM12EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM13 enable
   type PWMENB_PWM13EN_Field is
     (
      --  CT16Bn_PWM13 is controlled by EM13
      Disable,
      --  Enable PWM mode for CT16Bn_PWM13
      Enable)
     with Size => 1;
   for PWMENB_PWM13EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM14 enable
   type PWMENB_PWM14EN_Field is
     (
      --  CT16Bn_PWM14 is controlled by EM14
      Disable,
      --  Enable PWM mode for CT16Bn_PWM14
      Enable)
     with Size => 1;
   for PWMENB_PWM14EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM15 enable
   type PWMENB_PWM15EN_Field is
     (
      --  CT16Bn_PWM15 is controlled by EM15
      Disable,
      --  Enable PWM mode for CT16Bn_PWM15
      Enable)
     with Size => 1;
   for PWMENB_PWM15EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM16 enable
   type PWMENB_PWM16EN_Field is
     (
      --  CT16Bn_PWM16 is controlled by EM16
      Disable,
      --  Enable PWM mode for CT16Bn_PWM16
      Enable)
     with Size => 1;
   for PWMENB_PWM16EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM17 enable
   type PWMENB_PWM17EN_Field is
     (
      --  CT16Bn_PWM17 is controlled by EM17
      Disable,
      --  Enable PWM mode for CT16Bn_PWM17
      Enable)
     with Size => 1;
   for PWMENB_PWM17EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM18 enable
   type PWMENB_PWM18EN_Field is
     (
      --  CT16Bn_PWM18 is controlled by EM18
      Disable,
      --  Enable PWM mode for CT16Bn_PWM18
      Enable)
     with Size => 1;
   for PWMENB_PWM18EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM19 enable
   type PWMENB_PWM19EN_Field is
     (
      --  CT16Bn_PWM19 is controlled by EM19
      Disable,
      --  Enable PWM mode for CT16Bn_PWM19
      Enable)
     with Size => 1;
   for PWMENB_PWM19EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM20 enable
   type PWMENB_PWM20EN_Field is
     (
      --  CT16Bn_PWM20 is controlled by EM20
      Disable,
      --  Enable PWM mode for CT16Bn_PWM20
      Enable)
     with Size => 1;
   for PWMENB_PWM20EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM21 enable
   type PWMENB_PWM21EN_Field is
     (
      --  CT16Bn_PWM21 is controlled by EM21
      Disable,
      --  Enable PWM mode for CT16Bn_PWM21
      Enable)
     with Size => 1;
   for PWMENB_PWM21EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM22 enable
   type PWMENB_PWM22EN_Field is
     (
      --  CT16Bn_PWM22 is controlled by EM22
      Disable,
      --  Enable PWM mode for CT16Bn_PWM22
      Enable)
     with Size => 1;
   for PWMENB_PWM22EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PWM23 enable
   type PWMENB_PWM23EN_Field is
     (
      --  CT16Bn_PWM23 is controlled by EM23
      Disable,
      --  Enable PWM mode for CT16Bn_PWM23
      Enable)
     with Size => 1;
   for PWMENB_PWM23EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x9C CT16Bn PWM Enable register
   type PWMENB_Register is record
      --  PWM0 enable
      PWM0EN         : PWMENB_PWM0EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM1 enable
      PWM1EN         : PWMENB_PWM1EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM2 enable
      PWM2EN         : PWMENB_PWM2EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM3 enable
      PWM3EN         : PWMENB_PWM3EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM4 enable
      PWM4EN         : PWMENB_PWM4EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM5 enable
      PWM5EN         : PWMENB_PWM5EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM6 enable
      PWM6EN         : PWMENB_PWM6EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM7 enable
      PWM7EN         : PWMENB_PWM7EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM8 enable
      PWM8EN         : PWMENB_PWM8EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM9 enable
      PWM9EN         : PWMENB_PWM9EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM10 enable
      PWM10EN        : PWMENB_PWM10EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM11 enable
      PWM11EN        : PWMENB_PWM11EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM12 enable
      PWM12EN        : PWMENB_PWM12EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM13 enable
      PWM13EN        : PWMENB_PWM13EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM14 enable
      PWM14EN        : PWMENB_PWM14EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM15 enable
      PWM15EN        : PWMENB_PWM15EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM16 enable
      PWM16EN        : PWMENB_PWM16EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM17 enable
      PWM17EN        : PWMENB_PWM17EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM18 enable
      PWM18EN        : PWMENB_PWM18EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM19 enable
      PWM19EN        : PWMENB_PWM19EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM20 enable
      PWM20EN        : PWMENB_PWM20EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM21 enable
      PWM21EN        : PWMENB_PWM21EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM22 enable
      PWM22EN        : PWMENB_PWM22EN_Field := NRF_SVD.TIMER.Disable;
      --  PWM23 enable
      PWM23EN        : PWMENB_PWM23EN_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWMENB_Register use record
      PWM0EN         at 0 range 0 .. 0;
      PWM1EN         at 0 range 1 .. 1;
      PWM2EN         at 0 range 2 .. 2;
      PWM3EN         at 0 range 3 .. 3;
      PWM4EN         at 0 range 4 .. 4;
      PWM5EN         at 0 range 5 .. 5;
      PWM6EN         at 0 range 6 .. 6;
      PWM7EN         at 0 range 7 .. 7;
      PWM8EN         at 0 range 8 .. 8;
      PWM9EN         at 0 range 9 .. 9;
      PWM10EN        at 0 range 10 .. 10;
      PWM11EN        at 0 range 11 .. 11;
      PWM12EN        at 0 range 12 .. 12;
      PWM13EN        at 0 range 13 .. 13;
      PWM14EN        at 0 range 14 .. 14;
      PWM15EN        at 0 range 15 .. 15;
      PWM16EN        at 0 range 16 .. 16;
      PWM17EN        at 0 range 17 .. 17;
      PWM18EN        at 0 range 18 .. 18;
      PWM19EN        at 0 range 19 .. 19;
      PWM20EN        at 0 range 20 .. 20;
      PWM21EN        at 0 range 21 .. 21;
      PWM22EN        at 0 range 22 .. 22;
      PWM23EN        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  CT16Bn_PWM0/GPIO selection
   type PWMIOENB_PWM0IOEN_Field is
     (
      --  CT16Bn_PWM0 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM0 pin act as match output, and output depends on PWM0EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM0IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM1/GPIO selection
   type PWMIOENB_PWM1IOEN_Field is
     (
      --  CT16Bn_PWM1 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM1 pin act as match output, and output depends on PWM1EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM1IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM2/GPIO selection
   type PWMIOENB_PWM2IOEN_Field is
     (
      --  CT16Bn_PWM2 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM2 pin act as match output, and output depends on PWM2EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM2IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM3/GPIO selection
   type PWMIOENB_PWM3IOEN_Field is
     (
      --  CT16Bn_PWM3 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM3 pin act as match output, and output depends on PWM3EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM3IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM4/GPIO selection
   type PWMIOENB_PWM4IOEN_Field is
     (
      --  CT16Bn_PWM4 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM4 pin act as match output, and output depends on PWM4EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM4IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM5/GPIO selection
   type PWMIOENB_PWM5IOEN_Field is
     (
      --  CT16Bn_PWM5 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM5 pin act as match output, and output depends on PWM5EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM5IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM6/GPIO selection
   type PWMIOENB_PWM6IOEN_Field is
     (
      --  CT16Bn_PWM6 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM6 pin act as match output, and output depends on PWM6EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM6IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM7/GPIO selection
   type PWMIOENB_PWM7IOEN_Field is
     (
      --  CT16Bn_PWM7 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM7 pin act as match output, and output depends on PWM7EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM7IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM8/GPIO selection
   type PWMIOENB_PWM8IOEN_Field is
     (
      --  CT16Bn_PWM8 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM8 pin act as match output, and output depends on PWM8EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM8IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM9/GPIO selection
   type PWMIOENB_PWM9IOEN_Field is
     (
      --  CT16Bn_PWM9 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM9 pin act as match output, and output depends on PWM9EN bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM9IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM10/GPIO selection
   type PWMIOENB_PWM10IOEN_Field is
     (
      --  CT16Bn_PWM10 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM10 pin act as match output, and output depends on PWM10EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM10IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM11/GPIO selection
   type PWMIOENB_PWM11IOEN_Field is
     (
      --  CT16Bn_PWM11 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM11 pin act as match output, and output depends on PWM11EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM11IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM12/GPIO selection
   type PWMIOENB_PWM12IOEN_Field is
     (
      --  CT16Bn_PWM12 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM12 pin act as match output, and output depends on PWM12EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM12IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM13/GPIO selection
   type PWMIOENB_PWM13IOEN_Field is
     (
      --  CT16Bn_PWM13 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM13 pin act as match output, and output depends on PWM13EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM13IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM14/GPIO selection
   type PWMIOENB_PWM14IOEN_Field is
     (
      --  CT16Bn_PWM14 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM14 pin act as match output, and output depends on PWM14EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM14IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM15/GPIO selection
   type PWMIOENB_PWM15IOEN_Field is
     (
      --  CT16Bn_PWM15 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM15 pin act as match output, and output depends on PWM15EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM15IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM16/GPIO selection
   type PWMIOENB_PWM16IOEN_Field is
     (
      --  CT16Bn_PWM16 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM16 pin act as match output, and output depends on PWM16EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM16IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM17/GPIO selection
   type PWMIOENB_PWM17IOEN_Field is
     (
      --  CT16Bn_PWM17 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM17 pin act as match output, and output depends on PWM17EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM17IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM18/GPIO selection
   type PWMIOENB_PWM18IOEN_Field is
     (
      --  CT16Bn_PWM18 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM18 pin act as match output, and output depends on PWM18EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM18IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM19/GPIO selection
   type PWMIOENB_PWM19IOEN_Field is
     (
      --  CT16Bn_PWM19 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM19 pin act as match output, and output depends on PWM19EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM19IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM20/GPIO selection
   type PWMIOENB_PWM20IOEN_Field is
     (
      --  CT16Bn_PWM20 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM20 pin act as match output, and output depends on PWM20EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM20IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM21/GPIO selection
   type PWMIOENB_PWM21IOEN_Field is
     (
      --  CT16Bn_PWM21 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM21 pin act as match output, and output depends on PWM21EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM21IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM22/GPIO selection
   type PWMIOENB_PWM22IOEN_Field is
     (
      --  CT16Bn_PWM22 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM22 pin act as match output, and output depends on PWM22EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM22IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CT16Bn_PWM23/GPIO selection
   type PWMIOENB_PWM23IOEN_Field is
     (
      --  CT16Bn_PWM23 pin is act as GPIO
      Disable,
      --  CT16Bn_PWM23 pin act as match output, and output depends on PWM23EN
      --  bit
      Enable)
     with Size => 1;
   for PWMIOENB_PWM23IOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0xA0 CT16Bn PWM IO Enable register
   type PWMIOENB_Register is record
      --  CT16Bn_PWM0/GPIO selection
      PWM0IOEN       : PWMIOENB_PWM0IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM1/GPIO selection
      PWM1IOEN       : PWMIOENB_PWM1IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM2/GPIO selection
      PWM2IOEN       : PWMIOENB_PWM2IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM3/GPIO selection
      PWM3IOEN       : PWMIOENB_PWM3IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM4/GPIO selection
      PWM4IOEN       : PWMIOENB_PWM4IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM5/GPIO selection
      PWM5IOEN       : PWMIOENB_PWM5IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM6/GPIO selection
      PWM6IOEN       : PWMIOENB_PWM6IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM7/GPIO selection
      PWM7IOEN       : PWMIOENB_PWM7IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM8/GPIO selection
      PWM8IOEN       : PWMIOENB_PWM8IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM9/GPIO selection
      PWM9IOEN       : PWMIOENB_PWM9IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM10/GPIO selection
      PWM10IOEN      : PWMIOENB_PWM10IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM11/GPIO selection
      PWM11IOEN      : PWMIOENB_PWM11IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM12/GPIO selection
      PWM12IOEN      : PWMIOENB_PWM12IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM13/GPIO selection
      PWM13IOEN      : PWMIOENB_PWM13IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM14/GPIO selection
      PWM14IOEN      : PWMIOENB_PWM14IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM15/GPIO selection
      PWM15IOEN      : PWMIOENB_PWM15IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM16/GPIO selection
      PWM16IOEN      : PWMIOENB_PWM16IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM17/GPIO selection
      PWM17IOEN      : PWMIOENB_PWM17IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM18/GPIO selection
      PWM18IOEN      : PWMIOENB_PWM18IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM19/GPIO selection
      PWM19IOEN      : PWMIOENB_PWM19IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM20/GPIO selection
      PWM20IOEN      : PWMIOENB_PWM20IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM21/GPIO selection
      PWM21IOEN      : PWMIOENB_PWM21IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM22/GPIO selection
      PWM22IOEN      : PWMIOENB_PWM22IOEN_Field := NRF_SVD.TIMER.Disable;
      --  CT16Bn_PWM23/GPIO selection
      PWM23IOEN      : PWMIOENB_PWM23IOEN_Field := NRF_SVD.TIMER.Disable;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWMIOENB_Register use record
      PWM0IOEN       at 0 range 0 .. 0;
      PWM1IOEN       at 0 range 1 .. 1;
      PWM2IOEN       at 0 range 2 .. 2;
      PWM3IOEN       at 0 range 3 .. 3;
      PWM4IOEN       at 0 range 4 .. 4;
      PWM5IOEN       at 0 range 5 .. 5;
      PWM6IOEN       at 0 range 6 .. 6;
      PWM7IOEN       at 0 range 7 .. 7;
      PWM8IOEN       at 0 range 8 .. 8;
      PWM9IOEN       at 0 range 9 .. 9;
      PWM10IOEN      at 0 range 10 .. 10;
      PWM11IOEN      at 0 range 11 .. 11;
      PWM12IOEN      at 0 range 12 .. 12;
      PWM13IOEN      at 0 range 13 .. 13;
      PWM14IOEN      at 0 range 14 .. 14;
      PWM15IOEN      at 0 range 15 .. 15;
      PWM16IOEN      at 0 range 16 .. 16;
      PWM17IOEN      at 0 range 17 .. 17;
      PWM18IOEN      at 0 range 18 .. 18;
      PWM19IOEN      at 0 range 19 .. 19;
      PWM20IOEN      at 0 range 20 .. 20;
      PWM21IOEN      at 0 range 21 .. 21;
      PWM22IOEN      at 0 range 22 .. 22;
      PWM23IOEN      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Match channel 1 interrupt flag
   type RIS_MR1IF_Field is
     (
      --  No interrupt on match channel 1
      No,
      --  Interrupt requirements met on match channel 1
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR1IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 2 interrupt flag
   type RIS_MR2IF_Field is
     (
      --  No interrupt on match channel 2
      No,
      --  Interrupt requirements met on match channel 2
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR2IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 3 interrupt flag
   type RIS_MR3IF_Field is
     (
      --  No interrupt on match channel 3
      No,
      --  Interrupt requirements met on match channel 3
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR3IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 4 interrupt flag
   type RIS_MR4IF_Field is
     (
      --  No interrupt on match channel 4
      No INTERRUPT,
      --  Interrupt requirements met on match channel 4
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR4IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 5 interrupt flag
   type RIS_MR5IF_Field is
     (
      --  No interrupt on match channel 5
      No,
      --  Interrupt requirements met on match channel 5
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR5IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 6 interrupt flag
   type RIS_MR6IF_Field is
     (
      --  No interrupt on match channel 6
      No,
      --  Interrupt requirements met on match channel 6
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR6IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 7 interrupt flag
   type RIS_MR7IF_Field is
     (
      --  No interrupt on match channel 7
      No,
      --  Interrupt requirements met on match channel 7
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR7IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 8 interrupt flag
   type RIS_MR8IF_Field is
     (
      --  No interrupt on match channel 8
      No INTERRUPT,
      --  Interrupt requirements met on match channel 8
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR8IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 9 interrupt flag
   type RIS_MR9IF_Field is
     (
      --  No interrupt on match channel 9
      No,
      --  Interrupt requirements met on match channel 9
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR9IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 10 interrupt flag
   type RIS_MR10IF_Field is
     (
      --  No interrupt on match channel 10
      No,
      --  Interrupt requirements met on match channel 10
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR10IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 11 interrupt flag
   type RIS_MR11IF_Field is
     (
      --  No interrupt on match channel 11
      No,
      --  Interrupt requirements met on match channel 11
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR11IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 12 interrupt flag
   type RIS_MR12IF_Field is
     (
      --  No interrupt on match channel 12
      No INTERRUPT,
      --  Interrupt requirements met on match channel 12
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR12IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 13 interrupt flag
   type RIS_MR13IF_Field is
     (
      --  No interrupt on match channel 13
      No,
      --  Interrupt requirements met on match channel 13
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR13IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 14 interrupt flag
   type RIS_MR14IF_Field is
     (
      --  No interrupt on match channel 14
      No,
      --  Interrupt requirements met on match channel 14
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR14IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 15 interrupt flag
   type RIS_MR15IF_Field is
     (
      --  No interrupt on match channel 15
      No,
      --  Interrupt requirements met on match channel 15
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR15IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 16 interrupt flag
   type RIS_MR16IF_Field is
     (
      --  No interrupt on match channel 16
      No INTERRUPT,
      --  Interrupt requirements met on match channel 16
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR16IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 17 interrupt flag
   type RIS_MR17IF_Field is
     (
      --  No interrupt on match channel 17
      No,
      --  Interrupt requirements met on match channel 17
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR17IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 18 interrupt flag
   type RIS_MR18IF_Field is
     (
      --  No interrupt on match channel 18
      No,
      --  Interrupt requirements met on match channel 18
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR18IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 19 interrupt flag
   type RIS_MR19IF_Field is
     (
      --  No interrupt on match channel 19
      No,
      --  Interrupt requirements met on match channel 19
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR19IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 20 interrupt flag
   type RIS_MR20IF_Field is
     (
      --  No interrupt on match channel 20
      No INTERRUPT,
      --  Interrupt requirements met on match channel 20
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR20IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 21 interrupt flag
   type RIS_MR21IF_Field is
     (
      --  No interrupt on match channel 21
      No,
      --  Interrupt requirements met on match channel 21
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR21IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 22 interrupt flag
   type RIS_MR22IF_Field is
     (
      --  No interrupt on match channel 22
      No,
      --  Interrupt requirements met on match channel 22
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR22IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 23 interrupt flag
   type RIS_MR23IF_Field is
     (
      --  No interrupt on match channel 23
      No,
      --  Interrupt requirements met on match channel 23
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR23IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Match channel 24 interrupt flag
   type RIS_MR24IF_Field is
     (
      --  No interrupt on match channel 24
      No,
      --  Interrupt requirements met on match channel 24
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_MR24IF_Field use
     (No => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0xA4 CT16Bn Raw Interrupt Status Register
   type RIS_Register_1 is record
      --  Read-only. Match channel 0 interrupt flag
      MR0IF          : RIS_MR0IF_Field;
      --  Read-only. Match channel 1 interrupt flag
      MR1IF          : RIS_MR1IF_Field;
      --  Read-only. Match channel 2 interrupt flag
      MR2IF          : RIS_MR2IF_Field;
      --  Read-only. Match channel 3 interrupt flag
      MR3IF          : RIS_MR3IF_Field;
      --  Read-only. Match channel 4 interrupt flag
      MR4IF          : RIS_MR4IF_Field;
      --  Read-only. Match channel 5 interrupt flag
      MR5IF          : RIS_MR5IF_Field;
      --  Read-only. Match channel 6 interrupt flag
      MR6IF          : RIS_MR6IF_Field;
      --  Read-only. Match channel 7 interrupt flag
      MR7IF          : RIS_MR7IF_Field;
      --  Read-only. Match channel 8 interrupt flag
      MR8IF          : RIS_MR8IF_Field;
      --  Read-only. Match channel 9 interrupt flag
      MR9IF          : RIS_MR9IF_Field;
      --  Read-only. Match channel 10 interrupt flag
      MR10IF         : RIS_MR10IF_Field;
      --  Read-only. Match channel 11 interrupt flag
      MR11IF         : RIS_MR11IF_Field;
      --  Read-only. Match channel 12 interrupt flag
      MR12IF         : RIS_MR12IF_Field;
      --  Read-only. Match channel 13 interrupt flag
      MR13IF         : RIS_MR13IF_Field;
      --  Read-only. Match channel 14 interrupt flag
      MR14IF         : RIS_MR14IF_Field;
      --  Read-only. Match channel 15 interrupt flag
      MR15IF         : RIS_MR15IF_Field;
      --  Read-only. Match channel 16 interrupt flag
      MR16IF         : RIS_MR16IF_Field;
      --  Read-only. Match channel 17 interrupt flag
      MR17IF         : RIS_MR17IF_Field;
      --  Read-only. Match channel 18 interrupt flag
      MR18IF         : RIS_MR18IF_Field;
      --  Read-only. Match channel 19 interrupt flag
      MR19IF         : RIS_MR19IF_Field;
      --  Read-only. Match channel 20 interrupt flag
      MR20IF         : RIS_MR20IF_Field;
      --  Read-only. Match channel 21 interrupt flag
      MR21IF         : RIS_MR21IF_Field;
      --  Read-only. Match channel 22 interrupt flag
      MR22IF         : RIS_MR22IF_Field;
      --  Read-only. Match channel 23 interrupt flag
      MR23IF         : RIS_MR23IF_Field;
      --  Read-only. Match channel 24 interrupt flag
      MR24IF         : RIS_MR24IF_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register_1 use record
      MR0IF          at 0 range 0 .. 0;
      MR1IF          at 0 range 1 .. 1;
      MR2IF          at 0 range 2 .. 2;
      MR3IF          at 0 range 3 .. 3;
      MR4IF          at 0 range 4 .. 4;
      MR5IF          at 0 range 5 .. 5;
      MR6IF          at 0 range 6 .. 6;
      MR7IF          at 0 range 7 .. 7;
      MR8IF          at 0 range 8 .. 8;
      MR9IF          at 0 range 9 .. 9;
      MR10IF         at 0 range 10 .. 10;
      MR11IF         at 0 range 11 .. 11;
      MR12IF         at 0 range 12 .. 12;
      MR13IF         at 0 range 13 .. 13;
      MR14IF         at 0 range 14 .. 14;
      MR15IF         at 0 range 15 .. 15;
      MR16IF         at 0 range 16 .. 16;
      MR17IF         at 0 range 17 .. 17;
      MR18IF         at 0 range 18 .. 18;
      MR19IF         at 0 range 19 .. 19;
      MR20IF         at 0 range 20 .. 20;
      MR21IF         at 0 range 21 .. 21;
      MR22IF         at 0 range 22 .. 22;
      MR23IF         at 0 range 23 .. 23;
      MR24IF         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  MR1IF clear bit
   type IC_MR1IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR1IF
      Clear)
     with Size => 1;
   for IC_MR1IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR2IF clear bit
   type IC_MR2IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR2IF
      Clear)
     with Size => 1;
   for IC_MR2IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR3IF clear bit
   type IC_MR3IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR3IF
      Clear)
     with Size => 1;
   for IC_MR3IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR4IF clear bit
   type IC_MR4IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR4IF
      Clear)
     with Size => 1;
   for IC_MR4IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR5IF clear bit
   type IC_MR5IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR5IF
      Clear)
     with Size => 1;
   for IC_MR5IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR6IF clear bit
   type IC_MR6IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR6IF
      Clear)
     with Size => 1;
   for IC_MR6IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR7IF clear bit
   type IC_MR7IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR7IF
      Clear)
     with Size => 1;
   for IC_MR7IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR8IF clear bit
   type IC_MR8IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR8IF
      Clear)
     with Size => 1;
   for IC_MR8IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR9IF clear bit
   type IC_MR9IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR9IF
      Clear)
     with Size => 1;
   for IC_MR9IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR10IF clear bit
   type IC_MR10IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR10IF
      Clear)
     with Size => 1;
   for IC_MR10IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR11IF clear bit
   type IC_MR11IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR11IF
      Clear)
     with Size => 1;
   for IC_MR11IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR12IF clear bit
   type IC_MR12IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR12IF
      Clear)
     with Size => 1;
   for IC_MR12IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR13IF clear bit
   type IC_MR13IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR13IF
      Clear)
     with Size => 1;
   for IC_MR13IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR14IF clear bit
   type IC_MR14IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR14IF
      Clear)
     with Size => 1;
   for IC_MR14IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR15IF clear bit
   type IC_MR15IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR15IF
      Clear)
     with Size => 1;
   for IC_MR15IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR16IF clear bit
   type IC_MR16IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR16IF
      Clear)
     with Size => 1;
   for IC_MR16IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR17IF clear bit
   type IC_MR17IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR17IF
      Clear)
     with Size => 1;
   for IC_MR17IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR18IF clear bit
   type IC_MR18IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR18IF
      Clear)
     with Size => 1;
   for IC_MR18IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR19IF clear bit
   type IC_MR19IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR19IF
      Clear)
     with Size => 1;
   for IC_MR19IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR20IF clear bit
   type IC_MR20IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR20IF
      Clear)
     with Size => 1;
   for IC_MR20IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR21IF clear bit
   type IC_MR21IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR21IF
      Clear)
     with Size => 1;
   for IC_MR21IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR22IF clear bit
   type IC_MR22IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR22IF
      Clear)
     with Size => 1;
   for IC_MR22IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR23IF clear bit
   type IC_MR23IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR23IF
      Clear)
     with Size => 1;
   for IC_MR23IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  MR24IF clear bit
   type IC_MR24IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear MR24IF
      Clear)
     with Size => 1;
   for IC_MR24IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0xA8 CT16Bn Interrupt Clear Register
   type IC_Register_1 is record
      --  Write-only. MR0IF clear bit
      MR0IC          : IC_MR0IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR1IF clear bit
      MR1IC          : IC_MR1IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR2IF clear bit
      MR2IC          : IC_MR2IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR3IF clear bit
      MR3IC          : IC_MR3IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR4IF clear bit
      MR4IC          : IC_MR4IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR5IF clear bit
      MR5IC          : IC_MR5IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR6IF clear bit
      MR6IC          : IC_MR6IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR7IF clear bit
      MR7IC          : IC_MR7IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR8IF clear bit
      MR8IC          : IC_MR8IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR9IF clear bit
      MR9IC          : IC_MR9IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR10IF clear bit
      MR10IC         : IC_MR10IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR11IF clear bit
      MR11IC         : IC_MR11IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR12IF clear bit
      MR12IC         : IC_MR12IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR13IF clear bit
      MR13IC         : IC_MR13IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR14IF clear bit
      MR14IC         : IC_MR14IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR15IF clear bit
      MR15IC         : IC_MR15IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR16IF clear bit
      MR16IC         : IC_MR16IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR17IF clear bit
      MR17IC         : IC_MR17IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR18IF clear bit
      MR18IC         : IC_MR18IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR19IF clear bit
      MR19IC         : IC_MR19IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR20IF clear bit
      MR20IC         : IC_MR20IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR21IF clear bit
      MR21IC         : IC_MR21IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR22IF clear bit
      MR22IC         : IC_MR22IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR23IF clear bit
      MR23IC         : IC_MR23IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  Write-only. MR24IF clear bit
      MR24IC         : IC_MR24IC_Field := NRF_SVD.TIMER.No EFFECT;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register_1 use record
      MR0IC          at 0 range 0 .. 0;
      MR1IC          at 0 range 1 .. 1;
      MR2IC          at 0 range 2 .. 2;
      MR3IC          at 0 range 3 .. 3;
      MR4IC          at 0 range 4 .. 4;
      MR5IC          at 0 range 5 .. 5;
      MR6IC          at 0 range 6 .. 6;
      MR7IC          at 0 range 7 .. 7;
      MR8IC          at 0 range 8 .. 8;
      MR9IC          at 0 range 9 .. 9;
      MR10IC         at 0 range 10 .. 10;
      MR11IC         at 0 range 11 .. 11;
      MR12IC         at 0 range 12 .. 12;
      MR13IC         at 0 range 13 .. 13;
      MR14IC         at 0 range 14 .. 14;
      MR15IC         at 0 range 15 .. 15;
      MR16IC         at 0 range 16 .. 16;
      MR17IC         at 0 range 17 .. 17;
      MR18IC         at 0 range 18 .. 18;
      MR19IC         at 0 range 19 .. 19;
      MR20IC         at 0 range 20 .. 20;
      MR21IC         at 0 range 21 .. 21;
      MR22IC         at 0 range 22 .. 22;
      MR23IC         at 0 range 23 .. 23;
      MR24IC         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  16-bit Timer 0 with Capture function
   type SN_CT16B0_Peripheral is record
      --  Offset:0x00 CT16Bn Timer Control Register
      TMRCTRL : aliased TMRCTRL_Register;
      --  Offset:0x04 CT16Bn Timer Counter Register
      TC      : aliased TC_Register;
      --  Offset:0x08 CT16Bn Prescale Register
      PRE     : aliased PRE_Register;
      --  Offset:0x0C CT16Bn Prescale Counter Register
      PC      : aliased PC_Register;
      --  Offset:0x10 CT16Bn Counter Control Register
      CNTCTRL : aliased CNTCTRL_Register;
      --  Offset:0x14 CT16Bn Match Control Register
      MCTRL   : aliased MCTRL_Register;
      --  Offset:0x20 CT16Bn MR0 Register
      MR0     : aliased HAL.UInt32;
      --  Offset:0x80 CT16Bn Capture Control Register
      CAPCTRL : aliased CAPCTRL_Register;
      --  Offset:0x84 CT16Bn CAP0 Register
      CAP0    : aliased CAP0_Register;
      --  Offset:0xA4 CT16Bn Raw Interrupt Status Register
      RIS     : aliased RIS_Register;
      --  Offset:0xA8 CT16Bn Interrupt Clear Register
      IC      : aliased IC_Register;
   end record
     with Volatile;

   for SN_CT16B0_Peripheral use record
      TMRCTRL at 16#0# range 0 .. 31;
      TC      at 16#4# range 0 .. 31;
      PRE     at 16#8# range 0 .. 31;
      PC      at 16#C# range 0 .. 31;
      CNTCTRL at 16#10# range 0 .. 31;
      MCTRL   at 16#14# range 0 .. 31;
      MR0     at 16#20# range 0 .. 31;
      CAPCTRL at 16#80# range 0 .. 31;
      CAP0    at 16#84# range 0 .. 31;
      RIS     at 16#A4# range 0 .. 31;
      IC      at 16#A8# range 0 .. 31;
   end record;

   --  16-bit Timer 0 with Capture function
   SN_CT16B0_Periph : aliased SN_CT16B0_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

   --  16-bit Timer 0 with Capture function
   type SN_CT16B1_Peripheral is record
      --  Offset:0x00 CT16Bn Timer Control Register
      TMRCTRL  : aliased TMRCTRL_Register;
      --  Offset:0x04 CT16Bn Timer Counter Register
      TC       : aliased TC_Register;
      --  Offset:0x08 CT16Bn Prescale Register
      PRE      : aliased PRE_Register;
      --  Offset:0x0C CT16Bn Prescale Counter Register
      PC       : aliased PC_Register;
      --  Offset:0x14 CT16Bn Match Control Register
      MCTRL    : aliased MCTRL_Register_1;
      --  Offset:0x18 CT16Bn Match Control Register 2
      MCTRL2   : aliased MCTRL2_Register;
      --  Offset:0x1C CT16Bn Match Control Register 3
      MCTRL3   : aliased MCTRL3_Register;
      --  Offset:0x20 CT16Bn MR0 Register
      MR0      : aliased HAL.UInt32;
      --  Offset:0x24 CT16Bn MR1 Register
      MR1      : aliased HAL.UInt32;
      --  Offset:0x28 CT16Bn MR2 Register
      MR2      : aliased HAL.UInt32;
      --  Offset:0x2C CT16Bn MR3 Register
      MR3      : aliased HAL.UInt32;
      --  Offset:0x30 CT16Bn MR4 Register
      MR4      : aliased HAL.UInt32;
      --  Offset:0x34 CT16Bn MR5 Register
      MR5      : aliased HAL.UInt32;
      --  Offset:0x38 CT16Bn MR6 Register
      MR6      : aliased HAL.UInt32;
      --  Offset:0x3C CT16Bn MR7 Register
      MR7      : aliased HAL.UInt32;
      --  Offset:0x40 CT16Bn MR8 Register
      MR8      : aliased HAL.UInt32;
      --  Offset:0x44 CT16Bn MR9 Register
      MR9      : aliased HAL.UInt32;
      --  Offset:0x48 CT16Bn MR10 Register
      MR10     : aliased HAL.UInt32;
      --  Offset:0x4C CT16Bn MR11 Register
      MR11     : aliased HAL.UInt32;
      --  Offset:0x50 CT16Bn MR12 Register
      MR12     : aliased HAL.UInt32;
      --  Offset:0x54 CT16Bn MR13 Register
      MR13     : aliased HAL.UInt32;
      --  Offset:0x58 CT16Bn MR14 Register
      MR14     : aliased HAL.UInt32;
      --  Offset:0x5C CT16Bn MR15 Register
      MR15     : aliased HAL.UInt32;
      --  Offset:0x60 CT16Bn MR16 Register
      MR16     : aliased HAL.UInt32;
      --  Offset:0x64 CT16Bn MR17 Register
      MR17     : aliased HAL.UInt32;
      --  Offset:0x68 CT16Bn MR18 Register
      MR18     : aliased HAL.UInt32;
      --  Offset:0x6C CT16Bn MR19 Register
      MR19     : aliased HAL.UInt32;
      --  Offset:0x70 CT16Bn MR20 Register
      MR20     : aliased HAL.UInt32;
      --  Offset:0x74 CT16Bn MR21 Register
      MR21     : aliased HAL.UInt32;
      --  Offset:0x78 CT16Bn MR22 Register
      MR22     : aliased HAL.UInt32;
      --  Offset:0x7C CT16Bn MR23 Register
      MR23     : aliased HAL.UInt32;
      --  Offset:0x80 CT16Bn MR24 Register
      MR24     : aliased HAL.UInt32;
      --  Offset:0x88 CT16Bn External Match Register
      EM       : aliased EM_Register;
      --  Offset:0x8C CT16Bn External Match Control register
      EMC      : aliased EMC_Register;
      --  Offset:0x90 CT16Bn External Match Control register 2
      EMC2     : aliased EMC2_Register;
      --  Offset:0x94 CT16Bn PWM Control Register
      PWMCTRL  : aliased PWMCTRL_Register;
      --  Offset:0x98 CT16Bn PWM Control Register 2
      PWMCTRL2 : aliased PWMCTRL2_Register;
      --  Offset:0x9C CT16Bn PWM Enable register
      PWMENB   : aliased PWMENB_Register;
      --  Offset:0xA0 CT16Bn PWM IO Enable register
      PWMIOENB : aliased PWMIOENB_Register;
      --  Offset:0xA4 CT16Bn Raw Interrupt Status Register
      RIS      : aliased RIS_Register_1;
      --  Offset:0xA8 CT16Bn Interrupt Clear Register
      IC       : aliased IC_Register_1;
   end record
     with Volatile;

   for SN_CT16B1_Peripheral use record
      TMRCTRL  at 16#0# range 0 .. 31;
      TC       at 16#4# range 0 .. 31;
      PRE      at 16#8# range 0 .. 31;
      PC       at 16#C# range 0 .. 31;
      MCTRL    at 16#14# range 0 .. 31;
      MCTRL2   at 16#18# range 0 .. 31;
      MCTRL3   at 16#1C# range 0 .. 31;
      MR0      at 16#20# range 0 .. 31;
      MR1      at 16#24# range 0 .. 31;
      MR2      at 16#28# range 0 .. 31;
      MR3      at 16#2C# range 0 .. 31;
      MR4      at 16#30# range 0 .. 31;
      MR5      at 16#34# range 0 .. 31;
      MR6      at 16#38# range 0 .. 31;
      MR7      at 16#3C# range 0 .. 31;
      MR8      at 16#40# range 0 .. 31;
      MR9      at 16#44# range 0 .. 31;
      MR10     at 16#48# range 0 .. 31;
      MR11     at 16#4C# range 0 .. 31;
      MR12     at 16#50# range 0 .. 31;
      MR13     at 16#54# range 0 .. 31;
      MR14     at 16#58# range 0 .. 31;
      MR15     at 16#5C# range 0 .. 31;
      MR16     at 16#60# range 0 .. 31;
      MR17     at 16#64# range 0 .. 31;
      MR18     at 16#68# range 0 .. 31;
      MR19     at 16#6C# range 0 .. 31;
      MR20     at 16#70# range 0 .. 31;
      MR21     at 16#74# range 0 .. 31;
      MR22     at 16#78# range 0 .. 31;
      MR23     at 16#7C# range 0 .. 31;
      MR24     at 16#80# range 0 .. 31;
      EM       at 16#88# range 0 .. 31;
      EMC      at 16#8C# range 0 .. 31;
      EMC2     at 16#90# range 0 .. 31;
      PWMCTRL  at 16#94# range 0 .. 31;
      PWMCTRL2 at 16#98# range 0 .. 31;
      PWMENB   at 16#9C# range 0 .. 31;
      PWMIOENB at 16#A0# range 0 .. 31;
      RIS      at 16#A4# range 0 .. 31;
      IC       at 16#A8# range 0 .. 31;
   end record;

   --  16-bit Timer 0 with Capture function
   SN_CT16B1_Periph : aliased SN_CT16B1_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

end NRF_SVD.TIMER;
