--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RNG0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RNG Enable
   type CTL_EN_Field is
     (
      --  Disable the RNG
      Disable,
      --  Enable the RNG
      Enable)
     with Size => 1;
   for CTL_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Generate a Single Number
   type CTL_SINGLE_Field is
     (
      --  Buffer Word
      Word,
      --  Single Byte
      Single)
     with Size => 1;
   for CTL_SINGLE_Field use
     (Word => 0,
      Single => 1);

   --  RNG Control Register
   type CTL_Register is record
      --  RNG Enable
      EN            : CTL_EN_Field := NRF_SVD.RNG0.Disable;
      --  unspecified
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  Generate a Single Number
      SINGLE        : CTL_SINGLE_Field := NRF_SVD.RNG0.Word;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      SINGLE        at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype LEN_RELOAD_Field is HAL.UInt12;
   subtype LEN_PRESCALE_Field is HAL.UInt4;

   --  RNG Sample Length Register
   type LEN_Register is record
      --  Reload Value for the Sample Counter
      RELOAD   : LEN_RELOAD_Field := 16#400#;
      --  Prescaler for the Sample Counter
      PRESCALE : LEN_PRESCALE_Field := 16#3#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LEN_Register use record
      RELOAD   at 0 range 0 .. 11;
      PRESCALE at 0 range 12 .. 15;
   end record;

   --  RNG Status Register
   type STAT_Register is record
      --  Random Number Ready
      RNRDY         : Boolean := False;
      --  Sampled Data Stuck High or Low
      STUCK         : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      RNRDY         at 0 range 0 .. 0;
      STUCK         at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype DATA_VALUE_Field is HAL.UInt8;
   subtype DATA_BUFF_Field is HAL.UInt24;

   --  RNG Data Register
   type DATA_Register is record
      --  Read-only. Value of the CRC Accumulator
      VALUE : DATA_VALUE_Field;
      --  Read-only. Buffer for RNG Data
      BUFF  : DATA_BUFF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register use record
      VALUE at 0 range 0 .. 7;
      BUFF  at 0 range 8 .. 31;
   end record;

   subtype OSCCNT_VALUE_Field is HAL.UInt28;

   --  Oscillator Count
   type OSCCNT_Register is record
      --  Read-only. Oscillator Count
      VALUE          : OSCCNT_VALUE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCCNT_Register use record
      VALUE          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Oscillator Difference

   --  Oscillator Difference
   type OSCDIFF_Registers is array (0 .. 3) of HAL.UInt8
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Random Number Generator
   type RNG0_Peripheral is record
      --  RNG Control Register
      CTL     : aliased CTL_Register;
      --  RNG Sample Length Register
      LEN     : aliased LEN_Register;
      --  RNG Status Register
      STAT    : aliased STAT_Register;
      --  RNG Data Register
      DATA    : aliased DATA_Register;
      --  Oscillator Count
      OSCCNT  : aliased OSCCNT_Register;
      --  Oscillator Difference
      OSCDIFF : aliased OSCDIFF_Registers;
   end record
     with Volatile;

   for RNG0_Peripheral use record
      CTL     at 16#0# range 0 .. 15;
      LEN     at 16#4# range 0 .. 15;
      STAT    at 16#8# range 0 .. 15;
      DATA    at 16#C# range 0 .. 31;
      OSCCNT  at 16#10# range 0 .. 31;
      OSCDIFF at 16#14# range 0 .. 31;
   end record;

   --  Random Number Generator
   RNG0_Periph : aliased RNG0_Peripheral
     with Import, Address => System'To_Address (16#40040400#);

end NRF_SVD.RNG0;
