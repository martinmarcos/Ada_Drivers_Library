--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.BUSM0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ARBIT0_FLSH_DCODE_Field is HAL.UInt2;
   subtype ARBIT0_FLSH_SBUS_Field is HAL.UInt2;
   subtype ARBIT0_FLSH_DMA0_Field is HAL.UInt2;
   subtype ARBIT0_SRAM0_DCODE_Field is HAL.UInt2;
   subtype ARBIT0_SRAM0_SBUS_Field is HAL.UInt2;
   subtype ARBIT0_SRAM0_DMA0_Field is HAL.UInt2;

   --  Arbitration Priority Configuration for FLASH and SRAM0
   type ARBIT0_Register is record
      --  Flash priority for DCODE
      FLSH_DCODE     : ARBIT0_FLSH_DCODE_Field := 16#0#;
      --  Flash priority for SBUS
      FLSH_SBUS      : ARBIT0_FLSH_SBUS_Field := 16#1#;
      --  Flash priority for DMA0
      FLSH_DMA0      : ARBIT0_FLSH_DMA0_Field := 16#2#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  SRAM0 priority for Dcode
      SRAM0_DCODE    : ARBIT0_SRAM0_DCODE_Field := 16#0#;
      --  SRAM0 priority for SBUS
      SRAM0_SBUS     : ARBIT0_SRAM0_SBUS_Field := 16#1#;
      --  SRAM0 priority for DMA0
      SRAM0_DMA0     : ARBIT0_SRAM0_DMA0_Field := 16#2#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBIT0_Register use record
      FLSH_DCODE     at 0 range 0 .. 1;
      FLSH_SBUS      at 0 range 2 .. 3;
      FLSH_DMA0      at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      SRAM0_DCODE    at 0 range 16 .. 17;
      SRAM0_SBUS     at 0 range 18 .. 19;
      SRAM0_DMA0     at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ARBIT1_SRAM1_DCODE_Field is HAL.UInt2;
   subtype ARBIT1_SRAM1_SBUS_Field is HAL.UInt2;
   subtype ARBIT1_SRAM1_DMA0_Field is HAL.UInt2;

   --  Arbitration Priority Configuration for SRAM1
   type ARBIT1_Register is record
      --  SRAM1 priority for Dcode
      SRAM1_DCODE   : ARBIT1_SRAM1_DCODE_Field := 16#0#;
      --  SRAM1 priority for SBUS
      SRAM1_SBUS    : ARBIT1_SRAM1_SBUS_Field := 16#1#;
      --  SRAM1 priority for DMA0
      SRAM1_DMA0    : ARBIT1_SRAM1_DMA0_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#9000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBIT1_Register use record
      SRAM1_DCODE   at 0 range 0 .. 1;
      SRAM1_SBUS    at 0 range 2 .. 3;
      SRAM1_DMA0    at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ARBIT2_APB32_DCODE_Field is HAL.UInt2;
   subtype ARBIT2_APB32_SBUS_Field is HAL.UInt2;
   subtype ARBIT2_APB32_DMA0_Field is HAL.UInt2;
   subtype ARBIT2_APB16_DCODE_Field is HAL.UInt2;
   subtype ARBIT2_APB16_SBUS_Field is HAL.UInt2;
   subtype ARBIT2_APB16_DMA0_Field is HAL.UInt2;

   --  Arbitration Priority Configuration for APB32 and APB16
   type ARBIT2_Register is record
      --  APB32 priority for DCODE
      APB32_DCODE    : ARBIT2_APB32_DCODE_Field := 16#0#;
      --  APB32 priority for SBUS
      APB32_SBUS     : ARBIT2_APB32_SBUS_Field := 16#1#;
      --  APB32 priority for DMA0
      APB32_DMA0     : ARBIT2_APB32_DMA0_Field := 16#2#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  APB16 priority for DCODE
      APB16_DCODE    : ARBIT2_APB16_DCODE_Field := 16#0#;
      --  APB16 priority for SBUS
      APB16_SBUS     : ARBIT2_APB16_SBUS_Field := 16#1#;
      --  APB16 priority for DMA0
      APB16_DMA0     : ARBIT2_APB16_DMA0_Field := 16#2#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBIT2_Register use record
      APB32_DCODE    at 0 range 0 .. 1;
      APB32_SBUS     at 0 range 2 .. 3;
      APB32_DMA0     at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      APB16_DCODE    at 0 range 16 .. 17;
      APB16_SBUS     at 0 range 18 .. 19;
      APB16_DMA0     at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Priority Configuration for APB16 priority for core and for
   --  DMA1
   type ARBIT3_Register is record
      --  APB16 priority for CORE
      APB16_CORE      : Boolean := False;
      --  APB16 priority for DMA1
      APB16_DMA1      : Boolean := True;
      --  unspecified
      Reserved_2_15   : HAL.UInt14 := 16#0#;
      --  APB16 for dma priority for CORE
      APB16_4DMA_CORE : Boolean := True;
      --  APB16 for dma priority for DMA1
      APB16_4DMA_DMA1 : Boolean := False;
      --  unspecified
      Reserved_18_31  : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBIT3_Register use record
      APB16_CORE      at 0 range 0 .. 0;
      APB16_DMA1      at 0 range 1 .. 1;
      Reserved_2_15   at 0 range 2 .. 15;
      APB16_4DMA_CORE at 0 range 16 .. 16;
      APB16_4DMA_DMA1 at 0 range 17 .. 17;
      Reserved_18_31  at 0 range 18 .. 31;
   end record;

   subtype ARBIT4_SRAM2_DCODE_Field is HAL.UInt2;
   subtype ARBIT4_SRAM2_SBUS_Field is HAL.UInt2;
   subtype ARBIT4_SRAM2_DMA0_Field is HAL.UInt2;

   --  Arbitration Priority Configuration for SRAM1 and SIP
   type ARBIT4_Register is record
      --  SRAM2 priority for Dcode
      SRAM2_DCODE   : ARBIT4_SRAM2_DCODE_Field := 16#0#;
      --  SRAM2 priority for SBUS
      SRAM2_SBUS    : ARBIT4_SRAM2_SBUS_Field := 16#1#;
      --  SRAM2 priority for DMA0
      SRAM2_DMA0    : ARBIT4_SRAM2_DMA0_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBIT4_Register use record
      SRAM2_DCODE   at 0 range 0 .. 1;
      SRAM2_SBUS    at 0 range 2 .. 3;
      SRAM2_DMA0    at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Bus matrix
   type BUSM0_Peripheral is record
      --  Arbitration Priority Configuration for FLASH and SRAM0
      ARBIT0 : aliased ARBIT0_Register;
      --  Arbitration Priority Configuration for SRAM1
      ARBIT1 : aliased ARBIT1_Register;
      --  Arbitration Priority Configuration for APB32 and APB16
      ARBIT2 : aliased ARBIT2_Register;
      --  Arbitration Priority Configuration for APB16 priority for core and
      --  for DMA1
      ARBIT3 : aliased ARBIT3_Register;
      --  Arbitration Priority Configuration for SRAM1 and SIP
      ARBIT4 : aliased ARBIT4_Register;
   end record
     with Volatile;

   for BUSM0_Peripheral use record
      ARBIT0 at 16#0# range 0 .. 31;
      ARBIT1 at 16#4# range 0 .. 31;
      ARBIT2 at 16#8# range 0 .. 31;
      ARBIT3 at 16#C# range 0 .. 31;
      ARBIT4 at 16#14# range 0 .. 31;
   end record;

   --  Bus matrix
   BUSM0_Periph : aliased BUSM0_Peripheral
     with Import, Address => System'To_Address (16#4004C800#);

end NRF_SVD.BUSM0;
