--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKS22F12.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LPI2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Specification Number
   type VERID_FEATURE_Field is
     (
      --  Master only with standard feature set.
      VERID_FEATURE_Field_10,
      --  Master and slave with standard feature set.
      VERID_FEATURE_Field_11)
     with Size => 16;
   for VERID_FEATURE_Field use
     (VERID_FEATURE_Field_10 => 2,
      VERID_FEATURE_Field_11 => 3);

   subtype LPI2C0_VERID_MINOR_Field is HAL.UInt8;
   subtype LPI2C0_VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type LPI2C0_VERID_Register is record
      --  Read-only. Feature Specification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : LPI2C0_VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : LPI2C0_VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   subtype LPI2C0_PARAM_MTXFIFO_Field is HAL.UInt4;
   subtype LPI2C0_PARAM_MRXFIFO_Field is HAL.UInt4;

   --  Parameter Register
   type LPI2C0_PARAM_Register is record
      --  Read-only. Master Transmit FIFO Size
      MTXFIFO        : LPI2C0_PARAM_MTXFIFO_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Master Receive FIFO Size
      MRXFIFO        : LPI2C0_PARAM_MRXFIFO_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_PARAM_Register use record
      MTXFIFO        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      MRXFIFO        at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Master Enable
   type MCR_MEN_Field is
     (
      --  Master logic is disabled.
      MCR_MEN_Field_0,
      --  Master logic is enabled.
      MCR_MEN_Field_1)
     with Size => 1;
   for MCR_MEN_Field use
     (MCR_MEN_Field_0 => 0,
      MCR_MEN_Field_1 => 1);

   --  Software Reset
   type MCR_RST_Field is
     (
      --  Master logic is not reset.
      MCR_RST_Field_0,
      --  Master logic is reset.
      MCR_RST_Field_1)
     with Size => 1;
   for MCR_RST_Field use
     (MCR_RST_Field_0 => 0,
      MCR_RST_Field_1 => 1);

   --  Doze mode enable
   type MCR_DOZEN_Field is
     (
      --  Master is enabled in Doze mode.
      MCR_DOZEN_Field_0,
      --  Master is disabled in Doze mode.
      MCR_DOZEN_Field_1)
     with Size => 1;
   for MCR_DOZEN_Field use
     (MCR_DOZEN_Field_0 => 0,
      MCR_DOZEN_Field_1 => 1);

   --  Debug Enable
   type MCR_DBGEN_Field is
     (
      --  Master is disabled in debug mode.
      MCR_DBGEN_Field_0,
      --  Master is enabled in debug mode.
      MCR_DBGEN_Field_1)
     with Size => 1;
   for MCR_DBGEN_Field use
     (MCR_DBGEN_Field_0 => 0,
      MCR_DBGEN_Field_1 => 1);

   --  Reset Transmit FIFO
   type MCR_RTF_Field is
     (
      --  No effect.
      MCR_RTF_Field_0,
      --  Transmit FIFO is reset.
      MCR_RTF_Field_1)
     with Size => 1;
   for MCR_RTF_Field use
     (MCR_RTF_Field_0 => 0,
      MCR_RTF_Field_1 => 1);

   --  Reset Receive FIFO
   type MCR_RRF_Field is
     (
      --  No effect.
      MCR_RRF_Field_0,
      --  Receive FIFO is reset.
      MCR_RRF_Field_1)
     with Size => 1;
   for MCR_RRF_Field use
     (MCR_RRF_Field_0 => 0,
      MCR_RRF_Field_1 => 1);

   --  Master Control Register
   type LPI2C0_MCR_Register is record
      --  Master Enable
      MEN            : MCR_MEN_Field := NRF_SVD.LPI2C.MCR_MEN_Field_0;
      --  Software Reset
      RST            : MCR_RST_Field := NRF_SVD.LPI2C.MCR_RST_Field_0;
      --  Doze mode enable
      DOZEN          : MCR_DOZEN_Field := NRF_SVD.LPI2C.MCR_DOZEN_Field_0;
      --  Debug Enable
      DBGEN          : MCR_DBGEN_Field := NRF_SVD.LPI2C.MCR_DBGEN_Field_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Reset Transmit FIFO
      RTF            : MCR_RTF_Field := NRF_SVD.LPI2C.MCR_RTF_Field_0;
      --  Write-only. Reset Receive FIFO
      RRF            : MCR_RRF_Field := NRF_SVD.LPI2C.MCR_RRF_Field_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MCR_Register use record
      MEN            at 0 range 0 .. 0;
      RST            at 0 range 1 .. 1;
      DOZEN          at 0 range 2 .. 2;
      DBGEN          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RTF            at 0 range 8 .. 8;
      RRF            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transmit Data Flag
   type MSR_TDF_Field is
     (
      --  Transmit data not requested.
      MSR_TDF_Field_0,
      --  Transmit data is requested.
      MSR_TDF_Field_1)
     with Size => 1;
   for MSR_TDF_Field use
     (MSR_TDF_Field_0 => 0,
      MSR_TDF_Field_1 => 1);

   --  Receive Data Flag
   type MSR_RDF_Field is
     (
      --  Receive Data is not ready.
      MSR_RDF_Field_0,
      --  Receive data is ready.
      MSR_RDF_Field_1)
     with Size => 1;
   for MSR_RDF_Field use
     (MSR_RDF_Field_0 => 0,
      MSR_RDF_Field_1 => 1);

   --  End Packet Flag
   type MSR_EPF_Field is
     (
      --  Master has not generated a STOP or Repeated START condition.
      MSR_EPF_Field_0,
      --  Master has generated a STOP or Repeated START condition.
      MSR_EPF_Field_1)
     with Size => 1;
   for MSR_EPF_Field use
     (MSR_EPF_Field_0 => 0,
      MSR_EPF_Field_1 => 1);

   --  STOP Detect Flag
   type MSR_SDF_Field is
     (
      --  Master has not generated a STOP condition.
      MSR_SDF_Field_0,
      --  Master has generated a STOP condition.
      MSR_SDF_Field_1)
     with Size => 1;
   for MSR_SDF_Field use
     (MSR_SDF_Field_0 => 0,
      MSR_SDF_Field_1 => 1);

   --  NACK Detect Flag
   type MSR_NDF_Field is
     (
      --  Unexpected NACK not detected.
      MSR_NDF_Field_0,
      --  Unexpected NACK was detected.
      MSR_NDF_Field_1)
     with Size => 1;
   for MSR_NDF_Field use
     (MSR_NDF_Field_0 => 0,
      MSR_NDF_Field_1 => 1);

   --  Arbitration Lost Flag
   type MSR_ALF_Field is
     (
      --  Master has not lost arbitration.
      MSR_ALF_Field_0,
      --  Master has lost arbitration.
      MSR_ALF_Field_1)
     with Size => 1;
   for MSR_ALF_Field use
     (MSR_ALF_Field_0 => 0,
      MSR_ALF_Field_1 => 1);

   --  FIFO Error Flag
   type MSR_FEF_Field is
     (
      --  No error.
      MSR_FEF_Field_0,
      --  Master sending or receiving data without START condition.
      MSR_FEF_Field_1)
     with Size => 1;
   for MSR_FEF_Field use
     (MSR_FEF_Field_0 => 0,
      MSR_FEF_Field_1 => 1);

   --  Pin Low Timeout Flag
   type MSR_PLTF_Field is
     (
      --  Pin low timeout has not occurred or is disabled.
      MSR_PLTF_Field_0,
      --  Pin low timeout has occurred.
      MSR_PLTF_Field_1)
     with Size => 1;
   for MSR_PLTF_Field use
     (MSR_PLTF_Field_0 => 0,
      MSR_PLTF_Field_1 => 1);

   --  Data Match Flag
   type MSR_DMF_Field is
     (
      --  Have not received matching data.
      MSR_DMF_Field_0,
      --  Have received matching data.
      MSR_DMF_Field_1)
     with Size => 1;
   for MSR_DMF_Field use
     (MSR_DMF_Field_0 => 0,
      MSR_DMF_Field_1 => 1);

   --  Master Busy Flag
   type MSR_MBF_Field is
     (
      --  I2C Master is idle.
      MSR_MBF_Field_0,
      --  I2C Master is busy.
      MSR_MBF_Field_1)
     with Size => 1;
   for MSR_MBF_Field use
     (MSR_MBF_Field_0 => 0,
      MSR_MBF_Field_1 => 1);

   --  Bus Busy Flag
   type MSR_BBF_Field is
     (
      --  I2C Bus is idle.
      MSR_BBF_Field_0,
      --  I2C Bus is busy.
      MSR_BBF_Field_1)
     with Size => 1;
   for MSR_BBF_Field use
     (MSR_BBF_Field_0 => 0,
      MSR_BBF_Field_1 => 1);

   --  Master Status Register
   type LPI2C0_MSR_Register is record
      --  Read-only. Transmit Data Flag
      TDF            : MSR_TDF_Field := NRF_SVD.LPI2C.MSR_TDF_Field_1;
      --  Read-only. Receive Data Flag
      RDF            : MSR_RDF_Field := NRF_SVD.LPI2C.MSR_RDF_Field_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  End Packet Flag
      EPF            : MSR_EPF_Field := NRF_SVD.LPI2C.MSR_EPF_Field_0;
      --  STOP Detect Flag
      SDF            : MSR_SDF_Field := NRF_SVD.LPI2C.MSR_SDF_Field_0;
      --  NACK Detect Flag
      NDF            : MSR_NDF_Field := NRF_SVD.LPI2C.MSR_NDF_Field_0;
      --  Arbitration Lost Flag
      ALF            : MSR_ALF_Field := NRF_SVD.LPI2C.MSR_ALF_Field_0;
      --  FIFO Error Flag
      FEF            : MSR_FEF_Field := NRF_SVD.LPI2C.MSR_FEF_Field_0;
      --  Pin Low Timeout Flag
      PLTF           : MSR_PLTF_Field := NRF_SVD.LPI2C.MSR_PLTF_Field_0;
      --  Data Match Flag
      DMF            : MSR_DMF_Field := NRF_SVD.LPI2C.MSR_DMF_Field_0;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Read-only. Master Busy Flag
      MBF            : MSR_MBF_Field := NRF_SVD.LPI2C.MSR_MBF_Field_0;
      --  Read-only. Bus Busy Flag
      BBF            : MSR_BBF_Field := NRF_SVD.LPI2C.MSR_BBF_Field_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MSR_Register use record
      TDF            at 0 range 0 .. 0;
      RDF            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      EPF            at 0 range 8 .. 8;
      SDF            at 0 range 9 .. 9;
      NDF            at 0 range 10 .. 10;
      ALF            at 0 range 11 .. 11;
      FEF            at 0 range 12 .. 12;
      PLTF           at 0 range 13 .. 13;
      DMF            at 0 range 14 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MBF            at 0 range 24 .. 24;
      BBF            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Transmit Data Interrupt Enable
   type MIER_TDIE_Field is
     (
      --  Interrupt disabled.
      MIER_TDIE_Field_0,
      --  Interrupt enabled
      MIER_TDIE_Field_1)
     with Size => 1;
   for MIER_TDIE_Field use
     (MIER_TDIE_Field_0 => 0,
      MIER_TDIE_Field_1 => 1);

   --  Receive Data Interrupt Enable
   type MIER_RDIE_Field is
     (
      --  Interrupt disabled.
      MIER_RDIE_Field_0,
      --  Interrupt enabled.
      MIER_RDIE_Field_1)
     with Size => 1;
   for MIER_RDIE_Field use
     (MIER_RDIE_Field_0 => 0,
      MIER_RDIE_Field_1 => 1);

   --  End Packet Interrupt Enable
   type MIER_EPIE_Field is
     (
      --  Interrupt disabled.
      MIER_EPIE_Field_0,
      --  Interrupt enabled.
      MIER_EPIE_Field_1)
     with Size => 1;
   for MIER_EPIE_Field use
     (MIER_EPIE_Field_0 => 0,
      MIER_EPIE_Field_1 => 1);

   --  STOP Detect Interrupt Enable
   type MIER_SDIE_Field is
     (
      --  Interrupt disabled.
      MIER_SDIE_Field_0,
      --  Interrupt enabled.
      MIER_SDIE_Field_1)
     with Size => 1;
   for MIER_SDIE_Field use
     (MIER_SDIE_Field_0 => 0,
      MIER_SDIE_Field_1 => 1);

   --  NACK Detect Interrupt Enable
   type MIER_NDIE_Field is
     (
      --  Interrupt disabled.
      MIER_NDIE_Field_0,
      --  Interrupt enabled.
      MIER_NDIE_Field_1)
     with Size => 1;
   for MIER_NDIE_Field use
     (MIER_NDIE_Field_0 => 0,
      MIER_NDIE_Field_1 => 1);

   --  Arbitration Lost Interrupt Enable
   type MIER_ALIE_Field is
     (
      --  Interrupt disabled.
      MIER_ALIE_Field_0,
      --  Interrupt enabled.
      MIER_ALIE_Field_1)
     with Size => 1;
   for MIER_ALIE_Field use
     (MIER_ALIE_Field_0 => 0,
      MIER_ALIE_Field_1 => 1);

   --  FIFO Error Interrupt Enable
   type MIER_FEIE_Field is
     (
      --  Interrupt enabled.
      MIER_FEIE_Field_0,
      --  Interrupt disabled.
      MIER_FEIE_Field_1)
     with Size => 1;
   for MIER_FEIE_Field use
     (MIER_FEIE_Field_0 => 0,
      MIER_FEIE_Field_1 => 1);

   --  Pin Low Timeout Interrupt Enable
   type MIER_PLTIE_Field is
     (
      --  Interrupt disabled.
      MIER_PLTIE_Field_0,
      --  Interrupt enabled.
      MIER_PLTIE_Field_1)
     with Size => 1;
   for MIER_PLTIE_Field use
     (MIER_PLTIE_Field_0 => 0,
      MIER_PLTIE_Field_1 => 1);

   --  Data Match Interrupt Enable
   type MIER_DMIE_Field is
     (
      --  Interrupt disabled.
      MIER_DMIE_Field_0,
      --  Interrupt enabled.
      MIER_DMIE_Field_1)
     with Size => 1;
   for MIER_DMIE_Field use
     (MIER_DMIE_Field_0 => 0,
      MIER_DMIE_Field_1 => 1);

   --  Master Interrupt Enable Register
   type LPI2C0_MIER_Register is record
      --  Transmit Data Interrupt Enable
      TDIE           : MIER_TDIE_Field := NRF_SVD.LPI2C.MIER_TDIE_Field_0;
      --  Receive Data Interrupt Enable
      RDIE           : MIER_RDIE_Field := NRF_SVD.LPI2C.MIER_RDIE_Field_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  End Packet Interrupt Enable
      EPIE           : MIER_EPIE_Field := NRF_SVD.LPI2C.MIER_EPIE_Field_0;
      --  STOP Detect Interrupt Enable
      SDIE           : MIER_SDIE_Field := NRF_SVD.LPI2C.MIER_SDIE_Field_0;
      --  NACK Detect Interrupt Enable
      NDIE           : MIER_NDIE_Field := NRF_SVD.LPI2C.MIER_NDIE_Field_0;
      --  Arbitration Lost Interrupt Enable
      ALIE           : MIER_ALIE_Field := NRF_SVD.LPI2C.MIER_ALIE_Field_0;
      --  FIFO Error Interrupt Enable
      FEIE           : MIER_FEIE_Field := NRF_SVD.LPI2C.MIER_FEIE_Field_0;
      --  Pin Low Timeout Interrupt Enable
      PLTIE          : MIER_PLTIE_Field := NRF_SVD.LPI2C.MIER_PLTIE_Field_0;
      --  Data Match Interrupt Enable
      DMIE           : MIER_DMIE_Field := NRF_SVD.LPI2C.MIER_DMIE_Field_0;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MIER_Register use record
      TDIE           at 0 range 0 .. 0;
      RDIE           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      EPIE           at 0 range 8 .. 8;
      SDIE           at 0 range 9 .. 9;
      NDIE           at 0 range 10 .. 10;
      ALIE           at 0 range 11 .. 11;
      FEIE           at 0 range 12 .. 12;
      PLTIE          at 0 range 13 .. 13;
      DMIE           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Transmit Data DMA Enable
   type MDER_TDDE_Field is
     (
      --  DMA request disabled.
      MDER_TDDE_Field_0,
      --  DMA request enabled
      MDER_TDDE_Field_1)
     with Size => 1;
   for MDER_TDDE_Field use
     (MDER_TDDE_Field_0 => 0,
      MDER_TDDE_Field_1 => 1);

   --  Receive Data DMA Enable
   type MDER_RDDE_Field is
     (
      --  DMA request disabled.
      MDER_RDDE_Field_0,
      --  DMA request enabled.
      MDER_RDDE_Field_1)
     with Size => 1;
   for MDER_RDDE_Field use
     (MDER_RDDE_Field_0 => 0,
      MDER_RDDE_Field_1 => 1);

   --  Master DMA Enable Register
   type LPI2C0_MDER_Register is record
      --  Transmit Data DMA Enable
      TDDE          : MDER_TDDE_Field := NRF_SVD.LPI2C.MDER_TDDE_Field_0;
      --  Receive Data DMA Enable
      RDDE          : MDER_RDDE_Field := NRF_SVD.LPI2C.MDER_RDDE_Field_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MDER_Register use record
      TDDE          at 0 range 0 .. 0;
      RDDE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Host Request Enable
   type MCFGR0_HREN_Field is
     (
      --  Host request input is disabled.
      MCFGR0_HREN_Field_0,
      --  Host request input is enabled.
      MCFGR0_HREN_Field_1)
     with Size => 1;
   for MCFGR0_HREN_Field use
     (MCFGR0_HREN_Field_0 => 0,
      MCFGR0_HREN_Field_1 => 1);

   --  Host Request Polarity
   type MCFGR0_HRPOL_Field is
     (
      --  Active low.
      MCFGR0_HRPOL_Field_0,
      --  Active high.
      MCFGR0_HRPOL_Field_1)
     with Size => 1;
   for MCFGR0_HRPOL_Field use
     (MCFGR0_HRPOL_Field_0 => 0,
      MCFGR0_HRPOL_Field_1 => 1);

   --  Host Request Select
   type MCFGR0_HRSEL_Field is
     (
      --  Host request input is pin LPI2C_HREQ.
      MCFGR0_HRSEL_Field_0,
      --  Host request input is input trigger.
      MCFGR0_HRSEL_Field_1)
     with Size => 1;
   for MCFGR0_HRSEL_Field use
     (MCFGR0_HRSEL_Field_0 => 0,
      MCFGR0_HRSEL_Field_1 => 1);

   --  Circular FIFO Enable
   type MCFGR0_CIRFIFO_Field is
     (
      --  Circular FIFO is disabled.
      MCFGR0_CIRFIFO_Field_0,
      --  Circular FIFO is enabled.
      MCFGR0_CIRFIFO_Field_1)
     with Size => 1;
   for MCFGR0_CIRFIFO_Field use
     (MCFGR0_CIRFIFO_Field_0 => 0,
      MCFGR0_CIRFIFO_Field_1 => 1);

   --  Receive Data Match Only
   type MCFGR0_RDMO_Field is
     (
      --  Received data is stored in the receive FIFO as normal.
      MCFGR0_RDMO_Field_0,
      --  Received data is discarded unless the RMF is set.
      MCFGR0_RDMO_Field_1)
     with Size => 1;
   for MCFGR0_RDMO_Field use
     (MCFGR0_RDMO_Field_0 => 0,
      MCFGR0_RDMO_Field_1 => 1);

   --  Master Configuration Register 0
   type LPI2C0_MCFGR0_Register is record
      --  Host Request Enable
      HREN           : MCFGR0_HREN_Field := NRF_SVD.LPI2C.MCFGR0_HREN_Field_0;
      --  Host Request Polarity
      HRPOL          : MCFGR0_HRPOL_Field :=
                        NRF_SVD.LPI2C.MCFGR0_HRPOL_Field_0;
      --  Host Request Select
      HRSEL          : MCFGR0_HRSEL_Field :=
                        NRF_SVD.LPI2C.MCFGR0_HRSEL_Field_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Circular FIFO Enable
      CIRFIFO        : MCFGR0_CIRFIFO_Field :=
                        NRF_SVD.LPI2C.MCFGR0_CIRFIFO_Field_0;
      --  Receive Data Match Only
      RDMO           : MCFGR0_RDMO_Field := NRF_SVD.LPI2C.MCFGR0_RDMO_Field_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MCFGR0_Register use record
      HREN           at 0 range 0 .. 0;
      HRPOL          at 0 range 1 .. 1;
      HRSEL          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CIRFIFO        at 0 range 8 .. 8;
      RDMO           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Prescaler
   type MCFGR1_PRESCALE_Field is
     (
      --  Divide by 1.
      MCFGR1_PRESCALE_Field_000,
      --  Divide by 2.
      MCFGR1_PRESCALE_Field_001,
      --  Divide by 4.
      MCFGR1_PRESCALE_Field_010,
      --  Divide by 8.
      MCFGR1_PRESCALE_Field_011,
      --  Divide by 16.
      MCFGR1_PRESCALE_Field_100,
      --  Divide by 32.
      MCFGR1_PRESCALE_Field_101,
      --  Divide by 64.
      MCFGR1_PRESCALE_Field_110,
      --  Divide by 128.
      MCFGR1_PRESCALE_Field_111)
     with Size => 3;
   for MCFGR1_PRESCALE_Field use
     (MCFGR1_PRESCALE_Field_000 => 0,
      MCFGR1_PRESCALE_Field_001 => 1,
      MCFGR1_PRESCALE_Field_010 => 2,
      MCFGR1_PRESCALE_Field_011 => 3,
      MCFGR1_PRESCALE_Field_100 => 4,
      MCFGR1_PRESCALE_Field_101 => 5,
      MCFGR1_PRESCALE_Field_110 => 6,
      MCFGR1_PRESCALE_Field_111 => 7);

   --  Automatic STOP Generation
   type MCFGR1_AUTOSTOP_Field is
     (
      --  No effect.
      MCFGR1_AUTOSTOP_Field_0,
      --  STOP condition is automatically generated whenever the transmit FIFO
      --  is empty and LPI2C master is busy.
      MCFGR1_AUTOSTOP_Field_1)
     with Size => 1;
   for MCFGR1_AUTOSTOP_Field use
     (MCFGR1_AUTOSTOP_Field_0 => 0,
      MCFGR1_AUTOSTOP_Field_1 => 1);

   --  When set, the received NACK field is ignored and assumed to be ACK
   type MCFGR1_IGNACK_Field is
     (
      --  LPI2C Master will receive ACK and NACK normally.
      MCFGR1_IGNACK_Field_0,
      --  LPI2C Master will treat a received NACK as if it was an ACK.
      MCFGR1_IGNACK_Field_1)
     with Size => 1;
   for MCFGR1_IGNACK_Field use
     (MCFGR1_IGNACK_Field_0 => 0,
      MCFGR1_IGNACK_Field_1 => 1);

   --  Timeout Configuration
   type MCFGR1_TIMECFG_Field is
     (
      --  Pin Low Timeout Flag will set if SCL is low for longer than the
      --  configured timeout.
      MCFGR1_TIMECFG_Field_0,
      --  Pin Low Timeout Flag will set if either SCL or SDA is low for longer
      --  than the configured timeout.
      MCFGR1_TIMECFG_Field_1)
     with Size => 1;
   for MCFGR1_TIMECFG_Field use
     (MCFGR1_TIMECFG_Field_0 => 0,
      MCFGR1_TIMECFG_Field_1 => 1);

   --  Match Configuration
   type MCFGR1_MATCFG_Field is
     (
      --  Match disabled.
      MCFGR1_MATCFG_Field_000,
      --  Match enabled (1st data word equals MATCH0 OR MATCH1).
      MCFGR1_MATCFG_Field_010,
      --  Match enabled (any data word equals MATCH0 OR MATCH1).
      MCFGR1_MATCFG_Field_011,
      --  Match enabled (1st data word equals MATCH0 AND 2nd data word equals
      --  MATCH1).
      MCFGR1_MATCFG_Field_100,
      --  Match enabled (any data word equals MATCH0 AND next data word equals
      --  MATCH1).
      MCFGR1_MATCFG_Field_101,
      --  Match enabled (1st data word AND MATCH1 equals MATCH0 AND MATCH1).
      MCFGR1_MATCFG_Field_110,
      --  Match enabled (any data word AND MATCH1 equals MATCH0 AND MATCH1).
      MCFGR1_MATCFG_Field_111)
     with Size => 3;
   for MCFGR1_MATCFG_Field use
     (MCFGR1_MATCFG_Field_000 => 0,
      MCFGR1_MATCFG_Field_010 => 2,
      MCFGR1_MATCFG_Field_011 => 3,
      MCFGR1_MATCFG_Field_100 => 4,
      MCFGR1_MATCFG_Field_101 => 5,
      MCFGR1_MATCFG_Field_110 => 6,
      MCFGR1_MATCFG_Field_111 => 7);

   --  Pin Configuration
   type MCFGR1_PINCFG_Field is
     (
      --  LPI2C configured for 2-pin open drain mode.
      MCFGR1_PINCFG_Field_000,
      --  LPI2C configured for 2-pin output only mode (ultra-fast mode).
      MCFGR1_PINCFG_Field_001,
      --  LPI2C configured for 2-pin push-pull mode.
      MCFGR1_PINCFG_Field_010,
      --  LPI2C configured for 4-pin push-pull mode.
      MCFGR1_PINCFG_Field_011,
      --  LPI2C configured for 2-pin open drain mode with separate LPI2C slave.
      MCFGR1_PINCFG_Field_100,
      --  LPI2C configured for 2-pin output only mode (ultra-fast mode) with
      --  separate LPI2C slave.
      MCFGR1_PINCFG_Field_101,
      --  LPI2C configured for 2-pin push-pull mode with separate LPI2C slave.
      MCFGR1_PINCFG_Field_110,
      --  LPI2C configured for 4-pin push-pull mode (inverted outputs).
      MCFGR1_PINCFG_Field_111)
     with Size => 3;
   for MCFGR1_PINCFG_Field use
     (MCFGR1_PINCFG_Field_000 => 0,
      MCFGR1_PINCFG_Field_001 => 1,
      MCFGR1_PINCFG_Field_010 => 2,
      MCFGR1_PINCFG_Field_011 => 3,
      MCFGR1_PINCFG_Field_100 => 4,
      MCFGR1_PINCFG_Field_101 => 5,
      MCFGR1_PINCFG_Field_110 => 6,
      MCFGR1_PINCFG_Field_111 => 7);

   --  Master Configuration Register 1
   type LPI2C0_MCFGR1_Register is record
      --  Prescaler
      PRESCALE       : MCFGR1_PRESCALE_Field :=
                        NRF_SVD.LPI2C.MCFGR1_PRESCALE_Field_000;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Automatic STOP Generation
      AUTOSTOP       : MCFGR1_AUTOSTOP_Field :=
                        NRF_SVD.LPI2C.MCFGR1_AUTOSTOP_Field_0;
      --  When set, the received NACK field is ignored and assumed to be ACK
      IGNACK         : MCFGR1_IGNACK_Field :=
                        NRF_SVD.LPI2C.MCFGR1_IGNACK_Field_0;
      --  Timeout Configuration
      TIMECFG        : MCFGR1_TIMECFG_Field :=
                        NRF_SVD.LPI2C.MCFGR1_TIMECFG_Field_0;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Match Configuration
      MATCFG         : MCFGR1_MATCFG_Field :=
                        NRF_SVD.LPI2C.MCFGR1_MATCFG_Field_000;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Pin Configuration
      PINCFG         : MCFGR1_PINCFG_Field :=
                        NRF_SVD.LPI2C.MCFGR1_PINCFG_Field_000;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MCFGR1_Register use record
      PRESCALE       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      AUTOSTOP       at 0 range 8 .. 8;
      IGNACK         at 0 range 9 .. 9;
      TIMECFG        at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      MATCFG         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      PINCFG         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype LPI2C0_MCFGR2_BUSIDLE_Field is HAL.UInt12;
   subtype LPI2C0_MCFGR2_FILTSCL_Field is HAL.UInt4;
   subtype LPI2C0_MCFGR2_FILTSDA_Field is HAL.UInt4;

   --  Master Configuration Register 2
   type LPI2C0_MCFGR2_Register is record
      --  Bus Idle Timeout
      BUSIDLE        : LPI2C0_MCFGR2_BUSIDLE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Glitch Filter SCL
      FILTSCL        : LPI2C0_MCFGR2_FILTSCL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Glitch Filter SDA
      FILTSDA        : LPI2C0_MCFGR2_FILTSDA_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MCFGR2_Register use record
      BUSIDLE        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FILTSCL        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      FILTSDA        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LPI2C0_MCFGR3_PINLOW_Field is HAL.UInt12;

   --  Master Configuration Register 3
   type LPI2C0_MCFGR3_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Pin Low Timeout
      PINLOW         : LPI2C0_MCFGR3_PINLOW_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MCFGR3_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PINLOW         at 0 range 8 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype LPI2C0_MDMR_MATCH0_Field is HAL.UInt8;
   subtype LPI2C0_MDMR_MATCH1_Field is HAL.UInt8;

   --  Master Data Match Register
   type LPI2C0_MDMR_Register is record
      --  Match 0 Value
      MATCH0         : LPI2C0_MDMR_MATCH0_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Match 1 Value
      MATCH1         : LPI2C0_MDMR_MATCH1_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MDMR_Register use record
      MATCH0         at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      MATCH1         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MCCR_CLKLO_Field is HAL.UInt6;
   subtype MCCR_CLKHI_Field is HAL.UInt6;
   subtype MCCR_SETHOLD_Field is HAL.UInt6;
   subtype MCCR_DATAVD_Field is HAL.UInt6;

   --  Master Clock Configuration Register 0
   type MCCR_Register is record
      --  Clock Low Period
      CLKLO          : MCCR_CLKLO_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Clock High Period
      CLKHI          : MCCR_CLKHI_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Setup Hold Delay
      SETHOLD        : MCCR_SETHOLD_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Data Valid Delay
      DATAVD         : MCCR_DATAVD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCCR_Register use record
      CLKLO          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CLKHI          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SETHOLD        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DATAVD         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LPI2C0_MFCR_TXWATER_Field is HAL.UInt8;
   subtype LPI2C0_MFCR_RXWATER_Field is HAL.UInt8;

   --  Master FIFO Control Register
   type LPI2C0_MFCR_Register is record
      --  Transmit FIFO Watermark
      TXWATER        : LPI2C0_MFCR_TXWATER_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Receive FIFO Watermark
      RXWATER        : LPI2C0_MFCR_RXWATER_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MFCR_Register use record
      TXWATER        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RXWATER        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPI2C0_MFSR_TXCOUNT_Field is HAL.UInt8;
   subtype LPI2C0_MFSR_RXCOUNT_Field is HAL.UInt8;

   --  Master FIFO Status Register
   type LPI2C0_MFSR_Register is record
      --  Read-only. Transmit FIFO Count
      TXCOUNT        : LPI2C0_MFSR_TXCOUNT_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Receive FIFO Count
      RXCOUNT        : LPI2C0_MFSR_RXCOUNT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MFSR_Register use record
      TXCOUNT        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RXCOUNT        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPI2C0_MTDR_DATA_Field is HAL.UInt8;

   --  Command Data
   type MTDR_CMD_Field is
     (
      --  Transmit DATA[7:0].
      MTDR_CMD_Field_000,
      --  Receive (DATA[7:0] + 1) bytes.
      MTDR_CMD_Field_001,
      --  Generate STOP condition.
      MTDR_CMD_Field_010,
      --  Receive and discard (DATA[7:0] + 1) bytes.
      MTDR_CMD_Field_011,
      --  Generate (repeated) START and transmit address in DATA[7:0].
      MTDR_CMD_Field_100,
      --  Generate (repeated) START and transmit address in DATA[7:0]. This
      --  transfer expects a NACK to be returned.
      MTDR_CMD_Field_101,
      --  Generate (repeated) START and transmit address in DATA[7:0] using
      --  high speed mode.
      MTDR_CMD_Field_110,
      --  Generate (repeated) START and transmit address in DATA[7:0] using
      --  high speed mode. This transfer expects a NACK to be returned.
      MTDR_CMD_Field_111)
     with Size => 3;
   for MTDR_CMD_Field use
     (MTDR_CMD_Field_000 => 0,
      MTDR_CMD_Field_001 => 1,
      MTDR_CMD_Field_010 => 2,
      MTDR_CMD_Field_011 => 3,
      MTDR_CMD_Field_100 => 4,
      MTDR_CMD_Field_101 => 5,
      MTDR_CMD_Field_110 => 6,
      MTDR_CMD_Field_111 => 7);

   --  Master Transmit Data Register
   type LPI2C0_MTDR_Register is record
      --  Write-only. Transmit Data
      DATA           : LPI2C0_MTDR_DATA_Field := 16#0#;
      --  Write-only. Command Data
      CMD            : MTDR_CMD_Field := NRF_SVD.LPI2C.MTDR_CMD_Field_000;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MTDR_Register use record
      DATA           at 0 range 0 .. 7;
      CMD            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype LPI2C0_MRDR_DATA_Field is HAL.UInt8;

   --  RX Empty
   type MRDR_RXEMPTY_Field is
     (
      --  Receive FIFO is not empty.
      MRDR_RXEMPTY_Field_0,
      --  Receive FIFO is empty.
      MRDR_RXEMPTY_Field_1)
     with Size => 1;
   for MRDR_RXEMPTY_Field use
     (MRDR_RXEMPTY_Field_0 => 0,
      MRDR_RXEMPTY_Field_1 => 1);

   --  Master Receive Data Register
   type LPI2C0_MRDR_Register is record
      --  Read-only. Receive Data
      DATA           : LPI2C0_MRDR_DATA_Field;
      --  unspecified
      Reserved_8_13  : HAL.UInt6;
      --  Read-only. RX Empty
      RXEMPTY        : MRDR_RXEMPTY_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_MRDR_Register use record
      DATA           at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      RXEMPTY        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Slave Enable
   type SCR_SEN_Field is
     (
      --  Slave mode is disabled.
      SCR_SEN_Field_0,
      --  Slave mode is enabled.
      SCR_SEN_Field_1)
     with Size => 1;
   for SCR_SEN_Field use
     (SCR_SEN_Field_0 => 0,
      SCR_SEN_Field_1 => 1);

   --  Software Reset
   type SCR_RST_Field is
     (
      --  Slave logic is not reset.
      SCR_RST_Field_0,
      --  Slave logic is reset.
      SCR_RST_Field_1)
     with Size => 1;
   for SCR_RST_Field use
     (SCR_RST_Field_0 => 0,
      SCR_RST_Field_1 => 1);

   --  Filter Enable
   type SCR_FILTEN_Field is
     (
      --  Disable digital filter and output delay counter for slave mode.
      SCR_FILTEN_Field_0,
      --  Enable digital filter and output delay counter for slave mode.
      SCR_FILTEN_Field_1)
     with Size => 1;
   for SCR_FILTEN_Field use
     (SCR_FILTEN_Field_0 => 0,
      SCR_FILTEN_Field_1 => 1);

   --  Filter Doze Enable
   type SCR_FILTDZ_Field is
     (
      --  Filter remains enabled in Doze mode.
      SCR_FILTDZ_Field_0,
      --  Filter is disabled in Doze mode.
      SCR_FILTDZ_Field_1)
     with Size => 1;
   for SCR_FILTDZ_Field use
     (SCR_FILTDZ_Field_0 => 0,
      SCR_FILTDZ_Field_1 => 1);

   --  Reset Transmit FIFO
   type SCR_RTF_Field is
     (
      --  No effect.
      SCR_RTF_Field_0,
      --  Transmit Data Register is now empty.
      SCR_RTF_Field_1)
     with Size => 1;
   for SCR_RTF_Field use
     (SCR_RTF_Field_0 => 0,
      SCR_RTF_Field_1 => 1);

   --  Reset Receive FIFO
   type SCR_RRF_Field is
     (
      --  No effect.
      SCR_RRF_Field_0,
      --  Receive Data Register is now empty.
      SCR_RRF_Field_1)
     with Size => 1;
   for SCR_RRF_Field use
     (SCR_RRF_Field_0 => 0,
      SCR_RRF_Field_1 => 1);

   --  Slave Control Register
   type LPI2C0_SCR_Register is record
      --  Slave Enable
      SEN            : SCR_SEN_Field := NRF_SVD.LPI2C.SCR_SEN_Field_0;
      --  Software Reset
      RST            : SCR_RST_Field := NRF_SVD.LPI2C.SCR_RST_Field_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Filter Enable
      FILTEN         : SCR_FILTEN_Field := NRF_SVD.LPI2C.SCR_FILTEN_Field_0;
      --  Filter Doze Enable
      FILTDZ         : SCR_FILTDZ_Field := NRF_SVD.LPI2C.SCR_FILTDZ_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Transmit FIFO
      RTF            : SCR_RTF_Field := NRF_SVD.LPI2C.SCR_RTF_Field_0;
      --  Write-only. Reset Receive FIFO
      RRF            : SCR_RRF_Field := NRF_SVD.LPI2C.SCR_RRF_Field_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SCR_Register use record
      SEN            at 0 range 0 .. 0;
      RST            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FILTEN         at 0 range 4 .. 4;
      FILTDZ         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RTF            at 0 range 8 .. 8;
      RRF            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transmit Data Flag
   type SSR_TDF_Field is
     (
      --  Transmit data not requested.
      SSR_TDF_Field_0,
      --  Transmit data is requested.
      SSR_TDF_Field_1)
     with Size => 1;
   for SSR_TDF_Field use
     (SSR_TDF_Field_0 => 0,
      SSR_TDF_Field_1 => 1);

   --  Receive Data Flag
   type SSR_RDF_Field is
     (
      --  Receive Data is not ready.
      SSR_RDF_Field_0,
      --  Receive data is ready.
      SSR_RDF_Field_1)
     with Size => 1;
   for SSR_RDF_Field use
     (SSR_RDF_Field_0 => 0,
      SSR_RDF_Field_1 => 1);

   --  Address Valid Flag
   type SSR_AVF_Field is
     (
      --  Address Status Register is not valid.
      SSR_AVF_Field_0,
      --  Address Status Register is valid.
      SSR_AVF_Field_1)
     with Size => 1;
   for SSR_AVF_Field use
     (SSR_AVF_Field_0 => 0,
      SSR_AVF_Field_1 => 1);

   --  Transmit ACK Flag
   type SSR_TAF_Field is
     (
      --  Transmit ACK/NACK is not required.
      SSR_TAF_Field_0,
      --  Transmit ACK/NACK is required.
      SSR_TAF_Field_1)
     with Size => 1;
   for SSR_TAF_Field use
     (SSR_TAF_Field_0 => 0,
      SSR_TAF_Field_1 => 1);

   --  Repeated Start Flag
   type SSR_RSF_Field is
     (
      --  Slave has not detected a Repeated START condition.
      SSR_RSF_Field_0,
      --  Slave has detected a Repeated START condition.
      SSR_RSF_Field_1)
     with Size => 1;
   for SSR_RSF_Field use
     (SSR_RSF_Field_0 => 0,
      SSR_RSF_Field_1 => 1);

   --  STOP Detect Flag
   type SSR_SDF_Field is
     (
      --  Slave has not detected a STOP condition.
      SSR_SDF_Field_0,
      --  Slave has detected a STOP condition.
      SSR_SDF_Field_1)
     with Size => 1;
   for SSR_SDF_Field use
     (SSR_SDF_Field_0 => 0,
      SSR_SDF_Field_1 => 1);

   --  Bit Error Flag
   type SSR_BEF_Field is
     (
      --  Slave has not detected a bit error.
      SSR_BEF_Field_0,
      --  Slave has detected a bit error.
      SSR_BEF_Field_1)
     with Size => 1;
   for SSR_BEF_Field use
     (SSR_BEF_Field_0 => 0,
      SSR_BEF_Field_1 => 1);

   --  FIFO Error Flag
   type SSR_FEF_Field is
     (
      --  FIFO underflow or overflow not detected.
      SSR_FEF_Field_0,
      --  FIFO underflow or overflow detected.
      SSR_FEF_Field_1)
     with Size => 1;
   for SSR_FEF_Field use
     (SSR_FEF_Field_0 => 0,
      SSR_FEF_Field_1 => 1);

   --  Address Match 0 Flag
   type SSR_AM0F_Field is
     (
      --  Have not received ADDR0 matching address.
      SSR_AM0F_Field_0,
      --  Have received ADDR0 matching address.
      SSR_AM0F_Field_1)
     with Size => 1;
   for SSR_AM0F_Field use
     (SSR_AM0F_Field_0 => 0,
      SSR_AM0F_Field_1 => 1);

   --  Address Match 1 Flag
   type SSR_AM1F_Field is
     (
      --  Have not received ADDR1 or ADDR0/ADDR1 range matching address.
      SSR_AM1F_Field_0,
      --  Have received ADDR1 or ADDR0/ADDR1 range matching address.
      SSR_AM1F_Field_1)
     with Size => 1;
   for SSR_AM1F_Field use
     (SSR_AM1F_Field_0 => 0,
      SSR_AM1F_Field_1 => 1);

   --  General Call Flag
   type SSR_GCF_Field is
     (
      --  Slave has not detected the General Call Address or General Call
      --  Address disabled.
      SSR_GCF_Field_0,
      --  Slave has detected the General Call Address.
      SSR_GCF_Field_1)
     with Size => 1;
   for SSR_GCF_Field use
     (SSR_GCF_Field_0 => 0,
      SSR_GCF_Field_1 => 1);

   --  SMBus Alert Response Flag
   type SSR_SARF_Field is
     (
      --  SMBus Alert Response disabled or not detected.
      SSR_SARF_Field_0,
      --  SMBus Alert Response enabled and detected.
      SSR_SARF_Field_1)
     with Size => 1;
   for SSR_SARF_Field use
     (SSR_SARF_Field_0 => 0,
      SSR_SARF_Field_1 => 1);

   --  Slave Busy Flag
   type SSR_SBF_Field is
     (
      --  I2C Slave is idle.
      SSR_SBF_Field_0,
      --  I2C Slave is busy.
      SSR_SBF_Field_1)
     with Size => 1;
   for SSR_SBF_Field use
     (SSR_SBF_Field_0 => 0,
      SSR_SBF_Field_1 => 1);

   --  Bus Busy Flag
   type SSR_BBF_Field is
     (
      --  I2C Bus is idle.
      SSR_BBF_Field_0,
      --  I2C Bus is busy.
      SSR_BBF_Field_1)
     with Size => 1;
   for SSR_BBF_Field use
     (SSR_BBF_Field_0 => 0,
      SSR_BBF_Field_1 => 1);

   --  Slave Status Register
   type LPI2C0_SSR_Register is record
      --  Read-only. Transmit Data Flag
      TDF            : SSR_TDF_Field := NRF_SVD.LPI2C.SSR_TDF_Field_0;
      --  Read-only. Receive Data Flag
      RDF            : SSR_RDF_Field := NRF_SVD.LPI2C.SSR_RDF_Field_0;
      --  Read-only. Address Valid Flag
      AVF            : SSR_AVF_Field := NRF_SVD.LPI2C.SSR_AVF_Field_0;
      --  Read-only. Transmit ACK Flag
      TAF            : SSR_TAF_Field := NRF_SVD.LPI2C.SSR_TAF_Field_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Repeated Start Flag
      RSF            : SSR_RSF_Field := NRF_SVD.LPI2C.SSR_RSF_Field_0;
      --  STOP Detect Flag
      SDF            : SSR_SDF_Field := NRF_SVD.LPI2C.SSR_SDF_Field_0;
      --  Bit Error Flag
      BEF            : SSR_BEF_Field := NRF_SVD.LPI2C.SSR_BEF_Field_0;
      --  FIFO Error Flag
      FEF            : SSR_FEF_Field := NRF_SVD.LPI2C.SSR_FEF_Field_0;
      --  Read-only. Address Match 0 Flag
      AM0F           : SSR_AM0F_Field := NRF_SVD.LPI2C.SSR_AM0F_Field_0;
      --  Read-only. Address Match 1 Flag
      AM1F           : SSR_AM1F_Field := NRF_SVD.LPI2C.SSR_AM1F_Field_0;
      --  Read-only. General Call Flag
      GCF            : SSR_GCF_Field := NRF_SVD.LPI2C.SSR_GCF_Field_0;
      --  Read-only. SMBus Alert Response Flag
      SARF           : SSR_SARF_Field := NRF_SVD.LPI2C.SSR_SARF_Field_0;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Read-only. Slave Busy Flag
      SBF            : SSR_SBF_Field := NRF_SVD.LPI2C.SSR_SBF_Field_0;
      --  Read-only. Bus Busy Flag
      BBF            : SSR_BBF_Field := NRF_SVD.LPI2C.SSR_BBF_Field_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SSR_Register use record
      TDF            at 0 range 0 .. 0;
      RDF            at 0 range 1 .. 1;
      AVF            at 0 range 2 .. 2;
      TAF            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RSF            at 0 range 8 .. 8;
      SDF            at 0 range 9 .. 9;
      BEF            at 0 range 10 .. 10;
      FEF            at 0 range 11 .. 11;
      AM0F           at 0 range 12 .. 12;
      AM1F           at 0 range 13 .. 13;
      GCF            at 0 range 14 .. 14;
      SARF           at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      SBF            at 0 range 24 .. 24;
      BBF            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Transmit Data Interrupt Enable
   type SIER_TDIE_Field is
     (
      --  Interrupt disabled.
      SIER_TDIE_Field_0,
      --  Interrupt enabled
      SIER_TDIE_Field_1)
     with Size => 1;
   for SIER_TDIE_Field use
     (SIER_TDIE_Field_0 => 0,
      SIER_TDIE_Field_1 => 1);

   --  Receive Data Interrupt Enable
   type SIER_RDIE_Field is
     (
      --  Interrupt disabled.
      SIER_RDIE_Field_0,
      --  Interrupt enabled.
      SIER_RDIE_Field_1)
     with Size => 1;
   for SIER_RDIE_Field use
     (SIER_RDIE_Field_0 => 0,
      SIER_RDIE_Field_1 => 1);

   --  Address Valid Interrupt Enable
   type SIER_AVIE_Field is
     (
      --  Interrupt disabled.
      SIER_AVIE_Field_0,
      --  Interrupt enabled.
      SIER_AVIE_Field_1)
     with Size => 1;
   for SIER_AVIE_Field use
     (SIER_AVIE_Field_0 => 0,
      SIER_AVIE_Field_1 => 1);

   --  Transmit ACK Interrupt Enable
   type SIER_TAIE_Field is
     (
      --  Interrupt disabled.
      SIER_TAIE_Field_0,
      --  Interrupt enabled.
      SIER_TAIE_Field_1)
     with Size => 1;
   for SIER_TAIE_Field use
     (SIER_TAIE_Field_0 => 0,
      SIER_TAIE_Field_1 => 1);

   --  Repeated Start Interrupt Enable
   type SIER_RSIE_Field is
     (
      --  Interrupt disabled.
      SIER_RSIE_Field_0,
      --  Interrupt enabled.
      SIER_RSIE_Field_1)
     with Size => 1;
   for SIER_RSIE_Field use
     (SIER_RSIE_Field_0 => 0,
      SIER_RSIE_Field_1 => 1);

   --  STOP Detect Interrupt Enable
   type SIER_SDIE_Field is
     (
      --  Interrupt disabled.
      SIER_SDIE_Field_0,
      --  Interrupt enabled.
      SIER_SDIE_Field_1)
     with Size => 1;
   for SIER_SDIE_Field use
     (SIER_SDIE_Field_0 => 0,
      SIER_SDIE_Field_1 => 1);

   --  Bit Error Interrupt Enable
   type SIER_BEIE_Field is
     (
      --  Interrupt disabled.
      SIER_BEIE_Field_0,
      --  Interrupt enabled.
      SIER_BEIE_Field_1)
     with Size => 1;
   for SIER_BEIE_Field use
     (SIER_BEIE_Field_0 => 0,
      SIER_BEIE_Field_1 => 1);

   --  FIFO Error Interrupt Enable
   type SIER_FEIE_Field is
     (
      --  Interrupt disabled.
      SIER_FEIE_Field_0,
      --  Interrupt enabled.
      SIER_FEIE_Field_1)
     with Size => 1;
   for SIER_FEIE_Field use
     (SIER_FEIE_Field_0 => 0,
      SIER_FEIE_Field_1 => 1);

   --  Address Match 0 Interrupt Enable
   type SIER_AM0IE_Field is
     (
      --  Interrupt enabled.
      SIER_AM0IE_Field_0,
      --  Interrupt disabled.
      SIER_AM0IE_Field_1)
     with Size => 1;
   for SIER_AM0IE_Field use
     (SIER_AM0IE_Field_0 => 0,
      SIER_AM0IE_Field_1 => 1);

   --  Address Match 1 Interrupt Enable
   type SIER_AM1F_Field is
     (
      --  Interrupt disabled.
      SIER_AM1F_Field_0,
      --  Interrupt enabled.
      SIER_AM1F_Field_1)
     with Size => 1;
   for SIER_AM1F_Field use
     (SIER_AM1F_Field_0 => 0,
      SIER_AM1F_Field_1 => 1);

   --  General Call Interrupt Enable
   type SIER_GCIE_Field is
     (
      --  Interrupt disabled.
      SIER_GCIE_Field_0,
      --  Interrupt enabled.
      SIER_GCIE_Field_1)
     with Size => 1;
   for SIER_GCIE_Field use
     (SIER_GCIE_Field_0 => 0,
      SIER_GCIE_Field_1 => 1);

   --  SMBus Alert Response Interrupt Enable
   type SIER_SARIE_Field is
     (
      --  Interrupt disabled.
      SIER_SARIE_Field_0,
      --  Interrupt enabled.
      SIER_SARIE_Field_1)
     with Size => 1;
   for SIER_SARIE_Field use
     (SIER_SARIE_Field_0 => 0,
      SIER_SARIE_Field_1 => 1);

   --  Slave Interrupt Enable Register
   type LPI2C0_SIER_Register is record
      --  Transmit Data Interrupt Enable
      TDIE           : SIER_TDIE_Field := NRF_SVD.LPI2C.SIER_TDIE_Field_0;
      --  Receive Data Interrupt Enable
      RDIE           : SIER_RDIE_Field := NRF_SVD.LPI2C.SIER_RDIE_Field_0;
      --  Address Valid Interrupt Enable
      AVIE           : SIER_AVIE_Field := NRF_SVD.LPI2C.SIER_AVIE_Field_0;
      --  Transmit ACK Interrupt Enable
      TAIE           : SIER_TAIE_Field := NRF_SVD.LPI2C.SIER_TAIE_Field_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Repeated Start Interrupt Enable
      RSIE           : SIER_RSIE_Field := NRF_SVD.LPI2C.SIER_RSIE_Field_0;
      --  STOP Detect Interrupt Enable
      SDIE           : SIER_SDIE_Field := NRF_SVD.LPI2C.SIER_SDIE_Field_0;
      --  Bit Error Interrupt Enable
      BEIE           : SIER_BEIE_Field := NRF_SVD.LPI2C.SIER_BEIE_Field_0;
      --  FIFO Error Interrupt Enable
      FEIE           : SIER_FEIE_Field := NRF_SVD.LPI2C.SIER_FEIE_Field_0;
      --  Address Match 0 Interrupt Enable
      AM0IE          : SIER_AM0IE_Field := NRF_SVD.LPI2C.SIER_AM0IE_Field_0;
      --  Address Match 1 Interrupt Enable
      AM1F           : SIER_AM1F_Field := NRF_SVD.LPI2C.SIER_AM1F_Field_0;
      --  General Call Interrupt Enable
      GCIE           : SIER_GCIE_Field := NRF_SVD.LPI2C.SIER_GCIE_Field_0;
      --  SMBus Alert Response Interrupt Enable
      SARIE          : SIER_SARIE_Field := NRF_SVD.LPI2C.SIER_SARIE_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SIER_Register use record
      TDIE           at 0 range 0 .. 0;
      RDIE           at 0 range 1 .. 1;
      AVIE           at 0 range 2 .. 2;
      TAIE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RSIE           at 0 range 8 .. 8;
      SDIE           at 0 range 9 .. 9;
      BEIE           at 0 range 10 .. 10;
      FEIE           at 0 range 11 .. 11;
      AM0IE          at 0 range 12 .. 12;
      AM1F           at 0 range 13 .. 13;
      GCIE           at 0 range 14 .. 14;
      SARIE          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transmit Data DMA Enable
   type SDER_TDDE_Field is
     (
      --  DMA request disabled.
      SDER_TDDE_Field_0,
      --  DMA request enabled
      SDER_TDDE_Field_1)
     with Size => 1;
   for SDER_TDDE_Field use
     (SDER_TDDE_Field_0 => 0,
      SDER_TDDE_Field_1 => 1);

   --  Receive Data DMA Enable
   type SDER_RDDE_Field is
     (
      --  DMA request disabled.
      SDER_RDDE_Field_0,
      --  DMA request enabled.
      SDER_RDDE_Field_1)
     with Size => 1;
   for SDER_RDDE_Field use
     (SDER_RDDE_Field_0 => 0,
      SDER_RDDE_Field_1 => 1);

   --  Address Valid DMA Enable
   type SDER_AVDE_Field is
     (
      --  DMA request disabled.
      SDER_AVDE_Field_0,
      --  DMA request enabled.
      SDER_AVDE_Field_1)
     with Size => 1;
   for SDER_AVDE_Field use
     (SDER_AVDE_Field_0 => 0,
      SDER_AVDE_Field_1 => 1);

   --  Slave DMA Enable Register
   type LPI2C0_SDER_Register is record
      --  Transmit Data DMA Enable
      TDDE          : SDER_TDDE_Field := NRF_SVD.LPI2C.SDER_TDDE_Field_0;
      --  Receive Data DMA Enable
      RDDE          : SDER_RDDE_Field := NRF_SVD.LPI2C.SDER_RDDE_Field_0;
      --  Address Valid DMA Enable
      AVDE          : SDER_AVDE_Field := NRF_SVD.LPI2C.SDER_AVDE_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SDER_Register use record
      TDDE          at 0 range 0 .. 0;
      RDDE          at 0 range 1 .. 1;
      AVDE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Address SCL Stall
   type SCFGR1_ADRSTALL_Field is
     (
      --  Clock stretching disabled.
      SCFGR1_ADRSTALL_Field_0,
      --  Clock stretching enabled.
      SCFGR1_ADRSTALL_Field_1)
     with Size => 1;
   for SCFGR1_ADRSTALL_Field use
     (SCFGR1_ADRSTALL_Field_0 => 0,
      SCFGR1_ADRSTALL_Field_1 => 1);

   --  RX SCL Stall
   type SCFGR1_RXSTALL_Field is
     (
      --  Clock stretching disabled.
      SCFGR1_RXSTALL_Field_0,
      --  Clock stretching enabled.
      SCFGR1_RXSTALL_Field_1)
     with Size => 1;
   for SCFGR1_RXSTALL_Field use
     (SCFGR1_RXSTALL_Field_0 => 0,
      SCFGR1_RXSTALL_Field_1 => 1);

   --  TX Data SCL Stall
   type SCFGR1_TXDSTALL_Field is
     (
      --  Clock stretching disabled.
      SCFGR1_TXDSTALL_Field_0,
      --  Clock stretching enabled.
      SCFGR1_TXDSTALL_Field_1)
     with Size => 1;
   for SCFGR1_TXDSTALL_Field use
     (SCFGR1_TXDSTALL_Field_0 => 0,
      SCFGR1_TXDSTALL_Field_1 => 1);

   --  ACK SCL Stall
   type SCFGR1_ACKSTALL_Field is
     (
      --  Clock stretching disabled.
      SCFGR1_ACKSTALL_Field_0,
      --  Clock stretching enabled.
      SCFGR1_ACKSTALL_Field_1)
     with Size => 1;
   for SCFGR1_ACKSTALL_Field use
     (SCFGR1_ACKSTALL_Field_0 => 0,
      SCFGR1_ACKSTALL_Field_1 => 1);

   --  General Call Enable
   type SCFGR1_GCEN_Field is
     (
      --  General Call address is disabled.
      SCFGR1_GCEN_Field_0,
      --  General call address is enabled.
      SCFGR1_GCEN_Field_1)
     with Size => 1;
   for SCFGR1_GCEN_Field use
     (SCFGR1_GCEN_Field_0 => 0,
      SCFGR1_GCEN_Field_1 => 1);

   --  SMBus Alert Enable
   type SCFGR1_SAEN_Field is
     (
      --  Disables match on SMBus Alert.
      SCFGR1_SAEN_Field_0,
      --  Enables match on SMBus Alert.
      SCFGR1_SAEN_Field_1)
     with Size => 1;
   for SCFGR1_SAEN_Field use
     (SCFGR1_SAEN_Field_0 => 0,
      SCFGR1_SAEN_Field_1 => 1);

   --  Transmit Flag Configuration
   type SCFGR1_TXCFG_Field is
     (
      --  Transmit Data Flag will only assert during a slave-transmit transfer
      --  when the transmit data register is empty.
      SCFGR1_TXCFG_Field_0,
      --  Transmit Data Flag will assert whenever the transmit data register is
      --  empty.
      SCFGR1_TXCFG_Field_1)
     with Size => 1;
   for SCFGR1_TXCFG_Field use
     (SCFGR1_TXCFG_Field_0 => 0,
      SCFGR1_TXCFG_Field_1 => 1);

   --  Receive Data Configuration
   type SCFGR1_RXCFG_Field is
     (
      --  Reading the receive data register will return receive data and clear
      --  the receive data flag.
      SCFGR1_RXCFG_Field_0,
      --  Reading the receive data register when the address valid flag is set
      --  will return the address status register and clear the address valid
      --  flag. Reading the receive data register when the address valid flag
      --  is clear will return receive data and clear the receive data flag.
      SCFGR1_RXCFG_Field_1)
     with Size => 1;
   for SCFGR1_RXCFG_Field use
     (SCFGR1_RXCFG_Field_0 => 0,
      SCFGR1_RXCFG_Field_1 => 1);

   --  Ignore NACK
   type SCFGR1_IGNACK_Field is
     (
      --  Slave will end transfer when NACK detected.
      SCFGR1_IGNACK_Field_0,
      --  Slave will not end transfer when NACK detected.
      SCFGR1_IGNACK_Field_1)
     with Size => 1;
   for SCFGR1_IGNACK_Field use
     (SCFGR1_IGNACK_Field_0 => 0,
      SCFGR1_IGNACK_Field_1 => 1);

   --  High Speed Mode Enable
   type SCFGR1_HSMEN_Field is
     (
      --  Disables detection of Hs-mode master code.
      SCFGR1_HSMEN_Field_0,
      --  Enables detection of Hs-mode master code.
      SCFGR1_HSMEN_Field_1)
     with Size => 1;
   for SCFGR1_HSMEN_Field use
     (SCFGR1_HSMEN_Field_0 => 0,
      SCFGR1_HSMEN_Field_1 => 1);

   --  Address Configuration
   type SCFGR1_ADDRCFG_Field is
     (
      --  Address match 0 (7-bit).
      SCFGR1_ADDRCFG_Field_000,
      --  Address match 0 (10-bit).
      SCFGR1_ADDRCFG_Field_001,
      --  Address match 0 (7-bit) or Address match 1 (7-bit).
      SCFGR1_ADDRCFG_Field_010,
      --  Address match 0 (10-bit) or Address match 1 (10-bit).
      SCFGR1_ADDRCFG_Field_011,
      --  Address match 0 (7-bit) or Address match 1 (10-bit).
      SCFGR1_ADDRCFG_Field_100,
      --  Address match 0 (10-bit) or Address match 1 (7-bit).
      SCFGR1_ADDRCFG_Field_101,
      --  From Address match 0 (7-bit) to Address match 1 (7-bit).
      SCFGR1_ADDRCFG_Field_110,
      --  From Address match 0 (10-bit) to Address match 1 (10-bit).
      SCFGR1_ADDRCFG_Field_111)
     with Size => 3;
   for SCFGR1_ADDRCFG_Field use
     (SCFGR1_ADDRCFG_Field_000 => 0,
      SCFGR1_ADDRCFG_Field_001 => 1,
      SCFGR1_ADDRCFG_Field_010 => 2,
      SCFGR1_ADDRCFG_Field_011 => 3,
      SCFGR1_ADDRCFG_Field_100 => 4,
      SCFGR1_ADDRCFG_Field_101 => 5,
      SCFGR1_ADDRCFG_Field_110 => 6,
      SCFGR1_ADDRCFG_Field_111 => 7);

   --  Slave Configuration Register 1
   type LPI2C0_SCFGR1_Register is record
      --  Address SCL Stall
      ADRSTALL       : SCFGR1_ADRSTALL_Field :=
                        NRF_SVD.LPI2C.SCFGR1_ADRSTALL_Field_0;
      --  RX SCL Stall
      RXSTALL        : SCFGR1_RXSTALL_Field :=
                        NRF_SVD.LPI2C.SCFGR1_RXSTALL_Field_0;
      --  TX Data SCL Stall
      TXDSTALL       : SCFGR1_TXDSTALL_Field :=
                        NRF_SVD.LPI2C.SCFGR1_TXDSTALL_Field_0;
      --  ACK SCL Stall
      ACKSTALL       : SCFGR1_ACKSTALL_Field :=
                        NRF_SVD.LPI2C.SCFGR1_ACKSTALL_Field_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  General Call Enable
      GCEN           : SCFGR1_GCEN_Field := NRF_SVD.LPI2C.SCFGR1_GCEN_Field_0;
      --  SMBus Alert Enable
      SAEN           : SCFGR1_SAEN_Field := NRF_SVD.LPI2C.SCFGR1_SAEN_Field_0;
      --  Transmit Flag Configuration
      TXCFG          : SCFGR1_TXCFG_Field :=
                        NRF_SVD.LPI2C.SCFGR1_TXCFG_Field_0;
      --  Receive Data Configuration
      RXCFG          : SCFGR1_RXCFG_Field :=
                        NRF_SVD.LPI2C.SCFGR1_RXCFG_Field_0;
      --  Ignore NACK
      IGNACK         : SCFGR1_IGNACK_Field :=
                        NRF_SVD.LPI2C.SCFGR1_IGNACK_Field_0;
      --  High Speed Mode Enable
      HSMEN          : SCFGR1_HSMEN_Field :=
                        NRF_SVD.LPI2C.SCFGR1_HSMEN_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Address Configuration
      ADDRCFG        : SCFGR1_ADDRCFG_Field :=
                        NRF_SVD.LPI2C.SCFGR1_ADDRCFG_Field_000;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SCFGR1_Register use record
      ADRSTALL       at 0 range 0 .. 0;
      RXSTALL        at 0 range 1 .. 1;
      TXDSTALL       at 0 range 2 .. 2;
      ACKSTALL       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      GCEN           at 0 range 8 .. 8;
      SAEN           at 0 range 9 .. 9;
      TXCFG          at 0 range 10 .. 10;
      RXCFG          at 0 range 11 .. 11;
      IGNACK         at 0 range 12 .. 12;
      HSMEN          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ADDRCFG        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype LPI2C0_SCFGR2_CLKHOLD_Field is HAL.UInt4;
   subtype LPI2C0_SCFGR2_DATAVD_Field is HAL.UInt6;
   subtype LPI2C0_SCFGR2_FILTSCL_Field is HAL.UInt4;
   subtype LPI2C0_SCFGR2_FILTSDA_Field is HAL.UInt4;

   --  Slave Configuration Register 2
   type LPI2C0_SCFGR2_Register is record
      --  Clock Hold Time
      CLKHOLD        : LPI2C0_SCFGR2_CLKHOLD_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Data Valid Delay
      DATAVD         : LPI2C0_SCFGR2_DATAVD_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Glitch Filter SCL
      FILTSCL        : LPI2C0_SCFGR2_FILTSCL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Glitch Filter SDA
      FILTSDA        : LPI2C0_SCFGR2_FILTSDA_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SCFGR2_Register use record
      CLKHOLD        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DATAVD         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FILTSCL        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      FILTSDA        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LPI2C0_SAMR_ADDR0_Field is HAL.UInt10;
   subtype LPI2C0_SAMR_ADDR1_Field is HAL.UInt10;

   --  Slave Address Match Register
   type LPI2C0_SAMR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Address 0 Value
      ADDR0          : LPI2C0_SAMR_ADDR0_Field := 16#0#;
      --  unspecified
      Reserved_11_16 : HAL.UInt6 := 16#0#;
      --  Address 1 Value
      ADDR1          : LPI2C0_SAMR_ADDR1_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SAMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ADDR0          at 0 range 1 .. 10;
      Reserved_11_16 at 0 range 11 .. 16;
      ADDR1          at 0 range 17 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype LPI2C0_SASR_RADDR_Field is HAL.UInt11;

   --  Address Not Valid
   type SASR_ANV_Field is
     (
      --  RADDR is valid.
      SASR_ANV_Field_0,
      --  RADDR is not valid.
      SASR_ANV_Field_1)
     with Size => 1;
   for SASR_ANV_Field use
     (SASR_ANV_Field_0 => 0,
      SASR_ANV_Field_1 => 1);

   --  Slave Address Status Register
   type LPI2C0_SASR_Register is record
      --  Read-only. Received Address
      RADDR          : LPI2C0_SASR_RADDR_Field;
      --  unspecified
      Reserved_11_13 : HAL.UInt3;
      --  Read-only. Address Not Valid
      ANV            : SASR_ANV_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SASR_Register use record
      RADDR          at 0 range 0 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      ANV            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Transmit NACK
   type STAR_TXNACK_Field is
     (
      --  Transmit ACK for received word.
      STAR_TXNACK_Field_0,
      --  Transmit NACK for received word.
      STAR_TXNACK_Field_1)
     with Size => 1;
   for STAR_TXNACK_Field use
     (STAR_TXNACK_Field_0 => 0,
      STAR_TXNACK_Field_1 => 1);

   --  Slave Transmit ACK Register
   type LPI2C0_STAR_Register is record
      --  Transmit NACK
      TXNACK        : STAR_TXNACK_Field := NRF_SVD.LPI2C.STAR_TXNACK_Field_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_STAR_Register use record
      TXNACK        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LPI2C0_STDR_DATA_Field is HAL.UInt8;

   --  Slave Transmit Data Register
   type LPI2C0_STDR_Register is record
      --  Write-only. Transmit Data
      DATA          : LPI2C0_STDR_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_STDR_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LPI2C0_SRDR_DATA_Field is HAL.UInt8;

   --  RX Empty
   type SRDR_RXEMPTY_Field is
     (
      --  The Receive Data Register is not empty.
      SRDR_RXEMPTY_Field_0,
      --  The Receive Data Register is empty.
      SRDR_RXEMPTY_Field_1)
     with Size => 1;
   for SRDR_RXEMPTY_Field use
     (SRDR_RXEMPTY_Field_0 => 0,
      SRDR_RXEMPTY_Field_1 => 1);

   --  Start Of Frame
   type SRDR_SOF_Field is
     (
      --  Indicates this is not the first data word since a (repeated) START or
      --  STOP condition.
      SRDR_SOF_Field_0,
      --  Indicates this is the first data word since a (repeated) START or
      --  STOP condition.
      SRDR_SOF_Field_1)
     with Size => 1;
   for SRDR_SOF_Field use
     (SRDR_SOF_Field_0 => 0,
      SRDR_SOF_Field_1 => 1);

   --  Slave Receive Data Register
   type LPI2C0_SRDR_Register is record
      --  Read-only. Receive Data
      DATA           : LPI2C0_SRDR_DATA_Field;
      --  unspecified
      Reserved_8_13  : HAL.UInt6;
      --  Read-only. RX Empty
      RXEMPTY        : SRDR_RXEMPTY_Field;
      --  Read-only. Start Of Frame
      SOF            : SRDR_SOF_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C0_SRDR_Register use record
      DATA           at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      RXEMPTY        at 0 range 14 .. 14;
      SOF            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low Power Inter-Integrated Circuit
   type LPI2C_Peripheral is record
      --  Version ID Register
      VERID  : aliased LPI2C0_VERID_Register;
      --  Parameter Register
      PARAM  : aliased LPI2C0_PARAM_Register;
      --  Master Control Register
      MCR    : aliased LPI2C0_MCR_Register;
      --  Master Status Register
      MSR    : aliased LPI2C0_MSR_Register;
      --  Master Interrupt Enable Register
      MIER   : aliased LPI2C0_MIER_Register;
      --  Master DMA Enable Register
      MDER   : aliased LPI2C0_MDER_Register;
      --  Master Configuration Register 0
      MCFGR0 : aliased LPI2C0_MCFGR0_Register;
      --  Master Configuration Register 1
      MCFGR1 : aliased LPI2C0_MCFGR1_Register;
      --  Master Configuration Register 2
      MCFGR2 : aliased LPI2C0_MCFGR2_Register;
      --  Master Configuration Register 3
      MCFGR3 : aliased LPI2C0_MCFGR3_Register;
      --  Master Data Match Register
      MDMR   : aliased LPI2C0_MDMR_Register;
      --  Master Clock Configuration Register 0
      MCCR0  : aliased MCCR_Register;
      --  Master Clock Configuration Register 1
      MCCR1  : aliased MCCR_Register;
      --  Master FIFO Control Register
      MFCR   : aliased LPI2C0_MFCR_Register;
      --  Master FIFO Status Register
      MFSR   : aliased LPI2C0_MFSR_Register;
      --  Master Transmit Data Register
      MTDR   : aliased LPI2C0_MTDR_Register;
      --  Master Receive Data Register
      MRDR   : aliased LPI2C0_MRDR_Register;
      --  Slave Control Register
      SCR    : aliased LPI2C0_SCR_Register;
      --  Slave Status Register
      SSR    : aliased LPI2C0_SSR_Register;
      --  Slave Interrupt Enable Register
      SIER   : aliased LPI2C0_SIER_Register;
      --  Slave DMA Enable Register
      SDER   : aliased LPI2C0_SDER_Register;
      --  Slave Configuration Register 1
      SCFGR1 : aliased LPI2C0_SCFGR1_Register;
      --  Slave Configuration Register 2
      SCFGR2 : aliased LPI2C0_SCFGR2_Register;
      --  Slave Address Match Register
      SAMR   : aliased LPI2C0_SAMR_Register;
      --  Slave Address Status Register
      SASR   : aliased LPI2C0_SASR_Register;
      --  Slave Transmit ACK Register
      STAR   : aliased LPI2C0_STAR_Register;
      --  Slave Transmit Data Register
      STDR   : aliased LPI2C0_STDR_Register;
      --  Slave Receive Data Register
      SRDR   : aliased LPI2C0_SRDR_Register;
   end record
     with Volatile;

   for LPI2C_Peripheral use record
      VERID  at 16#0# range 0 .. 31;
      PARAM  at 16#4# range 0 .. 31;
      MCR    at 16#10# range 0 .. 31;
      MSR    at 16#14# range 0 .. 31;
      MIER   at 16#18# range 0 .. 31;
      MDER   at 16#1C# range 0 .. 31;
      MCFGR0 at 16#20# range 0 .. 31;
      MCFGR1 at 16#24# range 0 .. 31;
      MCFGR2 at 16#28# range 0 .. 31;
      MCFGR3 at 16#2C# range 0 .. 31;
      MDMR   at 16#40# range 0 .. 31;
      MCCR0  at 16#48# range 0 .. 31;
      MCCR1  at 16#50# range 0 .. 31;
      MFCR   at 16#58# range 0 .. 31;
      MFSR   at 16#5C# range 0 .. 31;
      MTDR   at 16#60# range 0 .. 31;
      MRDR   at 16#70# range 0 .. 31;
      SCR    at 16#110# range 0 .. 31;
      SSR    at 16#114# range 0 .. 31;
      SIER   at 16#118# range 0 .. 31;
      SDER   at 16#11C# range 0 .. 31;
      SCFGR1 at 16#124# range 0 .. 31;
      SCFGR2 at 16#128# range 0 .. 31;
      SAMR   at 16#140# range 0 .. 31;
      SASR   at 16#150# range 0 .. 31;
      STAR   at 16#154# range 0 .. 31;
      STDR   at 16#160# range 0 .. 31;
      SRDR   at 16#170# range 0 .. 31;
   end record;

   --  Low Power Inter-Integrated Circuit
   LPI2C0_Periph : aliased LPI2C_Peripheral
     with Import, Address => System'To_Address (16#40066000#);

   --  Low Power Inter-Integrated Circuit
   LPI2C1_Periph : aliased LPI2C_Peripheral
     with Import, Address => System'To_Address (16#40067000#);

end NRF_SVD.LPI2C;
