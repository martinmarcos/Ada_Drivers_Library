--

--  This spec has been automatically generated from Z32F0642.svd

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

   subtype RDR_RDR_Field is HAL.UInt17;

   --  SPI n Receive Data Register
   type RDR_Register is record
      --  Read-only. Data
      RDR            : RDR_RDR_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDR_Register use record
      RDR            at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TDR_TDR_Field is HAL.UInt17;

   --  SPI n Transmit Data Register
   type TDR_Register is record
      --  Write-only. Data
      TDR            : TDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TDR_Register use record
      TDR            at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CR_BITSZ_Field is HAL.UInt2;

   --  SPI n Control Register
   type CR_Register is record
      --  Transmit/receive Data bits select bit
      BITSZ          : CR_BITSZ_Field := 16#0#;
      --  SPI clock polarity bit
      CPOL           : Boolean := False;
      --  SPI clock phase bit
      CPHA           : Boolean := False;
      --  MSB/LSB transmit select bit
      MSBF           : Boolean := False;
      --  master/slaver select bit
      MS             : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
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
      SSMOD          : Boolean := False;
      --  Receive interrupt enable bit
      RXIE           : Boolean := False;
      --  Transmit interrupt enable bit
      TXIE           : Boolean := False;
      --  SSn Edge Change Interrupt enable bit
      SSCIE          : Boolean := False;
      --  unspecified
      Reserved_17_18 : HAL.UInt2 := 16#0#;
      --  Rx buffer clear bit
      RXBC           : Boolean := False;
      --  Tx buffer clear bit
      TXBC           : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      BITSZ          at 0 range 0 .. 1;
      CPOL           at 0 range 2 .. 2;
      CPHA           at 0 range 3 .. 3;
      MSBF           at 0 range 4 .. 4;
      MS             at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SSPOL          at 0 range 8 .. 8;
      SSMO           at 0 range 9 .. 9;
      SSMASK         at 0 range 10 .. 10;
      LBE            at 0 range 11 .. 11;
      SSOUT          at 0 range 12 .. 12;
      SSMOD          at 0 range 13 .. 13;
      RXIE           at 0 range 14 .. 14;
      TXIE           at 0 range 15 .. 15;
      SSCIE          at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      RXBC           at 0 range 19 .. 19;
      TXBC           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  SPI n Status Register
   type SR_Register is record
      --  Read-only. receive buffer ready flag
      RRDY          : Boolean := False;
      --  Read-only. Transmit buffer empty flag
      TRDY          : Boolean := False;
      --  Read-only. transmit/receive operation flag
      TXIDLE        : Boolean := False;
      --  transmit underrun error flag
      UDRF          : Boolean := False;
      --  receive overrun error flag
      OVRF          : Boolean := False;
      --  SS signal status flag
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
      TXIDLE        at 0 range 2 .. 2;
      UDRF          at 0 range 3 .. 3;
      OVRF          at 0 range 4 .. 4;
      SSON          at 0 range 5 .. 5;
      SSDET         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BR_BR_Field is HAL.UInt16;

   --  SPI n Baud Rate Register
   type BR_Register is record
      --  buadrate
      BR             : BR_BR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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

   subtype LR_STL_Field is HAL.UInt8;
   subtype LR_BTL_Field is HAL.UInt8;
   subtype LR_SPL_Field is HAL.UInt8;

   --  SPI n delay Length Register
   type LR_Register is record
      --  Start delay length
      STL            : LR_STL_Field := 16#0#;
      --  Burst delay length
      BTL            : LR_BTL_Field := 16#0#;
      --  Stop delay length
      SPL            : LR_SPL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LR_Register use record
      STL            at 0 range 0 .. 7;
      BTL            at 0 range 8 .. 15;
      SPL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SP_Disc is
     (
      Mode_1,
      Mode_2);

   --  SERIAL PERIPHERAL INTERFACE
   type SP_Peripheral
     (Discriminent : SP_Disc := Mode_1)
   is record
      --  SPI n Control Register
      CR  : aliased CR_Register;
      --  SPI n Status Register
      SR  : aliased SR_Register;
      --  SPI n Baud Rate Register
      BR  : aliased BR_Register;
      --  SPI n Enable register
      EN  : aliased EN_Register;
      --  SPI n delay Length Register
      LR  : aliased LR_Register;
      case Discriminent is
         when Mode_1 =>
            --  SPI n Receive Data Register
            RDR : aliased RDR_Register;
         when Mode_2 =>
            --  SPI n Transmit Data Register
            TDR : aliased TDR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SP_Peripheral use record
      CR  at 16#4# range 0 .. 31;
      SR  at 16#8# range 0 .. 31;
      BR  at 16#C# range 0 .. 31;
      EN  at 16#10# range 0 .. 31;
      LR  at 16#14# range 0 .. 31;
      RDR at 16#0# range 0 .. 31;
      TDR at 16#0# range 0 .. 31;
   end record;

   --  SERIAL PERIPHERAL INTERFACE
   SP_Periph : aliased SP_Peripheral
     with Import, Address => System'To_Address (16#40009000#);

end NRF_SVD.SPI;
