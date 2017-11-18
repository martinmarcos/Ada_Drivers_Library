--

--  This spec has been automatically generated from CM41x_M4.svd

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

   --  Serial Port Enable (Primary)
   type CTL_A_SPENPRI_Field is
     (
      --  Disable
      Ctl_Dis,
      --  Enable
      Ctl_En)
     with Size => 1;
   for CTL_A_SPENPRI_Field use
     (Ctl_Dis => 0,
      Ctl_En => 1);

   --  Data Type
   type CTL_A_DTYPE_Field is
     (
      --  Right-justify data, zero-fill unused MSBs
      Ctl_Rjustify_Zfill,
      --  Right-justify data, sign-extend unused MSBs
      Ctl_Rjustify_Sfill,
      --  m-law compand data
      Ctl_Use_U_Law,
      --  A-law compand data
      Ctl_Use_A_Law)
     with Size => 2;
   for CTL_A_DTYPE_Field use
     (Ctl_Rjustify_Zfill => 0,
      Ctl_Rjustify_Sfill => 1,
      Ctl_Use_U_Law => 2,
      Ctl_Use_A_Law => 3);

   --  Least-Significant Bit First
   type CTL_A_LSBF_Field is
     (
      --  MSB first sent/received (big endian)
      Ctl_Msb_First,
      --  LSB first sent/received (little endian)
      Ctl_Lsb_First)
     with Size => 1;
   for CTL_A_LSBF_Field use
     (Ctl_Msb_First => 0,
      Ctl_Lsb_First => 1);

   subtype CTL_A_SLEN_Field is HAL.UInt5;

   --  Packing Enable
   type CTL_A_PACK_Field is
     (
      --  Disable
      Ctl_Pack_Dis,
      --  Enable
      Ctl_Pack_En)
     with Size => 1;
   for CTL_A_PACK_Field use
     (Ctl_Pack_Dis => 0,
      Ctl_Pack_En => 1);

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
      --  DSP standard/multi-channel mode
      Ctl_Serial_Mc_Mode,
      --  I2S/packed/left-justified mode
      Ctl_I2S_Mode)
     with Size => 1;
   for CTL_A_OPMODE_Field use
     (Ctl_Serial_Mc_Mode => 0,
      Ctl_I2S_Mode => 1);

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

   --  Active-Low Frame Sync / L_FIRST / PLFS
   type CTL_A_LFS_Field is
     (
      --  Active high frame sync (DSP standard mode)
      Ctl_Fs_Lo,
      --  Active low frame sync (DSP standard mode)
      Ctl_Fs_Hi)
     with Size => 1;
   for CTL_A_LFS_Field use
     (Ctl_Fs_Lo => 0,
      Ctl_Fs_Hi => 1);

   --  Late Frame Sync / OPMODE2
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

   --  Right-Justified Operation Mode
   type CTL_A_RJUST_Field is
     (
      --  Disable
      Ctl_Rjust_Dis,
      --  Enable
      Ctl_Rjust_En)
     with Size => 1;
   for CTL_A_RJUST_Field use
     (Ctl_Rjust_Dis => 0,
      Ctl_Rjust_En => 1);

   --  Frame Sync Edge Detect
   type CTL_A_FSED_Field is
     (
      --  Level detect frame sync
      Ctl_Level_Fs,
      --  Edge detect frame sync
      Ctl_Edge_Fs)
     with Size => 1;
   for CTL_A_FSED_Field use
     (Ctl_Level_Fs => 0,
      Ctl_Edge_Fs => 1);

   --  Transmit Finish Interrupt Enable
   type CTL_A_TFIEN_Field is
     (
      --  Last word sent (DMA count done) interrupt
      Ctl_Txfin_Dis,
      --  Last bit sent (Tx buffer done) interrupt
      Ctl_Txfin_En)
     with Size => 1;
   for CTL_A_TFIEN_Field use
     (Ctl_Txfin_Dis => 0,
      Ctl_Txfin_En => 1);

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

   --  Serial Port Enable (Secondary)
   type CTL_A_SPENSEC_Field is
     (
      --  Disable
      Ctl_Secondary_Dis,
      --  Enable
      Ctl_Secondary_En)
     with Size => 1;
   for CTL_A_SPENSEC_Field use
     (Ctl_Secondary_Dis => 0,
      Ctl_Secondary_En => 1);

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

   --  Data Error Status (Secondary)
   type CTL_A_DERRSEC_Field is
     (
      --  No error
      Ctl_Sec_No_Err,
      --  Error (Tx underflow or Rx overflow)
      Ctl_Sec_Err)
     with Size => 1;
   for CTL_A_DERRSEC_Field use
     (Ctl_Sec_No_Err => 0,
      Ctl_Sec_Err => 1);

   --  Data Transfer Buffer Status (Secondary)
   type CTL_A_DXSSEC_Field is
     (
      --  Empty
      Ctl_Sec_Empty,
      --  Partially full
      Ctl_Sec_Part_Full,
      --  Full
      Ctl_Sec_Full)
     with Size => 2;
   for CTL_A_DXSSEC_Field use
     (Ctl_Sec_Empty => 0,
      Ctl_Sec_Part_Full => 2,
      Ctl_Sec_Full => 3);

   --  Data Error Status (Primary)
   type CTL_A_DERRPRI_Field is
     (
      --  No error
      Ctl_Prm_No_Err,
      --  Error (Tx underflow or Rx overflow)
      Ctl_Prm_Err)
     with Size => 1;
   for CTL_A_DERRPRI_Field use
     (Ctl_Prm_No_Err => 0,
      Ctl_Prm_Err => 1);

   --  Data Transfer Buffer Status (Primary)
   type CTL_A_DXSPRI_Field is
     (
      --  Empty
      Ctl_Prm_Empty,
      --  Partially full
      Ctl_Prm_Part_Full,
      --  Full
      Ctl_Prm_Full)
     with Size => 2;
   for CTL_A_DXSPRI_Field use
     (Ctl_Prm_Empty => 0,
      Ctl_Prm_Part_Full => 2,
      Ctl_Prm_Full => 3);

   --  Half SPORT 'A' Control Register
   type CTL_A_Register is record
      --  Serial Port Enable (Primary)
      SPENPRI        : CTL_A_SPENPRI_Field := NRF_SVD.SPORT0.Ctl_Dis;
      --  Data Type
      DTYPE          : CTL_A_DTYPE_Field := NRF_SVD.SPORT0.Ctl_Rjustify_Zfill;
      --  Least-Significant Bit First
      LSBF           : CTL_A_LSBF_Field := NRF_SVD.SPORT0.Ctl_Msb_First;
      --  Serial Word Length
      SLEN           : CTL_A_SLEN_Field := 16#0#;
      --  Packing Enable
      PACK           : CTL_A_PACK_Field := NRF_SVD.SPORT0.Ctl_Pack_Dis;
      --  Internal Clock
      ICLK           : CTL_A_ICLK_Field := NRF_SVD.SPORT0.Ctl_External_Clk;
      --  Operation mode
      OPMODE         : CTL_A_OPMODE_Field :=
                        NRF_SVD.SPORT0.Ctl_Serial_Mc_Mode;
      --  Clock Rising Edge
      CKRE           : CTL_A_CKRE_Field := NRF_SVD.SPORT0.Ctl_Clk_Fall_Edge;
      --  Frame Sync Required
      FSR            : CTL_A_FSR_Field := NRF_SVD.SPORT0.Ctl_Fs_Not_Req;
      --  Internal Frame Sync
      IFS            : CTL_A_IFS_Field := NRF_SVD.SPORT0.Ctl_External_Fs;
      --  Data-Independent Frame Sync
      DIFS           : CTL_A_DIFS_Field := NRF_SVD.SPORT0.Ctl_Data_Dep_Fs;
      --  Active-Low Frame Sync / L_FIRST / PLFS
      LFS            : CTL_A_LFS_Field := NRF_SVD.SPORT0.Ctl_Fs_Lo;
      --  Late Frame Sync / OPMODE2
      LAFS           : CTL_A_LAFS_Field := NRF_SVD.SPORT0.Ctl_Early_Fs;
      --  Right-Justified Operation Mode
      RJUST          : CTL_A_RJUST_Field := NRF_SVD.SPORT0.Ctl_Rjust_Dis;
      --  Frame Sync Edge Detect
      FSED           : CTL_A_FSED_Field := NRF_SVD.SPORT0.Ctl_Level_Fs;
      --  Transmit Finish Interrupt Enable
      TFIEN          : CTL_A_TFIEN_Field := NRF_SVD.SPORT0.Ctl_Txfin_Dis;
      --  Gated Clock Enable
      GCLKEN         : CTL_A_GCLKEN_Field := NRF_SVD.SPORT0.Ctl_Gclk_Dis;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Serial Port Enable (Secondary)
      SPENSEC        : CTL_A_SPENSEC_Field :=
                        NRF_SVD.SPORT0.Ctl_Secondary_Dis;
      --  Serial Port Transfer Direction
      SPTRAN         : CTL_A_SPTRAN_Field := NRF_SVD.SPORT0.Ctl_Rx;
      --  Read-only. Data Error Status (Secondary)
      DERRSEC        : CTL_A_DERRSEC_Field := NRF_SVD.SPORT0.Ctl_Sec_No_Err;
      --  Read-only. Data Transfer Buffer Status (Secondary)
      DXSSEC         : CTL_A_DXSSEC_Field := NRF_SVD.SPORT0.Ctl_Sec_Empty;
      --  Read-only. Data Error Status (Primary)
      DERRPRI        : CTL_A_DERRPRI_Field := NRF_SVD.SPORT0.Ctl_Prm_No_Err;
      --  Read-only. Data Transfer Buffer Status (Primary)
      DXSPRI         : CTL_A_DXSPRI_Field := NRF_SVD.SPORT0.Ctl_Prm_Empty;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_A_Register use record
      SPENPRI        at 0 range 0 .. 0;
      DTYPE          at 0 range 1 .. 2;
      LSBF           at 0 range 3 .. 3;
      SLEN           at 0 range 4 .. 8;
      PACK           at 0 range 9 .. 9;
      ICLK           at 0 range 10 .. 10;
      OPMODE         at 0 range 11 .. 11;
      CKRE           at 0 range 12 .. 12;
      FSR            at 0 range 13 .. 13;
      IFS            at 0 range 14 .. 14;
      DIFS           at 0 range 15 .. 15;
      LFS            at 0 range 16 .. 16;
      LAFS           at 0 range 17 .. 17;
      RJUST          at 0 range 18 .. 18;
      FSED           at 0 range 19 .. 19;
      TFIEN          at 0 range 20 .. 20;
      GCLKEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SPENSEC        at 0 range 24 .. 24;
      SPTRAN         at 0 range 25 .. 25;
      DERRSEC        at 0 range 26 .. 26;
      DXSSEC         at 0 range 27 .. 28;
      DERRPRI        at 0 range 29 .. 29;
      DXSPRI         at 0 range 30 .. 31;
   end record;

   subtype DIV_A_CLKDIV_Field is HAL.UInt16;
   subtype DIV_A_FSDIV_Field is HAL.UInt16;

   --  Half SPORT 'A' Divisor Register
   type DIV_A_Register is record
      --  Clock Divisor
      CLKDIV : DIV_A_CLKDIV_Field := 16#0#;
      --  Frame Sync Divisor
      FSDIV  : DIV_A_FSDIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_A_Register use record
      CLKDIV at 0 range 0 .. 15;
      FSDIV  at 0 range 16 .. 31;
   end record;

   --  Multichannel enable
   type MCTL_A_MCE_Field is
     (
      --  Disable
      Mctl_Dis,
      --  Enable
      Mctl_En)
     with Size => 1;
   for MCTL_A_MCE_Field use
     (Mctl_Dis => 0,
      Mctl_En => 1);

   --  Multi-Channel Packing DMA Enable
   type MCTL_A_MCPDE_Field is
     (
      --  Disable
      Mctl_Mcpd_Dis,
      --  Enable
      Mctl_Mcpd_En)
     with Size => 1;
   for MCTL_A_MCPDE_Field use
     (Mctl_Mcpd_Dis => 0,
      Mctl_Mcpd_En => 1);

   subtype MCTL_A_MFD_Field is HAL.UInt4;
   subtype MCTL_A_WSIZE_Field is HAL.UInt7;
   subtype MCTL_A_WOFFSET_Field is HAL.UInt10;

   --  Half SPORT 'A' Multichannel Control Register
   type MCTL_A_Register is record
      --  Multichannel enable
      MCE            : MCTL_A_MCE_Field := NRF_SVD.SPORT0.Mctl_Dis;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Multi-Channel Packing DMA Enable
      MCPDE          : MCTL_A_MCPDE_Field := NRF_SVD.SPORT0.Mctl_Mcpd_Dis;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Multi-channel Frame Delay
      MFD            : MCTL_A_MFD_Field := 16#0#;
      --  Window Size
      WSIZE          : MCTL_A_WSIZE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Window Offset
      WOFFSET        : MCTL_A_WOFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCTL_A_Register use record
      MCE            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      MCPDE          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MFD            at 0 range 4 .. 7;
      WSIZE          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WOFFSET        at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Half SPORT 'A' Error Register
   type ERR_A_Register is record
      --  Data Error Primary (Interrupt) Mask
      DERRPMSK      : Boolean := False;
      --  Data Error Secondary (Interrupt) Mask
      DERRSMSK      : Boolean := False;
      --  Frame Sync Error (Interrupt) Mask
      FSERRMSK      : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Data Error Primary Status
      DERRPSTAT     : Boolean := False;
      --  Data Error Secondary Status
      DERRSSTAT     : Boolean := False;
      --  Frame Sync Error Status
      FSERRSTAT     : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_A_Register use record
      DERRPMSK      at 0 range 0 .. 0;
      DERRSMSK      at 0 range 1 .. 1;
      FSERRMSK      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DERRPSTAT     at 0 range 4 .. 4;
      DERRSSTAT     at 0 range 5 .. 5;
      FSERRSTAT     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype MSTAT_A_CURCHAN_Field is HAL.UInt10;

   --  Half SPORT 'A' Multichannel Status Register
   type MSTAT_A_Register is record
      --  Read-only. Current Channel
      CURCHAN        : MSTAT_A_CURCHAN_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTAT_A_Register use record
      CURCHAN        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Frame Sync Multiplexer Select
   type CTL2_A_FSMUXSEL_Field is
     (
      --  Disable frame sync multiplexing
      Ctl2_Fs_Mux_Dis,
      --  Enable frame sync multiplexing
      Ctl2_Fs_Mux_En)
     with Size => 1;
   for CTL2_A_FSMUXSEL_Field use
     (Ctl2_Fs_Mux_Dis => 0,
      Ctl2_Fs_Mux_En => 1);

   --  Clock Multiplexer Select
   type CTL2_A_CKMUXSEL_Field is
     (
      --  Disable serial clock multiplexing
      Ctl2_Clk_Mux_Dis,
      --  Enable serial clock multiplexing
      Ctl2_Clk_Mux_En)
     with Size => 1;
   for CTL2_A_CKMUXSEL_Field use
     (Ctl2_Clk_Mux_Dis => 0,
      Ctl2_Clk_Mux_En => 1);

   --  Half SPORT 'A' Control 2 Register
   type CTL2_A_Register is record
      --  Frame Sync Multiplexer Select
      FSMUXSEL      : CTL2_A_FSMUXSEL_Field := NRF_SVD.SPORT0.Ctl2_Fs_Mux_Dis;
      --  Clock Multiplexer Select
      CKMUXSEL      : CTL2_A_CKMUXSEL_Field :=
                       NRF_SVD.SPORT0.Ctl2_Clk_Mux_Dis;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL2_A_Register use record
      FSMUXSEL      at 0 range 0 .. 0;
      CKMUXSEL      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CTL_B_DTYPE_Field is HAL.UInt2;
   subtype CTL_B_SLEN_Field is HAL.UInt5;
   subtype CTL_B_DXSSEC_Field is HAL.UInt2;
   subtype CTL_B_DXSPRI_Field is HAL.UInt2;

   --  Half SPORT 'B' Control Register
   type CTL_B_Register is record
      --  Serial Port Enable (Primary)
      SPENPRI        : Boolean := False;
      --  Data Type
      DTYPE          : CTL_B_DTYPE_Field := 16#0#;
      --  Least-Significant Bit First
      LSBF           : Boolean := False;
      --  Serial Word Length
      SLEN           : CTL_B_SLEN_Field := 16#0#;
      --  Packing Enable
      PACK           : Boolean := False;
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
      --  Active-Low Frame Sync / L_FIRST / PLFS
      LFS            : Boolean := False;
      --  Late Frame Sync / OPMODE2
      LAFS           : Boolean := False;
      --  Right-Justified Operation Mode
      RJUST          : Boolean := False;
      --  Frame Sync Edge Detect
      FSED           : Boolean := False;
      --  Transmit Finish Interrupt Enable
      TFIEN          : Boolean := False;
      --  Gated Clock Enable
      GCLKEN         : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Serial Port Enable (Secondary)
      SPENSEC        : Boolean := False;
      --  Serial Port Transfer Direction
      SPTRAN         : Boolean := False;
      --  Read-only. Data Error Status (Secondary)
      DERRSEC        : Boolean := False;
      --  Read-only. Data Transfer Buffer Status (Secondary)
      DXSSEC         : CTL_B_DXSSEC_Field := 16#0#;
      --  Read-only. Data Error Status (Primary)
      DERRPRI        : Boolean := False;
      --  Read-only. Data Transfer Buffer Status (Primary)
      DXSPRI         : CTL_B_DXSPRI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_B_Register use record
      SPENPRI        at 0 range 0 .. 0;
      DTYPE          at 0 range 1 .. 2;
      LSBF           at 0 range 3 .. 3;
      SLEN           at 0 range 4 .. 8;
      PACK           at 0 range 9 .. 9;
      ICLK           at 0 range 10 .. 10;
      OPMODE         at 0 range 11 .. 11;
      CKRE           at 0 range 12 .. 12;
      FSR            at 0 range 13 .. 13;
      IFS            at 0 range 14 .. 14;
      DIFS           at 0 range 15 .. 15;
      LFS            at 0 range 16 .. 16;
      LAFS           at 0 range 17 .. 17;
      RJUST          at 0 range 18 .. 18;
      FSED           at 0 range 19 .. 19;
      TFIEN          at 0 range 20 .. 20;
      GCLKEN         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SPENSEC        at 0 range 24 .. 24;
      SPTRAN         at 0 range 25 .. 25;
      DERRSEC        at 0 range 26 .. 26;
      DXSSEC         at 0 range 27 .. 28;
      DERRPRI        at 0 range 29 .. 29;
      DXSPRI         at 0 range 30 .. 31;
   end record;

   subtype DIV_B_CLKDIV_Field is HAL.UInt16;
   subtype DIV_B_FSDIV_Field is HAL.UInt16;

   --  Half SPORT 'B' Divisor Register
   type DIV_B_Register is record
      --  Clock Divisor
      CLKDIV : DIV_B_CLKDIV_Field := 16#0#;
      --  Frame Sync Divisor
      FSDIV  : DIV_B_FSDIV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIV_B_Register use record
      CLKDIV at 0 range 0 .. 15;
      FSDIV  at 0 range 16 .. 31;
   end record;

   subtype MCTL_B_MFD_Field is HAL.UInt4;
   subtype MCTL_B_WSIZE_Field is HAL.UInt7;
   subtype MCTL_B_WOFFSET_Field is HAL.UInt10;

   --  Half SPORT 'B' Multichannel Control Register
   type MCTL_B_Register is record
      --  Multichannel Enable
      MCE            : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Multichannel Packing DMA Enable
      MCPDE          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Multichannel Frame Delay
      MFD            : MCTL_B_MFD_Field := 16#0#;
      --  Window Size
      WSIZE          : MCTL_B_WSIZE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Window Offset
      WOFFSET        : MCTL_B_WOFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCTL_B_Register use record
      MCE            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      MCPDE          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MFD            at 0 range 4 .. 7;
      WSIZE          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WOFFSET        at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Half SPORT 'B' Error Register
   type ERR_B_Register is record
      --  Data Error Primary (Interrupt) Mask
      DERRPMSK      : Boolean := False;
      --  Data Error Secondary (Interrupt) Mask
      DERRSMSK      : Boolean := False;
      --  Frame Sync Error (Interrupt) Mask
      FSERRMSK      : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Data Error Primary Status
      DERRPSTAT     : Boolean := False;
      --  Data Error Secondary Status
      DERRSSTAT     : Boolean := False;
      --  Frame Sync Error Status
      FSERRSTAT     : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_B_Register use record
      DERRPMSK      at 0 range 0 .. 0;
      DERRSMSK      at 0 range 1 .. 1;
      FSERRMSK      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DERRPSTAT     at 0 range 4 .. 4;
      DERRSSTAT     at 0 range 5 .. 5;
      FSERRSTAT     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype MSTAT_B_CURCHAN_Field is HAL.UInt10;

   --  Half SPORT 'B' Multichannel Status Register
   type MSTAT_B_Register is record
      --  Read-only. Current Channel
      CURCHAN        : MSTAT_B_CURCHAN_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTAT_B_Register use record
      CURCHAN        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Half SPORT 'B' Control 2 Register
   type CTL2_B_Register is record
      --  Frame Sync Multiplexer Select
      FSMUXSEL      : Boolean := False;
      --  Clock Multiplexer Select
      CKMUXSEL      : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL2_B_Register use record
      FSMUXSEL      at 0 range 0 .. 0;
      CKMUXSEL      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Port
   type SPORT0_Peripheral is record
      --  Half SPORT 'A' Control Register
      CTL_A   : aliased CTL_A_Register;
      --  Half SPORT 'A' Divisor Register
      DIV_A   : aliased DIV_A_Register;
      --  Half SPORT 'A' Multichannel Control Register
      MCTL_A  : aliased MCTL_A_Register;
      --  Half SPORT 'A' Multichannel 0-31 Select Register
      CS0_A   : aliased HAL.UInt32;
      --  Half SPORT 'A' Multichannel 32-63 Select Register
      CS1_A   : aliased HAL.UInt32;
      --  Half SPORT 'A' Multichannel 64-95 Select Register
      CS2_A   : aliased HAL.UInt32;
      --  Half SPORT 'A' Multichannel 96-127 Select Register
      CS3_A   : aliased HAL.UInt32;
      --  Half SPORT 'A' Error Register
      ERR_A   : aliased ERR_A_Register;
      --  Half SPORT 'A' Multichannel Status Register
      MSTAT_A : aliased MSTAT_A_Register;
      --  Half SPORT 'A' Control 2 Register
      CTL2_A  : aliased CTL2_A_Register;
      --  Half SPORT 'A' Tx Buffer (Primary) Register
      TXPRI_A : aliased HAL.UInt32;
      --  Half SPORT 'A' Rx Buffer (Primary) Register
      RXPRI_A : aliased HAL.UInt32;
      --  Half SPORT 'A' Tx Buffer (Secondary) Register
      TXSEC_A : aliased HAL.UInt32;
      --  Half SPORT 'A' Rx Buffer (Secondary) Register
      RXSEC_A : aliased HAL.UInt32;
      --  Half SPORT 'B' Control Register
      CTL_B   : aliased CTL_B_Register;
      --  Half SPORT 'B' Divisor Register
      DIV_B   : aliased DIV_B_Register;
      --  Half SPORT 'B' Multichannel Control Register
      MCTL_B  : aliased MCTL_B_Register;
      --  Half SPORT 'B' Multichannel 0-31 Select Register
      CS0_B   : aliased HAL.UInt32;
      --  Half SPORT 'B' Multichannel 32-63 Select Register
      CS1_B   : aliased HAL.UInt32;
      --  Half SPORT 'B' Multichannel 64-95 Select Register
      CS2_B   : aliased HAL.UInt32;
      --  Half SPORT 'B' Multichannel 96-127 Select Register
      CS3_B   : aliased HAL.UInt32;
      --  Half SPORT 'B' Error Register
      ERR_B   : aliased ERR_B_Register;
      --  Half SPORT 'B' Multichannel Status Register
      MSTAT_B : aliased MSTAT_B_Register;
      --  Half SPORT 'B' Control 2 Register
      CTL2_B  : aliased CTL2_B_Register;
      --  Half SPORT 'B' Tx Buffer (Primary) Register
      TXPRI_B : aliased HAL.UInt32;
      --  Half SPORT 'B' Rx Buffer (Primary) Register
      RXPRI_B : aliased HAL.UInt32;
      --  Half SPORT 'B' Tx Buffer (Secondary) Register
      TXSEC_B : aliased HAL.UInt32;
      --  Half SPORT 'B' Rx Buffer (Secondary) Register
      RXSEC_B : aliased HAL.UInt32;
   end record
     with Volatile;

   for SPORT0_Peripheral use record
      CTL_A   at 16#0# range 0 .. 31;
      DIV_A   at 16#4# range 0 .. 31;
      MCTL_A  at 16#8# range 0 .. 31;
      CS0_A   at 16#C# range 0 .. 31;
      CS1_A   at 16#10# range 0 .. 31;
      CS2_A   at 16#14# range 0 .. 31;
      CS3_A   at 16#18# range 0 .. 31;
      ERR_A   at 16#20# range 0 .. 31;
      MSTAT_A at 16#24# range 0 .. 31;
      CTL2_A  at 16#28# range 0 .. 31;
      TXPRI_A at 16#40# range 0 .. 31;
      RXPRI_A at 16#44# range 0 .. 31;
      TXSEC_A at 16#48# range 0 .. 31;
      RXSEC_A at 16#4C# range 0 .. 31;
      CTL_B   at 16#80# range 0 .. 31;
      DIV_B   at 16#84# range 0 .. 31;
      MCTL_B  at 16#88# range 0 .. 31;
      CS0_B   at 16#8C# range 0 .. 31;
      CS1_B   at 16#90# range 0 .. 31;
      CS2_B   at 16#94# range 0 .. 31;
      CS3_B   at 16#98# range 0 .. 31;
      ERR_B   at 16#A0# range 0 .. 31;
      MSTAT_B at 16#A4# range 0 .. 31;
      CTL2_B  at 16#A8# range 0 .. 31;
      TXPRI_B at 16#C0# range 0 .. 31;
      RXPRI_B at 16#C4# range 0 .. 31;
      TXSEC_B at 16#C8# range 0 .. 31;
      RXSEC_B at 16#CC# range 0 .. 31;
   end record;

   --  Serial Port
   SPORT0_Periph : aliased SPORT0_Peripheral
     with Import, Address => System'To_Address (16#40042000#);

end NRF_SVD.SPORT0;
