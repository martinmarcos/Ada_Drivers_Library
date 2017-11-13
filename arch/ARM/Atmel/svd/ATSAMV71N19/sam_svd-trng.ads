--  This spec has been automatically generated from ATSAMV71N19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  True Random Number Generator
package SAM_SVD.TRNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Security Key
   type CR_KEY_Field is
     (
      --  Reset value for the field
      Cr_Key_Field_Reset,
      --  Writing any other value in this field aborts the write operation.
      Passwd)
     with Size => 24;
   for CR_KEY_Field use
     (Cr_Key_Field_Reset => 0,
      Passwd => 5393991);

   --  Control Register
   type TRNG_CR_Register is record
      --  Write-only. Enables the TRNG to Provide Random Values
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write-only. Security Key
      KEY          : CR_KEY_Field := Cr_Key_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      KEY          at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type TRNG_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IER_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type TRNG_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IDR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type TRNG_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IMR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type TRNG_ISR_Register is record
      --  Read-only. Data Ready
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_ISR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TRNG_VERSION_VERSION_Field is HAL.UInt12;
   subtype TRNG_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type TRNG_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : TRNG_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : TRNG_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True Random Number Generator
   type TRNG_Peripheral is record
      --  Control Register
      CR      : aliased TRNG_CR_Register;
      --  Interrupt Enable Register
      IER     : aliased TRNG_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased TRNG_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased TRNG_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased TRNG_ISR_Register;
      --  Output Data Register
      ODATA   : aliased HAL.UInt32;
      --  Version Register
      VERSION : aliased TRNG_VERSION_Register;
   end record
     with Volatile;

   for TRNG_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      ISR     at 16#1C# range 0 .. 31;
      ODATA   at 16#50# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  True Random Number Generator
   TRNG_Periph : aliased TRNG_Peripheral
     with Import, Address => TRNG_Base;

end SAM_SVD.TRNG;
