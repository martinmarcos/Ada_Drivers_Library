--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.I2S is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Specification Number
   type VERID_FEATURE_Field is
     (
      --  Standard feature set.
      Feature_0)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_0 => 0);

   subtype VERID_MINOR_Field is HAL.UInt8;
   subtype VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type VERID_Register is record
      --  Read-only. Feature Specification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   subtype PARAM_DATALINE_Field is HAL.UInt4;
   subtype PARAM_FIFO_Field is HAL.UInt4;
   subtype PARAM_FRAME_Field is HAL.UInt4;

   --  Parameter Register
   type PARAM_Register is record
      --  Read-only. Number of Datalines
      DATALINE       : PARAM_DATALINE_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. FIFO Size
      FIFO           : PARAM_FIFO_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Frame Size
      FRAME          : PARAM_FRAME_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARAM_Register use record
      DATALINE       at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FIFO           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FRAME          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  FIFO Request DMA Enable
   type TCSR_FRDE_Field is
     (
      --  Disables the DMA request.
      Frde_0,
      --  Enables the DMA request.
      Frde_1)
     with Size => 1;
   for TCSR_FRDE_Field use
     (Frde_0 => 0,
      Frde_1 => 1);

   --  FIFO Warning DMA Enable
   type TCSR_FWDE_Field is
     (
      --  Disables the DMA request.
      Fwde_0,
      --  Enables the DMA request.
      Fwde_1)
     with Size => 1;
   for TCSR_FWDE_Field use
     (Fwde_0 => 0,
      Fwde_1 => 1);

   --  FIFO Request Interrupt Enable
   type TCSR_FRIE_Field is
     (
      --  Disables the interrupt.
      Frie_0,
      --  Enables the interrupt.
      Frie_1)
     with Size => 1;
   for TCSR_FRIE_Field use
     (Frie_0 => 0,
      Frie_1 => 1);

   --  FIFO Warning Interrupt Enable
   type TCSR_FWIE_Field is
     (
      --  Disables the interrupt.
      Fwie_0,
      --  Enables the interrupt.
      Fwie_1)
     with Size => 1;
   for TCSR_FWIE_Field use
     (Fwie_0 => 0,
      Fwie_1 => 1);

   --  FIFO Error Interrupt Enable
   type TCSR_FEIE_Field is
     (
      --  Disables the interrupt.
      Feie_0,
      --  Enables the interrupt.
      Feie_1)
     with Size => 1;
   for TCSR_FEIE_Field use
     (Feie_0 => 0,
      Feie_1 => 1);

   --  Sync Error Interrupt Enable
   type TCSR_SEIE_Field is
     (
      --  Disables interrupt.
      Seie_0,
      --  Enables interrupt.
      Seie_1)
     with Size => 1;
   for TCSR_SEIE_Field use
     (Seie_0 => 0,
      Seie_1 => 1);

   --  Word Start Interrupt Enable
   type TCSR_WSIE_Field is
     (
      --  Disables interrupt.
      Wsie_0,
      --  Enables interrupt.
      Wsie_1)
     with Size => 1;
   for TCSR_WSIE_Field use
     (Wsie_0 => 0,
      Wsie_1 => 1);

   --  FIFO Request Flag
   type TCSR_FRF_Field is
     (
      --  Transmit FIFO watermark has not been reached.
      Frf_0,
      --  Transmit FIFO watermark has been reached.
      Frf_1)
     with Size => 1;
   for TCSR_FRF_Field use
     (Frf_0 => 0,
      Frf_1 => 1);

   --  FIFO Warning Flag
   type TCSR_FWF_Field is
     (
      --  No enabled transmit FIFO is empty.
      Fwf_0,
      --  Enabled transmit FIFO is empty.
      Fwf_1)
     with Size => 1;
   for TCSR_FWF_Field use
     (Fwf_0 => 0,
      Fwf_1 => 1);

   --  FIFO Error Flag
   type TCSR_FEF_Field is
     (
      --  Transmit underrun not detected.
      Fef_0,
      --  Transmit underrun detected.
      Fef_1)
     with Size => 1;
   for TCSR_FEF_Field use
     (Fef_0 => 0,
      Fef_1 => 1);

   --  Sync Error Flag
   type TCSR_SEF_Field is
     (
      --  Sync error not detected.
      Sef_0,
      --  Frame sync error detected.
      Sef_1)
     with Size => 1;
   for TCSR_SEF_Field use
     (Sef_0 => 0,
      Sef_1 => 1);

   --  Word Start Flag
   type TCSR_WSF_Field is
     (
      --  Start of word not detected.
      Wsf_0,
      --  Start of word detected.
      Wsf_1)
     with Size => 1;
   for TCSR_WSF_Field use
     (Wsf_0 => 0,
      Wsf_1 => 1);

   --  Software Reset
   type TCSR_SR_Field is
     (
      --  No effect.
      Sr_0,
      --  Software reset.
      Sr_1)
     with Size => 1;
   for TCSR_SR_Field use
     (Sr_0 => 0,
      Sr_1 => 1);

   --  FIFO Reset
   type TCSR_FR_Field is
     (
      --  No effect.
      Fr_0,
      --  FIFO reset.
      Fr_1)
     with Size => 1;
   for TCSR_FR_Field use
     (Fr_0 => 0,
      Fr_1 => 1);

   --  Bit Clock Enable
   type TCSR_BCE_Field is
     (
      --  Transmit bit clock is disabled.
      Bce_0,
      --  Transmit bit clock is enabled.
      Bce_1)
     with Size => 1;
   for TCSR_BCE_Field use
     (Bce_0 => 0,
      Bce_1 => 1);

   --  Debug Enable
   type TCSR_DBGE_Field is
     (
      --  Transmitter is disabled in Debug mode, after completing the current
      --  frame.
      Dbge_0,
      --  Transmitter is enabled in Debug mode.
      Dbge_1)
     with Size => 1;
   for TCSR_DBGE_Field use
     (Dbge_0 => 0,
      Dbge_1 => 1);

   --  Stop Enable
   type TCSR_STOPE_Field is
     (
      --  Transmitter disabled in Stop mode.
      Stope_0,
      --  Transmitter enabled in Stop mode.
      Stope_1)
     with Size => 1;
   for TCSR_STOPE_Field use
     (Stope_0 => 0,
      Stope_1 => 1);

   --  Transmitter Enable
   type TCSR_TE_Field is
     (
      --  Transmitter is disabled.
      Te_0,
      --  Transmitter is enabled, or transmitter has been disabled and has not
      --  yet reached end of frame.
      Te_1)
     with Size => 1;
   for TCSR_TE_Field use
     (Te_0 => 0,
      Te_1 => 1);

   --  SAI Transmit Control Register
   type TCSR_Register is record
      --  FIFO Request DMA Enable
      FRDE           : TCSR_FRDE_Field := NRF_SVD.I2S.Frde_0;
      --  FIFO Warning DMA Enable
      FWDE           : TCSR_FWDE_Field := NRF_SVD.I2S.Fwde_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  FIFO Request Interrupt Enable
      FRIE           : TCSR_FRIE_Field := NRF_SVD.I2S.Frie_0;
      --  FIFO Warning Interrupt Enable
      FWIE           : TCSR_FWIE_Field := NRF_SVD.I2S.Fwie_0;
      --  FIFO Error Interrupt Enable
      FEIE           : TCSR_FEIE_Field := NRF_SVD.I2S.Feie_0;
      --  Sync Error Interrupt Enable
      SEIE           : TCSR_SEIE_Field := NRF_SVD.I2S.Seie_0;
      --  Word Start Interrupt Enable
      WSIE           : TCSR_WSIE_Field := NRF_SVD.I2S.Wsie_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. FIFO Request Flag
      FRF            : TCSR_FRF_Field := NRF_SVD.I2S.Frf_0;
      --  Read-only. FIFO Warning Flag
      FWF            : TCSR_FWF_Field := NRF_SVD.I2S.Fwf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FIFO Error Flag
      FEF            : TCSR_FEF_Field := NRF_SVD.I2S.Fef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sync Error Flag
      SEF            : TCSR_SEF_Field := NRF_SVD.I2S.Sef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Word Start Flag
      WSF            : TCSR_WSF_Field := NRF_SVD.I2S.Wsf_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Software Reset
      SR             : TCSR_SR_Field := NRF_SVD.I2S.Sr_0;
      --  Write-only. FIFO Reset
      FR             : TCSR_FR_Field := NRF_SVD.I2S.Fr_0;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Bit Clock Enable
      BCE            : TCSR_BCE_Field := NRF_SVD.I2S.Bce_0;
      --  Debug Enable
      DBGE           : TCSR_DBGE_Field := NRF_SVD.I2S.Dbge_0;
      --  Stop Enable
      STOPE          : TCSR_STOPE_Field := NRF_SVD.I2S.Stope_0;
      --  Transmitter Enable
      TE             : TCSR_TE_Field := NRF_SVD.I2S.Te_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCSR_Register use record
      FRDE           at 0 range 0 .. 0;
      FWDE           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      FRIE           at 0 range 8 .. 8;
      FWIE           at 0 range 9 .. 9;
      FEIE           at 0 range 10 .. 10;
      SEIE           at 0 range 11 .. 11;
      WSIE           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      FRF            at 0 range 16 .. 16;
      FWF            at 0 range 17 .. 17;
      FEF            at 0 range 18 .. 18;
      SEF            at 0 range 19 .. 19;
      WSF            at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      SR             at 0 range 24 .. 24;
      FR             at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      BCE            at 0 range 28 .. 28;
      DBGE           at 0 range 29 .. 29;
      STOPE          at 0 range 30 .. 30;
      TE             at 0 range 31 .. 31;
   end record;

   subtype TCR1_TFW_Field is HAL.UInt5;

   --  SAI Transmit Configuration 1 Register
   type TCR1_Register is record
      --  Transmit FIFO Watermark
      TFW           : TCR1_TFW_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR1_Register use record
      TFW           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype TCR2_DIV_Field is HAL.UInt8;

   --  Bit Clock Direction
   type TCR2_BCD_Field is
     (
      --  Bit clock is generated externally in Slave mode.
      Bcd_0,
      --  Bit clock is generated internally in Master mode.
      Bcd_1)
     with Size => 1;
   for TCR2_BCD_Field use
     (Bcd_0 => 0,
      Bcd_1 => 1);

   --  Bit Clock Polarity
   type TCR2_BCP_Field is
     (
      --  Bit clock is active high with drive outputs on rising edge and sample
      --  inputs on falling edge.
      Bcp_0,
      --  Bit clock is active low with drive outputs on falling edge and sample
      --  inputs on rising edge.
      Bcp_1)
     with Size => 1;
   for TCR2_BCP_Field use
     (Bcp_0 => 0,
      Bcp_1 => 1);

   --  MCLK Select
   type TCR2_MSEL_Field is
     (
      --  Bus Clock selected.
      Msel_0,
      --  Master Clock (MCLK) 1 option selected.
      Msel_1,
      --  Master Clock (MCLK) 2 option selected.
      Msel_2,
      --  Master Clock (MCLK) 3 option selected.
      Msel_3)
     with Size => 2;
   for TCR2_MSEL_Field use
     (Msel_0 => 0,
      Msel_1 => 1,
      Msel_2 => 2,
      Msel_3 => 3);

   --  Bit Clock Input
   type TCR2_BCI_Field is
     (
      --  No effect.
      Bci_0,
      --  Internal logic is clocked as if bit clock was externally generated.
      Bci_1)
     with Size => 1;
   for TCR2_BCI_Field use
     (Bci_0 => 0,
      Bci_1 => 1);

   --  Bit Clock Swap
   type TCR2_BCS_Field is
     (
      --  Use the normal bit clock source.
      Bcs_0,
      --  Swap the bit clock source.
      Bcs_1)
     with Size => 1;
   for TCR2_BCS_Field use
     (Bcs_0 => 0,
      Bcs_1 => 1);

   --  Synchronous Mode
   type TCR2_SYNC_Field is
     (
      --  Asynchronous mode.
      Sync_0,
      --  Synchronous with receiver.
      Sync_1)
     with Size => 2;
   for TCR2_SYNC_Field use
     (Sync_0 => 0,
      Sync_1 => 1);

   --  SAI Transmit Configuration 2 Register
   type TCR2_Register is record
      --  Bit Clock Divide
      DIV           : TCR2_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_23 : HAL.UInt16 := 16#0#;
      --  Bit Clock Direction
      BCD           : TCR2_BCD_Field := NRF_SVD.I2S.Bcd_0;
      --  Bit Clock Polarity
      BCP           : TCR2_BCP_Field := NRF_SVD.I2S.Bcp_0;
      --  MCLK Select
      MSEL          : TCR2_MSEL_Field := NRF_SVD.I2S.Msel_0;
      --  Bit Clock Input
      BCI           : TCR2_BCI_Field := NRF_SVD.I2S.Bci_0;
      --  Bit Clock Swap
      BCS           : TCR2_BCS_Field := NRF_SVD.I2S.Bcs_0;
      --  Synchronous Mode
      SYNC          : TCR2_SYNC_Field := NRF_SVD.I2S.Sync_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR2_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_23 at 0 range 8 .. 23;
      BCD           at 0 range 24 .. 24;
      BCP           at 0 range 25 .. 25;
      MSEL          at 0 range 26 .. 27;
      BCI           at 0 range 28 .. 28;
      BCS           at 0 range 29 .. 29;
      SYNC          at 0 range 30 .. 31;
   end record;

   subtype TCR3_WDFL_Field is HAL.UInt5;
   subtype TCR3_TCE_Field is HAL.UInt4;
   subtype TCR3_CFR_Field is HAL.UInt4;

   --  SAI Transmit Configuration 3 Register
   type TCR3_Register is record
      --  Word Flag Configuration
      WDFL           : TCR3_WDFL_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Transmit Channel Enable
      TCE            : TCR3_TCE_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Channel FIFO Reset
      CFR            : TCR3_CFR_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR3_Register use record
      WDFL           at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      TCE            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CFR            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Frame Sync Direction
   type TCR4_FSD_Field is
     (
      --  Frame sync is generated externally in Slave mode.
      Fsd_0,
      --  Frame sync is generated internally in Master mode.
      Fsd_1)
     with Size => 1;
   for TCR4_FSD_Field use
     (Fsd_0 => 0,
      Fsd_1 => 1);

   --  Frame Sync Polarity
   type TCR4_FSP_Field is
     (
      --  Frame sync is active high.
      Fsp_0,
      --  Frame sync is active low.
      Fsp_1)
     with Size => 1;
   for TCR4_FSP_Field use
     (Fsp_0 => 0,
      Fsp_1 => 1);

   --  On Demand Mode
   type TCR4_ONDEM_Field is
     (
      --  Internal frame sync is generated continuously.
      Ondem_0,
      --  Internal frame sync is generated when the FIFO warning flag is clear.
      Ondem_1)
     with Size => 1;
   for TCR4_ONDEM_Field use
     (Ondem_0 => 0,
      Ondem_1 => 1);

   --  Frame Sync Early
   type TCR4_FSE_Field is
     (
      --  Frame sync asserts with the first bit of the frame.
      Fse_0,
      --  Frame sync asserts one bit before the first bit of the frame.
      Fse_1)
     with Size => 1;
   for TCR4_FSE_Field use
     (Fse_0 => 0,
      Fse_1 => 1);

   --  MSB First
   type TCR4_MF_Field is
     (
      --  LSB is transmitted first.
      Mf_0,
      --  MSB is transmitted first.
      Mf_1)
     with Size => 1;
   for TCR4_MF_Field use
     (Mf_0 => 0,
      Mf_1 => 1);

   --  Channel Mode
   type TCR4_CHMOD_Field is
     (
      --  TDM mode, transmit data pins are tri-stated when slots are masked or
      --  channels are disabled.
      Chmod_0,
      --  Output mode, transmit data pins are never tri-stated and will output
      --  zero when slots are masked or channels are disabled.
      Chmod_1)
     with Size => 1;
   for TCR4_CHMOD_Field use
     (Chmod_0 => 0,
      Chmod_1 => 1);

   subtype TCR4_SYWD_Field is HAL.UInt5;
   subtype TCR4_FRSZ_Field is HAL.UInt5;

   --  FIFO Packing Mode
   type TCR4_FPACK_Field is
     (
      --  FIFO packing is disabled
      Fpack_0,
      --  8-bit FIFO packing is enabled
      Fpack_2,
      --  16-bit FIFO packing is enabled
      Fpack_3)
     with Size => 2;
   for TCR4_FPACK_Field use
     (Fpack_0 => 0,
      Fpack_2 => 2,
      Fpack_3 => 3);

   --  FIFO Combine Mode
   type TCR4_FCOMB_Field is
     (
      --  FIFO combine mode disabled.
      Fcomb_0,
      --  FIFO combine mode enabled on FIFO reads (from transmit shift
      --  registers).
      Fcomb_1,
      --  FIFO combine mode enabled on FIFO writes (by software).
      Fcomb_2,
      --  FIFO combine mode enabled on FIFO reads (from transmit shift
      --  registers) and writes (by software).
      Fcomb_3)
     with Size => 2;
   for TCR4_FCOMB_Field use
     (Fcomb_0 => 0,
      Fcomb_1 => 1,
      Fcomb_2 => 2,
      Fcomb_3 => 3);

   --  FIFO Continue on Error
   type TCR4_FCONT_Field is
     (
      --  On FIFO error, the SAI will continue from the start of the next frame
      --  after the FIFO error flag has been cleared.
      Fcont_0,
      --  On FIFO error, the SAI will continue from the same word that caused
      --  the FIFO error to set after the FIFO warning flag has been cleared.
      Fcont_1)
     with Size => 1;
   for TCR4_FCONT_Field use
     (Fcont_0 => 0,
      Fcont_1 => 1);

   --  SAI Transmit Configuration 4 Register
   type TCR4_Register is record
      --  Frame Sync Direction
      FSD            : TCR4_FSD_Field := NRF_SVD.I2S.Fsd_0;
      --  Frame Sync Polarity
      FSP            : TCR4_FSP_Field := NRF_SVD.I2S.Fsp_0;
      --  On Demand Mode
      ONDEM          : TCR4_ONDEM_Field := NRF_SVD.I2S.Ondem_0;
      --  Frame Sync Early
      FSE            : TCR4_FSE_Field := NRF_SVD.I2S.Fse_0;
      --  MSB First
      MF             : TCR4_MF_Field := NRF_SVD.I2S.Mf_0;
      --  Channel Mode
      CHMOD          : TCR4_CHMOD_Field := NRF_SVD.I2S.Chmod_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Sync Width
      SYWD           : TCR4_SYWD_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Frame size
      FRSZ           : TCR4_FRSZ_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  FIFO Packing Mode
      FPACK          : TCR4_FPACK_Field := NRF_SVD.I2S.Fpack_0;
      --  FIFO Combine Mode
      FCOMB          : TCR4_FCOMB_Field := NRF_SVD.I2S.Fcomb_0;
      --  FIFO Continue on Error
      FCONT          : TCR4_FCONT_Field := NRF_SVD.I2S.Fcont_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR4_Register use record
      FSD            at 0 range 0 .. 0;
      FSP            at 0 range 1 .. 1;
      ONDEM          at 0 range 2 .. 2;
      FSE            at 0 range 3 .. 3;
      MF             at 0 range 4 .. 4;
      CHMOD          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SYWD           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      FRSZ           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FPACK          at 0 range 24 .. 25;
      FCOMB          at 0 range 26 .. 27;
      FCONT          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TCR5_FBT_Field is HAL.UInt5;
   subtype TCR5_W0W_Field is HAL.UInt5;
   subtype TCR5_WNW_Field is HAL.UInt5;

   --  SAI Transmit Configuration 5 Register
   type TCR5_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  First Bit Shifted
      FBT            : TCR5_FBT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Word 0 Width
      W0W            : TCR5_W0W_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Word N Width
      WNW            : TCR5_WNW_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR5_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      FBT            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      W0W            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      WNW            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  SAI Transmit Data Register

   --  SAI Transmit Data Register
   type TDR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   subtype TFR_RFP_Field is HAL.UInt6;
   subtype TFR_WFP_Field is HAL.UInt6;

   --  Write Channel Pointer
   type TFR_WCP_Field is
     (
      --  No effect.
      Wcp_0,
      --  FIFO combine is enabled for FIFO writes and this FIFO will be written
      --  on the next FIFO write.
      Wcp_1)
     with Size => 1;
   for TFR_WCP_Field use
     (Wcp_0 => 0,
      Wcp_1 => 1);

   --  SAI Transmit FIFO Register
   type TFR_Register is record
      --  Read-only. Read FIFO Pointer
      RFP            : TFR_RFP_Field;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Write FIFO Pointer
      WFP            : TFR_WFP_Field;
      --  unspecified
      Reserved_22_30 : HAL.UInt9;
      --  Read-only. Write Channel Pointer
      WCP            : TFR_WCP_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFR_Register use record
      RFP            at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      WFP            at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      WCP            at 0 range 31 .. 31;
   end record;

   --  SAI Transmit FIFO Register
   type TFR_Registers is array (0 .. 3) of TFR_Register
     with Volatile;

   --  FIFO Request DMA Enable
   type RCSR_FRDE_Field is
     (
      --  Disables the DMA request.
      Frde_0,
      --  Enables the DMA request.
      Frde_1)
     with Size => 1;
   for RCSR_FRDE_Field use
     (Frde_0 => 0,
      Frde_1 => 1);

   --  FIFO Warning DMA Enable
   type RCSR_FWDE_Field is
     (
      --  Disables the DMA request.
      Fwde_0,
      --  Enables the DMA request.
      Fwde_1)
     with Size => 1;
   for RCSR_FWDE_Field use
     (Fwde_0 => 0,
      Fwde_1 => 1);

   --  FIFO Request Interrupt Enable
   type RCSR_FRIE_Field is
     (
      --  Disables the interrupt.
      Frie_0,
      --  Enables the interrupt.
      Frie_1)
     with Size => 1;
   for RCSR_FRIE_Field use
     (Frie_0 => 0,
      Frie_1 => 1);

   --  FIFO Warning Interrupt Enable
   type RCSR_FWIE_Field is
     (
      --  Disables the interrupt.
      Fwie_0,
      --  Enables the interrupt.
      Fwie_1)
     with Size => 1;
   for RCSR_FWIE_Field use
     (Fwie_0 => 0,
      Fwie_1 => 1);

   --  FIFO Error Interrupt Enable
   type RCSR_FEIE_Field is
     (
      --  Disables the interrupt.
      Feie_0,
      --  Enables the interrupt.
      Feie_1)
     with Size => 1;
   for RCSR_FEIE_Field use
     (Feie_0 => 0,
      Feie_1 => 1);

   --  Sync Error Interrupt Enable
   type RCSR_SEIE_Field is
     (
      --  Disables interrupt.
      Seie_0,
      --  Enables interrupt.
      Seie_1)
     with Size => 1;
   for RCSR_SEIE_Field use
     (Seie_0 => 0,
      Seie_1 => 1);

   --  Word Start Interrupt Enable
   type RCSR_WSIE_Field is
     (
      --  Disables interrupt.
      Wsie_0,
      --  Enables interrupt.
      Wsie_1)
     with Size => 1;
   for RCSR_WSIE_Field use
     (Wsie_0 => 0,
      Wsie_1 => 1);

   --  FIFO Request Flag
   type RCSR_FRF_Field is
     (
      --  Receive FIFO watermark not reached.
      Frf_0,
      --  Receive FIFO watermark has been reached.
      Frf_1)
     with Size => 1;
   for RCSR_FRF_Field use
     (Frf_0 => 0,
      Frf_1 => 1);

   --  FIFO Warning Flag
   type RCSR_FWF_Field is
     (
      --  No enabled receive FIFO is full.
      Fwf_0,
      --  Enabled receive FIFO is full.
      Fwf_1)
     with Size => 1;
   for RCSR_FWF_Field use
     (Fwf_0 => 0,
      Fwf_1 => 1);

   --  FIFO Error Flag
   type RCSR_FEF_Field is
     (
      --  Receive overflow not detected.
      Fef_0,
      --  Receive overflow detected.
      Fef_1)
     with Size => 1;
   for RCSR_FEF_Field use
     (Fef_0 => 0,
      Fef_1 => 1);

   --  Sync Error Flag
   type RCSR_SEF_Field is
     (
      --  Sync error not detected.
      Sef_0,
      --  Frame sync error detected.
      Sef_1)
     with Size => 1;
   for RCSR_SEF_Field use
     (Sef_0 => 0,
      Sef_1 => 1);

   --  Word Start Flag
   type RCSR_WSF_Field is
     (
      --  Start of word not detected.
      Wsf_0,
      --  Start of word detected.
      Wsf_1)
     with Size => 1;
   for RCSR_WSF_Field use
     (Wsf_0 => 0,
      Wsf_1 => 1);

   --  Software Reset
   type RCSR_SR_Field is
     (
      --  No effect.
      Sr_0,
      --  Software reset.
      Sr_1)
     with Size => 1;
   for RCSR_SR_Field use
     (Sr_0 => 0,
      Sr_1 => 1);

   --  FIFO Reset
   type RCSR_FR_Field is
     (
      --  No effect.
      Fr_0,
      --  FIFO reset.
      Fr_1)
     with Size => 1;
   for RCSR_FR_Field use
     (Fr_0 => 0,
      Fr_1 => 1);

   --  Bit Clock Enable
   type RCSR_BCE_Field is
     (
      --  Receive bit clock is disabled.
      Bce_0,
      --  Receive bit clock is enabled.
      Bce_1)
     with Size => 1;
   for RCSR_BCE_Field use
     (Bce_0 => 0,
      Bce_1 => 1);

   --  Debug Enable
   type RCSR_DBGE_Field is
     (
      --  Receiver is disabled in Debug mode, after completing the current
      --  frame.
      Dbge_0,
      --  Receiver is enabled in Debug mode.
      Dbge_1)
     with Size => 1;
   for RCSR_DBGE_Field use
     (Dbge_0 => 0,
      Dbge_1 => 1);

   --  Stop Enable
   type RCSR_STOPE_Field is
     (
      --  Receiver disabled in Stop mode.
      Stope_0,
      --  Receiver enabled in Stop mode.
      Stope_1)
     with Size => 1;
   for RCSR_STOPE_Field use
     (Stope_0 => 0,
      Stope_1 => 1);

   --  Receiver Enable
   type RCSR_RE_Field is
     (
      --  Receiver is disabled.
      Re_0,
      --  Receiver is enabled, or receiver has been disabled and has not yet
      --  reached end of frame.
      Re_1)
     with Size => 1;
   for RCSR_RE_Field use
     (Re_0 => 0,
      Re_1 => 1);

   --  SAI Receive Control Register
   type RCSR_Register is record
      --  FIFO Request DMA Enable
      FRDE           : RCSR_FRDE_Field := NRF_SVD.I2S.Frde_0;
      --  FIFO Warning DMA Enable
      FWDE           : RCSR_FWDE_Field := NRF_SVD.I2S.Fwde_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  FIFO Request Interrupt Enable
      FRIE           : RCSR_FRIE_Field := NRF_SVD.I2S.Frie_0;
      --  FIFO Warning Interrupt Enable
      FWIE           : RCSR_FWIE_Field := NRF_SVD.I2S.Fwie_0;
      --  FIFO Error Interrupt Enable
      FEIE           : RCSR_FEIE_Field := NRF_SVD.I2S.Feie_0;
      --  Sync Error Interrupt Enable
      SEIE           : RCSR_SEIE_Field := NRF_SVD.I2S.Seie_0;
      --  Word Start Interrupt Enable
      WSIE           : RCSR_WSIE_Field := NRF_SVD.I2S.Wsie_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. FIFO Request Flag
      FRF            : RCSR_FRF_Field := NRF_SVD.I2S.Frf_0;
      --  Read-only. FIFO Warning Flag
      FWF            : RCSR_FWF_Field := NRF_SVD.I2S.Fwf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FIFO Error Flag
      FEF            : RCSR_FEF_Field := NRF_SVD.I2S.Fef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sync Error Flag
      SEF            : RCSR_SEF_Field := NRF_SVD.I2S.Sef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Word Start Flag
      WSF            : RCSR_WSF_Field := NRF_SVD.I2S.Wsf_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Software Reset
      SR             : RCSR_SR_Field := NRF_SVD.I2S.Sr_0;
      --  Write-only. FIFO Reset
      FR             : RCSR_FR_Field := NRF_SVD.I2S.Fr_0;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Bit Clock Enable
      BCE            : RCSR_BCE_Field := NRF_SVD.I2S.Bce_0;
      --  Debug Enable
      DBGE           : RCSR_DBGE_Field := NRF_SVD.I2S.Dbge_0;
      --  Stop Enable
      STOPE          : RCSR_STOPE_Field := NRF_SVD.I2S.Stope_0;
      --  Receiver Enable
      RE             : RCSR_RE_Field := NRF_SVD.I2S.Re_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCSR_Register use record
      FRDE           at 0 range 0 .. 0;
      FWDE           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      FRIE           at 0 range 8 .. 8;
      FWIE           at 0 range 9 .. 9;
      FEIE           at 0 range 10 .. 10;
      SEIE           at 0 range 11 .. 11;
      WSIE           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      FRF            at 0 range 16 .. 16;
      FWF            at 0 range 17 .. 17;
      FEF            at 0 range 18 .. 18;
      SEF            at 0 range 19 .. 19;
      WSF            at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      SR             at 0 range 24 .. 24;
      FR             at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      BCE            at 0 range 28 .. 28;
      DBGE           at 0 range 29 .. 29;
      STOPE          at 0 range 30 .. 30;
      RE             at 0 range 31 .. 31;
   end record;

   subtype RCR1_RFW_Field is HAL.UInt5;

   --  SAI Receive Configuration 1 Register
   type RCR1_Register is record
      --  Receive FIFO Watermark
      RFW           : RCR1_RFW_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR1_Register use record
      RFW           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype RCR2_DIV_Field is HAL.UInt8;

   --  Bit Clock Direction
   type RCR2_BCD_Field is
     (
      --  Bit clock is generated externally in Slave mode.
      Bcd_0,
      --  Bit clock is generated internally in Master mode.
      Bcd_1)
     with Size => 1;
   for RCR2_BCD_Field use
     (Bcd_0 => 0,
      Bcd_1 => 1);

   --  Bit Clock Polarity
   type RCR2_BCP_Field is
     (
      --  Bit Clock is active high with drive outputs on rising edge and sample
      --  inputs on falling edge.
      Bcp_0,
      --  Bit Clock is active low with drive outputs on falling edge and sample
      --  inputs on rising edge.
      Bcp_1)
     with Size => 1;
   for RCR2_BCP_Field use
     (Bcp_0 => 0,
      Bcp_1 => 1);

   --  MCLK Select
   type RCR2_MSEL_Field is
     (
      --  Bus Clock selected.
      Msel_0,
      --  Master Clock (MCLK) 1 option selected.
      Msel_1,
      --  Master Clock (MCLK) 2 option selected.
      Msel_2,
      --  Master Clock (MCLK) 3 option selected.
      Msel_3)
     with Size => 2;
   for RCR2_MSEL_Field use
     (Msel_0 => 0,
      Msel_1 => 1,
      Msel_2 => 2,
      Msel_3 => 3);

   --  Bit Clock Input
   type RCR2_BCI_Field is
     (
      --  No effect.
      Bci_0,
      --  Internal logic is clocked as if bit clock was externally generated.
      Bci_1)
     with Size => 1;
   for RCR2_BCI_Field use
     (Bci_0 => 0,
      Bci_1 => 1);

   --  Bit Clock Swap
   type RCR2_BCS_Field is
     (
      --  Use the normal bit clock source.
      Bcs_0,
      --  Swap the bit clock source.
      Bcs_1)
     with Size => 1;
   for RCR2_BCS_Field use
     (Bcs_0 => 0,
      Bcs_1 => 1);

   --  Synchronous Mode
   type RCR2_SYNC_Field is
     (
      --  Asynchronous mode.
      Sync_0,
      --  Synchronous with transmitter.
      Sync_1)
     with Size => 2;
   for RCR2_SYNC_Field use
     (Sync_0 => 0,
      Sync_1 => 1);

   --  SAI Receive Configuration 2 Register
   type RCR2_Register is record
      --  Bit Clock Divide
      DIV           : RCR2_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_23 : HAL.UInt16 := 16#0#;
      --  Bit Clock Direction
      BCD           : RCR2_BCD_Field := NRF_SVD.I2S.Bcd_0;
      --  Bit Clock Polarity
      BCP           : RCR2_BCP_Field := NRF_SVD.I2S.Bcp_0;
      --  MCLK Select
      MSEL          : RCR2_MSEL_Field := NRF_SVD.I2S.Msel_0;
      --  Bit Clock Input
      BCI           : RCR2_BCI_Field := NRF_SVD.I2S.Bci_0;
      --  Bit Clock Swap
      BCS           : RCR2_BCS_Field := NRF_SVD.I2S.Bcs_0;
      --  Synchronous Mode
      SYNC          : RCR2_SYNC_Field := NRF_SVD.I2S.Sync_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR2_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_23 at 0 range 8 .. 23;
      BCD           at 0 range 24 .. 24;
      BCP           at 0 range 25 .. 25;
      MSEL          at 0 range 26 .. 27;
      BCI           at 0 range 28 .. 28;
      BCS           at 0 range 29 .. 29;
      SYNC          at 0 range 30 .. 31;
   end record;

   subtype RCR3_WDFL_Field is HAL.UInt5;
   subtype RCR3_RCE_Field is HAL.UInt4;
   subtype RCR3_CFR_Field is HAL.UInt4;

   --  SAI Receive Configuration 3 Register
   type RCR3_Register is record
      --  Word Flag Configuration
      WDFL           : RCR3_WDFL_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Receive Channel Enable
      RCE            : RCR3_RCE_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Channel FIFO Reset
      CFR            : RCR3_CFR_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR3_Register use record
      WDFL           at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      RCE            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CFR            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Frame Sync Direction
   type RCR4_FSD_Field is
     (
      --  Frame Sync is generated externally in Slave mode.
      Fsd_0,
      --  Frame Sync is generated internally in Master mode.
      Fsd_1)
     with Size => 1;
   for RCR4_FSD_Field use
     (Fsd_0 => 0,
      Fsd_1 => 1);

   --  Frame Sync Polarity
   type RCR4_FSP_Field is
     (
      --  Frame sync is active high.
      Fsp_0,
      --  Frame sync is active low.
      Fsp_1)
     with Size => 1;
   for RCR4_FSP_Field use
     (Fsp_0 => 0,
      Fsp_1 => 1);

   --  On Demand Mode
   type RCR4_ONDEM_Field is
     (
      --  Internal frame sync is generated continuously.
      Ondem_0,
      --  Internal frame sync is generated when the FIFO warning flag is clear.
      Ondem_1)
     with Size => 1;
   for RCR4_ONDEM_Field use
     (Ondem_0 => 0,
      Ondem_1 => 1);

   --  Frame Sync Early
   type RCR4_FSE_Field is
     (
      --  Frame sync asserts with the first bit of the frame.
      Fse_0,
      --  Frame sync asserts one bit before the first bit of the frame.
      Fse_1)
     with Size => 1;
   for RCR4_FSE_Field use
     (Fse_0 => 0,
      Fse_1 => 1);

   --  MSB First
   type RCR4_MF_Field is
     (
      --  LSB is received first.
      Mf_0,
      --  MSB is received first.
      Mf_1)
     with Size => 1;
   for RCR4_MF_Field use
     (Mf_0 => 0,
      Mf_1 => 1);

   subtype RCR4_SYWD_Field is HAL.UInt5;
   subtype RCR4_FRSZ_Field is HAL.UInt5;

   --  FIFO Packing Mode
   type RCR4_FPACK_Field is
     (
      --  FIFO packing is disabled
      Fpack_0,
      --  8-bit FIFO packing is enabled
      Fpack_2,
      --  16-bit FIFO packing is enabled
      Fpack_3)
     with Size => 2;
   for RCR4_FPACK_Field use
     (Fpack_0 => 0,
      Fpack_2 => 2,
      Fpack_3 => 3);

   --  FIFO Combine Mode
   type RCR4_FCOMB_Field is
     (
      --  FIFO combine mode disabled.
      Fcomb_0,
      --  FIFO combine mode enabled on FIFO writes (from receive shift
      --  registers).
      Fcomb_1,
      --  FIFO combine mode enabled on FIFO reads (by software).
      Fcomb_2,
      --  FIFO combine mode enabled on FIFO writes (from receive shift
      --  registers) and reads (by software).
      Fcomb_3)
     with Size => 2;
   for RCR4_FCOMB_Field use
     (Fcomb_0 => 0,
      Fcomb_1 => 1,
      Fcomb_2 => 2,
      Fcomb_3 => 3);

   --  FIFO Continue on Error
   type RCR4_FCONT_Field is
     (
      --  On FIFO error, the SAI will continue from the start of the next frame
      --  after the FIFO error flag has been cleared.
      Fcont_0,
      --  On FIFO error, the SAI will continue from the same word that caused
      --  the FIFO error to set after the FIFO warning flag has been cleared.
      Fcont_1)
     with Size => 1;
   for RCR4_FCONT_Field use
     (Fcont_0 => 0,
      Fcont_1 => 1);

   --  SAI Receive Configuration 4 Register
   type RCR4_Register is record
      --  Frame Sync Direction
      FSD            : RCR4_FSD_Field := NRF_SVD.I2S.Fsd_0;
      --  Frame Sync Polarity
      FSP            : RCR4_FSP_Field := NRF_SVD.I2S.Fsp_0;
      --  On Demand Mode
      ONDEM          : RCR4_ONDEM_Field := NRF_SVD.I2S.Ondem_0;
      --  Frame Sync Early
      FSE            : RCR4_FSE_Field := NRF_SVD.I2S.Fse_0;
      --  MSB First
      MF             : RCR4_MF_Field := NRF_SVD.I2S.Mf_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Sync Width
      SYWD           : RCR4_SYWD_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Frame Size
      FRSZ           : RCR4_FRSZ_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  FIFO Packing Mode
      FPACK          : RCR4_FPACK_Field := NRF_SVD.I2S.Fpack_0;
      --  FIFO Combine Mode
      FCOMB          : RCR4_FCOMB_Field := NRF_SVD.I2S.Fcomb_0;
      --  FIFO Continue on Error
      FCONT          : RCR4_FCONT_Field := NRF_SVD.I2S.Fcont_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR4_Register use record
      FSD            at 0 range 0 .. 0;
      FSP            at 0 range 1 .. 1;
      ONDEM          at 0 range 2 .. 2;
      FSE            at 0 range 3 .. 3;
      MF             at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SYWD           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      FRSZ           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FPACK          at 0 range 24 .. 25;
      FCOMB          at 0 range 26 .. 27;
      FCONT          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCR5_FBT_Field is HAL.UInt5;
   subtype RCR5_W0W_Field is HAL.UInt5;
   subtype RCR5_WNW_Field is HAL.UInt5;

   --  SAI Receive Configuration 5 Register
   type RCR5_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  First Bit Shifted
      FBT            : RCR5_FBT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Word 0 Width
      W0W            : RCR5_W0W_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Word N Width
      WNW            : RCR5_WNW_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR5_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      FBT            at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      W0W            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      WNW            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  SAI Receive Data Register

   --  SAI Receive Data Register
   type RDR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   subtype RFR_RFP_Field is HAL.UInt6;

   --  Receive Channel Pointer
   type RFR_RCP_Field is
     (
      --  No effect.
      Rcp_0,
      --  FIFO combine is enabled for FIFO reads and this FIFO will be read on
      --  the next FIFO read.
      Rcp_1)
     with Size => 1;
   for RFR_RCP_Field use
     (Rcp_0 => 0,
      Rcp_1 => 1);

   subtype RFR_WFP_Field is HAL.UInt6;

   --  SAI Receive FIFO Register
   type RFR_Register is record
      --  Read-only. Read FIFO Pointer
      RFP            : RFR_RFP_Field;
      --  unspecified
      Reserved_6_14  : HAL.UInt9;
      --  Read-only. Receive Channel Pointer
      RCP            : RFR_RCP_Field;
      --  Read-only. Write FIFO Pointer
      WFP            : RFR_WFP_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RFR_Register use record
      RFP            at 0 range 0 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      RCP            at 0 range 15 .. 15;
      WFP            at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  SAI Receive FIFO Register
   type RFR_Registers is array (0 .. 3) of RFR_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  I2S
   type I2S_Peripheral is record
      --  Version ID Register
      VERID : aliased VERID_Register;
      --  Parameter Register
      PARAM : aliased PARAM_Register;
      --  SAI Transmit Control Register
      TCSR  : aliased TCSR_Register;
      --  SAI Transmit Configuration 1 Register
      TCR1  : aliased TCR1_Register;
      --  SAI Transmit Configuration 2 Register
      TCR2  : aliased TCR2_Register;
      --  SAI Transmit Configuration 3 Register
      TCR3  : aliased TCR3_Register;
      --  SAI Transmit Configuration 4 Register
      TCR4  : aliased TCR4_Register;
      --  SAI Transmit Configuration 5 Register
      TCR5  : aliased TCR5_Register;
      --  SAI Transmit Data Register
      TDR   : aliased TDR_Registers;
      --  SAI Transmit FIFO Register
      TFR   : aliased TFR_Registers;
      --  SAI Transmit Mask Register
      TMR   : aliased HAL.UInt32;
      --  SAI Receive Control Register
      RCSR  : aliased RCSR_Register;
      --  SAI Receive Configuration 1 Register
      RCR1  : aliased RCR1_Register;
      --  SAI Receive Configuration 2 Register
      RCR2  : aliased RCR2_Register;
      --  SAI Receive Configuration 3 Register
      RCR3  : aliased RCR3_Register;
      --  SAI Receive Configuration 4 Register
      RCR4  : aliased RCR4_Register;
      --  SAI Receive Configuration 5 Register
      RCR5  : aliased RCR5_Register;
      --  SAI Receive Data Register
      RDR   : aliased RDR_Registers;
      --  SAI Receive FIFO Register
      RFR   : aliased RFR_Registers;
      --  SAI Receive Mask Register
      RMR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for I2S_Peripheral use record
      VERID at 16#0# range 0 .. 31;
      PARAM at 16#4# range 0 .. 31;
      TCSR  at 16#8# range 0 .. 31;
      TCR1  at 16#C# range 0 .. 31;
      TCR2  at 16#10# range 0 .. 31;
      TCR3  at 16#14# range 0 .. 31;
      TCR4  at 16#18# range 0 .. 31;
      TCR5  at 16#1C# range 0 .. 31;
      TDR   at 16#20# range 0 .. 127;
      TFR   at 16#40# range 0 .. 127;
      TMR   at 16#60# range 0 .. 31;
      RCSR  at 16#88# range 0 .. 31;
      RCR1  at 16#8C# range 0 .. 31;
      RCR2  at 16#90# range 0 .. 31;
      RCR3  at 16#94# range 0 .. 31;
      RCR4  at 16#98# range 0 .. 31;
      RCR5  at 16#9C# range 0 .. 31;
      RDR   at 16#A0# range 0 .. 127;
      RFR   at 16#C0# range 0 .. 127;
      RMR   at 16#E0# range 0 .. 31;
   end record;

   --  I2S
   SAI1_Periph : aliased I2S_Peripheral
     with Import, Address => System'To_Address (16#40384000#);

   --  I2S
   SAI2_Periph : aliased I2S_Peripheral
     with Import, Address => System'To_Address (16#40388000#);

   --  I2S
   SAI3_Periph : aliased I2S_Peripheral
     with Import, Address => System'To_Address (16#4038C000#);

end NRF_SVD.I2S;
