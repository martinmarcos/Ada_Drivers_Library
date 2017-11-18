--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK82F25615.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  QuadSPI
package NRF_SVD.QuadSPI0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Software reset for Serial Flash domain
   type MCR_SWRSTSD_Field is
     (
      --  No action
      MCR_SWRSTSD_Field_0,
      --  Serial Flash domain flops are reset. Does not reset configuration
      --  registers. It is advisable to reset both the serial flash domain and
      --  AHB domain at the same time. Resetting only one domain might lead to
      --  side effects. The software resets need the clock to be running to
      --  propagate to the design. The MCR[MDIS] should therefore be set to 0
      --  when the software reset bits are asserted. Also, before they can be
      --  deasserted again (by setting MCR[SWRSTSD] to 0), it is recommended to
      --  set the MCR[MDIS] bit to 1. Once the software resets have been
      --  deasserted, the normal operation can be started by setting the
      --  MCR[MDIS] bit to 0.
      MCR_SWRSTSD_Field_1)
     with Size => 1;
   for MCR_SWRSTSD_Field use
     (MCR_SWRSTSD_Field_0 => 0,
      MCR_SWRSTSD_Field_1 => 1);

   --  Software reset for AHB domain
   type MCR_SWRSTHD_Field is
     (
      --  No action
      MCR_SWRSTHD_Field_0,
      --  AHB domain flops are reset. Does not reset configuration registers.
      --  It is advisable to reset both the serial flash domain and AHB domain
      --  at the same time. Resetting only one domain might lead to side
      --  effects. The software resets need the clock to be running to
      --  propagate to the design. The MCR[MDIS] should therefore be set to 0
      --  when the software reset bits are asserted. Also, before they can be
      --  deasserted again (by setting MCR[SWRSTHD] to 0), it is recommended to
      --  set the MCR[MDIS] bit to 1. Once the software resets have been
      --  deasserted, the normal operation can be started by setting the
      --  MCR[MDIS] bit to 0.
      MCR_SWRSTHD_Field_1)
     with Size => 1;
   for MCR_SWRSTHD_Field use
     (MCR_SWRSTHD_Field_0 => 0,
      MCR_SWRSTHD_Field_1 => 1);

   subtype QuadSPI0_MCR_END_CFG_Field is HAL.UInt2;

   --  DQS Latency Enable: This field is valid when latency is included in
   --  between read access from FLash in case when QSPI_MCR[DQS_EN] is 1
   type MCR_DQS_LAT_EN_Field is
     (
      --  DQS Latency disabled
      MCR_DQS_LAT_EN_Field_0,
      --  DQS feature with latency included enabled
      MCR_DQS_LAT_EN_Field_1)
     with Size => 1;
   for MCR_DQS_LAT_EN_Field use
     (MCR_DQS_LAT_EN_Field_0 => 0,
      MCR_DQS_LAT_EN_Field_1 => 1);

   --  DQS enable: This field is valid for both SDR and DDR mode
   type MCR_DQS_EN_Field is
     (
      --  DQS disabled.
      MCR_DQS_EN_Field_0,
      --  DQS enabled- When enabled, the incoming data is sampled on both the
      --  edges of DQS input when QSPI_MCR[DDR_EN] is set, else, on only one
      --  edge when QSPI_MCR[DDR_EN] is 0. The QSPI_SMPR[DDR_SMP] values are
      --  ignored.
      MCR_DQS_EN_Field_1)
     with Size => 1;
   for MCR_DQS_EN_Field use
     (MCR_DQS_EN_Field_0 => 0,
      MCR_DQS_EN_Field_1 => 1);

   --  DDR mode enable:
   type MCR_DDR_EN_Field is
     (
      --  2x and 4x clocks are disabled for SDR instructions only
      MCR_DDR_EN_Field_0,
      --  2x and 4x clocks are enabled supports both SDR and DDR instruction.
      MCR_DDR_EN_Field_1)
     with Size => 1;
   for MCR_DDR_EN_Field use
     (MCR_DDR_EN_Field_0 => 0,
      MCR_DDR_EN_Field_1 => 1);

   --  Clear RX FIFO. Invalidate the RX Buffer. This is a self-clearing field.
   type MCR_CLR_RXF_Field is
     (
      --  No action.
      MCR_CLR_RXF_Field_0,
      --  Read and write pointers of the RX Buffer are reset to 0.
      --  QSPI_RBSR[RDBFL] is reset to 0.
      MCR_CLR_RXF_Field_1)
     with Size => 1;
   for MCR_CLR_RXF_Field use
     (MCR_CLR_RXF_Field_0 => 0,
      MCR_CLR_RXF_Field_1 => 1);

   --  Clear TX FIFO/Buffer. Invalidate the TX Buffer content. This is a
   --  self-clearing field.
   type MCR_CLR_TXF_Field is
     (
      --  No action.
      MCR_CLR_TXF_Field_0,
      --  Read and write pointers of the TX Buffer are reset to 0.
      --  QSPI_TBSR[TRCTR] is reset to 0.
      MCR_CLR_TXF_Field_1)
     with Size => 1;
   for MCR_CLR_TXF_Field use
     (MCR_CLR_TXF_Field_0 => 0,
      MCR_CLR_TXF_Field_1 => 1);

   --  Module Disable
   type MCR_MDIS_Field is
     (
      --  Enable QuadSPI clocks.
      MCR_MDIS_Field_0,
      --  Allow external logic to disable QuadSPI clocks.
      MCR_MDIS_Field_1)
     with Size => 1;
   for MCR_MDIS_Field use
     (MCR_MDIS_Field_0 => 0,
      MCR_MDIS_Field_1 => 1);

   subtype QuadSPI0_MCR_SCLKCFG_Field is HAL.UInt8;

   --  Module Configuration Register
   type QuadSPI0_MCR_Register is record
      --  Software reset for Serial Flash domain
      SWRSTSD        : MCR_SWRSTSD_Field :=
                        NRF_SVD.QuadSPI0.MCR_SWRSTSD_Field_0;
      --  Software reset for AHB domain
      SWRSTHD        : MCR_SWRSTHD_Field :=
                        NRF_SVD.QuadSPI0.MCR_SWRSTHD_Field_0;
      --  Defines the endianness of the QSPI module.For more details refer to
      --  Byte Ordering Endianess
      END_CFG        : QuadSPI0_MCR_END_CFG_Field := 16#3#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  DQS Latency Enable: This field is valid when latency is included in
      --  between read access from FLash in case when QSPI_MCR[DQS_EN] is 1
      DQS_LAT_EN     : MCR_DQS_LAT_EN_Field :=
                        NRF_SVD.QuadSPI0.MCR_DQS_LAT_EN_Field_0;
      --  DQS enable: This field is valid for both SDR and DDR mode
      DQS_EN         : MCR_DQS_EN_Field :=
                        NRF_SVD.QuadSPI0.MCR_DQS_EN_Field_0;
      --  DDR mode enable:
      DDR_EN         : MCR_DDR_EN_Field :=
                        NRF_SVD.QuadSPI0.MCR_DDR_EN_Field_0;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Write-only. Clear RX FIFO. Invalidate the RX Buffer. This is a
      --  self-clearing field.
      CLR_RXF        : MCR_CLR_RXF_Field :=
                        NRF_SVD.QuadSPI0.MCR_CLR_RXF_Field_0;
      --  Write-only. Clear TX FIFO/Buffer. Invalidate the TX Buffer content.
      --  This is a self-clearing field.
      CLR_TXF        : MCR_CLR_TXF_Field :=
                        NRF_SVD.QuadSPI0.MCR_CLR_TXF_Field_0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Module Disable
      MDIS           : MCR_MDIS_Field := NRF_SVD.QuadSPI0.MCR_MDIS_Field_1;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#1E#;
      --  Serial Clock Configuration
      SCLKCFG        : QuadSPI0_MCR_SCLKCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_MCR_Register use record
      SWRSTSD        at 0 range 0 .. 0;
      SWRSTHD        at 0 range 1 .. 1;
      END_CFG        at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DQS_LAT_EN     at 0 range 5 .. 5;
      DQS_EN         at 0 range 6 .. 6;
      DDR_EN         at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      CLR_RXF        at 0 range 10 .. 10;
      CLR_TXF        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      MDIS           at 0 range 14 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      SCLKCFG        at 0 range 24 .. 31;
   end record;

   subtype QuadSPI0_IPCR_IDATSZ_Field is HAL.UInt16;
   subtype QuadSPI0_IPCR_SEQID_Field is HAL.UInt4;

   --  IP Configuration Register
   type QuadSPI0_IPCR_Register is record
      --  IP data transfer size: Defines the data transfer size in bytes of the
      --  IP command.
      IDATSZ         : QuadSPI0_IPCR_IDATSZ_Field := 16#0#;
      --  When set, a transaction to two serial flash devices is triggered in
      --  parallel mode
      PAR_EN         : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Points to a sequence in the Look-up-table
      SEQID          : QuadSPI0_IPCR_SEQID_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_IPCR_Register use record
      IDATSZ         at 0 range 0 .. 15;
      PAR_EN         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      SEQID          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype QuadSPI0_FLSHCR_TCSS_Field is HAL.UInt4;
   subtype QuadSPI0_FLSHCR_TCSH_Field is HAL.UInt4;

   --  Serial flash Data In hold time: This helps in meeting the Data In Hold
   --  time requirement of a Flash
   type FLSHCR_TDH_Field is
     (
      --  Data aligned with the posedge of Internal reference clock of QuadSPI
      FLSHCR_TDH_Field_00,
      --  Data aligned with 2x serial flash half clock
      FLSHCR_TDH_Field_01,
      --  Data aligned with 4x serial flash half clock
      FLSHCR_TDH_Field_10)
     with Size => 2;
   for FLSHCR_TDH_Field use
     (FLSHCR_TDH_Field_00 => 0,
      FLSHCR_TDH_Field_01 => 1,
      FLSHCR_TDH_Field_10 => 2);

   --  Flash Configuration Register
   type QuadSPI0_FLSHCR_Register is record
      --  Serial flash CS setup time in terms of serial flash clock cycles
      TCSS           : QuadSPI0_FLSHCR_TCSS_Field := 16#3#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Serial flash CS hold time in terms of serial flash clock cycles
      TCSH           : QuadSPI0_FLSHCR_TCSH_Field := 16#3#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Serial flash Data In hold time: This helps in meeting the Data In
      --  Hold time requirement of a Flash
      TDH            : FLSHCR_TDH_Field :=
                        NRF_SVD.QuadSPI0.FLSHCR_TDH_Field_00;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_FLSHCR_Register use record
      TCSS           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TCSH           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TDH            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype QuadSPI0_BUF0CR_MSTRID_Field is HAL.UInt4;
   subtype QuadSPI0_BUF0CR_ADATSZ_Field is HAL.UInt7;

   --  Buffer0 Configuration Register
   type QuadSPI0_BUF0CR_Register is record
      --  Master ID: The ID of the AHB master associated with BUFFER0
      MSTRID         : QuadSPI0_BUF0CR_MSTRID_Field := 16#2#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  AHB data transfer size
      ADATSZ         : QuadSPI0_BUF0CR_ADATSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  High Priority Enable: When set, the master associated with this
      --  buffer is assigned a priority higher than the rest of the masters
      HP_EN          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF0CR_Register use record
      MSTRID         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADATSZ         at 0 range 8 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      HP_EN          at 0 range 31 .. 31;
   end record;

   subtype QuadSPI0_BUF1CR_MSTRID_Field is HAL.UInt4;
   subtype QuadSPI0_BUF1CR_ADATSZ_Field is HAL.UInt7;

   --  Buffer1 Configuration Register
   type QuadSPI0_BUF1CR_Register is record
      --  Master ID: The ID of the AHB master associated with BUFFER1
      MSTRID         : QuadSPI0_BUF1CR_MSTRID_Field := 16#3#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  AHB data transfer size
      ADATSZ         : QuadSPI0_BUF1CR_ADATSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF1CR_Register use record
      MSTRID         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADATSZ         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype QuadSPI0_BUF2CR_MSTRID_Field is HAL.UInt4;
   subtype QuadSPI0_BUF2CR_ADATSZ_Field is HAL.UInt7;

   --  Buffer2 Configuration Register
   type QuadSPI0_BUF2CR_Register is record
      --  Master ID: The ID of the AHB master associated with BUFFER2
      MSTRID         : QuadSPI0_BUF2CR_MSTRID_Field := 16#4#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  AHB data transfer size
      ADATSZ         : QuadSPI0_BUF2CR_ADATSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF2CR_Register use record
      MSTRID         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADATSZ         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype QuadSPI0_BUF3CR_MSTRID_Field is HAL.UInt4;
   subtype QuadSPI0_BUF3CR_ADATSZ_Field is HAL.UInt7;

   --  Buffer3 Configuration Register
   type QuadSPI0_BUF3CR_Register is record
      --  Master ID: The ID of the AHB master associated with BUFFER3
      MSTRID         : QuadSPI0_BUF3CR_MSTRID_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  AHB data transfer size
      ADATSZ         : QuadSPI0_BUF3CR_ADATSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  All master enable: When set, buffer3 acts as an all-master buffer
      ALLMST         : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF3CR_Register use record
      MSTRID         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADATSZ         at 0 range 8 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ALLMST         at 0 range 31 .. 31;
   end record;

   subtype QuadSPI0_BFGENCR_SEQID_Field is HAL.UInt4;

   --  Buffer Generic Configuration Register
   type QuadSPI0_BFGENCR_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Points to a sequence in the Look-up-table
      SEQID          : QuadSPI0_BFGENCR_SEQID_Field := 16#0#;
      --  When set, a transaction to two serial flash devices is triggered in
      --  parallel mode
      PAR_EN         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BFGENCR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      SEQID          at 0 range 12 .. 15;
      PAR_EN         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  QSPI clock source select
   type SOCCR_QSPISRC_Field is
     (
      --  Core/system clock
      SOCCR_QSPISRC_Field_000,
      --  MCGFLL clock
      SOCCR_QSPISRC_Field_001,
      --  MCGPLL clock
      SOCCR_QSPISRC_Field_010,
      --  MCGPLL 2x clock (DDR mode specific)
      SOCCR_QSPISRC_Field_011,
      --  IRC48M clock
      SOCCR_QSPISRC_Field_100,
      --  OSCERCLK clock
      SOCCR_QSPISRC_Field_101,
      --  MCGIRCLK clock
      SOCCR_QSPISRC_Field_110)
     with Size => 3;
   for SOCCR_QSPISRC_Field use
     (SOCCR_QSPISRC_Field_000 => 0,
      SOCCR_QSPISRC_Field_001 => 1,
      SOCCR_QSPISRC_Field_010 => 2,
      SOCCR_QSPISRC_Field_011 => 3,
      SOCCR_QSPISRC_Field_100 => 4,
      SOCCR_QSPISRC_Field_101 => 5,
      SOCCR_QSPISRC_Field_110 => 6);

   --  When this bit is set the internal generated DQS is selected and looped
   --  back to QuadSPI, without going to DQS pad. DQSPADLPEN should be cleared
   --  when this bit is set.
   type SOCCR_DQSLPEN_Field is
     (
      --  DQS loop back is disabled
      SOCCR_DQSLPEN_Field_0,
      --  DQS loop back is enabled
      SOCCR_DQSLPEN_Field_1)
     with Size => 1;
   for SOCCR_DQSLPEN_Field use
     (SOCCR_DQSLPEN_Field_0 => 0,
      SOCCR_DQSLPEN_Field_1 => 1);

   --  When this bit is set the internal generated DQS will be sent to the DQS
   --  pad first and then looped back to QuadSPI. DQSLPEN should be cleared
   --  when this bit is set.
   type SOCCR_DQSPADLPEN_Field is
     (
      --  DQS loop back from DQS pad is disabled
      SOCCR_DQSPADLPEN_Field_0,
      --  DQS loop back from DQS pad is enabled
      SOCCR_DQSPADLPEN_Field_1)
     with Size => 1;
   for SOCCR_DQSPADLPEN_Field use
     (SOCCR_DQSPADLPEN_Field_0 => 0,
      SOCCR_DQSPADLPEN_Field_1 => 1);

   --  Select phase shift for internal DQS generation. These bits are always
   --  zero in SDR mode.
   type SOCCR_DQSPHASEL_Field is
     (
      --  No phase shift
      SOCCR_DQSPHASEL_Field_00,
      --  Select 45 degree phase shift
      SOCCR_DQSPHASEL_Field_01,
      --  Select 90 degree phase shift
      SOCCR_DQSPHASEL_Field_10,
      --  Select 135 degree phase shift
      SOCCR_DQSPHASEL_Field_11)
     with Size => 2;
   for SOCCR_DQSPHASEL_Field use
     (SOCCR_DQSPHASEL_Field_00 => 0,
      SOCCR_DQSPHASEL_Field_01 => 1,
      SOCCR_DQSPHASEL_Field_10 => 2,
      SOCCR_DQSPHASEL_Field_11 => 3);

   --  Select clock source for internal DQS generation
   type SOCCR_DQSINVSEL_Field is
     (
      --  Use 1x internal reference clock for the DQS generation
      SOCCR_DQSINVSEL_Field_0,
      --  Use inverse 1x internal reference clock for the DQS generation
      SOCCR_DQSINVSEL_Field_1)
     with Size => 1;
   for SOCCR_DQSINVSEL_Field use
     (SOCCR_DQSINVSEL_Field_0 => 0,
      SOCCR_DQSINVSEL_Field_1 => 1);

   --  Flash CK2 clock pin enable
   type SOCCR_CK2EN_Field is
     (
      --  CK2 flash clock is disabled
      SOCCR_CK2EN_Field_0,
      --  CK2 flash clock is enabled
      SOCCR_CK2EN_Field_1)
     with Size => 1;
   for SOCCR_CK2EN_Field use
     (SOCCR_CK2EN_Field_0 => 0,
      SOCCR_CK2EN_Field_1 => 1);

   --  Differential flash clock pins enable
   type SOCCR_DIFFCKEN_Field is
     (
      --  Differential flash clock is disabled
      SOCCR_DIFFCKEN_Field_0,
      --  Differential flash clock is enabled
      SOCCR_DIFFCKEN_Field_1)
     with Size => 1;
   for SOCCR_DIFFCKEN_Field use
     (SOCCR_DIFFCKEN_Field_0 => 0,
      SOCCR_DIFFCKEN_Field_1 => 1);

   --  Octal data pins enable
   type SOCCR_OCTEN_Field is
     (
      --  QSPI0B_DATAx pins are assigned to QSPI Port B
      SOCCR_OCTEN_Field_0,
      --  QSPI0B_DATAx pins are assigned to QSPI Port A
      SOCCR_OCTEN_Field_1)
     with Size => 1;
   for SOCCR_OCTEN_Field use
     (SOCCR_OCTEN_Field_0 => 0,
      SOCCR_OCTEN_Field_1 => 1);

   --  Delay chain tap number selection for QSPI Port A DQS
   type SOCCR_DLYTAPSELA_Field is
     (
      --  Select 1 delay chain tap
      SOCCR_DLYTAPSELA_Field_000000,
      --  Select 2 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001,
      --  Select 3 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010,
      --  Select 4 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011,
      --  Select 5 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100,
      --  Select 6 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101,
      --  Select 7 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110,
      --  Select 8 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111,
      --  Select 9 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001000,
      --  Select 10 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001001,
      --  Select 11 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001010,
      --  Select 12 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001011,
      --  Select 13 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001100,
      --  Select 14 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001101,
      --  Select 15 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001110,
      --  Select 16 delay chain tap
      SOCCR_DLYTAPSELA_Field_000001111,
      --  Select 17 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010000,
      --  Select 18 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010001,
      --  Select 19 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010010,
      --  Select 20 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010011,
      --  Select 21 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010100,
      --  Select 22 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010101,
      --  Select 23 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010110,
      --  Select 24 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000010111,
      --  Select 25 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011000,
      --  Select 26 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011001,
      --  Select 27 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011010,
      --  Select 28 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011011,
      --  Select 29 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011100,
      --  Select 30 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011101,
      --  Select 31 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011110,
      --  Select 32 delay chain tap
      SOCCR_DLYTAPSELA_Field_0000011111,
      --  Select 33 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100000,
      --  Select 34 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100001,
      --  Select 35 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100010,
      --  Select 36 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100011,
      --  Select 37 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100100,
      --  Select 38 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100101,
      --  Select 39 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100110,
      --  Select 40 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000100111,
      --  Select 41 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101000,
      --  Select 42 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101001,
      --  Select 43 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101010,
      --  Select 44 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101011,
      --  Select 45 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101100,
      --  Select 46 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101101,
      --  Select 47 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101110,
      --  Select 48 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000101111,
      --  Select 49 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110000,
      --  Select 50 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110001,
      --  Select 51 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110010,
      --  Select 52 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110011,
      --  Select 53 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110100,
      --  Select 54 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110101,
      --  Select 55 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110110,
      --  Select 56 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000110111,
      --  Select 57 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111000,
      --  Select 58 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111001,
      --  Select 59 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111010,
      --  Select 60 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111011,
      --  Select 61 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111100,
      --  Select 62 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111101,
      --  Select 63 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111110,
      --  Select 64 delay chain tap
      SOCCR_DLYTAPSELA_Field_00000111111)
     with Size => 6;
   for SOCCR_DLYTAPSELA_Field use
     (SOCCR_DLYTAPSELA_Field_000000 => 0,
      SOCCR_DLYTAPSELA_Field_000001 => 1,
      SOCCR_DLYTAPSELA_Field_0000010 => 2,
      SOCCR_DLYTAPSELA_Field_0000011 => 3,
      SOCCR_DLYTAPSELA_Field_00000100 => 4,
      SOCCR_DLYTAPSELA_Field_00000101 => 5,
      SOCCR_DLYTAPSELA_Field_00000110 => 6,
      SOCCR_DLYTAPSELA_Field_00000111 => 7,
      SOCCR_DLYTAPSELA_Field_000001000 => 8,
      SOCCR_DLYTAPSELA_Field_000001001 => 9,
      SOCCR_DLYTAPSELA_Field_000001010 => 10,
      SOCCR_DLYTAPSELA_Field_000001011 => 11,
      SOCCR_DLYTAPSELA_Field_000001100 => 12,
      SOCCR_DLYTAPSELA_Field_000001101 => 13,
      SOCCR_DLYTAPSELA_Field_000001110 => 14,
      SOCCR_DLYTAPSELA_Field_000001111 => 15,
      SOCCR_DLYTAPSELA_Field_0000010000 => 16,
      SOCCR_DLYTAPSELA_Field_0000010001 => 17,
      SOCCR_DLYTAPSELA_Field_0000010010 => 18,
      SOCCR_DLYTAPSELA_Field_0000010011 => 19,
      SOCCR_DLYTAPSELA_Field_0000010100 => 20,
      SOCCR_DLYTAPSELA_Field_0000010101 => 21,
      SOCCR_DLYTAPSELA_Field_0000010110 => 22,
      SOCCR_DLYTAPSELA_Field_0000010111 => 23,
      SOCCR_DLYTAPSELA_Field_0000011000 => 24,
      SOCCR_DLYTAPSELA_Field_0000011001 => 25,
      SOCCR_DLYTAPSELA_Field_0000011010 => 26,
      SOCCR_DLYTAPSELA_Field_0000011011 => 27,
      SOCCR_DLYTAPSELA_Field_0000011100 => 28,
      SOCCR_DLYTAPSELA_Field_0000011101 => 29,
      SOCCR_DLYTAPSELA_Field_0000011110 => 30,
      SOCCR_DLYTAPSELA_Field_0000011111 => 31,
      SOCCR_DLYTAPSELA_Field_00000100000 => 32,
      SOCCR_DLYTAPSELA_Field_00000100001 => 33,
      SOCCR_DLYTAPSELA_Field_00000100010 => 34,
      SOCCR_DLYTAPSELA_Field_00000100011 => 35,
      SOCCR_DLYTAPSELA_Field_00000100100 => 36,
      SOCCR_DLYTAPSELA_Field_00000100101 => 37,
      SOCCR_DLYTAPSELA_Field_00000100110 => 38,
      SOCCR_DLYTAPSELA_Field_00000100111 => 39,
      SOCCR_DLYTAPSELA_Field_00000101000 => 40,
      SOCCR_DLYTAPSELA_Field_00000101001 => 41,
      SOCCR_DLYTAPSELA_Field_00000101010 => 42,
      SOCCR_DLYTAPSELA_Field_00000101011 => 43,
      SOCCR_DLYTAPSELA_Field_00000101100 => 44,
      SOCCR_DLYTAPSELA_Field_00000101101 => 45,
      SOCCR_DLYTAPSELA_Field_00000101110 => 46,
      SOCCR_DLYTAPSELA_Field_00000101111 => 47,
      SOCCR_DLYTAPSELA_Field_00000110000 => 48,
      SOCCR_DLYTAPSELA_Field_00000110001 => 49,
      SOCCR_DLYTAPSELA_Field_00000110010 => 50,
      SOCCR_DLYTAPSELA_Field_00000110011 => 51,
      SOCCR_DLYTAPSELA_Field_00000110100 => 52,
      SOCCR_DLYTAPSELA_Field_00000110101 => 53,
      SOCCR_DLYTAPSELA_Field_00000110110 => 54,
      SOCCR_DLYTAPSELA_Field_00000110111 => 55,
      SOCCR_DLYTAPSELA_Field_00000111000 => 56,
      SOCCR_DLYTAPSELA_Field_00000111001 => 57,
      SOCCR_DLYTAPSELA_Field_00000111010 => 58,
      SOCCR_DLYTAPSELA_Field_00000111011 => 59,
      SOCCR_DLYTAPSELA_Field_00000111100 => 60,
      SOCCR_DLYTAPSELA_Field_00000111101 => 61,
      SOCCR_DLYTAPSELA_Field_00000111110 => 62,
      SOCCR_DLYTAPSELA_Field_00000111111 => 63);

   --  Delay chain tap number selection for QSPI Port B DQS
   type SOCCR_DLYTAPSELB_Field is
     (
      --  Select 1 delay chain tap
      SOCCR_DLYTAPSELB_Field_000000,
      --  Select 2 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001,
      --  Select 3 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010,
      --  Select 4 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011,
      --  Select 5 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100,
      --  Select 6 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101,
      --  Select 7 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110,
      --  Select 8 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111,
      --  Select 9 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001000,
      --  Select 10 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001001,
      --  Select 11 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001010,
      --  Select 12 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001011,
      --  Select 13 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001100,
      --  Select 14 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001101,
      --  Select 15 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001110,
      --  Select 16 delay chain tap
      SOCCR_DLYTAPSELB_Field_000001111,
      --  Select 17 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010000,
      --  Select 18 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010001,
      --  Select 19 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010010,
      --  Select 20 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010011,
      --  Select 21 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010100,
      --  Select 22 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010101,
      --  Select 23 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010110,
      --  Select 24 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000010111,
      --  Select 25 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011000,
      --  Select 26 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011001,
      --  Select 27 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011010,
      --  Select 28 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011011,
      --  Select 29 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011100,
      --  Select 30 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011101,
      --  Select 31 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011110,
      --  Select 32 delay chain tap
      SOCCR_DLYTAPSELB_Field_0000011111,
      --  Select 33 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100000,
      --  Select 34 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100001,
      --  Select 35 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100010,
      --  Select 36 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100011,
      --  Select 37 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100100,
      --  Select 38 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100101,
      --  Select 39 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100110,
      --  Select 40 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000100111,
      --  Select 41 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101000,
      --  Select 42 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101001,
      --  Select 43 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101010,
      --  Select 44 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101011,
      --  Select 45 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101100,
      --  Select 46 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101101,
      --  Select 47 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101110,
      --  Select 48 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000101111,
      --  Select 49 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110000,
      --  Select 50 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110001,
      --  Select 51 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110010,
      --  Select 52 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110011,
      --  Select 53 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110100,
      --  Select 54 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110101,
      --  Select 55 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110110,
      --  Select 56 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000110111,
      --  Select 57 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111000,
      --  Select 58 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111001,
      --  Select 59 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111010,
      --  Select 60 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111011,
      --  Select 61 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111100,
      --  Select 62 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111101,
      --  Select 63 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111110,
      --  Select 64 delay chain tap
      SOCCR_DLYTAPSELB_Field_00000111111)
     with Size => 6;
   for SOCCR_DLYTAPSELB_Field use
     (SOCCR_DLYTAPSELB_Field_000000 => 0,
      SOCCR_DLYTAPSELB_Field_000001 => 1,
      SOCCR_DLYTAPSELB_Field_0000010 => 2,
      SOCCR_DLYTAPSELB_Field_0000011 => 3,
      SOCCR_DLYTAPSELB_Field_00000100 => 4,
      SOCCR_DLYTAPSELB_Field_00000101 => 5,
      SOCCR_DLYTAPSELB_Field_00000110 => 6,
      SOCCR_DLYTAPSELB_Field_00000111 => 7,
      SOCCR_DLYTAPSELB_Field_000001000 => 8,
      SOCCR_DLYTAPSELB_Field_000001001 => 9,
      SOCCR_DLYTAPSELB_Field_000001010 => 10,
      SOCCR_DLYTAPSELB_Field_000001011 => 11,
      SOCCR_DLYTAPSELB_Field_000001100 => 12,
      SOCCR_DLYTAPSELB_Field_000001101 => 13,
      SOCCR_DLYTAPSELB_Field_000001110 => 14,
      SOCCR_DLYTAPSELB_Field_000001111 => 15,
      SOCCR_DLYTAPSELB_Field_0000010000 => 16,
      SOCCR_DLYTAPSELB_Field_0000010001 => 17,
      SOCCR_DLYTAPSELB_Field_0000010010 => 18,
      SOCCR_DLYTAPSELB_Field_0000010011 => 19,
      SOCCR_DLYTAPSELB_Field_0000010100 => 20,
      SOCCR_DLYTAPSELB_Field_0000010101 => 21,
      SOCCR_DLYTAPSELB_Field_0000010110 => 22,
      SOCCR_DLYTAPSELB_Field_0000010111 => 23,
      SOCCR_DLYTAPSELB_Field_0000011000 => 24,
      SOCCR_DLYTAPSELB_Field_0000011001 => 25,
      SOCCR_DLYTAPSELB_Field_0000011010 => 26,
      SOCCR_DLYTAPSELB_Field_0000011011 => 27,
      SOCCR_DLYTAPSELB_Field_0000011100 => 28,
      SOCCR_DLYTAPSELB_Field_0000011101 => 29,
      SOCCR_DLYTAPSELB_Field_0000011110 => 30,
      SOCCR_DLYTAPSELB_Field_0000011111 => 31,
      SOCCR_DLYTAPSELB_Field_00000100000 => 32,
      SOCCR_DLYTAPSELB_Field_00000100001 => 33,
      SOCCR_DLYTAPSELB_Field_00000100010 => 34,
      SOCCR_DLYTAPSELB_Field_00000100011 => 35,
      SOCCR_DLYTAPSELB_Field_00000100100 => 36,
      SOCCR_DLYTAPSELB_Field_00000100101 => 37,
      SOCCR_DLYTAPSELB_Field_00000100110 => 38,
      SOCCR_DLYTAPSELB_Field_00000100111 => 39,
      SOCCR_DLYTAPSELB_Field_00000101000 => 40,
      SOCCR_DLYTAPSELB_Field_00000101001 => 41,
      SOCCR_DLYTAPSELB_Field_00000101010 => 42,
      SOCCR_DLYTAPSELB_Field_00000101011 => 43,
      SOCCR_DLYTAPSELB_Field_00000101100 => 44,
      SOCCR_DLYTAPSELB_Field_00000101101 => 45,
      SOCCR_DLYTAPSELB_Field_00000101110 => 46,
      SOCCR_DLYTAPSELB_Field_00000101111 => 47,
      SOCCR_DLYTAPSELB_Field_00000110000 => 48,
      SOCCR_DLYTAPSELB_Field_00000110001 => 49,
      SOCCR_DLYTAPSELB_Field_00000110010 => 50,
      SOCCR_DLYTAPSELB_Field_00000110011 => 51,
      SOCCR_DLYTAPSELB_Field_00000110100 => 52,
      SOCCR_DLYTAPSELB_Field_00000110101 => 53,
      SOCCR_DLYTAPSELB_Field_00000110110 => 54,
      SOCCR_DLYTAPSELB_Field_00000110111 => 55,
      SOCCR_DLYTAPSELB_Field_00000111000 => 56,
      SOCCR_DLYTAPSELB_Field_00000111001 => 57,
      SOCCR_DLYTAPSELB_Field_00000111010 => 58,
      SOCCR_DLYTAPSELB_Field_00000111011 => 59,
      SOCCR_DLYTAPSELB_Field_00000111100 => 60,
      SOCCR_DLYTAPSELB_Field_00000111101 => 61,
      SOCCR_DLYTAPSELB_Field_00000111110 => 62,
      SOCCR_DLYTAPSELB_Field_00000111111 => 63);

   --  SOC Configuration Register
   type QuadSPI0_SOCCR_Register is record
      --  QSPI clock source select
      QSPISRC        : SOCCR_QSPISRC_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_QSPISRC_Field_000;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  When this bit is set the internal generated DQS is selected and
      --  looped back to QuadSPI, without going to DQS pad. DQSPADLPEN should
      --  be cleared when this bit is set.
      DQSLPEN        : SOCCR_DQSLPEN_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DQSLPEN_Field_0;
      --  When this bit is set the internal generated DQS will be sent to the
      --  DQS pad first and then looped back to QuadSPI. DQSLPEN should be
      --  cleared when this bit is set.
      DQSPADLPEN     : SOCCR_DQSPADLPEN_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DQSPADLPEN_Field_0;
      --  Select phase shift for internal DQS generation. These bits are always
      --  zero in SDR mode.
      DQSPHASEL      : SOCCR_DQSPHASEL_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DQSPHASEL_Field_00;
      --  Select clock source for internal DQS generation
      DQSINVSEL      : SOCCR_DQSINVSEL_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DQSINVSEL_Field_0;
      --  Flash CK2 clock pin enable
      CK2EN          : SOCCR_CK2EN_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_CK2EN_Field_0;
      --  Differential flash clock pins enable
      DIFFCKEN       : SOCCR_DIFFCKEN_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DIFFCKEN_Field_0;
      --  Octal data pins enable
      OCTEN          : SOCCR_OCTEN_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_OCTEN_Field_0;
      --  Delay chain tap number selection for QSPI Port A DQS
      DLYTAPSELA     : SOCCR_DLYTAPSELA_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DLYTAPSELA_Field_000000;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Delay chain tap number selection for QSPI Port B DQS
      DLYTAPSELB     : SOCCR_DLYTAPSELB_Field :=
                        NRF_SVD.QuadSPI0.SOCCR_DLYTAPSELB_Field_000000;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SOCCR_Register use record
      QSPISRC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DQSLPEN        at 0 range 8 .. 8;
      DQSPADLPEN     at 0 range 9 .. 9;
      DQSPHASEL      at 0 range 10 .. 11;
      DQSINVSEL      at 0 range 12 .. 12;
      CK2EN          at 0 range 13 .. 13;
      DIFFCKEN       at 0 range 14 .. 14;
      OCTEN          at 0 range 15 .. 15;
      DLYTAPSELA     at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DLYTAPSELB     at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype QuadSPI0_BUF0IND_TPINDX0_Field is HAL.UInt29;

   --  Buffer0 Top Index Register
   type QuadSPI0_BUF0IND_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  Top index of buffer 0.
      TPINDX0      : QuadSPI0_BUF0IND_TPINDX0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF0IND_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      TPINDX0      at 0 range 3 .. 31;
   end record;

   subtype QuadSPI0_BUF1IND_TPINDX1_Field is HAL.UInt29;

   --  Buffer1 Top Index Register
   type QuadSPI0_BUF1IND_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  Top index of buffer 1.
      TPINDX1      : QuadSPI0_BUF1IND_TPINDX1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF1IND_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      TPINDX1      at 0 range 3 .. 31;
   end record;

   subtype QuadSPI0_BUF2IND_TPINDX2_Field is HAL.UInt29;

   --  Buffer2 Top Index Register
   type QuadSPI0_BUF2IND_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  Top index of buffer 2.
      TPINDX2      : QuadSPI0_BUF2IND_TPINDX2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_BUF2IND_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      TPINDX2      at 0 range 3 .. 31;
   end record;

   subtype QuadSPI0_SFACR_CAS_Field is HAL.UInt4;

   --  Word Addressable
   type SFACR_WA_Field is
     (
      --  Byte addressable serial flash mode.
      SFACR_WA_Field_0,
      --  Word (2 byte) addressable serial flash mode.
      SFACR_WA_Field_1)
     with Size => 1;
   for SFACR_WA_Field use
     (SFACR_WA_Field_0 => 0,
      SFACR_WA_Field_1 => 1);

   --  Serial Flash Address Configuration Register
   type QuadSPI0_SFACR_Register is record
      --  Column Address Space
      CAS            : QuadSPI0_SFACR_CAS_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Word Addressable
      WA             : SFACR_WA_Field := NRF_SVD.QuadSPI0.SFACR_WA_Field_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SFACR_Register use record
      CAS            at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      WA             at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Half Speed serial flash clock Enable
   type SMPR_HSENA_Field is
     (
      --  Disable divide by 2 of serial flash clock for half speed commands
      SMPR_HSENA_Field_0,
      --  Enable divide by 2 of serial flash clock for half speed commands
      SMPR_HSENA_Field_1)
     with Size => 1;
   for SMPR_HSENA_Field use
     (SMPR_HSENA_Field_0 => 0,
      SMPR_HSENA_Field_1 => 1);

   --  Half Speed Phase selection for SDR instructions.
   type SMPR_HSPHS_Field is
     (
      --  Select sampling at non-inverted clock
      SMPR_HSPHS_Field_0,
      --  Select sampling at inverted clock
      SMPR_HSPHS_Field_1)
     with Size => 1;
   for SMPR_HSPHS_Field use
     (SMPR_HSPHS_Field_0 => 0,
      SMPR_HSPHS_Field_1 => 1);

   --  Half Speed Delay selection for SDR instructions.
   type SMPR_HSDLY_Field is
     (
      --  One clock cycle delay
      SMPR_HSDLY_Field_0,
      --  Two clock cycle delay
      SMPR_HSDLY_Field_1)
     with Size => 1;
   for SMPR_HSDLY_Field use
     (SMPR_HSDLY_Field_0 => 0,
      SMPR_HSDLY_Field_1 => 1);

   --  Full Speed Phase selection for SDR instructions.
   type SMPR_FSPHS_Field is
     (
      --  Select sampling at non-inverted clock
      SMPR_FSPHS_Field_0,
      --  Select sampling at inverted clock. This bit is also used in DQS mode
      --  and ignored when using non-DQS DDR instructions.
      SMPR_FSPHS_Field_1)
     with Size => 1;
   for SMPR_FSPHS_Field use
     (SMPR_FSPHS_Field_0 => 0,
      SMPR_FSPHS_Field_1 => 1);

   --  Full Speed Delay selection for SDR instructions. Select the delay with
   --  respect to the reference edge for the sample point valid for full speed
   --  commands:
   type SMPR_FSDLY_Field is
     (
      --  One clock cycle delay
      SMPR_FSDLY_Field_0,
      --  Two clock cycles delay. This bit is also used in DQS mode and ignored
      --  when using non-DQS DDR instructions.
      SMPR_FSDLY_Field_1)
     with Size => 1;
   for SMPR_FSDLY_Field use
     (SMPR_FSDLY_Field_0 => 0,
      SMPR_FSDLY_Field_1 => 1);

   subtype QuadSPI0_SMPR_DDRSMP_Field is HAL.UInt3;

   --  Sampling Register
   type QuadSPI0_SMPR_Register is record
      --  Half Speed serial flash clock Enable
      HSENA          : SMPR_HSENA_Field :=
                        NRF_SVD.QuadSPI0.SMPR_HSENA_Field_0;
      --  Half Speed Phase selection for SDR instructions.
      HSPHS          : SMPR_HSPHS_Field :=
                        NRF_SVD.QuadSPI0.SMPR_HSPHS_Field_0;
      --  Half Speed Delay selection for SDR instructions.
      HSDLY          : SMPR_HSDLY_Field :=
                        NRF_SVD.QuadSPI0.SMPR_HSDLY_Field_0;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Full Speed Phase selection for SDR instructions.
      FSPHS          : SMPR_FSPHS_Field :=
                        NRF_SVD.QuadSPI0.SMPR_FSPHS_Field_0;
      --  Full Speed Delay selection for SDR instructions. Select the delay
      --  with respect to the reference edge for the sample point valid for
      --  full speed commands:
      FSDLY          : SMPR_FSDLY_Field :=
                        NRF_SVD.QuadSPI0.SMPR_FSDLY_Field_0;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  DDR Sampling point
      DDRSMP         : QuadSPI0_SMPR_DDRSMP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SMPR_Register use record
      HSENA          at 0 range 0 .. 0;
      HSPHS          at 0 range 1 .. 1;
      HSDLY          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      FSPHS          at 0 range 5 .. 5;
      FSDLY          at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      DDRSMP         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype QuadSPI0_RBSR_RDBFL_Field is HAL.UInt5;
   subtype QuadSPI0_RBSR_RDCTR_Field is HAL.UInt16;

   --  RX Buffer Status Register
   type QuadSPI0_RBSR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. RX Buffer Fill Level, indicates how many entries of 4
      --  bytes are still available in the RX Buffer
      RDBFL          : QuadSPI0_RBSR_RDBFL_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Read Counter, indicates how many entries of 4 bytes have
      --  been removed from the RX Buffer
      RDCTR          : QuadSPI0_RBSR_RDCTR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_RBSR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RDBFL          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RDCTR          at 0 range 16 .. 31;
   end record;

   subtype QuadSPI0_RBCT_WMRK_Field is HAL.UInt4;

   --  RX Buffer Readout: This bit specifies the access scheme for the RX
   --  Buffer readout.
   type RBCT_RXBRD_Field is
     (
      --  RX Buffer content is read using the AHB Bus registers QSPI_ARDB0 to
      --  QSPI_ARDB15. For details, refer to Exclusive Access to Serial Flash
      --  for AHB Commands.
      RBCT_RXBRD_Field_0,
      --  RX Buffer content is read using the IP Bus registers QSPI_RBDR0 to
      --  QSPI_RBDR15.
      RBCT_RXBRD_Field_1)
     with Size => 1;
   for RBCT_RXBRD_Field use
     (RBCT_RXBRD_Field_0 => 0,
      RBCT_RXBRD_Field_1 => 1);

   --  RX Buffer Control Register
   type QuadSPI0_RBCT_Register is record
      --  RX Buffer Watermark: This field determines when the readout action of
      --  the RX Buffer is triggered
      WMRK          : QuadSPI0_RBCT_WMRK_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  RX Buffer Readout: This bit specifies the access scheme for the RX
      --  Buffer readout.
      RXBRD         : RBCT_RXBRD_Field := NRF_SVD.QuadSPI0.RBCT_RXBRD_Field_0;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_RBCT_Register use record
      WMRK          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      RXBRD         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype QuadSPI0_TBSR_TRBFL_Field is HAL.UInt5;
   subtype QuadSPI0_TBSR_TRCTR_Field is HAL.UInt16;

   --  TX Buffer Status Register
   type QuadSPI0_TBSR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. TX Buffer Fill Level
      TRBFL          : QuadSPI0_TBSR_TRBFL_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Transmit Counter
      TRCTR          : QuadSPI0_TBSR_TRCTR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_TBSR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TRBFL          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TRCTR          at 0 range 16 .. 31;
   end record;

   subtype QuadSPI0_TBCT_WMRK_Field is HAL.UInt4;

   --  Tx Buffer Control Register
   type QuadSPI0_TBCT_Register is record
      --  Determines the watermark for the TX Buffer
      WMRK          : QuadSPI0_TBCT_WMRK_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_TBCT_Register use record
      WMRK          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype QuadSPI0_SR_DLPSMP_Field is HAL.UInt3;

   --  Status Register
   type QuadSPI0_SR_Register is record
      --  Read-only. Module Busy: Asserted when module is currently busy
      --  handling a transaction to an external flash device
      BUSY           : Boolean;
      --  Read-only. IP Access: Asserted when transaction currently executed
      --  was initiated by IP bus.
      IP_ACC         : Boolean;
      --  Read-only. AHB Access: Asserted when the transaction currently
      --  executed was initiated by AHB bus.
      AHB_ACC        : Boolean;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. AHB Command priority Granted: Asserted when another module
      --  has been granted priority of AHB Commands against IP Commands
      AHBGNT         : Boolean;
      --  Read-only. AHB Access Transaction pending: Asserted when there is a
      --  pending request on the AHB interface
      AHBTRN         : Boolean;
      --  Read-only. AHB 0 Buffer Not Empty: Asserted when AHB 0 buffer
      --  contains data.
      AHB0NE         : Boolean;
      --  Read-only. AHB 1 Buffer Not Empty: Asserted when AHB 1 buffer
      --  contains data.
      AHB1NE         : Boolean;
      --  Read-only. AHB 2 Buffer Not Empty: Asserted when AHB 2 buffer
      --  contains data.
      AHB2NE         : Boolean;
      --  Read-only. AHB 3 Buffer Not Empty: Asserted when AHB 3 buffer
      --  contains data.
      AHB3NE         : Boolean;
      --  Read-only. AHB 0 Buffer Full: Asserted when AHB 0 buffer is full.
      AHB0FUL        : Boolean;
      --  Read-only. AHB 1 Buffer Full: Asserted when AHB 1 buffer is full.
      AHB1FUL        : Boolean;
      --  Read-only. AHB 2 Buffer Full: Asserted when AHB 2 buffer is full.
      AHB2FUL        : Boolean;
      --  Read-only. AHB 3 Buffer Full: Asserted when AHB 3 buffer is full.
      AHB3FUL        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. RX Buffer Watermark Exceeded: Asserted when the number of
      --  valid entries in the RX Buffer exceeds the number given in the
      --  QSPI_RBCT[WMRK] field
      RXWE           : Boolean;
      --  unspecified
      Reserved_17_18 : HAL.UInt2;
      --  Read-only. RX Buffer Full: Asserted when the RX Buffer is full, i
      RXFULL         : Boolean;
      --  unspecified
      Reserved_20_22 : HAL.UInt3;
      --  Read-only. RX Buffer DMA: Asserted when RX Buffer read out via DMA is
      --  active i.e DMA is requested or running.
      RXDMA          : Boolean;
      --  Read-only. Tx Buffer Enough Data Available
      TXEDA          : Boolean;
      --  Read-only. TX Buffer watermark Available
      TXWA           : Boolean;
      --  Read-only. TXDMA
      TXDMA          : Boolean;
      --  Read-only. TX Buffer Full: Asserted when no more data can be stored.
      TXFULL         : Boolean;
      --  unspecified
      Reserved_28_28 : HAL.Bit;
      --  Read-only. Data learning pattern sampling point: The sampling point
      --  found by the controller with the data learning pattern
      DLPSMP         : QuadSPI0_SR_DLPSMP_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SR_Register use record
      BUSY           at 0 range 0 .. 0;
      IP_ACC         at 0 range 1 .. 1;
      AHB_ACC        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      AHBGNT         at 0 range 5 .. 5;
      AHBTRN         at 0 range 6 .. 6;
      AHB0NE         at 0 range 7 .. 7;
      AHB1NE         at 0 range 8 .. 8;
      AHB2NE         at 0 range 9 .. 9;
      AHB3NE         at 0 range 10 .. 10;
      AHB0FUL        at 0 range 11 .. 11;
      AHB1FUL        at 0 range 12 .. 12;
      AHB2FUL        at 0 range 13 .. 13;
      AHB3FUL        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXWE           at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      RXDMA          at 0 range 23 .. 23;
      TXEDA          at 0 range 24 .. 24;
      TXWA           at 0 range 25 .. 25;
      TXDMA          at 0 range 26 .. 26;
      TXFULL         at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      DLPSMP         at 0 range 29 .. 31;
   end record;

   --  Flag Register
   type QuadSPI0_FR_Register is record
      --  IP Command Transaction Finished Flag: Set when the QuadSPI module has
      --  finished a running IP Command
      TFF            : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  IP Command Trigger during AHB Grant Error Flag: Set when the
      --  following condition occurs: A write access occurs to the
      --  QSPI_IPCR[SEQID] field and the QSPI_SR[AHBGNT] bit is set
      IPGEF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  IP Command Trigger could not be executed Error Flag
      IPIEF          : Boolean := False;
      --  IP Command Trigger during AHB Access Error Flag
      IPAEF          : Boolean := False;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  IP Command Usage Error Flag: Set when in parallel flash mode the
      --  execution of an IP Command is started with more than one pad enabled
      --  and the sequence pointed to by the sequence ID contains a WRITE or a
      --  WRITE_DDR command
      IUEF           : Boolean := False;
      --  AHB Buffer Overflow Flag: Set when the size of the AHB access exceeds
      --  the size of the AHB buffer
      ABOF           : Boolean := False;
      --  AHB Illegal Burst Size Error Flag: Set whenever the total burst
      --  size(size x beat) of an AHB transaction is greater than the prefetch
      --  data size
      AIBSEF         : Boolean := False;
      --  AHB Illegal transaction error flag
      AITEF          : Boolean := False;
      --  AHB Sequence Error Flag: Set when the execution of an AHB Command is
      --  started with a WRITE or WRITE_DDR Command in the sequence pointed to
      --  by the QSPI_BUFxCR register
      ABSEF          : Boolean := False;
      --  RX Buffer Drain Flag: Will be set if the QuadSPI_SR[RXWE] status bit
      --  is asserted
      RBDF           : Boolean := False;
      --  RX Buffer Overflow Flag: Set when not all the data read from the
      --  serial flash device could be pushed into the RX Buffer
      RBOF           : Boolean := False;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Illegal Instruction Error Flag: Set when an illegal instruction is
      --  encountered by the controller in any of the sequences
      ILLINE         : Boolean := False;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  TX Buffer Underrun Flag: Set when the module tried to pull data
      --  although TX Buffer was emptyor the buffer contains less than 128bits
      --  of data
      TBUF           : Boolean := False;
      --  TX Buffer Fill Flag: Before writing to the TX buffer, this bit should
      --  be cleared
      TBFF           : Boolean := True;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Data Learning Pattern Failure Flag: Set when DATA_LEARN instruction
      --  was encountered in a sequence but no sampling point was found for the
      --  data learning patternin case only 8 bit data learning is requested
      --  for non DQS mode
      DLPFF          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_FR_Register use record
      TFF            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      IPGEF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      IPIEF          at 0 range 6 .. 6;
      IPAEF          at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      IUEF           at 0 range 11 .. 11;
      ABOF           at 0 range 12 .. 12;
      AIBSEF         at 0 range 13 .. 13;
      AITEF          at 0 range 14 .. 14;
      ABSEF          at 0 range 15 .. 15;
      RBDF           at 0 range 16 .. 16;
      RBOF           at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      ILLINE         at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      TBUF           at 0 range 26 .. 26;
      TBFF           at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      DLPFF          at 0 range 31 .. 31;
   end record;

   --  Transaction Finished Interrupt Enable
   type RSER_TFIE_Field is
     (
      --  No TFF interrupt will be generated
      RSER_TFIE_Field_0,
      --  TFF interrupt will be generated
      RSER_TFIE_Field_1)
     with Size => 1;
   for RSER_TFIE_Field use
     (RSER_TFIE_Field_0 => 0,
      RSER_TFIE_Field_1 => 1);

   --  IP Command Trigger during AHB Grant Error Interrupt Enable
   type RSER_IPGEIE_Field is
     (
      --  No IPGEF interrupt will be generated
      RSER_IPGEIE_Field_0,
      --  IPGEF interrupt will be generated
      RSER_IPGEIE_Field_1)
     with Size => 1;
   for RSER_IPGEIE_Field use
     (RSER_IPGEIE_Field_0 => 0,
      RSER_IPGEIE_Field_1 => 1);

   --  IP Command Trigger during IP Access Error Interrupt Enable
   type RSER_IPIEIE_Field is
     (
      --  No IPIEF interrupt will be generated
      RSER_IPIEIE_Field_0,
      --  IPIEF interrupt will be generated
      RSER_IPIEIE_Field_1)
     with Size => 1;
   for RSER_IPIEIE_Field use
     (RSER_IPIEIE_Field_0 => 0,
      RSER_IPIEIE_Field_1 => 1);

   --  IP Command Trigger during AHB Access Error Interrupt Enable
   type RSER_IPAEIE_Field is
     (
      --  No IPAEF interrupt will be generated
      RSER_IPAEIE_Field_0,
      --  IPAEF interrupt will be generated
      RSER_IPAEIE_Field_1)
     with Size => 1;
   for RSER_IPAEIE_Field use
     (RSER_IPAEIE_Field_0 => 0,
      RSER_IPAEIE_Field_1 => 1);

   --  IP Command Usage Error Interrupt Enable
   type RSER_IUEIE_Field is
     (
      --  No IUEF interrupt will be generated
      RSER_IUEIE_Field_0,
      --  IUEF interrupt will be generated
      RSER_IUEIE_Field_1)
     with Size => 1;
   for RSER_IUEIE_Field use
     (RSER_IUEIE_Field_0 => 0,
      RSER_IUEIE_Field_1 => 1);

   --  AHB Buffer Overflow Interrupt Enable
   type RSER_ABOIE_Field is
     (
      --  No ABOF interrupt will be generated
      RSER_ABOIE_Field_0,
      --  ABOF interrupt will be generated
      RSER_ABOIE_Field_1)
     with Size => 1;
   for RSER_ABOIE_Field use
     (RSER_ABOIE_Field_0 => 0,
      RSER_ABOIE_Field_1 => 1);

   --  AHB Illegal Burst Size Interrupt Enable
   type RSER_AIBSIE_Field is
     (
      --  No AIBSEF interrupt will be generated
      RSER_AIBSIE_Field_0,
      --  AIBSEF interrupt will be generated
      RSER_AIBSIE_Field_1)
     with Size => 1;
   for RSER_AIBSIE_Field use
     (RSER_AIBSIE_Field_0 => 0,
      RSER_AIBSIE_Field_1 => 1);

   --  AHB Illegal transaction interrupt enable.
   type RSER_AITIE_Field is
     (
      --  No AITEF interrupt will be generated
      RSER_AITIE_Field_0,
      --  AITEF interrupt will be generated
      RSER_AITIE_Field_1)
     with Size => 1;
   for RSER_AITIE_Field use
     (RSER_AITIE_Field_0 => 0,
      RSER_AITIE_Field_1 => 1);

   --  AHB Sequence Error Interrupt Enable: Triggered by ABSEF flags of QSPI_FR
   type RSER_ABSEIE_Field is
     (
      --  No ABSEF interrupt will be generated
      RSER_ABSEIE_Field_0,
      --  ABSEF interrupt will be generated
      RSER_ABSEIE_Field_1)
     with Size => 1;
   for RSER_ABSEIE_Field use
     (RSER_ABSEIE_Field_0 => 0,
      RSER_ABSEIE_Field_1 => 1);

   --  RX Buffer Drain Interrupt Enable: Enables generation of IRQ requests for
   --  RX Buffer Drain
   type RSER_RBDIE_Field is
     (
      --  No RBDF interrupt will be generated
      RSER_RBDIE_Field_0,
      --  RBDF Interrupt will be generated
      RSER_RBDIE_Field_1)
     with Size => 1;
   for RSER_RBDIE_Field use
     (RSER_RBDIE_Field_0 => 0,
      RSER_RBDIE_Field_1 => 1);

   --  RX Buffer Overflow Interrupt Enable
   type RSER_RBOIE_Field is
     (
      --  No RBOF interrupt will be generated
      RSER_RBOIE_Field_0,
      --  RBOF interrupt will be generated
      RSER_RBOIE_Field_1)
     with Size => 1;
   for RSER_RBOIE_Field use
     (RSER_RBOIE_Field_0 => 0,
      RSER_RBOIE_Field_1 => 1);

   --  RX Buffer Drain DMA Enable: Enables generation of DMA requests for RX
   --  Buffer Drain
   type RSER_RBDDE_Field is
     (
      --  No DMA request will be generated
      RSER_RBDDE_Field_0,
      --  DMA request will be generated
      RSER_RBDDE_Field_1)
     with Size => 1;
   for RSER_RBDDE_Field use
     (RSER_RBDDE_Field_0 => 0,
      RSER_RBDDE_Field_1 => 1);

   --  Illegal Instruction Error Interrupt Enable. Triggered by ILLINE flag in
   --  QSPI_FR
   type RSER_ILLINIE_Field is
     (
      --  No ILLINE interrupt will be generated
      RSER_ILLINIE_Field_0,
      --  ILLINE interrupt will be generated
      RSER_ILLINIE_Field_1)
     with Size => 1;
   for RSER_ILLINIE_Field use
     (RSER_ILLINIE_Field_0 => 0,
      RSER_ILLINIE_Field_1 => 1);

   --  TX Buffer Fill DMA Enable
   type RSER_TBFDE_Field is
     (
      --  No DMA request will be generated
      RSER_TBFDE_Field_0,
      --  DMA request will be generated
      RSER_TBFDE_Field_1)
     with Size => 1;
   for RSER_TBFDE_Field use
     (RSER_TBFDE_Field_0 => 0,
      RSER_TBFDE_Field_1 => 1);

   --  TX Buffer Underrun Interrupt Enable
   type RSER_TBUIE_Field is
     (
      --  No TBUF interrupt will be generated
      RSER_TBUIE_Field_0,
      --  TBUF interrupt will be generated
      RSER_TBUIE_Field_1)
     with Size => 1;
   for RSER_TBUIE_Field use
     (RSER_TBUIE_Field_0 => 0,
      RSER_TBUIE_Field_1 => 1);

   --  TX Buffer Fill Interrupt Enable
   type RSER_TBFIE_Field is
     (
      --  No TBFF interrupt will be generated
      RSER_TBFIE_Field_0,
      --  TBFF interrupt will be generated
      RSER_TBFIE_Field_1)
     with Size => 1;
   for RSER_TBFIE_Field use
     (RSER_TBFIE_Field_0 => 0,
      RSER_TBFIE_Field_1 => 1);

   --  Data Learning Pattern Failure Interrupt enable . Triggered by DLPFF flag
   --  in QSPI_FR register
   type RSER_DLPFIE_Field is
     (
      --  No DLPFF interrupt will be generated
      RSER_DLPFIE_Field_0,
      --  DLPFF interrupt will be generated
      RSER_DLPFIE_Field_1)
     with Size => 1;
   for RSER_DLPFIE_Field use
     (RSER_DLPFIE_Field_0 => 0,
      RSER_DLPFIE_Field_1 => 1);

   --  Interrupt and DMA Request Select and Enable Register
   type QuadSPI0_RSER_Register is record
      --  Transaction Finished Interrupt Enable
      TFIE           : RSER_TFIE_Field := NRF_SVD.QuadSPI0.RSER_TFIE_Field_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  IP Command Trigger during AHB Grant Error Interrupt Enable
      IPGEIE         : RSER_IPGEIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_IPGEIE_Field_0;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  IP Command Trigger during IP Access Error Interrupt Enable
      IPIEIE         : RSER_IPIEIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_IPIEIE_Field_0;
      --  IP Command Trigger during AHB Access Error Interrupt Enable
      IPAEIE         : RSER_IPAEIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_IPAEIE_Field_0;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  IP Command Usage Error Interrupt Enable
      IUEIE          : RSER_IUEIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_IUEIE_Field_0;
      --  AHB Buffer Overflow Interrupt Enable
      ABOIE          : RSER_ABOIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_ABOIE_Field_0;
      --  AHB Illegal Burst Size Interrupt Enable
      AIBSIE         : RSER_AIBSIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_AIBSIE_Field_0;
      --  AHB Illegal transaction interrupt enable.
      AITIE          : RSER_AITIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_AITIE_Field_0;
      --  AHB Sequence Error Interrupt Enable: Triggered by ABSEF flags of
      --  QSPI_FR
      ABSEIE         : RSER_ABSEIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_ABSEIE_Field_0;
      --  RX Buffer Drain Interrupt Enable: Enables generation of IRQ requests
      --  for RX Buffer Drain
      RBDIE          : RSER_RBDIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_RBDIE_Field_0;
      --  RX Buffer Overflow Interrupt Enable
      RBOIE          : RSER_RBOIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_RBOIE_Field_0;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  RX Buffer Drain DMA Enable: Enables generation of DMA requests for RX
      --  Buffer Drain
      RBDDE          : RSER_RBDDE_Field :=
                        NRF_SVD.QuadSPI0.RSER_RBDDE_Field_0;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Illegal Instruction Error Interrupt Enable. Triggered by ILLINE flag
      --  in QSPI_FR
      ILLINIE        : RSER_ILLINIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_ILLINIE_Field_0;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  TX Buffer Fill DMA Enable
      TBFDE          : RSER_TBFDE_Field :=
                        NRF_SVD.QuadSPI0.RSER_TBFDE_Field_0;
      --  TX Buffer Underrun Interrupt Enable
      TBUIE          : RSER_TBUIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_TBUIE_Field_0;
      --  TX Buffer Fill Interrupt Enable
      TBFIE          : RSER_TBFIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_TBFIE_Field_0;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Data Learning Pattern Failure Interrupt enable . Triggered by DLPFF
      --  flag in QSPI_FR register
      DLPFIE         : RSER_DLPFIE_Field :=
                        NRF_SVD.QuadSPI0.RSER_DLPFIE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_RSER_Register use record
      TFIE           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      IPGEIE         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      IPIEIE         at 0 range 6 .. 6;
      IPAEIE         at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      IUEIE          at 0 range 11 .. 11;
      ABOIE          at 0 range 12 .. 12;
      AIBSIE         at 0 range 13 .. 13;
      AITIE          at 0 range 14 .. 14;
      ABSEIE         at 0 range 15 .. 15;
      RBDIE          at 0 range 16 .. 16;
      RBOIE          at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      RBDDE          at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      ILLINIE        at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      TBFDE          at 0 range 25 .. 25;
      TBUIE          at 0 range 26 .. 26;
      TBFIE          at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      DLPFIE         at 0 range 31 .. 31;
   end record;

   subtype QuadSPI0_SPNDST_SPDBUF_Field is HAL.UInt2;
   subtype QuadSPI0_SPNDST_DATLFT_Field is HAL.UInt6;

   --  Sequence Suspend Status Register
   type QuadSPI0_SPNDST_Register is record
      --  Read-only. When set, it signifies that a sequence is in suspended
      --  state
      SUSPND         : Boolean;
      --  unspecified
      Reserved_1_5   : HAL.UInt5;
      --  Read-only. Suspended Buffer: Provides the suspended buffer number.
      --  Valid only when SUSPND is set to 1'b1
      SPDBUF         : QuadSPI0_SPNDST_SPDBUF_Field;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Data left: Provides information about the amount of data
      --  left to be read in the suspended sequence
      DATLFT         : QuadSPI0_SPNDST_DATLFT_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SPNDST_Register use record
      SUSPND         at 0 range 0 .. 0;
      Reserved_1_5   at 0 range 1 .. 5;
      SPDBUF         at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      DATLFT         at 0 range 9 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Sequence Pointer Clear Register
   type QuadSPI0_SPTRCLR_Register is record
      --  Write-only. Buffer Pointer Clear: 1: Clears the sequence pointer for
      --  AHB accesses as defined in QuadSPI_BFGENCR
      BFPTRC        : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Write-only. IP Pointer Clear: 1: Clears the sequence pointer for IP
      --  accesses as defined in QuadSPI_IPCR This is a self-clearing field
      IPPTRC        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SPTRCLR_Register use record
      BFPTRC        at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      IPPTRC        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype QuadSPI0_SFA1AD_TPADA1_Field is HAL.UInt22;

   --  Serial Flash A1 Top Address
   type QuadSPI0_SFA1AD_Register is record
      --  unspecified
      Reserved_0_9 : HAL.UInt10 := 16#0#;
      --  Top address for Serial Flash A1. In effect, TPADxx is the first
      --  location of the next memory.
      TPADA1       : QuadSPI0_SFA1AD_TPADA1_Field := 16#1BFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SFA1AD_Register use record
      Reserved_0_9 at 0 range 0 .. 9;
      TPADA1       at 0 range 10 .. 31;
   end record;

   subtype QuadSPI0_SFA2AD_TPADA2_Field is HAL.UInt22;

   --  Serial Flash A2 Top Address
   type QuadSPI0_SFA2AD_Register is record
      --  unspecified
      Reserved_0_9 : HAL.UInt10 := 16#0#;
      --  Top address for Serial Flash A2. In effect, TPxxAD is the first
      --  location of the next memory.
      TPADA2       : QuadSPI0_SFA2AD_TPADA2_Field := 16#1BFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SFA2AD_Register use record
      Reserved_0_9 at 0 range 0 .. 9;
      TPADA2       at 0 range 10 .. 31;
   end record;

   subtype QuadSPI0_SFB1AD_TPADB1_Field is HAL.UInt22;

   --  Serial Flash B1Top Address
   type QuadSPI0_SFB1AD_Register is record
      --  unspecified
      Reserved_0_9 : HAL.UInt10 := 16#0#;
      --  Top address for Serial Flash B1.In effect, TPxxAD is the first
      --  location of the next memory.
      TPADB1       : QuadSPI0_SFB1AD_TPADB1_Field := 16#1BFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SFB1AD_Register use record
      Reserved_0_9 at 0 range 0 .. 9;
      TPADB1       at 0 range 10 .. 31;
   end record;

   subtype QuadSPI0_SFB2AD_TPADB2_Field is HAL.UInt22;

   --  Serial Flash B2Top Address
   type QuadSPI0_SFB2AD_Register is record
      --  unspecified
      Reserved_0_9 : HAL.UInt10 := 16#0#;
      --  Top address for Serial Flash B2. In effect, TPxxAD is the first
      --  location of the next memory.
      TPADB2       : QuadSPI0_SFB2AD_TPADB2_Field := 16#1BFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_SFB2AD_Register use record
      Reserved_0_9 at 0 range 0 .. 9;
      TPADB2       at 0 range 10 .. 31;
   end record;

   --  RX Buffer Data Register

   --  RX Buffer Data Register
   type QuadSPI0_RBDR_Registers is array (0 .. 15) of HAL.UInt32
     with Volatile;

   --  LUT Lock Configuration Register
   type QuadSPI0_LCKCR_Register is record
      --  Locks the LUT when the following condition is met: This register is
      --  written just after the LUTKEYLUT Key Register The LUT key register
      --  was written with 0x5AF05AF0 key
      LOCK          : Boolean := False;
      --  Unlocks the LUT when the following two conditions are met: 1
      UNLOCK        : Boolean := True;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_LCKCR_Register use record
      LOCK          at 0 range 0 .. 0;
      UNLOCK        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype QuadSPI0_LUT_OPRND0_Field is HAL.UInt8;

   --  Pad information for INSTR0.
   type LUT_PAD0_Field is
     (
      --  1 Pad
      LUT_PAD0_Field_00,
      --  2 Pads
      LUT_PAD0_Field_01,
      --  4 Pads
      LUT_PAD0_Field_10,
      --  8 Pads
      LUT_PAD0_Field_11)
     with Size => 2;
   for LUT_PAD0_Field use
     (LUT_PAD0_Field_00 => 0,
      LUT_PAD0_Field_01 => 1,
      LUT_PAD0_Field_10 => 2,
      LUT_PAD0_Field_11 => 3);

   subtype QuadSPI0_LUT_INSTR0_Field is HAL.UInt6;
   subtype QuadSPI0_LUT_OPRND1_Field is HAL.UInt8;

   --  Pad information for INSTR1.
   type LUT_PAD1_Field is
     (
      --  1 Pad
      LUT_PAD1_Field_00,
      --  2 Pads
      LUT_PAD1_Field_01,
      --  4 Pads
      LUT_PAD1_Field_10,
      --  8 Pads
      LUT_PAD1_Field_11)
     with Size => 2;
   for LUT_PAD1_Field use
     (LUT_PAD1_Field_00 => 0,
      LUT_PAD1_Field_01 => 1,
      LUT_PAD1_Field_10 => 2,
      LUT_PAD1_Field_11 => 3);

   subtype QuadSPI0_LUT_INSTR1_Field is HAL.UInt6;

   --  Look-up Table register
   type QuadSPI0_LUT_Register is record
      --  Operand for INSTR0.
      OPRND0 : QuadSPI0_LUT_OPRND0_Field := 16#0#;
      --  Pad information for INSTR0.
      PAD0   : LUT_PAD0_Field := NRF_SVD.QuadSPI0.LUT_PAD0_Field_00;
      --  Instruction 0
      INSTR0 : QuadSPI0_LUT_INSTR0_Field := 16#0#;
      --  Operand for INSTR1.
      OPRND1 : QuadSPI0_LUT_OPRND1_Field := 16#0#;
      --  Pad information for INSTR1.
      PAD1   : LUT_PAD1_Field := NRF_SVD.QuadSPI0.LUT_PAD1_Field_00;
      --  Instruction 1
      INSTR1 : QuadSPI0_LUT_INSTR1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QuadSPI0_LUT_Register use record
      OPRND0 at 0 range 0 .. 7;
      PAD0   at 0 range 8 .. 9;
      INSTR0 at 0 range 10 .. 15;
      OPRND1 at 0 range 16 .. 23;
      PAD1   at 0 range 24 .. 25;
      INSTR1 at 0 range 26 .. 31;
   end record;

   --  Look-up Table register
   type QuadSPI0_LUT_Registers is array (0 .. 63) of QuadSPI0_LUT_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  QuadSPI
   type QuadSPI0_Peripheral is record
      --  Module Configuration Register
      MCR     : aliased QuadSPI0_MCR_Register;
      --  IP Configuration Register
      IPCR    : aliased QuadSPI0_IPCR_Register;
      --  Flash Configuration Register
      FLSHCR  : aliased QuadSPI0_FLSHCR_Register;
      --  Buffer0 Configuration Register
      BUF0CR  : aliased QuadSPI0_BUF0CR_Register;
      --  Buffer1 Configuration Register
      BUF1CR  : aliased QuadSPI0_BUF1CR_Register;
      --  Buffer2 Configuration Register
      BUF2CR  : aliased QuadSPI0_BUF2CR_Register;
      --  Buffer3 Configuration Register
      BUF3CR  : aliased QuadSPI0_BUF3CR_Register;
      --  Buffer Generic Configuration Register
      BFGENCR : aliased QuadSPI0_BFGENCR_Register;
      --  SOC Configuration Register
      SOCCR   : aliased QuadSPI0_SOCCR_Register;
      --  Buffer0 Top Index Register
      BUF0IND : aliased QuadSPI0_BUF0IND_Register;
      --  Buffer1 Top Index Register
      BUF1IND : aliased QuadSPI0_BUF1IND_Register;
      --  Buffer2 Top Index Register
      BUF2IND : aliased QuadSPI0_BUF2IND_Register;
      --  Serial Flash Address Register
      SFAR    : aliased HAL.UInt32;
      --  Serial Flash Address Configuration Register
      SFACR   : aliased QuadSPI0_SFACR_Register;
      --  Sampling Register
      SMPR    : aliased QuadSPI0_SMPR_Register;
      --  RX Buffer Status Register
      RBSR    : aliased QuadSPI0_RBSR_Register;
      --  RX Buffer Control Register
      RBCT    : aliased QuadSPI0_RBCT_Register;
      --  TX Buffer Status Register
      TBSR    : aliased QuadSPI0_TBSR_Register;
      --  TX Buffer Data Register
      TBDR    : aliased HAL.UInt32;
      --  Tx Buffer Control Register
      TBCT    : aliased QuadSPI0_TBCT_Register;
      --  Status Register
      SR      : aliased QuadSPI0_SR_Register;
      --  Flag Register
      FR      : aliased QuadSPI0_FR_Register;
      --  Interrupt and DMA Request Select and Enable Register
      RSER    : aliased QuadSPI0_RSER_Register;
      --  Sequence Suspend Status Register
      SPNDST  : aliased QuadSPI0_SPNDST_Register;
      --  Sequence Pointer Clear Register
      SPTRCLR : aliased QuadSPI0_SPTRCLR_Register;
      --  Serial Flash A1 Top Address
      SFA1AD  : aliased QuadSPI0_SFA1AD_Register;
      --  Serial Flash A2 Top Address
      SFA2AD  : aliased QuadSPI0_SFA2AD_Register;
      --  Serial Flash B1Top Address
      SFB1AD  : aliased QuadSPI0_SFB1AD_Register;
      --  Serial Flash B2Top Address
      SFB2AD  : aliased QuadSPI0_SFB2AD_Register;
      --  Data Learn Pattern Register
      DLPR    : aliased HAL.UInt32;
      --  RX Buffer Data Register
      RBDR    : aliased QuadSPI0_RBDR_Registers;
      --  LUT Key Register
      LUTKEY  : aliased HAL.UInt32;
      --  LUT Lock Configuration Register
      LCKCR   : aliased QuadSPI0_LCKCR_Register;
      --  Look-up Table register
      LUT     : aliased QuadSPI0_LUT_Registers;
   end record
     with Volatile;

   for QuadSPI0_Peripheral use record
      MCR     at 16#0# range 0 .. 31;
      IPCR    at 16#8# range 0 .. 31;
      FLSHCR  at 16#C# range 0 .. 31;
      BUF0CR  at 16#10# range 0 .. 31;
      BUF1CR  at 16#14# range 0 .. 31;
      BUF2CR  at 16#18# range 0 .. 31;
      BUF3CR  at 16#1C# range 0 .. 31;
      BFGENCR at 16#20# range 0 .. 31;
      SOCCR   at 16#24# range 0 .. 31;
      BUF0IND at 16#30# range 0 .. 31;
      BUF1IND at 16#34# range 0 .. 31;
      BUF2IND at 16#38# range 0 .. 31;
      SFAR    at 16#100# range 0 .. 31;
      SFACR   at 16#104# range 0 .. 31;
      SMPR    at 16#108# range 0 .. 31;
      RBSR    at 16#10C# range 0 .. 31;
      RBCT    at 16#110# range 0 .. 31;
      TBSR    at 16#150# range 0 .. 31;
      TBDR    at 16#154# range 0 .. 31;
      TBCT    at 16#158# range 0 .. 31;
      SR      at 16#15C# range 0 .. 31;
      FR      at 16#160# range 0 .. 31;
      RSER    at 16#164# range 0 .. 31;
      SPNDST  at 16#168# range 0 .. 31;
      SPTRCLR at 16#16C# range 0 .. 31;
      SFA1AD  at 16#180# range 0 .. 31;
      SFA2AD  at 16#184# range 0 .. 31;
      SFB1AD  at 16#188# range 0 .. 31;
      SFB2AD  at 16#18C# range 0 .. 31;
      DLPR    at 16#190# range 0 .. 31;
      RBDR    at 16#200# range 0 .. 511;
      LUTKEY  at 16#300# range 0 .. 31;
      LCKCR   at 16#304# range 0 .. 31;
      LUT     at 16#310# range 0 .. 2047;
   end record;

   --  QuadSPI
   QuadSPI0_Periph : aliased QuadSPI0_Peripheral
     with Import, Address => QuadSPI0_Base;

end NRF_SVD.QuadSPI0;
