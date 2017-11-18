--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.uSDHC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Block Size
   type BLK_ATT_BLKSIZE_Field is
     (
      --  No data transfer
      Blksize_0,
      --  1 Byte
      Blksize_1,
      --  2 Bytes
      Blksize_2,
      --  3 Bytes
      Blksize_3,
      --  4 Bytes
      Blksize_4,
      --  511 Bytes
      Blksize_511,
      --  512 Bytes
      Blksize_512,
      --  2048 Bytes
      Blksize_2048,
      --  4096 Bytes
      Blksize_4096)
     with Size => 13;
   for BLK_ATT_BLKSIZE_Field use
     (Blksize_0 => 0,
      Blksize_1 => 1,
      Blksize_2 => 2,
      Blksize_3 => 3,
      Blksize_4 => 4,
      Blksize_511 => 511,
      Blksize_512 => 512,
      Blksize_2048 => 2048,
      Blksize_4096 => 4096);

   --  Block Count
   type BLK_ATT_BLKCNT_Field is
     (
      --  Stop Count
      Blkcnt_0,
      --  1 block
      Blkcnt_1,
      --  2 blocks
      Blkcnt_2,
      --  65535 blocks
      Blkcnt_65535)
     with Size => 16;
   for BLK_ATT_BLKCNT_Field use
     (Blkcnt_0 => 0,
      Blkcnt_1 => 1,
      Blkcnt_2 => 2,
      Blkcnt_65535 => 65535);

   --  Block Attributes
   type BLK_ATT_Register is record
      --  Block Size
      BLKSIZE        : BLK_ATT_BLKSIZE_Field := NRF_SVD.uSDHC.Blksize_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Block Count
      BLKCNT         : BLK_ATT_BLKCNT_Field := NRF_SVD.uSDHC.Blkcnt_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BLK_ATT_Register use record
      BLKSIZE        at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BLKCNT         at 0 range 16 .. 31;
   end record;

   --  Response Type Select
   type CMD_XFR_TYP_RSPTYP_Field is
     (
      --  No Response
      Rsptyp_0,
      --  Response Length 136
      Rsptyp_1,
      --  Response Length 48
      Rsptyp_2,
      --  Response Length 48, check Busy after response
      Rsptyp_3)
     with Size => 2;
   for CMD_XFR_TYP_RSPTYP_Field use
     (Rsptyp_0 => 0,
      Rsptyp_1 => 1,
      Rsptyp_2 => 2,
      Rsptyp_3 => 3);

   --  Command CRC Check Enable
   type CMD_XFR_TYP_CCCEN_Field is
     (
      --  Disable
      Cccen_0,
      --  Enable
      Cccen_1)
     with Size => 1;
   for CMD_XFR_TYP_CCCEN_Field use
     (Cccen_0 => 0,
      Cccen_1 => 1);

   --  Command Index Check Enable
   type CMD_XFR_TYP_CICEN_Field is
     (
      --  Disable
      Cicen_0,
      --  Enable
      Cicen_1)
     with Size => 1;
   for CMD_XFR_TYP_CICEN_Field use
     (Cicen_0 => 0,
      Cicen_1 => 1);

   --  Data Present Select
   type CMD_XFR_TYP_DPSEL_Field is
     (
      --  No Data Present
      Dpsel_0,
      --  Data Present
      Dpsel_1)
     with Size => 1;
   for CMD_XFR_TYP_DPSEL_Field use
     (Dpsel_0 => 0,
      Dpsel_1 => 1);

   --  Command Type
   type CMD_XFR_TYP_CMDTYP_Field is
     (
      --  Normal Other commands
      Cmdtyp_0,
      --  Suspend CMD52 for writing Bus Suspend in CCCR
      Cmdtyp_1,
      --  Resume CMD52 for writing Function Select in CCCR
      Cmdtyp_2,
      --  Abort CMD12, CMD52 for writing I/O Abort in CCCR
      Cmdtyp_3)
     with Size => 2;
   for CMD_XFR_TYP_CMDTYP_Field use
     (Cmdtyp_0 => 0,
      Cmdtyp_1 => 1,
      Cmdtyp_2 => 2,
      Cmdtyp_3 => 3);

   subtype CMD_XFR_TYP_CMDINX_Field is HAL.UInt6;

   --  Command Transfer Type
   type CMD_XFR_TYP_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Response Type Select
      RSPTYP         : CMD_XFR_TYP_RSPTYP_Field := NRF_SVD.uSDHC.Rsptyp_0;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Command CRC Check Enable
      CCCEN          : CMD_XFR_TYP_CCCEN_Field := NRF_SVD.uSDHC.Cccen_0;
      --  Command Index Check Enable
      CICEN          : CMD_XFR_TYP_CICEN_Field := NRF_SVD.uSDHC.Cicen_0;
      --  Data Present Select
      DPSEL          : CMD_XFR_TYP_DPSEL_Field := NRF_SVD.uSDHC.Dpsel_0;
      --  Command Type
      CMDTYP         : CMD_XFR_TYP_CMDTYP_Field := NRF_SVD.uSDHC.Cmdtyp_0;
      --  Command Index
      CMDINX         : CMD_XFR_TYP_CMDINX_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_XFR_TYP_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RSPTYP         at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      CCCEN          at 0 range 19 .. 19;
      CICEN          at 0 range 20 .. 20;
      DPSEL          at 0 range 21 .. 21;
      CMDTYP         at 0 range 22 .. 23;
      CMDINX         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Command Inhibit (CMD)
   type PRES_STATE_CIHB_Field is
     (
      --  Can issue command using only CMD line
      Cihb_0,
      --  Cannot issue command
      Cihb_1)
     with Size => 1;
   for PRES_STATE_CIHB_Field use
     (Cihb_0 => 0,
      Cihb_1 => 1);

   --  Command Inhibit (DATA)
   type PRES_STATE_CDIHB_Field is
     (
      --  Can issue command which uses the DATA line
      Cdihb_0,
      --  Cannot issue command which uses the DATA line
      Cdihb_1)
     with Size => 1;
   for PRES_STATE_CDIHB_Field use
     (Cdihb_0 => 0,
      Cdihb_1 => 1);

   --  Data Line Active
   type PRES_STATE_DLA_Field is
     (
      --  DATA Line Inactive
      Dla_0,
      --  DATA Line Active
      Dla_1)
     with Size => 1;
   for PRES_STATE_DLA_Field use
     (Dla_0 => 0,
      Dla_1 => 1);

   --  SD Clock Stable
   type PRES_STATE_SDSTB_Field is
     (
      --  Clock is changing frequency and not stable.
      Sdstb_0,
      --  Clock is stable.
      Sdstb_1)
     with Size => 1;
   for PRES_STATE_SDSTB_Field use
     (Sdstb_0 => 0,
      Sdstb_1 => 1);

   --  IPG_CLK Gated Off Internally
   type PRES_STATE_IPGOFF_Field is
     (
      --  IPG_CLK is active.
      Ipgoff_0,
      --  IPG_CLK is gated off.
      Ipgoff_1)
     with Size => 1;
   for PRES_STATE_IPGOFF_Field use
     (Ipgoff_0 => 0,
      Ipgoff_1 => 1);

   --  HCLK Gated Off Internally
   type PRES_STATE_HCKOFF_Field is
     (
      --  HCLK is active.
      Hckoff_0,
      --  HCLK is gated off.
      Hckoff_1)
     with Size => 1;
   for PRES_STATE_HCKOFF_Field use
     (Hckoff_0 => 0,
      Hckoff_1 => 1);

   --  IPG_PERCLK Gated Off Internally
   type PRES_STATE_PEROFF_Field is
     (
      --  IPG_PERCLK is active.
      Peroff_0,
      --  IPG_PERCLK is gated off.
      Peroff_1)
     with Size => 1;
   for PRES_STATE_PEROFF_Field use
     (Peroff_0 => 0,
      Peroff_1 => 1);

   --  SD Clock Gated Off Internally
   type PRES_STATE_SDOFF_Field is
     (
      --  SD Clock is active.
      Sdoff_0,
      --  SD Clock is gated off.
      Sdoff_1)
     with Size => 1;
   for PRES_STATE_SDOFF_Field use
     (Sdoff_0 => 0,
      Sdoff_1 => 1);

   --  Write Transfer Active
   type PRES_STATE_WTA_Field is
     (
      --  No valid data
      Wta_0,
      --  Transferring data
      Wta_1)
     with Size => 1;
   for PRES_STATE_WTA_Field use
     (Wta_0 => 0,
      Wta_1 => 1);

   --  Read Transfer Active
   type PRES_STATE_RTA_Field is
     (
      --  No valid data
      Rta_0,
      --  Transferring data
      Rta_1)
     with Size => 1;
   for PRES_STATE_RTA_Field use
     (Rta_0 => 0,
      Rta_1 => 1);

   --  Buffer Write Enable
   type PRES_STATE_BWEN_Field is
     (
      --  Write disable
      Bwen_0,
      --  Write enable
      Bwen_1)
     with Size => 1;
   for PRES_STATE_BWEN_Field use
     (Bwen_0 => 0,
      Bwen_1 => 1);

   --  Buffer Read Enable
   type PRES_STATE_BREN_Field is
     (
      --  Read disable
      Bren_0,
      --  Read enable
      Bren_1)
     with Size => 1;
   for PRES_STATE_BREN_Field use
     (Bren_0 => 0,
      Bren_1 => 1);

   --  Re-Tuning Request (only for SD3.0 SDR104 mode and EMMC HS200 mode)
   type PRES_STATE_RTR_Field is
     (
      --  Fixed or well tuned sampling clock
      Rtr_0,
      --  Sampling clock needs re-tuning
      Rtr_1)
     with Size => 1;
   for PRES_STATE_RTR_Field use
     (Rtr_0 => 0,
      Rtr_1 => 1);

   --  Tape Select Change Done
   type PRES_STATE_TSCD_Field is
     (
      --  Delay cell select change is not finished.
      Tscd_0,
      --  Delay cell select change is finished.
      Tscd_1)
     with Size => 1;
   for PRES_STATE_TSCD_Field use
     (Tscd_0 => 0,
      Tscd_1 => 1);

   --  Card Inserted
   type PRES_STATE_CINST_Field is
     (
      --  Power on Reset or No Card
      Cinst_0,
      --  Card Inserted
      Cinst_1)
     with Size => 1;
   for PRES_STATE_CINST_Field use
     (Cinst_0 => 0,
      Cinst_1 => 1);

   --  Card Detect Pin Level
   type PRES_STATE_CDPL_Field is
     (
      --  No card present (CD_B = 1)
      Cdpl_0,
      --  Card present (CD_B = 0)
      Cdpl_1)
     with Size => 1;
   for PRES_STATE_CDPL_Field use
     (Cdpl_0 => 0,
      Cdpl_1 => 1);

   --  Write Protect Switch Pin Level
   type PRES_STATE_WPSPL_Field is
     (
      --  Write protected (WP = 1)
      Wpspl_0,
      --  Write enabled (WP = 0)
      Wpspl_1)
     with Size => 1;
   for PRES_STATE_WPSPL_Field use
     (Wpspl_0 => 0,
      Wpspl_1 => 1);

   --  DATA[7:0] Line Signal Level
   type PRES_STATE_DLSL_Field is
     (
      --  Data 0 line signal level
      Data0,
      --  Data 1 line signal level
      Data1,
      --  Data 2 line signal level
      Data2,
      --  Data 3 line signal level
      Data3,
      --  Data 4 line signal level
      Data4,
      --  Data 5 line signal level
      Data5,
      --  Data 6 line signal level
      Data6,
      --  Data 7 line signal level
      Data7)
     with Size => 8;
   for PRES_STATE_DLSL_Field use
     (Data0 => 0,
      Data1 => 1,
      Data2 => 2,
      Data3 => 3,
      Data4 => 4,
      Data5 => 5,
      Data6 => 6,
      Data7 => 7);

   --  Present State
   type PRES_STATE_Register is record
      --  Read-only. Command Inhibit (CMD)
      CIHB           : PRES_STATE_CIHB_Field;
      --  Read-only. Command Inhibit (DATA)
      CDIHB          : PRES_STATE_CDIHB_Field;
      --  Read-only. Data Line Active
      DLA            : PRES_STATE_DLA_Field;
      --  Read-only. SD Clock Stable
      SDSTB          : PRES_STATE_SDSTB_Field;
      --  Read-only. IPG_CLK Gated Off Internally
      IPGOFF         : PRES_STATE_IPGOFF_Field;
      --  Read-only. HCLK Gated Off Internally
      HCKOFF         : PRES_STATE_HCKOFF_Field;
      --  Read-only. IPG_PERCLK Gated Off Internally
      PEROFF         : PRES_STATE_PEROFF_Field;
      --  Read-only. SD Clock Gated Off Internally
      SDOFF          : PRES_STATE_SDOFF_Field;
      --  Read-only. Write Transfer Active
      WTA            : PRES_STATE_WTA_Field;
      --  Read-only. Read Transfer Active
      RTA            : PRES_STATE_RTA_Field;
      --  Read-only. Buffer Write Enable
      BWEN           : PRES_STATE_BWEN_Field;
      --  Read-only. Buffer Read Enable
      BREN           : PRES_STATE_BREN_Field;
      --  Read-only. Re-Tuning Request (only for SD3.0 SDR104 mode and EMMC
      --  HS200 mode)
      RTR            : PRES_STATE_RTR_Field;
      --  unspecified
      Reserved_13_14 : HAL.UInt2;
      --  Read-only. Tape Select Change Done
      TSCD           : PRES_STATE_TSCD_Field;
      --  Read-only. Card Inserted
      CINST          : PRES_STATE_CINST_Field;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Card Detect Pin Level
      CDPL           : PRES_STATE_CDPL_Field;
      --  Read-only. Write Protect Switch Pin Level
      WPSPL          : PRES_STATE_WPSPL_Field;
      --  unspecified
      Reserved_20_22 : HAL.UInt3;
      --  Read-only. CMD Line Signal Level
      CLSL           : Boolean;
      --  Read-only. DATA[7:0] Line Signal Level
      DLSL           : PRES_STATE_DLSL_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRES_STATE_Register use record
      CIHB           at 0 range 0 .. 0;
      CDIHB          at 0 range 1 .. 1;
      DLA            at 0 range 2 .. 2;
      SDSTB          at 0 range 3 .. 3;
      IPGOFF         at 0 range 4 .. 4;
      HCKOFF         at 0 range 5 .. 5;
      PEROFF         at 0 range 6 .. 6;
      SDOFF          at 0 range 7 .. 7;
      WTA            at 0 range 8 .. 8;
      RTA            at 0 range 9 .. 9;
      BWEN           at 0 range 10 .. 10;
      BREN           at 0 range 11 .. 11;
      RTR            at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TSCD           at 0 range 15 .. 15;
      CINST          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CDPL           at 0 range 18 .. 18;
      WPSPL          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      CLSL           at 0 range 23 .. 23;
      DLSL           at 0 range 24 .. 31;
   end record;

   --  LED Control
   type PROT_CTRL_LCTL_Field is
     (
      --  LED off
      Lctl_0,
      --  LED on
      Lctl_1)
     with Size => 1;
   for PROT_CTRL_LCTL_Field use
     (Lctl_0 => 0,
      Lctl_1 => 1);

   --  Data Transfer Width
   type PROT_CTRL_DTW_Field is
     (
      --  1-bit mode
      Dtw_0,
      --  4-bit mode
      Dtw_1,
      --  8-bit mode
      Dtw_2)
     with Size => 2;
   for PROT_CTRL_DTW_Field use
     (Dtw_0 => 0,
      Dtw_1 => 1,
      Dtw_2 => 2);

   --  DATA3 as Card Detection Pin
   type PROT_CTRL_D3CD_Field is
     (
      --  DATA3 does not monitor Card Insertion
      D3Cd_0,
      --  DATA3 as Card Detection Pin
      D3Cd_1)
     with Size => 1;
   for PROT_CTRL_D3CD_Field use
     (D3Cd_0 => 0,
      D3Cd_1 => 1);

   --  Endian Mode
   type PROT_CTRL_EMODE_Field is
     (
      --  Big Endian Mode
      Emode_0,
      --  Half Word Big Endian Mode
      Emode_1,
      --  Little Endian Mode
      Emode_2)
     with Size => 2;
   for PROT_CTRL_EMODE_Field use
     (Emode_0 => 0,
      Emode_1 => 1,
      Emode_2 => 2);

   --  Card Detect Test Level
   type PROT_CTRL_CDTL_Field is
     (
      --  Card Detect Test Level is 0, no card inserted
      Cdtl_0,
      --  Card Detect Test Level is 1, card inserted
      Cdtl_1)
     with Size => 1;
   for PROT_CTRL_CDTL_Field use
     (Cdtl_0 => 0,
      Cdtl_1 => 1);

   --  Card Detect Signal Selection
   type PROT_CTRL_CDSS_Field is
     (
      --  Card Detection Level is selected (for normal purpose).
      Cdss_0,
      --  Card Detection Test Level is selected (for test purpose).
      Cdss_1)
     with Size => 1;
   for PROT_CTRL_CDSS_Field use
     (Cdss_0 => 0,
      Cdss_1 => 1);

   --  DMA Select
   type PROT_CTRL_DMASEL_Field is
     (
      --  No DMA or Simple DMA is selected
      Dmasel_0,
      --  ADMA1 is selected
      Dmasel_1,
      --  ADMA2 is selected
      Dmasel_2)
     with Size => 2;
   for PROT_CTRL_DMASEL_Field use
     (Dmasel_0 => 0,
      Dmasel_1 => 1,
      Dmasel_2 => 2);

   --  Stop At Block Gap Request
   type PROT_CTRL_SABGREQ_Field is
     (
      --  Transfer
      Sabgreq_0,
      --  Stop
      Sabgreq_1)
     with Size => 1;
   for PROT_CTRL_SABGREQ_Field use
     (Sabgreq_0 => 0,
      Sabgreq_1 => 1);

   --  Continue Request
   type PROT_CTRL_CREQ_Field is
     (
      --  No effect
      Creq_0,
      --  Restart
      Creq_1)
     with Size => 1;
   for PROT_CTRL_CREQ_Field use
     (Creq_0 => 0,
      Creq_1 => 1);

   --  Read Wait Control
   type PROT_CTRL_RWCTL_Field is
     (
      --  Disable Read Wait Control, and stop SD Clock at block gap when
      --  SABGREQ bit is set
      Rwctl_0,
      --  Enable Read Wait Control, and assert Read Wait without stopping SD
      --  Clock at block gap when SABGREQ bit is set
      Rwctl_1)
     with Size => 1;
   for PROT_CTRL_RWCTL_Field use
     (Rwctl_0 => 0,
      Rwctl_1 => 1);

   --  Interrupt At Block Gap
   type PROT_CTRL_IABG_Field is
     (
      --  Disabled
      Iabg_0,
      --  Enabled
      Iabg_1)
     with Size => 1;
   for PROT_CTRL_IABG_Field use
     (Iabg_0 => 0,
      Iabg_1 => 1);

   --  Wakeup Event Enable On Card Interrupt
   type PROT_CTRL_WECINT_Field is
     (
      --  Disable
      Wecint_0,
      --  Enable
      Wecint_1)
     with Size => 1;
   for PROT_CTRL_WECINT_Field use
     (Wecint_0 => 0,
      Wecint_1 => 1);

   --  Wakeup Event Enable On SD Card Insertion
   type PROT_CTRL_WECINS_Field is
     (
      --  Disable
      Wecins_0,
      --  Enable
      Wecins_1)
     with Size => 1;
   for PROT_CTRL_WECINS_Field use
     (Wecins_0 => 0,
      Wecins_1 => 1);

   --  Wakeup Event Enable On SD Card Removal
   type PROT_CTRL_WECRM_Field is
     (
      --  Disable
      Wecrm_0,
      --  Enable
      Wecrm_1)
     with Size => 1;
   for PROT_CTRL_WECRM_Field use
     (Wecrm_0 => 0,
      Wecrm_1 => 1);

   subtype PROT_CTRL_BURST_LEN_EN_Field is HAL.UInt3;

   --  NON_EXACT_BLK_RD
   type PROT_CTRL_NON_EXACT_BLK_RD_Field is
     (
      --  The block read is exact block read. Host driver doesn't need to issue
      --  abort command to terminate this multi-block read.
      Non_Exact_Blk_Rd_0,
      --  The block read is non-exact block read. Host driver needs to issue
      --  abort command to terminate this multi-block read.
      Non_Exact_Blk_Rd_1)
     with Size => 1;
   for PROT_CTRL_NON_EXACT_BLK_RD_Field use
     (Non_Exact_Blk_Rd_0 => 0,
      Non_Exact_Blk_Rd_1 => 1);

   --  Protocol Control
   type PROT_CTRL_Register is record
      --  LED Control
      LCTL             : PROT_CTRL_LCTL_Field := NRF_SVD.uSDHC.Lctl_0;
      --  Data Transfer Width
      DTW              : PROT_CTRL_DTW_Field := NRF_SVD.uSDHC.Dtw_0;
      --  DATA3 as Card Detection Pin
      D3CD             : PROT_CTRL_D3CD_Field := NRF_SVD.uSDHC.D3Cd_0;
      --  Endian Mode
      EMODE            : PROT_CTRL_EMODE_Field := NRF_SVD.uSDHC.Emode_2;
      --  Card Detect Test Level
      CDTL             : PROT_CTRL_CDTL_Field := NRF_SVD.uSDHC.Cdtl_0;
      --  Card Detect Signal Selection
      CDSS             : PROT_CTRL_CDSS_Field := NRF_SVD.uSDHC.Cdss_0;
      --  DMA Select
      DMASEL           : PROT_CTRL_DMASEL_Field := NRF_SVD.uSDHC.Dmasel_0;
      --  unspecified
      Reserved_10_15   : HAL.UInt6 := 16#0#;
      --  Stop At Block Gap Request
      SABGREQ          : PROT_CTRL_SABGREQ_Field := NRF_SVD.uSDHC.Sabgreq_0;
      --  Continue Request
      CREQ             : PROT_CTRL_CREQ_Field := NRF_SVD.uSDHC.Creq_0;
      --  Read Wait Control
      RWCTL            : PROT_CTRL_RWCTL_Field := NRF_SVD.uSDHC.Rwctl_0;
      --  Interrupt At Block Gap
      IABG             : PROT_CTRL_IABG_Field := NRF_SVD.uSDHC.Iabg_0;
      --  RD_DONE_NO_8CLK
      RD_DONE_NO_8CLK  : Boolean := False;
      --  unspecified
      Reserved_21_23   : HAL.UInt3 := 16#4#;
      --  Wakeup Event Enable On Card Interrupt
      WECINT           : PROT_CTRL_WECINT_Field := NRF_SVD.uSDHC.Wecint_0;
      --  Wakeup Event Enable On SD Card Insertion
      WECINS           : PROT_CTRL_WECINS_Field := NRF_SVD.uSDHC.Wecins_0;
      --  Wakeup Event Enable On SD Card Removal
      WECRM            : PROT_CTRL_WECRM_Field := NRF_SVD.uSDHC.Wecrm_0;
      --  BURST length enable for INCR, INCR4 / INCR8 / INCR16, INCR4-WRAP /
      --  INCR8-WRAP / INCR16-WRAP
      BURST_LEN_EN     : PROT_CTRL_BURST_LEN_EN_Field := 16#1#;
      --  NON_EXACT_BLK_RD
      NON_EXACT_BLK_RD : PROT_CTRL_NON_EXACT_BLK_RD_Field :=
                          NRF_SVD.uSDHC.Non_Exact_Blk_Rd_0;
      --  unspecified
      Reserved_31_31   : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PROT_CTRL_Register use record
      LCTL             at 0 range 0 .. 0;
      DTW              at 0 range 1 .. 2;
      D3CD             at 0 range 3 .. 3;
      EMODE            at 0 range 4 .. 5;
      CDTL             at 0 range 6 .. 6;
      CDSS             at 0 range 7 .. 7;
      DMASEL           at 0 range 8 .. 9;
      Reserved_10_15   at 0 range 10 .. 15;
      SABGREQ          at 0 range 16 .. 16;
      CREQ             at 0 range 17 .. 17;
      RWCTL            at 0 range 18 .. 18;
      IABG             at 0 range 19 .. 19;
      RD_DONE_NO_8CLK  at 0 range 20 .. 20;
      Reserved_21_23   at 0 range 21 .. 23;
      WECINT           at 0 range 24 .. 24;
      WECINS           at 0 range 25 .. 25;
      WECRM            at 0 range 26 .. 26;
      BURST_LEN_EN     at 0 range 27 .. 29;
      NON_EXACT_BLK_RD at 0 range 30 .. 30;
      Reserved_31_31   at 0 range 31 .. 31;
   end record;

   --  Divisor
   type SYS_CTRL_DVS_Field is
     (
      --  Divide-by-1
      Dvs_0,
      --  Divide-by-2
      Dvs_1,
      --  Divide-by-15
      Dvs_14,
      --  Divide-by-16
      Dvs_15)
     with Size => 4;
   for SYS_CTRL_DVS_Field use
     (Dvs_0 => 0,
      Dvs_1 => 1,
      Dvs_14 => 14,
      Dvs_15 => 15);

   subtype SYS_CTRL_SDCLKFS_Field is HAL.UInt8;

   --  Data Timeout Counter Value
   type SYS_CTRL_DTOCV_Field is
     (
      --  no description available
      Dtocv_0,
      --  no description available
      Dtocv_1,
      --  no description available
      Dtocv_13,
      --  no description available
      Dtocv_14,
      --  no description available
      Dtocv_15)
     with Size => 4;
   for SYS_CTRL_DTOCV_Field use
     (Dtocv_0 => 0,
      Dtocv_1 => 1,
      Dtocv_13 => 13,
      Dtocv_14 => 14,
      Dtocv_15 => 15);

   --  Software Reset For ALL
   type SYS_CTRL_RSTA_Field is
     (
      --  No Reset
      Rsta_0,
      --  Reset
      Rsta_1)
     with Size => 1;
   for SYS_CTRL_RSTA_Field use
     (Rsta_0 => 0,
      Rsta_1 => 1);

   --  Software Reset For CMD Line
   type SYS_CTRL_RSTC_Field is
     (
      --  No Reset
      Rstc_0,
      --  Reset
      Rstc_1)
     with Size => 1;
   for SYS_CTRL_RSTC_Field use
     (Rstc_0 => 0,
      Rstc_1 => 1);

   --  Software Reset For DATA Line
   type SYS_CTRL_RSTD_Field is
     (
      --  No Reset
      Rstd_0,
      --  Reset
      Rstd_1)
     with Size => 1;
   for SYS_CTRL_RSTD_Field use
     (Rstd_0 => 0,
      Rstd_1 => 1);

   --  System Control
   type SYS_CTRL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#F#;
      --  Divisor
      DVS            : SYS_CTRL_DVS_Field := NRF_SVD.uSDHC.Dvs_0;
      --  SDCLK Frequency Select
      SDCLKFS        : SYS_CTRL_SDCLKFS_Field := 16#80#;
      --  Data Timeout Counter Value
      DTOCV          : SYS_CTRL_DTOCV_Field := NRF_SVD.uSDHC.Dtocv_0;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  IPP_RST_N
      IPP_RST_N      : Boolean := True;
      --  Software Reset For ALL
      RSTA           : SYS_CTRL_RSTA_Field := NRF_SVD.uSDHC.Rsta_0;
      --  Software Reset For CMD Line
      RSTC           : SYS_CTRL_RSTC_Field := NRF_SVD.uSDHC.Rstc_0;
      --  Software Reset For DATA Line
      RSTD           : SYS_CTRL_RSTD_Field := NRF_SVD.uSDHC.Rstd_0;
      --  Initialization Active
      INITA          : Boolean := False;
      --  Reset Tuning
      RSTT           : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYS_CTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DVS            at 0 range 4 .. 7;
      SDCLKFS        at 0 range 8 .. 15;
      DTOCV          at 0 range 16 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      IPP_RST_N      at 0 range 23 .. 23;
      RSTA           at 0 range 24 .. 24;
      RSTC           at 0 range 25 .. 25;
      RSTD           at 0 range 26 .. 26;
      INITA          at 0 range 27 .. 27;
      RSTT           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Command Complete
   type INT_STATUS_CC_Field is
     (
      --  Command not complete
      Cc_0,
      --  Command complete
      Cc_1)
     with Size => 1;
   for INT_STATUS_CC_Field use
     (Cc_0 => 0,
      Cc_1 => 1);

   --  Transfer Complete
   type INT_STATUS_TC_Field is
     (
      --  Transfer not complete
      Tc_0,
      --  Transfer complete
      Tc_1)
     with Size => 1;
   for INT_STATUS_TC_Field use
     (Tc_0 => 0,
      Tc_1 => 1);

   --  Block Gap Event
   type INT_STATUS_BGE_Field is
     (
      --  No block gap event
      Bge_0,
      --  Transaction stopped at block gap
      Bge_1)
     with Size => 1;
   for INT_STATUS_BGE_Field use
     (Bge_0 => 0,
      Bge_1 => 1);

   --  DMA Interrupt
   type INT_STATUS_DINT_Field is
     (
      --  No DMA Interrupt
      Dint_0,
      --  DMA Interrupt is generated
      Dint_1)
     with Size => 1;
   for INT_STATUS_DINT_Field use
     (Dint_0 => 0,
      Dint_1 => 1);

   --  Buffer Write Ready
   type INT_STATUS_BWR_Field is
     (
      --  Not ready to write buffer
      Bwr_0,
      --  Ready to write buffer:
      Bwr_1)
     with Size => 1;
   for INT_STATUS_BWR_Field use
     (Bwr_0 => 0,
      Bwr_1 => 1);

   --  Buffer Read Ready
   type INT_STATUS_BRR_Field is
     (
      --  Not ready to read buffer
      Brr_0,
      --  Ready to read buffer
      Brr_1)
     with Size => 1;
   for INT_STATUS_BRR_Field use
     (Brr_0 => 0,
      Brr_1 => 1);

   --  Card Insertion
   type INT_STATUS_CINS_Field is
     (
      --  Card state unstable or removed
      Cins_0,
      --  Card inserted
      Cins_1)
     with Size => 1;
   for INT_STATUS_CINS_Field use
     (Cins_0 => 0,
      Cins_1 => 1);

   --  Card Removal
   type INT_STATUS_CRM_Field is
     (
      --  Card state unstable or inserted
      Crm_0,
      --  Card removed
      Crm_1)
     with Size => 1;
   for INT_STATUS_CRM_Field use
     (Crm_0 => 0,
      Crm_1 => 1);

   --  Card Interrupt
   type INT_STATUS_CINT_Field is
     (
      --  No Card Interrupt
      Cint_0,
      --  Generate Card Interrupt
      Cint_1)
     with Size => 1;
   for INT_STATUS_CINT_Field use
     (Cint_0 => 0,
      Cint_1 => 1);

   --  Re-Tuning Event: (only for SD3.0 SDR104 mode and EMMC HS200 mode)
   type INT_STATUS_RTE_Field is
     (
      --  Re-Tuning is not required
      Rte_0,
      --  Re-Tuning should be performed
      Rte_1)
     with Size => 1;
   for INT_STATUS_RTE_Field use
     (Rte_0 => 0,
      Rte_1 => 1);

   --  Command Timeout Error
   type INT_STATUS_CTOE_Field is
     (
      --  No Error
      Ctoe_0,
      --  Time out
      Ctoe_1)
     with Size => 1;
   for INT_STATUS_CTOE_Field use
     (Ctoe_0 => 0,
      Ctoe_1 => 1);

   --  Command CRC Error
   type INT_STATUS_CCE_Field is
     (
      --  No Error
      Cce_0,
      --  CRC Error Generated.
      Cce_1)
     with Size => 1;
   for INT_STATUS_CCE_Field use
     (Cce_0 => 0,
      Cce_1 => 1);

   --  Command End Bit Error
   type INT_STATUS_CEBE_Field is
     (
      --  No Error
      Cebe_0,
      --  End Bit Error Generated
      Cebe_1)
     with Size => 1;
   for INT_STATUS_CEBE_Field use
     (Cebe_0 => 0,
      Cebe_1 => 1);

   --  Command Index Error
   type INT_STATUS_CIE_Field is
     (
      --  No Error
      Cie_0,
      --  Error
      Cie_1)
     with Size => 1;
   for INT_STATUS_CIE_Field use
     (Cie_0 => 0,
      Cie_1 => 1);

   --  Data Timeout Error
   type INT_STATUS_DTOE_Field is
     (
      --  No Error
      Dtoe_0,
      --  Time out
      Dtoe_1)
     with Size => 1;
   for INT_STATUS_DTOE_Field use
     (Dtoe_0 => 0,
      Dtoe_1 => 1);

   --  Data CRC Error
   type INT_STATUS_DCE_Field is
     (
      --  No Error
      Dce_0,
      --  Error
      Dce_1)
     with Size => 1;
   for INT_STATUS_DCE_Field use
     (Dce_0 => 0,
      Dce_1 => 1);

   --  Data End Bit Error
   type INT_STATUS_DEBE_Field is
     (
      --  No Error
      Debe_0,
      --  Error
      Debe_1)
     with Size => 1;
   for INT_STATUS_DEBE_Field use
     (Debe_0 => 0,
      Debe_1 => 1);

   --  Auto CMD12 Error
   type INT_STATUS_AC12E_Field is
     (
      --  No Error
      Ac12E_0,
      --  Error
      Ac12E_1)
     with Size => 1;
   for INT_STATUS_AC12E_Field use
     (Ac12E_0 => 0,
      Ac12E_1 => 1);

   --  DMA Error
   type INT_STATUS_DMAE_Field is
     (
      --  No Error
      Dmae_0,
      --  Error
      Dmae_1)
     with Size => 1;
   for INT_STATUS_DMAE_Field use
     (Dmae_0 => 0,
      Dmae_1 => 1);

   --  Interrupt Status
   type INT_STATUS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Command Complete
      CC             : INT_STATUS_CC_Field := NRF_SVD.uSDHC.Cc_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Transfer Complete
      TC             : INT_STATUS_TC_Field := NRF_SVD.uSDHC.Tc_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Block Gap Event
      BGE            : INT_STATUS_BGE_Field := NRF_SVD.uSDHC.Bge_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA Interrupt
      DINT           : INT_STATUS_DINT_Field := NRF_SVD.uSDHC.Dint_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer Write Ready
      BWR            : INT_STATUS_BWR_Field := NRF_SVD.uSDHC.Bwr_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Buffer Read Ready
      BRR            : INT_STATUS_BRR_Field := NRF_SVD.uSDHC.Brr_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Card Insertion
      CINS           : INT_STATUS_CINS_Field := NRF_SVD.uSDHC.Cins_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Card Removal
      CRM            : INT_STATUS_CRM_Field := NRF_SVD.uSDHC.Crm_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Card Interrupt
      CINT           : INT_STATUS_CINT_Field := NRF_SVD.uSDHC.Cint_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Re-Tuning Event: (only for SD3.0 SDR104 mode and EMMC
      --  HS200 mode)
      RTE            : INT_STATUS_RTE_Field := NRF_SVD.uSDHC.Rte_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Tuning Pass:(only for SD3.0 SDR104 mode and EMMC HS200
      --  mode)
      TP             : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Command Timeout Error
      CTOE           : INT_STATUS_CTOE_Field := NRF_SVD.uSDHC.Ctoe_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Command CRC Error
      CCE            : INT_STATUS_CCE_Field := NRF_SVD.uSDHC.Cce_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Command End Bit Error
      CEBE           : INT_STATUS_CEBE_Field := NRF_SVD.uSDHC.Cebe_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Command Index Error
      CIE            : INT_STATUS_CIE_Field := NRF_SVD.uSDHC.Cie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Data Timeout Error
      DTOE           : INT_STATUS_DTOE_Field := NRF_SVD.uSDHC.Dtoe_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Data CRC Error
      DCE            : INT_STATUS_DCE_Field := NRF_SVD.uSDHC.Dce_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Data End Bit Error
      DEBE           : INT_STATUS_DEBE_Field := NRF_SVD.uSDHC.Debe_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Auto CMD12 Error
      AC12E          : INT_STATUS_AC12E_Field := NRF_SVD.uSDHC.Ac12E_0;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Tuning Error: (only for SD3.0 SDR104 mode and EMMC
      --  HS200 mode)
      TNE            : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA Error
      DMAE           : INT_STATUS_DMAE_Field := NRF_SVD.uSDHC.Dmae_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_STATUS_Register use record
      CC             at 0 range 0 .. 0;
      TC             at 0 range 1 .. 1;
      BGE            at 0 range 2 .. 2;
      DINT           at 0 range 3 .. 3;
      BWR            at 0 range 4 .. 4;
      BRR            at 0 range 5 .. 5;
      CINS           at 0 range 6 .. 6;
      CRM            at 0 range 7 .. 7;
      CINT           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RTE            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TP             at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CTOE           at 0 range 16 .. 16;
      CCE            at 0 range 17 .. 17;
      CEBE           at 0 range 18 .. 18;
      CIE            at 0 range 19 .. 19;
      DTOE           at 0 range 20 .. 20;
      DCE            at 0 range 21 .. 21;
      DEBE           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      AC12E          at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      TNE            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      DMAE           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Command Complete Status Enable
   type INT_STATUS_EN_CCSEN_Field is
     (
      --  Masked
      Ccsen_0,
      --  Enabled
      Ccsen_1)
     with Size => 1;
   for INT_STATUS_EN_CCSEN_Field use
     (Ccsen_0 => 0,
      Ccsen_1 => 1);

   --  Transfer Complete Status Enable
   type INT_STATUS_EN_TCSEN_Field is
     (
      --  Masked
      Tcsen_0,
      --  Enabled
      Tcsen_1)
     with Size => 1;
   for INT_STATUS_EN_TCSEN_Field use
     (Tcsen_0 => 0,
      Tcsen_1 => 1);

   --  Block Gap Event Status Enable
   type INT_STATUS_EN_BGESEN_Field is
     (
      --  Masked
      Bgesen_0,
      --  Enabled
      Bgesen_1)
     with Size => 1;
   for INT_STATUS_EN_BGESEN_Field use
     (Bgesen_0 => 0,
      Bgesen_1 => 1);

   --  DMA Interrupt Status Enable
   type INT_STATUS_EN_DINTSEN_Field is
     (
      --  Masked
      Dintsen_0,
      --  Enabled
      Dintsen_1)
     with Size => 1;
   for INT_STATUS_EN_DINTSEN_Field use
     (Dintsen_0 => 0,
      Dintsen_1 => 1);

   --  Buffer Write Ready Status Enable
   type INT_STATUS_EN_BWRSEN_Field is
     (
      --  Masked
      Bwrsen_0,
      --  Enabled
      Bwrsen_1)
     with Size => 1;
   for INT_STATUS_EN_BWRSEN_Field use
     (Bwrsen_0 => 0,
      Bwrsen_1 => 1);

   --  Buffer Read Ready Status Enable
   type INT_STATUS_EN_BRRSEN_Field is
     (
      --  Masked
      Brrsen_0,
      --  Enabled
      Brrsen_1)
     with Size => 1;
   for INT_STATUS_EN_BRRSEN_Field use
     (Brrsen_0 => 0,
      Brrsen_1 => 1);

   --  Card Insertion Status Enable
   type INT_STATUS_EN_CINSSEN_Field is
     (
      --  Masked
      Cinssen_0,
      --  Enabled
      Cinssen_1)
     with Size => 1;
   for INT_STATUS_EN_CINSSEN_Field use
     (Cinssen_0 => 0,
      Cinssen_1 => 1);

   --  Card Removal Status Enable
   type INT_STATUS_EN_CRMSEN_Field is
     (
      --  Masked
      Crmsen_0,
      --  Enabled
      Crmsen_1)
     with Size => 1;
   for INT_STATUS_EN_CRMSEN_Field use
     (Crmsen_0 => 0,
      Crmsen_1 => 1);

   --  Card Interrupt Status Enable
   type INT_STATUS_EN_CINTSEN_Field is
     (
      --  Masked
      Cintsen_0,
      --  Enabled
      Cintsen_1)
     with Size => 1;
   for INT_STATUS_EN_CINTSEN_Field use
     (Cintsen_0 => 0,
      Cintsen_1 => 1);

   --  Re-Tuning Event Status Enable
   type INT_STATUS_EN_RTESEN_Field is
     (
      --  Masked
      Rtesen_0,
      --  Enabled
      Rtesen_1)
     with Size => 1;
   for INT_STATUS_EN_RTESEN_Field use
     (Rtesen_0 => 0,
      Rtesen_1 => 1);

   --  Tuning Pass Status Enable
   type INT_STATUS_EN_TPSEN_Field is
     (
      --  Masked
      Tpsen_0,
      --  Enabled
      Tpsen_1)
     with Size => 1;
   for INT_STATUS_EN_TPSEN_Field use
     (Tpsen_0 => 0,
      Tpsen_1 => 1);

   --  Command Timeout Error Status Enable
   type INT_STATUS_EN_CTOESEN_Field is
     (
      --  Masked
      Ctoesen_0,
      --  Enabled
      Ctoesen_1)
     with Size => 1;
   for INT_STATUS_EN_CTOESEN_Field use
     (Ctoesen_0 => 0,
      Ctoesen_1 => 1);

   --  Command CRC Error Status Enable
   type INT_STATUS_EN_CCESEN_Field is
     (
      --  Masked
      Ccesen_0,
      --  Enabled
      Ccesen_1)
     with Size => 1;
   for INT_STATUS_EN_CCESEN_Field use
     (Ccesen_0 => 0,
      Ccesen_1 => 1);

   --  Command End Bit Error Status Enable
   type INT_STATUS_EN_CEBESEN_Field is
     (
      --  Masked
      Cebesen_0,
      --  Enabled
      Cebesen_1)
     with Size => 1;
   for INT_STATUS_EN_CEBESEN_Field use
     (Cebesen_0 => 0,
      Cebesen_1 => 1);

   --  Command Index Error Status Enable
   type INT_STATUS_EN_CIESEN_Field is
     (
      --  Masked
      Ciesen_0,
      --  Enabled
      Ciesen_1)
     with Size => 1;
   for INT_STATUS_EN_CIESEN_Field use
     (Ciesen_0 => 0,
      Ciesen_1 => 1);

   --  Data Timeout Error Status Enable
   type INT_STATUS_EN_DTOESEN_Field is
     (
      --  Masked
      Dtoesen_0,
      --  Enabled
      Dtoesen_1)
     with Size => 1;
   for INT_STATUS_EN_DTOESEN_Field use
     (Dtoesen_0 => 0,
      Dtoesen_1 => 1);

   --  Data CRC Error Status Enable
   type INT_STATUS_EN_DCESEN_Field is
     (
      --  Masked
      Dcesen_0,
      --  Enabled
      Dcesen_1)
     with Size => 1;
   for INT_STATUS_EN_DCESEN_Field use
     (Dcesen_0 => 0,
      Dcesen_1 => 1);

   --  Data End Bit Error Status Enable
   type INT_STATUS_EN_DEBESEN_Field is
     (
      --  Masked
      Debesen_0,
      --  Enabled
      Debesen_1)
     with Size => 1;
   for INT_STATUS_EN_DEBESEN_Field use
     (Debesen_0 => 0,
      Debesen_1 => 1);

   --  Auto CMD12 Error Status Enable
   type INT_STATUS_EN_AC12ESEN_Field is
     (
      --  Masked
      Ac12Esen_0,
      --  Enabled
      Ac12Esen_1)
     with Size => 1;
   for INT_STATUS_EN_AC12ESEN_Field use
     (Ac12Esen_0 => 0,
      Ac12Esen_1 => 1);

   --  Tuning Error Status Enable
   type INT_STATUS_EN_TNESEN_Field is
     (
      --  Masked
      Tnesen_0,
      --  Enabled
      Tnesen_1)
     with Size => 1;
   for INT_STATUS_EN_TNESEN_Field use
     (Tnesen_0 => 0,
      Tnesen_1 => 1);

   --  DMA Error Status Enable
   type INT_STATUS_EN_DMAESEN_Field is
     (
      --  Masked
      Dmaesen_0,
      --  Enabled
      Dmaesen_1)
     with Size => 1;
   for INT_STATUS_EN_DMAESEN_Field use
     (Dmaesen_0 => 0,
      Dmaesen_1 => 1);

   --  Interrupt Status Enable
   type INT_STATUS_EN_Register is record
      --  Command Complete Status Enable
      CCSEN          : INT_STATUS_EN_CCSEN_Field := NRF_SVD.uSDHC.Ccsen_0;
      --  Transfer Complete Status Enable
      TCSEN          : INT_STATUS_EN_TCSEN_Field := NRF_SVD.uSDHC.Tcsen_0;
      --  Block Gap Event Status Enable
      BGESEN         : INT_STATUS_EN_BGESEN_Field := NRF_SVD.uSDHC.Bgesen_0;
      --  DMA Interrupt Status Enable
      DINTSEN        : INT_STATUS_EN_DINTSEN_Field := NRF_SVD.uSDHC.Dintsen_0;
      --  Buffer Write Ready Status Enable
      BWRSEN         : INT_STATUS_EN_BWRSEN_Field := NRF_SVD.uSDHC.Bwrsen_0;
      --  Buffer Read Ready Status Enable
      BRRSEN         : INT_STATUS_EN_BRRSEN_Field := NRF_SVD.uSDHC.Brrsen_0;
      --  Card Insertion Status Enable
      CINSSEN        : INT_STATUS_EN_CINSSEN_Field := NRF_SVD.uSDHC.Cinssen_0;
      --  Card Removal Status Enable
      CRMSEN         : INT_STATUS_EN_CRMSEN_Field := NRF_SVD.uSDHC.Crmsen_0;
      --  Card Interrupt Status Enable
      CINTSEN        : INT_STATUS_EN_CINTSEN_Field := NRF_SVD.uSDHC.Cintsen_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Re-Tuning Event Status Enable
      RTESEN         : INT_STATUS_EN_RTESEN_Field := NRF_SVD.uSDHC.Rtesen_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Tuning Pass Status Enable
      TPSEN          : INT_STATUS_EN_TPSEN_Field := NRF_SVD.uSDHC.Tpsen_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Command Timeout Error Status Enable
      CTOESEN        : INT_STATUS_EN_CTOESEN_Field := NRF_SVD.uSDHC.Ctoesen_0;
      --  Command CRC Error Status Enable
      CCESEN         : INT_STATUS_EN_CCESEN_Field := NRF_SVD.uSDHC.Ccesen_0;
      --  Command End Bit Error Status Enable
      CEBESEN        : INT_STATUS_EN_CEBESEN_Field := NRF_SVD.uSDHC.Cebesen_0;
      --  Command Index Error Status Enable
      CIESEN         : INT_STATUS_EN_CIESEN_Field := NRF_SVD.uSDHC.Ciesen_0;
      --  Data Timeout Error Status Enable
      DTOESEN        : INT_STATUS_EN_DTOESEN_Field := NRF_SVD.uSDHC.Dtoesen_0;
      --  Data CRC Error Status Enable
      DCESEN         : INT_STATUS_EN_DCESEN_Field := NRF_SVD.uSDHC.Dcesen_0;
      --  Data End Bit Error Status Enable
      DEBESEN        : INT_STATUS_EN_DEBESEN_Field := NRF_SVD.uSDHC.Debesen_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Auto CMD12 Error Status Enable
      AC12ESEN       : INT_STATUS_EN_AC12ESEN_Field :=
                        NRF_SVD.uSDHC.Ac12Esen_0;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Tuning Error Status Enable
      TNESEN         : INT_STATUS_EN_TNESEN_Field := NRF_SVD.uSDHC.Tnesen_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  DMA Error Status Enable
      DMAESEN        : INT_STATUS_EN_DMAESEN_Field := NRF_SVD.uSDHC.Dmaesen_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_STATUS_EN_Register use record
      CCSEN          at 0 range 0 .. 0;
      TCSEN          at 0 range 1 .. 1;
      BGESEN         at 0 range 2 .. 2;
      DINTSEN        at 0 range 3 .. 3;
      BWRSEN         at 0 range 4 .. 4;
      BRRSEN         at 0 range 5 .. 5;
      CINSSEN        at 0 range 6 .. 6;
      CRMSEN         at 0 range 7 .. 7;
      CINTSEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RTESEN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TPSEN          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CTOESEN        at 0 range 16 .. 16;
      CCESEN         at 0 range 17 .. 17;
      CEBESEN        at 0 range 18 .. 18;
      CIESEN         at 0 range 19 .. 19;
      DTOESEN        at 0 range 20 .. 20;
      DCESEN         at 0 range 21 .. 21;
      DEBESEN        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      AC12ESEN       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      TNESEN         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      DMAESEN        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Command Complete Interrupt Enable
   type INT_SIGNAL_EN_CCIEN_Field is
     (
      --  Masked
      Ccien_0,
      --  Enabled
      Ccien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CCIEN_Field use
     (Ccien_0 => 0,
      Ccien_1 => 1);

   --  Transfer Complete Interrupt Enable
   type INT_SIGNAL_EN_TCIEN_Field is
     (
      --  Masked
      Tcien_0,
      --  Enabled
      Tcien_1)
     with Size => 1;
   for INT_SIGNAL_EN_TCIEN_Field use
     (Tcien_0 => 0,
      Tcien_1 => 1);

   --  Block Gap Event Interrupt Enable
   type INT_SIGNAL_EN_BGEIEN_Field is
     (
      --  Masked
      Bgeien_0,
      --  Enabled
      Bgeien_1)
     with Size => 1;
   for INT_SIGNAL_EN_BGEIEN_Field use
     (Bgeien_0 => 0,
      Bgeien_1 => 1);

   --  DMA Interrupt Enable
   type INT_SIGNAL_EN_DINTIEN_Field is
     (
      --  Masked
      Dintien_0,
      --  Enabled
      Dintien_1)
     with Size => 1;
   for INT_SIGNAL_EN_DINTIEN_Field use
     (Dintien_0 => 0,
      Dintien_1 => 1);

   --  Buffer Write Ready Interrupt Enable
   type INT_SIGNAL_EN_BWRIEN_Field is
     (
      --  Masked
      Bwrien_0,
      --  Enabled
      Bwrien_1)
     with Size => 1;
   for INT_SIGNAL_EN_BWRIEN_Field use
     (Bwrien_0 => 0,
      Bwrien_1 => 1);

   --  Buffer Read Ready Interrupt Enable
   type INT_SIGNAL_EN_BRRIEN_Field is
     (
      --  Masked
      Brrien_0,
      --  Enabled
      Brrien_1)
     with Size => 1;
   for INT_SIGNAL_EN_BRRIEN_Field use
     (Brrien_0 => 0,
      Brrien_1 => 1);

   --  Card Insertion Interrupt Enable
   type INT_SIGNAL_EN_CINSIEN_Field is
     (
      --  Masked
      Cinsien_0,
      --  Enabled
      Cinsien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CINSIEN_Field use
     (Cinsien_0 => 0,
      Cinsien_1 => 1);

   --  Card Removal Interrupt Enable
   type INT_SIGNAL_EN_CRMIEN_Field is
     (
      --  Masked
      Crmien_0,
      --  Enabled
      Crmien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CRMIEN_Field use
     (Crmien_0 => 0,
      Crmien_1 => 1);

   --  Card Interrupt Interrupt Enable
   type INT_SIGNAL_EN_CINTIEN_Field is
     (
      --  Masked
      Cintien_0,
      --  Enabled
      Cintien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CINTIEN_Field use
     (Cintien_0 => 0,
      Cintien_1 => 1);

   --  Re-Tuning Event Interrupt Enable
   type INT_SIGNAL_EN_RTEIEN_Field is
     (
      --  Masked
      Rteien_0,
      --  Enabled
      Rteien_1)
     with Size => 1;
   for INT_SIGNAL_EN_RTEIEN_Field use
     (Rteien_0 => 0,
      Rteien_1 => 1);

   --  Tuning Pass Interrupt Enable
   type INT_SIGNAL_EN_TPIEN_Field is
     (
      --  Masked
      Tpien_0,
      --  Enabled
      Tpien_1)
     with Size => 1;
   for INT_SIGNAL_EN_TPIEN_Field use
     (Tpien_0 => 0,
      Tpien_1 => 1);

   --  Command Timeout Error Interrupt Enable
   type INT_SIGNAL_EN_CTOEIEN_Field is
     (
      --  Masked
      Ctoeien_0,
      --  Enabled
      Ctoeien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CTOEIEN_Field use
     (Ctoeien_0 => 0,
      Ctoeien_1 => 1);

   --  Command CRC Error Interrupt Enable
   type INT_SIGNAL_EN_CCEIEN_Field is
     (
      --  Masked
      Cceien_0,
      --  Enabled
      Cceien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CCEIEN_Field use
     (Cceien_0 => 0,
      Cceien_1 => 1);

   --  Command End Bit Error Interrupt Enable
   type INT_SIGNAL_EN_CEBEIEN_Field is
     (
      --  Masked
      Cebeien_0,
      --  Enabled
      Cebeien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CEBEIEN_Field use
     (Cebeien_0 => 0,
      Cebeien_1 => 1);

   --  Command Index Error Interrupt Enable
   type INT_SIGNAL_EN_CIEIEN_Field is
     (
      --  Masked
      Cieien_0,
      --  Enabled
      Cieien_1)
     with Size => 1;
   for INT_SIGNAL_EN_CIEIEN_Field use
     (Cieien_0 => 0,
      Cieien_1 => 1);

   --  Data Timeout Error Interrupt Enable
   type INT_SIGNAL_EN_DTOEIEN_Field is
     (
      --  Masked
      Dtoeien_0,
      --  Enabled
      Dtoeien_1)
     with Size => 1;
   for INT_SIGNAL_EN_DTOEIEN_Field use
     (Dtoeien_0 => 0,
      Dtoeien_1 => 1);

   --  Data CRC Error Interrupt Enable
   type INT_SIGNAL_EN_DCEIEN_Field is
     (
      --  Masked
      Dceien_0,
      --  Enabled
      Dceien_1)
     with Size => 1;
   for INT_SIGNAL_EN_DCEIEN_Field use
     (Dceien_0 => 0,
      Dceien_1 => 1);

   --  Data End Bit Error Interrupt Enable
   type INT_SIGNAL_EN_DEBEIEN_Field is
     (
      --  Masked
      Debeien_0,
      --  Enabled
      Debeien_1)
     with Size => 1;
   for INT_SIGNAL_EN_DEBEIEN_Field use
     (Debeien_0 => 0,
      Debeien_1 => 1);

   --  Auto CMD12 Error Interrupt Enable
   type INT_SIGNAL_EN_AC12EIEN_Field is
     (
      --  Masked
      Ac12Eien_0,
      --  Enabled
      Ac12Eien_1)
     with Size => 1;
   for INT_SIGNAL_EN_AC12EIEN_Field use
     (Ac12Eien_0 => 0,
      Ac12Eien_1 => 1);

   --  Tuning Error Interrupt Enable
   type INT_SIGNAL_EN_TNEIEN_Field is
     (
      --  Masked
      Tneien_0,
      --  Enabled
      Tneien_1)
     with Size => 1;
   for INT_SIGNAL_EN_TNEIEN_Field use
     (Tneien_0 => 0,
      Tneien_1 => 1);

   --  DMA Error Interrupt Enable
   type INT_SIGNAL_EN_DMAEIEN_Field is
     (
      --  Masked
      Dmaeien_0,
      --  Enable
      Dmaeien_1)
     with Size => 1;
   for INT_SIGNAL_EN_DMAEIEN_Field use
     (Dmaeien_0 => 0,
      Dmaeien_1 => 1);

   --  Interrupt Signal Enable
   type INT_SIGNAL_EN_Register is record
      --  Command Complete Interrupt Enable
      CCIEN          : INT_SIGNAL_EN_CCIEN_Field := NRF_SVD.uSDHC.Ccien_0;
      --  Transfer Complete Interrupt Enable
      TCIEN          : INT_SIGNAL_EN_TCIEN_Field := NRF_SVD.uSDHC.Tcien_0;
      --  Block Gap Event Interrupt Enable
      BGEIEN         : INT_SIGNAL_EN_BGEIEN_Field := NRF_SVD.uSDHC.Bgeien_0;
      --  DMA Interrupt Enable
      DINTIEN        : INT_SIGNAL_EN_DINTIEN_Field := NRF_SVD.uSDHC.Dintien_0;
      --  Buffer Write Ready Interrupt Enable
      BWRIEN         : INT_SIGNAL_EN_BWRIEN_Field := NRF_SVD.uSDHC.Bwrien_0;
      --  Buffer Read Ready Interrupt Enable
      BRRIEN         : INT_SIGNAL_EN_BRRIEN_Field := NRF_SVD.uSDHC.Brrien_0;
      --  Card Insertion Interrupt Enable
      CINSIEN        : INT_SIGNAL_EN_CINSIEN_Field := NRF_SVD.uSDHC.Cinsien_0;
      --  Card Removal Interrupt Enable
      CRMIEN         : INT_SIGNAL_EN_CRMIEN_Field := NRF_SVD.uSDHC.Crmien_0;
      --  Card Interrupt Interrupt Enable
      CINTIEN        : INT_SIGNAL_EN_CINTIEN_Field := NRF_SVD.uSDHC.Cintien_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Re-Tuning Event Interrupt Enable
      RTEIEN         : INT_SIGNAL_EN_RTEIEN_Field := NRF_SVD.uSDHC.Rteien_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Tuning Pass Interrupt Enable
      TPIEN          : INT_SIGNAL_EN_TPIEN_Field := NRF_SVD.uSDHC.Tpien_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Command Timeout Error Interrupt Enable
      CTOEIEN        : INT_SIGNAL_EN_CTOEIEN_Field := NRF_SVD.uSDHC.Ctoeien_0;
      --  Command CRC Error Interrupt Enable
      CCEIEN         : INT_SIGNAL_EN_CCEIEN_Field := NRF_SVD.uSDHC.Cceien_0;
      --  Command End Bit Error Interrupt Enable
      CEBEIEN        : INT_SIGNAL_EN_CEBEIEN_Field := NRF_SVD.uSDHC.Cebeien_0;
      --  Command Index Error Interrupt Enable
      CIEIEN         : INT_SIGNAL_EN_CIEIEN_Field := NRF_SVD.uSDHC.Cieien_0;
      --  Data Timeout Error Interrupt Enable
      DTOEIEN        : INT_SIGNAL_EN_DTOEIEN_Field := NRF_SVD.uSDHC.Dtoeien_0;
      --  Data CRC Error Interrupt Enable
      DCEIEN         : INT_SIGNAL_EN_DCEIEN_Field := NRF_SVD.uSDHC.Dceien_0;
      --  Data End Bit Error Interrupt Enable
      DEBEIEN        : INT_SIGNAL_EN_DEBEIEN_Field := NRF_SVD.uSDHC.Debeien_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Auto CMD12 Error Interrupt Enable
      AC12EIEN       : INT_SIGNAL_EN_AC12EIEN_Field :=
                        NRF_SVD.uSDHC.Ac12Eien_0;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Tuning Error Interrupt Enable
      TNEIEN         : INT_SIGNAL_EN_TNEIEN_Field := NRF_SVD.uSDHC.Tneien_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  DMA Error Interrupt Enable
      DMAEIEN        : INT_SIGNAL_EN_DMAEIEN_Field := NRF_SVD.uSDHC.Dmaeien_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_SIGNAL_EN_Register use record
      CCIEN          at 0 range 0 .. 0;
      TCIEN          at 0 range 1 .. 1;
      BGEIEN         at 0 range 2 .. 2;
      DINTIEN        at 0 range 3 .. 3;
      BWRIEN         at 0 range 4 .. 4;
      BRRIEN         at 0 range 5 .. 5;
      CINSIEN        at 0 range 6 .. 6;
      CRMIEN         at 0 range 7 .. 7;
      CINTIEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RTEIEN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TPIEN          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CTOEIEN        at 0 range 16 .. 16;
      CCEIEN         at 0 range 17 .. 17;
      CEBEIEN        at 0 range 18 .. 18;
      CIEIEN         at 0 range 19 .. 19;
      DTOEIEN        at 0 range 20 .. 20;
      DCEIEN         at 0 range 21 .. 21;
      DEBEIEN        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      AC12EIEN       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      TNEIEN         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      DMAEIEN        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Auto CMD12 Not Executed
   type AUTOCMD12_ERR_STATUS_AC12NE_Field is
     (
      --  Executed
      Ac12Ne_0,
      --  Not executed
      Ac12Ne_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_AC12NE_Field use
     (Ac12Ne_0 => 0,
      Ac12Ne_1 => 1);

   --  Auto CMD12 / 23 Timeout Error
   type AUTOCMD12_ERR_STATUS_AC12TOE_Field is
     (
      --  No error
      Ac12Toe_0,
      --  Time out
      Ac12Toe_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_AC12TOE_Field use
     (Ac12Toe_0 => 0,
      Ac12Toe_1 => 1);

   --  Auto CMD12 / 23 End Bit Error
   type AUTOCMD12_ERR_STATUS_AC12EBE_Field is
     (
      --  No error
      Ac12Ebe_0,
      --  End Bit Error Generated
      Ac12Ebe_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_AC12EBE_Field use
     (Ac12Ebe_0 => 0,
      Ac12Ebe_1 => 1);

   --  Auto CMD12 / 23 CRC Error
   type AUTOCMD12_ERR_STATUS_AC12CE_Field is
     (
      --  No CRC error
      Ac12Ce_0,
      --  CRC Error Met in Auto CMD12/23 Response
      Ac12Ce_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_AC12CE_Field use
     (Ac12Ce_0 => 0,
      Ac12Ce_1 => 1);

   --  Auto CMD12 / 23 Index Error
   type AUTOCMD12_ERR_STATUS_AC12IE_Field is
     (
      --  No error
      Ac12Ie_0,
      --  Error, the CMD index in response is not CMD12/23
      Ac12Ie_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_AC12IE_Field use
     (Ac12Ie_0 => 0,
      Ac12Ie_1 => 1);

   --  Command Not Issued By Auto CMD12 Error
   type AUTOCMD12_ERR_STATUS_CNIBAC12E_Field is
     (
      --  No error
      Cnibac12E_0,
      --  Not Issued
      Cnibac12E_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_CNIBAC12E_Field use
     (Cnibac12E_0 => 0,
      Cnibac12E_1 => 1);

   --  Sample Clock Select
   type AUTOCMD12_ERR_STATUS_SMP_CLK_SEL_Field is
     (
      --  Fixed clock is used to sample data
      Smp_Clk_Sel_0,
      --  Tuned clock is used to sample data
      Smp_Clk_Sel_1)
     with Size => 1;
   for AUTOCMD12_ERR_STATUS_SMP_CLK_SEL_Field use
     (Smp_Clk_Sel_0 => 0,
      Smp_Clk_Sel_1 => 1);

   --  Auto CMD12 Error Status
   type AUTOCMD12_ERR_STATUS_Register is record
      --  Read-only. Auto CMD12 Not Executed
      AC12NE         : AUTOCMD12_ERR_STATUS_AC12NE_Field :=
                        NRF_SVD.uSDHC.Ac12Ne_0;
      --  Read-only. Auto CMD12 / 23 Timeout Error
      AC12TOE        : AUTOCMD12_ERR_STATUS_AC12TOE_Field :=
                        NRF_SVD.uSDHC.Ac12Toe_0;
      --  Read-only. Auto CMD12 / 23 End Bit Error
      AC12EBE        : AUTOCMD12_ERR_STATUS_AC12EBE_Field :=
                        NRF_SVD.uSDHC.Ac12Ebe_0;
      --  Read-only. Auto CMD12 / 23 CRC Error
      AC12CE         : AUTOCMD12_ERR_STATUS_AC12CE_Field :=
                        NRF_SVD.uSDHC.Ac12Ce_0;
      --  Read-only. Auto CMD12 / 23 Index Error
      AC12IE         : AUTOCMD12_ERR_STATUS_AC12IE_Field :=
                        NRF_SVD.uSDHC.Ac12Ie_0;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Read-only. Command Not Issued By Auto CMD12 Error
      CNIBAC12E      : AUTOCMD12_ERR_STATUS_CNIBAC12E_Field :=
                        NRF_SVD.uSDHC.Cnibac12E_0;
      --  unspecified
      Reserved_8_21  : HAL.UInt14 := 16#0#;
      --  Execute Tuning
      EXECUTE_TUNING : Boolean := False;
      --  Sample Clock Select
      SMP_CLK_SEL    : AUTOCMD12_ERR_STATUS_SMP_CLK_SEL_Field :=
                        NRF_SVD.uSDHC.Smp_Clk_Sel_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUTOCMD12_ERR_STATUS_Register use record
      AC12NE         at 0 range 0 .. 0;
      AC12TOE        at 0 range 1 .. 1;
      AC12EBE        at 0 range 2 .. 2;
      AC12CE         at 0 range 3 .. 3;
      AC12IE         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CNIBAC12E      at 0 range 7 .. 7;
      Reserved_8_21  at 0 range 8 .. 21;
      EXECUTE_TUNING at 0 range 22 .. 22;
      SMP_CLK_SEL    at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HOST_CTRL_CAP_TIME_COUNT_RETUNING_Field is HAL.UInt4;

   --  Use Tuning for SDR50
   type HOST_CTRL_CAP_USE_TUNING_SDR50_Field is
     (
      --  SDR does not require tuning
      Use_Tuning_Sdr50_0,
      --  SDR50 requires tuning
      Use_Tuning_Sdr50_1)
     with Size => 1;
   for HOST_CTRL_CAP_USE_TUNING_SDR50_Field use
     (Use_Tuning_Sdr50_0 => 0,
      Use_Tuning_Sdr50_1 => 1);

   --  Retuning Mode
   type HOST_CTRL_CAP_RETUNING_MODE_Field is
     (
      --  Mode 1
      Retuning_Mode_0,
      --  Mode 2
      Retuning_Mode_1,
      --  Mode 3
      Retuning_Mode_2)
     with Size => 2;
   for HOST_CTRL_CAP_RETUNING_MODE_Field use
     (Retuning_Mode_0 => 0,
      Retuning_Mode_1 => 1,
      Retuning_Mode_2 => 2);

   --  Max Block Length
   type HOST_CTRL_CAP_MBL_Field is
     (
      --  512 bytes
      Mbl_0,
      --  1024 bytes
      Mbl_1,
      --  2048 bytes
      Mbl_2,
      --  4096 bytes
      Mbl_3)
     with Size => 3;
   for HOST_CTRL_CAP_MBL_Field use
     (Mbl_0 => 0,
      Mbl_1 => 1,
      Mbl_2 => 2,
      Mbl_3 => 3);

   --  ADMA Support
   type HOST_CTRL_CAP_ADMAS_Field is
     (
      --  Advanced DMA Not supported
      Admas_0,
      --  Advanced DMA Supported
      Admas_1)
     with Size => 1;
   for HOST_CTRL_CAP_ADMAS_Field use
     (Admas_0 => 0,
      Admas_1 => 1);

   --  High Speed Support
   type HOST_CTRL_CAP_HSS_Field is
     (
      --  High Speed Not Supported
      Hss_0,
      --  High Speed Supported
      Hss_1)
     with Size => 1;
   for HOST_CTRL_CAP_HSS_Field use
     (Hss_0 => 0,
      Hss_1 => 1);

   --  DMA Support
   type HOST_CTRL_CAP_DMAS_Field is
     (
      --  DMA not supported
      Dmas_0,
      --  DMA Supported
      Dmas_1)
     with Size => 1;
   for HOST_CTRL_CAP_DMAS_Field use
     (Dmas_0 => 0,
      Dmas_1 => 1);

   --  Suspend / Resume Support
   type HOST_CTRL_CAP_SRS_Field is
     (
      --  Not supported
      Srs_0,
      --  Supported
      Srs_1)
     with Size => 1;
   for HOST_CTRL_CAP_SRS_Field use
     (Srs_0 => 0,
      Srs_1 => 1);

   --  Voltage Support 3.3V
   type HOST_CTRL_CAP_VS33_Field is
     (
      --  3.3V not supported
      Vs33_0,
      --  3.3V supported
      Vs33_1)
     with Size => 1;
   for HOST_CTRL_CAP_VS33_Field use
     (Vs33_0 => 0,
      Vs33_1 => 1);

   --  Voltage Support 3.0 V
   type HOST_CTRL_CAP_VS30_Field is
     (
      --  3.0V not supported
      Vs30_0,
      --  3.0V supported
      Vs30_1)
     with Size => 1;
   for HOST_CTRL_CAP_VS30_Field use
     (Vs30_0 => 0,
      Vs30_1 => 1);

   --  Voltage Support 1.8 V
   type HOST_CTRL_CAP_VS18_Field is
     (
      --  1.8V not supported
      Vs18_0,
      --  1.8V supported
      Vs18_1)
     with Size => 1;
   for HOST_CTRL_CAP_VS18_Field use
     (Vs18_0 => 0,
      Vs18_1 => 1);

   --  Host Controller Capabilities
   type HOST_CTRL_CAP_Register is record
      --  Read-only. SDR50 support
      SDR50_SUPPORT       : Boolean := True;
      --  Read-only. SDR104 support
      SDR104_SUPPORT      : Boolean := True;
      --  Read-only. DDR50 support
      DDR50_SUPPORT       : Boolean := True;
      --  unspecified
      Reserved_3_7        : HAL.UInt5 := 16#0#;
      --  Time Counter for Retuning
      TIME_COUNT_RETUNING : HOST_CTRL_CAP_TIME_COUNT_RETUNING_Field := 16#4#;
      --  unspecified
      Reserved_12_12      : HAL.Bit := 16#1#;
      --  Use Tuning for SDR50
      USE_TUNING_SDR50    : HOST_CTRL_CAP_USE_TUNING_SDR50_Field :=
                             NRF_SVD.uSDHC.Use_Tuning_Sdr50_1;
      --  Read-only. Retuning Mode
      RETUNING_MODE       : HOST_CTRL_CAP_RETUNING_MODE_Field :=
                             NRF_SVD.uSDHC.Retuning_Mode_2;
      --  Read-only. Max Block Length
      MBL                 : HOST_CTRL_CAP_MBL_Field := NRF_SVD.uSDHC.Mbl_3;
      --  unspecified
      Reserved_19_19      : HAL.Bit := 16#0#;
      --  Read-only. ADMA Support
      ADMAS               : HOST_CTRL_CAP_ADMAS_Field :=
                             NRF_SVD.uSDHC.Admas_1;
      --  Read-only. High Speed Support
      HSS                 : HOST_CTRL_CAP_HSS_Field := NRF_SVD.uSDHC.Hss_1;
      --  Read-only. DMA Support
      DMAS                : HOST_CTRL_CAP_DMAS_Field := NRF_SVD.uSDHC.Dmas_1;
      --  Read-only. Suspend / Resume Support
      SRS                 : HOST_CTRL_CAP_SRS_Field := NRF_SVD.uSDHC.Srs_1;
      --  Read-only. Voltage Support 3.3V
      VS33                : HOST_CTRL_CAP_VS33_Field := NRF_SVD.uSDHC.Vs33_1;
      --  Read-only. Voltage Support 3.0 V
      VS30                : HOST_CTRL_CAP_VS30_Field := NRF_SVD.uSDHC.Vs30_1;
      --  Read-only. Voltage Support 1.8 V
      VS18                : HOST_CTRL_CAP_VS18_Field := NRF_SVD.uSDHC.Vs18_1;
      --  unspecified
      Reserved_27_31      : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HOST_CTRL_CAP_Register use record
      SDR50_SUPPORT       at 0 range 0 .. 0;
      SDR104_SUPPORT      at 0 range 1 .. 1;
      DDR50_SUPPORT       at 0 range 2 .. 2;
      Reserved_3_7        at 0 range 3 .. 7;
      TIME_COUNT_RETUNING at 0 range 8 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      USE_TUNING_SDR50    at 0 range 13 .. 13;
      RETUNING_MODE       at 0 range 14 .. 15;
      MBL                 at 0 range 16 .. 18;
      Reserved_19_19      at 0 range 19 .. 19;
      ADMAS               at 0 range 20 .. 20;
      HSS                 at 0 range 21 .. 21;
      DMAS                at 0 range 22 .. 22;
      SRS                 at 0 range 23 .. 23;
      VS33                at 0 range 24 .. 24;
      VS30                at 0 range 25 .. 25;
      VS18                at 0 range 26 .. 26;
      Reserved_27_31      at 0 range 27 .. 31;
   end record;

   subtype WTMK_LVL_RD_WML_Field is HAL.UInt8;
   subtype WTMK_LVL_RD_BRST_LEN_Field is HAL.UInt5;
   subtype WTMK_LVL_WR_WML_Field is HAL.UInt8;
   subtype WTMK_LVL_WR_BRST_LEN_Field is HAL.UInt5;

   --  Watermark Level
   type WTMK_LVL_Register is record
      --  Read Watermark Level
      RD_WML         : WTMK_LVL_RD_WML_Field := 16#10#;
      --  Read Burst Length Due to system restriction, the actual burst length
      --  may not exceed 16.
      RD_BRST_LEN    : WTMK_LVL_RD_BRST_LEN_Field := 16#8#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write Watermark Level
      WR_WML         : WTMK_LVL_WR_WML_Field := 16#10#;
      --  Write Burst Length Due to system restriction, the actual burst length
      --  may not exceed 16.
      WR_BRST_LEN    : WTMK_LVL_WR_BRST_LEN_Field := 16#8#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WTMK_LVL_Register use record
      RD_WML         at 0 range 0 .. 7;
      RD_BRST_LEN    at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WR_WML         at 0 range 16 .. 23;
      WR_BRST_LEN    at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  DMA Enable
   type MIX_CTRL_DMAEN_Field is
     (
      --  Disable
      Dmaen_0,
      --  Enable
      Dmaen_1)
     with Size => 1;
   for MIX_CTRL_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  Block Count Enable
   type MIX_CTRL_BCEN_Field is
     (
      --  Disable
      Bcen_0,
      --  Enable
      Bcen_1)
     with Size => 1;
   for MIX_CTRL_BCEN_Field use
     (Bcen_0 => 0,
      Bcen_1 => 1);

   --  Auto CMD12 Enable
   type MIX_CTRL_AC12EN_Field is
     (
      --  Disable
      Ac12En_0,
      --  Enable
      Ac12En_1)
     with Size => 1;
   for MIX_CTRL_AC12EN_Field use
     (Ac12En_0 => 0,
      Ac12En_1 => 1);

   --  Data Transfer Direction Select
   type MIX_CTRL_DTDSEL_Field is
     (
      --  Write (Host to Card)
      Dtdsel_0,
      --  Read (Card to Host)
      Dtdsel_1)
     with Size => 1;
   for MIX_CTRL_DTDSEL_Field use
     (Dtdsel_0 => 0,
      Dtdsel_1 => 1);

   --  Multi / Single Block Select
   type MIX_CTRL_MSBSEL_Field is
     (
      --  Single Block
      Msbsel_0,
      --  Multiple Blocks
      Msbsel_1)
     with Size => 1;
   for MIX_CTRL_MSBSEL_Field use
     (Msbsel_0 => 0,
      Msbsel_1 => 1);

   --  Execute Tuning: (Only used for SD3.0, SDR104 mode and EMMC HS200 mode)
   type MIX_CTRL_EXE_TUNE_Field is
     (
      --  Not Tuned or Tuning Completed
      Exe_Tune_0,
      --  Execute Tuning
      Exe_Tune_1)
     with Size => 1;
   for MIX_CTRL_EXE_TUNE_Field use
     (Exe_Tune_0 => 0,
      Exe_Tune_1 => 1);

   --  SMP_CLK_SEL
   type MIX_CTRL_SMP_CLK_SEL_Field is
     (
      --  Fixed clock is used to sample data / cmd
      Smp_Clk_Sel_0,
      --  Tuned clock is used to sample data / cmd
      Smp_Clk_Sel_1)
     with Size => 1;
   for MIX_CTRL_SMP_CLK_SEL_Field use
     (Smp_Clk_Sel_0 => 0,
      Smp_Clk_Sel_1 => 1);

   --  Auto Tuning Enable (Only used for SD3.0, SDR104 mode and and EMMC HS200
   --  mode)
   type MIX_CTRL_AUTO_TUNE_EN_Field is
     (
      --  Disable auto tuning
      Auto_Tune_En_0,
      --  Enable auto tuning
      Auto_Tune_En_1)
     with Size => 1;
   for MIX_CTRL_AUTO_TUNE_EN_Field use
     (Auto_Tune_En_0 => 0,
      Auto_Tune_En_1 => 1);

   --  Feedback Clock Source Selection (Only used for SD3.0, SDR104 mode and
   --  EMMC HS200 mode)
   type MIX_CTRL_FBCLK_SEL_Field is
     (
      --  Feedback clock comes from the loopback CLK
      Fbclk_Sel_0,
      --  Feedback clock comes from the ipp_card_clk_out
      Fbclk_Sel_1)
     with Size => 1;
   for MIX_CTRL_FBCLK_SEL_Field use
     (Fbclk_Sel_0 => 0,
      Fbclk_Sel_1 => 1);

   --  Mixer Control
   type MIX_CTRL_Register is record
      --  DMA Enable
      DMAEN          : MIX_CTRL_DMAEN_Field := NRF_SVD.uSDHC.Dmaen_0;
      --  Block Count Enable
      BCEN           : MIX_CTRL_BCEN_Field := NRF_SVD.uSDHC.Bcen_0;
      --  Auto CMD12 Enable
      AC12EN         : MIX_CTRL_AC12EN_Field := NRF_SVD.uSDHC.Ac12En_0;
      --  Dual Data Rate mode selection
      DDR_EN         : Boolean := False;
      --  Data Transfer Direction Select
      DTDSEL         : MIX_CTRL_DTDSEL_Field := NRF_SVD.uSDHC.Dtdsel_0;
      --  Multi / Single Block Select
      MSBSEL         : MIX_CTRL_MSBSEL_Field := NRF_SVD.uSDHC.Msbsel_0;
      --  NIBBLE_POS
      NIBBLE_POS     : Boolean := False;
      --  Auto CMD23 Enable
      AC23EN         : Boolean := False;
      --  unspecified
      Reserved_8_21  : HAL.UInt14 := 16#0#;
      --  Execute Tuning: (Only used for SD3.0, SDR104 mode and EMMC HS200
      --  mode)
      EXE_TUNE       : MIX_CTRL_EXE_TUNE_Field := NRF_SVD.uSDHC.Exe_Tune_0;
      --  SMP_CLK_SEL
      SMP_CLK_SEL    : MIX_CTRL_SMP_CLK_SEL_Field :=
                        NRF_SVD.uSDHC.Smp_Clk_Sel_0;
      --  Auto Tuning Enable (Only used for SD3.0, SDR104 mode and and EMMC
      --  HS200 mode)
      AUTO_TUNE_EN   : MIX_CTRL_AUTO_TUNE_EN_Field :=
                        NRF_SVD.uSDHC.Auto_Tune_En_0;
      --  Feedback Clock Source Selection (Only used for SD3.0, SDR104 mode and
      --  EMMC HS200 mode)
      FBCLK_SEL      : MIX_CTRL_FBCLK_SEL_Field := NRF_SVD.uSDHC.Fbclk_Sel_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#20#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIX_CTRL_Register use record
      DMAEN          at 0 range 0 .. 0;
      BCEN           at 0 range 1 .. 1;
      AC12EN         at 0 range 2 .. 2;
      DDR_EN         at 0 range 3 .. 3;
      DTDSEL         at 0 range 4 .. 4;
      MSBSEL         at 0 range 5 .. 5;
      NIBBLE_POS     at 0 range 6 .. 6;
      AC23EN         at 0 range 7 .. 7;
      Reserved_8_21  at 0 range 8 .. 21;
      EXE_TUNE       at 0 range 22 .. 22;
      SMP_CLK_SEL    at 0 range 23 .. 23;
      AUTO_TUNE_EN   at 0 range 24 .. 24;
      FBCLK_SEL      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Force Event
   type FORCE_EVENT_Register is record
      --  Write-only. Force Event Auto Command 12 Not Executed
      FEVTAC12NE     : Boolean := False;
      --  Write-only. Force Event Auto Command 12 Time Out Error
      FEVTAC12TOE    : Boolean := False;
      --  Write-only. Force Event Auto Command 12 CRC Error
      FEVTAC12CE     : Boolean := False;
      --  Write-only. Force Event Auto Command 12 End Bit Error
      FEVTAC12EBE    : Boolean := False;
      --  Write-only. Force Event Auto Command 12 Index Error
      FEVTAC12IE     : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Write-only. Force Event Command Not Executed By Auto Command 12 Error
      FEVTCNIBAC12E  : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Write-only. Force Event Command Time Out Error
      FEVTCTOE       : Boolean := False;
      --  Write-only. Force Event Command CRC Error
      FEVTCCE        : Boolean := False;
      --  Write-only. Force Event Command End Bit Error
      FEVTCEBE       : Boolean := False;
      --  Write-only. Force Event Command Index Error
      FEVTCIE        : Boolean := False;
      --  Write-only. Force Event Data Time Out Error
      FEVTDTOE       : Boolean := False;
      --  Write-only. Force Event Data CRC Error
      FEVTDCE        : Boolean := False;
      --  Write-only. Force Event Data End Bit Error
      FEVTDEBE       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write-only. Force Event Auto Command 12 Error
      FEVTAC12E      : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Write-only. Force Tuning Error
      FEVTTNE        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write-only. Force Event DMA Error
      FEVTDMAE       : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Write-only. Force Event Card Interrupt
      FEVTCINT       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FORCE_EVENT_Register use record
      FEVTAC12NE     at 0 range 0 .. 0;
      FEVTAC12TOE    at 0 range 1 .. 1;
      FEVTAC12CE     at 0 range 2 .. 2;
      FEVTAC12EBE    at 0 range 3 .. 3;
      FEVTAC12IE     at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      FEVTCNIBAC12E  at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FEVTCTOE       at 0 range 16 .. 16;
      FEVTCCE        at 0 range 17 .. 17;
      FEVTCEBE       at 0 range 18 .. 18;
      FEVTCIE        at 0 range 19 .. 19;
      FEVTDTOE       at 0 range 20 .. 20;
      FEVTDCE        at 0 range 21 .. 21;
      FEVTDEBE       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FEVTAC12E      at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      FEVTTNE        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FEVTDMAE       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FEVTCINT       at 0 range 31 .. 31;
   end record;

   subtype ADMA_ERR_STATUS_ADMAES_Field is HAL.UInt2;

   --  ADMA Length Mismatch Error
   type ADMA_ERR_STATUS_ADMALME_Field is
     (
      --  No Error
      Admalme_0,
      --  Error
      Admalme_1)
     with Size => 1;
   for ADMA_ERR_STATUS_ADMALME_Field use
     (Admalme_0 => 0,
      Admalme_1 => 1);

   --  ADMA Descriptor Error
   type ADMA_ERR_STATUS_ADMADCE_Field is
     (
      --  No Error
      Admadce_0,
      --  Error
      Admadce_1)
     with Size => 1;
   for ADMA_ERR_STATUS_ADMADCE_Field use
     (Admadce_0 => 0,
      Admadce_1 => 1);

   --  ADMA Error Status Register
   type ADMA_ERR_STATUS_Register is record
      --  Read-only. ADMA Error State (when ADMA Error is occurred)
      ADMAES        : ADMA_ERR_STATUS_ADMAES_Field;
      --  Read-only. ADMA Length Mismatch Error
      ADMALME       : ADMA_ERR_STATUS_ADMALME_Field;
      --  Read-only. ADMA Descriptor Error
      ADMADCE       : ADMA_ERR_STATUS_ADMADCE_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADMA_ERR_STATUS_Register use record
      ADMAES        at 0 range 0 .. 1;
      ADMALME       at 0 range 2 .. 2;
      ADMADCE       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADMA_SYS_ADDR_ADS_ADDR_Field is HAL.UInt30;

   --  ADMA System Address
   type ADMA_SYS_ADDR_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  ADMA System Address
      ADS_ADDR     : ADMA_SYS_ADDR_ADS_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADMA_SYS_ADDR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADS_ADDR     at 0 range 2 .. 31;
   end record;

   subtype DLL_CTRL_DLL_CTRL_SLV_DLY_TARGET0_Field is HAL.UInt4;
   subtype DLL_CTRL_DLL_CTRL_SLV_OVERRIDE_VAL_Field is HAL.UInt7;
   subtype DLL_CTRL_DLL_CTRL_SLV_DLY_TARGET1_Field is HAL.UInt3;
   subtype DLL_CTRL_DLL_CTRL_SLV_UPDATE_INT_Field is HAL.UInt8;
   subtype DLL_CTRL_DLL_CTRL_REF_UPDATE_INT_Field is HAL.UInt4;

   --  DLL (Delay Line) Control
   type DLL_CTRL_Register is record
      --  DLL_CTRL_ENABLE
      DLL_CTRL_ENABLE           : Boolean := False;
      --  DLL_CTRL_RESET
      DLL_CTRL_RESET            : Boolean := False;
      --  DLL_CTRL_SLV_FORCE_UPD
      DLL_CTRL_SLV_FORCE_UPD    : Boolean := False;
      --  DLL_CTRL_SLV_DLY_TARGET0
      DLL_CTRL_SLV_DLY_TARGET0  : DLL_CTRL_DLL_CTRL_SLV_DLY_TARGET0_Field :=
                                   16#0#;
      --  DLL_CTRL_GATE_UPDATE
      DLL_CTRL_GATE_UPDATE      : Boolean := False;
      --  DLL_CTRL_SLV_OVERRIDE
      DLL_CTRL_SLV_OVERRIDE     : Boolean := False;
      --  DLL_CTRL_SLV_OVERRIDE_VAL
      DLL_CTRL_SLV_OVERRIDE_VAL : DLL_CTRL_DLL_CTRL_SLV_OVERRIDE_VAL_Field :=
                                   16#1#;
      --  DLL_CTRL_SLV_DLY_TARGET1
      DLL_CTRL_SLV_DLY_TARGET1  : DLL_CTRL_DLL_CTRL_SLV_DLY_TARGET1_Field :=
                                   16#0#;
      --  unspecified
      Reserved_19_19            : HAL.Bit := 16#0#;
      --  DLL_CTRL_SLV_UPDATE_INT
      DLL_CTRL_SLV_UPDATE_INT   : DLL_CTRL_DLL_CTRL_SLV_UPDATE_INT_Field :=
                                   16#0#;
      --  DLL_CTRL_REF_UPDATE_INT
      DLL_CTRL_REF_UPDATE_INT   : DLL_CTRL_DLL_CTRL_REF_UPDATE_INT_Field :=
                                   16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLL_CTRL_Register use record
      DLL_CTRL_ENABLE           at 0 range 0 .. 0;
      DLL_CTRL_RESET            at 0 range 1 .. 1;
      DLL_CTRL_SLV_FORCE_UPD    at 0 range 2 .. 2;
      DLL_CTRL_SLV_DLY_TARGET0  at 0 range 3 .. 6;
      DLL_CTRL_GATE_UPDATE      at 0 range 7 .. 7;
      DLL_CTRL_SLV_OVERRIDE     at 0 range 8 .. 8;
      DLL_CTRL_SLV_OVERRIDE_VAL at 0 range 9 .. 15;
      DLL_CTRL_SLV_DLY_TARGET1  at 0 range 16 .. 18;
      Reserved_19_19            at 0 range 19 .. 19;
      DLL_CTRL_SLV_UPDATE_INT   at 0 range 20 .. 27;
      DLL_CTRL_REF_UPDATE_INT   at 0 range 28 .. 31;
   end record;

   subtype DLL_STATUS_DLL_STS_SLV_SEL_Field is HAL.UInt7;
   subtype DLL_STATUS_DLL_STS_REF_SEL_Field is HAL.UInt7;

   --  DLL Status
   type DLL_STATUS_Register is record
      --  Read-only. DLL_STS_SLV_LOCK
      DLL_STS_SLV_LOCK : Boolean;
      --  Read-only. DLL_STS_REF_LOCK
      DLL_STS_REF_LOCK : Boolean;
      --  Read-only. DLL_STS_SLV_SEL
      DLL_STS_SLV_SEL  : DLL_STATUS_DLL_STS_SLV_SEL_Field;
      --  Read-only. DLL_STS_REF_SEL
      DLL_STS_REF_SEL  : DLL_STATUS_DLL_STS_REF_SEL_Field;
      --  unspecified
      Reserved_16_31   : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLL_STATUS_Register use record
      DLL_STS_SLV_LOCK at 0 range 0 .. 0;
      DLL_STS_REF_LOCK at 0 range 1 .. 1;
      DLL_STS_SLV_SEL  at 0 range 2 .. 8;
      DLL_STS_REF_SEL  at 0 range 9 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   subtype CLK_TUNE_CTRL_STATUS_DLY_CELL_SET_POST_Field is HAL.UInt4;
   subtype CLK_TUNE_CTRL_STATUS_DLY_CELL_SET_OUT_Field is HAL.UInt4;
   subtype CLK_TUNE_CTRL_STATUS_DLY_CELL_SET_PRE_Field is HAL.UInt7;
   subtype CLK_TUNE_CTRL_STATUS_TAP_SEL_POST_Field is HAL.UInt4;
   subtype CLK_TUNE_CTRL_STATUS_TAP_SEL_OUT_Field is HAL.UInt4;
   subtype CLK_TUNE_CTRL_STATUS_TAP_SEL_PRE_Field is HAL.UInt7;

   --  CLK Tuning Control and Status
   type CLK_TUNE_CTRL_STATUS_Register is record
      --  DLY_CELL_SET_POST
      DLY_CELL_SET_POST : CLK_TUNE_CTRL_STATUS_DLY_CELL_SET_POST_Field :=
                           16#0#;
      --  DLY_CELL_SET_OUT
      DLY_CELL_SET_OUT  : CLK_TUNE_CTRL_STATUS_DLY_CELL_SET_OUT_Field :=
                           16#0#;
      --  DLY_CELL_SET_PRE
      DLY_CELL_SET_PRE  : CLK_TUNE_CTRL_STATUS_DLY_CELL_SET_PRE_Field :=
                           16#0#;
      --  Read-only. NXT_ERR
      NXT_ERR           : Boolean := False;
      --  Read-only. TAP_SEL_POST
      TAP_SEL_POST      : CLK_TUNE_CTRL_STATUS_TAP_SEL_POST_Field := 16#0#;
      --  Read-only. TAP_SEL_OUT
      TAP_SEL_OUT       : CLK_TUNE_CTRL_STATUS_TAP_SEL_OUT_Field := 16#0#;
      --  Read-only. TAP_SEL_PRE
      TAP_SEL_PRE       : CLK_TUNE_CTRL_STATUS_TAP_SEL_PRE_Field := 16#0#;
      --  Read-only. PRE_ERR
      PRE_ERR           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_TUNE_CTRL_STATUS_Register use record
      DLY_CELL_SET_POST at 0 range 0 .. 3;
      DLY_CELL_SET_OUT  at 0 range 4 .. 7;
      DLY_CELL_SET_PRE  at 0 range 8 .. 14;
      NXT_ERR           at 0 range 15 .. 15;
      TAP_SEL_POST      at 0 range 16 .. 19;
      TAP_SEL_OUT       at 0 range 20 .. 23;
      TAP_SEL_PRE       at 0 range 24 .. 30;
      PRE_ERR           at 0 range 31 .. 31;
   end record;

   --  Voltage Selection
   type VEND_SPEC_VSELECT_Field is
     (
      --  Change the voltage to high voltage range, around 3.0 V
      Vselect_0,
      --  Change the voltage to low voltage range, around 1.8 V
      Vselect_1)
     with Size => 1;
   for VEND_SPEC_VSELECT_Field use
     (Vselect_0 => 0,
      Vselect_1 => 1);

   --  Conflict check enable.
   type VEND_SPEC_CONFLICT_CHK_EN_Field is
     (
      --  Conflict check disable
      Conflict_Chk_En_0,
      --  Conflict check enable
      Conflict_Chk_En_1)
     with Size => 1;
   for VEND_SPEC_CONFLICT_CHK_EN_Field use
     (Conflict_Chk_En_0 => 0,
      Conflict_Chk_En_1 => 1);

   --  AC12_WR_CHKBUSY_EN
   type VEND_SPEC_AC12_WR_CHKBUSY_EN_Field is
     (
      --  Do not check busy after auto CMD12 for write data packet
      Ac12_Wr_Chkbusy_En_0,
      --  Check busy after auto CMD12 for write data packet
      Ac12_Wr_Chkbusy_En_1)
     with Size => 1;
   for VEND_SPEC_AC12_WR_CHKBUSY_EN_Field use
     (Ac12_Wr_Chkbusy_En_0 => 0,
      Ac12_Wr_Chkbusy_En_1 => 1);

   --  FRC_SDCLK_ON
   type VEND_SPEC_FRC_SDCLK_ON_Field is
     (
      --  CLK active or inactive is fully controlled by the hardware.
      Frc_Sdclk_On_0,
      --  Force CLK active.
      Frc_Sdclk_On_1)
     with Size => 1;
   for VEND_SPEC_FRC_SDCLK_ON_Field use
     (Frc_Sdclk_On_0 => 0,
      Frc_Sdclk_On_1 => 1);

   --  CRC Check Disable
   type VEND_SPEC_CRC_CHK_DIS_Field is
     (
      --  Check CRC16 for every read data packet and check CRC bits for every
      --  write data packet
      Crc_Chk_Dis_0,
      --  Ignore CRC16 check for every read data packet and ignore CRC bits
      --  check for every write data packet
      Crc_Chk_Dis_1)
     with Size => 1;
   for VEND_SPEC_CRC_CHK_DIS_Field use
     (Crc_Chk_Dis_0 => 0,
      Crc_Chk_Dis_1 => 1);

   --  CMD_BYTE_EN
   type VEND_SPEC_CMD_BYTE_EN_Field is
     (
      --  Disable
      Cmd_Byte_En_0,
      --  Enable
      Cmd_Byte_En_1)
     with Size => 1;
   for VEND_SPEC_CMD_BYTE_EN_Field use
     (Cmd_Byte_En_0 => 0,
      Cmd_Byte_En_1 => 1);

   --  Vendor Specific Register
   type VEND_SPEC_Register is record
      --  unspecified
      Reserved_0_0       : HAL.Bit := 16#1#;
      --  Voltage Selection
      VSELECT            : VEND_SPEC_VSELECT_Field := NRF_SVD.uSDHC.Vselect_0;
      --  Conflict check enable.
      CONFLICT_CHK_EN    : VEND_SPEC_CONFLICT_CHK_EN_Field :=
                            NRF_SVD.uSDHC.Conflict_Chk_En_0;
      --  AC12_WR_CHKBUSY_EN
      AC12_WR_CHKBUSY_EN : VEND_SPEC_AC12_WR_CHKBUSY_EN_Field :=
                            NRF_SVD.uSDHC.Ac12_Wr_Chkbusy_En_1;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  FRC_SDCLK_ON
      FRC_SDCLK_ON       : VEND_SPEC_FRC_SDCLK_ON_Field :=
                            NRF_SVD.uSDHC.Frc_Sdclk_On_0;
      --  unspecified
      Reserved_9_14      : HAL.UInt6 := 16#3C#;
      --  CRC Check Disable
      CRC_CHK_DIS        : VEND_SPEC_CRC_CHK_DIS_Field :=
                            NRF_SVD.uSDHC.Crc_Chk_Dis_0;
      --  unspecified
      Reserved_16_30     : HAL.UInt15 := 16#2000#;
      --  CMD_BYTE_EN
      CMD_BYTE_EN        : VEND_SPEC_CMD_BYTE_EN_Field :=
                            NRF_SVD.uSDHC.Cmd_Byte_En_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VEND_SPEC_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      VSELECT            at 0 range 1 .. 1;
      CONFLICT_CHK_EN    at 0 range 2 .. 2;
      AC12_WR_CHKBUSY_EN at 0 range 3 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      FRC_SDCLK_ON       at 0 range 8 .. 8;
      Reserved_9_14      at 0 range 9 .. 14;
      CRC_CHK_DIS        at 0 range 15 .. 15;
      Reserved_16_30     at 0 range 16 .. 30;
      CMD_BYTE_EN        at 0 range 31 .. 31;
   end record;

   --  DTOCV_ACK
   type MMC_BOOT_DTOCV_ACK_Field is
     (
      --  SDCLK x 2^14
      Dtocv_Ack_0,
      --  SDCLK x 2^15
      Dtocv_Ack_1,
      --  SDCLK x 2^16
      Dtocv_Ack_2,
      --  SDCLK x 2^17
      Dtocv_Ack_3,
      --  SDCLK x 2^18
      Dtocv_Ack_4,
      --  SDCLK x 2^19
      Dtocv_Ack_5,
      --  SDCLK x 2^20
      Dtocv_Ack_6,
      --  SDCLK x 2^21
      Dtocv_Ack_7,
      --  SDCLK x 2^28
      Dtocv_Ack_14,
      --  SDCLK x 2^29
      Dtocv_Ack_15)
     with Size => 4;
   for MMC_BOOT_DTOCV_ACK_Field use
     (Dtocv_Ack_0 => 0,
      Dtocv_Ack_1 => 1,
      Dtocv_Ack_2 => 2,
      Dtocv_Ack_3 => 3,
      Dtocv_Ack_4 => 4,
      Dtocv_Ack_5 => 5,
      Dtocv_Ack_6 => 6,
      Dtocv_Ack_7 => 7,
      Dtocv_Ack_14 => 14,
      Dtocv_Ack_15 => 15);

   --  BOOT_ACK
   type MMC_BOOT_BOOT_ACK_Field is
     (
      --  No ack
      Boot_Ack_0,
      --  Ack
      Boot_Ack_1)
     with Size => 1;
   for MMC_BOOT_BOOT_ACK_Field use
     (Boot_Ack_0 => 0,
      Boot_Ack_1 => 1);

   --  BOOT_MODE
   type MMC_BOOT_BOOT_MODE_Field is
     (
      --  Normal boot
      Boot_Mode_0,
      --  Alternative boot
      Boot_Mode_1)
     with Size => 1;
   for MMC_BOOT_BOOT_MODE_Field use
     (Boot_Mode_0 => 0,
      Boot_Mode_1 => 1);

   --  BOOT_EN
   type MMC_BOOT_BOOT_EN_Field is
     (
      --  Fast boot disable
      Boot_En_0,
      --  Fast boot enable
      Boot_En_1)
     with Size => 1;
   for MMC_BOOT_BOOT_EN_Field use
     (Boot_En_0 => 0,
      Boot_En_1 => 1);

   --  Disable Time Out
   type MMC_BOOT_DISABLE_TIME_OUT_Field is
     (
      --  Enable time out
      Disable_Time_Out_0,
      --  Disable time out
      Disable_Time_Out_1)
     with Size => 1;
   for MMC_BOOT_DISABLE_TIME_OUT_Field use
     (Disable_Time_Out_0 => 0,
      Disable_Time_Out_1 => 1);

   subtype MMC_BOOT_BOOT_BLK_CNT_Field is HAL.UInt16;

   --  MMC Boot Register
   type MMC_BOOT_Register is record
      --  DTOCV_ACK
      DTOCV_ACK        : MMC_BOOT_DTOCV_ACK_Field :=
                          NRF_SVD.uSDHC.Dtocv_Ack_0;
      --  BOOT_ACK
      BOOT_ACK         : MMC_BOOT_BOOT_ACK_Field := NRF_SVD.uSDHC.Boot_Ack_0;
      --  BOOT_MODE
      BOOT_MODE        : MMC_BOOT_BOOT_MODE_Field :=
                          NRF_SVD.uSDHC.Boot_Mode_0;
      --  BOOT_EN
      BOOT_EN          : MMC_BOOT_BOOT_EN_Field := NRF_SVD.uSDHC.Boot_En_0;
      --  AUTO_SABG_EN
      AUTO_SABG_EN     : Boolean := False;
      --  Disable Time Out
      DISABLE_TIME_OUT : MMC_BOOT_DISABLE_TIME_OUT_Field :=
                          NRF_SVD.uSDHC.Disable_Time_Out_0;
      --  unspecified
      Reserved_9_15    : HAL.UInt7 := 16#0#;
      --  BOOT_BLK_CNT
      BOOT_BLK_CNT     : MMC_BOOT_BOOT_BLK_CNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMC_BOOT_Register use record
      DTOCV_ACK        at 0 range 0 .. 3;
      BOOT_ACK         at 0 range 4 .. 4;
      BOOT_MODE        at 0 range 5 .. 5;
      BOOT_EN          at 0 range 6 .. 6;
      AUTO_SABG_EN     at 0 range 7 .. 7;
      DISABLE_TIME_OUT at 0 range 8 .. 8;
      Reserved_9_15    at 0 range 9 .. 15;
      BOOT_BLK_CNT     at 0 range 16 .. 31;
   end record;

   --  Card Interrupt Detection Test
   type VEND_SPEC2_CARD_INT_D3_TEST_Field is
     (
      --  Check the card interrupt only when DATA3 is high.
      Card_Int_D3_Test_0,
      --  Check the card interrupt by ignoring the status of DATA3.
      Card_Int_D3_Test_1)
     with Size => 1;
   for VEND_SPEC2_CARD_INT_D3_TEST_Field use
     (Card_Int_D3_Test_0 => 0,
      Card_Int_D3_Test_1 => 1);

   --  TUNING_CMD_EN
   type VEND_SPEC2_TUNING_CMD_EN_Field is
     (
      --  Auto tuning circuit does not check the CMD line.
      Tuning_Cmd_En_0,
      --  Auto tuning circuit checks the CMD line.
      Tuning_Cmd_En_1)
     with Size => 1;
   for VEND_SPEC2_TUNING_CMD_EN_Field use
     (Tuning_Cmd_En_0 => 0,
      Tuning_Cmd_En_1 => 1);

   --  Argument2 register enable for ACMD23
   type VEND_SPEC2_ACMD23_ARGU2_EN_Field is
     (
      --  Disable
      Acmd23_Argu2_En_0,
      --  Argument2 register enable for ACMD23 sharing with SDMA system address
      --  register. Default is enable.
      Acmd23_Argu2_En_1)
     with Size => 1;
   for VEND_SPEC2_ACMD23_ARGU2_EN_Field use
     (Acmd23_Argu2_En_0 => 0,
      Acmd23_Argu2_En_1 => 1);

   --  Vendor Specific 2 Register
   type VEND_SPEC2_Register is record
      --  unspecified
      Reserved_0_2     : HAL.UInt3 := 16#6#;
      --  Card Interrupt Detection Test
      CARD_INT_D3_TEST : VEND_SPEC2_CARD_INT_D3_TEST_Field :=
                          NRF_SVD.uSDHC.Card_Int_D3_Test_0;
      --  TUNING_8bit_EN
      TUNING_8bit_EN   : Boolean := False;
      --  TUNING_1bit_EN
      TUNING_1bit_EN   : Boolean := False;
      --  TUNING_CMD_EN
      TUNING_CMD_EN    : VEND_SPEC2_TUNING_CMD_EN_Field :=
                          NRF_SVD.uSDHC.Tuning_Cmd_En_0;
      --  unspecified
      Reserved_7_11    : HAL.UInt5 := 16#0#;
      --  Argument2 register enable for ACMD23
      ACMD23_ARGU2_EN  : VEND_SPEC2_ACMD23_ARGU2_EN_Field :=
                          NRF_SVD.uSDHC.Acmd23_Argu2_En_1;
      --  unspecified
      Reserved_13_13   : HAL.Bit := 16#0#;
      --  AHB BUS reset
      AHB_RST          : Boolean := False;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VEND_SPEC2_Register use record
      Reserved_0_2     at 0 range 0 .. 2;
      CARD_INT_D3_TEST at 0 range 3 .. 3;
      TUNING_8bit_EN   at 0 range 4 .. 4;
      TUNING_1bit_EN   at 0 range 5 .. 5;
      TUNING_CMD_EN    at 0 range 6 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      ACMD23_ARGU2_EN  at 0 range 12 .. 12;
      Reserved_13_13   at 0 range 13 .. 13;
      AHB_RST          at 0 range 14 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype TUNING_CTRL_TUNING_START_TAP_Field is HAL.UInt8;
   subtype TUNING_CTRL_TUNING_COUNTER_Field is HAL.UInt8;
   subtype TUNING_CTRL_TUNING_STEP_Field is HAL.UInt3;
   subtype TUNING_CTRL_TUNING_WINDOW_Field is HAL.UInt3;

   --  Tuning Control Register
   type TUNING_CTRL_Register is record
      --  TUNING_START_TAP
      TUNING_START_TAP : TUNING_CTRL_TUNING_START_TAP_Field := 16#0#;
      --  TUNING_COUNTER
      TUNING_COUNTER   : TUNING_CTRL_TUNING_COUNTER_Field := 16#28#;
      --  TUNING_STEP
      TUNING_STEP      : TUNING_CTRL_TUNING_STEP_Field := 16#1#;
      --  unspecified
      Reserved_19_19   : HAL.Bit := 16#0#;
      --  TUNING_WINDOW
      TUNING_WINDOW    : TUNING_CTRL_TUNING_WINDOW_Field := 16#2#;
      --  unspecified
      Reserved_23_23   : HAL.Bit := 16#0#;
      --  STD_TUNING_EN
      STD_TUNING_EN    : Boolean := False;
      --  unspecified
      Reserved_25_31   : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TUNING_CTRL_Register use record
      TUNING_START_TAP at 0 range 0 .. 7;
      TUNING_COUNTER   at 0 range 8 .. 15;
      TUNING_STEP      at 0 range 16 .. 18;
      Reserved_19_19   at 0 range 19 .. 19;
      TUNING_WINDOW    at 0 range 20 .. 22;
      Reserved_23_23   at 0 range 23 .. 23;
      STD_TUNING_EN    at 0 range 24 .. 24;
      Reserved_25_31   at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  uSDHC
   type uSDHC_Peripheral is record
      --  DMA System Address
      DS_ADDR              : aliased HAL.UInt32;
      --  Block Attributes
      BLK_ATT              : aliased BLK_ATT_Register;
      --  Command Argument
      CMD_ARG              : aliased HAL.UInt32;
      --  Command Transfer Type
      CMD_XFR_TYP          : aliased CMD_XFR_TYP_Register;
      --  Command Response0
      CMD_RSP0             : aliased HAL.UInt32;
      --  Command Response1
      CMD_RSP1             : aliased HAL.UInt32;
      --  Command Response2
      CMD_RSP2             : aliased HAL.UInt32;
      --  Command Response3
      CMD_RSP3             : aliased HAL.UInt32;
      --  Data Buffer Access Port
      DATA_BUFF_ACC_PORT   : aliased HAL.UInt32;
      --  Present State
      PRES_STATE           : aliased PRES_STATE_Register;
      --  Protocol Control
      PROT_CTRL            : aliased PROT_CTRL_Register;
      --  System Control
      SYS_CTRL             : aliased SYS_CTRL_Register;
      --  Interrupt Status
      INT_STATUS           : aliased INT_STATUS_Register;
      --  Interrupt Status Enable
      INT_STATUS_EN        : aliased INT_STATUS_EN_Register;
      --  Interrupt Signal Enable
      INT_SIGNAL_EN        : aliased INT_SIGNAL_EN_Register;
      --  Auto CMD12 Error Status
      AUTOCMD12_ERR_STATUS : aliased AUTOCMD12_ERR_STATUS_Register;
      --  Host Controller Capabilities
      HOST_CTRL_CAP        : aliased HOST_CTRL_CAP_Register;
      --  Watermark Level
      WTMK_LVL             : aliased WTMK_LVL_Register;
      --  Mixer Control
      MIX_CTRL             : aliased MIX_CTRL_Register;
      --  Force Event
      FORCE_EVENT          : aliased FORCE_EVENT_Register;
      --  ADMA Error Status Register
      ADMA_ERR_STATUS      : aliased ADMA_ERR_STATUS_Register;
      --  ADMA System Address
      ADMA_SYS_ADDR        : aliased ADMA_SYS_ADDR_Register;
      --  DLL (Delay Line) Control
      DLL_CTRL             : aliased DLL_CTRL_Register;
      --  DLL Status
      DLL_STATUS           : aliased DLL_STATUS_Register;
      --  CLK Tuning Control and Status
      CLK_TUNE_CTRL_STATUS : aliased CLK_TUNE_CTRL_STATUS_Register;
      --  Vendor Specific Register
      VEND_SPEC            : aliased VEND_SPEC_Register;
      --  MMC Boot Register
      MMC_BOOT             : aliased MMC_BOOT_Register;
      --  Vendor Specific 2 Register
      VEND_SPEC2           : aliased VEND_SPEC2_Register;
      --  Tuning Control Register
      TUNING_CTRL          : aliased TUNING_CTRL_Register;
   end record
     with Volatile;

   for uSDHC_Peripheral use record
      DS_ADDR              at 16#0# range 0 .. 31;
      BLK_ATT              at 16#4# range 0 .. 31;
      CMD_ARG              at 16#8# range 0 .. 31;
      CMD_XFR_TYP          at 16#C# range 0 .. 31;
      CMD_RSP0             at 16#10# range 0 .. 31;
      CMD_RSP1             at 16#14# range 0 .. 31;
      CMD_RSP2             at 16#18# range 0 .. 31;
      CMD_RSP3             at 16#1C# range 0 .. 31;
      DATA_BUFF_ACC_PORT   at 16#20# range 0 .. 31;
      PRES_STATE           at 16#24# range 0 .. 31;
      PROT_CTRL            at 16#28# range 0 .. 31;
      SYS_CTRL             at 16#2C# range 0 .. 31;
      INT_STATUS           at 16#30# range 0 .. 31;
      INT_STATUS_EN        at 16#34# range 0 .. 31;
      INT_SIGNAL_EN        at 16#38# range 0 .. 31;
      AUTOCMD12_ERR_STATUS at 16#3C# range 0 .. 31;
      HOST_CTRL_CAP        at 16#40# range 0 .. 31;
      WTMK_LVL             at 16#44# range 0 .. 31;
      MIX_CTRL             at 16#48# range 0 .. 31;
      FORCE_EVENT          at 16#50# range 0 .. 31;
      ADMA_ERR_STATUS      at 16#54# range 0 .. 31;
      ADMA_SYS_ADDR        at 16#58# range 0 .. 31;
      DLL_CTRL             at 16#60# range 0 .. 31;
      DLL_STATUS           at 16#64# range 0 .. 31;
      CLK_TUNE_CTRL_STATUS at 16#68# range 0 .. 31;
      VEND_SPEC            at 16#C0# range 0 .. 31;
      MMC_BOOT             at 16#C4# range 0 .. 31;
      VEND_SPEC2           at 16#C8# range 0 .. 31;
      TUNING_CTRL          at 16#CC# range 0 .. 31;
   end record;

   --  uSDHC
   USDHC1_Periph : aliased uSDHC_Peripheral
     with Import, Address => System'To_Address (16#402C0000#);

   --  uSDHC
   USDHC2_Periph : aliased uSDHC_Peripheral
     with Import, Address => System'To_Address (16#402C4000#);

end NRF_SVD.uSDHC;
