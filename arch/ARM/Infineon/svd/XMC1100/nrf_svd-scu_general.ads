--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Control Unit
package NRF_SVD.SCU_GENERAL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DBGROMID_MANUFID_Field is HAL.UInt11;
   subtype DBGROMID_PARTNO_Field is HAL.UInt16;
   subtype DBGROMID_VERSION_Field is HAL.UInt4;

   --  Debug System ROM ID Register
   type DBGROMID_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit;
      --  Read-only. Manufactory Identity
      MANUFID      : DBGROMID_MANUFID_Field;
      --  Read-only. Part Number
      PARTNO       : DBGROMID_PARTNO_Field;
      --  Read-only. Product version
      VERSION      : DBGROMID_VERSION_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGROMID_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      MANUFID      at 0 range 1 .. 11;
      PARTNO       at 0 range 12 .. 27;
      VERSION      at 0 range 28 .. 31;
   end record;

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  SCU Module ID Register
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

   --  Bit Protection Scheme Control Bits
   type PASSWD_MODE_Field is
     (
      --  Scheme disabled - direct access to the protected bits is allowed.
      VALUE1,
      --  Scheme enabled - the bit field PASS has to be written with the
      --  passwords to open and close the access to the protected bits.
      --  (Default)
      VALUE2)
     with Size => 2;
   for PASSWD_MODE_Field use
     (VALUE1 => 0,
      VALUE2 => 3);

   --  Bit Protection Signal Status Bit
   type PASSWD_PROTS_Field is
     (
      --  Software is able to write to all protected bits.
      VALUE1,
      --  Software is unable to write to any of the protected bits.
      VALUE2)
     with Size => 1;
   for PASSWD_PROTS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Password Bits
   type PASSWD_PASS_Field is
     (
      --  Reset value for the field
      Passwd_Pass_Field_Reset,
      --  Opens access to writing of all protected bits.
      VALUE2,
      --  Closes access to writing of all protected bits.
      VALUE3,
      --  Enables writing of the bit field MODE.
      VALUE1)
     with Size => 5;
   for PASSWD_PASS_Field use
     (Passwd_Pass_Field_Reset => 0,
      VALUE2 => 19,
      VALUE3 => 21,
      VALUE1 => 24);

   --  Password Register
   type PASSWD_Register is record
      --  Bit Protection Scheme Control Bits
      MODE          : PASSWD_MODE_Field := NRF_SVD.SCU_GENERAL.VALUE2;
      --  Read-only. Bit Protection Signal Status Bit
      PROTS         : PASSWD_PROTS_Field := NRF_SVD.SCU_GENERAL.VALUE2;
      --  Write-only. Password Bits
      PASS          : PASSWD_PASS_Field := Passwd_Pass_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PASSWD_Register use record
      MODE          at 0 range 0 .. 1;
      PROTS         at 0 range 2 .. 2;
      PASS          at 0 range 3 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CCU Control Register
   type CCUCON_Register is record
      --  Global Start Control CCU40
      GSC40         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCUCON_Register use record
      GSC40         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  MIRRSTS_RTC_ATIM array
   type MIRRSTS_RTC_ATIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MIRRSTS_RTC_ATIM
   type MIRRSTS_RTC_ATIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_ATIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_ATIM as an array
            Arr : MIRRSTS_RTC_ATIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MIRRSTS_RTC_ATIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  MIRRSTS_RTC_TIM array
   type MIRRSTS_RTC_TIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MIRRSTS_RTC_TIM
   type MIRRSTS_RTC_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_TIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_TIM as an array
            Arr : MIRRSTS_RTC_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MIRRSTS_RTC_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Mirror Update Status Register
   type MIRRSTS_Register is record
      --  Read-only. RTC CTR Mirror Register Update Status
      RTC_CTR       : Boolean;
      --  Read-only. RTC ATIM0 Mirror Register Update Status
      RTC_ATIM      : MIRRSTS_RTC_ATIM_Field;
      --  Read-only. RTC TIM0 Mirror Register Update Status
      RTC_TIM       : MIRRSTS_RTC_TIM_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIRRSTS_Register use record
      RTC_CTR       at 0 range 0 .. 0;
      RTC_ATIM      at 0 range 1 .. 2;
      RTC_TIM       at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Parity Test Enable Control for 16kbytes SRAM
   type PMTSR_MTENS_Field is
     (
      --  standard operation
      VALUE1,
      --  generate an inverted parity bit during a write operation
      VALUE2)
     with Size => 1;
   for PMTSR_MTENS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Parity Memory Test Select Register
   type PMTSR_Register is record
      --  Parity Test Enable Control for 16kbytes SRAM
      MTENS         : PMTSR_MTENS_Field := NRF_SVD.SCU_GENERAL.VALUE1;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMTSR_Register use record
      MTENS         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type SCU_GENERAL_Peripheral is record
      --  Debug System ROM ID Register
      DBGROMID : aliased DBGROMID_Register;
      --  Chip ID Register
      IDCHIP   : aliased HAL.UInt32;
      --  SCU Module ID Register
      ID       : aliased ID_Register;
      --  SSW Register 0
      SSW0     : aliased HAL.UInt32;
      --  Password Register
      PASSWD   : aliased PASSWD_Register;
      --  CCU Control Register
      CCUCON   : aliased CCUCON_Register;
      --  Mirror Update Status Register
      MIRRSTS  : aliased MIRRSTS_Register;
      --  Parity Memory Test Select Register
      PMTSR    : aliased PMTSR_Register;
   end record
     with Volatile;

   for SCU_GENERAL_Peripheral use record
      DBGROMID at 16#0# range 0 .. 31;
      IDCHIP   at 16#4# range 0 .. 31;
      ID       at 16#8# range 0 .. 31;
      SSW0     at 16#14# range 0 .. 31;
      PASSWD   at 16#24# range 0 .. 31;
      CCUCON   at 16#30# range 0 .. 31;
      MIRRSTS  at 16#48# range 0 .. 31;
      PMTSR    at 16#54# range 0 .. 31;
   end record;

   --  System Control Unit
   SCU_GENERAL_Periph : aliased SCU_GENERAL_Peripheral
     with Import, Address => SCU_GENERAL_Base;

end NRF_SVD.SCU_GENERAL;
