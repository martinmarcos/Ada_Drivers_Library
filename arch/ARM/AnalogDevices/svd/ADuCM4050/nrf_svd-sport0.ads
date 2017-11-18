--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPORT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Serial Port Enable
   type CTL_A_SPEN_Field is
     (
      --  Disable
      Ctl_Dis,
      --  Enable
      Ctl_En)
     with Size => 1;
   for CTL_A_SPEN_Field use
     (Ctl_Dis => 0,
      Ctl_En => 1);

   --  Frame Sync Multiplexer Select
   type CTL_A_FSMUXSEL_Field is
     (
      --  Disable frame sync multiplexing
      Ctl_Fs_Mux_Dis,
      --  Enable frame sync multiplexing
      Ctl_Fs_Mux_En)
     with Size => 1;
   for CTL_A_FSMUXSEL_Field use
     (Ctl_Fs_Mux_Dis => 0,
      Ctl_Fs_Mux_En => 1);

   --  Clock Multiplexer Select
   type CTL_A_CKMUXSEL_Field is
     (
      --  Disable serial clock multiplexing
      Ctl_Clk_Mux_Dis,
      --  Enable serial clock multiplexing
      Ctl_Clk_Mux_En)
     with Size => 1;
   for CTL_A_CKMUXSEL_Field use
     (Ctl_Clk_Mux_Dis => 0,
      Ctl_Clk_Mux_En => 1);

   --  Least-Significant Bit First
   type CTL_A_LSBF_Field is
     (
      --  MSB first sent/received
      Ctl_Msb_First,
      --  LSB first sent/received
      Ctl_Lsb_First)
     with Size => 1;
   for CTL_A_LSBF_Field use
     (Ctl_Msb_First => 0,
      Ctl_Lsb_First => 1);

   subtype CTL_A_SLEN_Field is HAL.UInt5;

   --  Internal Clock
   type CTL_A_ICLK_Field is
     (
      --  External clock
      Ctl_External_Clk,
      --  Internal clock
      Ctl_Internal_Clk)
     with Size => 1;
   for CTL_A_ICLK_Field use
     (Ctl_External_Clk => 0,
      Ctl_Internal_Clk => 1);

   --  Operation mode
   type CTL_A_OPMODE_Field is
     (
      --  DSP standard
      Ctl_Serial,
      --  Timer_enable mode
      Ctl_Timer_En_Mode)
     with Size => 1;
   for CTL_A_OPMODE_Field use
     (Ctl_Serial => 0,
      Ctl_Timer_En_Mode => 1);

   --  Clock Rising Edge
   type CTL_A_CKRE_Field is
     (
      --  Clock falling edge
      Ctl_Clk_Fall_Edge,
      --  Clock rising edge
      Ctl_Clk_Rise_Edge)
     with Size => 1;
   for CTL_A_CKRE_Field use
     (Ctl_Clk_Fall_Edge => 0,
      Ctl_Clk_Rise_Edge => 1);

   --  Frame Sync Required
   type CTL_A_FSR_Field is
     (
      --  No frame sync required
      Ctl_Fs_Not_Req,
      --  Frame sync required
      Ctl_Fs_Req)
     with Size => 1;
   for CTL_A_FSR_Field use
     (Ctl_Fs_Not_Req => 0,
      Ctl_Fs_Req => 1);

   --  Internal Frame Sync
   type CTL_A_IFS_Field is
     (
      --  External frame sync
      Ctl_External_Fs,
      --  Internal frame sync
      Ctl_Internal_Fs)
     with Size => 1;
   for CTL_A_IFS_Field use
     (Ctl_External_Fs => 0,
      Ctl_Internal_Fs => 1);

   --  Data-Independent Frame Sync
   type CTL_A_DIFS_Field is
     (
      --  Data-dependent frame sync
      Ctl_Data_Dep_Fs,
      --  Data-independent frame sync
      Ctl_Data_Indp_Fs)
     with Size => 1;
   for CTL_A_DIFS_Field use
     (Ctl_Data_Dep_Fs => 0,
      Ctl_Data_Indp_Fs => 1);

   --  Active-Low Frame Sync
   type CTL_A_LFS_Field is
     (
      --  Active high frame sync
      Ctl_Fs_Lo,
      --  Active low frame sync
      Ctl_Fs_Hi)
     with Size => 1;
   for CTL_A_LFS_Field use
     (Ctl_Fs_Lo => 0,
      Ctl_Fs_Hi => 1);

   --  Late Frame Sync
   type CTL_A_LAFS_Field is
     (
      --  Early frame sync
      Ctl_Early_Fs,
      --  Late frame sync
      Ctl_Late_Fs)
     with Size => 1;
   for CTL_A_LAFS_Field use
     (Ctl_Early_Fs => 0,
      Ctl_Late_Fs => 1);

   --  Packing Enable
   type CTL_A_PACK_Field is
     (
      --  Disable
      Ctl_Pack_Dis,
      --  8-bit packing enable
      Ctl_Pack_8Bit,
      --  16-bit packing enable
      Ctl_Pack_16Bit)
     with Size => 2;
   for CTL_A_PACK_Field use
     (Ctl_Pack_Dis => 0,
      Ctl_Pack_8Bit => 1,
      Ctl_Pack_16Bit => 2);

   --  Gated Clock Enable
   type CTL_A_GCLKEN_Field is
     (
      --  Disable
      Ctl_Gclk_Dis,
      --  Enable
      Ctl_Gclk_En)
     with Size => 1;
   for CTL_A_GCLKEN_Field use
     (Ctl_Gclk_Dis => 0,
      Ctl_Gclk_En => 1);

   --  Serial Port Transfer Direction
   type CTL_A_SPTRAN_Field is
     (
      --  Receive
      Ctl_Rx,
      --  Transmit
      Ctl_Tx)
     with Size => 1;
   for CTL_A_SPTRAN_Field use
     (Ctl_Rx => 0,
      Ctl_Tx => 1);

   --  Half SPORT 'A' Control Register
   type CTL_A_Register is record
      --  Serial Port Enable
      SPEN           : CTL_A_SPEN_Field := NRF_SVD.SPORT0.Ctl_Dis;
      --  Frame Sync Multiplexer Select
      FSMUXSEL       : CTL_A_FSMUXSEL_Field := NRF_SVD.SPORT0.Ctl_Fs_Mux_Dis;
      --  Clock Multiplexer Select
      CKMUXSEL       : CTL_A_CKMUXSEL_Field := NRF_SVD.SPORT0.Ctl_Clk_Mux_Dis;
      --  Least-Significant Bit First
      LSBF           : CTL_A_LSBF_Field := NRF_SVD.SPORT0.Ctl_Msb_First;
      --  Serial Word Length
      SLEN           : CTL_A_SLEN_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Internal Clock
      ICLK           : CTL_A_ICLK_Field := NRF_SVD.SPORT0.Ctl_External_Clk;
      --  Operation mode
      OPMODE         : CTL_A_OPMODE_Field := NRF_SVD.SPORT0.Ctl_Serial;
      --  Clock Rising Edge
      CKRE           : CTL_A_CKRE_Field := NRF_SVD.SPORT0.Ctl_Clk_Fall_Edge;
      --  Frame Sync Required
      FSR            : CTL_A_FSR_Field := NRF_SVD.SPORT0.Ctl_Fs_Not_Req;
      --  Internal Frame Sync
      IFS            : CTL_A_IFS_Field := NRF_SVD.SPORT0.Ctl_External_Fs;
      --  Data-Independent Frame Sync
      DIFS           : CTL_A_DIFS_Field := NRF_SVD.SPORT0.Ctl_Data_Dep_Fs;
      --  Active-Low Frame Sync
      LFS            : CTL_A_LFS_Field := NRF_SVD.SPORT0.Ctl_Fs_Lo;
      --  Late Frame Sync
      LAFS           : CTL_A_LAFS_Field := NRF_SVD.SPORT0.Ctl_Early_Fs;
      --  Packing Enable
      PACK           : CTL_A_PACK_Field := NRF_SVD.SPORT0.Ctl_Pack_Dis;
      --  Frame Sync Error Operation
      FSERRMODE      : Boolean := False;
      --  Gated Clock Enable
      GCLKEN         : CTL_A_GCLKEN_Field := NRF_SVD.SPORT0.Ctl_Gclk_Dis;
      --  Data Multiplexer select
      DATMUXSEL      : Boolean := False;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  Serial Port Transfer Direction
      SPTRAN         : CTL_A_SPTRAN_Field := NRF_SVD.SPORT0.Ctl_Rx;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_A_Register use record
      SPEN           at 0 range 0 .. 0;
      FSMUXSEL       at 0 range 1 .. 1;
      CKMUXSEL       at 0 range 2 .. 2;
      LSBF           at 0 range 3 .. 3;
      SLEN           at 0 range 4 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ICLK           at 0 range 10 .. 10;
      OPMODE         at 0 range 11 .. 11;
      CKRE           at 0 range 12 .. 12;
      FSR            at 0 range 13 .. 13;
      IFS            at 0 range 14 .. 14;
      DIFS           at 0 range 15 .. 15;
      LFS            at 0 range 16 .. 16;
      LAFS           at 0 range 17 .. 17;
      PACK           at 0 range 18 .. 19;
      FSERRMODE      at 0 range 20 .. 20;
      GCLKEN         at 0 range 21 .. 21;
      DATMUXSEL      at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      SPTRAN         at 0 range 25 .. 25;
      DMAEN          at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DIV_A_CLKDIV_Field is HAL.UInt16;
   subtype DIV_A_FSDIV_Field is HAL.UInt8;

   --  Half SPORT 'A' Divisor Register
   type DIV_A_Register is record
      --  Clock Divisor
      CLKDIV         : DIV_A_CLKDIV_Field := 16#0#;
      --  Frame Sync Divisor
      FSDIV          : DIV_A_FSDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_A_Register use record
      CLKDIV         at 0 range 0 .. 15;
      FSDIV          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Transfer Finish Interrupt Enable
   type IEN_A_TF_Field is
     (
      --  Transfer finish Interrupt is disabled
      Ctl_Txfin_Dis,
      --  Transfer Finish Interrupt is Enabled
      Ctl_Txfin_En)
     with Size => 1;
   for IEN_A_TF_Field use
     (Ctl_Txfin_Dis => 0,
      Ctl_Txfin_En => 1);

   --  Half SPORT A's Interrupt Enable register
   type IEN_A_Register is record
      --  Transfer Finish Interrupt Enable
      TF            : IEN_A_TF_Field := NRF_SVD.SPORT0.Ctl_Txfin_Dis;
      --  Data Error (Interrupt) Mask
      DERRMSK       : Boolean := False;
      --  Frame Sync Error (Interrupt) Mask
      FSERRMSK      : Boolean := False;
      --  Data request interrupt to the core
      DATA          : Boolean := False;
      --  Data error for system writes or reads
      SYSDATERR     : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_A_Register use record
      TF            at 0 range 0 .. 0;
      DERRMSK       at 0 range 1 .. 1;
      FSERRMSK      at 0 range 2 .. 2;
      DATA          at 0 range 3 .. 3;
      SYSDATERR     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Data Transfer Buffer Status
   type STAT_A_DXS_Field is
     (
      --  Empty
      Ctl_Empty,
      --  Partially full
      Ctl_Part_Full,
      --  Full
      Ctl_Full)
     with Size => 2;
   for STAT_A_DXS_Field use
     (Ctl_Empty => 0,
      Ctl_Part_Full => 2,
      Ctl_Full => 3);

   --  Half SPORT 'A' Status register
   type STAT_A_Register is record
      --  Read-only. Transmit Finish Interrupt Status
      TFI            : Boolean;
      --  Read-only. Data Error Status
      DERR           : Boolean;
      --  Read-only. Frame Sync Error Status
      FSERR          : Boolean;
      --  Read-only. Data Buffer status
      DATA           : Boolean;
      --  Read-only. System Data Error Status
      SYSDATERR      : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Data Transfer Buffer Status
      DXS            : STAT_A_DXS_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_A_Register use record
      TFI            at 0 range 0 .. 0;
      DERR           at 0 range 1 .. 1;
      FSERR          at 0 range 2 .. 2;
      DATA           at 0 range 3 .. 3;
      SYSDATERR      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DXS            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype NUMTRAN_A_VALUE_Field is HAL.UInt12;

   --  Half SPORT A Number of transfers register
   type NUMTRAN_A_Register is record
      --  Number of transfers (Half SPORT A)
      VALUE          : NUMTRAN_A_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NUMTRAN_A_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CNVT_A_WID_Field is HAL.UInt4;
   subtype CNVT_A_CNVT2FS_Field is HAL.UInt8;

   --  Half SPORT 'A' CNV width
   type CNVT_A_Register is record
      --  CNV signal width: Half SPORT A
      WID            : CNVT_A_WID_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Polarity of the CNV signal
      POL            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  CNV to FS duration: Half SPORT A
      CNVT2FS        : CNVT_A_CNVT2FS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNVT_A_Register use record
      WID            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      POL            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CNVT2FS        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CTL_B_SLEN_Field is HAL.UInt5;

   --  Packing Enable
   type CTL_B_PACK_Field is
     (
      --  Disable
      Ctl_Pack_Dis,
      --  8-bit packing enable
      Ctl_Pack_8Bit,
      --  16-bit packing enable
      Ctl_Pack_16Bit)
     with Size => 2;
   for CTL_B_PACK_Field use
     (Ctl_Pack_Dis => 0,
      Ctl_Pack_8Bit => 1,
      Ctl_Pack_16Bit => 2);

   --  Half SPORT 'B' Control Register
   type CTL_B_Register is record
      --  Serial Port Enable
      SPEN           : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Least-Significant Bit First
      LSBF           : Boolean := False;
      --  Serial Word Length
      SLEN           : CTL_B_SLEN_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Internal Clock
      ICLK           : Boolean := False;
      --  Operation mode
      OPMODE         : Boolean := False;
      --  Clock Rising Edge
      CKRE           : Boolean := False;
      --  Frame Sync Required
      FSR            : Boolean := False;
      --  Internal Frame Sync
      IFS            : Boolean := False;
      --  Data-Independent Frame Sync
      DIFS           : Boolean := False;
      --  Active-Low Frame Sync
      LFS            : Boolean := False;
      --  Late Frame Sync
      LAFS           : Boolean := False;
      --  Packing Enable
      PACK           : CTL_B_PACK_Field := NRF_SVD.SPORT0.Ctl_Pack_Dis;
      --  Frame Sync Error Operation
      FSERRMODE      : Boolean := False;
      --  Gated Clock Enable
      GCLKEN         : Boolean := False;
      --  unspecified
      Reserved_22_24 : HAL.UInt3 := 16#0#;
      --  Serial Port Transfer Direction
      SPTRAN         : Boolean := False;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_B_Register use record
      SPEN           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      LSBF           at 0 range 3 .. 3;
      SLEN           at 0 range 4 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ICLK           at 0 range 10 .. 10;
      OPMODE         at 0 range 11 .. 11;
      CKRE           at 0 range 12 .. 12;
      FSR            at 0 range 13 .. 13;
      IFS            at 0 range 14 .. 14;
      DIFS           at 0 range 15 .. 15;
      LFS            at 0 range 16 .. 16;
      LAFS           at 0 range 17 .. 17;
      PACK           at 0 range 18 .. 19;
      FSERRMODE      at 0 range 20 .. 20;
      GCLKEN         at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      SPTRAN         at 0 range 25 .. 25;
      DMAEN          at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DIV_B_CLKDIV_Field is HAL.UInt16;
   subtype DIV_B_FSDIV_Field is HAL.UInt8;

   --  Half SPORT 'B' Divisor Register
   type DIV_B_Register is record
      --  Clock Divisor
      CLKDIV         : DIV_B_CLKDIV_Field := 16#0#;
      --  Frame Sync Divisor
      FSDIV          : DIV_B_FSDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_B_Register use record
      CLKDIV         at 0 range 0 .. 15;
      FSDIV          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Transmit Finish Interrupt Enable
   type IEN_B_TF_Field is
     (
      --  Transfer Finish Interrupt is disabled
      Ctl_Txfin_Dis,
      --  Transfer Finish Interrupt is Enabled
      Ctl_Txfin_En)
     with Size => 1;
   for IEN_B_TF_Field use
     (Ctl_Txfin_Dis => 0,
      Ctl_Txfin_En => 1);

   --  Half SPORT B's Interrupt Enable register
   type IEN_B_Register is record
      --  Transmit Finish Interrupt Enable
      TF            : IEN_B_TF_Field := NRF_SVD.SPORT0.Ctl_Txfin_Dis;
      --  Data Error (Interrupt) Mask
      DERRMSK       : Boolean := False;
      --  Frame Sync Error (Interrupt) Mask
      FSERRMSK      : Boolean := False;
      --  Data request interrupt to the core
      DATA          : Boolean := False;
      --  Data error for system writes or reads
      SYSDATERR     : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_B_Register use record
      TF            at 0 range 0 .. 0;
      DERRMSK       at 0 range 1 .. 1;
      FSERRMSK      at 0 range 2 .. 2;
      DATA          at 0 range 3 .. 3;
      SYSDATERR     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Data Transfer Buffer Status
   type STAT_B_DXS_Field is
     (
      --  Empty
      Ctl_Empty,
      --  Partially full
      Ctl_Part_Full,
      --  Full
      Ctl_Full)
     with Size => 2;
   for STAT_B_DXS_Field use
     (Ctl_Empty => 0,
      Ctl_Part_Full => 2,
      Ctl_Full => 3);

   --  Half SPORT 'B' Status register
   type STAT_B_Register is record
      --  Read-only. Transmit Finish Interrupt Status
      TFI            : Boolean;
      --  Read-only. Data Error Status
      DERR           : Boolean;
      --  Read-only. Frame Sync Error Status
      FSERR          : Boolean;
      --  Read-only. Data Buffer status
      DATA           : Boolean;
      --  Read-only. System Data Error Status
      SYSDATERR      : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Data Transfer Buffer Status
      DXS            : STAT_B_DXS_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_B_Register use record
      TFI            at 0 range 0 .. 0;
      DERR           at 0 range 1 .. 1;
      FSERR          at 0 range 2 .. 2;
      DATA           at 0 range 3 .. 3;
      SYSDATERR      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DXS            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype NUMTRAN_B_VALUE_Field is HAL.UInt12;

   --  Half SPORT B Number of transfers register
   type NUMTRAN_B_Register is record
      --  Number of transfers (Half SPORT B)
      VALUE          : NUMTRAN_B_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NUMTRAN_B_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CNVT_B_WID_Field is HAL.UInt4;
   subtype CNVT_B_CNVT2FS_Field is HAL.UInt8;

   --  Half SPORT 'B' CNV width register
   type CNVT_B_Register is record
      --  CNV signal width: Half SPORT B
      WID            : CNVT_B_WID_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Polarity of the CNV signal
      POL            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  CNV to FS duration: Half SPORT B
      CNVT2FS        : CNVT_B_CNVT2FS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNVT_B_Register use record
      WID            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      POL            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CNVT2FS        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Port
   type SPORT0_Peripheral is record
      --  Half SPORT 'A' Control Register
      CTL_A     : aliased CTL_A_Register;
      --  Half SPORT 'A' Divisor Register
      DIV_A     : aliased DIV_A_Register;
      --  Half SPORT A's Interrupt Enable register
      IEN_A     : aliased IEN_A_Register;
      --  Half SPORT 'A' Status register
      STAT_A    : aliased STAT_A_Register;
      --  Half SPORT A Number of transfers register
      NUMTRAN_A : aliased NUMTRAN_A_Register;
      --  Half SPORT 'A' CNV width
      CNVT_A    : aliased CNVT_A_Register;
      --  Half SPORT 'A' Tx Buffer Register
      TX_A      : aliased HAL.UInt32;
      --  Half SPORT 'A' Rx Buffer Register
      RX_A      : aliased HAL.UInt32;
      --  Half SPORT 'B' Control Register
      CTL_B     : aliased CTL_B_Register;
      --  Half SPORT 'B' Divisor Register
      DIV_B     : aliased DIV_B_Register;
      --  Half SPORT B's Interrupt Enable register
      IEN_B     : aliased IEN_B_Register;
      --  Half SPORT 'B' Status register
      STAT_B    : aliased STAT_B_Register;
      --  Half SPORT B Number of transfers register
      NUMTRAN_B : aliased NUMTRAN_B_Register;
      --  Half SPORT 'B' CNV width register
      CNVT_B    : aliased CNVT_B_Register;
      --  Half SPORT 'B' Tx Buffer Register
      TX_B      : aliased HAL.UInt32;
      --  Half SPORT 'B' Rx Buffer Register
      RX_B      : aliased HAL.UInt32;
   end record
     with Volatile;

   for SPORT0_Peripheral use record
      CTL_A     at 16#0# range 0 .. 31;
      DIV_A     at 16#4# range 0 .. 31;
      IEN_A     at 16#8# range 0 .. 31;
      STAT_A    at 16#C# range 0 .. 31;
      NUMTRAN_A at 16#10# range 0 .. 31;
      CNVT_A    at 16#14# range 0 .. 31;
      TX_A      at 16#20# range 0 .. 31;
      RX_A      at 16#28# range 0 .. 31;
      CTL_B     at 16#40# range 0 .. 31;
      DIV_B     at 16#44# range 0 .. 31;
      IEN_B     at 16#48# range 0 .. 31;
      STAT_B    at 16#4C# range 0 .. 31;
      NUMTRAN_B at 16#50# range 0 .. 31;
      CNVT_B    at 16#54# range 0 .. 31;
      TX_B      at 16#60# range 0 .. 31;
      RX_B      at 16#68# range 0 .. 31;
   end record;

   --  Serial Port
   SPORT0_Periph : aliased SPORT0_Peripheral
     with Import, Address => System'To_Address (16#40038000#);

end NRF_SVD.SPORT0;
