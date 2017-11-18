--

--  This spec has been automatically generated from Z32F3841.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_SIZE_Field is HAL.UInt2;
   subtype CR_PERISEL_Field is HAL.UInt4;
   subtype CR_TRANSCNT_Field is HAL.UInt12;

   --  DMA Controller Configuration Register
   type CR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Select Direction of Transfer
      DIR            : Boolean := False;
      --  Bus transfer size
      SIZE           : CR_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Peripheral selection
      PERISEL        : CR_PERISEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Numer of DMA transfer remained
      TRANSCNT       : CR_TRANSCNT_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DIR            at 0 range 1 .. 1;
      SIZE           at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PERISEL        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TRANSCNT       at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  DMA Controller Status register
   type SR_Register is record
      --  DMA enable
      DMAEN         : Boolean := False;
      --  unspecified
      Reserved_1_6  : HAL.UInt6 := 16#0#;
      --  Read-only. End of transfer
      EOT           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DMAEN         at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      EOT           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PAR_PAR_Field is HAL.UInt16;

   --  DMA Controller Peripheral Address register
   type PAR_Register is record
      --  Periphreal address
      PAR            : PAR_PAR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAR_Register use record
      PAR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MAR_MAR_Field is HAL.UInt16;

   --  DMA Controller Memory Address register
   type MAR_Register is record
      --  Memory address
      MAR            : MAR_MAR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#2000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAR_Register use record
      MAR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DIRECT MEMORY ACCESS CONTROLLER
   type DMAC_Peripheral is record
      --  DMA Controller Configuration Register
      CR  : aliased CR_Register;
      --  DMA Controller Status register
      SR  : aliased SR_Register;
      --  DMA Controller Peripheral Address register
      PAR : aliased PAR_Register;
      --  DMA Controller Memory Address register
      MAR : aliased MAR_Register;
   end record
     with Volatile;

   for DMAC_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      SR  at 16#4# range 0 .. 31;
      PAR at 16#8# range 0 .. 31;
      MAR at 16#C# range 0 .. 31;
   end record;

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC0_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000400#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC1_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000410#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC2_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000420#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC3_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000430#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC4_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000440#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC5_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000450#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC6_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000460#);

   --  DIRECT MEMORY ACCESS CONTROLLER
   DC7_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#40000470#);

end NRF_SVD.DMAC;
