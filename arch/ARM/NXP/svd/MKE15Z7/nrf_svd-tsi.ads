--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TSI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  End-of-Scan DMA Transfer Request Enable Only
   type GENCS_EOSDMEO_Field is
     (
      --  Do not enable the End-of-Scan DMA transfer request only. Depending on
      --  ESOR state, either Out-of-Range or End-of-Scan can trigger a DMA
      --  transfer request and interrupt.
      Eosdmeo_0,
      --  Only the End-of-Scan event can trigger a DMA transfer request. The
      --  Out-of-Range event only and always triggers an interrupt if TSIIE is
      --  set.
      Eosdmeo_1)
     with Size => 1;
   for GENCS_EOSDMEO_Field use
     (Eosdmeo_0 => 0,
      Eosdmeo_1 => 1);

   --  End of Scan Flag
   type GENCS_EOSF_Field is
     (
      --  Scan not complete.
      Eosf_0,
      --  Scan complete.
      Eosf_1)
     with Size => 1;
   for GENCS_EOSF_Field use
     (Eosf_0 => 0,
      Eosf_1 => 1);

   --  Scan In Progress Status
   type GENCS_SCNIP_Field is
     (
      --  No scan in progress.
      Scnip_0,
      --  Scan in progress.
      Scnip_1)
     with Size => 1;
   for GENCS_SCNIP_Field use
     (Scnip_0 => 0,
      Scnip_1 => 1);

   --  Scan Trigger Mode
   type GENCS_STM_Field is
     (
      --  Software trigger scan.
      Stm_0,
      --  Hardware trigger scan.
      Stm_1)
     with Size => 1;
   for GENCS_STM_Field use
     (Stm_0 => 0,
      Stm_1 => 1);

   --  TSI STOP Enable
   type GENCS_STPE_Field is
     (
      --  TSI is disabled when MCU goes into low power mode.
      Stpe_0,
      --  Allows TSI to continue running in all low power modes.
      Stpe_1)
     with Size => 1;
   for GENCS_STPE_Field use
     (Stpe_0 => 0,
      Stpe_1 => 1);

   --  Touch Sensing Input Interrupt Enable
   type GENCS_TSIIEN_Field is
     (
      --  TSI interrupt is disabled.
      Tsiien_0,
      --  TSI interrupt is enabled.
      Tsiien_1)
     with Size => 1;
   for GENCS_TSIIEN_Field use
     (Tsiien_0 => 0,
      Tsiien_1 => 1);

   --  Touch Sensing Input Module Enable
   type GENCS_TSIEN_Field is
     (
      --  TSI module disabled.
      Tsien_0,
      --  TSI module enabled.
      Tsien_1)
     with Size => 1;
   for GENCS_TSIEN_Field use
     (Tsien_0 => 0,
      Tsien_1 => 1);

   subtype TSI_GENCS_TSI_ANA_TEST_Field is HAL.UInt3;

   --  DVOLT
   type GENCS_DVOLT_Field is
     (
      --  Vm=0.3V; Vp=1.3V; dvolt=1.0V.
      Dvolt_0,
      --  Vm=0.3V; Vp=1.6V; dvolt=1.3V.
      Dvolt_1,
      --  Vm=0.3V; Vp=1.9V; dvolt=1.6V.
      Dvolt_2,
      --  Vm=0.3V; Vp=2.3V; dvolt=2.0V.
      Dvolt_3)
     with Size => 2;
   for GENCS_DVOLT_Field use
     (Dvolt_0 => 0,
      Dvolt_1 => 1,
      Dvolt_2 => 2,
      Dvolt_3 => 3);

   --  End-of-scan or Out-of-Range Interrupt Selection
   type GENCS_ESOR_Field is
     (
      --  Out-of-range interrupt is allowed.
      Esor_0,
      --  End-of-scan interrupt is allowed.
      Esor_1)
     with Size => 1;
   for GENCS_ESOR_Field use
     (Esor_0 => 0,
      Esor_1 => 1);

   --  TSI General Control and Status Register
   type TSI_GENCS_Register is record
      --  End-of-Scan DMA Transfer Request Enable Only
      EOSDMEO        : GENCS_EOSDMEO_Field := NRF_SVD.TSI.Eosdmeo_0;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. End of Scan Flag
      EOSF           : GENCS_EOSF_Field := NRF_SVD.TSI.Eosf_0;
      --  Read-only. Scan In Progress Status
      SCNIP          : GENCS_SCNIP_Field := NRF_SVD.TSI.Scnip_0;
      --  Scan Trigger Mode
      STM            : GENCS_STM_Field := NRF_SVD.TSI.Stm_0;
      --  TSI STOP Enable
      STPE           : GENCS_STPE_Field := NRF_SVD.TSI.Stpe_0;
      --  Touch Sensing Input Interrupt Enable
      TSIIEN         : GENCS_TSIIEN_Field := NRF_SVD.TSI.Tsiien_0;
      --  Touch Sensing Input Module Enable
      TSIEN          : GENCS_TSIEN_Field := NRF_SVD.TSI.Tsien_0;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  CLKSOC_SEL
      CLKSOC_SEL     : Boolean := False;
      --  RUN_CTRL
      RUN_CTRL       : Boolean := False;
      --  TSI_ANA_TEST
      TSI_ANA_TEST   : TSI_GENCS_TSI_ANA_TEST_Field := 16#0#;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  DVOLT
      DVOLT          : GENCS_DVOLT_Field := NRF_SVD.TSI.Dvolt_0;
      --  unspecified
      Reserved_21_27 : HAL.UInt7 := 16#0#;
      --  End-of-scan or Out-of-Range Interrupt Selection
      ESOR           : GENCS_ESOR_Field := NRF_SVD.TSI.Esor_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Out of Range Flag.
      OUTRGF         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_GENCS_Register use record
      EOSDMEO        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      EOSF           at 0 range 2 .. 2;
      SCNIP          at 0 range 3 .. 3;
      STM            at 0 range 4 .. 4;
      STPE           at 0 range 5 .. 5;
      TSIIEN         at 0 range 6 .. 6;
      TSIEN          at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      CLKSOC_SEL     at 0 range 11 .. 11;
      RUN_CTRL       at 0 range 12 .. 12;
      TSI_ANA_TEST   at 0 range 13 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      DVOLT          at 0 range 19 .. 20;
      Reserved_21_27 at 0 range 21 .. 27;
      ESOR           at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      OUTRGF         at 0 range 31 .. 31;
   end record;

   subtype TSI_DATA_TSICNT_Field is HAL.UInt16;

   --  Software Trigger Start
   type DATA_SWTS_Field is
     (
      --  No effect.
      Swts_0,
      --  Start a scan to determine which channel is specified by
      --  TSI_DATA[TSICH].
      Swts_1)
     with Size => 1;
   for DATA_SWTS_Field use
     (Swts_0 => 0,
      Swts_1 => 1);

   --  DMA Transfer Enabled
   type DATA_DMAEN_Field is
     (
      --  Interrupt is selected when the interrupt enable bit is set and the
      --  corresponding TSI events assert.
      Dmaen_0,
      --  DMA transfer request is selected when the interrupt enable bit is set
      --  and the corresponding TSI events assert.
      Dmaen_1)
     with Size => 1;
   for DATA_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  TSICH
   type DATA_TSICH_Field is
     (
      --  For self-cap mode: Channel 0.
      Tsich_0,
      --  For self-cap mode: Channel 1.
      Tsich_1,
      --  For self-cap mode: Channel 2.
      Tsich_2,
      --  For self-cap mode: Channel 3.
      Tsich_3,
      --  For self-cap mode: Channel 4.
      Tsich_4,
      --  For self-cap mode: Channel 5.
      Tsich_5,
      --  For self-cap mode: Channel 6.
      Tsich_6,
      --  For self-cap mode: Channel 7.
      Tsich_7,
      --  For self-cap mode: Channel 8.
      Tsich_8,
      --  For self-cap mode: Channel 9.
      Tsich_9,
      --  For self-cap mode: Channel 10.
      Tsich_10,
      --  For self-cap mode: Channel 11.
      Tsich_11,
      --  For self-cap mode: Channel 12.
      Tsich_12,
      --  For self-cap mode: Channel 13.
      Tsich_13,
      --  For self-cap mode: Channel 14.
      Tsich_14,
      --  For self-cap mode: Channel 15.
      Tsich_15,
      --  For self-cap mode: Channel 16.
      Tsich_16,
      --  For self-cap mode: Channel 17.
      Tsich_17,
      --  For self-cap mode: Channel 18.
      Tsich_18,
      --  For self-cap mode: Channel 19.
      Tsich_19,
      --  For self-cap mode: Channel 20.
      Tsich_20,
      --  For self-cap mode: Channel 21.
      Tsich_21,
      --  For self-cap mode: Channel 22.
      Tsich_22,
      --  For self-cap mode: Channel 23.
      Tsich_23,
      --  For self-cap mode: Channel 24.
      Tsich_24)
     with Size => 5;
   for DATA_TSICH_Field use
     (Tsich_0 => 0,
      Tsich_1 => 1,
      Tsich_2 => 2,
      Tsich_3 => 3,
      Tsich_4 => 4,
      Tsich_5 => 5,
      Tsich_6 => 6,
      Tsich_7 => 7,
      Tsich_8 => 8,
      Tsich_9 => 9,
      Tsich_10 => 10,
      Tsich_11 => 11,
      Tsich_12 => 12,
      Tsich_13 => 13,
      Tsich_14 => 14,
      Tsich_15 => 15,
      Tsich_16 => 16,
      Tsich_17 => 17,
      Tsich_18 => 18,
      Tsich_19 => 19,
      Tsich_20 => 20,
      Tsich_21 => 21,
      Tsich_22 => 22,
      Tsich_23 => 23,
      Tsich_24 => 24);

   --  TSI DATA Register
   type TSI_DATA_Register is record
      --  Read-only. TSI Conversion Counter Value
      TSICNT         : TSI_DATA_TSICNT_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Write-only. Software Trigger Start
      SWTS           : DATA_SWTS_Field := NRF_SVD.TSI.Swts_0;
      --  DMA Transfer Enabled
      DMAEN          : DATA_DMAEN_Field := NRF_SVD.TSI.Dmaen_0;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  TSICH
      TSICH          : DATA_TSICH_Field := NRF_SVD.TSI.Tsich_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_DATA_Register use record
      TSICNT         at 0 range 0 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      SWTS           at 0 range 22 .. 22;
      DMAEN          at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      TSICH          at 0 range 27 .. 31;
   end record;

   subtype TSI_TSHD_THRESL_Field is HAL.UInt16;
   subtype TSI_TSHD_THRESH_Field is HAL.UInt16;

   --  TSI Threshold Register
   type TSI_TSHD_Register is record
      --  TSI Wakeup Channel Low-threshold
      THRESL : TSI_TSHD_THRESL_Field := 16#0#;
      --  TSI Wakeup Channel High-threshold
      THRESH : TSI_TSHD_THRESH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_TSHD_Register use record
      THRESL at 0 range 0 .. 15;
      THRESH at 0 range 16 .. 31;
   end record;

   --  S_NOISE
   type MODE_S_NOISE_Field is
     (
      --  noise cancellation off.
      S_Noise_0,
      --  noise cancellation on.
      S_Noise_1)
     with Size => 1;
   for MODE_S_NOISE_Field use
     (S_Noise_0 => 0,
      S_Noise_1 => 1);

   --  MODE
   type MODE_MODE_Field is
     (
      --  self-cap mode.
      Mode_0,
      --  mutual-cap mode.
      Mode_1)
     with Size => 1;
   for MODE_MODE_Field use
     (Mode_0 => 0,
      Mode_1 => 1);

   --  SETCLK
   type MODE_SETCLK_Field is
     (
      --  20.72MHz.
      Setclk_0,
      --  16.65MHz.
      Setclk_1,
      --  13.87MHz.
      Setclk_2,
      --  11.91MHz.
      Setclk_3)
     with Size => 2;
   for MODE_SETCLK_Field use
     (Setclk_0 => 0,
      Setclk_1 => 1,
      Setclk_2 => 2,
      Setclk_3 => 3);

   --  S_XCH
   type MODE_S_XCH_Field is
     (
      --  1/16.
      S_Xch_0,
      --  1/8.
      S_Xch_1,
      --  1/4.
      S_Xch_2,
      --  1/2.
      S_Xch_3,
      --  NA.
      S_Xch_4,
      --  NA.
      S_Xch_5,
      --  NA.
      S_Xch_6,
      --  NA.
      S_Xch_7)
     with Size => 3;
   for MODE_S_XCH_Field use
     (S_Xch_0 => 0,
      S_Xch_1 => 1,
      S_Xch_2 => 2,
      S_Xch_3 => 3,
      S_Xch_4 => 4,
      S_Xch_5 => 5,
      S_Xch_6 => 6,
      S_Xch_7 => 7);

   --  S_XIN
   type MODE_S_XIN_Field is
     (
      --  1/8.
      S_Xin_0,
      --  1/4.
      S_Xin_1)
     with Size => 1;
   for MODE_S_XIN_Field use
     (S_Xin_0 => 0,
      S_Xin_1 => 1);

   --  Capacitor trim setting
   type MODE_S_CTRIM_Field is
     (
      --  Ctrim=2.5p.
      S_Ctrim_0,
      --  Ctrim=5.0p.
      S_Ctrim_1,
      --  Ctrim=7.5p.
      S_Ctrim_2,
      --  Ctrim=10p.
      S_Ctrim_3,
      --  Ctrim=12.5p.
      S_Ctrim_4,
      --  Ctrim=15p.
      S_Ctrim_5,
      --  Ctrim=17.5p.
      S_Ctrim_6,
      --  Ctrim=20p.
      S_Ctrim_7)
     with Size => 3;
   for MODE_S_CTRIM_Field use
     (S_Ctrim_0 => 0,
      S_Ctrim_1 => 1,
      S_Ctrim_2 => 2,
      S_Ctrim_3 => 3,
      S_Ctrim_4 => 4,
      S_Ctrim_5 => 5,
      S_Ctrim_6 => 6,
      S_Ctrim_7 => 7);

   --  S_SEN
   type MODE_S_SEN_Field is
     (
      --  Sensitivity boost off.
      S_Sen_0,
      --  Sensitivity boost on.
      S_Sen_1)
     with Size => 1;
   for MODE_S_SEN_Field use
     (S_Sen_0 => 0,
      S_Sen_1 => 1);

   --  S_W_SHIELD
   type MODE_S_W_SHIELD_Field is
     (
      --  shield switch off.
      S_W_Shield_0,
      --  shield switch on.
      S_W_Shield_1)
     with Size => 1;
   for MODE_S_W_SHIELD_Field use
     (S_W_Shield_0 => 0,
      S_W_Shield_1 => 1);

   --  S_XDN
   type MODE_S_XDN_Field is
     (
      --  1/16.
      S_Xdn_0,
      --  1/8.
      S_Xdn_1,
      --  1/4.
      S_Xdn_2,
      --  1/2.
      S_Xdn_3,
      --  NA.
      S_Xdn_4,
      --  NA.
      S_Xdn_5,
      --  NA.
      S_Xdn_6,
      --  NA.
      S_Xdn_7)
     with Size => 3;
   for MODE_S_XDN_Field use
     (S_Xdn_0 => 0,
      S_Xdn_1 => 1,
      S_Xdn_2 => 2,
      S_Xdn_3 => 3,
      S_Xdn_4 => 4,
      S_Xdn_5 => 5,
      S_Xdn_6 => 6,
      S_Xdn_7 => 7);

   --  TSI MODE Register
   type TSI_MODE_Register is record
      --  S_NOISE
      S_NOISE        : MODE_S_NOISE_Field := NRF_SVD.TSI.S_Noise_0;
      --  MODE
      MODE           : MODE_MODE_Field := NRF_SVD.TSI.Mode_0;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  SETCLK
      SETCLK         : MODE_SETCLK_Field := NRF_SVD.TSI.Setclk_3;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  S_XCH
      S_XCH          : MODE_S_XCH_Field := NRF_SVD.TSI.S_Xch_0;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  S_XIN
      S_XIN          : MODE_S_XIN_Field := NRF_SVD.TSI.S_Xin_1;
      --  Capacitor trim setting
      S_CTRIM        : MODE_S_CTRIM_Field := NRF_SVD.TSI.S_Ctrim_7;
      --  S_SEN
      S_SEN          : MODE_S_SEN_Field := NRF_SVD.TSI.S_Sen_0;
      --  S_W_SHIELD
      S_W_SHIELD     : MODE_S_W_SHIELD_Field := NRF_SVD.TSI.S_W_Shield_0;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  S_XDN
      S_XDN          : MODE_S_XDN_Field := NRF_SVD.TSI.S_Xdn_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_MODE_Register use record
      S_NOISE        at 0 range 0 .. 0;
      MODE           at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      SETCLK         at 0 range 5 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      S_XCH          at 0 range 12 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      S_XIN          at 0 range 18 .. 18;
      S_CTRIM        at 0 range 19 .. 21;
      S_SEN          at 0 range 22 .. 22;
      S_W_SHIELD     at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      S_XDN          at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  M_SEL_RX
   type MUL0_M_SEL_RX_Field is
     (
      --  select channel 6 as rx6.
      M_Sel_Rx_0,
      --  select channel 7 as rx7.
      M_Sel_Rx_1,
      --  select channel 8 as rx8.
      M_Sel_Rx_2,
      --  select channel 9 as rx9.
      M_Sel_Rx_3,
      --  select channel 10 as rx10.
      M_Sel_Rx_4,
      --  select channel 11 as rx11.
      M_Sel_Rx_5,
      --  NA.
      M_Sel_Rx_6,
      --  NA.
      M_Sel_Rx_7)
     with Size => 3;
   for MUL0_M_SEL_RX_Field use
     (M_Sel_Rx_0 => 0,
      M_Sel_Rx_1 => 1,
      M_Sel_Rx_2 => 2,
      M_Sel_Rx_3 => 3,
      M_Sel_Rx_4 => 4,
      M_Sel_Rx_5 => 5,
      M_Sel_Rx_6 => 6,
      M_Sel_Rx_7 => 7);

   --  M_SEL_TX
   type MUL0_M_SEL_TX_Field is
     (
      --  select channel 0 as tx0.
      M_Sel_Tx_0,
      --  select channel 1 as tx1.
      M_Sel_Tx_1,
      --  select channel 2 as tx2.
      M_Sel_Tx_2,
      --  select channel 3 as tx3.
      M_Sel_Tx_3,
      --  select channel 4 as tx4.
      M_Sel_Tx_4,
      --  select channel 5 as tx5.
      M_Sel_Tx_5,
      --  NA.
      M_Sel_Tx_6,
      --  NA.
      M_Sel_Tx_7)
     with Size => 3;
   for MUL0_M_SEL_TX_Field use
     (M_Sel_Tx_0 => 0,
      M_Sel_Tx_1 => 1,
      M_Sel_Tx_2 => 2,
      M_Sel_Tx_3 => 3,
      M_Sel_Tx_4 => 4,
      M_Sel_Tx_5 => 5,
      M_Sel_Tx_6 => 6,
      M_Sel_Tx_7 => 7);

   --  M_SEN_RES
   type MUL0_M_SEN_RES_Field is
     (
      --  2.5k.
      M_Sen_Res_0,
      --  5k.
      M_Sen_Res_1,
      --  7.5k.
      M_Sen_Res_2,
      --  10k.
      M_Sen_Res_3,
      --  12.5k.
      M_Sen_Res_4,
      --  15k.
      M_Sen_Res_5,
      --  17.5k.
      M_Sen_Res_6,
      --  20k.
      M_Sen_Res_7,
      --  22.5k.
      M_Sen_Res_8,
      --  25k.
      M_Sen_Res_9,
      --  27.5k.
      M_Sen_Res_10,
      --  30k.
      M_Sen_Res_11,
      --  32.5k.
      M_Sen_Res_12,
      --  35k.
      M_Sen_Res_13,
      --  37.5k.
      M_Sen_Res_14,
      --  40k.
      M_Sen_Res_15)
     with Size => 4;
   for MUL0_M_SEN_RES_Field use
     (M_Sen_Res_0 => 0,
      M_Sen_Res_1 => 1,
      M_Sen_Res_2 => 2,
      M_Sen_Res_3 => 3,
      M_Sen_Res_4 => 4,
      M_Sen_Res_5 => 5,
      M_Sen_Res_6 => 6,
      M_Sen_Res_7 => 7,
      M_Sen_Res_8 => 8,
      M_Sen_Res_9 => 9,
      M_Sen_Res_10 => 10,
      M_Sen_Res_11 => 11,
      M_Sen_Res_12 => 12,
      M_Sen_Res_13 => 13,
      M_Sen_Res_14 => 14,
      M_Sen_Res_15 => 15);

   --  M_PRE_RES
   type MUL0_M_PRE_RES_Field is
     (
      --  1k.
      M_Pre_Res_0,
      --  2k.
      M_Pre_Res_1,
      --  3k.
      M_Pre_Res_2,
      --  4k.
      M_Pre_Res_3,
      --  5k.
      M_Pre_Res_4,
      --  6k.
      M_Pre_Res_5,
      --  7k.
      M_Pre_Res_6,
      --  8k.
      M_Pre_Res_7)
     with Size => 3;
   for MUL0_M_PRE_RES_Field use
     (M_Pre_Res_0 => 0,
      M_Pre_Res_1 => 1,
      M_Pre_Res_2 => 2,
      M_Pre_Res_3 => 3,
      M_Pre_Res_4 => 4,
      M_Pre_Res_5 => 5,
      M_Pre_Res_6 => 6,
      M_Pre_Res_7 => 7);

   --  M_PRE_CURRENT
   type MUL0_M_PRE_CURRENT_Field is
     (
      --  1uA.
      M_Pre_Current_0,
      --  2uA.
      M_Pre_Current_1,
      --  3uA.
      M_Pre_Current_2,
      --  4uA.
      M_Pre_Current_3,
      --  5uA.
      M_Pre_Current_4,
      --  6uA.
      M_Pre_Current_5,
      --  7uA.
      M_Pre_Current_6,
      --  8uA.
      M_Pre_Current_7)
     with Size => 3;
   for MUL0_M_PRE_CURRENT_Field use
     (M_Pre_Current_0 => 0,
      M_Pre_Current_1 => 1,
      M_Pre_Current_2 => 2,
      M_Pre_Current_3 => 3,
      M_Pre_Current_4 => 4,
      M_Pre_Current_5 => 5,
      M_Pre_Current_6 => 6,
      M_Pre_Current_7 => 7);

   --  TSI MUTUAL-CAP Register 0
   type TSI_MUL0_Register is record
      --  M_SEL_RX
      M_SEL_RX       : MUL0_M_SEL_RX_Field := NRF_SVD.TSI.M_Sel_Rx_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  M_SEL_TX
      M_SEL_TX       : MUL0_M_SEL_TX_Field := NRF_SVD.TSI.M_Sel_Tx_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  M_SEN_RES
      M_SEN_RES      : MUL0_M_SEN_RES_Field := NRF_SVD.TSI.M_Sen_Res_3;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  M_PRE_RES
      M_PRE_RES      : MUL0_M_PRE_RES_Field := NRF_SVD.TSI.M_Pre_Res_3;
      --  unspecified
      Reserved_16_28 : HAL.UInt13 := 16#0#;
      --  M_PRE_CURRENT
      M_PRE_CURRENT  : MUL0_M_PRE_CURRENT_Field :=
                        NRF_SVD.TSI.M_Pre_Current_3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_MUL0_Register use record
      M_SEL_RX       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      M_SEL_TX       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      M_SEN_RES      at 0 range 8 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      M_PRE_RES      at 0 range 13 .. 15;
      Reserved_16_28 at 0 range 16 .. 28;
      M_PRE_CURRENT  at 0 range 29 .. 31;
   end record;

   --  M_NMIR_CTRL
   type MUL1_M_NMIR_CTRL_Field is
     (
      --  Enable NMOS mirror.
      M_Nmir_Ctrl_0,
      --  Disable NMOS mirror.
      M_Nmir_Ctrl_1)
     with Size => 1;
   for MUL1_M_NMIR_CTRL_Field use
     (M_Nmir_Ctrl_0 => 0,
      M_Nmir_Ctrl_1 => 1);

   --  M_NMIRROR
   type MUL1_M_NMIRROR_Field is
     (
      --  m=1.
      M_Nmirror_0,
      --  m=2.
      M_Nmirror_1,
      --  m=3.
      M_Nmirror_2,
      --  m=4.
      M_Nmirror_3)
     with Size => 2;
   for MUL1_M_NMIRROR_Field use
     (M_Nmirror_0 => 0,
      M_Nmirror_1 => 1,
      M_Nmirror_2 => 2,
      M_Nmirror_3 => 3);

   --  M_PMIRRORR
   type MUL1_M_PMIRRORR_Field is
     (
      --  m=1.
      M_Pmirrorr_0,
      --  m=2.
      M_Pmirrorr_1,
      --  m=3.
      M_Pmirrorr_2,
      --  m=4.
      M_Pmirrorr_3)
     with Size => 2;
   for MUL1_M_PMIRRORR_Field use
     (M_Pmirrorr_0 => 0,
      M_Pmirrorr_1 => 1,
      M_Pmirrorr_2 => 2,
      M_Pmirrorr_3 => 3);

   --  M_PMIRRORL
   type MUL1_M_PMIRRORL_Field is
     (
      --  m=4.
      M_Pmirrorl_0,
      --  m=8.
      M_Pmirrorl_1,
      --  m=12.
      M_Pmirrorl_2,
      --  m=16.
      M_Pmirrorl_3,
      --  m=20.
      M_Pmirrorl_4,
      --  m=24.
      M_Pmirrorl_5,
      --  m=28.
      M_Pmirrorl_6,
      --  m=32.
      M_Pmirrorl_7)
     with Size => 3;
   for MUL1_M_PMIRRORL_Field use
     (M_Pmirrorl_0 => 0,
      M_Pmirrorl_1 => 1,
      M_Pmirrorl_2 => 2,
      M_Pmirrorl_3 => 3,
      M_Pmirrorl_4 => 4,
      M_Pmirrorl_5 => 5,
      M_Pmirrorl_6 => 6,
      M_Pmirrorl_7 => 7);

   subtype TSI_MUL1_M_TRIM2_Field is HAL.UInt8;

   --  M_VPRE_CHOOSE
   type MUL1_M_VPRE_CHOOSE_Field is
     (
      --  Internal 1.2V voltage.
      M_Vpre_Choose_0,
      --  1.2V PMC output.
      M_Vpre_Choose_1)
     with Size => 1;
   for MUL1_M_VPRE_CHOOSE_Field use
     (M_Vpre_Choose_0 => 0,
      M_Vpre_Choose_1 => 1);

   --  M_MODE
   type MUL1_M_MODE_Field is
     (
      --  -5V~+5V.
      M_Mode_0,
      --  0V~+5V.
      M_Mode_1)
     with Size => 1;
   for MUL1_M_MODE_Field use
     (M_Mode_0 => 0,
      M_Mode_1 => 1);

   --  M_SEN_BOOST
   type MUL1_M_SEN_BOOST_Field is
     (
      --  0u.
      M_Sen_Boost_0,
      --  2u.
      M_Sen_Boost_1,
      --  4u.
      M_Sen_Boost_2,
      --  6u.
      M_Sen_Boost_3,
      --  8u.
      M_Sen_Boost_4,
      --  10u.
      M_Sen_Boost_5,
      --  12u.
      M_Sen_Boost_6,
      --  14u
      M_Sen_Boost_7,
      --  16u.
      M_Sen_Boost_8,
      --  18u.
      M_Sen_Boost_9,
      --  20u.
      M_Sen_Boost_10,
      --  22u.
      M_Sen_Boost_11,
      --  24u.
      M_Sen_Boost_12,
      --  26u.
      M_Sen_Boost_13,
      --  28u.
      M_Sen_Boost_14,
      --  30u.
      M_Sen_Boost_15,
      --  32u.
      M_Sen_Boost_16,
      --  34u.
      M_Sen_Boost_17,
      --  36u.
      M_Sen_Boost_18,
      --  38u.
      M_Sen_Boost_19,
      --  40u.
      M_Sen_Boost_20,
      --  42u.
      M_Sen_Boost_21,
      --  44u.
      M_Sen_Boost_22,
      --  46u.
      M_Sen_Boost_23,
      --  48u.
      M_Sen_Boost_24,
      --  50u.
      M_Sen_Boost_25,
      --  52u.
      M_Sen_Boost_26,
      --  54u.
      M_Sen_Boost_27,
      --  56u.
      M_Sen_Boost_28,
      --  58u.
      M_Sen_Boost_29,
      --  60u.
      M_Sen_Boost_30,
      --  62u.
      M_Sen_Boost_31)
     with Size => 5;
   for MUL1_M_SEN_BOOST_Field use
     (M_Sen_Boost_0 => 0,
      M_Sen_Boost_1 => 1,
      M_Sen_Boost_2 => 2,
      M_Sen_Boost_3 => 3,
      M_Sen_Boost_4 => 4,
      M_Sen_Boost_5 => 5,
      M_Sen_Boost_6 => 6,
      M_Sen_Boost_7 => 7,
      M_Sen_Boost_8 => 8,
      M_Sen_Boost_9 => 9,
      M_Sen_Boost_10 => 10,
      M_Sen_Boost_11 => 11,
      M_Sen_Boost_12 => 12,
      M_Sen_Boost_13 => 13,
      M_Sen_Boost_14 => 14,
      M_Sen_Boost_15 => 15,
      M_Sen_Boost_16 => 16,
      M_Sen_Boost_17 => 17,
      M_Sen_Boost_18 => 18,
      M_Sen_Boost_19 => 19,
      M_Sen_Boost_20 => 20,
      M_Sen_Boost_21 => 21,
      M_Sen_Boost_22 => 22,
      M_Sen_Boost_23 => 23,
      M_Sen_Boost_24 => 24,
      M_Sen_Boost_25 => 25,
      M_Sen_Boost_26 => 26,
      M_Sen_Boost_27 => 27,
      M_Sen_Boost_28 => 28,
      M_Sen_Boost_29 => 29,
      M_Sen_Boost_30 => 30,
      M_Sen_Boost_31 => 31);

   --  TSI MUTUAL-CAP Register 1
   type TSI_MUL1_Register is record
      --  M_NMIR_CTRL
      M_NMIR_CTRL    : MUL1_M_NMIR_CTRL_Field := NRF_SVD.TSI.M_Nmir_Ctrl_0;
      --  M_NMIRROR
      M_NMIRROR      : MUL1_M_NMIRROR_Field := NRF_SVD.TSI.M_Nmirror_3;
      --  M_PMIRRORR
      M_PMIRRORR     : MUL1_M_PMIRRORR_Field := NRF_SVD.TSI.M_Pmirrorr_3;
      --  M_PMIRRORL
      M_PMIRRORL     : MUL1_M_PMIRRORL_Field := NRF_SVD.TSI.M_Pmirrorl_3;
      --  M_TRIM2
      M_TRIM2        : TSI_MUL1_M_TRIM2_Field := 16#0#;
      --  M_VPRE_CHOOSE
      M_VPRE_CHOOSE  : MUL1_M_VPRE_CHOOSE_Field :=
                        NRF_SVD.TSI.M_Vpre_Choose_1;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  M_MODE
      M_MODE         : MUL1_M_MODE_Field := NRF_SVD.TSI.M_Mode_1;
      --  M_SEN_BOOST
      M_SEN_BOOST    : MUL1_M_SEN_BOOST_Field := NRF_SVD.TSI.M_Sen_Boost_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_MUL1_Register use record
      M_NMIR_CTRL    at 0 range 0 .. 0;
      M_NMIRROR      at 0 range 1 .. 2;
      M_PMIRRORR     at 0 range 3 .. 4;
      M_PMIRRORL     at 0 range 5 .. 7;
      M_TRIM2        at 0 range 8 .. 15;
      M_VPRE_CHOOSE  at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      M_MODE         at 0 range 18 .. 18;
      M_SEN_BOOST    at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SSC_CONTROL_OUT
   type SINC_SSC_CONTROL_OUT_Field is
     (
      --  SSC output value is 0.
      Ssc_Control_Out_0,
      --  SSC output value is 1.
      Ssc_Control_Out_1)
     with Size => 1;
   for SINC_SSC_CONTROL_OUT_Field use
     (Ssc_Control_Out_0 => 0,
      Ssc_Control_Out_1 => 1);

   --  SINC_VALID
   type SINC_SINC_VALID_Field is
     (
      --  SINC filter is disabled.
      Sinc_Valid_0,
      --  SINC filter is enabled.
      Sinc_Valid_1)
     with Size => 1;
   for SINC_SINC_VALID_Field use
     (Sinc_Valid_0 => 0,
      Sinc_Valid_1 => 1);

   --  SINC_OVERFLOW_FLAG
   type SINC_SINC_OVERFLOW_FLAG_Field is
     (
      --  The counter result has no overflow occurrence in the last scan
      --  process.
      Sinc_Overflow_Flag_0,
      --  The counter result has an overflow occurrence in the last scan
      --  process.
      Sinc_Overflow_Flag_1)
     with Size => 1;
   for SINC_SINC_OVERFLOW_FLAG_Field use
     (Sinc_Overflow_Flag_0 => 0,
      Sinc_Overflow_Flag_1 => 1);

   --  SWITCH_ENABLE
   type SINC_SWITCH_ENABLE_Field is
     (
      --  SSC function is disabled.
      Switch_Enable_0,
      --  SSC function is enabled.
      Switch_Enable_1)
     with Size => 1;
   for SINC_SWITCH_ENABLE_Field use
     (Switch_Enable_0 => 0,
      Switch_Enable_1 => 1);

   --  DECIMATION
   type SINC_DECIMATION_Field is
     (
      --  The TSI_DATA[TSICNT] bits is the counter value of 1 scan period.
      Decimation_0,
      --  The TSI_DATA[TSICNT] bits is the counter value of 2 scan periods.
      Decimation_1,
      --  The TSI_DATA[TSICNT] bits is the counter value of 3 scan periods.
      Decimation_2,
      --  The TSI_DATA[TSICNT] bits is the counter value of 4 scan periods.
      Decimation_3,
      --  The TSI_DATA[TSICNT] bits is the counter value of 5 scan periods.
      Decimation_4,
      --  The TSI_DATA[TSICNT] bits is the counter value of 6 scan periods.
      Decimation_5,
      --  The TSI_DATA[TSICNT] bits is the counter value of 7 scan periods.
      Decimation_6,
      --  The TSI_DATA[TSICNT] bits is the counter value of 8 scan periods.
      Decimation_7,
      --  The TSI_DATA[TSICNT] bits is the counter value of 9 scan periods.
      Decimation_8,
      --  The TSI_DATA[TSICNT] bits is the counter value of 10 scan periods.
      Decimation_9,
      --  The TSI_DATA[TSICNT] bits is the counter value of 11 scan periods.
      Decimation_10,
      --  The TSI_DATA[TSICNT] bits is the counter value of 12 scan periods.
      Decimation_11,
      --  The TSI_DATA[TSICNT] bits is the counter value of 13 scan periods.
      Decimation_12,
      --  The TSI_DATA[TSICNT] bits is the counter value of 14 scan periods.
      Decimation_13,
      --  The TSI_DATA[TSICNT] bits is the counter value of 15 scan periods.
      Decimation_14,
      --  The TSI_DATA[TSICNT] bits is the counter value of 16 scan periods.
      Decimation_15,
      --  The TSI_DATA[TSICNT] bits is the counter value of 17 scan periods.
      Decimation_16,
      --  The TSI_DATA[TSICNT] bits is the counter value of 18 scan periods.
      Decimation_17,
      --  The TSI_DATA[TSICNT] bits is the counter value of 19 scan periods.
      Decimation_18,
      --  The TSI_DATA[TSICNT] bits is the counter value of 20 scan periods.
      Decimation_19,
      --  The TSI_DATA[TSICNT] bits is the counter value of 21 scan periods.
      Decimation_20,
      --  The TSI_DATA[TSICNT] bits is the counter value of 22 scan periods.
      Decimation_21,
      --  The TSI_DATA[TSICNT] bits is the counter value of 23 scan periods.
      Decimation_22,
      --  The TSI_DATA[TSICNT] bits is the counter value of 24 scan periods.
      Decimation_23,
      --  The TSI_DATA[TSICNT] bits is the counter value of 25 scan periods.
      Decimation_24,
      --  The TSI_DATA[TSICNT] bits is the counter value of 26 scan periods.
      Decimation_25,
      --  The TSI_DATA[TSICNT] bits is the counter value of 27 scan periods.
      Decimation_26,
      --  The TSI_DATA[TSICNT] bits is the counter value of 28 scan periods.
      Decimation_27,
      --  The TSI_DATA[TSICNT] bits is the counter value of 29 scan periods.
      Decimation_28,
      --  The TSI_DATA[TSICNT] bits is the counter value of 30 scan periods.
      Decimation_29,
      --  The TSI_DATA[TSICNT] bits is the counter value of 31 scan periods.
      Decimation_30,
      --  The TSI_DATA[TSICNT] bits is the counter value of 32 scan periods.
      Decimation_31)
     with Size => 5;
   for SINC_DECIMATION_Field use
     (Decimation_0 => 0,
      Decimation_1 => 1,
      Decimation_2 => 2,
      Decimation_3 => 3,
      Decimation_4 => 4,
      Decimation_5 => 5,
      Decimation_6 => 6,
      Decimation_7 => 7,
      Decimation_8 => 8,
      Decimation_9 => 9,
      Decimation_10 => 10,
      Decimation_11 => 11,
      Decimation_12 => 12,
      Decimation_13 => 13,
      Decimation_14 => 14,
      Decimation_15 => 15,
      Decimation_16 => 16,
      Decimation_17 => 17,
      Decimation_18 => 18,
      Decimation_19 => 19,
      Decimation_20 => 20,
      Decimation_21 => 21,
      Decimation_22 => 22,
      Decimation_23 => 23,
      Decimation_24 => 24,
      Decimation_25 => 25,
      Decimation_26 => 26,
      Decimation_27 => 27,
      Decimation_28 => 28,
      Decimation_29 => 29,
      Decimation_30 => 30,
      Decimation_31 => 31);

   --  ORDER
   type SINC_ORDER_Field is
     (
      --  Using 1 order SINC filter.
      Order_0,
      --  Using 2 order SINC filter.
      Order_1)
     with Size => 1;
   for SINC_ORDER_Field use
     (Order_0 => 0,
      Order_1 => 1);

   --  CUTOFF
   type SINC_CUTOFF_Field is
     (
      --  div=1.
      Cutoff_0,
      --  div=2.
      Cutoff_1,
      --  div=4.
      Cutoff_2,
      --  div=8.
      Cutoff_3,
      --  div=16.
      Cutoff_4,
      --  div=32.
      Cutoff_5,
      --  div=64.
      Cutoff_6,
      --  div=128.
      Cutoff_7,
      --  NC.
      Cutoff_8,
      --  NC.
      Cutoff_9,
      --  NC.
      Cutoff_10,
      --  NC.
      Cutoff_11,
      --  NC.
      Cutoff_12,
      --  NC
      Cutoff_13,
      --  NC.
      Cutoff_14,
      --  NC.
      Cutoff_15)
     with Size => 4;
   for SINC_CUTOFF_Field use
     (Cutoff_0 => 0,
      Cutoff_1 => 1,
      Cutoff_2 => 2,
      Cutoff_3 => 3,
      Cutoff_4 => 4,
      Cutoff_5 => 5,
      Cutoff_6 => 6,
      Cutoff_7 => 7,
      Cutoff_8 => 8,
      Cutoff_9 => 9,
      Cutoff_10 => 10,
      Cutoff_11 => 11,
      Cutoff_12 => 12,
      Cutoff_13 => 13,
      Cutoff_14 => 14,
      Cutoff_15 => 15);

   --  TSI SINC filter Register
   type TSI_SINC_Register is record
      --  Read-only. SSC_CONTROL_OUT
      SSC_CONTROL_OUT    : SINC_SSC_CONTROL_OUT_Field :=
                            NRF_SVD.TSI.Ssc_Control_Out_1;
      --  Read-only. SINC_VALID
      SINC_VALID         : SINC_SINC_VALID_Field := NRF_SVD.TSI.Sinc_Valid_0;
      --  Read-only. SINC_OVERFLOW_FLAG
      SINC_OVERFLOW_FLAG : SINC_SINC_OVERFLOW_FLAG_Field :=
                            NRF_SVD.TSI.Sinc_Overflow_Flag_0;
      --  Read-only. SWITCH_ENABLE
      SWITCH_ENABLE      : SINC_SWITCH_ENABLE_Field :=
                            NRF_SVD.TSI.Switch_Enable_0;
      --  unspecified
      Reserved_4_15      : HAL.UInt12 := 16#0#;
      --  DECIMATION
      DECIMATION         : SINC_DECIMATION_Field := NRF_SVD.TSI.Decimation_7;
      --  ORDER
      ORDER              : SINC_ORDER_Field := NRF_SVD.TSI.Order_0;
      --  unspecified
      Reserved_22_23     : HAL.UInt2 := 16#0#;
      --  CUTOFF
      CUTOFF             : SINC_CUTOFF_Field := NRF_SVD.TSI.Cutoff_0;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_SINC_Register use record
      SSC_CONTROL_OUT    at 0 range 0 .. 0;
      SINC_VALID         at 0 range 1 .. 1;
      SINC_OVERFLOW_FLAG at 0 range 2 .. 2;
      SWITCH_ENABLE      at 0 range 3 .. 3;
      Reserved_4_15      at 0 range 4 .. 15;
      DECIMATION         at 0 range 16 .. 20;
      ORDER              at 0 range 21 .. 21;
      Reserved_22_23     at 0 range 22 .. 23;
      CUTOFF             at 0 range 24 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  SSC_PRESCALE_NUM
   type SSC0_SSC_PRESCALE_NUM_Field is
     (
      --  div2(2^0*2)
      Ssc_Prescale_Num_0,
      --  div4(2^1*2)
      Ssc_Prescale_Num_1,
      --  div8(2^2*2)
      Ssc_Prescale_Num_3,
      --  div16(2^3*2)
      Ssc_Prescale_Num_7,
      --  div32(2^4*2)
      Ssc_Prescale_Num_15,
      --  div64(2^5*2)
      Ssc_Prescale_Num_31,
      --  div128(2^6*2)
      Ssc_Prescale_Num_63,
      --  div256(2^7*2)
      Ssc_Prescale_Num_127,
      --  div512(2^8*2)
      Ssc_Prescale_Num_255)
     with Size => 8;
   for SSC0_SSC_PRESCALE_NUM_Field use
     (Ssc_Prescale_Num_0 => 0,
      Ssc_Prescale_Num_1 => 1,
      Ssc_Prescale_Num_3 => 3,
      Ssc_Prescale_Num_7 => 7,
      Ssc_Prescale_Num_15 => 15,
      Ssc_Prescale_Num_31 => 31,
      Ssc_Prescale_Num_63 => 63,
      Ssc_Prescale_Num_127 => 127,
      Ssc_Prescale_Num_255 => 255);

   --  BASE_NOCHARGE_NUM
   type SSC0_BASE_NOCHARGE_NUM_Field is
     (
      --  The SSC output bit 1's basic period will be 1 clock cycle of system
      --  clock.
      Base_Nocharge_Num_0,
      --  The SSC output bit 1's basic period will be 2 clock cycles of system
      --  clock.
      Base_Nocharge_Num_1,
      --  The SSC output bit 1's basic period will be 3 clock cycles of system
      --  clock.
      Base_Nocharge_Num_2,
      --  The SSC output bit 1's basic period will be 4 clock cycles of system
      --  clock.
      Base_Nocharge_Num_3,
      --  The SSC output bit 1's basic period will be 5 clock cycles of system
      --  clock.
      Base_Nocharge_Num_4,
      --  The SSC output bit 1's basic period will be 6 clock cycles of system
      --  clock.
      Base_Nocharge_Num_5,
      --  The SSC output bit 1's basic period will be 7 clock cycles of system
      --  clock.
      Base_Nocharge_Num_6,
      --  The SSC output bit 1's basic period will be 8 clock cycles of system
      --  clock.
      Base_Nocharge_Num_7,
      --  The SSC output bit 1's basic period will be 9 clock cycles of system
      --  clock.
      Base_Nocharge_Num_8,
      --  The SSC output bit 1's basic period will be 10 clock cycles of system
      --  clock.
      Base_Nocharge_Num_9,
      --  The SSC output bit 1's basic period will be 11 clock cycles of system
      --  clock.
      Base_Nocharge_Num_10,
      --  The SSC output bit 1's basic period will be 12 clock cycles of system
      --  clock.
      Base_Nocharge_Num_11,
      --  The SSC output bit 1's basic period will be 13 clock cycles of system
      --  clock.
      Base_Nocharge_Num_12,
      --  The SSC output bit 1's basic period will be 14 clock cycles of system
      --  clock.
      Base_Nocharge_Num_13,
      --  The SSC output bit 1's basic period will be 15 clock cycles of system
      --  clock.
      Base_Nocharge_Num_14,
      --  The SSC output bit 1's basic period will be 16 clock cycles of system
      --  clock.
      Base_Nocharge_Num_15)
     with Size => 4;
   for SSC0_BASE_NOCHARGE_NUM_Field use
     (Base_Nocharge_Num_0 => 0,
      Base_Nocharge_Num_1 => 1,
      Base_Nocharge_Num_2 => 2,
      Base_Nocharge_Num_3 => 3,
      Base_Nocharge_Num_4 => 4,
      Base_Nocharge_Num_5 => 5,
      Base_Nocharge_Num_6 => 6,
      Base_Nocharge_Num_7 => 7,
      Base_Nocharge_Num_8 => 8,
      Base_Nocharge_Num_9 => 9,
      Base_Nocharge_Num_10 => 10,
      Base_Nocharge_Num_11 => 11,
      Base_Nocharge_Num_12 => 12,
      Base_Nocharge_Num_13 => 13,
      Base_Nocharge_Num_14 => 14,
      Base_Nocharge_Num_15 => 15);

   --  CHARGE_NUM
   type SSC0_CHARGE_NUM_Field is
     (
      --  The SSC output bit 0's period will be 1 clock cycle of system clock.
      Charge_Num_0,
      --  The SSC output bit 0's period will be 2 clock cycles of system clock.
      Charge_Num_1,
      --  The SSC output bit 0's period will be 3 clock cycles of system clock.
      Charge_Num_2,
      --  The SSC output bit 0's period will be 4 clock cycles of system clock.
      Charge_Num_3,
      --  The SSC output bit 0's period will be 5 clock cycles of system clock.
      Charge_Num_4,
      --  The SSC output bit 0's period will be 6 clock cycles of system clock.
      Charge_Num_5,
      --  The SSC output bit 0's period will be 7 clock cycles of system clock.
      Charge_Num_6,
      --  The SSC output bit 0's period will be 8 clock cycles of system clock.
      Charge_Num_7,
      --  The SSC output bit 0's period will be 9 clock cycles of system clock.
      Charge_Num_8,
      --  The SSC output bit 0's period will be 10 clock cycles of system
      --  clock.
      Charge_Num_9,
      --  The SSC output bit 0's period will be 11 clock cycles of system
      --  clock.
      Charge_Num_10,
      --  The SSC output bit 0's period will be 12 clock cycles of system
      --  clock.
      Charge_Num_11,
      --  The SSC output bit 0's period will be 13 clock cycles of system
      --  clock.
      Charge_Num_12,
      --  The SSC output bit 0's period will be 14 clock cycles of system
      --  clock.
      Charge_Num_13,
      --  The SSC output bit 0's period will be 15 clock cycles of system
      --  clock.
      Charge_Num_14,
      --  The SSC output bit 0's period will be 16 clock cycles of system
      --  clock.
      Charge_Num_15)
     with Size => 4;
   for SSC0_CHARGE_NUM_Field use
     (Charge_Num_0 => 0,
      Charge_Num_1 => 1,
      Charge_Num_2 => 2,
      Charge_Num_3 => 3,
      Charge_Num_4 => 4,
      Charge_Num_5 => 5,
      Charge_Num_6 => 6,
      Charge_Num_7 => 7,
      Charge_Num_8 => 8,
      Charge_Num_9 => 9,
      Charge_Num_10 => 10,
      Charge_Num_11 => 11,
      Charge_Num_12 => 12,
      Charge_Num_13 => 13,
      Charge_Num_14 => 14,
      Charge_Num_15 => 15);

   --  SSC_CONTROL_REVERSE
   type SSC0_SSC_CONTROL_REVERSE_Field is
     (
      --  Keep the polarity of the SSC output bit.
      Ssc_Control_Reverse_0,
      --  Reverse the polarity of the SSC output bit.
      Ssc_Control_Reverse_1)
     with Size => 1;
   for SSC0_SSC_CONTROL_REVERSE_Field use
     (Ssc_Control_Reverse_0 => 0,
      Ssc_Control_Reverse_1 => 1);

   --  SSC_MODE
   type SSC0_SSC_MODE_Field is
     (
      --  Using PRBS method generating SSC output bit.
      Ssc_Mode_0,
      --  Using up-down counter generating SSC output bit.
      Ssc_Mode_1,
      --  SSC function is disabled.
      Ssc_Mode_2,
      --  NC.
      Ssc_Mode_3)
     with Size => 2;
   for SSC0_SSC_MODE_Field use
     (Ssc_Mode_0 => 0,
      Ssc_Mode_1 => 1,
      Ssc_Mode_2 => 2,
      Ssc_Mode_3 => 3);

   --  PRBS_OUTSEL
   type SSC0_PRBS_OUTSEL_Field is
     (
      --  NC.
      Prbs_Outsel_0,
      --  NC.
      Prbs_Outsel_1,
      --  The length of the PRBS is 2.
      Prbs_Outsel_2,
      --  The length of the PRBS is 3.
      Prbs_Outsel_3,
      --  The length of the PRBS is 4.
      Prbs_Outsel_4,
      --  The length of the PRBS is 5.
      Prbs_Outsel_5,
      --  The length of the PRBS is 6.
      Prbs_Outsel_6,
      --  The length of the PRBS is 7.
      Prbs_Outsel_7,
      --  The length of the PRBS is 8.
      Prbs_Outsel_8,
      --  The length of the PRBS is 9.
      Prbs_Outsel_9,
      --  The length of the PRBS is 10.
      Prbs_Outsel_10,
      --  The length of the PRBS is 11.
      Prbs_Outsel_11,
      --  The length of the PRBS is 12.
      Prbs_Outsel_12,
      --  The length of the PRBS is 13.
      Prbs_Outsel_13,
      --  The length of the PRBS is 14.
      Prbs_Outsel_14,
      --  The length of the PRBS is 15.
      Prbs_Outsel_15)
     with Size => 4;
   for SSC0_PRBS_OUTSEL_Field use
     (Prbs_Outsel_0 => 0,
      Prbs_Outsel_1 => 1,
      Prbs_Outsel_2 => 2,
      Prbs_Outsel_3 => 3,
      Prbs_Outsel_4 => 4,
      Prbs_Outsel_5 => 5,
      Prbs_Outsel_6 => 6,
      Prbs_Outsel_7 => 7,
      Prbs_Outsel_8 => 8,
      Prbs_Outsel_9 => 9,
      Prbs_Outsel_10 => 10,
      Prbs_Outsel_11 => 11,
      Prbs_Outsel_12 => 12,
      Prbs_Outsel_13 => 13,
      Prbs_Outsel_14 => 14,
      Prbs_Outsel_15 => 15);

   --  TSI SSC Register 0
   type TSI_SSC0_Register is record
      --  SSC_PRESCALE_NUM
      SSC_PRESCALE_NUM    : SSC0_SSC_PRESCALE_NUM_Field :=
                             NRF_SVD.TSI.Ssc_Prescale_Num_0;
      --  unspecified
      Reserved_8_15       : HAL.UInt8 := 16#0#;
      --  BASE_NOCHARGE_NUM
      BASE_NOCHARGE_NUM   : SSC0_BASE_NOCHARGE_NUM_Field :=
                             NRF_SVD.TSI.Base_Nocharge_Num_2;
      --  CHARGE_NUM
      CHARGE_NUM          : SSC0_CHARGE_NUM_Field := NRF_SVD.TSI.Charge_Num_3;
      --  SSC_CONTROL_REVERSE
      SSC_CONTROL_REVERSE : SSC0_SSC_CONTROL_REVERSE_Field :=
                             NRF_SVD.TSI.Ssc_Control_Reverse_0;
      --  SSC_MODE
      SSC_MODE            : SSC0_SSC_MODE_Field := NRF_SVD.TSI.Ssc_Mode_0;
      --  unspecified
      Reserved_27_27      : HAL.Bit := 16#0#;
      --  PRBS_OUTSEL
      PRBS_OUTSEL         : SSC0_PRBS_OUTSEL_Field :=
                             NRF_SVD.TSI.Prbs_Outsel_6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_SSC0_Register use record
      SSC_PRESCALE_NUM    at 0 range 0 .. 7;
      Reserved_8_15       at 0 range 8 .. 15;
      BASE_NOCHARGE_NUM   at 0 range 16 .. 19;
      CHARGE_NUM          at 0 range 20 .. 23;
      SSC_CONTROL_REVERSE at 0 range 24 .. 24;
      SSC_MODE            at 0 range 25 .. 26;
      Reserved_27_27      at 0 range 27 .. 27;
      PRBS_OUTSEL         at 0 range 28 .. 31;
   end record;

   subtype TSI_SSC1_PRBS_SEED_LO_Field is HAL.UInt8;
   subtype TSI_SSC1_PRBS_SEED_HI_Field is HAL.UInt8;
   subtype TSI_SSC1_PRBS_WEIGHT_LO_Field is HAL.UInt8;
   subtype TSI_SSC1_PRBS_WEIGHT_HI_Field is HAL.UInt8;

   --  TSI SSC Register 0
   type TSI_SSC1_Register is record
      --  PRBS_SEED_LO
      PRBS_SEED_LO   : TSI_SSC1_PRBS_SEED_LO_Field := 16#40#;
      --  PRBS_SEED_HI
      PRBS_SEED_HI   : TSI_SSC1_PRBS_SEED_HI_Field := 16#0#;
      --  PRBS_WEIGHT_LO
      PRBS_WEIGHT_LO : TSI_SSC1_PRBS_WEIGHT_LO_Field := 16#60#;
      --  PRBS_WEIGHT_HI
      PRBS_WEIGHT_HI : TSI_SSC1_PRBS_WEIGHT_HI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_SSC1_Register use record
      PRBS_SEED_LO   at 0 range 0 .. 7;
      PRBS_SEED_HI   at 0 range 8 .. 15;
      PRBS_WEIGHT_LO at 0 range 16 .. 23;
      PRBS_WEIGHT_HI at 0 range 24 .. 31;
   end record;

   --  MOVE_REPEAT_NUM
   type SSC2_MOVE_REPEAT_NUM_Field is
     (
      --  The up_down counter will be updated for every sample-charge cycle.
      Move_Repeat_Num_0,
      --  The up_down counter will be updated for every 2 sample-charge cycles.
      Move_Repeat_Num_1,
      --  The up_down counter will be updated for every 3 sample-charge cycles.
      Move_Repeat_Num_2,
      --  The up_down counter will be updated for every 4 sample-charge cycles.
      Move_Repeat_Num_3,
      --  The up_down counter will be updated for every 5 sample-charge cycles.
      Move_Repeat_Num_4,
      --  The up_down counter will be updated for every 6 sample-charge cycles.
      Move_Repeat_Num_5,
      --  The up_down counter will be updated for every 7 sample-charge cycles.
      Move_Repeat_Num_6)
     with Size => 5;
   for SSC2_MOVE_REPEAT_NUM_Field use
     (Move_Repeat_Num_0 => 0,
      Move_Repeat_Num_1 => 1,
      Move_Repeat_Num_2 => 2,
      Move_Repeat_Num_3 => 3,
      Move_Repeat_Num_4 => 4,
      Move_Repeat_Num_5 => 5,
      Move_Repeat_Num_6 => 6);

   --  MOVE_STEPS_NUM
   type SSC2_MOVE_STEPS_NUM_Field is
     (
      --  The added value for up-down counter is 0.
      Move_Steps_Num_0,
      --  The added value for up-down counter is 1.
      Move_Steps_Num_1,
      --  The added value for up-down counter is 2.
      Move_Steps_Num_2,
      --  The added value for up-down counter is 3.
      Move_Steps_Num_3,
      --  The added value for up-down counter is 4.
      Move_Steps_Num_4,
      --  The added value for up-down counter is 5.
      Move_Steps_Num_5,
      --  The added value for up-down counter is 6.
      Move_Steps_Num_6,
      --  The added value for up-down counter is 7.
      Move_Steps_Num_7)
     with Size => 3;
   for SSC2_MOVE_STEPS_NUM_Field use
     (Move_Steps_Num_0 => 0,
      Move_Steps_Num_1 => 1,
      Move_Steps_Num_2 => 2,
      Move_Steps_Num_3 => 3,
      Move_Steps_Num_4 => 4,
      Move_Steps_Num_5 => 5,
      Move_Steps_Num_6 => 6,
      Move_Steps_Num_7 => 7);

   subtype TSI_SSC2_MOVE_NOCHARGE_MAX_Field is HAL.UInt6;

   --  MOVE_NOCHARGE_MIN
   type SSC2_MOVE_NOCHARGE_MIN_Field is
     (
      --  The SSC output bit 1's min period will be (1 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycle of system clock.
      Move_Nocharge_Min_0,
      --  The SSC output bit 1's min period will be (2 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_1,
      --  The SSC output bit 1's min period will be (3 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_2,
      --  The SSC output bit 1's min period will be (4 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_3,
      --  The SSC output bit 1's min period will be (5 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_4,
      --  The SSC output bit 1's min period will be (6 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_5,
      --  The SSC output bit 1's min period will be (7 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_6,
      --  The SSC output bit 1's min period will be (8 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_7,
      --  The SSC output bit 1's min period will be (9 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_8,
      --  The SSC output bit 1's min period will be (10 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_9,
      --  The SSC output bit 1's min period will be (11 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_10,
      --  The SSC output bit 1's min period will be (12 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_11,
      --  The SSC output bit 1's min period will be (13 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_12,
      --  The SSC output bit 1's min period will be (14 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_13,
      --  The SSC output bit 1's min period will be (15 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_14,
      --  The SSC output bit 1's min period will be (16 + TSI_SSC0[BASE_
      --  NOCHARGE_NUM]) clock cycles of system clock.
      Move_Nocharge_Min_15)
     with Size => 4;
   for SSC2_MOVE_NOCHARGE_MIN_Field use
     (Move_Nocharge_Min_0 => 0,
      Move_Nocharge_Min_1 => 1,
      Move_Nocharge_Min_2 => 2,
      Move_Nocharge_Min_3 => 3,
      Move_Nocharge_Min_4 => 4,
      Move_Nocharge_Min_5 => 5,
      Move_Nocharge_Min_6 => 6,
      Move_Nocharge_Min_7 => 7,
      Move_Nocharge_Min_8 => 8,
      Move_Nocharge_Min_9 => 9,
      Move_Nocharge_Min_10 => 10,
      Move_Nocharge_Min_11 => 11,
      Move_Nocharge_Min_12 => 12,
      Move_Nocharge_Min_13 => 13,
      Move_Nocharge_Min_14 => 14,
      Move_Nocharge_Min_15 => 15);

   --  TSI SSC Register 2
   type TSI_SSC2_Register is record
      --  MOVE_REPEAT_NUM
      MOVE_REPEAT_NUM   : SSC2_MOVE_REPEAT_NUM_Field :=
                           NRF_SVD.TSI.Move_Repeat_Num_1;
      --  unspecified
      Reserved_5_7      : HAL.UInt3 := 16#0#;
      --  MOVE_STEPS_NUM
      MOVE_STEPS_NUM    : SSC2_MOVE_STEPS_NUM_Field :=
                           NRF_SVD.TSI.Move_Steps_Num_1;
      --  unspecified
      Reserved_11_15    : HAL.UInt5 := 16#0#;
      --  MOVE_NOCHARGE_MAX
      MOVE_NOCHARGE_MAX : TSI_SSC2_MOVE_NOCHARGE_MAX_Field := 16#8#;
      --  unspecified
      Reserved_22_27    : HAL.UInt6 := 16#0#;
      --  MOVE_NOCHARGE_MIN
      MOVE_NOCHARGE_MIN : SSC2_MOVE_NOCHARGE_MIN_Field :=
                           NRF_SVD.TSI.Move_Nocharge_Min_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSI_SSC2_Register use record
      MOVE_REPEAT_NUM   at 0 range 0 .. 4;
      Reserved_5_7      at 0 range 5 .. 7;
      MOVE_STEPS_NUM    at 0 range 8 .. 10;
      Reserved_11_15    at 0 range 11 .. 15;
      MOVE_NOCHARGE_MAX at 0 range 16 .. 21;
      Reserved_22_27    at 0 range 22 .. 27;
      MOVE_NOCHARGE_MIN at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Touch sense input
   type TSI_Peripheral is record
      --  TSI General Control and Status Register
      GENCS : aliased TSI_GENCS_Register;
      --  TSI DATA Register
      DATA  : aliased TSI_DATA_Register;
      --  TSI Threshold Register
      TSHD  : aliased TSI_TSHD_Register;
      --  TSI MODE Register
      MODE  : aliased TSI_MODE_Register;
      --  TSI MUTUAL-CAP Register 0
      MUL0  : aliased TSI_MUL0_Register;
      --  TSI MUTUAL-CAP Register 1
      MUL1  : aliased TSI_MUL1_Register;
      --  TSI SINC filter Register
      SINC  : aliased TSI_SINC_Register;
      --  TSI SSC Register 0
      SSC0  : aliased TSI_SSC0_Register;
      --  TSI SSC Register 0
      SSC1  : aliased TSI_SSC1_Register;
      --  TSI SSC Register 2
      SSC2  : aliased TSI_SSC2_Register;
   end record
     with Volatile;

   for TSI_Peripheral use record
      GENCS at 16#0# range 0 .. 31;
      DATA  at 16#4# range 0 .. 31;
      TSHD  at 16#8# range 0 .. 31;
      MODE  at 16#C# range 0 .. 31;
      MUL0  at 16#10# range 0 .. 31;
      MUL1  at 16#14# range 0 .. 31;
      SINC  at 16#18# range 0 .. 31;
      SSC0  at 16#1C# range 0 .. 31;
      SSC1  at 16#20# range 0 .. 31;
      SSC2  at 16#24# range 0 .. 31;
   end record;

   --  Touch sense input
   TSI_Periph : aliased TSI_Peripheral
     with Import, Address => System'To_Address (16#40045000#);

end NRF_SVD.TSI;
