--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Control Unit
package NRF_SVD.SCU_POWER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  VCLIP Indication
   type VDESR_VCLIP_Field is
     (
      --  VCLIP is not active
      VALUE1,
      --  VCLIP is active
      VALUE2)
     with Size => 1;
   for VDESR_VCLIP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  VDDPPW Indication
   type VDESR_VDDPPW_Field is
     (
      --  VDDP is above pre-warning threshold
      VALUE1,
      --  VDDP is below pre-warningthreshold
      VALUE2)
     with Size => 1;
   for VDESR_VDDPPW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Voltage Detector Status Register
   type VDESR_Register is record
      --  Read-only. VCLIP Indication
      VCLIP         : VDESR_VCLIP_Field;
      --  Read-only. VDDPPW Indication
      VDDPPW        : VDESR_VDDPPW_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VDESR_Register use record
      VCLIP         at 0 range 0 .. 0;
      VDDPPW        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type SCU_POWER_Peripheral is record
      --  Voltage Detector Status Register
      VDESR : aliased VDESR_Register;
   end record
     with Volatile;

   for SCU_POWER_Peripheral use record
      VDESR at 0 range 0 .. 31;
   end record;

   --  System Control Unit
   SCU_POWER_Periph : aliased SCU_POWER_Peripheral
     with Import, Address => SCU_POWER_Base;

end NRF_SVD.SCU_POWER;
