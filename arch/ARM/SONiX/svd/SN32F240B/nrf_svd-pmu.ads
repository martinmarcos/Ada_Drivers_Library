--

--  This spec has been automatically generated from SN32F240B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Low Power mode selection
   type CTRL_MODE_Field is
     (
      --  Disable
      Normal MODE,
      --  WFI instruction will make MCU enter Deep-sleep mode
      Deep-SLEEP MODE,
      --  WFI instruction will make MCU enter Sleep mode
      Sleep MODE)
     with Size => 3;
   for CTRL_MODE_Field use
     (Normal MODE => 0,
      Deep-SLEEP MODE => 2,
      Sleep MODE => 4);

   --  Offset:0x40 PMU Control Register
   type CTRL_Register is record
      --  Low Power mode selection
      MODE          : CTRL_MODE_Field := NRF_SVD.PMU.Normal MODE;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      MODE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management Unit
   type SN_PMU_Peripheral is record
      --  Offset:0x40 PMU Control Register
      CTRL : aliased CTRL_Register;
   end record
     with Volatile;

   for SN_PMU_Peripheral use record
      CTRL at 16#40# range 0 .. 31;
   end record;

   --  Power Management Unit
   SN_PMU_Periph : aliased SN_PMU_Peripheral
     with Import, Address => System'To_Address (16#40032000#);

end NRF_SVD.PMU;
