--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RDR_TDR_RDR_TDR_Field is HAL.UInt16;

   --  SPI n Receive Data Register
   type RDR_TDR_Register is record
      --  Data
      RDR_TDR        : RDR_TDR_RDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDR_TDR_Register use record
      RDR_TDR        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR_BITSEL_Field is HAL.UInt2;

   --  SPI n Control Register
   type CR_Register is record
      --  Transmit/receive Data bits select bit
      BITSEL         : CR_BITSEL_Field := 16#0#;
      --  SPI clock polarity bit
      CPOL           : Boolean := False;
      --  SPI clock phase bit
      CPHA           : Boolean := False;
      --  MSB/LSB transmit select bit
      MSBF           : Boolean := False;
      --  master/slaver select bit
      MS             : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  SS Signal polarity select bit
      SSPOL          : Boolean := False;
      --  SS output signal select bit
      SSMO           : Boolean := False;
      --  SS Signal masking bit in slave mode
      SSMASK         : Boolean := False;
      --  Loop-back mode select bit in master mode
      LBE            : Boolean := False;
      --  SS output signal select bit
      SSOUT          : Boolean := False;
      --  SS Auto/Manual Output select bit
      SSMODE         : Boolean := False;
      --  Receive interrupt enable bit
      RXIE           : Boolean := False;
      --  Transmit interrupt enable bit
      TXIE           : Boolean := False;
      --  SSn Edge Chagne Interrupt enable bit
      SSCIE          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      BITSEL         at 0 range 0 .. 1;
      CPOL           at 0 range 2 .. 2;
      CPHA           at 0 range 3 .. 3;
      MSBF           at 0 range 4 .. 4;
      MS             at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SSPOL          at 0 range 7 .. 7;
      SSMO           at 0 range 8 .. 8;
      SSMASK         at 0 range 9 .. 9;
      LBE            at 0 range 10 .. 10;
      SSOUT          at 0 range 11 .. 11;
      SSMODE         at 0 range 12 .. 12;
      RXIE           at 0 range 13 .. 13;
      TXIE           at 0 range 14 .. 14;
      SSCIE          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SPI n Status Register
   type SR_Register is record
      --  Read-only. receive buffer ready flag
      RRDY          : Boolean := False;
      --  Read-only. Transmit buffer empty flag
      TRDY          : Boolean := False;
      --  Read-only. transmit/receive operation flag
      SBUSY         : Boolean := False;
      --  transmit underrun error flag
      UDRF          : Boolean := False;
      --  receive overrun error flag
      OVRF          : Boolean := False;
      --  Read-only. SS signal status flag
      SSON          : Boolean := False;
      --  The rising edge of SS detect flag
      SSDET         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RRDY          at 0 range 0 .. 0;
      TRDY          at 0 range 1 .. 1;
      SBUSY         at 0 range 2 .. 2;
      UDRF          at 0 range 3 .. 3;
      OVRF          at 0 range 4 .. 4;
      SSON          at 0 range 5 .. 5;
      SSDET         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BR_BR_Field is HAL.UInt8;

   --  SPI n Baud Rate Register
   type BR_Register is record
      --  buadrate
      BR            : BR_BR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BR_Register use record
      BR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SPI n Enable register
   type EN_Register is record
      --  SPI ENABLE bit
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EN_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SERIAL PERIPHERAL INTERFACE
   type SPI_Peripheral is record
      --  SPI n Receive Data Register
      RDR_TDR : aliased RDR_TDR_Register;
      --  SPI n Control Register
      CR      : aliased CR_Register;
      --  SPI n Status Register
      SR      : aliased SR_Register;
      --  SPI n Baud Rate Register
      BR      : aliased BR_Register;
      --  SPI n Enable register
      EN      : aliased EN_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      RDR_TDR at 16#0# range 0 .. 31;
      CR      at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      BR      at 16#C# range 0 .. 31;
      EN      at 16#10# range 0 .. 31;
   end record;

   --  SERIAL PERIPHERAL INTERFACE
   SPI0_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40000800#);

   --  SERIAL PERIPHERAL INTERFACE
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40000820#);

end NRF_SVD.SPI;
