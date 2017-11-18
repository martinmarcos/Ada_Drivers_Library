--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CAN0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MC_MB_Field is HAL.UInt16;

   --  Mailbox Configuration 1 Register
   type MC_Register is record
      --  Mailbox n Enable/Disable
      MB             : MC_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MC_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MD1_MB_Field is HAL.UInt8;

   --  Mailbox Direction 1 Register
   type MD1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#FF#;
      --  Mailbox n Transmit/Receive
      MB             : MD1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MD1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRS1_MB_Field is HAL.UInt8;

   --  Transmission Request Set 1 Register
   type TRS1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Mailbox n Transmit Request
      MB             : TRS1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRS1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRR1_MB_Field is HAL.UInt8;

   --  Transmission Request Reset 1 Register
   type TRR1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Mailbox n Transmit Abort
      MB             : TRR1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TA1_MB_Field is HAL.UInt8;

   --  Transmission Acknowledge 1 Register
   type TA1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Mailbox n Transmit Acknowledge
      MB             : TA1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TA1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AA1_MB_Field is HAL.UInt8;

   --  Abort Acknowledge 1 Register
   type AA1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Mailbox n Abort Acknowledge
      MB             : AA1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AA1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RMP1_MB_Field is HAL.UInt16;

   --  Receive Message Pending 1 Register
   type RMP1_Register is record
      --  Mailbox n Message Pending
      MB             : RMP1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMP1_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RML1_MB_Field is HAL.UInt16;

   --  Receive Message Lost 1 Register
   type RML1_Register is record
      --  Read-only. Mailbox n Message Lost
      MB             : RML1_MB_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RML1_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MBTIF1_MB_Field is HAL.UInt8;

   --  Mailbox Transmit Interrupt Flag 1 Register
   type MBTIF1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Mailbox n Transmit Interrupt Pending
      MB             : MBTIF1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBTIF1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MBRIF1_MB_Field is HAL.UInt16;

   --  Mailbox Receive Interrupt Flag 1 Register
   type MBRIF1_Register is record
      --  Mailbox n Receive Interrupt Pending
      MB             : MBRIF1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBRIF1_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MBIM_MB_Field is HAL.UInt16;

   --  Mailbox Interrupt Mask 1 Register
   type MBIM_Register is record
      --  Mailbox n Transmit and Receive Interrupt Enable
      MB             : MBIM_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBIM_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RFH1_MB_Field is HAL.UInt8;

   --  Remote Frame Handling 1 Register
   type RFH1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Mailbox n Remote Frame Handling Enable
      MB             : RFH1_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RFH1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MB             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OPSS_MB_Field is HAL.UInt16;

   --  Overwrite Protection/Single Shot Transmission 1 Register
   type OPSS_Register is record
      --  Mailbox n Overwrite Protection Enable
      MB             : OPSS_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPSS_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MD2_MB_Field is HAL.UInt8;

   --  Mailbox Direction 2 Register
   type MD2_Register is record
      --  Mailbox n Transmit/Receive
      MB            : MD2_MB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MD2_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TRS2_MB_Field is HAL.UInt16;

   --  Transmission Request Set 2 Register
   type TRS2_Register is record
      --  Mailbox n Transmit Request
      MB             : TRS2_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRS2_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRR2_MB_Field is HAL.UInt16;

   --  Transmission Request Reset 2 Register
   type TRR2_Register is record
      --  Mailbox n Transmit Abort
      MB             : TRR2_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRR2_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TA2_MB_Field is HAL.UInt16;

   --  Transmission Acknowledge 2 Register
   type TA2_Register is record
      --  Mailbox n Transmit Acknowledge
      MB             : TA2_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TA2_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AA2_MB_Field is HAL.UInt16;

   --  Abort Acknowledge 2 Register
   type AA2_Register is record
      --  Mailbox n Abort Acknowledge
      MB             : AA2_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AA2_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RMP2_MB_Field is HAL.UInt8;

   --  Receive Message Pending 2 Register
   type RMP2_Register is record
      --  Mailbox n Message Pending
      MB            : RMP2_MB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMP2_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RML2_MB_Field is HAL.UInt8;

   --  Receive Message Lost 2 Register
   type RML2_Register is record
      --  Read-only. Mailbox n Message Lost
      MB            : RML2_MB_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RML2_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MBTIF2_MB_Field is HAL.UInt16;

   --  Mailbox Transmit Interrupt Flag 2 Register
   type MBTIF2_Register is record
      --  Mailbox n Transmit Interrupt Pending
      MB             : MBTIF2_MB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBTIF2_Register use record
      MB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MBRIF2_MB_Field is HAL.UInt8;

   --  Mailbox Receive Interrupt Flag 2 Register
   type MBRIF2_Register is record
      --  Mailbox n Receive Interrupt Pending
      MB            : MBRIF2_MB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBRIF2_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RFH2_MB_Field is HAL.UInt8;

   --  Remote Frame Handling 2 Register
   type RFH2_Register is record
      --  Mailbox n Remote Frame Handling Enable
      MB            : RFH2_MB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RFH2_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CLK_BRP_Field is HAL.UInt10;

   --  Clock Register
   type CLK_Register is record
      --  Bit Rate Prescaler
      BRP            : CLK_BRP_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      BRP            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TIMING_TSEG1_Field is HAL.UInt4;
   subtype TIMING_TSEG2_Field is HAL.UInt3;
   subtype TIMING_SJW_Field is HAL.UInt2;

   --  Timing Register
   type TIMING_Register is record
      --  Time Segment 1
      TSEG1          : TIMING_TSEG1_Field := 16#0#;
      --  Time Segment 2
      TSEG2          : TIMING_TSEG2_Field := 16#0#;
      --  Sampling
      SAM            : Boolean := False;
      --  Synchronization Jump Width
      SJW            : TIMING_SJW_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMING_Register use record
      TSEG1          at 0 range 0 .. 3;
      TSEG2          at 0 range 4 .. 6;
      SAM            at 0 range 7 .. 7;
      SJW            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Debug Register
   type DBG_Register is record
      --  Disable Transmit and Receive Error Counters
      DEC            : Boolean := False;
      --  Disable Receive Input Pin
      DRI            : Boolean := False;
      --  Disable Tx Output Pin
      DTO            : Boolean := False;
      --  Disable Internal Loop
      DIL            : Boolean := True;
      --  Mode Auto Acknowledge
      MAA            : Boolean := False;
      --  Mode Read Back
      MRB            : Boolean := False;
      --  unspecified
      Reserved_6_14  : HAL.UInt9 := 16#0#;
      --  CAN Debug Mode Enable
      CDE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBG_Register use record
      DEC            at 0 range 0 .. 0;
      DRI            at 0 range 1 .. 1;
      DTO            at 0 range 2 .. 2;
      DIL            at 0 range 3 .. 3;
      MAA            at 0 range 4 .. 4;
      MRB            at 0 range 5 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      CDE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype STAT_MBPTR_Field is HAL.UInt5;

   --  Status Register
   type STAT_Register is record
      --  Read-only. CAN Transmit Warning Flag
      WT             : Boolean;
      --  Read-only. CAN Receive Warning Flag
      WR             : Boolean;
      --  Read-only. CAN Error Passive Mode
      EP             : Boolean;
      --  Read-only. CAN Error Bus Off Mode
      EBO            : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. CAN Suspend Mode Acknowledge
      CSA            : Boolean;
      --  Read-only. CAN Configuration Mode Acknowledge
      CCA            : Boolean;
      --  Read-only. Mailbox Pointer
      MBPTR          : STAT_MBPTR_Field;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. Transmit Mode
      TRM            : Boolean;
      --  Read-only. Receive Mode
      REC            : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      WT             at 0 range 0 .. 0;
      WR             at 0 range 1 .. 1;
      EP             at 0 range 2 .. 2;
      EBO            at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      CSA            at 0 range 6 .. 6;
      CCA            at 0 range 7 .. 7;
      MBPTR          at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TRM            at 0 range 14 .. 14;
      REC            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CEC_RXECNT_Field is HAL.UInt8;
   subtype CEC_TXECNT_Field is HAL.UInt8;

   --  Error Counter Register
   type CEC_Register is record
      --  Receive Error Counter
      RXECNT         : CEC_RXECNT_Field := 16#0#;
      --  Transmit Error Counter
      TXECNT         : CEC_TXECNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_Register use record
      RXECNT         at 0 range 0 .. 7;
      TXECNT         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Global CAN Interrupt Status Register
   type GIS_Register is record
      --  Error Warning Transmit Interrupt Status
      EWTIS          : Boolean := False;
      --  Error Warning Receive Interrupt Status
      EWRIS          : Boolean := False;
      --  Error Passive Interrupt Status
      EPIS           : Boolean := False;
      --  Bus Off Interrupt Status
      BOIS           : Boolean := False;
      --  Wake Up Interrupt Status
      WUIS           : Boolean := False;
      --  Unimplemented Address Interrupt Status
      UIAIS          : Boolean := False;
      --  Abort Acknowledge Interrupt Status
      AAIS           : Boolean := False;
      --  Receive Message Lost Interrupt Status
      RMLIS          : Boolean := False;
      --  Universal Counter Exceeded Interrupt Status
      UCEIS          : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Access Denied Interrupt Status
      ADIS           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GIS_Register use record
      EWTIS          at 0 range 0 .. 0;
      EWRIS          at 0 range 1 .. 1;
      EPIS           at 0 range 2 .. 2;
      BOIS           at 0 range 3 .. 3;
      WUIS           at 0 range 4 .. 4;
      UIAIS          at 0 range 5 .. 5;
      AAIS           at 0 range 6 .. 6;
      RMLIS          at 0 range 7 .. 7;
      UCEIS          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ADIS           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Global CAN Interrupt Mask Register
   type GIM_Register is record
      --  Error Warning Transmit Interrupt Mask
      EWTIM          : Boolean := False;
      --  Error Warning Receive Interrupt Mask
      EWRIM          : Boolean := False;
      --  Error Passive Interrupt Mask
      EPIM           : Boolean := False;
      --  Bus Off Interrupt Mask
      BOIM           : Boolean := False;
      --  Wake Up Interrupt Mask
      WUIM           : Boolean := False;
      --  Unimplemented Address Interrupt Mask
      UIAIM          : Boolean := False;
      --  Abort Acknowledge Interrupt Mask
      AAIM           : Boolean := False;
      --  Receive Message Lost Interrupt Mask
      RMLIM          : Boolean := False;
      --  Universal Counter Exceeded Interrupt Mask
      UCEIM          : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Access Denied Interrupt Mask
      ADIM           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GIM_Register use record
      EWTIM          at 0 range 0 .. 0;
      EWRIM          at 0 range 1 .. 1;
      EPIM           at 0 range 2 .. 2;
      BOIM           at 0 range 3 .. 3;
      WUIM           at 0 range 4 .. 4;
      UIAIM          at 0 range 5 .. 5;
      AAIM           at 0 range 6 .. 6;
      RMLIM          at 0 range 7 .. 7;
      UCEIM          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ADIM           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Global CAN Interrupt Flag Register
   type GIF_Register is record
      --  Read-only. Error Warning Transmit Interrupt Flag
      EWTIF          : Boolean;
      --  Read-only. Error Warning Receive Interrupt Flag
      EWRIF          : Boolean;
      --  Read-only. Error Passive Interrupt Flag
      EPIF           : Boolean;
      --  Read-only. Bus Off Interrupt Flag
      BOIF           : Boolean;
      --  Read-only. Wake Up Interrupt Flag
      WUIF           : Boolean;
      --  Read-only. Unimplemented Address Interrupt Flag
      UIAIF          : Boolean;
      --  Read-only. Abort Acknowledge Interrupt Flag
      AAIF           : Boolean;
      --  Read-only. Receive Message Lost Interrupt Flag
      RMLIF          : Boolean;
      --  Read-only. Universal Counter Exceeded Interrupt Flag
      UCEIF          : Boolean;
      --  unspecified
      Reserved_9_9   : HAL.Bit;
      --  Read-only. Access Denied Interrupt Flag
      ADIF           : Boolean;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GIF_Register use record
      EWTIF          at 0 range 0 .. 0;
      EWRIF          at 0 range 1 .. 1;
      EPIF           at 0 range 2 .. 2;
      BOIF           at 0 range 3 .. 3;
      WUIF           at 0 range 4 .. 4;
      UIAIF          at 0 range 5 .. 5;
      AAIF           at 0 range 6 .. 6;
      RMLIF          at 0 range 7 .. 7;
      UCEIF          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ADIF           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  CAN Master Control Register
   type CTL_Register is record
      --  Software Reset
      SRS           : Boolean := False;
      --  Device Net Mode
      DNM           : Boolean := False;
      --  Auto Bus On
      ABO           : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Wake Up on CAN Bus Activity
      WBA           : Boolean := False;
      --  Sleep Mode Request
      SMR           : Boolean := False;
      --  CAN Suspend Mode Request
      CSR           : Boolean := False;
      --  CAN Configuration Mode Request
      CCR           : Boolean := True;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      SRS           at 0 range 0 .. 0;
      DNM           at 0 range 1 .. 1;
      ABO           at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      WBA           at 0 range 4 .. 4;
      SMR           at 0 range 5 .. 5;
      CSR           at 0 range 6 .. 6;
      CCR           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Pending Register
   type INT_Register is record
      --  Mailbox Receive Interrupt Output
      MBRIRQ        : Boolean := False;
      --  Mailbox Transmit Interrupt Output
      MBTIRQ        : Boolean := False;
      --  Global CAN Interrupt Output
      GIRQ          : Boolean := False;
      --  Sleep Mode Acknowledge
      SMACK         : Boolean := False;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Read-only. Serial Input To Transceiver
      CANTX         : Boolean := False;
      --  Read-only. Serial Input From Transceiver
      CANRX         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_Register use record
      MBRIRQ        at 0 range 0 .. 0;
      MBTIRQ        at 0 range 1 .. 1;
      GIRQ          at 0 range 2 .. 2;
      SMACK         at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      CANTX         at 0 range 6 .. 6;
      CANRX         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MBTD_TDPTR_Field is HAL.UInt5;

   --  Temporary Mailbox Disable Register
   type MBTD_Register is record
      --  Temporary Disable Pointer
      TDPTR         : MBTD_TDPTR_Field := 16#0#;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Read-only. Temporary Disable Acknowledge
      TDA           : Boolean := False;
      --  Temporary Disable Request
      TDR           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MBTD_Register use record
      TDPTR         at 0 range 0 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TDA           at 0 range 6 .. 6;
      TDR           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EWR_EWLREC_Field is HAL.UInt8;
   subtype EWR_EWLTEC_Field is HAL.UInt8;

   --  Error Counter Warning Level Register
   type EWR_Register is record
      --  Receive Error Warning Limit
      EWLREC         : EWR_EWLREC_Field := 16#60#;
      --  Transmit Error Warning Limit
      EWLTEC         : EWR_EWLTEC_Field := 16#60#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EWR_Register use record
      EWLREC         at 0 range 0 .. 7;
      EWLTEC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Error Status Register
   type ESR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Acknowledge Error
      ACKE          : Boolean := False;
      --  Stuff Bit Error
      SER           : Boolean := False;
      --  CRC Error
      CRCE          : Boolean := False;
      --  Stuck at Dominant
      SAO           : Boolean := True;
      --  Bit Error Flag
      BEF           : Boolean := False;
      --  Form Error
      FER           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ACKE          at 0 range 2 .. 2;
      SER           at 0 range 3 .. 3;
      CRCE          at 0 range 4 .. 4;
      SAO           at 0 range 5 .. 5;
      BEF           at 0 range 6 .. 6;
      FER           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UCCNT_COUNT_Field is HAL.UInt16;

   --  Universal Counter Register
   type UCCNT_Register is record
      --  Count Value
      COUNT          : UCCNT_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCCNT_Register use record
      COUNT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UCRC_UCVAL_Field is HAL.UInt16;

   --  Universal Counter Reload/Capture Register
   type UCRC_Register is record
      --  Universal Counter Value
      UCVAL          : UCRC_UCVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCRC_Register use record
      UCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UCCNF_UCCNF_Field is HAL.UInt4;

   --  Universal Counter Configuration Mode Register
   type UCCNF_Register is record
      --  Universal Counter Configuration
      UCCNF         : UCCNF_UCCNF_Field := 16#0#;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Universal Counter Reload/Clear
      UCRC          : Boolean := False;
      --  Universal Counter CAN Trigger
      UCCT          : Boolean := False;
      --  Universal Counter Enable
      UCE           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCCNF_Register use record
      UCCNF         at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      UCRC          at 0 range 5 .. 5;
      UCCT          at 0 range 6 .. 6;
      UCE           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ----------------------------
   -- AM cluster's Registers --
   ----------------------------

   subtype L_AM_EXTID_Field is HAL.UInt16;

   --  Acceptance Mask (L) Register
   type L_AM_Register is record
      --  Extended Identifier/Data Field Mask
      EXTID          : L_AM_EXTID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for L_AM_Register use record
      EXTID          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype H_AM_EXTID_Field is HAL.UInt2;
   subtype H_AM_BASEID_Field is HAL.UInt11;

   --  Acceptance Mask (H) Register
   type H_AM_Register is record
      --  Extended Identifier
      EXTID          : H_AM_EXTID_Field := 16#0#;
      --  Base Identifier
      BASEID         : H_AM_BASEID_Field := 16#0#;
      --  Acceptance Mask Identifier Extension
      AMIDE          : Boolean := False;
      --  Full Mask Data
      FMD            : Boolean := False;
      --  Filter on Delay Field
      FDF            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for H_AM_Register use record
      EXTID          at 0 range 0 .. 1;
      BASEID         at 0 range 2 .. 12;
      AMIDE          at 0 range 13 .. 13;
      FMD            at 0 range 14 .. 14;
      FDF            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Number of Acceptance Mask Registers
   type AM_Cluster is record
      --  Acceptance Mask (L) Register
      L : aliased L_AM_Register;
      --  Acceptance Mask (H) Register
      H : aliased H_AM_Register;
   end record
     with Volatile, Size => 64;

   for AM_Cluster use record
      L at 16#0# range 0 .. 31;
      H at 16#4# range 0 .. 31;
   end record;

   --  Number of Acceptance Mask Registers
   type AM_Clusters is array (0 .. 31) of AM_Cluster;

   ----------------------------
   -- MB cluster's Registers --
   ----------------------------

   subtype DATA0_MB_DFB7_Field is HAL.UInt8;
   subtype DATA0_MB_DFB6_Field is HAL.UInt8;

   --  Mailbox Word 0 Register
   type DATA0_MB_Register is record
      --  Data Field Byte 7
      DFB7           : DATA0_MB_DFB7_Field := 16#0#;
      --  Data Field Byte 6
      DFB6           : DATA0_MB_DFB6_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0_MB_Register use record
      DFB7           at 0 range 0 .. 7;
      DFB6           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DATA1_MB_DFB5_Field is HAL.UInt8;
   subtype DATA1_MB_DFB4_Field is HAL.UInt8;

   --  Mailbox Word 1 Register
   type DATA1_MB_Register is record
      --  Data Field Byte 5
      DFB5           : DATA1_MB_DFB5_Field := 16#0#;
      --  Data Field Byte 4
      DFB4           : DATA1_MB_DFB4_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA1_MB_Register use record
      DFB5           at 0 range 0 .. 7;
      DFB4           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DATA2_MB_DFB3_Field is HAL.UInt8;
   subtype DATA2_MB_DFB2_Field is HAL.UInt8;

   --  Mailbox Word 2 Register
   type DATA2_MB_Register is record
      --  Data Field Byte 3
      DFB3           : DATA2_MB_DFB3_Field := 16#0#;
      --  Data Field Byte 2
      DFB2           : DATA2_MB_DFB2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA2_MB_Register use record
      DFB3           at 0 range 0 .. 7;
      DFB2           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DATA3_MB_DFB1_Field is HAL.UInt8;
   subtype DATA3_MB_DFB0_Field is HAL.UInt8;

   --  Mailbox Word 3 Register
   type DATA3_MB_Register is record
      --  Data Field Byte 1
      DFB1           : DATA3_MB_DFB1_Field := 16#0#;
      --  Data Field Byte 0
      DFB0           : DATA3_MB_DFB0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA3_MB_Register use record
      DFB1           at 0 range 0 .. 7;
      DFB0           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LENGTH_MB_DLC_Field is HAL.UInt4;

   --  Mailbox Length Register
   type LENGTH_MB_Register is record
      --  Data Length Code
      DLC           : LENGTH_MB_DLC_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LENGTH_MB_Register use record
      DLC           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIMESTAMP_MB_TSV_Field is HAL.UInt16;

   --  Mailbox Time Stamp Register
   type TIMESTAMP_MB_Register is record
      --  Time Stamp Value
      TSV            : TIMESTAMP_MB_TSV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMESTAMP_MB_Register use record
      TSV            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ID0_MB_EXTID_Field is HAL.UInt16;

   --  Mailbox ID 0 Register
   type ID0_MB_Register is record
      --  Extended Identifier/Data Field Acceptance Code
      EXTID          : ID0_MB_EXTID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID0_MB_Register use record
      EXTID          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ID1_MB_EXTID_Field is HAL.UInt2;
   subtype ID1_MB_BASEID_Field is HAL.UInt11;

   --  Mailbox ID 1 Register
   type ID1_MB_Register is record
      --  Extended Identifier
      EXTID          : ID1_MB_EXTID_Field := 16#0#;
      --  Base Identifier
      BASEID         : ID1_MB_BASEID_Field := 16#0#;
      --  Identifier Extension
      IDE            : Boolean := False;
      --  Remote Transmission Request
      RTR            : Boolean := False;
      --  Acceptance Mask Enable
      AME            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID1_MB_Register use record
      EXTID          at 0 range 0 .. 1;
      BASEID         at 0 range 2 .. 12;
      IDE            at 0 range 13 .. 13;
      RTR            at 0 range 14 .. 14;
      AME            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Number of Mailbox Registers
   type MB_Cluster is record
      --  Mailbox Word 0 Register
      DATA0     : aliased DATA0_MB_Register;
      --  Mailbox Word 1 Register
      DATA1     : aliased DATA1_MB_Register;
      --  Mailbox Word 2 Register
      DATA2     : aliased DATA2_MB_Register;
      --  Mailbox Word 3 Register
      DATA3     : aliased DATA3_MB_Register;
      --  Mailbox Length Register
      LENGTH    : aliased LENGTH_MB_Register;
      --  Mailbox Time Stamp Register
      TIMESTAMP : aliased TIMESTAMP_MB_Register;
      --  Mailbox ID 0 Register
      ID0       : aliased ID0_MB_Register;
      --  Mailbox ID 1 Register
      ID1       : aliased ID1_MB_Register;
   end record
     with Volatile, Size => 256;

   for MB_Cluster use record
      DATA0     at 16#0# range 0 .. 31;
      DATA1     at 16#4# range 0 .. 31;
      DATA2     at 16#8# range 0 .. 31;
      DATA3     at 16#C# range 0 .. 31;
      LENGTH    at 16#10# range 0 .. 31;
      TIMESTAMP at 16#14# range 0 .. 31;
      ID0       at 16#18# range 0 .. 31;
      ID1       at 16#1C# range 0 .. 31;
   end record;

   --  Number of Mailbox Registers
   type MB_Clusters is array (0 .. 31) of MB_Cluster;

   ----------------------------
   -- AM cluster's Registers --
   ----------------------------

   ----------------------------
   -- MB cluster's Registers --
   ----------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Controller Area Network
   type CAN0_Peripheral is record
      --  Mailbox Configuration 1 Register
      MC1    : aliased MC_Register;
      --  Mailbox Direction 1 Register
      MD1    : aliased MD1_Register;
      --  Transmission Request Set 1 Register
      TRS1   : aliased TRS1_Register;
      --  Transmission Request Reset 1 Register
      TRR1   : aliased TRR1_Register;
      --  Transmission Acknowledge 1 Register
      TA1    : aliased TA1_Register;
      --  Abort Acknowledge 1 Register
      AA1    : aliased AA1_Register;
      --  Receive Message Pending 1 Register
      RMP1   : aliased RMP1_Register;
      --  Receive Message Lost 1 Register
      RML1   : aliased RML1_Register;
      --  Mailbox Transmit Interrupt Flag 1 Register
      MBTIF1 : aliased MBTIF1_Register;
      --  Mailbox Receive Interrupt Flag 1 Register
      MBRIF1 : aliased MBRIF1_Register;
      --  Mailbox Interrupt Mask 1 Register
      MBIM1  : aliased MBIM_Register;
      --  Remote Frame Handling 1 Register
      RFH1   : aliased RFH1_Register;
      --  Overwrite Protection/Single Shot Transmission 1 Register
      OPSS1  : aliased OPSS_Register;
      --  Mailbox Configuration 2 Register
      MC2    : aliased MC_Register;
      --  Mailbox Direction 2 Register
      MD2    : aliased MD2_Register;
      --  Transmission Request Set 2 Register
      TRS2   : aliased TRS2_Register;
      --  Transmission Request Reset 2 Register
      TRR2   : aliased TRR2_Register;
      --  Transmission Acknowledge 2 Register
      TA2    : aliased TA2_Register;
      --  Abort Acknowledge 2 Register
      AA2    : aliased AA2_Register;
      --  Receive Message Pending 2 Register
      RMP2   : aliased RMP2_Register;
      --  Receive Message Lost 2 Register
      RML2   : aliased RML2_Register;
      --  Mailbox Transmit Interrupt Flag 2 Register
      MBTIF2 : aliased MBTIF2_Register;
      --  Mailbox Receive Interrupt Flag 2 Register
      MBRIF2 : aliased MBRIF2_Register;
      --  Mailbox Interrupt Mask 2 Register
      MBIM2  : aliased MBIM_Register;
      --  Remote Frame Handling 2 Register
      RFH2   : aliased RFH2_Register;
      --  Overwrite Protection/Single Shot Transmission 2 Register
      OPSS2  : aliased OPSS_Register;
      --  Clock Register
      CLK    : aliased CLK_Register;
      --  Timing Register
      TIMING : aliased TIMING_Register;
      --  Debug Register
      DBG    : aliased DBG_Register;
      --  Status Register
      STAT   : aliased STAT_Register;
      --  Error Counter Register
      CEC    : aliased CEC_Register;
      --  Global CAN Interrupt Status Register
      GIS    : aliased GIS_Register;
      --  Global CAN Interrupt Mask Register
      GIM    : aliased GIM_Register;
      --  Global CAN Interrupt Flag Register
      GIF    : aliased GIF_Register;
      --  CAN Master Control Register
      CTL    : aliased CTL_Register;
      --  Interrupt Pending Register
      INT    : aliased INT_Register;
      --  Temporary Mailbox Disable Register
      MBTD   : aliased MBTD_Register;
      --  Error Counter Warning Level Register
      EWR    : aliased EWR_Register;
      --  Error Status Register
      ESR    : aliased ESR_Register;
      --  Universal Counter Register
      UCCNT  : aliased UCCNT_Register;
      --  Universal Counter Reload/Capture Register
      UCRC   : aliased UCRC_Register;
      --  Universal Counter Configuration Mode Register
      UCCNF  : aliased UCCNF_Register;
      --  Number of Acceptance Mask Registers
      AM     : aliased AM_Clusters;
      --  Number of Mailbox Registers
      MB     : aliased MB_Clusters;
   end record
     with Volatile;

   for CAN0_Peripheral use record
      MC1    at 16#0# range 0 .. 31;
      MD1    at 16#4# range 0 .. 31;
      TRS1   at 16#8# range 0 .. 31;
      TRR1   at 16#C# range 0 .. 31;
      TA1    at 16#10# range 0 .. 31;
      AA1    at 16#14# range 0 .. 31;
      RMP1   at 16#18# range 0 .. 31;
      RML1   at 16#1C# range 0 .. 31;
      MBTIF1 at 16#20# range 0 .. 31;
      MBRIF1 at 16#24# range 0 .. 31;
      MBIM1  at 16#28# range 0 .. 31;
      RFH1   at 16#2C# range 0 .. 31;
      OPSS1  at 16#30# range 0 .. 31;
      MC2    at 16#40# range 0 .. 31;
      MD2    at 16#44# range 0 .. 31;
      TRS2   at 16#48# range 0 .. 31;
      TRR2   at 16#4C# range 0 .. 31;
      TA2    at 16#50# range 0 .. 31;
      AA2    at 16#54# range 0 .. 31;
      RMP2   at 16#58# range 0 .. 31;
      RML2   at 16#5C# range 0 .. 31;
      MBTIF2 at 16#60# range 0 .. 31;
      MBRIF2 at 16#64# range 0 .. 31;
      MBIM2  at 16#68# range 0 .. 31;
      RFH2   at 16#6C# range 0 .. 31;
      OPSS2  at 16#70# range 0 .. 31;
      CLK    at 16#80# range 0 .. 31;
      TIMING at 16#84# range 0 .. 31;
      DBG    at 16#88# range 0 .. 31;
      STAT   at 16#8C# range 0 .. 31;
      CEC    at 16#90# range 0 .. 31;
      GIS    at 16#94# range 0 .. 31;
      GIM    at 16#98# range 0 .. 31;
      GIF    at 16#9C# range 0 .. 31;
      CTL    at 16#A0# range 0 .. 31;
      INT    at 16#A4# range 0 .. 31;
      MBTD   at 16#AC# range 0 .. 31;
      EWR    at 16#B0# range 0 .. 31;
      ESR    at 16#B4# range 0 .. 31;
      UCCNT  at 16#C4# range 0 .. 31;
      UCRC   at 16#C8# range 0 .. 31;
      UCCNF  at 16#CC# range 0 .. 31;
      AM     at 16#100# range 0 .. 2047;
      MB     at 16#200# range 0 .. 8191;
   end record;

   --  Controller Area Network
   CAN0_Periph : aliased CAN0_Peripheral
     with Import, Address => System'To_Address (16#41008200#);

   --  Controller Area Network
   CAN1_Periph : aliased CAN0_Peripheral
     with Import, Address => System'To_Address (16#40024200#);

end NRF_SVD.CAN0;
