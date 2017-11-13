--  This spec has been automatically generated from ATSAMG55J19.svd

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

   --  SPI Control Register
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
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : Boolean := False;
      --  unspecified
      Reserved_13_23 : HAL.UInt11 := 16#0#;
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
      Reserved_8_11  at 0 range 8 .. 11;
      REQCLR         at 0 range 12 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Bit Rate Source Clock
   type MR_BRSRCCLK_Field is
     (
      --  The peripheral clock is the source clock for the bit rate generation.
      Periph_Clk,
      --  PMC PCKx is the source clock for the bit rate generation, thus the
      --  bit rate can be independent of the core/peripheral clock.
      Pmc_Pck)
     with Size => 1;
   for MR_BRSRCCLK_Field use
     (Periph_Clk => 0,
      Pmc_Pck => 1);

   --  Comparison Mode
   type MR_CMPMODE_Field is
     (
      --  Any character is received and comparison function drives CMP flag.
      Flag_Only,
      --  Comparison condition must be met to start reception of all incoming
      --  characters until REQCLR is set.
      Start_Condition)
     with Size => 1;
   for MR_CMPMODE_Field use
     (Flag_Only => 0,
      Start_Condition => 1);

   subtype SPI0_MR_PCS_Field is HAL.UInt2;
   subtype SPI0_MR_DLYBCS_Field is HAL.UInt8;

   --  SPI Mode Register
   type SPI0_MR_Register is record
      --  Master/Slave Mode
      MSTR           : Boolean := False;
      --  Peripheral Select
      PS             : Boolean := False;
      --  Chip Select Decode
      PCSDEC         : Boolean := False;
      --  Bit Rate Source Clock
      BRSRCCLK       : MR_BRSRCCLK_Field := SAM_SVD.SPI.Periph_Clk;
      --  Mode Fault Detection
      MODFDIS        : Boolean := False;
      --  Wait Data Read Before Transfer
      WDRBT          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Local Loopback Enable
      LLB            : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Comparison Mode
      CMPMODE        : MR_CMPMODE_Field := SAM_SVD.SPI.Flag_Only;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Peripheral Chip Select
      PCS            : SPI0_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : SPI0_MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      BRSRCCLK       at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PCS            at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   subtype SPI0_RDR_RD_Field is HAL.UInt16;
   subtype SPI0_RDR_PCS_Field is HAL.UInt4;

   --  SPI Receive Data Register
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

   --  SPI Transmit Data Register
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

   --  SPI Status Register
   type SPI0_SR_Register is record
      --  Read-only. Receive Data Register Full (cleared by reading SPI_RDR)
      RDRF           : Boolean;
      --  Read-only. Transmit Data Register Empty (cleared by writing SPI_TDR)
      TDRE           : Boolean;
      --  Read-only. Mode Fault Error (cleared on read)
      MODF           : Boolean;
      --  Read-only. Overrun Error Status (cleared on read)
      OVRES          : Boolean;
      --  Read-only. End of RX buffer (cleared by writing SPI_RCR or SPI_RNCR)
      ENDRX          : Boolean;
      --  Read-only. End of TX buffer (cleared by writing SPI_TCR or SPI_TNCR)
      ENDTX          : Boolean;
      --  Read-only. RX Buffer Full (cleared by writing SPI_RCR or SPI_RNCR)
      RXBUFF         : Boolean;
      --  Read-only. TX Buffer Empty (cleared by writing SPI_TCR or SPI_TNCR)
      TXBUFE         : Boolean;
      --  Read-only. NSS Rising (cleared on read)
      NSSR           : Boolean;
      --  Read-only. Transmission Registers Empty (cleared by writing SPI_TDR)
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Status (slave mode only) (cleared on read)
      UNDES          : Boolean;
      --  Read-only. Comparison Status (cleared on read)
      CMP            : Boolean;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
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
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  SPI Interrupt Enable Register
   type SPI0_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : Boolean := False;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Enable
      TDRE           : Boolean := False;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : Boolean := False;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : Boolean := False;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : Boolean := False;
      --  Write-only. Comparison Interrupt Enable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SPI Interrupt Disable Register
   type SPI0_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : Boolean := False;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Disable
      TDRE           : Boolean := False;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : Boolean := False;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : Boolean := False;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : Boolean := False;
      --  Write-only. Comparison Interrupt Disable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SPI Interrupt Mask Register
   type SPI0_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : Boolean;
      --  Read-only. SPI Transmit Data Register Empty Interrupt Mask
      TDRE           : Boolean;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : Boolean;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : Boolean;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : Boolean;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : Boolean;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : Boolean;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : Boolean;
      --  Read-only. Comparison Interrupt Mask
      CMP            : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
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

   --  SPI Chip Select Register
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
      --  Serial Clock Bit Rate
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

   --  SPI Chip Select Register
   type SPI0_CSR_Registers is array (0 .. 1) of SPI0_CSR_Register
     with Volatile;

   --  SPI0_CMPR_VAL array element
   subtype SPI0_CMPR_VAL_Element is HAL.UInt16;

   --  SPI0_CMPR_VAL array
   type SPI0_CMPR_VAL_Field_Array is array (1 .. 2) of SPI0_CMPR_VAL_Element
     with Component_Size => 16, Size => 32;

   --  SPI Comparison Register
   type SPI0_CMPR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VAL as a value
            Val : HAL.UInt32;
         when True =>
            --  VAL as an array
            Arr : SPI0_CMPR_VAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SPI0_CMPR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Write Protect Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5460041);

   --  SPI Write Protection Mode Register
   type SPI0_WPMR_Register is record
      --  Write Protection Enable
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

   --  SPI Write Protection Status Register
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

   subtype SPI0_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type SPI0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : SPI0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type SPI0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : SPI0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type SPI0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : SPI0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type SPI0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : SPI0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type SPI0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean := False;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean := False;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      RXCBDIS        at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      TXCBDIS        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ERRCLR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transfer Status Register
   type SPI0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. Receiver Circular Buffer Enable
      RXCBEN         : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Transmitter Circular Buffer Enable
      TXCBEN         : Boolean;
      --  unspecified
      Reserved_19_23 : HAL.UInt5;
      --  Read-only. Transfer Bus Error
      ERR            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_PTSR_Register use record
      RXTEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TXTEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ERR            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface 0
   type SPI_Peripheral is record
      --  SPI Control Register
      CR   : aliased SPI0_CR_Register;
      --  SPI Mode Register
      MR   : aliased SPI0_MR_Register;
      --  SPI Receive Data Register
      RDR  : aliased SPI0_RDR_Register;
      --  SPI Transmit Data Register
      TDR  : aliased SPI0_TDR_Register;
      --  SPI Status Register
      SR   : aliased SPI0_SR_Register;
      --  SPI Interrupt Enable Register
      IER  : aliased SPI0_IER_Register;
      --  SPI Interrupt Disable Register
      IDR  : aliased SPI0_IDR_Register;
      --  SPI Interrupt Mask Register
      IMR  : aliased SPI0_IMR_Register;
      --  SPI Chip Select Register
      CSR  : aliased SPI0_CSR_Registers;
      --  SPI Comparison Register
      CMPR : aliased SPI0_CMPR_Register;
      --  SPI Write Protection Mode Register
      WPMR : aliased SPI0_WPMR_Register;
      --  SPI Write Protection Status Register
      WPSR : aliased SPI0_WPSR_Register;
      --  Receive Pointer Register
      RPR  : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR  : aliased SPI0_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR  : aliased SPI0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased SPI0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased SPI0_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased SPI0_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased SPI0_PTSR_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      RDR  at 16#8# range 0 .. 31;
      TDR  at 16#C# range 0 .. 31;
      SR   at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      CSR  at 16#30# range 0 .. 63;
      CMPR at 16#48# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Serial Peripheral Interface 0
   SPI0_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#4000C400#);

   --  Serial Peripheral Interface 1
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40020400#);

   --  Serial Peripheral Interface 2
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40024400#);

   --  Serial Peripheral Interface 3
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40018400#);

   --  Serial Peripheral Interface 4
   SPI4_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#4001C400#);

   --  Serial Peripheral Interface 5
   SPI5_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40008400#);

   --  Serial Peripheral Interface 6
   SPI6_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40040400#);

   --  Serial Peripheral Interface 7
   SPI7_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40034400#);

end SAM_SVD.SPI;
