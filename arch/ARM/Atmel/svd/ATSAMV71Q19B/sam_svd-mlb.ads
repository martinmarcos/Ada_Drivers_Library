--  This spec has been automatically generated from ATSAMV71Q19B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  MediaLB
package SAM_SVD.MLB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MLBCLK (MediaLB clock) Speed Select
   type MLBC0_MLBCLK_Field is
     (
      --  256xFs (for MLBPEN = 0)
      MLBC0_MLBCLK_Field_256_Fs,
      --  512xFs (for MLBPEN = 0)
      MLBC0_MLBCLK_Field_512_Fs,
      --  1024xFs (for MLBPEN = 0)
      MLBC0_MLBCLK_Field_1024_Fs)
     with Size => 3;
   for MLBC0_MLBCLK_Field use
     (MLBC0_MLBCLK_Field_256_Fs => 0,
      MLBC0_MLBCLK_Field_512_Fs => 1,
      MLBC0_MLBCLK_Field_1024_Fs => 2);

   --  The number of frames per sub-buffer for synchronous channels
   type MLBC0_FCNT_Field is
     (
      --  1 frame per sub-buffer (Operation is the same as Standard mode.)
      MLBC0_FCNT_Field_1_Frame,
      --  2 frames per sub-buffer
      MLBC0_FCNT_Field_2_Frames,
      --  4 frames per sub-buffer
      MLBC0_FCNT_Field_4_Frames,
      --  8 frames per sub-buffer
      MLBC0_FCNT_Field_8_Frames,
      --  16 frames per sub-buffer
      MLBC0_FCNT_Field_16_Frames,
      --  32 frames per sub-buffer
      MLBC0_FCNT_Field_32_Frames,
      --  64 frames per sub-buffer
      MLBC0_FCNT_Field_64_Frames)
     with Size => 3;
   for MLBC0_FCNT_Field use
     (MLBC0_FCNT_Field_1_Frame => 0,
      MLBC0_FCNT_Field_2_Frames => 1,
      MLBC0_FCNT_Field_4_Frames => 2,
      MLBC0_FCNT_Field_8_Frames => 3,
      MLBC0_FCNT_Field_16_Frames => 4,
      MLBC0_FCNT_Field_32_Frames => 5,
      MLBC0_FCNT_Field_64_Frames => 6);

   --  MediaLB Control 0 Register
   type MLB_MLBC0_Register is record
      --  MediaLB Enable
      MLBEN          : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  MLBCLK (MediaLB clock) Speed Select
      MLBCLK         : MLBC0_MLBCLK_Field :=
                        SAM_SVD.MLB.MLBC0_MLBCLK_Field_256_Fs;
      --  Must be Written to 0
      ZERO           : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  MediaLB Lock Status (read-only)
      MLBLK          : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Asynchronous Tx Packet Retry
      ASYRETRY       : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Control Tx Packet Retry
      CTLRETRY       : Boolean := False;
      --  The number of frames per sub-buffer for synchronous channels
      FCNT           : MLBC0_FCNT_Field :=
                        SAM_SVD.MLB.MLBC0_FCNT_Field_1_Frame;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_MLBC0_Register use record
      MLBEN          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      MLBCLK         at 0 range 2 .. 4;
      ZERO           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MLBLK          at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ASYRETRY       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CTLRETRY       at 0 range 14 .. 14;
      FCNT           at 0 range 15 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  MediaLB System Status Register
   type MLB_MSS_Register is record
      --  Reset System Command Detected in the System Quadlet (cleared by
      --  writing a 0)
      RSTSYSCMD     : Boolean := False;
      --  Network Lock System Command Detected in the System Quadlet (cleared
      --  by writing a 0)
      LKSYSCMD      : Boolean := False;
      --  Network Unlock System Command Detected in the System Quadlet (cleared
      --  by writing a 0)
      ULKSYSCMD     : Boolean := False;
      --  Channel Scan System Command Detected in the System Quadlet (cleared
      --  by writing a 0)
      CSSYSCMD      : Boolean := False;
      --  Software System Command Detected in the System Quadlet (cleared by
      --  writing a 0)
      SWSYSCMD      : Boolean := False;
      --  Service Request Enabled
      SERVREQ       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_MSS_Register use record
      RSTSYSCMD     at 0 range 0 .. 0;
      LKSYSCMD      at 0 range 1 .. 1;
      ULKSYSCMD     at 0 range 2 .. 2;
      CSSYSCMD      at 0 range 3 .. 3;
      SWSYSCMD      at 0 range 4 .. 4;
      SERVREQ       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  MLB_MSD_SD array element
   subtype MLB_MSD_SD_Element is HAL.UInt8;

   --  MLB_MSD_SD array
   type MLB_MSD_SD_Field_Array is array (0 .. 3) of MLB_MSD_SD_Element
     with Component_Size => 8, Size => 32;

   --  MediaLB System Data Register
   type MLB_MSD_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SD as a value
            Val : HAL.UInt32;
         when True =>
            --  SD as an array
            Arr : MLB_MSD_SD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MLB_MSD_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MediaLB Interrupt Enable Register
   type MLB_MIEN_Register is record
      --  Isochronous Rx Protocol Error Enable
      ISOC_PE        : Boolean := False;
      --  Isochronous Rx Buffer Overflow Enable
      ISOC_BUFO      : Boolean := False;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Synchronous Protocol Error Enable
      SYNC_PE        : Boolean := False;
      --  Asynchronous Rx Done Enable
      ARX_DONE       : Boolean := False;
      --  Asynchronous Rx Protocol Error Enable
      ARX_PE         : Boolean := False;
      --  Asynchronous Rx Break Enable
      ARX_BREAK      : Boolean := False;
      --  Asynchronous Tx Packet Done Enable
      ATX_DONE       : Boolean := False;
      --  Asynchronous Tx Protocol Error Enable
      ATX_PE         : Boolean := False;
      --  Asynchronous Tx Break Enable
      ATX_BREAK      : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Control Rx Packet Done Enable
      CRX_DONE       : Boolean := False;
      --  Control Rx Protocol Error Enable
      CRX_PE         : Boolean := False;
      --  Control Rx Break Enable
      CRX_BREAK      : Boolean := False;
      --  Control Tx Packet Done Enable
      CTX_DONE       : Boolean := False;
      --  Control Tx Protocol Error Enable
      CTX_PE         : Boolean := False;
      --  Control Tx Break Enable
      CTX_BREAK      : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_MIEN_Register use record
      ISOC_PE        at 0 range 0 .. 0;
      ISOC_BUFO      at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      SYNC_PE        at 0 range 16 .. 16;
      ARX_DONE       at 0 range 17 .. 17;
      ARX_PE         at 0 range 18 .. 18;
      ARX_BREAK      at 0 range 19 .. 19;
      ATX_DONE       at 0 range 20 .. 20;
      ATX_PE         at 0 range 21 .. 21;
      ATX_BREAK      at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CRX_DONE       at 0 range 24 .. 24;
      CRX_PE         at 0 range 25 .. 25;
      CRX_BREAK      at 0 range 26 .. 26;
      CTX_DONE       at 0 range 27 .. 27;
      CTX_PE         at 0 range 28 .. 28;
      CTX_BREAK      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MLB_MLBC1_NDA_Field is HAL.UInt8;

   --  MediaLB Control 1 Register
   type MLB_MLBC1_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  MediaLB Lock Error Status (cleared by writing a 0)
      LOCK           : Boolean := False;
      --  MediaLB Clock Missing Status (cleared by writing a 0)
      CLKM           : Boolean := False;
      --  Node Device Address
      NDA            : MLB_MLBC1_NDA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_MLBC1_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      LOCK           at 0 range 6 .. 6;
      CLKM           at 0 range 7 .. 7;
      NDA            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MLB_HCTL_RST array
   type MLB_HCTL_RST_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MLB_HCTL_RST
   type MLB_HCTL_RST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RST as a value
            Val : HAL.UInt2;
         when True =>
            --  RST as an array
            Arr : MLB_HCTL_RST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MLB_HCTL_RST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  HBI Control Register
   type MLB_HCTL_Register is record
      --  Address Generation Unit 0 Software Reset
      RST            : MLB_HCTL_RST_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  HBI Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_HCTL_Register use record
      RST            at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      EN             at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HBI Channel Mask 0 Register

   --  HBI Channel Mask 0 Register
   type MLB_HCMR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  HBI Channel Error 0 Register

   --  HBI Channel Error 0 Register
   type MLB_HCER_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  HBI Channel Busy 0 Register

   --  HBI Channel Busy 0 Register
   type MLB_HCBR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  MIF Data 0 Register

   --  MIF Data 0 Register
   type MLB_MDAT_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  MIF Data Write Enable 0 Register

   --  MIF Data Write Enable 0 Register
   type MLB_MDWE_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  MIF Control Register
   type MLB_MCTL_Register is record
      --  Transfer Complete (Write 0 to Clear)
      XCMP          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_MCTL_Register use record
      XCMP          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MLB_MADR_ADDR_Field is HAL.UInt14;

   --  Target Location Bit
   type MADR_TB_Field is
     (
      --  Selects CTR
      Ctr,
      --  Selects DBR
      Dbr)
     with Size => 1;
   for MADR_TB_Field use
     (Ctr => 0,
      Dbr => 1);

   --  MIF Address Register
   type MLB_MADR_Register is record
      --  CTR or DBR Address
      ADDR           : MLB_MADR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_14_29 : HAL.UInt16 := 16#0#;
      --  Target Location Bit
      TB             : MADR_TB_Field := SAM_SVD.MLB.Ctr;
      --  Write-Not-Read Selection
      WNR            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_MADR_Register use record
      ADDR           at 0 range 0 .. 13;
      Reserved_14_29 at 0 range 14 .. 29;
      TB             at 0 range 30 .. 30;
      WNR            at 0 range 31 .. 31;
   end record;

   --  DMA Packet Buffering Mode
   type ACTL_MPB_Field is
     (
      --  Single-packet mode
      Single_Packet,
      --  Multiple-packet mode
      Multiple_Packet)
     with Size => 1;
   for ACTL_MPB_Field use
     (Single_Packet => 0,
      Multiple_Packet => 1);

   --  AHB Control Register
   type MLB_ACTL_Register is record
      --  Software Clear Enable
      SCE           : Boolean := False;
      --  AHB Interrupt Mux Enable
      SMX           : Boolean := False;
      --  DMA Mode
      DMA_MODE      : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  DMA Packet Buffering Mode
      MPB           : ACTL_MPB_Field := SAM_SVD.MLB.Single_Packet;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MLB_ACTL_Register use record
      SCE           at 0 range 0 .. 0;
      SMX           at 0 range 1 .. 1;
      DMA_MODE      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      MPB           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  AHB Channel Status 0 Register

   --  AHB Channel Status 0 Register
   type MLB_ACSR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  AHB Channel Mask 0 Register

   --  AHB Channel Mask 0 Register
   type MLB_ACMR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  MediaLB
   type MLB_Peripheral is record
      --  MediaLB Control 0 Register
      MLBC0 : aliased MLB_MLBC0_Register;
      --  MediaLB Channel Status 0 Register
      MS0   : aliased HAL.UInt32;
      --  MediaLB Channel Status1 Register
      MS1   : aliased HAL.UInt32;
      --  MediaLB System Status Register
      MSS   : aliased MLB_MSS_Register;
      --  MediaLB System Data Register
      MSD   : aliased MLB_MSD_Register;
      --  MediaLB Interrupt Enable Register
      MIEN  : aliased MLB_MIEN_Register;
      --  MediaLB Control 1 Register
      MLBC1 : aliased MLB_MLBC1_Register;
      --  HBI Control Register
      HCTL  : aliased MLB_HCTL_Register;
      --  HBI Channel Mask 0 Register
      HCMR  : aliased MLB_HCMR_Registers;
      --  HBI Channel Error 0 Register
      HCER  : aliased MLB_HCER_Registers;
      --  HBI Channel Busy 0 Register
      HCBR  : aliased MLB_HCBR_Registers;
      --  MIF Data 0 Register
      MDAT  : aliased MLB_MDAT_Registers;
      --  MIF Data Write Enable 0 Register
      MDWE  : aliased MLB_MDWE_Registers;
      --  MIF Control Register
      MCTL  : aliased MLB_MCTL_Register;
      --  MIF Address Register
      MADR  : aliased MLB_MADR_Register;
      --  AHB Control Register
      ACTL  : aliased MLB_ACTL_Register;
      --  AHB Channel Status 0 Register
      ACSR  : aliased MLB_ACSR_Registers;
      --  AHB Channel Mask 0 Register
      ACMR  : aliased MLB_ACMR_Registers;
   end record
     with Volatile;

   for MLB_Peripheral use record
      MLBC0 at 16#0# range 0 .. 31;
      MS0   at 16#C# range 0 .. 31;
      MS1   at 16#14# range 0 .. 31;
      MSS   at 16#20# range 0 .. 31;
      MSD   at 16#24# range 0 .. 31;
      MIEN  at 16#2C# range 0 .. 31;
      MLBC1 at 16#3C# range 0 .. 31;
      HCTL  at 16#80# range 0 .. 31;
      HCMR  at 16#88# range 0 .. 63;
      HCER  at 16#90# range 0 .. 63;
      HCBR  at 16#98# range 0 .. 63;
      MDAT  at 16#C0# range 0 .. 127;
      MDWE  at 16#D0# range 0 .. 127;
      MCTL  at 16#E0# range 0 .. 31;
      MADR  at 16#E4# range 0 .. 31;
      ACTL  at 16#3C0# range 0 .. 31;
      ACSR  at 16#3D0# range 0 .. 63;
      ACMR  at 16#3D8# range 0 .. 63;
   end record;

   --  MediaLB
   MLB_Periph : aliased MLB_Peripheral
     with Import, Address => MLB_Base;

end SAM_SVD.MLB;
