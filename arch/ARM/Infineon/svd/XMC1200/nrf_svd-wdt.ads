--  This spec has been automatically generated from XMC1200.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Watch Dog Timer
package NRF_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  WDT Module ID Register
   type ID_Register is record
      --  Read-only. Module Revision Number
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number Value
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   subtype CTR_SPW_Field is HAL.UInt8;

   --  WDT Control Register
   type CTR_Register is record
      --  Enable
      ENB            : Boolean := False;
      --  Pre-warning
      PRE            : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Debug Suspend
      DSP            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Service Indication Pulse Width
      SPW            : CTR_SPW_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTR_Register use record
      ENB            at 0 range 0 .. 0;
      PRE            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DSP            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SPW            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  WDT Status Register
   type WDTSTS_Register is record
      --  Read-only. Pre-warning Alarm
      ALMS          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTSTS_Register use record
      ALMS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  WDT Clear Register
   type WDTCLR_Register is record
      --  Write-only. Pre-warning Alarm
      ALMC          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCLR_Register use record
      ALMC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watch Dog Timer
   type WDT_Peripheral is record
      --  WDT Module ID Register
      ID     : aliased ID_Register;
      --  WDT Control Register
      CTR    : aliased CTR_Register;
      --  WDT Service Register
      SRV    : aliased HAL.UInt32;
      --  WDT Timer Register
      TIM    : aliased HAL.UInt32;
      --  WDT Window Lower Bound Register
      WLB    : aliased HAL.UInt32;
      --  WDT Window Upper Bound Register
      WUB    : aliased HAL.UInt32;
      --  WDT Status Register
      WDTSTS : aliased WDTSTS_Register;
      --  WDT Clear Register
      WDTCLR : aliased WDTCLR_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      ID     at 16#0# range 0 .. 31;
      CTR    at 16#4# range 0 .. 31;
      SRV    at 16#8# range 0 .. 31;
      TIM    at 16#C# range 0 .. 31;
      WLB    at 16#10# range 0 .. 31;
      WUB    at 16#14# range 0 .. 31;
      WDTSTS at 16#18# range 0 .. 31;
      WDTCLR at 16#1C# range 0 .. 31;
   end record;

   --  Watch Dog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => WDT_Base;

end NRF_SVD.WDT;
