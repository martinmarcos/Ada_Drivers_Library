--  This spec has been automatically generated from ATSAM3U4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  USB High Speed Device Port
package SAM_SVD.UDPHS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype UDPHS_CTRL_DEV_ADDR_Field is HAL.UInt7;

   --  UDPHS Control Register
   type UDPHS_CTRL_Register is record
      --  UDPHS Address
      DEV_ADDR       : UDPHS_CTRL_DEV_ADDR_Field := 16#0#;
      --  Function Address Enable
      FADDR_EN       : Boolean := False;
      --  UDPHS Enable
      EN_UDPHS       : Boolean := False;
      --  Detach Command
      DETACH         : Boolean := True;
      --  Send Remote Wake Up
      REWAKEUP       : Boolean := False;
      --  Pull-Down Disable
      PULLD_DIS      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_CTRL_Register use record
      DEV_ADDR       at 0 range 0 .. 6;
      FADDR_EN       at 0 range 7 .. 7;
      EN_UDPHS       at 0 range 8 .. 8;
      DETACH         at 0 range 9 .. 9;
      REWAKEUP       at 0 range 10 .. 10;
      PULLD_DIS      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype UDPHS_FNUM_MICRO_FRAME_NUM_Field is HAL.UInt3;
   subtype UDPHS_FNUM_FRAME_NUMBER_Field is HAL.UInt11;

   --  UDPHS Frame Number Register
   type UDPHS_FNUM_Register is record
      --  Read-only. Microframe Number
      MICRO_FRAME_NUM : UDPHS_FNUM_MICRO_FRAME_NUM_Field;
      --  Read-only. Frame Number as defined in the Packet Field Formats
      FRAME_NUMBER    : UDPHS_FNUM_FRAME_NUMBER_Field;
      --  unspecified
      Reserved_14_30  : HAL.UInt17;
      --  Read-only. Frame Number CRC Error
      FNUM_ERR        : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_FNUM_Register use record
      MICRO_FRAME_NUM at 0 range 0 .. 2;
      FRAME_NUMBER    at 0 range 3 .. 13;
      Reserved_14_30  at 0 range 14 .. 30;
      FNUM_ERR        at 0 range 31 .. 31;
   end record;

   --  UDPHS Interrupt Enable Register
   type UDPHS_IEN_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Suspend Interrupt Enable
      DET_SUSPD      : Boolean := False;
      --  Micro-SOF Interrupt Enable
      MICRO_SOF      : Boolean := False;
      --  SOF Interrupt Enable
      INT_SOF        : Boolean := False;
      --  End Of Reset Interrupt Enable
      ENDRESET       : Boolean := True;
      --  Wake Up CPU Interrupt Enable
      WAKE_UP        : Boolean := False;
      --  End Of Resume Interrupt Enable
      ENDOFRSM       : Boolean := False;
      --  Upstream Resume Interrupt Enable
      UPSTR_RES      : Boolean := False;
      --  Endpoint 0 Interrupt Enable
      EPT_0          : Boolean := False;
      --  Endpoint 1 Interrupt Enable
      EPT_1          : Boolean := False;
      --  Endpoint 2 Interrupt Enable
      EPT_2          : Boolean := False;
      --  Endpoint 3 Interrupt Enable
      EPT_3          : Boolean := False;
      --  Endpoint 4 Interrupt Enable
      EPT_4          : Boolean := False;
      --  Endpoint 5 Interrupt Enable
      EPT_5          : Boolean := False;
      --  Endpoint 6 Interrupt Enable
      EPT_6          : Boolean := False;
      --  unspecified
      Reserved_15_24 : HAL.UInt10 := 16#0#;
      --  DMA Channel 1 Interrupt Enable
      DMA_1          : Boolean := False;
      --  DMA Channel 2 Interrupt Enable
      DMA_2          : Boolean := False;
      --  DMA Channel 3 Interrupt Enable
      DMA_3          : Boolean := False;
      --  DMA Channel 4 Interrupt Enable
      DMA_4          : Boolean := False;
      --  DMA Channel 5 Interrupt Enable
      DMA_5          : Boolean := False;
      --  DMA Channel 6 Interrupt Enable
      DMA_6          : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_IEN_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DET_SUSPD      at 0 range 1 .. 1;
      MICRO_SOF      at 0 range 2 .. 2;
      INT_SOF        at 0 range 3 .. 3;
      ENDRESET       at 0 range 4 .. 4;
      WAKE_UP        at 0 range 5 .. 5;
      ENDOFRSM       at 0 range 6 .. 6;
      UPSTR_RES      at 0 range 7 .. 7;
      EPT_0          at 0 range 8 .. 8;
      EPT_1          at 0 range 9 .. 9;
      EPT_2          at 0 range 10 .. 10;
      EPT_3          at 0 range 11 .. 11;
      EPT_4          at 0 range 12 .. 12;
      EPT_5          at 0 range 13 .. 13;
      EPT_6          at 0 range 14 .. 14;
      Reserved_15_24 at 0 range 15 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  UDPHS Interrupt Status Register
   type UDPHS_INTSTA_Register is record
      --  Read-only. Speed Status
      SPEED          : Boolean;
      --  Read-only. Suspend Interrupt
      DET_SUSPD      : Boolean;
      --  Read-only. Micro Start Of Frame Interrupt
      MICRO_SOF      : Boolean;
      --  Read-only. Start Of Frame Interrupt
      INT_SOF        : Boolean;
      --  Read-only. End Of Reset Interrupt
      ENDRESET       : Boolean;
      --  Read-only. Wake Up CPU Interrupt
      WAKE_UP        : Boolean;
      --  Read-only. End Of Resume Interrupt
      ENDOFRSM       : Boolean;
      --  Read-only. Upstream Resume Interrupt
      UPSTR_RES      : Boolean;
      --  Read-only. Endpoint 0 Interrupt
      EPT_0          : Boolean;
      --  Read-only. Endpoint 1 Interrupt
      EPT_1          : Boolean;
      --  Read-only. Endpoint 2 Interrupt
      EPT_2          : Boolean;
      --  Read-only. Endpoint 3 Interrupt
      EPT_3          : Boolean;
      --  Read-only. Endpoint 4 Interrupt
      EPT_4          : Boolean;
      --  Read-only. Endpoint 5 Interrupt
      EPT_5          : Boolean;
      --  Read-only. Endpoint 6 Interrupt
      EPT_6          : Boolean;
      --  unspecified
      Reserved_15_24 : HAL.UInt10;
      --  Read-only. DMA Channel 1 Interrupt
      DMA_1          : Boolean;
      --  Read-only. DMA Channel 2 Interrupt
      DMA_2          : Boolean;
      --  Read-only. DMA Channel 3 Interrupt
      DMA_3          : Boolean;
      --  Read-only. DMA Channel 4 Interrupt
      DMA_4          : Boolean;
      --  Read-only. DMA Channel 5 Interrupt
      DMA_5          : Boolean;
      --  Read-only. DMA Channel 6 Interrupt
      DMA_6          : Boolean;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_INTSTA_Register use record
      SPEED          at 0 range 0 .. 0;
      DET_SUSPD      at 0 range 1 .. 1;
      MICRO_SOF      at 0 range 2 .. 2;
      INT_SOF        at 0 range 3 .. 3;
      ENDRESET       at 0 range 4 .. 4;
      WAKE_UP        at 0 range 5 .. 5;
      ENDOFRSM       at 0 range 6 .. 6;
      UPSTR_RES      at 0 range 7 .. 7;
      EPT_0          at 0 range 8 .. 8;
      EPT_1          at 0 range 9 .. 9;
      EPT_2          at 0 range 10 .. 10;
      EPT_3          at 0 range 11 .. 11;
      EPT_4          at 0 range 12 .. 12;
      EPT_5          at 0 range 13 .. 13;
      EPT_6          at 0 range 14 .. 14;
      Reserved_15_24 at 0 range 15 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  UDPHS Clear Interrupt Register
   type UDPHS_CLRINT_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Suspend Interrupt Clear
      DET_SUSPD     : Boolean := False;
      --  Write-only. Micro Start Of Frame Interrupt Clear
      MICRO_SOF     : Boolean := False;
      --  Write-only. Start Of Frame Interrupt Clear
      INT_SOF       : Boolean := False;
      --  Write-only. End Of Reset Interrupt Clear
      ENDRESET      : Boolean := False;
      --  Write-only. Wake Up CPU Interrupt Clear
      WAKE_UP       : Boolean := False;
      --  Write-only. End Of Resume Interrupt Clear
      ENDOFRSM      : Boolean := False;
      --  Write-only. Upstream Resume Interrupt Clear
      UPSTR_RES     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_CLRINT_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DET_SUSPD     at 0 range 1 .. 1;
      MICRO_SOF     at 0 range 2 .. 2;
      INT_SOF       at 0 range 3 .. 3;
      ENDRESET      at 0 range 4 .. 4;
      WAKE_UP       at 0 range 5 .. 5;
      ENDOFRSM      at 0 range 6 .. 6;
      UPSTR_RES     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  UDPHS Endpoints Reset Register
   type UDPHS_EPTRST_Register is record
      --  Write-only. Endpoint 0 Reset
      EPT_0         : Boolean := False;
      --  Write-only. Endpoint 1 Reset
      EPT_1         : Boolean := False;
      --  Write-only. Endpoint 2 Reset
      EPT_2         : Boolean := False;
      --  Write-only. Endpoint 3 Reset
      EPT_3         : Boolean := False;
      --  Write-only. Endpoint 4 Reset
      EPT_4         : Boolean := False;
      --  Write-only. Endpoint 5 Reset
      EPT_5         : Boolean := False;
      --  Write-only. Endpoint 6 Reset
      EPT_6         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTRST_Register use record
      EPT_0         at 0 range 0 .. 0;
      EPT_1         at 0 range 1 .. 1;
      EPT_2         at 0 range 2 .. 2;
      EPT_3         at 0 range 3 .. 3;
      EPT_4         at 0 range 4 .. 4;
      EPT_5         at 0 range 5 .. 5;
      EPT_6         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Speed Configuration
   type TST_SPEED_CFG_Field is
     (
      --  Normal Mode: The macro is in Full Speed mode, ready to make a High
      --  Speed identification, if the host supports it and then to
      --  automatically switch to High Speed mode
      Normal,
      --  Force High Speed: Set this value to force the hardware to work in
      --  High Speed mode. Only for debug or test purpose.
      High_Speed,
      --  Force Full Speed: Set this value to force the hardware to work only
      --  in Full Speed mode. In this configuration, the macro will not respond
      --  to a High Speed reset handshake.
      Full_Speed)
     with Size => 2;
   for TST_SPEED_CFG_Field use
     (Normal => 0,
      High_Speed => 2,
      Full_Speed => 3);

   --  UDPHS Test Register
   type UDPHS_TST_Register is record
      --  Speed Configuration
      SPEED_CFG     : TST_SPEED_CFG_Field := SAM_SVD.UDPHS.Normal;
      --  Test J Mode
      TST_J         : Boolean := False;
      --  Test K Mode
      TST_K         : Boolean := False;
      --  Test Packet Mode
      TST_PKT       : Boolean := False;
      --  OpMode2
      OPMODE2       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_TST_Register use record
      SPEED_CFG     at 0 range 0 .. 1;
      TST_J         at 0 range 2 .. 2;
      TST_K         at 0 range 3 .. 3;
      TST_PKT       at 0 range 4 .. 4;
      OPMODE2       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Endpoint Size
   type EPTCFG0_EPT_SIZE_Field is
     (
      --  8 bytes
      EPTCFG0_EPT_SIZE_Field_8,
      --  16 bytes
      EPTCFG0_EPT_SIZE_Field_16,
      --  32 bytes
      EPTCFG0_EPT_SIZE_Field_32,
      --  64 bytes
      EPTCFG0_EPT_SIZE_Field_64,
      --  128 bytes
      EPTCFG0_EPT_SIZE_Field_128,
      --  256 bytes
      EPTCFG0_EPT_SIZE_Field_256,
      --  512 bytes
      EPTCFG0_EPT_SIZE_Field_512,
      --  1024 bytes
      EPTCFG0_EPT_SIZE_Field_1024)
     with Size => 3;
   for EPTCFG0_EPT_SIZE_Field use
     (EPTCFG0_EPT_SIZE_Field_8 => 0,
      EPTCFG0_EPT_SIZE_Field_16 => 1,
      EPTCFG0_EPT_SIZE_Field_32 => 2,
      EPTCFG0_EPT_SIZE_Field_64 => 3,
      EPTCFG0_EPT_SIZE_Field_128 => 4,
      EPTCFG0_EPT_SIZE_Field_256 => 5,
      EPTCFG0_EPT_SIZE_Field_512 => 6,
      EPTCFG0_EPT_SIZE_Field_1024 => 7);

   --  Endpoint Type
   type EPTCFG0_EPT_TYPE_Field is
     (
      --  Control endpoint
      Ctrl8,
      --  Isochronous endpoint
      Iso,
      --  Bulk endpoint
      Bulk,
      --  Interrupt endpoint
      Int)
     with Size => 2;
   for EPTCFG0_EPT_TYPE_Field use
     (Ctrl8 => 0,
      Iso => 1,
      Bulk => 2,
      Int => 3);

   --  Number of Banks
   type EPTCFG0_BK_NUMBER_Field is
     (
      --  Zero bank, the endpoint is not mapped in memory
      EPTCFG0_BK_NUMBER_Field_0,
      --  One bank (bank 0)
      EPTCFG0_BK_NUMBER_Field_1,
      --  Double bank (Ping-Pong: bank0/bank1)
      EPTCFG0_BK_NUMBER_Field_2,
      --  Triple bank (bank0/bank1/bank2)
      EPTCFG0_BK_NUMBER_Field_3)
     with Size => 2;
   for EPTCFG0_BK_NUMBER_Field use
     (EPTCFG0_BK_NUMBER_Field_0 => 0,
      EPTCFG0_BK_NUMBER_Field_1 => 1,
      EPTCFG0_BK_NUMBER_Field_2 => 2,
      EPTCFG0_BK_NUMBER_Field_3 => 3);

   subtype EPTCFG_NB_TRANS_Field is HAL.UInt2;

   --  UDPHS Endpoint Configuration Register (endpoint = 0)
   type EPTCFG_Register is record
      --  Endpoint Size
      EPT_SIZE       : EPTCFG0_EPT_SIZE_Field :=
                        SAM_SVD.UDPHS.EPTCFG0_EPT_SIZE_Field_8;
      --  Endpoint Direction
      EPT_DIR        : Boolean := False;
      --  Endpoint Type
      EPT_TYPE       : EPTCFG0_EPT_TYPE_Field := SAM_SVD.UDPHS.Ctrl8;
      --  Number of Banks
      BK_NUMBER      : EPTCFG0_BK_NUMBER_Field :=
                        SAM_SVD.UDPHS.EPTCFG0_BK_NUMBER_Field_0;
      --  Number Of Transaction per Microframe
      NB_TRANS       : EPTCFG_NB_TRANS_Field := 16#0#;
      --  unspecified
      Reserved_10_30 : HAL.UInt21 := 16#0#;
      --  Endpoint Mapped
      EPT_MAPD       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTCFG_Register use record
      EPT_SIZE       at 0 range 0 .. 2;
      EPT_DIR        at 0 range 3 .. 3;
      EPT_TYPE       at 0 range 4 .. 5;
      BK_NUMBER      at 0 range 6 .. 7;
      NB_TRANS       at 0 range 8 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      EPT_MAPD       at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 0)
   type EPTCTLENB_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  Write-only. NYET Disable (Only for High Speed Bulk OUT endpoints)
      NYET_DIS       : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Received SETUP
      RX_SETUP       : Boolean := False;
      --  Write-only. Stall Sent Interrupt Enable
      STALL_SNT      : Boolean := False;
      --  Write-only. NAKIN Interrupt Enable
      NAK_IN         : Boolean := False;
      --  Write-only. NAKOUT Interrupt Enable
      NAK_OUT        : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTCTLENB_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      NYET_DIS       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY          at 0 range 11 .. 11;
      RX_SETUP       at 0 range 12 .. 12;
      STALL_SNT      at 0 range 13 .. 13;
      NAK_IN         at 0 range 14 .. 14;
      NAK_OUT        at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 0)
   type UDPHS_EPTCTLENB0_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB0_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 0)
   type EPTCTLDIS_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  Write-only. NYET Enable (Only for High Speed Bulk OUT endpoints)
      NYET_DIS       : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Received SETUP Interrupt Disable
      RX_SETUP       : Boolean := False;
      --  Write-only. Stall Sent Interrupt Disable
      STALL_SNT      : Boolean := False;
      --  Write-only. NAKIN Interrupt Disable
      NAK_IN         : Boolean := False;
      --  Write-only. NAKOUT Interrupt Disable
      NAK_OUT        : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTCTLDIS_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      NYET_DIS       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY          at 0 range 11 .. 11;
      RX_SETUP       at 0 range 12 .. 12;
      STALL_SNT      at 0 range 13 .. 13;
      NAK_IN         at 0 range 14 .. 14;
      NAK_OUT        at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 0)
   type UDPHS_EPTCTLDIS0_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS0_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 0)
   type EPTCTL_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled (Not for CONTROL Endpoints)
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  Read-only. NYET Disable (Only for High Speed Bulk OUT endpoints)
      NYET_DIS       : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready Interrupt Enabled
      TXRDY          : Boolean;
      --  Read-only. Received SETUP Interrupt Enabled
      RX_SETUP       : Boolean;
      --  Read-only. Stall Sent Interrupt Enabled
      STALL_SNT      : Boolean;
      --  Read-only. NAKIN Interrupt Enabled
      NAK_IN         : Boolean;
      --  Read-only. NAKOUT Interrupt Enabled
      NAK_OUT        : Boolean;
      --  unspecified
      Reserved_16_17 : HAL.UInt2;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTCTL_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      NYET_DIS       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY          at 0 range 11 .. 11;
      RX_SETUP       at 0 range 12 .. 12;
      STALL_SNT      at 0 range 13 .. 13;
      NAK_IN         at 0 range 14 .. 14;
      NAK_OUT        at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 0)
   type UDPHS_EPTCTL0_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL0_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 0)
   type EPTSETSTA_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Write-only. Stall Handshake Request Set
      FRCESTALL      : Boolean := False;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTSETSTA_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      FRCESTALL      at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 0)
   type UDPHS_EPTSETSTA0_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA0_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 0)
   type EPTCLRSTA_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Write-only. Stall Handshake Request Clear
      FRCESTALL      : Boolean := False;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Received SETUP Clear
      RX_SETUP       : Boolean := False;
      --  Write-only. Stall Sent Clear
      STALL_SNT      : Boolean := False;
      --  Write-only. NAKIN Clear
      NAK_IN         : Boolean := False;
      --  Write-only. NAKOUT Clear
      NAK_OUT        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTCLRSTA_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      FRCESTALL      at 0 range 5 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RX_SETUP       at 0 range 12 .. 12;
      STALL_SNT      at 0 range 13 .. 13;
      NAK_IN         at 0 range 14 .. 14;
      NAK_OUT        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 0)
   type UDPHS_EPTCLRSTA0_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA0_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA0_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Reserved for High Bandwidth Isochronous Endpoint
      Data2,
      --  Reserved for High Bandwidth Isochronous Endpoint
      Mdata)
     with Size => 2;
   for EPTSTA0_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   subtype EPTSTA_CURBK_CTLDIR_Field is HAL.UInt2;

   --  Busy Bank Number
   type EPTSTA0_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA0_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA0_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA0_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA0_BUSY_BANK_STA_Field use
     (EPTSTA0_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA0_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA0_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype EPTSTA_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 0)
   type EPTSTA_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5;
      --  Read-only. Stall Handshake Request
      FRCESTALL     : Boolean;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA  : EPTSTA0_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW     : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL    : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT     : Boolean;
      --  Read-only. TX Packet Ready
      TXRDY         : Boolean;
      --  Read-only. Received SETUP
      RX_SETUP      : Boolean;
      --  Read-only. Stall Sent
      STALL_SNT     : Boolean;
      --  Read-only. NAK IN
      NAK_IN        : Boolean;
      --  Read-only. NAK OUT
      NAK_OUT       : Boolean;
      --  Read-only. Current Bank/Control Direction
      CURBK_CTLDIR  : EPTSTA_CURBK_CTLDIR_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA : EPTSTA0_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT    : EPTSTA_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT     : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTSTA_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      FRCESTALL     at 0 range 5 .. 5;
      TOGGLESQ_STA  at 0 range 6 .. 7;
      ERR_OVFLW     at 0 range 8 .. 8;
      RXRDY_TXKL    at 0 range 9 .. 9;
      TX_COMPLT     at 0 range 10 .. 10;
      TXRDY         at 0 range 11 .. 11;
      RX_SETUP      at 0 range 12 .. 12;
      STALL_SNT     at 0 range 13 .. 13;
      NAK_IN        at 0 range 14 .. 14;
      NAK_OUT       at 0 range 15 .. 15;
      CURBK_CTLDIR  at 0 range 16 .. 17;
      BUSY_BANK_STA at 0 range 18 .. 19;
      BYTE_COUNT    at 0 range 20 .. 30;
      SHRT_PCKT     at 0 range 31 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA0_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA0_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA0_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA0_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA0_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 0)
   type UDPHS_EPTSTA0_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA0_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA0_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA0_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA0_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA0_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 1)
   type UDPHS_EPTCTLENB1_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB1_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 1)
   type UDPHS_EPTCTLDIS1_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS1_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 1)
   type UDPHS_EPTCTL1_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL1_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 1)
   type UDPHS_EPTSETSTA1_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA1_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 1)
   type UDPHS_EPTCLRSTA1_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA1_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA1_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA1_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA1_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA1_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA1_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 1)
   type UDPHS_EPTSTA1_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA1_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA1_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA1_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA1_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA1_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 2)
   type UDPHS_EPTCTLENB2_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB2_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 2)
   type UDPHS_EPTCTLDIS2_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS2_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 2)
   type UDPHS_EPTCTL2_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL2_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 2)
   type UDPHS_EPTSETSTA2_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA2_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 2)
   type UDPHS_EPTCLRSTA2_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA2_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA2_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA2_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA2_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA2_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA2_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 2)
   type UDPHS_EPTSTA2_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA2_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA2_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA2_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA2_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA2_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 3)
   type UDPHS_EPTCTLENB3_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB3_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 3)
   type UDPHS_EPTCTLDIS3_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS3_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 3)
   type UDPHS_EPTCTL3_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL3_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 3)
   type UDPHS_EPTSETSTA3_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA3_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 3)
   type UDPHS_EPTCLRSTA3_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA3_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA3_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA3_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA3_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA3_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA3_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 3)
   type UDPHS_EPTSTA3_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA3_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA3_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA3_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA3_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA3_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 4)
   type UDPHS_EPTCTLENB4_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB4_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 4)
   type UDPHS_EPTCTLDIS4_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS4_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 4)
   type UDPHS_EPTCTL4_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL4_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 4)
   type UDPHS_EPTSETSTA4_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA4_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 4)
   type UDPHS_EPTCLRSTA4_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA4_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA4_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA4_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA4_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA4_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA4_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 4)
   type UDPHS_EPTSTA4_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA4_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA4_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA4_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA4_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA4_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 5)
   type UDPHS_EPTCTLENB5_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB5_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 5)
   type UDPHS_EPTCTLDIS5_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS5_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 5)
   type UDPHS_EPTCTL5_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL5_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 5)
   type UDPHS_EPTSETSTA5_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA5_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 5)
   type UDPHS_EPTCLRSTA5_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA5_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA5_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA5_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA5_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA5_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA5_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 5)
   type UDPHS_EPTSTA5_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA5_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA5_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA5_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA5_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA5_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Enable Register (endpoint = 6)
   type UDPHS_EPTCTLENB6_ISOENDPT_Register is record
      --  Write-only. Endpoint Enable
      EPT_ENABL      : Boolean := False;
      --  Write-only. Packet Auto-Valid Enable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Enable (Only for high bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Enable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Enable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Enable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Enable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Interrupt Enable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Enable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Send/Short Packet Interrupt Enable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLENB6_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Disable Register (endpoint = 6)
   type UDPHS_EPTCTLDIS6_ISOENDPT_Register is record
      --  Write-only. Endpoint Disable
      EPT_DISABL     : Boolean := False;
      --  Write-only. Packet Auto-Valid Disable
      AUTO_VALID     : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Interrupts Disable DMA
      INTDIS_DMA     : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. DATAx Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean := False;
      --  Write-only. MDATA Interrupt Disable (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean := False;
      --  Write-only. Overflow Error Interrupt Disable
      ERR_OVFLW      : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Disable
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Interrupt Disable
      TX_COMPLT      : Boolean := False;
      --  Write-only. TX Packet Ready/Transaction Error Interrupt Disable
      TXRDY_TRER     : Boolean := False;
      --  Write-only. Error Flow Interrupt Disable
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Disable
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. bank flush error Interrupt Disable
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Write-only. Busy Bank Interrupt Disable
      BUSY_BANK      : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Write-only. Short Packet Interrupt Disable
      SHRT_PCKT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTLDIS6_ISOENDPT_Register use record
      EPT_DISABL     at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Control Register (endpoint = 6)
   type UDPHS_EPTCTL6_ISOENDPT_Register is record
      --  Read-only. Endpoint Enable
      EPT_ENABL      : Boolean;
      --  Read-only. Packet Auto-Valid Enabled
      AUTO_VALID     : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Interrupt Disables DMA
      INTDIS_DMA     : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. DATAx Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      DATAX_RX       : Boolean;
      --  Read-only. MDATA Interrupt Enabled (Only for High Bandwidth
      --  Isochronous OUT endpoints)
      MDATA_RX       : Boolean;
      --  Read-only. Overflow Error Interrupt Enabled
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data Interrupt Enabled
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete Interrupt Enabled
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error Interrupt Enabled
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow Interrupt Enabled
      ERR_FL_ISO     : Boolean;
      --  Read-only. ISO CRC Error/Number of Transaction Error Interrupt
      --  Enabled
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error Interrupt Enabled
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_17 : HAL.UInt3;
      --  Read-only. Busy Bank Interrupt Enabled
      BUSY_BANK      : Boolean;
      --  unspecified
      Reserved_19_30 : HAL.UInt12;
      --  Read-only. Short Packet Interrupt Enabled
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCTL6_ISOENDPT_Register use record
      EPT_ENABL      at 0 range 0 .. 0;
      AUTO_VALID     at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      INTDIS_DMA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DATAX_RX       at 0 range 6 .. 6;
      MDATA_RX       at 0 range 7 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      BUSY_BANK      at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   --  UDPHS Endpoint Set Status Register (endpoint = 6)
   type UDPHS_EPTSETSTA6_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. KILL Bank Set (for IN Endpoint)
      RXRDY_TXKL     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. TX Packet Ready Set
      TXRDY_TRER     : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSETSTA6_ISOENDPT_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  UDPHS Endpoint Clear Status Register (endpoint = 6)
   type UDPHS_EPTCLRSTA6_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Write-only. Data Toggle Clear
      TOGGLESQ       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Write-only. Received OUT Data Clear
      RXRDY_TXKL     : Boolean := False;
      --  Write-only. Transmitted IN Data Complete Clear
      TX_COMPLT      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Error Flow Clear
      ERR_FL_ISO     : Boolean := False;
      --  Write-only. Number of Transaction Error Clear
      ERR_CRC_NTR    : Boolean := False;
      --  Write-only. Bank Flush Error Clear
      ERR_FLUSH      : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTCLRSTA6_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Toggle Sequencing
   type EPTSTA6_ISOENDPT_TOGGLESQ_STA_Field is
     (
      --  DATA0
      Data0,
      --  DATA1
      Data1,
      --  Data2 (only for High Bandwidth Isochronous Endpoint)
      Data2,
      --  MData (only for High Bandwidth Isochronous Endpoint)
      Mdata)
     with Size => 2;
   for EPTSTA6_ISOENDPT_TOGGLESQ_STA_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Mdata => 3);

   --  Current Bank
   type EPTSTA6_ISOENDPT_CURBK_Field is
     (
      --  Bank 0 (or single bank)
      Bank0,
      --  Bank 1
      Bank1,
      --  Bank 2
      Bank2)
     with Size => 2;
   for EPTSTA6_ISOENDPT_CURBK_Field use
     (Bank0 => 0,
      Bank1 => 1,
      Bank2 => 2);

   --  Busy Bank Number
   type EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field is
     (
      --  1 busy bank
      EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field_1Busybank,
      --  2 busy banks
      EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks,
      --  3 busy banks
      EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks)
     with Size => 2;
   for EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field use
     (EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field_1Busybank => 0,
      EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field_2Busybanks => 1,
      EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field_3Busybanks => 2);

   subtype UDPHS_EPTSTA6_ISOENDPT_BYTE_COUNT_Field is HAL.UInt11;

   --  UDPHS Endpoint Status Register (endpoint = 6)
   type UDPHS_EPTSTA6_ISOENDPT_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6;
      --  Read-only. Toggle Sequencing
      TOGGLESQ_STA   : EPTSTA6_ISOENDPT_TOGGLESQ_STA_Field;
      --  Read-only. Overflow Error
      ERR_OVFLW      : Boolean;
      --  Read-only. Received OUT Data/KILL Bank
      RXRDY_TXKL     : Boolean;
      --  Read-only. Transmitted IN Data Complete
      TX_COMPLT      : Boolean;
      --  Read-only. TX Packet Ready/Transaction Error
      TXRDY_TRER     : Boolean;
      --  Read-only. Error Flow
      ERR_FL_ISO     : Boolean;
      --  Read-only. CRC ISO Error/Number of Transaction Error
      ERR_CRC_NTR    : Boolean;
      --  Read-only. Bank Flush Error
      ERR_FLUSH      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Current Bank
      CURBK          : EPTSTA6_ISOENDPT_CURBK_Field;
      --  Read-only. Busy Bank Number
      BUSY_BANK_STA  : EPTSTA6_ISOENDPT_BUSY_BANK_STA_Field;
      --  Read-only. UDPHS Byte Count
      BYTE_COUNT     : UDPHS_EPTSTA6_ISOENDPT_BYTE_COUNT_Field;
      --  Read-only. Short Packet
      SHRT_PCKT      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDPHS_EPTSTA6_ISOENDPT_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      TOGGLESQ_STA   at 0 range 6 .. 7;
      ERR_OVFLW      at 0 range 8 .. 8;
      RXRDY_TXKL     at 0 range 9 .. 9;
      TX_COMPLT      at 0 range 10 .. 10;
      TXRDY_TRER     at 0 range 11 .. 11;
      ERR_FL_ISO     at 0 range 12 .. 12;
      ERR_CRC_NTR    at 0 range 13 .. 13;
      ERR_FLUSH      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURBK          at 0 range 16 .. 17;
      BUSY_BANK_STA  at 0 range 18 .. 19;
      BYTE_COUNT     at 0 range 20 .. 30;
      SHRT_PCKT      at 0 range 31 .. 31;
   end record;

   subtype DMACONTROL_BUFF_LENGTH_Field is HAL.UInt16;

   --  UDPHS DMA Channel Control Register (channel = 0)
   type DMACONTROL_Register is record
      --  (Channel Enable Command)
      CHANN_ENB     : Boolean := False;
      --  Load Next Channel Transfer Descriptor Enable (Command)
      LDNXT_DSC     : Boolean := False;
      --  End of Transfer Enable (Control)
      END_TR_EN     : Boolean := False;
      --  End of Buffer Enable (Control)
      END_B_EN      : Boolean := False;
      --  End of Transfer Interrupt Enable
      END_TR_IT     : Boolean := False;
      --  End of Buffer Interrupt Enable
      END_BUFFIT    : Boolean := False;
      --  Descriptor Loaded Interrupt Enable
      DESC_LD_IT    : Boolean := False;
      --  Burst Lock Enable
      BURST_LCK     : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Buffer Byte Length (Write-only)
      BUFF_LENGTH   : DMACONTROL_BUFF_LENGTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMACONTROL_Register use record
      CHANN_ENB     at 0 range 0 .. 0;
      LDNXT_DSC     at 0 range 1 .. 1;
      END_TR_EN     at 0 range 2 .. 2;
      END_B_EN      at 0 range 3 .. 3;
      END_TR_IT     at 0 range 4 .. 4;
      END_BUFFIT    at 0 range 5 .. 5;
      DESC_LD_IT    at 0 range 6 .. 6;
      BURST_LCK     at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      BUFF_LENGTH   at 0 range 16 .. 31;
   end record;

   subtype DMASTATUS_BUFF_COUNT_Field is HAL.UInt16;

   --  UDPHS DMA Channel Status Register (channel = 0)
   type DMASTATUS_Register is record
      --  Channel Enable Status
      CHANN_ENB     : Boolean := False;
      --  Channel Active Status
      CHANN_ACT     : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  End of Channel Transfer Status
      END_TR_ST     : Boolean := False;
      --  End of Channel Buffer Status
      END_BF_ST     : Boolean := False;
      --  Descriptor Loaded Status
      DESC_LDST     : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
      --  Buffer Byte Count
      BUFF_COUNT    : DMASTATUS_BUFF_COUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMASTATUS_Register use record
      CHANN_ENB     at 0 range 0 .. 0;
      CHANN_ACT     at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      END_TR_ST     at 0 range 4 .. 4;
      END_BF_ST     at 0 range 5 .. 5;
      DESC_LDST     at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
      BUFF_COUNT    at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UDPHS_Disc is
     (
      Default,
      Isoendpt);

   --  USB High Speed Device Port
   type UDPHS_Peripheral
     (Discriminent : UDPHS_Disc := Default)
   is record
      --  UDPHS Control Register
      CTRL                : aliased UDPHS_CTRL_Register;
      --  UDPHS Frame Number Register
      FNUM                : aliased UDPHS_FNUM_Register;
      --  UDPHS Interrupt Enable Register
      IEN                 : aliased UDPHS_IEN_Register;
      --  UDPHS Interrupt Status Register
      INTSTA              : aliased UDPHS_INTSTA_Register;
      --  UDPHS Clear Interrupt Register
      CLRINT              : aliased UDPHS_CLRINT_Register;
      --  UDPHS Endpoints Reset Register
      EPTRST              : aliased UDPHS_EPTRST_Register;
      --  UDPHS Test Register
      TST                 : aliased UDPHS_TST_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 0)
      EPTCFG0             : aliased EPTCFG_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 1)
      EPTCFG1             : aliased EPTCFG_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 2)
      EPTCFG2             : aliased EPTCFG_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 3)
      EPTCFG3             : aliased EPTCFG_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 4)
      EPTCFG4             : aliased EPTCFG_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 5)
      EPTCFG5             : aliased EPTCFG_Register;
      --  UDPHS Endpoint Configuration Register (endpoint = 6)
      EPTCFG6             : aliased EPTCFG_Register;
      --  UDPHS DMA Next Descriptor Address Register (channel = 0)
      DMANXTDSC0          : aliased HAL.UInt32;
      --  UDPHS DMA Channel Address Register (channel = 0)
      DMAADDRESS0         : aliased HAL.UInt32;
      --  UDPHS DMA Channel Control Register (channel = 0)
      DMACONTROL0         : aliased DMACONTROL_Register;
      --  UDPHS DMA Channel Status Register (channel = 0)
      DMASTATUS0          : aliased DMASTATUS_Register;
      --  UDPHS DMA Next Descriptor Address Register (channel = 1)
      DMANXTDSC1          : aliased HAL.UInt32;
      --  UDPHS DMA Channel Address Register (channel = 1)
      DMAADDRESS1         : aliased HAL.UInt32;
      --  UDPHS DMA Channel Control Register (channel = 1)
      DMACONTROL1         : aliased DMACONTROL_Register;
      --  UDPHS DMA Channel Status Register (channel = 1)
      DMASTATUS1          : aliased DMASTATUS_Register;
      --  UDPHS DMA Next Descriptor Address Register (channel = 2)
      DMANXTDSC2          : aliased HAL.UInt32;
      --  UDPHS DMA Channel Address Register (channel = 2)
      DMAADDRESS2         : aliased HAL.UInt32;
      --  UDPHS DMA Channel Control Register (channel = 2)
      DMACONTROL2         : aliased DMACONTROL_Register;
      --  UDPHS DMA Channel Status Register (channel = 2)
      DMASTATUS2          : aliased DMASTATUS_Register;
      --  UDPHS DMA Next Descriptor Address Register (channel = 3)
      DMANXTDSC3          : aliased HAL.UInt32;
      --  UDPHS DMA Channel Address Register (channel = 3)
      DMAADDRESS3         : aliased HAL.UInt32;
      --  UDPHS DMA Channel Control Register (channel = 3)
      DMACONTROL3         : aliased DMACONTROL_Register;
      --  UDPHS DMA Channel Status Register (channel = 3)
      DMASTATUS3          : aliased DMASTATUS_Register;
      --  UDPHS DMA Next Descriptor Address Register (channel = 4)
      DMANXTDSC4          : aliased HAL.UInt32;
      --  UDPHS DMA Channel Address Register (channel = 4)
      DMAADDRESS4         : aliased HAL.UInt32;
      --  UDPHS DMA Channel Control Register (channel = 4)
      DMACONTROL4         : aliased DMACONTROL_Register;
      --  UDPHS DMA Channel Status Register (channel = 4)
      DMASTATUS4          : aliased DMASTATUS_Register;
      --  UDPHS DMA Next Descriptor Address Register (channel = 5)
      DMANXTDSC5          : aliased HAL.UInt32;
      --  UDPHS DMA Channel Address Register (channel = 5)
      DMAADDRESS5         : aliased HAL.UInt32;
      --  UDPHS DMA Channel Control Register (channel = 5)
      DMACONTROL5         : aliased DMACONTROL_Register;
      --  UDPHS DMA Channel Status Register (channel = 5)
      DMASTATUS5          : aliased DMASTATUS_Register;
      case Discriminent is
         when Default =>
            --  UDPHS Endpoint Control Enable Register (endpoint = 0)
            EPTCTLENB0 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 0)
            EPTCTLDIS0 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 0)
            EPTCTL0 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 0)
            EPTSETSTA0 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 0)
            EPTCLRSTA0 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 0)
            EPTSTA0 : aliased EPTSTA_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 1)
            EPTCTLENB1 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 1)
            EPTCTLDIS1 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 1)
            EPTCTL1 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 1)
            EPTSETSTA1 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 1)
            EPTCLRSTA1 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 1)
            EPTSTA1 : aliased EPTSTA_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 2)
            EPTCTLENB2 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 2)
            EPTCTLDIS2 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 2)
            EPTCTL2 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 2)
            EPTSETSTA2 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 2)
            EPTCLRSTA2 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 2)
            EPTSTA2 : aliased EPTSTA_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 3)
            EPTCTLENB3 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 3)
            EPTCTLDIS3 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 3)
            EPTCTL3 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 3)
            EPTSETSTA3 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 3)
            EPTCLRSTA3 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 3)
            EPTSTA3 : aliased EPTSTA_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 4)
            EPTCTLENB4 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 4)
            EPTCTLDIS4 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 4)
            EPTCTL4 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 4)
            EPTSETSTA4 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 4)
            EPTCLRSTA4 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 4)
            EPTSTA4 : aliased EPTSTA_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 5)
            EPTCTLENB5 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 5)
            EPTCTLDIS5 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 5)
            EPTCTL5 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 5)
            EPTSETSTA5 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 5)
            EPTCLRSTA5 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 5)
            EPTSTA5 : aliased EPTSTA_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 6)
            EPTCTLENB6 : aliased EPTCTLENB_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 6)
            EPTCTLDIS6 : aliased EPTCTLDIS_Register;
            --  UDPHS Endpoint Control Register (endpoint = 6)
            EPTCTL6 : aliased EPTCTL_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 6)
            EPTSETSTA6 : aliased EPTSETSTA_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 6)
            EPTCLRSTA6 : aliased EPTCLRSTA_Register;
            --  UDPHS Endpoint Status Register (endpoint = 6)
            EPTSTA6 : aliased EPTSTA_Register;
         when Isoendpt =>
            --  UDPHS Endpoint Control Enable Register (endpoint = 0)
            EPTCTLENB0_ISOENDPT : aliased UDPHS_EPTCTLENB0_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 0)
            EPTCTLDIS0_ISOENDPT : aliased UDPHS_EPTCTLDIS0_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 0)
            EPTCTL0_ISOENDPT : aliased UDPHS_EPTCTL0_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 0)
            EPTSETSTA0_ISOENDPT : aliased UDPHS_EPTSETSTA0_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 0)
            EPTCLRSTA0_ISOENDPT : aliased UDPHS_EPTCLRSTA0_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 0)
            EPTSTA0_ISOENDPT : aliased UDPHS_EPTSTA0_ISOENDPT_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 1)
            EPTCTLENB1_ISOENDPT : aliased UDPHS_EPTCTLENB1_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 1)
            EPTCTLDIS1_ISOENDPT : aliased UDPHS_EPTCTLDIS1_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 1)
            EPTCTL1_ISOENDPT : aliased UDPHS_EPTCTL1_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 1)
            EPTSETSTA1_ISOENDPT : aliased UDPHS_EPTSETSTA1_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 1)
            EPTCLRSTA1_ISOENDPT : aliased UDPHS_EPTCLRSTA1_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 1)
            EPTSTA1_ISOENDPT : aliased UDPHS_EPTSTA1_ISOENDPT_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 2)
            EPTCTLENB2_ISOENDPT : aliased UDPHS_EPTCTLENB2_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 2)
            EPTCTLDIS2_ISOENDPT : aliased UDPHS_EPTCTLDIS2_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 2)
            EPTCTL2_ISOENDPT : aliased UDPHS_EPTCTL2_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 2)
            EPTSETSTA2_ISOENDPT : aliased UDPHS_EPTSETSTA2_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 2)
            EPTCLRSTA2_ISOENDPT : aliased UDPHS_EPTCLRSTA2_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 2)
            EPTSTA2_ISOENDPT : aliased UDPHS_EPTSTA2_ISOENDPT_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 3)
            EPTCTLENB3_ISOENDPT : aliased UDPHS_EPTCTLENB3_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 3)
            EPTCTLDIS3_ISOENDPT : aliased UDPHS_EPTCTLDIS3_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 3)
            EPTCTL3_ISOENDPT : aliased UDPHS_EPTCTL3_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 3)
            EPTSETSTA3_ISOENDPT : aliased UDPHS_EPTSETSTA3_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 3)
            EPTCLRSTA3_ISOENDPT : aliased UDPHS_EPTCLRSTA3_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 3)
            EPTSTA3_ISOENDPT : aliased UDPHS_EPTSTA3_ISOENDPT_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 4)
            EPTCTLENB4_ISOENDPT : aliased UDPHS_EPTCTLENB4_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 4)
            EPTCTLDIS4_ISOENDPT : aliased UDPHS_EPTCTLDIS4_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 4)
            EPTCTL4_ISOENDPT : aliased UDPHS_EPTCTL4_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 4)
            EPTSETSTA4_ISOENDPT : aliased UDPHS_EPTSETSTA4_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 4)
            EPTCLRSTA4_ISOENDPT : aliased UDPHS_EPTCLRSTA4_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 4)
            EPTSTA4_ISOENDPT : aliased UDPHS_EPTSTA4_ISOENDPT_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 5)
            EPTCTLENB5_ISOENDPT : aliased UDPHS_EPTCTLENB5_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 5)
            EPTCTLDIS5_ISOENDPT : aliased UDPHS_EPTCTLDIS5_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 5)
            EPTCTL5_ISOENDPT : aliased UDPHS_EPTCTL5_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 5)
            EPTSETSTA5_ISOENDPT : aliased UDPHS_EPTSETSTA5_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 5)
            EPTCLRSTA5_ISOENDPT : aliased UDPHS_EPTCLRSTA5_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 5)
            EPTSTA5_ISOENDPT : aliased UDPHS_EPTSTA5_ISOENDPT_Register;
            --  UDPHS Endpoint Control Enable Register (endpoint = 6)
            EPTCTLENB6_ISOENDPT : aliased UDPHS_EPTCTLENB6_ISOENDPT_Register;
            --  UDPHS Endpoint Control Disable Register (endpoint = 6)
            EPTCTLDIS6_ISOENDPT : aliased UDPHS_EPTCTLDIS6_ISOENDPT_Register;
            --  UDPHS Endpoint Control Register (endpoint = 6)
            EPTCTL6_ISOENDPT : aliased UDPHS_EPTCTL6_ISOENDPT_Register;
            --  UDPHS Endpoint Set Status Register (endpoint = 6)
            EPTSETSTA6_ISOENDPT : aliased UDPHS_EPTSETSTA6_ISOENDPT_Register;
            --  UDPHS Endpoint Clear Status Register (endpoint = 6)
            EPTCLRSTA6_ISOENDPT : aliased UDPHS_EPTCLRSTA6_ISOENDPT_Register;
            --  UDPHS Endpoint Status Register (endpoint = 6)
            EPTSTA6_ISOENDPT : aliased UDPHS_EPTSTA6_ISOENDPT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UDPHS_Peripheral use record
      CTRL                at 16#0# range 0 .. 31;
      FNUM                at 16#4# range 0 .. 31;
      IEN                 at 16#10# range 0 .. 31;
      INTSTA              at 16#14# range 0 .. 31;
      CLRINT              at 16#18# range 0 .. 31;
      EPTRST              at 16#1C# range 0 .. 31;
      TST                 at 16#E0# range 0 .. 31;
      EPTCFG0             at 16#100# range 0 .. 31;
      EPTCFG1             at 16#120# range 0 .. 31;
      EPTCFG2             at 16#140# range 0 .. 31;
      EPTCFG3             at 16#160# range 0 .. 31;
      EPTCFG4             at 16#180# range 0 .. 31;
      EPTCFG5             at 16#1A0# range 0 .. 31;
      EPTCFG6             at 16#1C0# range 0 .. 31;
      DMANXTDSC0          at 16#300# range 0 .. 31;
      DMAADDRESS0         at 16#304# range 0 .. 31;
      DMACONTROL0         at 16#308# range 0 .. 31;
      DMASTATUS0          at 16#30C# range 0 .. 31;
      DMANXTDSC1          at 16#310# range 0 .. 31;
      DMAADDRESS1         at 16#314# range 0 .. 31;
      DMACONTROL1         at 16#318# range 0 .. 31;
      DMASTATUS1          at 16#31C# range 0 .. 31;
      DMANXTDSC2          at 16#320# range 0 .. 31;
      DMAADDRESS2         at 16#324# range 0 .. 31;
      DMACONTROL2         at 16#328# range 0 .. 31;
      DMASTATUS2          at 16#32C# range 0 .. 31;
      DMANXTDSC3          at 16#330# range 0 .. 31;
      DMAADDRESS3         at 16#334# range 0 .. 31;
      DMACONTROL3         at 16#338# range 0 .. 31;
      DMASTATUS3          at 16#33C# range 0 .. 31;
      DMANXTDSC4          at 16#340# range 0 .. 31;
      DMAADDRESS4         at 16#344# range 0 .. 31;
      DMACONTROL4         at 16#348# range 0 .. 31;
      DMASTATUS4          at 16#34C# range 0 .. 31;
      DMANXTDSC5          at 16#350# range 0 .. 31;
      DMAADDRESS5         at 16#354# range 0 .. 31;
      DMACONTROL5         at 16#358# range 0 .. 31;
      DMASTATUS5          at 16#35C# range 0 .. 31;
      EPTCTLENB0          at 16#104# range 0 .. 31;
      EPTCTLDIS0          at 16#108# range 0 .. 31;
      EPTCTL0             at 16#10C# range 0 .. 31;
      EPTSETSTA0          at 16#114# range 0 .. 31;
      EPTCLRSTA0          at 16#118# range 0 .. 31;
      EPTSTA0             at 16#11C# range 0 .. 31;
      EPTCTLENB1          at 16#124# range 0 .. 31;
      EPTCTLDIS1          at 16#128# range 0 .. 31;
      EPTCTL1             at 16#12C# range 0 .. 31;
      EPTSETSTA1          at 16#134# range 0 .. 31;
      EPTCLRSTA1          at 16#138# range 0 .. 31;
      EPTSTA1             at 16#13C# range 0 .. 31;
      EPTCTLENB2          at 16#144# range 0 .. 31;
      EPTCTLDIS2          at 16#148# range 0 .. 31;
      EPTCTL2             at 16#14C# range 0 .. 31;
      EPTSETSTA2          at 16#154# range 0 .. 31;
      EPTCLRSTA2          at 16#158# range 0 .. 31;
      EPTSTA2             at 16#15C# range 0 .. 31;
      EPTCTLENB3          at 16#164# range 0 .. 31;
      EPTCTLDIS3          at 16#168# range 0 .. 31;
      EPTCTL3             at 16#16C# range 0 .. 31;
      EPTSETSTA3          at 16#174# range 0 .. 31;
      EPTCLRSTA3          at 16#178# range 0 .. 31;
      EPTSTA3             at 16#17C# range 0 .. 31;
      EPTCTLENB4          at 16#184# range 0 .. 31;
      EPTCTLDIS4          at 16#188# range 0 .. 31;
      EPTCTL4             at 16#18C# range 0 .. 31;
      EPTSETSTA4          at 16#194# range 0 .. 31;
      EPTCLRSTA4          at 16#198# range 0 .. 31;
      EPTSTA4             at 16#19C# range 0 .. 31;
      EPTCTLENB5          at 16#1A4# range 0 .. 31;
      EPTCTLDIS5          at 16#1A8# range 0 .. 31;
      EPTCTL5             at 16#1AC# range 0 .. 31;
      EPTSETSTA5          at 16#1B4# range 0 .. 31;
      EPTCLRSTA5          at 16#1B8# range 0 .. 31;
      EPTSTA5             at 16#1BC# range 0 .. 31;
      EPTCTLENB6          at 16#1C4# range 0 .. 31;
      EPTCTLDIS6          at 16#1C8# range 0 .. 31;
      EPTCTL6             at 16#1CC# range 0 .. 31;
      EPTSETSTA6          at 16#1D4# range 0 .. 31;
      EPTCLRSTA6          at 16#1D8# range 0 .. 31;
      EPTSTA6             at 16#1DC# range 0 .. 31;
      EPTCTLENB0_ISOENDPT at 16#104# range 0 .. 31;
      EPTCTLDIS0_ISOENDPT at 16#108# range 0 .. 31;
      EPTCTL0_ISOENDPT    at 16#10C# range 0 .. 31;
      EPTSETSTA0_ISOENDPT at 16#114# range 0 .. 31;
      EPTCLRSTA0_ISOENDPT at 16#118# range 0 .. 31;
      EPTSTA0_ISOENDPT    at 16#11C# range 0 .. 31;
      EPTCTLENB1_ISOENDPT at 16#124# range 0 .. 31;
      EPTCTLDIS1_ISOENDPT at 16#128# range 0 .. 31;
      EPTCTL1_ISOENDPT    at 16#12C# range 0 .. 31;
      EPTSETSTA1_ISOENDPT at 16#134# range 0 .. 31;
      EPTCLRSTA1_ISOENDPT at 16#138# range 0 .. 31;
      EPTSTA1_ISOENDPT    at 16#13C# range 0 .. 31;
      EPTCTLENB2_ISOENDPT at 16#144# range 0 .. 31;
      EPTCTLDIS2_ISOENDPT at 16#148# range 0 .. 31;
      EPTCTL2_ISOENDPT    at 16#14C# range 0 .. 31;
      EPTSETSTA2_ISOENDPT at 16#154# range 0 .. 31;
      EPTCLRSTA2_ISOENDPT at 16#158# range 0 .. 31;
      EPTSTA2_ISOENDPT    at 16#15C# range 0 .. 31;
      EPTCTLENB3_ISOENDPT at 16#164# range 0 .. 31;
      EPTCTLDIS3_ISOENDPT at 16#168# range 0 .. 31;
      EPTCTL3_ISOENDPT    at 16#16C# range 0 .. 31;
      EPTSETSTA3_ISOENDPT at 16#174# range 0 .. 31;
      EPTCLRSTA3_ISOENDPT at 16#178# range 0 .. 31;
      EPTSTA3_ISOENDPT    at 16#17C# range 0 .. 31;
      EPTCTLENB4_ISOENDPT at 16#184# range 0 .. 31;
      EPTCTLDIS4_ISOENDPT at 16#188# range 0 .. 31;
      EPTCTL4_ISOENDPT    at 16#18C# range 0 .. 31;
      EPTSETSTA4_ISOENDPT at 16#194# range 0 .. 31;
      EPTCLRSTA4_ISOENDPT at 16#198# range 0 .. 31;
      EPTSTA4_ISOENDPT    at 16#19C# range 0 .. 31;
      EPTCTLENB5_ISOENDPT at 16#1A4# range 0 .. 31;
      EPTCTLDIS5_ISOENDPT at 16#1A8# range 0 .. 31;
      EPTCTL5_ISOENDPT    at 16#1AC# range 0 .. 31;
      EPTSETSTA5_ISOENDPT at 16#1B4# range 0 .. 31;
      EPTCLRSTA5_ISOENDPT at 16#1B8# range 0 .. 31;
      EPTSTA5_ISOENDPT    at 16#1BC# range 0 .. 31;
      EPTCTLENB6_ISOENDPT at 16#1C4# range 0 .. 31;
      EPTCTLDIS6_ISOENDPT at 16#1C8# range 0 .. 31;
      EPTCTL6_ISOENDPT    at 16#1CC# range 0 .. 31;
      EPTSETSTA6_ISOENDPT at 16#1D4# range 0 .. 31;
      EPTCLRSTA6_ISOENDPT at 16#1D8# range 0 .. 31;
      EPTSTA6_ISOENDPT    at 16#1DC# range 0 .. 31;
   end record;

   --  USB High Speed Device Port
   UDPHS_Periph : aliased UDPHS_Peripheral
     with Import, Address => UDPHS_Base;

end SAM_SVD.UDPHS;
