--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CXTMC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Formatter and Flush Control Register
   type FFCR_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6;
      --  Read-only. Manual Flush Completion Status
      FlushMan_R    : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FFCR_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      FlushMan_R    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CLAIMSET_CLAIMSET_R_Field is HAL.UInt4;

   --  Claim Tag Set Register
   type CLAIMSET_Register is record
      --  Read-only. Claim Tag Implemented
      CLAIMSET_R    : CLAIMSET_CLAIMSET_R_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLAIMSET_Register use record
      CLAIMSET_R    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CLAIMCLR_CLAIMCLR_R_Field is HAL.UInt4;

   --  Claim Tag Clear Register
   type CLAIMCLR_Register is record
      --  Read-only. Claim Tag Value
      CLAIMCLR_R    : CLAIMCLR_CLAIMCLR_R_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLAIMCLR_Register use record
      CLAIMCLR_R    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CoreSight TMC
   type CXTMC0_Peripheral is record
      --  Formatter and Flush Control Register
      FFCR     : aliased FFCR_Register;
      --  Claim Tag Set Register
      CLAIMSET : aliased CLAIMSET_Register;
      --  Claim Tag Clear Register
      CLAIMCLR : aliased CLAIMCLR_Register;
   end record
     with Volatile;

   for CXTMC0_Peripheral use record
      FFCR     at 16#304# range 0 .. 31;
      CLAIMSET at 16#FA0# range 0 .. 31;
      CLAIMCLR at 16#FA4# range 0 .. 31;
   end record;

   --  CoreSight TMC
   CXTMC0_Periph : aliased CXTMC0_Peripheral
     with Import, Address => System'To_Address (16#E0044000#);

end NRF_SVD.CXTMC0;
