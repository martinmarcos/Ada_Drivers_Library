--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

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
      --  Master only, with standard feature set
      Feature_2,
      --  Master and slave, with standard feature set
      Feature_3)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_2 => 2,
      Feature_3 => 3);

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

   subtype PARAM_MTXFIFO_Field is HAL.UInt4;
   subtype PARAM_MRXFIFO_Field is HAL.UInt4;

   --  Parameter Register
   type PARAM_Register is record
      --  Read-only. Master Transmit FIFO Size
      MTXFIFO        : PARAM_MTXFIFO_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Master Receive FIFO Size
      MRXFIFO        : PARAM_MRXFIFO_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARAM_Register use record
      MTXFIFO        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      MRXFIFO        at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Master Enable
   type MCR_MEN_Field is
     (
      --  Master logic is disabled
      Men_0,
      --  Master logic is enabled
      Men_1)
     with Size => 1;
   for MCR_MEN_Field use
     (Men_0 => 0,
      Men_1 => 1);

   --  Software Reset
   type MCR_RST_Field is
     (
      --  Master logic is not reset
      Rst_0,
      --  Master logic is reset
      Rst_1)
     with Size => 1;
   for MCR_RST_Field use
     (Rst_0 => 0,
      Rst_1 => 1);

   --  Doze mode enable
   type MCR_DOZEN_Field is
     (
      --  Master is enabled in Doze mode
      Dozen_0,
      --  Master is disabled in Doze mode
      Dozen_1)
     with Size => 1;
   for MCR_DOZEN_Field use
     (Dozen_0 => 0,
      Dozen_1 => 1);

   --  Debug Enable
   type MCR_DBGEN_Field is
     (
      --  Master is disabled in debug mode
      Dbgen_0,
      --  Master is enabled in debug mode
      Dbgen_1)
     with Size => 1;
   for MCR_DBGEN_Field use
     (Dbgen_0 => 0,
      Dbgen_1 => 1);

   --  Reset Transmit FIFO
   type MCR_RTF_Field is
     (
      --  No effect
      Rtf_0,
      --  Transmit FIFO is reset
      Rtf_1)
     with Size => 1;
   for MCR_RTF_Field use
     (Rtf_0 => 0,
      Rtf_1 => 1);

   --  Reset Receive FIFO
   type MCR_RRF_Field is
     (
      --  No effect
      Rrf_0,
      --  Receive FIFO is reset
      Rrf_1)
     with Size => 1;
   for MCR_RRF_Field use
     (Rrf_0 => 0,
      Rrf_1 => 1);

   --  Master Control Register
   type MCR_Register is record
      --  Master Enable
      MEN            : MCR_MEN_Field := NRF_SVD.LPI2C.Men_0;
      --  Software Reset
      RST            : MCR_RST_Field := NRF_SVD.LPI2C.Rst_0;
      --  Doze mode enable
      DOZEN          : MCR_DOZEN_Field := NRF_SVD.LPI2C.Dozen_0;
      --  Debug Enable
      DBGEN          : MCR_DBGEN_Field := NRF_SVD.LPI2C.Dbgen_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Reset Transmit FIFO
      RTF            : MCR_RTF_Field := NRF_SVD.LPI2C.Rtf_0;
      --  Write-only. Reset Receive FIFO
      RRF            : MCR_RRF_Field := NRF_SVD.LPI2C.Rrf_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
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
      --  Transmit data is not requested
      Tdf_0,
      --  Transmit data is requested
      Tdf_1)
     with Size => 1;
   for MSR_TDF_Field use
     (Tdf_0 => 0,
      Tdf_1 => 1);

   --  Receive Data Flag
   type MSR_RDF_Field is
     (
      --  Receive Data is not ready
      Rdf_0,
      --  Receive data is ready
      Rdf_1)
     with Size => 1;
   for MSR_RDF_Field use
     (Rdf_0 => 0,
      Rdf_1 => 1);

   --  End Packet Flag
   type MSR_EPF_Field is
     (
      --  Master has not generated a STOP or Repeated START condition
      Epf_0,
      --  Master has generated a STOP or Repeated START condition
      Epf_1)
     with Size => 1;
   for MSR_EPF_Field use
     (Epf_0 => 0,
      Epf_1 => 1);

   --  STOP Detect Flag
   type MSR_SDF_Field is
     (
      --  Master has not generated a STOP condition
      Sdf_0,
      --  Master has generated a STOP condition
      Sdf_1)
     with Size => 1;
   for MSR_SDF_Field use
     (Sdf_0 => 0,
      Sdf_1 => 1);

   --  NACK Detect Flag
   type MSR_NDF_Field is
     (
      --  Unexpected NACK was not detected
      Ndf_0,
      --  Unexpected NACK was detected
      Ndf_1)
     with Size => 1;
   for MSR_NDF_Field use
     (Ndf_0 => 0,
      Ndf_1 => 1);

   --  Arbitration Lost Flag
   type MSR_ALF_Field is
     (
      --  Master has not lost arbitration
      Alf_0,
      --  Master has lost arbitration
      Alf_1)
     with Size => 1;
   for MSR_ALF_Field use
     (Alf_0 => 0,
      Alf_1 => 1);

   --  FIFO Error Flag
   type MSR_FEF_Field is
     (
      --  No error
      Fef_0,
      --  Master sending or receiving data without a START condition
      Fef_1)
     with Size => 1;
   for MSR_FEF_Field use
     (Fef_0 => 0,
      Fef_1 => 1);

   --  Pin Low Timeout Flag
   type MSR_PLTF_Field is
     (
      --  Pin low timeout has not occurred or is disabled
      Pltf_0,
      --  Pin low timeout has occurred
      Pltf_1)
     with Size => 1;
   for MSR_PLTF_Field use
     (Pltf_0 => 0,
      Pltf_1 => 1);

   --  Data Match Flag
   type MSR_DMF_Field is
     (
      --  Have not received matching data
      Dmf_0,
      --  Have received matching data
      Dmf_1)
     with Size => 1;
   for MSR_DMF_Field use
     (Dmf_0 => 0,
      Dmf_1 => 1);

   --  Master Busy Flag
   type MSR_MBF_Field is
     (
      --  I2C Master is idle
      Mbf_0,
      --  I2C Master is busy
      Mbf_1)
     with Size => 1;
   for MSR_MBF_Field use
     (Mbf_0 => 0,
      Mbf_1 => 1);

   --  Bus Busy Flag
   type MSR_BBF_Field is
     (
      --  I2C Bus is idle
      Bbf_0,
      --  I2C Bus is busy
      Bbf_1)
     with Size => 1;
   for MSR_BBF_Field use
     (Bbf_0 => 0,
      Bbf_1 => 1);

   --  Master Status Register
   type MSR_Register is record
      --  Read-only. Transmit Data Flag
      TDF            : MSR_TDF_Field := NRF_SVD.LPI2C.Tdf_1;
      --  Read-only. Receive Data Flag
      RDF            : MSR_RDF_Field := NRF_SVD.LPI2C.Rdf_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. End Packet Flag
      EPF            : MSR_EPF_Field := NRF_SVD.LPI2C.Epf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. STOP Detect Flag
      SDF            : MSR_SDF_Field := NRF_SVD.LPI2C.Sdf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. NACK Detect Flag
      NDF            : MSR_NDF_Field := NRF_SVD.LPI2C.Ndf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Arbitration Lost Flag
      ALF            : MSR_ALF_Field := NRF_SVD.LPI2C.Alf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FIFO Error Flag
      FEF            : MSR_FEF_Field := NRF_SVD.LPI2C.Fef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Pin Low Timeout Flag
      PLTF           : MSR_PLTF_Field := NRF_SVD.LPI2C.Pltf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Data Match Flag
      DMF            : MSR_DMF_Field := NRF_SVD.LPI2C.Dmf_0;
      --  unspecified
      Reserved_15_23 : HAL.UInt9 := 16#0#;
      --  Read-only. Master Busy Flag
      MBF            : MSR_MBF_Field := NRF_SVD.LPI2C.Mbf_0;
      --  Read-only. Bus Busy Flag
      BBF            : MSR_BBF_Field := NRF_SVD.LPI2C.Bbf_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSR_Register use record
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
      --  Disabled
      Tdie_0,
      --  Enabled
      Tdie_1)
     with Size => 1;
   for MIER_TDIE_Field use
     (Tdie_0 => 0,
      Tdie_1 => 1);

   --  Receive Data Interrupt Enable
   type MIER_RDIE_Field is
     (
      --  Disabled
      Rdie_0,
      --  Enabled
      Rdie_1)
     with Size => 1;
   for MIER_RDIE_Field use
     (Rdie_0 => 0,
      Rdie_1 => 1);

   --  End Packet Interrupt Enable
   type MIER_EPIE_Field is
     (
      --  Disabled
      Epie_0,
      --  Enabled
      Epie_1)
     with Size => 1;
   for MIER_EPIE_Field use
     (Epie_0 => 0,
      Epie_1 => 1);

   --  STOP Detect Interrupt Enable
   type MIER_SDIE_Field is
     (
      --  Disabled
      Sdie_0,
      --  Enabled
      Sdie_1)
     with Size => 1;
   for MIER_SDIE_Field use
     (Sdie_0 => 0,
      Sdie_1 => 1);

   --  NACK Detect Interrupt Enable
   type MIER_NDIE_Field is
     (
      --  Disabled
      Ndie_0,
      --  Enabled
      Ndie_1)
     with Size => 1;
   for MIER_NDIE_Field use
     (Ndie_0 => 0,
      Ndie_1 => 1);

   --  Arbitration Lost Interrupt Enable
   type MIER_ALIE_Field is
     (
      --  Disabled
      Alie_0,
      --  Enabled
      Alie_1)
     with Size => 1;
   for MIER_ALIE_Field use
     (Alie_0 => 0,
      Alie_1 => 1);

   --  FIFO Error Interrupt Enable
   type MIER_FEIE_Field is
     (
      --  Enabled
      Feie_0,
      --  Disabled
      Feie_1)
     with Size => 1;
   for MIER_FEIE_Field use
     (Feie_0 => 0,
      Feie_1 => 1);

   --  Pin Low Timeout Interrupt Enable
   type MIER_PLTIE_Field is
     (
      --  Disabled
      Pltie_0,
      --  Enabled
      Pltie_1)
     with Size => 1;
   for MIER_PLTIE_Field use
     (Pltie_0 => 0,
      Pltie_1 => 1);

   --  Data Match Interrupt Enable
   type MIER_DMIE_Field is
     (
      --  Disabled
      Dmie_0,
      --  Enabled
      Dmie_1)
     with Size => 1;
   for MIER_DMIE_Field use
     (Dmie_0 => 0,
      Dmie_1 => 1);

   --  Master Interrupt Enable Register
   type MIER_Register is record
      --  Transmit Data Interrupt Enable
      TDIE           : MIER_TDIE_Field := NRF_SVD.LPI2C.Tdie_0;
      --  Receive Data Interrupt Enable
      RDIE           : MIER_RDIE_Field := NRF_SVD.LPI2C.Rdie_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  End Packet Interrupt Enable
      EPIE           : MIER_EPIE_Field := NRF_SVD.LPI2C.Epie_0;
      --  STOP Detect Interrupt Enable
      SDIE           : MIER_SDIE_Field := NRF_SVD.LPI2C.Sdie_0;
      --  NACK Detect Interrupt Enable
      NDIE           : MIER_NDIE_Field := NRF_SVD.LPI2C.Ndie_0;
      --  Arbitration Lost Interrupt Enable
      ALIE           : MIER_ALIE_Field := NRF_SVD.LPI2C.Alie_0;
      --  FIFO Error Interrupt Enable
      FEIE           : MIER_FEIE_Field := NRF_SVD.LPI2C.Feie_0;
      --  Pin Low Timeout Interrupt Enable
      PLTIE          : MIER_PLTIE_Field := NRF_SVD.LPI2C.Pltie_0;
      --  Data Match Interrupt Enable
      DMIE           : MIER_DMIE_Field := NRF_SVD.LPI2C.Dmie_0;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIER_Register use record
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
      --  DMA request is disabled
      Tdde_0,
      --  DMA request is enabled
      Tdde_1)
     with Size => 1;
   for MDER_TDDE_Field use
     (Tdde_0 => 0,
      Tdde_1 => 1);

   --  Receive Data DMA Enable
   type MDER_RDDE_Field is
     (
      --  DMA request is disabled
      Rdde_0,
      --  DMA request is enabled
      Rdde_1)
     with Size => 1;
   for MDER_RDDE_Field use
     (Rdde_0 => 0,
      Rdde_1 => 1);

   --  Master DMA Enable Register
   type MDER_Register is record
      --  Transmit Data DMA Enable
      TDDE          : MDER_TDDE_Field := NRF_SVD.LPI2C.Tdde_0;
      --  Receive Data DMA Enable
      RDDE          : MDER_RDDE_Field := NRF_SVD.LPI2C.Rdde_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDER_Register use record
      TDDE          at 0 range 0 .. 0;
      RDDE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Host Request Enable
   type MCFGR0_HREN_Field is
     (
      --  Host request input is disabled
      Hren_0,
      --  Host request input is enabled
      Hren_1)
     with Size => 1;
   for MCFGR0_HREN_Field use
     (Hren_0 => 0,
      Hren_1 => 1);

   --  Host Request Polarity
   type MCFGR0_HRPOL_Field is
     (
      --  Active low
      Hrpol_0,
      --  Active high
      Hrpol_1)
     with Size => 1;
   for MCFGR0_HRPOL_Field use
     (Hrpol_0 => 0,
      Hrpol_1 => 1);

   --  Host Request Select
   type MCFGR0_HRSEL_Field is
     (
      --  Host request input is pin HREQ
      Hrsel_0,
      --  Host request input is input trigger
      Hrsel_1)
     with Size => 1;
   for MCFGR0_HRSEL_Field use
     (Hrsel_0 => 0,
      Hrsel_1 => 1);

   --  Circular FIFO Enable
   type MCFGR0_CIRFIFO_Field is
     (
      --  Circular FIFO is disabled
      Cirfifo_0,
      --  Circular FIFO is enabled
      Cirfifo_1)
     with Size => 1;
   for MCFGR0_CIRFIFO_Field use
     (Cirfifo_0 => 0,
      Cirfifo_1 => 1);

   --  Receive Data Match Only
   type MCFGR0_RDMO_Field is
     (
      --  Received data is stored in the receive FIFO
      Rdmo_0,
      --  Received data is discarded unless the the Data Match Flag (MSR[DMF])
      --  is set
      Rdmo_1)
     with Size => 1;
   for MCFGR0_RDMO_Field use
     (Rdmo_0 => 0,
      Rdmo_1 => 1);

   --  Master Configuration Register 0
   type MCFGR0_Register is record
      --  Host Request Enable
      HREN           : MCFGR0_HREN_Field := NRF_SVD.LPI2C.Hren_0;
      --  Host Request Polarity
      HRPOL          : MCFGR0_HRPOL_Field := NRF_SVD.LPI2C.Hrpol_0;
      --  Host Request Select
      HRSEL          : MCFGR0_HRSEL_Field := NRF_SVD.LPI2C.Hrsel_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Circular FIFO Enable
      CIRFIFO        : MCFGR0_CIRFIFO_Field := NRF_SVD.LPI2C.Cirfifo_0;
      --  Receive Data Match Only
      RDMO           : MCFGR0_RDMO_Field := NRF_SVD.LPI2C.Rdmo_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCFGR0_Register use record
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
      --  Divide by 1
      Prescale_0,
      --  Divide by 2
      Prescale_1,
      --  Divide by 4
      Prescale_2,
      --  Divide by 8
      Prescale_3,
      --  Divide by 16
      Prescale_4,
      --  Divide by 32
      Prescale_5,
      --  Divide by 64
      Prescale_6,
      --  Divide by 128
      Prescale_7)
     with Size => 3;
   for MCFGR1_PRESCALE_Field use
     (Prescale_0 => 0,
      Prescale_1 => 1,
      Prescale_2 => 2,
      Prescale_3 => 3,
      Prescale_4 => 4,
      Prescale_5 => 5,
      Prescale_6 => 6,
      Prescale_7 => 7);

   --  Automatic STOP Generation
   type MCFGR1_AUTOSTOP_Field is
     (
      --  No effect
      Autostop_0,
      --  STOP condition is automatically generated whenever the transmit FIFO
      --  is empty and the LPI2C master is busy
      Autostop_1)
     with Size => 1;
   for MCFGR1_AUTOSTOP_Field use
     (Autostop_0 => 0,
      Autostop_1 => 1);

   --  IGNACK
   type MCFGR1_IGNACK_Field is
     (
      --  LPI2C Master will receive ACK and NACK normally
      Ignack_0,
      --  LPI2C Master will treat a received NACK as if it (NACK) was an ACK
      Ignack_1)
     with Size => 1;
   for MCFGR1_IGNACK_Field use
     (Ignack_0 => 0,
      Ignack_1 => 1);

   --  Timeout Configuration
   type MCFGR1_TIMECFG_Field is
     (
      --  Pin Low Timeout Flag will set if SCL is low for longer than the
      --  configured timeout
      Timecfg_0,
      --  Pin Low Timeout Flag will set if either SCL or SDA is low for longer
      --  than the configured timeout
      Timecfg_1)
     with Size => 1;
   for MCFGR1_TIMECFG_Field use
     (Timecfg_0 => 0,
      Timecfg_1 => 1);

   --  Match Configuration
   type MCFGR1_MATCFG_Field is
     (
      --  Match is disabled
      Matcfg_0,
      --  Match is enabled (1st data word equals MATCH0 OR MATCH1)
      Matcfg_2,
      --  Match is enabled (any data word equals MATCH0 OR MATCH1)
      Matcfg_3,
      --  Match is enabled (1st data word equals MATCH0 AND 2nd data word
      --  equals MATCH1)
      Matcfg_4,
      --  Match is enabled (any data word equals MATCH0 AND next data word
      --  equals MATCH1)
      Matcfg_5,
      --  Match is enabled (1st data word AND MATCH1 equals MATCH0 AND MATCH1)
      Matcfg_6,
      --  Match is enabled (any data word AND MATCH1 equals MATCH0 AND MATCH1)
      Matcfg_7)
     with Size => 3;
   for MCFGR1_MATCFG_Field use
     (Matcfg_0 => 0,
      Matcfg_2 => 2,
      Matcfg_3 => 3,
      Matcfg_4 => 4,
      Matcfg_5 => 5,
      Matcfg_6 => 6,
      Matcfg_7 => 7);

   --  Pin Configuration
   type MCFGR1_PINCFG_Field is
     (
      --  2-pin open drain mode
      Pincfg_0,
      --  2-pin output only mode (ultra-fast mode)
      Pincfg_1,
      --  2-pin push-pull mode
      Pincfg_2,
      --  4-pin push-pull mode
      Pincfg_3,
      --  2-pin open drain mode with separate LPI2C slave
      Pincfg_4,
      --  2-pin output only mode (ultra-fast mode) with separate LPI2C slave
      Pincfg_5,
      --  2-pin push-pull mode with separate LPI2C slave
      Pincfg_6,
      --  4-pin push-pull mode (inverted outputs)
      Pincfg_7)
     with Size => 3;
   for MCFGR1_PINCFG_Field use
     (Pincfg_0 => 0,
      Pincfg_1 => 1,
      Pincfg_2 => 2,
      Pincfg_3 => 3,
      Pincfg_4 => 4,
      Pincfg_5 => 5,
      Pincfg_6 => 6,
      Pincfg_7 => 7);

   --  Master Configuration Register 1
   type MCFGR1_Register is record
      --  Prescaler
      PRESCALE       : MCFGR1_PRESCALE_Field := NRF_SVD.LPI2C.Prescale_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Automatic STOP Generation
      AUTOSTOP       : MCFGR1_AUTOSTOP_Field := NRF_SVD.LPI2C.Autostop_0;
      --  IGNACK
      IGNACK         : MCFGR1_IGNACK_Field := NRF_SVD.LPI2C.Ignack_0;
      --  Timeout Configuration
      TIMECFG        : MCFGR1_TIMECFG_Field := NRF_SVD.LPI2C.Timecfg_0;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Match Configuration
      MATCFG         : MCFGR1_MATCFG_Field := NRF_SVD.LPI2C.Matcfg_0;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Pin Configuration
      PINCFG         : MCFGR1_PINCFG_Field := NRF_SVD.LPI2C.Pincfg_0;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCFGR1_Register use record
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

   subtype MCFGR2_BUSIDLE_Field is HAL.UInt12;
   subtype MCFGR2_FILTSCL_Field is HAL.UInt4;
   subtype MCFGR2_FILTSDA_Field is HAL.UInt4;

   --  Master Configuration Register 2
   type MCFGR2_Register is record
      --  Bus Idle Timeout
      BUSIDLE        : MCFGR2_BUSIDLE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Glitch Filter SCL
      FILTSCL        : MCFGR2_FILTSCL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Glitch Filter SDA
      FILTSDA        : MCFGR2_FILTSDA_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCFGR2_Register use record
      BUSIDLE        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FILTSCL        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      FILTSDA        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype MCFGR3_PINLOW_Field is HAL.UInt12;

   --  Master Configuration Register 3
   type MCFGR3_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Pin Low Timeout
      PINLOW         : MCFGR3_PINLOW_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCFGR3_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PINLOW         at 0 range 8 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype MDMR_MATCH0_Field is HAL.UInt8;
   subtype MDMR_MATCH1_Field is HAL.UInt8;

   --  Master Data Match Register
   type MDMR_Register is record
      --  Match 0 Value
      MATCH0         : MDMR_MATCH0_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Match 1 Value
      MATCH1         : MDMR_MATCH1_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDMR_Register use record
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

   subtype MFCR_TXWATER_Field is HAL.UInt2;
   subtype MFCR_RXWATER_Field is HAL.UInt2;

   --  Master FIFO Control Register
   type MFCR_Register is record
      --  Transmit FIFO Watermark
      TXWATER        : MFCR_TXWATER_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Receive FIFO Watermark
      RXWATER        : MFCR_RXWATER_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MFCR_Register use record
      TXWATER        at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      RXWATER        at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype MFSR_TXCOUNT_Field is HAL.UInt3;
   subtype MFSR_RXCOUNT_Field is HAL.UInt3;

   --  Master FIFO Status Register
   type MFSR_Register is record
      --  Read-only. Transmit FIFO Count
      TXCOUNT        : MFSR_TXCOUNT_Field;
      --  unspecified
      Reserved_3_15  : HAL.UInt13;
      --  Read-only. Receive FIFO Count
      RXCOUNT        : MFSR_RXCOUNT_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MFSR_Register use record
      TXCOUNT        at 0 range 0 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      RXCOUNT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype MTDR_DATA_Field is HAL.UInt8;

   --  Command Data
   type MTDR_CMD_Field is
     (
      --  Transmit DATA[7:0]
      Cmd_0,
      --  Receive (DATA[7:0] + 1) bytes
      Cmd_1,
      --  Generate STOP condition
      Cmd_2,
      --  Receive and discard (DATA[7:0] + 1) bytes
      Cmd_3,
      --  Generate (repeated) START and transmit address in DATA[7:0]
      Cmd_4,
      --  Generate (repeated) START and transmit address in DATA[7:0]. This
      --  transfer expects a NACK to be returned.
      Cmd_5,
      --  Generate (repeated) START and transmit address in DATA[7:0] using
      --  high speed mode
      Cmd_6,
      --  Generate (repeated) START and transmit address in DATA[7:0] using
      --  high speed mode. This transfer expects a NACK to be returned.
      Cmd_7)
     with Size => 3;
   for MTDR_CMD_Field use
     (Cmd_0 => 0,
      Cmd_1 => 1,
      Cmd_2 => 2,
      Cmd_3 => 3,
      Cmd_4 => 4,
      Cmd_5 => 5,
      Cmd_6 => 6,
      Cmd_7 => 7);

   --  Master Transmit Data Register
   type MTDR_Register is record
      --  Write-only. Transmit Data
      DATA           : MTDR_DATA_Field := 16#0#;
      --  Write-only. Command Data
      CMD            : MTDR_CMD_Field := NRF_SVD.LPI2C.Cmd_0;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTDR_Register use record
      DATA           at 0 range 0 .. 7;
      CMD            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MRDR_DATA_Field is HAL.UInt8;

   --  RX Empty
   type MRDR_RXEMPTY_Field is
     (
      --  Receive FIFO is not empty
      Rxempty_0,
      --  Receive FIFO is empty
      Rxempty_1)
     with Size => 1;
   for MRDR_RXEMPTY_Field use
     (Rxempty_0 => 0,
      Rxempty_1 => 1);

   --  Master Receive Data Register
   type MRDR_Register is record
      --  Read-only. Receive Data
      DATA           : MRDR_DATA_Field;
      --  unspecified
      Reserved_8_13  : HAL.UInt6;
      --  Read-only. RX Empty
      RXEMPTY        : MRDR_RXEMPTY_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MRDR_Register use record
      DATA           at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      RXEMPTY        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Slave Enable
   type SCR_SEN_Field is
     (
      --  I2C Slave mode is disabled
      Sen_0,
      --  I2C Slave mode is enabled
      Sen_1)
     with Size => 1;
   for SCR_SEN_Field use
     (Sen_0 => 0,
      Sen_1 => 1);

   --  Software Reset
   type SCR_RST_Field is
     (
      --  Slave mode logic is not reset
      Rst_0,
      --  Slave mode logic is reset
      Rst_1)
     with Size => 1;
   for SCR_RST_Field use
     (Rst_0 => 0,
      Rst_1 => 1);

   --  Filter Enable
   type SCR_FILTEN_Field is
     (
      --  Disable digital filter and output delay counter for slave mode
      Filten_0,
      --  Enable digital filter and output delay counter for slave mode
      Filten_1)
     with Size => 1;
   for SCR_FILTEN_Field use
     (Filten_0 => 0,
      Filten_1 => 1);

   --  Filter Doze Enable
   type SCR_FILTDZ_Field is
     (
      --  Filter remains enabled in Doze mode
      Filtdz_0,
      --  Filter is disabled in Doze mode
      Filtdz_1)
     with Size => 1;
   for SCR_FILTDZ_Field use
     (Filtdz_0 => 0,
      Filtdz_1 => 1);

   --  Reset Transmit FIFO
   type SCR_RTF_Field is
     (
      --  No effect
      Rtf_0,
      --  Transmit Data Register is now empty
      Rtf_1)
     with Size => 1;
   for SCR_RTF_Field use
     (Rtf_0 => 0,
      Rtf_1 => 1);

   --  Reset Receive FIFO
   type SCR_RRF_Field is
     (
      --  No effect
      Rrf_0,
      --  Receive Data Register is now empty
      Rrf_1)
     with Size => 1;
   for SCR_RRF_Field use
     (Rrf_0 => 0,
      Rrf_1 => 1);

   --  Slave Control Register
   type SCR_Register is record
      --  Slave Enable
      SEN            : SCR_SEN_Field := NRF_SVD.LPI2C.Sen_0;
      --  Software Reset
      RST            : SCR_RST_Field := NRF_SVD.LPI2C.Rst_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Filter Enable
      FILTEN         : SCR_FILTEN_Field := NRF_SVD.LPI2C.Filten_0;
      --  Filter Doze Enable
      FILTDZ         : SCR_FILTDZ_Field := NRF_SVD.LPI2C.Filtdz_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Transmit FIFO
      RTF            : SCR_RTF_Field := NRF_SVD.LPI2C.Rtf_0;
      --  Write-only. Reset Receive FIFO
      RRF            : SCR_RRF_Field := NRF_SVD.LPI2C.Rrf_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
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
      --  Transmit data not requested
      Tdf_0,
      --  Transmit data is requested
      Tdf_1)
     with Size => 1;
   for SSR_TDF_Field use
     (Tdf_0 => 0,
      Tdf_1 => 1);

   --  Receive Data Flag
   type SSR_RDF_Field is
     (
      --  Receive data is not ready
      Rdf_0,
      --  Receive data is ready
      Rdf_1)
     with Size => 1;
   for SSR_RDF_Field use
     (Rdf_0 => 0,
      Rdf_1 => 1);

   --  Address Valid Flag
   type SSR_AVF_Field is
     (
      --  Address Status Register is not valid
      Avf_0,
      --  Address Status Register is valid
      Avf_1)
     with Size => 1;
   for SSR_AVF_Field use
     (Avf_0 => 0,
      Avf_1 => 1);

   --  Transmit ACK Flag
   type SSR_TAF_Field is
     (
      --  Transmit ACK/NACK is not required
      Taf_0,
      --  Transmit ACK/NACK is required
      Taf_1)
     with Size => 1;
   for SSR_TAF_Field use
     (Taf_0 => 0,
      Taf_1 => 1);

   --  Repeated Start Flag
   type SSR_RSF_Field is
     (
      --  Slave has not detected a Repeated START condition
      Rsf_0,
      --  Slave has detected a Repeated START condition
      Rsf_1)
     with Size => 1;
   for SSR_RSF_Field use
     (Rsf_0 => 0,
      Rsf_1 => 1);

   --  STOP Detect Flag
   type SSR_SDF_Field is
     (
      --  Slave has not detected a STOP condition
      Sdf_0,
      --  Slave has detected a STOP condition
      Sdf_1)
     with Size => 1;
   for SSR_SDF_Field use
     (Sdf_0 => 0,
      Sdf_1 => 1);

   --  Bit Error Flag
   type SSR_BEF_Field is
     (
      --  Slave has not detected a bit error
      Bef_0,
      --  Slave has detected a bit error
      Bef_1)
     with Size => 1;
   for SSR_BEF_Field use
     (Bef_0 => 0,
      Bef_1 => 1);

   --  FIFO Error Flag
   type SSR_FEF_Field is
     (
      --  FIFO underflow or overflow was not detected
      Fef_0,
      --  FIFO underflow or overflow was detected
      Fef_1)
     with Size => 1;
   for SSR_FEF_Field use
     (Fef_0 => 0,
      Fef_1 => 1);

   --  Address Match 0 Flag
   type SSR_AM0F_Field is
     (
      --  Have not received an ADDR0 matching address
      Am0F_0,
      --  Have received an ADDR0 matching address
      Am0F_1)
     with Size => 1;
   for SSR_AM0F_Field use
     (Am0F_0 => 0,
      Am0F_1 => 1);

   --  Address Match 1 Flag
   type SSR_AM1F_Field is
     (
      --  Have not received an ADDR1 or ADDR0/ADDR1 range matching address
      Am1F_0,
      --  Have received an ADDR1 or ADDR0/ADDR1 range matching address
      Am1F_1)
     with Size => 1;
   for SSR_AM1F_Field use
     (Am1F_0 => 0,
      Am1F_1 => 1);

   --  General Call Flag
   type SSR_GCF_Field is
     (
      --  Slave has not detected the General Call Address or the General Call
      --  Address is disabled
      Gcf_0,
      --  Slave has detected the General Call Address
      Gcf_1)
     with Size => 1;
   for SSR_GCF_Field use
     (Gcf_0 => 0,
      Gcf_1 => 1);

   --  SMBus Alert Response Flag
   type SSR_SARF_Field is
     (
      --  SMBus Alert Response is disabled or not detected
      Sarf_0,
      --  SMBus Alert Response is enabled and detected
      Sarf_1)
     with Size => 1;
   for SSR_SARF_Field use
     (Sarf_0 => 0,
      Sarf_1 => 1);

   --  Slave Busy Flag
   type SSR_SBF_Field is
     (
      --  I2C Slave is idle
      Sbf_0,
      --  I2C Slave is busy
      Sbf_1)
     with Size => 1;
   for SSR_SBF_Field use
     (Sbf_0 => 0,
      Sbf_1 => 1);

   --  Bus Busy Flag
   type SSR_BBF_Field is
     (
      --  I2C Bus is idle
      Bbf_0,
      --  I2C Bus is busy
      Bbf_1)
     with Size => 1;
   for SSR_BBF_Field use
     (Bbf_0 => 0,
      Bbf_1 => 1);

   --  Slave Status Register
   type SSR_Register is record
      --  Read-only. Transmit Data Flag
      TDF            : SSR_TDF_Field := NRF_SVD.LPI2C.Tdf_0;
      --  Read-only. Receive Data Flag
      RDF            : SSR_RDF_Field := NRF_SVD.LPI2C.Rdf_0;
      --  Read-only. Address Valid Flag
      AVF            : SSR_AVF_Field := NRF_SVD.LPI2C.Avf_0;
      --  Read-only. Transmit ACK Flag
      TAF            : SSR_TAF_Field := NRF_SVD.LPI2C.Taf_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Repeated Start Flag
      RSF            : SSR_RSF_Field := NRF_SVD.LPI2C.Rsf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. STOP Detect Flag
      SDF            : SSR_SDF_Field := NRF_SVD.LPI2C.Sdf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Bit Error Flag
      BEF            : SSR_BEF_Field := NRF_SVD.LPI2C.Bef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FIFO Error Flag
      FEF            : SSR_FEF_Field := NRF_SVD.LPI2C.Fef_0;
      --  Read-only. Address Match 0 Flag
      AM0F           : SSR_AM0F_Field := NRF_SVD.LPI2C.Am0F_0;
      --  Read-only. Address Match 1 Flag
      AM1F           : SSR_AM1F_Field := NRF_SVD.LPI2C.Am1F_0;
      --  Read-only. General Call Flag
      GCF            : SSR_GCF_Field := NRF_SVD.LPI2C.Gcf_0;
      --  Read-only. SMBus Alert Response Flag
      SARF           : SSR_SARF_Field := NRF_SVD.LPI2C.Sarf_0;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Read-only. Slave Busy Flag
      SBF            : SSR_SBF_Field := NRF_SVD.LPI2C.Sbf_0;
      --  Read-only. Bus Busy Flag
      BBF            : SSR_BBF_Field := NRF_SVD.LPI2C.Bbf_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSR_Register use record
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
      --  Disabled
      Tdie_0,
      --  Enabled
      Tdie_1)
     with Size => 1;
   for SIER_TDIE_Field use
     (Tdie_0 => 0,
      Tdie_1 => 1);

   --  Receive Data Interrupt Enable
   type SIER_RDIE_Field is
     (
      --  Disabled
      Rdie_0,
      --  Enabled
      Rdie_1)
     with Size => 1;
   for SIER_RDIE_Field use
     (Rdie_0 => 0,
      Rdie_1 => 1);

   --  Address Valid Interrupt Enable
   type SIER_AVIE_Field is
     (
      --  Disabled
      Avie_0,
      --  Enabled
      Avie_1)
     with Size => 1;
   for SIER_AVIE_Field use
     (Avie_0 => 0,
      Avie_1 => 1);

   --  Transmit ACK Interrupt Enable
   type SIER_TAIE_Field is
     (
      --  Disabled
      Taie_0,
      --  Enabled
      Taie_1)
     with Size => 1;
   for SIER_TAIE_Field use
     (Taie_0 => 0,
      Taie_1 => 1);

   --  Repeated Start Interrupt Enable
   type SIER_RSIE_Field is
     (
      --  Disabled
      Rsie_0,
      --  Enabled
      Rsie_1)
     with Size => 1;
   for SIER_RSIE_Field use
     (Rsie_0 => 0,
      Rsie_1 => 1);

   --  STOP Detect Interrupt Enable
   type SIER_SDIE_Field is
     (
      --  Disabled
      Sdie_0,
      --  Enabled
      Sdie_1)
     with Size => 1;
   for SIER_SDIE_Field use
     (Sdie_0 => 0,
      Sdie_1 => 1);

   --  Bit Error Interrupt Enable
   type SIER_BEIE_Field is
     (
      --  Disabled
      Beie_0,
      --  Enabled
      Beie_1)
     with Size => 1;
   for SIER_BEIE_Field use
     (Beie_0 => 0,
      Beie_1 => 1);

   --  FIFO Error Interrupt Enable
   type SIER_FEIE_Field is
     (
      --  Disabled
      Feie_0,
      --  Enabled
      Feie_1)
     with Size => 1;
   for SIER_FEIE_Field use
     (Feie_0 => 0,
      Feie_1 => 1);

   --  Address Match 0 Interrupt Enable
   type SIER_AM0IE_Field is
     (
      --  Enabled
      Am0Ie_0,
      --  Disabled
      Am0Ie_1)
     with Size => 1;
   for SIER_AM0IE_Field use
     (Am0Ie_0 => 0,
      Am0Ie_1 => 1);

   --  Address Match 1 Interrupt Enable
   type SIER_AM1F_Field is
     (
      --  Disabled
      Am1F_0,
      --  Enabled
      Am1F_1)
     with Size => 1;
   for SIER_AM1F_Field use
     (Am1F_0 => 0,
      Am1F_1 => 1);

   --  General Call Interrupt Enable
   type SIER_GCIE_Field is
     (
      --  Disabled
      Gcie_0,
      --  Enabled
      Gcie_1)
     with Size => 1;
   for SIER_GCIE_Field use
     (Gcie_0 => 0,
      Gcie_1 => 1);

   --  SMBus Alert Response Interrupt Enable
   type SIER_SARIE_Field is
     (
      --  Disabled
      Sarie_0,
      --  Enabled
      Sarie_1)
     with Size => 1;
   for SIER_SARIE_Field use
     (Sarie_0 => 0,
      Sarie_1 => 1);

   --  Slave Interrupt Enable Register
   type SIER_Register is record
      --  Transmit Data Interrupt Enable
      TDIE           : SIER_TDIE_Field := NRF_SVD.LPI2C.Tdie_0;
      --  Receive Data Interrupt Enable
      RDIE           : SIER_RDIE_Field := NRF_SVD.LPI2C.Rdie_0;
      --  Address Valid Interrupt Enable
      AVIE           : SIER_AVIE_Field := NRF_SVD.LPI2C.Avie_0;
      --  Transmit ACK Interrupt Enable
      TAIE           : SIER_TAIE_Field := NRF_SVD.LPI2C.Taie_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Repeated Start Interrupt Enable
      RSIE           : SIER_RSIE_Field := NRF_SVD.LPI2C.Rsie_0;
      --  STOP Detect Interrupt Enable
      SDIE           : SIER_SDIE_Field := NRF_SVD.LPI2C.Sdie_0;
      --  Bit Error Interrupt Enable
      BEIE           : SIER_BEIE_Field := NRF_SVD.LPI2C.Beie_0;
      --  FIFO Error Interrupt Enable
      FEIE           : SIER_FEIE_Field := NRF_SVD.LPI2C.Feie_0;
      --  Address Match 0 Interrupt Enable
      AM0IE          : SIER_AM0IE_Field := NRF_SVD.LPI2C.Am0Ie_0;
      --  Address Match 1 Interrupt Enable
      AM1F           : SIER_AM1F_Field := NRF_SVD.LPI2C.Am1F_0;
      --  General Call Interrupt Enable
      GCIE           : SIER_GCIE_Field := NRF_SVD.LPI2C.Gcie_0;
      --  SMBus Alert Response Interrupt Enable
      SARIE          : SIER_SARIE_Field := NRF_SVD.LPI2C.Sarie_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIER_Register use record
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
      --  DMA request is disabled
      Tdde_0,
      --  DMA request is enabled
      Tdde_1)
     with Size => 1;
   for SDER_TDDE_Field use
     (Tdde_0 => 0,
      Tdde_1 => 1);

   --  Receive Data DMA Enable
   type SDER_RDDE_Field is
     (
      --  DMA request is disabled
      Rdde_0,
      --  DMA request is enabled
      Rdde_1)
     with Size => 1;
   for SDER_RDDE_Field use
     (Rdde_0 => 0,
      Rdde_1 => 1);

   --  Address Valid DMA Enable
   type SDER_AVDE_Field is
     (
      --  DMA request is disabled
      Avde_0,
      --  DMA request is enabled
      Avde_1)
     with Size => 1;
   for SDER_AVDE_Field use
     (Avde_0 => 0,
      Avde_1 => 1);

   --  Slave DMA Enable Register
   type SDER_Register is record
      --  Transmit Data DMA Enable
      TDDE          : SDER_TDDE_Field := NRF_SVD.LPI2C.Tdde_0;
      --  Receive Data DMA Enable
      RDDE          : SDER_RDDE_Field := NRF_SVD.LPI2C.Rdde_0;
      --  Address Valid DMA Enable
      AVDE          : SDER_AVDE_Field := NRF_SVD.LPI2C.Avde_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDER_Register use record
      TDDE          at 0 range 0 .. 0;
      RDDE          at 0 range 1 .. 1;
      AVDE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Address SCL Stall
   type SCFGR1_ADRSTALL_Field is
     (
      --  Clock stretching is disabled
      Adrstall_0,
      --  Clock stretching is enabled
      Adrstall_1)
     with Size => 1;
   for SCFGR1_ADRSTALL_Field use
     (Adrstall_0 => 0,
      Adrstall_1 => 1);

   --  RX SCL Stall
   type SCFGR1_RXSTALL_Field is
     (
      --  Clock stretching is disabled
      Rxstall_0,
      --  Clock stretching is enabled
      Rxstall_1)
     with Size => 1;
   for SCFGR1_RXSTALL_Field use
     (Rxstall_0 => 0,
      Rxstall_1 => 1);

   --  TX Data SCL Stall
   type SCFGR1_TXDSTALL_Field is
     (
      --  Clock stretching is disabled
      Txdstall_0,
      --  Clock stretching is enabled
      Txdstall_1)
     with Size => 1;
   for SCFGR1_TXDSTALL_Field use
     (Txdstall_0 => 0,
      Txdstall_1 => 1);

   --  ACK SCL Stall
   type SCFGR1_ACKSTALL_Field is
     (
      --  Clock stretching is disabled
      Ackstall_0,
      --  Clock stretching is enabled
      Ackstall_1)
     with Size => 1;
   for SCFGR1_ACKSTALL_Field use
     (Ackstall_0 => 0,
      Ackstall_1 => 1);

   --  General Call Enable
   type SCFGR1_GCEN_Field is
     (
      --  General Call address is disabled
      Gcen_0,
      --  General Call address is enabled
      Gcen_1)
     with Size => 1;
   for SCFGR1_GCEN_Field use
     (Gcen_0 => 0,
      Gcen_1 => 1);

   --  SMBus Alert Enable
   type SCFGR1_SAEN_Field is
     (
      --  Disables match on SMBus Alert
      Saen_0,
      --  Enables match on SMBus Alert
      Saen_1)
     with Size => 1;
   for SCFGR1_SAEN_Field use
     (Saen_0 => 0,
      Saen_1 => 1);

   --  Transmit Flag Configuration
   type SCFGR1_TXCFG_Field is
     (
      --  Transmit Data Flag will only assert during a slave-transmit transfer
      --  when the Transmit Data register is empty
      Txcfg_0,
      --  Transmit Data Flag will assert whenever the Transmit Data register is
      --  empty
      Txcfg_1)
     with Size => 1;
   for SCFGR1_TXCFG_Field use
     (Txcfg_0 => 0,
      Txcfg_1 => 1);

   --  Receive Data Configuration
   type SCFGR1_RXCFG_Field is
     (
      --  Reading the Receive Data register will return received data and clear
      --  the Receive Data flag (MSR[RDF]).
      Rxcfg_0,
      --  Reading the Receive Data register when the Address Valid flag
      --  (SSR[AVF])is set, will return the Address Status register and clear
      --  the Address Valid flag. Reading the Receive Data register when the
      --  Address Valid flag is clear, will return received data and clear the
      --  Receive Data flag (MSR[RDF]).
      Rxcfg_1)
     with Size => 1;
   for SCFGR1_RXCFG_Field use
     (Rxcfg_0 => 0,
      Rxcfg_1 => 1);

   --  Ignore NACK
   type SCFGR1_IGNACK_Field is
     (
      --  Slave will end transfer when NACK is detected
      Ignack_0,
      --  Slave will not end transfer when NACK detected
      Ignack_1)
     with Size => 1;
   for SCFGR1_IGNACK_Field use
     (Ignack_0 => 0,
      Ignack_1 => 1);

   --  High Speed Mode Enable
   type SCFGR1_HSMEN_Field is
     (
      --  Disables detection of HS-mode master code
      Hsmen_0,
      --  Enables detection of HS-mode master code
      Hsmen_1)
     with Size => 1;
   for SCFGR1_HSMEN_Field use
     (Hsmen_0 => 0,
      Hsmen_1 => 1);

   --  Address Configuration
   type SCFGR1_ADDRCFG_Field is
     (
      --  Address match 0 (7-bit)
      Addrcfg_0,
      --  Address match 0 (10-bit)
      Addrcfg_1,
      --  Address match 0 (7-bit) or Address match 1 (7-bit)
      Addrcfg_2,
      --  Address match 0 (10-bit) or Address match 1 (10-bit)
      Addrcfg_3,
      --  Address match 0 (7-bit) or Address match 1 (10-bit)
      Addrcfg_4,
      --  Address match 0 (10-bit) or Address match 1 (7-bit)
      Addrcfg_5,
      --  From Address match 0 (7-bit) to Address match 1 (7-bit)
      Addrcfg_6,
      --  From Address match 0 (10-bit) to Address match 1 (10-bit)
      Addrcfg_7)
     with Size => 3;
   for SCFGR1_ADDRCFG_Field use
     (Addrcfg_0 => 0,
      Addrcfg_1 => 1,
      Addrcfg_2 => 2,
      Addrcfg_3 => 3,
      Addrcfg_4 => 4,
      Addrcfg_5 => 5,
      Addrcfg_6 => 6,
      Addrcfg_7 => 7);

   --  Slave Configuration Register 1
   type SCFGR1_Register is record
      --  Address SCL Stall
      ADRSTALL       : SCFGR1_ADRSTALL_Field := NRF_SVD.LPI2C.Adrstall_0;
      --  RX SCL Stall
      RXSTALL        : SCFGR1_RXSTALL_Field := NRF_SVD.LPI2C.Rxstall_0;
      --  TX Data SCL Stall
      TXDSTALL       : SCFGR1_TXDSTALL_Field := NRF_SVD.LPI2C.Txdstall_0;
      --  ACK SCL Stall
      ACKSTALL       : SCFGR1_ACKSTALL_Field := NRF_SVD.LPI2C.Ackstall_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  General Call Enable
      GCEN           : SCFGR1_GCEN_Field := NRF_SVD.LPI2C.Gcen_0;
      --  SMBus Alert Enable
      SAEN           : SCFGR1_SAEN_Field := NRF_SVD.LPI2C.Saen_0;
      --  Transmit Flag Configuration
      TXCFG          : SCFGR1_TXCFG_Field := NRF_SVD.LPI2C.Txcfg_0;
      --  Receive Data Configuration
      RXCFG          : SCFGR1_RXCFG_Field := NRF_SVD.LPI2C.Rxcfg_0;
      --  Ignore NACK
      IGNACK         : SCFGR1_IGNACK_Field := NRF_SVD.LPI2C.Ignack_0;
      --  High Speed Mode Enable
      HSMEN          : SCFGR1_HSMEN_Field := NRF_SVD.LPI2C.Hsmen_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Address Configuration
      ADDRCFG        : SCFGR1_ADDRCFG_Field := NRF_SVD.LPI2C.Addrcfg_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCFGR1_Register use record
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

   subtype SCFGR2_CLKHOLD_Field is HAL.UInt4;
   subtype SCFGR2_DATAVD_Field is HAL.UInt6;
   subtype SCFGR2_FILTSCL_Field is HAL.UInt4;
   subtype SCFGR2_FILTSDA_Field is HAL.UInt4;

   --  Slave Configuration Register 2
   type SCFGR2_Register is record
      --  Clock Hold Time
      CLKHOLD        : SCFGR2_CLKHOLD_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Data Valid Delay
      DATAVD         : SCFGR2_DATAVD_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Glitch Filter SCL
      FILTSCL        : SCFGR2_FILTSCL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Glitch Filter SDA
      FILTSDA        : SCFGR2_FILTSDA_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCFGR2_Register use record
      CLKHOLD        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DATAVD         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FILTSCL        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      FILTSDA        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SAMR_ADDR0_Field is HAL.UInt10;
   subtype SAMR_ADDR1_Field is HAL.UInt10;

   --  Slave Address Match Register
   type SAMR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Address 0 Value
      ADDR0          : SAMR_ADDR0_Field := 16#0#;
      --  unspecified
      Reserved_11_16 : HAL.UInt6 := 16#0#;
      --  Address 1 Value
      ADDR1          : SAMR_ADDR1_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ADDR0          at 0 range 1 .. 10;
      Reserved_11_16 at 0 range 11 .. 16;
      ADDR1          at 0 range 17 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype SASR_RADDR_Field is HAL.UInt11;

   --  Address Not Valid
   type SASR_ANV_Field is
     (
      --  Received Address (RADDR) is valid
      Anv_0,
      --  Received Address (RADDR) is not valid
      Anv_1)
     with Size => 1;
   for SASR_ANV_Field use
     (Anv_0 => 0,
      Anv_1 => 1);

   --  Slave Address Status Register
   type SASR_Register is record
      --  Read-only. Received Address
      RADDR          : SASR_RADDR_Field;
      --  unspecified
      Reserved_11_13 : HAL.UInt3;
      --  Read-only. Address Not Valid
      ANV            : SASR_ANV_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SASR_Register use record
      RADDR          at 0 range 0 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      ANV            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Transmit NACK
   type STAR_TXNACK_Field is
     (
      --  Write a Transmit ACK for each received word
      Txnack_0,
      --  Write a Transmit NACK for each received word
      Txnack_1)
     with Size => 1;
   for STAR_TXNACK_Field use
     (Txnack_0 => 0,
      Txnack_1 => 1);

   --  Slave Transmit ACK Register
   type STAR_Register is record
      --  Transmit NACK
      TXNACK        : STAR_TXNACK_Field := NRF_SVD.LPI2C.Txnack_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAR_Register use record
      TXNACK        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype STDR_DATA_Field is HAL.UInt8;

   --  Slave Transmit Data Register
   type STDR_Register is record
      --  Write-only. Transmit Data
      DATA          : STDR_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STDR_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SRDR_DATA_Field is HAL.UInt8;

   --  RX Empty
   type SRDR_RXEMPTY_Field is
     (
      --  The Receive Data Register is not empty
      Rxempty_0,
      --  The Receive Data Register is empty
      Rxempty_1)
     with Size => 1;
   for SRDR_RXEMPTY_Field use
     (Rxempty_0 => 0,
      Rxempty_1 => 1);

   --  Start Of Frame
   type SRDR_SOF_Field is
     (
      --  Indicates this is not the first data word since a (repeated) START or
      --  STOP condition
      Sof_0,
      --  Indicates this is the first data word since a (repeated) START or
      --  STOP condition
      Sof_1)
     with Size => 1;
   for SRDR_SOF_Field use
     (Sof_0 => 0,
      Sof_1 => 1);

   --  Slave Receive Data Register
   type SRDR_Register is record
      --  Read-only. Receive Data
      DATA           : SRDR_DATA_Field;
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

   for SRDR_Register use record
      DATA           at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      RXEMPTY        at 0 range 14 .. 14;
      SOF            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPI2C
   type LPI2C_Peripheral is record
      --  Version ID Register
      VERID  : aliased VERID_Register;
      --  Parameter Register
      PARAM  : aliased PARAM_Register;
      --  Master Control Register
      MCR    : aliased MCR_Register;
      --  Master Status Register
      MSR    : aliased MSR_Register;
      --  Master Interrupt Enable Register
      MIER   : aliased MIER_Register;
      --  Master DMA Enable Register
      MDER   : aliased MDER_Register;
      --  Master Configuration Register 0
      MCFGR0 : aliased MCFGR0_Register;
      --  Master Configuration Register 1
      MCFGR1 : aliased MCFGR1_Register;
      --  Master Configuration Register 2
      MCFGR2 : aliased MCFGR2_Register;
      --  Master Configuration Register 3
      MCFGR3 : aliased MCFGR3_Register;
      --  Master Data Match Register
      MDMR   : aliased MDMR_Register;
      --  Master Clock Configuration Register 0
      MCCR0  : aliased MCCR_Register;
      --  Master Clock Configuration Register 1
      MCCR1  : aliased MCCR_Register;
      --  Master FIFO Control Register
      MFCR   : aliased MFCR_Register;
      --  Master FIFO Status Register
      MFSR   : aliased MFSR_Register;
      --  Master Transmit Data Register
      MTDR   : aliased MTDR_Register;
      --  Master Receive Data Register
      MRDR   : aliased MRDR_Register;
      --  Slave Control Register
      SCR    : aliased SCR_Register;
      --  Slave Status Register
      SSR    : aliased SSR_Register;
      --  Slave Interrupt Enable Register
      SIER   : aliased SIER_Register;
      --  Slave DMA Enable Register
      SDER   : aliased SDER_Register;
      --  Slave Configuration Register 1
      SCFGR1 : aliased SCFGR1_Register;
      --  Slave Configuration Register 2
      SCFGR2 : aliased SCFGR2_Register;
      --  Slave Address Match Register
      SAMR   : aliased SAMR_Register;
      --  Slave Address Status Register
      SASR   : aliased SASR_Register;
      --  Slave Transmit ACK Register
      STAR   : aliased STAR_Register;
      --  Slave Transmit Data Register
      STDR   : aliased STDR_Register;
      --  Slave Receive Data Register
      SRDR   : aliased SRDR_Register;
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

   --  LPI2C
   LPI2C1_Periph : aliased LPI2C_Peripheral
     with Import, Address => System'To_Address (16#403F0000#);

   --  LPI2C
   LPI2C2_Periph : aliased LPI2C_Peripheral
     with Import, Address => System'To_Address (16#403F4000#);

   --  LPI2C
   LPI2C3_Periph : aliased LPI2C_Peripheral
     with Import, Address => System'To_Address (16#403F8000#);

   --  LPI2C
   LPI2C4_Periph : aliased LPI2C_Peripheral
     with Import, Address => System'To_Address (16#403FC000#);

end NRF_SVD.LPI2C;
