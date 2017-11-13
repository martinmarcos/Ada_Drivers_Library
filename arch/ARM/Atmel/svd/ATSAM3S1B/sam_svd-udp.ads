--  This spec has been automatically generated from ATSAM3S1B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  USB Device Port
package SAM_SVD.UDP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype UDP_FRM_NUM_FRM_NUM_Field is HAL.UInt11;

   --  Frame Number Register
   type UDP_FRM_NUM_Register is record
      --  Read-only. Frame Number as Defined in the Packet Field Formats
      FRM_NUM        : UDP_FRM_NUM_FRM_NUM_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. Frame Error
      FRM_ERR        : Boolean;
      --  Read-only. Frame OK
      FRM_OK         : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_FRM_NUM_Register use record
      FRM_NUM        at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      FRM_ERR        at 0 range 16 .. 16;
      FRM_OK         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Global State Register
   type UDP_GLB_STAT_Register is record
      --  Function Address Enable
      FADDEN        : Boolean := False;
      --  Configured
      CONFG         : Boolean := False;
      --  Enable Send Resume
      ESR           : Boolean := False;
      RSMINPR       : Boolean := False;
      --  Remote Wake Up Enable
      RMWUPE        : Boolean := True;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_GLB_STAT_Register use record
      FADDEN        at 0 range 0 .. 0;
      CONFG         at 0 range 1 .. 1;
      ESR           at 0 range 2 .. 2;
      RSMINPR       at 0 range 3 .. 3;
      RMWUPE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype UDP_FADDR_FADD_Field is HAL.UInt7;

   --  Function Address Register
   type UDP_FADDR_Register is record
      --  Function Address Value
      FADD          : UDP_FADDR_FADD_Field := 16#0#;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Function Enable
      FEN           : Boolean := True;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_FADDR_Register use record
      FADD          at 0 range 0 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      FEN           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Interrupt Enable Register
   type UDP_IER_Register is record
      --  Write-only. Enable Endpoint 0 Interrupt
      EP0INT         : Boolean := False;
      --  Write-only. Enable Endpoint 1 Interrupt
      EP1INT         : Boolean := False;
      --  Write-only. Enable Endpoint 2Interrupt
      EP2INT         : Boolean := False;
      --  Write-only. Enable Endpoint 3 Interrupt
      EP3INT         : Boolean := False;
      --  Write-only. Enable Endpoint 4 Interrupt
      EP4INT         : Boolean := False;
      --  Write-only. Enable Endpoint 5 Interrupt
      EP5INT         : Boolean := False;
      --  Write-only. Enable Endpoint 6 Interrupt
      EP6INT         : Boolean := False;
      --  Write-only. Enable Endpoint 7 Interrupt
      EP7INT         : Boolean := False;
      --  Write-only. Enable UDP Suspend Interrupt
      RXSUSP         : Boolean := False;
      --  Write-only. Enable UDP Resume Interrupt
      RXRSM          : Boolean := False;
      --  Write-only.
      EXTRSM         : Boolean := False;
      --  Write-only. Enable Start Of Frame Interrupt
      SOFINT         : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Write-only. Enable UDP bus Wakeup Interrupt
      WAKEUP         : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_IER_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      EP6INT         at 0 range 6 .. 6;
      EP7INT         at 0 range 7 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Disable Register
   type UDP_IDR_Register is record
      --  Write-only. Disable Endpoint 0 Interrupt
      EP0INT         : Boolean := False;
      --  Write-only. Disable Endpoint 1 Interrupt
      EP1INT         : Boolean := False;
      --  Write-only. Disable Endpoint 2 Interrupt
      EP2INT         : Boolean := False;
      --  Write-only. Disable Endpoint 3 Interrupt
      EP3INT         : Boolean := False;
      --  Write-only. Disable Endpoint 4 Interrupt
      EP4INT         : Boolean := False;
      --  Write-only. Disable Endpoint 5 Interrupt
      EP5INT         : Boolean := False;
      --  Write-only. Disable Endpoint 6 Interrupt
      EP6INT         : Boolean := False;
      --  Write-only. Disable Endpoint 7 Interrupt
      EP7INT         : Boolean := False;
      --  Write-only. Disable UDP Suspend Interrupt
      RXSUSP         : Boolean := False;
      --  Write-only. Disable UDP Resume Interrupt
      RXRSM          : Boolean := False;
      --  Write-only.
      EXTRSM         : Boolean := False;
      --  Write-only. Disable Start Of Frame Interrupt
      SOFINT         : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Write-only. Disable USB Bus Interrupt
      WAKEUP         : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_IDR_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      EP6INT         at 0 range 6 .. 6;
      EP7INT         at 0 range 7 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Mask Register
   type UDP_IMR_Register is record
      --  Read-only. Mask Endpoint 0 Interrupt
      EP0INT         : Boolean;
      --  Read-only. Mask Endpoint 1 Interrupt
      EP1INT         : Boolean;
      --  Read-only. Mask Endpoint 2 Interrupt
      EP2INT         : Boolean;
      --  Read-only. Mask Endpoint 3 Interrupt
      EP3INT         : Boolean;
      --  Read-only. Mask Endpoint 4 Interrupt
      EP4INT         : Boolean;
      --  Read-only. Mask Endpoint 5 Interrupt
      EP5INT         : Boolean;
      --  Read-only. Mask Endpoint 6 Interrupt
      EP6INT         : Boolean;
      --  Read-only. Mask Endpoint 7 Interrupt
      EP7INT         : Boolean;
      --  Read-only. Mask UDP Suspend Interrupt
      RXSUSP         : Boolean;
      --  Read-only. Mask UDP Resume Interrupt.
      RXRSM          : Boolean;
      --  Read-only.
      EXTRSM         : Boolean;
      --  Read-only. Mask Start Of Frame Interrupt
      SOFINT         : Boolean;
      --  Read-only. UDP_IMR Bit 12
      BIT12          : Boolean;
      --  Read-only. USB Bus WAKEUP Interrupt
      WAKEUP         : Boolean;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_IMR_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      EP6INT         at 0 range 6 .. 6;
      EP7INT         at 0 range 7 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      BIT12          at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Status Register
   type UDP_ISR_Register is record
      --  Read-only. Endpoint 0 Interrupt Status
      EP0INT         : Boolean;
      --  Read-only. Endpoint 1 Interrupt Status
      EP1INT         : Boolean;
      --  Read-only. Endpoint 2 Interrupt Status
      EP2INT         : Boolean;
      --  Read-only. Endpoint 3 Interrupt Status
      EP3INT         : Boolean;
      --  Read-only. Endpoint 4 Interrupt Status
      EP4INT         : Boolean;
      --  Read-only. Endpoint 5 Interrupt Status
      EP5INT         : Boolean;
      --  Read-only. Endpoint 6 Interrupt Status
      EP6INT         : Boolean;
      --  Read-only. Endpoint 7Interrupt Status
      EP7INT         : Boolean;
      --  Read-only. UDP Suspend Interrupt Status
      RXSUSP         : Boolean;
      --  Read-only. UDP Resume Interrupt Status
      RXRSM          : Boolean;
      --  Read-only.
      EXTRSM         : Boolean;
      --  Read-only. Start of Frame Interrupt Status
      SOFINT         : Boolean;
      --  Read-only. End of BUS Reset Interrupt Status
      ENDBUSRES      : Boolean;
      --  Read-only. UDP Resume Interrupt Status
      WAKEUP         : Boolean;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_ISR_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      EP6INT         at 0 range 6 .. 6;
      EP7INT         at 0 range 7 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      ENDBUSRES      at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Clear Register
   type UDP_ICR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. Clear UDP Suspend Interrupt
      RXSUSP         : Boolean := False;
      --  Write-only. Clear UDP Resume Interrupt
      RXRSM          : Boolean := False;
      --  Write-only.
      EXTRSM         : Boolean := False;
      --  Write-only. Clear Start Of Frame Interrupt
      SOFINT         : Boolean := False;
      --  Write-only. Clear End of Bus Reset Interrupt
      ENDBUSRES      : Boolean := False;
      --  Write-only. Clear Wakeup Interrupt
      WAKEUP         : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_ICR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      ENDBUSRES      at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  UDP_RST_EP_EP array
   type UDP_RST_EP_EP_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for UDP_RST_EP_EP
   type UDP_RST_EP_EP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EP as a value
            Val : HAL.UInt8;
         when True =>
            --  EP as an array
            Arr : UDP_RST_EP_EP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for UDP_RST_EP_EP_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Reset Endpoint Register
   type UDP_RST_EP_Register is record
      --  Reset Endpoint 0
      EP            : UDP_RST_EP_EP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_RST_EP_Register use record
      EP            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Endpoint Type
   type CSR_EPTYPE_Field is
     (
      --  Control
      Ctrl,
      --  Isochronous OUT
      Iso_Out,
      --  Bulk OUT
      Bulk_Out,
      --  Interrupt OUT
      Int_Out,
      --  Isochronous IN
      Iso_In,
      --  Bulk IN
      Bulk_In,
      --  Interrupt IN
      Int_In)
     with Size => 3;
   for CSR_EPTYPE_Field use
     (Ctrl => 0,
      Iso_Out => 1,
      Bulk_Out => 2,
      Int_Out => 3,
      Iso_In => 5,
      Bulk_In => 6,
      Int_In => 7);

   subtype UDP_CSR_RXBYTECNT_Field is HAL.UInt11;

   --  Endpoint Control and Status Register
   type UDP_CSR_Register is record
      --  Generates an IN Packet with Data Previously Written in the DPR
      TXCOMP         : Boolean := False;
      --  Receive Data Bank 0
      RX_DATA_BK0    : Boolean := False;
      --  Received Setup
      RXSETUP        : Boolean := False;
      --  Stall Sent
      STALLSENT      : Boolean := False;
      --  Transmit Packet Ready
      TXPKTRDY       : Boolean := False;
      --  Force Stall (used by Control, Bulk and Isochronous Endpoints)
      FORCESTALL     : Boolean := False;
      --  Receive Data Bank 1 (only used by endpoints with ping-pong
      --  attributes)
      RX_DATA_BK1    : Boolean := False;
      --  Transfer Direction (only available for control endpoints)
      DIR            : Boolean := False;
      --  Endpoint Type
      EPTYPE         : CSR_EPTYPE_Field := SAM_SVD.UDP.Ctrl;
      --  Data Toggle
      DTGLE          : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Endpoint Enable Disable
      EPEDS          : Boolean := False;
      --  Number of Bytes Available in the FIFO
      RXBYTECNT      : UDP_CSR_RXBYTECNT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_CSR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RX_DATA_BK0    at 0 range 1 .. 1;
      RXSETUP        at 0 range 2 .. 2;
      STALLSENT      at 0 range 3 .. 3;
      TXPKTRDY       at 0 range 4 .. 4;
      FORCESTALL     at 0 range 5 .. 5;
      RX_DATA_BK1    at 0 range 6 .. 6;
      DIR            at 0 range 7 .. 7;
      EPTYPE         at 0 range 8 .. 10;
      DTGLE          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EPEDS          at 0 range 15 .. 15;
      RXBYTECNT      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Endpoint Control and Status Register
   type UDP_CSR_Registers is array (0 .. 7) of UDP_CSR_Register
     with Volatile;

   --  Endpoint Type
   type CSR0_ISOENDPT_EPTYPE_Field is
     (
      --  Control
      Ctrl,
      --  Isochronous OUT
      Iso_Out,
      --  Bulk OUT
      Bulk_Out,
      --  Interrupt OUT
      Int_Out,
      --  Isochronous IN
      Iso_In,
      --  Bulk IN
      Bulk_In,
      --  Interrupt IN
      Int_In)
     with Size => 3;
   for CSR0_ISOENDPT_EPTYPE_Field use
     (Ctrl => 0,
      Iso_Out => 1,
      Bulk_Out => 2,
      Int_Out => 3,
      Iso_In => 5,
      Bulk_In => 6,
      Int_In => 7);

   subtype UDP_CSR0_ISOENDPT_RXBYTECNT_Field is HAL.UInt11;

   --  Endpoint Control and Status Register
   type UDP_CSR0_ISOENDPT_Register is record
      --  Generates an IN Packet with Data Previously Written in the DPR
      TXCOMP         : Boolean := False;
      --  Receive Data Bank 0
      RX_DATA_BK0    : Boolean := False;
      --  Received Setup
      RXSETUP        : Boolean := False;
      --  A CRC error has been detected in an isochronous transfer
      ISOERROR       : Boolean := False;
      --  Transmit Packet Ready
      TXPKTRDY       : Boolean := False;
      --  Force Stall (used by Control, Bulk and Isochronous Endpoints)
      FORCESTALL     : Boolean := False;
      --  Receive Data Bank 1 (only used by endpoints with ping-pong
      --  attributes)
      RX_DATA_BK1    : Boolean := False;
      --  Transfer Direction (only available for control endpoints)
      DIR            : Boolean := False;
      --  Endpoint Type
      EPTYPE         : CSR0_ISOENDPT_EPTYPE_Field := SAM_SVD.UDP.Ctrl;
      --  Data Toggle
      DTGLE          : Boolean := False;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Endpoint Enable Disable
      EPEDS          : Boolean := False;
      --  Number of Bytes Available in the FIFO
      RXBYTECNT      : UDP_CSR0_ISOENDPT_RXBYTECNT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_CSR0_ISOENDPT_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RX_DATA_BK0    at 0 range 1 .. 1;
      RXSETUP        at 0 range 2 .. 2;
      ISOERROR       at 0 range 3 .. 3;
      TXPKTRDY       at 0 range 4 .. 4;
      FORCESTALL     at 0 range 5 .. 5;
      RX_DATA_BK1    at 0 range 6 .. 6;
      DIR            at 0 range 7 .. 7;
      EPTYPE         at 0 range 8 .. 10;
      DTGLE          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EPEDS          at 0 range 15 .. 15;
      RXBYTECNT      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype UDP_FDR_FIFO_DATA_Field is HAL.UInt8;

   --  Endpoint FIFO Data Register
   type UDP_FDR_Register is record
      --  FIFO Data Value
      FIFO_DATA     : UDP_FDR_FIFO_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_FDR_Register use record
      FIFO_DATA     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Endpoint FIFO Data Register
   type UDP_FDR_Registers is array (0 .. 7) of UDP_FDR_Register
     with Volatile;

   --  Transceiver Control Register
   type UDP_TXVC_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Transceiver Disable
      TXVDIS         : Boolean := True;
      --  Pull-up On
      PUON           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_TXVC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TXVDIS         at 0 range 8 .. 8;
      PUON           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UDP_Disc is
     (
      Default,
      UDP_Disc_0_Isoendpt);

   --  USB Device Port
   type UDP_Peripheral
     (Discriminent : UDP_Disc := Default)
   is record
      --  Frame Number Register
      FRM_NUM       : aliased UDP_FRM_NUM_Register;
      --  Global State Register
      GLB_STAT      : aliased UDP_GLB_STAT_Register;
      --  Function Address Register
      FADDR         : aliased UDP_FADDR_Register;
      --  Interrupt Enable Register
      IER           : aliased UDP_IER_Register;
      --  Interrupt Disable Register
      IDR           : aliased UDP_IDR_Register;
      --  Interrupt Mask Register
      IMR           : aliased UDP_IMR_Register;
      --  Interrupt Status Register
      ISR           : aliased UDP_ISR_Register;
      --  Interrupt Clear Register
      ICR           : aliased UDP_ICR_Register;
      --  Reset Endpoint Register
      RST_EP        : aliased UDP_RST_EP_Register;
      --  Endpoint FIFO Data Register
      FDR           : aliased UDP_FDR_Registers;
      --  Transceiver Control Register
      TXVC          : aliased UDP_TXVC_Register;
      case Discriminent is
         when Default =>
            --  Endpoint Control and Status Register
            CSR : aliased UDP_CSR_Registers;
         when UDP_Disc_0_Isoendpt =>
            --  Endpoint Control and Status Register
            CSR0_ISOENDPT : aliased UDP_CSR0_ISOENDPT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UDP_Peripheral use record
      FRM_NUM       at 16#0# range 0 .. 31;
      GLB_STAT      at 16#4# range 0 .. 31;
      FADDR         at 16#8# range 0 .. 31;
      IER           at 16#10# range 0 .. 31;
      IDR           at 16#14# range 0 .. 31;
      IMR           at 16#18# range 0 .. 31;
      ISR           at 16#1C# range 0 .. 31;
      ICR           at 16#20# range 0 .. 31;
      RST_EP        at 16#28# range 0 .. 31;
      FDR           at 16#50# range 0 .. 255;
      TXVC          at 16#74# range 0 .. 31;
      CSR           at 16#30# range 0 .. 255;
      CSR0_ISOENDPT at 16#30# range 0 .. 31;
   end record;

   --  USB Device Port
   UDP_Periph : aliased UDP_Peripheral
     with Import, Address => UDP_Base;

end SAM_SVD.UDP;
