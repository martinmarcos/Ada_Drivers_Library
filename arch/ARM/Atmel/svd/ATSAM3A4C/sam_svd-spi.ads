--  This spec has been automatically generated from ATSAM3A4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type SPI0_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : Boolean := False;
      --  Write-only. SPI Disable
      SPIDIS         : Boolean := False;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_8_23  : HAL.UInt16 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CR_Register use record
      SPIEN          at 0 range 0 .. 0;
      SPIDIS         at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPI0_MR_PCS_Field is HAL.UInt4;
   subtype SPI0_MR_DLYBCS_Field is HAL.UInt8;

   --  Mode Register
   type SPI0_MR_Register is record
      --  Master/Slave Mode
      MSTR           : Boolean := False;
      --  Peripheral Select
      PS             : Boolean := False;
      --  Chip Select Decode
      PCSDEC         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Mode Fault Detection
      MODFDIS        : Boolean := False;
      --  Wait Data Read Before Transfer
      WDRBT          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Local Loopback Enable
      LLB            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Peripheral Chip Select
      PCS            : SPI0_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : SPI0_MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   subtype SPI0_RDR_RD_Field is HAL.UInt16;
   subtype SPI0_RDR_PCS_Field is HAL.UInt4;

   --  Receive Data Register
   type SPI0_RDR_Register is record
      --  Read-only. Receive Data
      RD             : SPI0_RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : SPI0_RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SPI0_TDR_TD_Field is HAL.UInt16;
   subtype SPI0_TDR_PCS_Field is HAL.UInt4;

   --  Transmit Data Register
   type SPI0_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : SPI0_TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : SPI0_TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TDR_Register use record
      TD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Status Register
   type SPI0_SR_Register is record
      --  Read-only. Receive Data Register Full
      RDRF           : Boolean;
      --  Read-only. Transmit Data Register Empty
      TDRE           : Boolean;
      --  Read-only. Mode Fault Error
      MODF           : Boolean;
      --  Read-only. Overrun Error Status
      OVRES          : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. NSS Rising
      NSSR           : Boolean;
      --  Read-only. Transmission Registers Empty
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Status (Slave Mode Only)
      UNDES          : Boolean;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. SPI Enable Status
      SPIENS         : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_SR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Enable Register
   type SPI0_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : Boolean := False;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Enable
      TDRE           : Boolean := False;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : Boolean := False;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Disable Register
   type SPI0_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : Boolean := False;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Disable
      TDRE           : Boolean := False;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : Boolean := False;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Mask Register
   type SPI0_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : Boolean;
      --  Read-only. SPI Transmit Data Register Empty Interrupt Mask
      TDRE           : Boolean;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : Boolean;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : Boolean;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Bits Per Transfer
   type CSR_BITS_Field is
     (
      --  8 bits for transfer
      CSR_BITS_Field_8_Bit,
      --  9 bits for transfer
      CSR_BITS_Field_9_Bit,
      --  10 bits for transfer
      CSR_BITS_Field_10_Bit,
      --  11 bits for transfer
      CSR_BITS_Field_11_Bit,
      --  12 bits for transfer
      CSR_BITS_Field_12_Bit,
      --  13 bits for transfer
      CSR_BITS_Field_13_Bit,
      --  14 bits for transfer
      CSR_BITS_Field_14_Bit,
      --  15 bits for transfer
      CSR_BITS_Field_15_Bit,
      --  16 bits for transfer
      CSR_BITS_Field_16_Bit)
     with Size => 4;
   for CSR_BITS_Field use
     (CSR_BITS_Field_8_Bit => 0,
      CSR_BITS_Field_9_Bit => 1,
      CSR_BITS_Field_10_Bit => 2,
      CSR_BITS_Field_11_Bit => 3,
      CSR_BITS_Field_12_Bit => 4,
      CSR_BITS_Field_13_Bit => 5,
      CSR_BITS_Field_14_Bit => 6,
      CSR_BITS_Field_15_Bit => 7,
      CSR_BITS_Field_16_Bit => 8);

   subtype SPI0_CSR_SCBR_Field is HAL.UInt8;
   subtype SPI0_CSR_DLYBS_Field is HAL.UInt8;
   subtype SPI0_CSR_DLYBCT_Field is HAL.UInt8;

   --  Chip Select Register
   type SPI0_CSR_Register is record
      --  Clock Polarity
      CPOL   : Boolean := False;
      --  Clock Phase
      NCPHA  : Boolean := False;
      --  Chip Select Not Active After Transfer (Ignored if CSAAT = 1)
      CSNAAT : Boolean := False;
      --  Chip Select Active After Transfer
      CSAAT  : Boolean := False;
      --  Bits Per Transfer
      BITS   : CSR_BITS_Field := SAM_SVD.SPI.CSR_BITS_Field_8_Bit;
      --  Serial Clock Baud Rate
      SCBR   : SPI0_CSR_SCBR_Field := 16#0#;
      --  Delay Before SPCK
      DLYBS  : SPI0_CSR_DLYBS_Field := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT : SPI0_CSR_DLYBCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CSR_Register use record
      CPOL   at 0 range 0 .. 0;
      NCPHA  at 0 range 1 .. 1;
      CSNAAT at 0 range 2 .. 2;
      CSAAT  at 0 range 3 .. 3;
      BITS   at 0 range 4 .. 7;
      SCBR   at 0 range 8 .. 15;
      DLYBS  at 0 range 16 .. 23;
      DLYBCT at 0 range 24 .. 31;
   end record;

   --  Chip Select Register
   type SPI0_CSR_Registers is array (0 .. 3) of SPI0_CSR_Register
     with Volatile;

   --  Write Protect Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5460041);

   --  Write Protection Control Register
   type SPI0_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SPI0_WPSR_WPVSRC_Field is HAL.UInt8;

   --  Write Protection Status Register
   type SPI0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SPI0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface 0
   type SPI0_Peripheral is record
      --  Control Register
      CR   : aliased SPI0_CR_Register;
      --  Mode Register
      MR   : aliased SPI0_MR_Register;
      --  Receive Data Register
      RDR  : aliased SPI0_RDR_Register;
      --  Transmit Data Register
      TDR  : aliased SPI0_TDR_Register;
      --  Status Register
      SR   : aliased SPI0_SR_Register;
      --  Interrupt Enable Register
      IER  : aliased SPI0_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased SPI0_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased SPI0_IMR_Register;
      --  Chip Select Register
      CSR  : aliased SPI0_CSR_Registers;
      --  Write Protection Control Register
      WPMR : aliased SPI0_WPMR_Register;
      --  Write Protection Status Register
      WPSR : aliased SPI0_WPSR_Register;
   end record
     with Volatile;

   for SPI0_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      RDR  at 16#8# range 0 .. 31;
      TDR  at 16#C# range 0 .. 31;
      SR   at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      CSR  at 16#30# range 0 .. 127;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
   end record;

   --  Serial Peripheral Interface 0
   SPI0_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#40008000#);

end SAM_SVD.SPI;
