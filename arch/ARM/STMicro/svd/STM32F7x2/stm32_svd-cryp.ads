--  This spec has been automatically generated from STM32F7x2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.CRYP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_DATATYPE_Field is HAL.UInt2;
   subtype CR_MODE_Field is HAL.UInt2;
   subtype CR_CHMOD_Field is HAL.UInt2;
   subtype CR_GCMPH_Field is HAL.UInt2;

   --  control register
   type CR_Register is record
      --  AES enable
      EN             : Boolean := False;
      --  Data type selection (for data in and data out to/from the
      --  cryptographic block)
      DATATYPE       : CR_DATATYPE_Field := 16#0#;
      --  AES operating mode
      MODE           : CR_MODE_Field := 16#0#;
      --  AES chaining mode
      CHMOD          : CR_CHMOD_Field := 16#0#;
      --  Computation complete flag clear
      CCFC           : Boolean := False;
      --  Error clear
      ERRC           : Boolean := False;
      --  CCF flag interrupt enable
      CCFIE          : Boolean := False;
      --  Error interrupt enable
      ERRIE          : Boolean := False;
      --  Enable DMA management of data input phase
      DMAINEN        : Boolean := False;
      --  Enable DMA management of data output phase
      DMAOUTEN       : Boolean := False;
      --  Used only for GCM, GMAC and CMAC algorithms and has no effect when
      --  other
      GCMPH          : CR_GCMPH_Field := 16#0#;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Key size selection
      KEYSIZE        : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN             at 0 range 0 .. 0;
      DATATYPE       at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 4;
      CHMOD          at 0 range 5 .. 6;
      CCFC           at 0 range 7 .. 7;
      ERRC           at 0 range 8 .. 8;
      CCFIE          at 0 range 9 .. 9;
      ERRIE          at 0 range 10 .. 10;
      DMAINEN        at 0 range 11 .. 11;
      DMAOUTEN       at 0 range 12 .. 12;
      GCMPH          at 0 range 13 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      KEYSIZE        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  status register
   type SR_Register is record
      --  Read-only. Computation complete flag
      CCF           : Boolean;
      --  Read-only. Read error flag
      RDERR         : Boolean;
      --  Read-only. Write error flag
      WRERR         : Boolean;
      --  Read-only. Busy flag
      Busy          : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      CCF           at 0 range 0 .. 0;
      RDERR         at 0 range 1 .. 1;
      WRERR         at 0 range 2 .. 2;
      Busy          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype KEYR0_KEYR0_Field is HAL.UInt31;

   --  key register
   type KEYR0_Register is record
      --  Data output register
      KEYR0          : KEYR0_KEYR0_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KEYR0_Register use record
      KEYR0          at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype KEYR2_KEYR2_Field is HAL.UInt31;

   --  key register
   type KEYR2_Register is record
      --  Read-only. Data output register
      KEYR2          : KEYR2_KEYR2_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KEYR2_Register use record
      KEYR2          at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cryptographic processor
   type CRYP_Peripheral is record
      --  control register
      CR     : aliased CR_Register;
      --  status register
      SR     : aliased SR_Register;
      --  data input register
      DINR   : aliased HAL.UInt32;
      --  data output register
      DOUTR  : aliased HAL.UInt32;
      --  key register
      KEYR0  : aliased KEYR0_Register;
      --  key register
      KEYR1  : aliased HAL.UInt32;
      --  key register
      KEYR2  : aliased KEYR2_Register;
      --  key register
      KEYR3  : aliased HAL.UInt32;
      --  initialization vector register
      IVR0   : aliased HAL.UInt32;
      --  initialization vector register
      IVR1   : aliased HAL.UInt32;
      --  initialization vector register
      IVR2   : aliased HAL.UInt32;
      --  initialization vector register
      IVR3   : aliased HAL.UInt32;
      --  key registers
      KEYR4  : aliased HAL.UInt32;
      --  key registers
      KEYR5  : aliased HAL.UInt32;
      --  key registers
      KEYR6  : aliased HAL.UInt32;
      --  key registers
      KEYR7  : aliased HAL.UInt32;
      --  Suspend registers
      SUSP0R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP1R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP2R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP3R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP4R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP5R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP6R : aliased HAL.UInt32;
      --  Suspend registers
      SUSP7R : aliased HAL.UInt32;
   end record
     with Volatile;

   for CRYP_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      SR     at 16#4# range 0 .. 31;
      DINR   at 16#8# range 0 .. 31;
      DOUTR  at 16#C# range 0 .. 31;
      KEYR0  at 16#10# range 0 .. 31;
      KEYR1  at 16#14# range 0 .. 31;
      KEYR2  at 16#18# range 0 .. 31;
      KEYR3  at 16#1C# range 0 .. 31;
      IVR0   at 16#20# range 0 .. 31;
      IVR1   at 16#24# range 0 .. 31;
      IVR2   at 16#28# range 0 .. 31;
      IVR3   at 16#2C# range 0 .. 31;
      KEYR4  at 16#30# range 0 .. 31;
      KEYR5  at 16#34# range 0 .. 31;
      KEYR6  at 16#38# range 0 .. 31;
      KEYR7  at 16#3C# range 0 .. 31;
      SUSP0R at 16#40# range 0 .. 31;
      SUSP1R at 16#44# range 0 .. 31;
      SUSP2R at 16#48# range 0 .. 31;
      SUSP3R at 16#4C# range 0 .. 31;
      SUSP4R at 16#50# range 0 .. 31;
      SUSP5R at 16#54# range 0 .. 31;
      SUSP6R at 16#58# range 0 .. 31;
      SUSP7R at 16#5C# range 0 .. 31;
   end record;

   --  Cryptographic processor
   CRYP_Periph : aliased CRYP_Peripheral
     with Import, Address => System'To_Address (16#50060000#);

end STM32_SVD.CRYP;
