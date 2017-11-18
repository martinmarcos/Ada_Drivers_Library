--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PWT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  PWT Counter Overflow
   type CS_PWTOV_Field is
     (
      --  PWT counter no overflow.
      Pwtov_0,
      --  PWT counter runs from 0xFFFF to 0x0000.
      Pwtov_1)
     with Size => 1;
   for CS_PWTOV_Field use
     (Pwtov_0 => 0,
      Pwtov_1 => 1);

   --  PWT Pulse Width Valid
   type CS_PWTRDY_Field is
     (
      --  PWT pulse width register(s) is not up-to-date.
      Pwtrdy_0,
      --  PWT pulse width register(s) has been updated.
      Pwtrdy_1)
     with Size => 1;
   for CS_PWTRDY_Field use
     (Pwtrdy_0 => 0,
      Pwtrdy_1 => 1);

   --  First counter load enable after enable
   type CS_FCTLE_Field is
     (
      --  Do not load the first counter values to corresponding registers
      Fctle_0,
      --  Load the first coutner value to corresponding registers depended by
      --  the PWTIN level
      Fctle_1)
     with Size => 1;
   for CS_FCTLE_Field use
     (Fctle_0 => 0,
      Fctle_1 => 1);

   --  PWT Soft Reset
   type CS_PWTSR_Field is
     (
      --  No action taken.
      Pwtsr_0,
      --  Writing 1 to this field will perform soft reset to PWT.
      Pwtsr_1)
     with Size => 1;
   for CS_PWTSR_Field use
     (Pwtsr_0 => 0,
      Pwtsr_1 => 1);

   --  PWT Counter Overflow Interrupt Enable
   type CS_POVIE_Field is
     (
      --  Disable PWT to generate interrupt when PWTOV is set.
      Povie_0,
      --  Enable PWT to generate interrupt when PWTOV is set.
      Povie_1)
     with Size => 1;
   for CS_POVIE_Field use
     (Povie_0 => 0,
      Povie_1 => 1);

   --  PWT Pulse Width Data Ready Interrupt Enable
   type CS_PRDYIE_Field is
     (
      --  Disable PWT to generate interrupt when PWTRDY is set.
      Prdyie_0,
      --  Enable PWT to generate interrupt when PWTRDY is set.
      Prdyie_1)
     with Size => 1;
   for CS_PRDYIE_Field use
     (Prdyie_0 => 0,
      Prdyie_1 => 1);

   --  PWT Module Interrupt Enable
   type CS_PWTIE_Field is
     (
      --  Disables the PWT to generate interrupt.
      Pwtie_0,
      --  Enables the PWT to generate interrupt.
      Pwtie_1)
     with Size => 1;
   for CS_PWTIE_Field use
     (Pwtie_0 => 0,
      Pwtie_1 => 1);

   --  PWT Module Enable
   type CS_PWTEN_Field is
     (
      --  The PWT is disabled.
      Pwten_0,
      --  The PWT is enabled.
      Pwten_1)
     with Size => 1;
   for CS_PWTEN_Field use
     (Pwten_0 => 0,
      Pwten_1 => 1);

   --  Pulse Width Timer Control and Status Register
   type PWT_CS_Register is record
      --  PWT Counter Overflow
      PWTOV  : CS_PWTOV_Field := NRF_SVD.PWT.Pwtov_0;
      --  PWT Pulse Width Valid
      PWTRDY : CS_PWTRDY_Field := NRF_SVD.PWT.Pwtrdy_0;
      --  First counter load enable after enable
      FCTLE  : CS_FCTLE_Field := NRF_SVD.PWT.Fctle_0;
      --  Write-only. PWT Soft Reset
      PWTSR  : CS_PWTSR_Field := NRF_SVD.PWT.Pwtsr_0;
      --  PWT Counter Overflow Interrupt Enable
      POVIE  : CS_POVIE_Field := NRF_SVD.PWT.Povie_0;
      --  PWT Pulse Width Data Ready Interrupt Enable
      PRDYIE : CS_PRDYIE_Field := NRF_SVD.PWT.Prdyie_0;
      --  PWT Module Interrupt Enable
      PWTIE  : CS_PWTIE_Field := NRF_SVD.PWT.Pwtie_0;
      --  PWT Module Enable
      PWTEN  : CS_PWTEN_Field := NRF_SVD.PWT.Pwten_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PWT_CS_Register use record
      PWTOV  at 0 range 0 .. 0;
      PWTRDY at 0 range 1 .. 1;
      FCTLE  at 0 range 2 .. 2;
      PWTSR  at 0 range 3 .. 3;
      POVIE  at 0 range 4 .. 4;
      PRDYIE at 0 range 5 .. 5;
      PWTIE  at 0 range 6 .. 6;
      PWTEN  at 0 range 7 .. 7;
   end record;

   --  PWT Clock Prescaler (CLKPRE) Setting
   type CR_PRE_Field is
     (
      --  Clock divided by 1.
      Pre_0,
      --  Clock divided by 2.
      Pre_1,
      --  Clock divided by 4.
      Pre_2,
      --  Clock divided by 8.
      Pre_3,
      --  Clock divided by 16.
      Pre_4,
      --  Clock divided by 32.
      Pre_5,
      --  Clock divided by 64.
      Pre_6,
      --  Clock divided by 128.
      Pre_7)
     with Size => 3;
   for CR_PRE_Field use
     (Pre_0 => 0,
      Pre_1 => 1,
      Pre_2 => 2,
      Pre_3 => 3,
      Pre_4 => 4,
      Pre_5 => 5,
      Pre_6 => 6,
      Pre_7 => 7);

   --  PWTIN states Toggled from last state
   type CR_TGL_Field is
     (
      --  The selected PWTIN hasn't changed its original states from last time.
      Tgl_0,
      --  The selected PWTIN has toggled its states.
      Tgl_1)
     with Size => 1;
   for CR_TGL_Field use
     (Tgl_0 => 0,
      Tgl_1 => 1);

   --  PWT Pulse Inputs Selection
   type CR_PINSEL_Field is
     (
      --  PWTIN[0] is enabled.
      Pinsel_0,
      --  PWTIN[1] is enabled.
      Pinsel_1,
      --  PWTIN[2] enabled.
      Pinsel_2,
      --  PWTIN[3] enabled.
      Pinsel_3)
     with Size => 2;
   for CR_PINSEL_Field use
     (Pinsel_0 => 0,
      Pinsel_1 => 1,
      Pinsel_2 => 2,
      Pinsel_3 => 3);

   --  PWT Clock Source Selection
   type CR_PCLKS_Field is
     (
      --  BUS_CLK is selected as the clock source of PWT counter.
      Pclks_0,
      --  Alternative clock is selected as the clock source of PWT counter.
      Pclks_1)
     with Size => 1;
   for CR_PCLKS_Field use
     (Pclks_0 => 0,
      Pclks_1 => 1);

   --  Pulse Width Timer Control Register
   type PWT_CR_Register is record
      --  PWT Clock Prescaler (CLKPRE) Setting
      PRE    : CR_PRE_Field := NRF_SVD.PWT.Pre_0;
      --  Read-only. PWTIN Level when Overflows
      LVL    : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. PWTIN states Toggled from last state
      TGL    : CR_TGL_Field := NRF_SVD.PWT.Tgl_0;
      --  PWT Pulse Inputs Selection
      PINSEL : CR_PINSEL_Field := NRF_SVD.PWT.Pinsel_0;
      --  PWT Clock Source Selection
      PCLKS  : CR_PCLKS_Field := NRF_SVD.PWT.Pclks_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PWT_CR_Register use record
      PRE    at 0 range 0 .. 2;
      LVL    at 0 range 3 .. 3;
      TGL    at 0 range 4 .. 4;
      PINSEL at 0 range 5 .. 6;
      PCLKS  at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Width Timer
   type PWT_Peripheral is record
      --  Pulse Width Timer Control and Status Register
      CS   : aliased PWT_CS_Register;
      --  Pulse Width Timer Control Register
      CR   : aliased PWT_CR_Register;
      --  Pulse Width Timer Positive Pulse Width Register: High
      PPH  : aliased HAL.UInt8;
      --  Pulse Width Timer Positive Pulse Width Register: Loq
      PPL  : aliased HAL.UInt8;
      --  Pulse Width Timer Negative Pulse Width Register: High
      NPH  : aliased HAL.UInt8;
      --  Pulse Width Timer Negative Pulse Width Register: Low
      NPL  : aliased HAL.UInt8;
      --  Pulse Width Timer Counter Register: High
      CNTH : aliased HAL.UInt8;
      --  Pulse Width Timer Counter Register: Low
      CNTL : aliased HAL.UInt8;
   end record
     with Volatile;

   for PWT_Peripheral use record
      CS   at 16#0# range 0 .. 7;
      CR   at 16#1# range 0 .. 7;
      PPH  at 16#2# range 0 .. 7;
      PPL  at 16#3# range 0 .. 7;
      NPH  at 16#4# range 0 .. 7;
      NPL  at 16#5# range 0 .. 7;
      CNTH at 16#6# range 0 .. 7;
      CNTL at 16#7# range 0 .. 7;
   end record;

   --  Pulse Width Timer
   PWT_Periph : aliased PWT_Peripheral
     with Import, Address => System'To_Address (16#40056000#);

end NRF_SVD.PWT;
