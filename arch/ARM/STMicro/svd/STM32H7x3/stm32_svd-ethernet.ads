--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.Ethernet is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMAMR_PR_Field is HAL.UInt3;

   --  DMA mode register
   type DMAMR_Register is record
      --  Software Reset
      SWR            : Boolean := False;
      --  DMA Tx or Rx Arbitration Scheme
      DA             : Boolean := False;
      --  unspecified
      Reserved_2_10  : HAL.UInt9 := 16#0#;
      --  Transmit priority
      TXPR           : Boolean := False;
      --  Priority ratio
      PR             : DMAMR_PR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#1#;
      --  Interrupt Mode
      INTM           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMR_Register use record
      SWR            at 0 range 0 .. 0;
      DA             at 0 range 1 .. 1;
      Reserved_2_10  at 0 range 2 .. 10;
      TXPR           at 0 range 11 .. 11;
      PR             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      INTM           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  System bus mode register
   type DMASBMR_Register is record
      --  Fixed Burst Length
      FB             : Boolean := False;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Address-Aligned Beats
      AAL            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Mixed Burst
      MB             : Boolean := False;
      --  Rebuild INCRx Burst
      RB             : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMASBMR_Register use record
      FB             at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      AAL            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      MB             at 0 range 14 .. 14;
      RB             at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt status register
   type DMAISR_Register is record
      --  DMA Channel Interrupt Status
      DC0IS          : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#4000#;
      --  MTL Interrupt Status
      MTLIS          : Boolean := False;
      --  MAC Interrupt Status
      MACIS          : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAISR_Register use record
      DC0IS          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      MTLIS          at 0 range 16 .. 16;
      MACIS          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype DMADSR_RPS0_Field is HAL.UInt4;
   subtype DMADSR_TPS0_Field is HAL.UInt4;

   --  Debug status register
   type DMADSR_Register is record
      --  AHB Master Write Channel
      AXWHSTS        : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  DMA Channel Receive Process State
      RPS0           : DMADSR_RPS0_Field := 16#0#;
      --  DMA Channel Transmit Process State
      TPS0           : DMADSR_TPS0_Field := 16#8#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMADSR_Register use record
      AXWHSTS        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RPS0           at 0 range 8 .. 11;
      TPS0           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMACCR_MSS_Field is HAL.UInt14;
   subtype DMACCR_DSL_Field is HAL.UInt3;

   --  Channel control register
   type DMACCR_Register is record
      --  Maximum Segment Size
      MSS            : DMACCR_MSS_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#2#;
      --  8xPBL mode
      PBLX8          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Descriptor Skip Length
      DSL            : DMACCR_DSL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACCR_Register use record
      MSS            at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PBLX8          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DSL            at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DMACTxCR_TXPBL_Field is HAL.UInt6;

   --  Channel transmit control register
   type DMACTxCR_Register is record
      --  Start or Stop Transmission Command
      ST             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Operate on Second Packet
      OSF            : Boolean := False;
      --  unspecified
      Reserved_5_11  : HAL.UInt7 := 16#0#;
      --  TCP Segmentation Enabled
      TSE            : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#4#;
      --  Transmit Programmable Burst Length
      TXPBL          : DMACTxCR_TXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACTxCR_Register use record
      ST             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OSF            at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      TSE            at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TXPBL          at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DMACRxCR_RBSZ_Field is HAL.UInt14;
   subtype DMACRxCR_RXPBL_Field is HAL.UInt6;

   --  Channel receive control register
   type DMACRxCR_Register is record
      --  Start or Stop Receive Command
      SR             : Boolean := False;
      --  Receive Buffer size
      RBSZ           : DMACRxCR_RBSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#1#;
      --  RXPBL
      RXPBL          : DMACRxCR_RXPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  DMA Rx Channel Packet Flush
      RPF            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACRxCR_Register use record
      SR             at 0 range 0 .. 0;
      RBSZ           at 0 range 1 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXPBL          at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      RPF            at 0 range 31 .. 31;
   end record;

   subtype DMACTxDLAR_TDESLA_Field is HAL.UInt30;

   --  Channel Tx descriptor list address register
   type DMACTxDLAR_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Start of Transmit List
      TDESLA       : DMACTxDLAR_TDESLA_Field := 16#2000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACTxDLAR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      TDESLA       at 0 range 2 .. 31;
   end record;

   subtype DMACRxDLAR_RDESLA_Field is HAL.UInt30;

   --  Channel Rx descriptor list address register
   type DMACRxDLAR_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Start of Receive List
      RDESLA       : DMACRxDLAR_RDESLA_Field := 16#2000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACRxDLAR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      RDESLA       at 0 range 2 .. 31;
   end record;

   subtype DMACTxDTPR_TDT_Field is HAL.UInt30;

   --  Channel Tx descriptor tail pointer register
   type DMACTxDTPR_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Transmit Descriptor Tail Pointer
      TDT          : DMACTxDTPR_TDT_Field := 16#2000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACTxDTPR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      TDT          at 0 range 2 .. 31;
   end record;

   subtype DMACRxDTPR_RDT_Field is HAL.UInt30;

   --  Channel Rx descriptor tail pointer register
   type DMACRxDTPR_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Receive Descriptor Tail Pointer
      RDT          : DMACRxDTPR_RDT_Field := 16#2000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACRxDTPR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      RDT          at 0 range 2 .. 31;
   end record;

   subtype DMACTxRLR_TDRL_Field is HAL.UInt10;

   --  Channel Tx descriptor ring length register
   type DMACTxRLR_Register is record
      --  Transmit Descriptor Ring Length
      TDRL           : DMACTxRLR_TDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#20#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACTxRLR_Register use record
      TDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DMACRxRLR_RDRL_Field is HAL.UInt10;

   --  Channel Rx descriptor ring length register
   type DMACRxRLR_Register is record
      --  Receive Descriptor Ring Length
      RDRL           : DMACRxRLR_RDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#20#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACRxRLR_Register use record
      RDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Channel interrupt enable register
   type DMACIER_Register is record
      --  Transmit Interrupt Enable
      TIE            : Boolean := False;
      --  Transmit Stopped Enable
      TXSE           : Boolean := False;
      --  Transmit Buffer Unavailable Enable
      TBUE           : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Receive Interrupt Enable
      RIE            : Boolean := False;
      --  Receive Buffer Unavailable Enable
      RBUE           : Boolean := False;
      --  Receive Stopped Enable
      RSE            : Boolean := False;
      --  Receive Watchdog Timeout Enable
      RWTE           : Boolean := False;
      --  Early Transmit Interrupt Enable
      ETIE           : Boolean := False;
      --  Early Receive Interrupt Enable
      ERIE           : Boolean := False;
      --  Fatal Bus Error Enable
      FBEE           : Boolean := False;
      --  Context Descriptor Error Enable
      CDEE           : Boolean := False;
      --  Abnormal Interrupt Summary Enable
      AIE            : Boolean := False;
      --  Normal Interrupt Summary Enable
      NIE            : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACIER_Register use record
      TIE            at 0 range 0 .. 0;
      TXSE           at 0 range 1 .. 1;
      TBUE           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUE           at 0 range 7 .. 7;
      RSE            at 0 range 8 .. 8;
      RWTE           at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      ERIE           at 0 range 11 .. 11;
      FBEE           at 0 range 12 .. 12;
      CDEE           at 0 range 13 .. 13;
      AIE            at 0 range 14 .. 14;
      NIE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMACRxIWTR_RWT_Field is HAL.UInt8;

   --  Channel Rx interrupt watchdog timer register
   type DMACRxIWTR_Register is record
      --  Receive Interrupt Watchdog Timer Count
      RWT           : DMACRxIWTR_RWT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#80#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACRxIWTR_Register use record
      RWT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DMACSR_TEB_Field is HAL.UInt3;
   subtype DMACSR_REB_Field is HAL.UInt3;

   --  Channel status register
   type DMACSR_Register is record
      --  Transmit Interrupt
      TI             : Boolean := False;
      --  Transmit Process Stopped
      TPS            : Boolean := False;
      --  Transmit Buffer Unavailable
      TBU            : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Receive Interrupt
      RI             : Boolean := False;
      --  Receive Buffer Unavailable
      RBU            : Boolean := False;
      --  Receive Process Stopped
      RPS            : Boolean := False;
      --  Receive Watchdog Timeout
      RWT            : Boolean := False;
      --  Early Transmit Interrupt
      ET             : Boolean := False;
      --  Early Receive Interrupt
      ER             : Boolean := False;
      --  Fatal Bus Error
      FBE            : Boolean := False;
      --  Context Descriptor Error
      CDE            : Boolean := False;
      --  Abnormal Interrupt Summary
      AIS            : Boolean := False;
      --  Normal Interrupt Summary
      NIS            : Boolean := True;
      --  Tx DMA Error Bits
      TEB            : DMACSR_TEB_Field := 16#0#;
      --  Rx DMA Error Bits
      REB            : DMACSR_REB_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACSR_Register use record
      TI             at 0 range 0 .. 0;
      TPS            at 0 range 1 .. 1;
      TBU            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RI             at 0 range 6 .. 6;
      RBU            at 0 range 7 .. 7;
      RPS            at 0 range 8 .. 8;
      RWT            at 0 range 9 .. 9;
      ET             at 0 range 10 .. 10;
      ER             at 0 range 11 .. 11;
      FBE            at 0 range 12 .. 12;
      CDE            at 0 range 13 .. 13;
      AIS            at 0 range 14 .. 14;
      NIS            at 0 range 15 .. 15;
      TEB            at 0 range 16 .. 18;
      REB            at 0 range 19 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DMACMFCR_MFC_Field is HAL.UInt11;

   --  Channel missed frame count register
   type DMACMFCR_Register is record
      --  Read-only. Dropped Packet Counters
      MFC            : DMACMFCR_MFC_Field;
      --  unspecified
      Reserved_11_14 : HAL.UInt4;
      --  Read-only. Overflow status of the MFC Counter
      MFCO           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACMFCR_Register use record
      MFC            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      MFCO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Ethernet: media access control (MAC)
   type Ethernet_MAC_Peripheral is record
      --  DMA mode register
      DMAMR      : aliased DMAMR_Register;
      --  System bus mode register
      DMASBMR    : aliased DMASBMR_Register;
      --  Interrupt status register
      DMAISR     : aliased DMAISR_Register;
      --  Debug status register
      DMADSR     : aliased DMADSR_Register;
      --  Channel control register
      DMACCR     : aliased DMACCR_Register;
      --  Channel transmit control register
      DMACTxCR   : aliased DMACTxCR_Register;
      --  Channel receive control register
      DMACRxCR   : aliased DMACRxCR_Register;
      --  Channel Tx descriptor list address register
      DMACTxDLAR : aliased DMACTxDLAR_Register;
      --  Channel Rx descriptor list address register
      DMACRxDLAR : aliased DMACRxDLAR_Register;
      --  Channel Tx descriptor tail pointer register
      DMACTxDTPR : aliased DMACTxDTPR_Register;
      --  Channel Rx descriptor tail pointer register
      DMACRxDTPR : aliased DMACRxDTPR_Register;
      --  Channel Tx descriptor ring length register
      DMACTxRLR  : aliased DMACTxRLR_Register;
      --  Channel Rx descriptor ring length register
      DMACRxRLR  : aliased DMACRxRLR_Register;
      --  Channel interrupt enable register
      DMACIER    : aliased DMACIER_Register;
      --  Channel Rx interrupt watchdog timer register
      DMACRxIWTR : aliased DMACRxIWTR_Register;
      --  Channel current application transmit descriptor register
      DMACCATxDR : aliased HAL.UInt32;
      --  Channel current application receive descriptor register
      DMACCARxDR : aliased HAL.UInt32;
      --  Channel current application transmit buffer register
      DMACCATxBR : aliased HAL.UInt32;
      --  Channel current application receive buffer register
      DMACCARxBR : aliased HAL.UInt32;
      --  Channel status register
      DMACSR     : aliased DMACSR_Register;
      --  Channel missed frame count register
      DMACMFCR   : aliased DMACMFCR_Register;
   end record
     with Volatile;

   for Ethernet_MAC_Peripheral use record
      DMAMR      at 16#0# range 0 .. 31;
      DMASBMR    at 16#4# range 0 .. 31;
      DMAISR     at 16#8# range 0 .. 31;
      DMADSR     at 16#C# range 0 .. 31;
      DMACCR     at 16#100# range 0 .. 31;
      DMACTxCR   at 16#104# range 0 .. 31;
      DMACRxCR   at 16#108# range 0 .. 31;
      DMACTxDLAR at 16#114# range 0 .. 31;
      DMACRxDLAR at 16#11C# range 0 .. 31;
      DMACTxDTPR at 16#120# range 0 .. 31;
      DMACRxDTPR at 16#128# range 0 .. 31;
      DMACTxRLR  at 16#12C# range 0 .. 31;
      DMACRxRLR  at 16#130# range 0 .. 31;
      DMACIER    at 16#134# range 0 .. 31;
      DMACRxIWTR at 16#138# range 0 .. 31;
      DMACCATxDR at 16#144# range 0 .. 31;
      DMACCARxDR at 16#14C# range 0 .. 31;
      DMACCATxBR at 16#154# range 0 .. 31;
      DMACCARxBR at 16#15C# range 0 .. 31;
      DMACSR     at 16#160# range 0 .. 31;
      DMACMFCR   at 16#16C# range 0 .. 31;
   end record;

   --  Ethernet: media access control (MAC)
   Ethernet_MAC_Periph : aliased Ethernet_MAC_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

end STM32_SVD.Ethernet;
