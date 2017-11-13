--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DUALTIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Mode Select
   type TIMER1CONTROL_ONE_SHOT_COUNT_Field is
     (
      --  Wrapping Mode
      TIMER1CONTROL_ONE_SHOT_COUNT_Field_0,
      --  One-Shot Mode
      TIMER1CONTROL_ONE_SHOT_COUNT_Field_1)
     with Size => 1;
   for TIMER1CONTROL_ONE_SHOT_COUNT_Field use
     (TIMER1CONTROL_ONE_SHOT_COUNT_Field_0 => 0,
      TIMER1CONTROL_ONE_SHOT_COUNT_Field_1 => 1);

   --  Timer Size
   type TIMER1CONTROL_TIMER_SIZE_Field is
     (
      --  16-bit Counter
      TIMER1CONTROL_TIMER_SIZE_Field_0,
      --  32-bit Counter
      TIMER1CONTROL_TIMER_SIZE_Field_1)
     with Size => 1;
   for TIMER1CONTROL_TIMER_SIZE_Field use
     (TIMER1CONTROL_TIMER_SIZE_Field_0 => 0,
      TIMER1CONTROL_TIMER_SIZE_Field_1 => 1);

   --  Prescale Bits
   type TIMER1CONTROL_TIMERPRE_Field is
     (
      --  0 Stages, Clock Divided by 1
      TIMER1CONTROL_TIMERPRE_Field_0,
      --  4 Stages, Clock Divided by 16
      TIMER1CONTROL_TIMERPRE_Field_1,
      --  8 Stages, Clock Divided by 256
      TIMER1CONTROL_TIMERPRE_Field_2,
      --  Undefined, do not use
      TIMER1CONTROL_TIMERPRE_Field_3)
     with Size => 2;
   for TIMER1CONTROL_TIMERPRE_Field use
     (TIMER1CONTROL_TIMERPRE_Field_0 => 0,
      TIMER1CONTROL_TIMERPRE_Field_1 => 1,
      TIMER1CONTROL_TIMERPRE_Field_2 => 2,
      TIMER1CONTROL_TIMERPRE_Field_3 => 3);

   --  Mode Bit
   type TIMER1CONTROL_TIMER_MODE_Field is
     (
      --  Free-Running Mode
      TIMER1CONTROL_TIMER_MODE_Field_0,
      --  Periodic Mode
      TIMER1CONTROL_TIMER_MODE_Field_1)
     with Size => 1;
   for TIMER1CONTROL_TIMER_MODE_Field use
     (TIMER1CONTROL_TIMER_MODE_Field_0 => 0,
      TIMER1CONTROL_TIMER_MODE_Field_1 => 1);

   --  Timer 1 Control Register
   type TIMER1CONTROL_Register is record
      --  Mode Select
      ONE_SHOT_COUNT   : TIMER1CONTROL_ONE_SHOT_COUNT_Field :=
                          SAM_SVD.DUALTIMER.TIMER1CONTROL_ONE_SHOT_COUNT_Field_0;
      --  Timer Size
      TIMER_SIZE       : TIMER1CONTROL_TIMER_SIZE_Field :=
                          SAM_SVD.DUALTIMER.TIMER1CONTROL_TIMER_SIZE_Field_0;
      --  Prescale Bits
      TIMERPRE         : TIMER1CONTROL_TIMERPRE_Field :=
                          SAM_SVD.DUALTIMER.TIMER1CONTROL_TIMERPRE_Field_0;
      --  Reserved bit do not use
      RESERVED4        : Boolean := False;
      --  Active High Interrupt Enable Bit
      INTERRUPT_ENABLE : Boolean := True;
      --  Mode Bit
      TIMER_MODE       : TIMER1CONTROL_TIMER_MODE_Field :=
                          SAM_SVD.DUALTIMER.TIMER1CONTROL_TIMER_MODE_Field_0;
      --  Active High Timer Enable
      TIMER_ENABLE     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMER1CONTROL_Register use record
      ONE_SHOT_COUNT   at 0 range 0 .. 0;
      TIMER_SIZE       at 0 range 1 .. 1;
      TIMERPRE         at 0 range 2 .. 3;
      RESERVED4        at 0 range 4 .. 4;
      INTERRUPT_ENABLE at 0 range 5 .. 5;
      TIMER_MODE       at 0 range 6 .. 6;
      TIMER_ENABLE     at 0 range 7 .. 7;
   end record;

   --  Mode Select
   type TIMER2CONTROL_ONE_SHOT_COUNT_Field is
     (
      --  Wrapping Mode
      TIMER2CONTROL_ONE_SHOT_COUNT_Field_0,
      --  One-Shot Mode
      TIMER2CONTROL_ONE_SHOT_COUNT_Field_1)
     with Size => 1;
   for TIMER2CONTROL_ONE_SHOT_COUNT_Field use
     (TIMER2CONTROL_ONE_SHOT_COUNT_Field_0 => 0,
      TIMER2CONTROL_ONE_SHOT_COUNT_Field_1 => 1);

   --  Timer Size
   type TIMER2CONTROL_TIMER_SIZE_Field is
     (
      --  16-bit Counter
      TIMER2CONTROL_TIMER_SIZE_Field_0,
      --  32-bit Counter
      TIMER2CONTROL_TIMER_SIZE_Field_1)
     with Size => 1;
   for TIMER2CONTROL_TIMER_SIZE_Field use
     (TIMER2CONTROL_TIMER_SIZE_Field_0 => 0,
      TIMER2CONTROL_TIMER_SIZE_Field_1 => 1);

   --  Prescale Bits
   type TIMER2CONTROL_TIMERPRE_Field is
     (
      --  0 Stages, Clock Divided by 1
      TIMER2CONTROL_TIMERPRE_Field_0,
      --  4 Stages, Clock Divided by 16
      TIMER2CONTROL_TIMERPRE_Field_1,
      --  8 Stages, Clock Divided by 256
      TIMER2CONTROL_TIMERPRE_Field_2,
      --  Undefined, do not use
      TIMER2CONTROL_TIMERPRE_Field_3)
     with Size => 2;
   for TIMER2CONTROL_TIMERPRE_Field use
     (TIMER2CONTROL_TIMERPRE_Field_0 => 0,
      TIMER2CONTROL_TIMERPRE_Field_1 => 1,
      TIMER2CONTROL_TIMERPRE_Field_2 => 2,
      TIMER2CONTROL_TIMERPRE_Field_3 => 3);

   --  Mode Bit
   type TIMER2CONTROL_TIMER_MODE_Field is
     (
      --  Free-Running Mode
      TIMER2CONTROL_TIMER_MODE_Field_0,
      --  Periodic Mode
      TIMER2CONTROL_TIMER_MODE_Field_1)
     with Size => 1;
   for TIMER2CONTROL_TIMER_MODE_Field use
     (TIMER2CONTROL_TIMER_MODE_Field_0 => 0,
      TIMER2CONTROL_TIMER_MODE_Field_1 => 1);

   --  Timer 2 Control Register
   type TIMER2CONTROL_Register is record
      --  Mode Select
      ONE_SHOT_COUNT   : TIMER2CONTROL_ONE_SHOT_COUNT_Field :=
                          SAM_SVD.DUALTIMER.TIMER2CONTROL_ONE_SHOT_COUNT_Field_0;
      --  Timer Size
      TIMER_SIZE       : TIMER2CONTROL_TIMER_SIZE_Field :=
                          SAM_SVD.DUALTIMER.TIMER2CONTROL_TIMER_SIZE_Field_0;
      --  Prescale Bits
      TIMERPRE         : TIMER2CONTROL_TIMERPRE_Field :=
                          SAM_SVD.DUALTIMER.TIMER2CONTROL_TIMERPRE_Field_0;
      --  Reserved bit do not use
      RESERVED4        : Boolean := False;
      --  Active High Interrupt Enable Bit
      INTERRUPT_ENABLE : Boolean := True;
      --  Mode Bit
      TIMER_MODE       : TIMER2CONTROL_TIMER_MODE_Field :=
                          SAM_SVD.DUALTIMER.TIMER2CONTROL_TIMER_MODE_Field_0;
      --  Active High Timer Enable
      TIMER_ENABLE     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMER2CONTROL_Register use record
      ONE_SHOT_COUNT   at 0 range 0 .. 0;
      TIMER_SIZE       at 0 range 1 .. 1;
      TIMERPRE         at 0 range 2 .. 3;
      RESERVED4        at 0 range 4 .. 4;
      INTERRUPT_ENABLE at 0 range 5 .. 5;
      TIMER_MODE       at 0 range 6 .. 6;
      TIMER_ENABLE     at 0 range 7 .. 7;
   end record;

   --  Integration Test Output Set Register
   type TIMERITOP_Register is record
      --  Write-only. Value Output on TIMINT1 in Integration Test Mode
      INT_TEST_TIMINT1_VALUE : Boolean := False;
      --  Write-only. Value Output on TIMINT2 in Integration Test Mode
      INT_TEST_TIMING2_VALUE : Boolean := False;
      --  unspecified
      Reserved_2_7           : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMERITOP_Register use record
      INT_TEST_TIMINT1_VALUE at 0 range 0 .. 0;
      INT_TEST_TIMING2_VALUE at 0 range 1 .. 1;
      Reserved_2_7           at 0 range 2 .. 7;
   end record;

   subtype TIMERPERIPHID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype TIMERPERIPHID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type TIMERPERIPHID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : TIMERPERIPHID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : TIMERPERIPHID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMERPERIPHID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype TIMERPERIPHID1_PART_NUMBER_Field is HAL.UInt4;
   subtype TIMERPERIPHID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type TIMERPERIPHID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : TIMERPERIPHID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Bits 3:0
      JEP106_ID_3_0 : TIMERPERIPHID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMERPERIPHID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype TIMERPERIPHID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype TIMERPERIPHID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type TIMERPERIPHID2_Register is record
      --  Read-only. JEP106 ID Bits 6:4
      JEP106_ID_6_4 : TIMERPERIPHID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : TIMERPERIPHID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMERPERIPHID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype TIMERPERIPHID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype TIMERPERIPHID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type TIMERPERIPHID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : TIMERPERIPHID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : TIMERPERIPHID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TIMERPERIPHID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM General Purpose Dual Timer
   type DUALTIMER0_Peripheral is record
      --  Timer 1 Load Register
      TIMER1LOAD     : aliased HAL.UInt32;
      --  Timer 1 Current Value Register
      TIMER1VALUE    : aliased HAL.UInt32;
      --  Timer 1 Control Register
      TIMER1CONTROL  : aliased TIMER1CONTROL_Register;
      --  Timer 1 Interrupt Clear Register
      TIMER1INTCLR   : aliased HAL.UInt8;
      --  Timer 1 Raw Interrupt Status Register
      TIMER1RIS      : aliased HAL.UInt8;
      --  Timer 1 Masked Interrupt Status Register
      TIMER1MIS      : aliased HAL.UInt8;
      --  Timer 1 Background Load Register (Reload Value for Period Mode)
      TIMER1BGLOAD   : aliased HAL.UInt32;
      --  Timer 2 Load Register
      TIMER2LOAD     : aliased HAL.UInt32;
      --  Timer 2 Current Value Register
      TIMER2VALUE    : aliased HAL.UInt32;
      --  Timer 2 Control Register
      TIMER2CONTROL  : aliased TIMER2CONTROL_Register;
      --  Timer 2 Interrupt Clear Register
      TIMER2INTCLR   : aliased HAL.UInt8;
      --  Timer 2 Raw Interrupt Status Register
      TIMER2RIS      : aliased HAL.UInt8;
      --  Timer 2 Masked Interrupt Status Register
      TIMER2MIS      : aliased HAL.UInt8;
      --  Timer 2 Background Load Register (Reload Value for Period Mode)
      TIMER2BGLOAD   : aliased HAL.UInt32;
      --  Integration Test Control Register
      TIMERITCR      : aliased HAL.UInt8;
      --  Integration Test Output Set Register
      TIMERITOP      : aliased TIMERITOP_Register;
      --  Peripheral ID Register 4
      TIMERPERIPHID4 : aliased TIMERPERIPHID4_Register;
      --  Peripheral ID Register 5
      TIMERPERIPHID5 : aliased HAL.UInt8;
      --  Peripheral ID Register 6
      TIMERPERIPHID6 : aliased HAL.UInt8;
      --  Peripheral ID Register 7
      TIMERPERIPHID7 : aliased HAL.UInt8;
      --  Peripheral ID Register 0
      TIMERPERIPHID0 : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      TIMERPERIPHID1 : aliased TIMERPERIPHID1_Register;
      --  Peripheral ID Register 2
      TIMERPERIPHID2 : aliased TIMERPERIPHID2_Register;
      --  Peripheral ID Register 3
      TIMERPERIPHID3 : aliased TIMERPERIPHID3_Register;
      --  Component ID Register 0
      TIMERPCELLID0  : aliased HAL.UInt8;
      --  Component ID Register 1
      TIMERPCELLID1  : aliased HAL.UInt8;
      --  Component ID Register 2
      TIMERPCELLID2  : aliased HAL.UInt8;
      --  Component ID Register 3
      TIMERPCELLID3  : aliased HAL.UInt8;
   end record
     with Volatile;

   for DUALTIMER0_Peripheral use record
      TIMER1LOAD     at 16#0# range 0 .. 31;
      TIMER1VALUE    at 16#4# range 0 .. 31;
      TIMER1CONTROL  at 16#8# range 0 .. 7;
      TIMER1INTCLR   at 16#C# range 0 .. 7;
      TIMER1RIS      at 16#10# range 0 .. 7;
      TIMER1MIS      at 16#14# range 0 .. 7;
      TIMER1BGLOAD   at 16#18# range 0 .. 31;
      TIMER2LOAD     at 16#20# range 0 .. 31;
      TIMER2VALUE    at 16#24# range 0 .. 31;
      TIMER2CONTROL  at 16#28# range 0 .. 7;
      TIMER2INTCLR   at 16#2C# range 0 .. 7;
      TIMER2RIS      at 16#30# range 0 .. 7;
      TIMER2MIS      at 16#34# range 0 .. 7;
      TIMER2BGLOAD   at 16#38# range 0 .. 31;
      TIMERITCR      at 16#F00# range 0 .. 7;
      TIMERITOP      at 16#F04# range 0 .. 7;
      TIMERPERIPHID4 at 16#FD0# range 0 .. 7;
      TIMERPERIPHID5 at 16#FD4# range 0 .. 7;
      TIMERPERIPHID6 at 16#FD8# range 0 .. 7;
      TIMERPERIPHID7 at 16#FDC# range 0 .. 7;
      TIMERPERIPHID0 at 16#FE0# range 0 .. 7;
      TIMERPERIPHID1 at 16#FE4# range 0 .. 7;
      TIMERPERIPHID2 at 16#FE8# range 0 .. 7;
      TIMERPERIPHID3 at 16#FEC# range 0 .. 7;
      TIMERPCELLID0  at 16#FF0# range 0 .. 7;
      TIMERPCELLID1  at 16#FF4# range 0 .. 7;
      TIMERPCELLID2  at 16#FF8# range 0 .. 7;
      TIMERPCELLID3  at 16#FFC# range 0 .. 7;
   end record;

   --  ARM General Purpose Dual Timer
   DUALTIMER0_Periph : aliased DUALTIMER0_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end SAM_SVD.DUALTIMER;
