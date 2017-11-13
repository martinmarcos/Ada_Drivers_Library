--  This spec has been automatically generated from STM32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_BR_Field is HAL.UInt3;

   --  control register 1
   type CR1_Register is record
      --  Clock phase
      CPHA           : Boolean := False;
      --  Clock polarity
      CPOL           : Boolean := False;
      --  Master selection
      MSTR           : Boolean := False;
      --  Baud rate control
      BR             : CR1_BR_Field := 16#0#;
      --  SPI enable
      SPE            : Boolean := False;
      --  Frame format
      LSBFIRST       : Boolean := False;
      --  Internal slave select
      SSI            : Boolean := False;
      --  Software slave management
      SSM            : Boolean := False;
      --  Receive only
      RXONLY         : Boolean := False;
      --  Data frame format
      DFF            : Boolean := False;
      --  CRC transfer next
      CRCNEXT        : Boolean := False;
      --  Hardware CRC calculation enable
      CRCEN          : Boolean := False;
      --  Output enable in bidirectional mode
      BIDIOE         : Boolean := False;
      --  Bidirectional data mode enable
      BIDIMODE       : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CPHA           at 0 range 0 .. 0;
      CPOL           at 0 range 1 .. 1;
      MSTR           at 0 range 2 .. 2;
      BR             at 0 range 3 .. 5;
      SPE            at 0 range 6 .. 6;
      LSBFIRST       at 0 range 7 .. 7;
      SSI            at 0 range 8 .. 8;
      SSM            at 0 range 9 .. 9;
      RXONLY         at 0 range 10 .. 10;
      DFF            at 0 range 11 .. 11;
      CRCNEXT        at 0 range 12 .. 12;
      CRCEN          at 0 range 13 .. 13;
      BIDIOE         at 0 range 14 .. 14;
      BIDIMODE       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  control register 2
   type CR2_Register is record
      --  Rx buffer DMA enable
      RXDMAEN       : Boolean := False;
      --  Tx buffer DMA enable
      TXDMAEN       : Boolean := False;
      --  SS output enable
      SSOE          : Boolean := False;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Error interrupt enable
      ERRIE         : Boolean := False;
      --  RX buffer not empty interrupt enable
      RXNEIE        : Boolean := False;
      --  Tx buffer empty interrupt enable
      TXEIE         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      RXDMAEN       at 0 range 0 .. 0;
      TXDMAEN       at 0 range 1 .. 1;
      SSOE          at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      ERRIE         at 0 range 5 .. 5;
      RXNEIE        at 0 range 6 .. 6;
      TXEIE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  status register
   type SR_Register is record
      --  Read-only. Receive buffer not empty
      RXNE          : Boolean := False;
      --  Read-only. Transmit buffer empty
      TXE           : Boolean := True;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  CRC error flag
      CRCERR        : Boolean := False;
      --  Read-only. Mode fault
      MODF          : Boolean := False;
      --  Read-only. Overrun flag
      OVR           : Boolean := False;
      --  Read-only. Busy flag
      BSY           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXNE          at 0 range 0 .. 0;
      TXE           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CRCERR        at 0 range 4 .. 4;
      MODF          at 0 range 5 .. 5;
      OVR           at 0 range 6 .. 6;
      BSY           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DR_DR_Field is HAL.UInt16;

   --  data register
   type DR_Register is record
      --  Data register
      DR             : DR_DR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CRCPR_CRCPOLY_Field is HAL.UInt16;

   --  CRC polynomial register
   type CRCPR_Register is record
      --  CRC polynomial register
      CRCPOLY        : CRCPR_CRCPOLY_Field := 16#7#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCPR_Register use record
      CRCPOLY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXCRCR_RxCRC_Field is HAL.UInt16;

   --  RX CRC register
   type RXCRCR_Register is record
      --  Read-only. Rx CRC register
      RxCRC          : RXCRCR_RxCRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCRCR_Register use record
      RxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXCRCR_TxCRC_Field is HAL.UInt16;

   --  TX CRC register
   type TXCRCR_Register is record
      --  Read-only. Tx CRC register
      TxCRC          : TXCRCR_TxCRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCRCR_Register use record
      TxCRC          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial peripheral interface
   type SPI_Peripheral is record
      --  control register 1
      CR1    : aliased CR1_Register;
      --  control register 2
      CR2    : aliased CR2_Register;
      --  status register
      SR     : aliased SR_Register;
      --  data register
      DR     : aliased DR_Register;
      --  CRC polynomial register
      CRCPR  : aliased CRCPR_Register;
      --  RX CRC register
      RXCRCR : aliased RXCRCR_Register;
      --  TX CRC register
      TXCRCR : aliased TXCRCR_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR1    at 16#0# range 0 .. 31;
      CR2    at 16#4# range 0 .. 31;
      SR     at 16#8# range 0 .. 31;
      DR     at 16#C# range 0 .. 31;
      CRCPR  at 16#10# range 0 .. 31;
      RXCRCR at 16#14# range 0 .. 31;
      TXCRCR at 16#18# range 0 .. 31;
   end record;

   --  Serial peripheral interface
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40013000#);

   --  Serial peripheral interface
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40003800#);

   --  Serial peripheral interface
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40003C00#);

end STM32_SVD.SPI;
