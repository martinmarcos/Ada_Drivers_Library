--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LPSPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Module Identification Number
   type VERID_FEATURE_Field is
     (
      --  Standard feature set supporting 32-bit shift register.
      Feature_4)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_4 => 4);

   subtype LPSPI0_VERID_MINOR_Field is HAL.UInt8;
   subtype LPSPI0_VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type LPSPI0_VERID_Register is record
      --  Read-only. Module Identification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : LPSPI0_VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : LPSPI0_VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   subtype LPSPI0_PARAM_TXFIFO_Field is HAL.UInt8;
   subtype LPSPI0_PARAM_RXFIFO_Field is HAL.UInt8;

   --  Parameter Register
   type LPSPI0_PARAM_Register is record
      --  Read-only. Transmit FIFO Size
      TXFIFO         : LPSPI0_PARAM_TXFIFO_Field;
      --  Read-only. Receive FIFO Size
      RXFIFO         : LPSPI0_PARAM_RXFIFO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_PARAM_Register use record
      TXFIFO         at 0 range 0 .. 7;
      RXFIFO         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Module Enable
   type CR_MEN_Field is
     (
      --  Module is disabled.
      Men_0,
      --  Module is enabled.
      Men_1)
     with Size => 1;
   for CR_MEN_Field use
     (Men_0 => 0,
      Men_1 => 1);

   --  Software Reset
   type CR_RST_Field is
     (
      --  Master logic is not reset.
      Rst_0,
      --  Master logic is reset.
      Rst_1)
     with Size => 1;
   for CR_RST_Field use
     (Rst_0 => 0,
      Rst_1 => 1);

   --  Doze mode enable
   type CR_DOZEN_Field is
     (
      --  Module is enabled in Doze mode.
      Dozen_0,
      --  Module is disabled in Doze mode.
      Dozen_1)
     with Size => 1;
   for CR_DOZEN_Field use
     (Dozen_0 => 0,
      Dozen_1 => 1);

   --  Debug Enable
   type CR_DBGEN_Field is
     (
      --  Module is disabled in debug mode.
      Dbgen_0,
      --  Module is enabled in debug mode.
      Dbgen_1)
     with Size => 1;
   for CR_DBGEN_Field use
     (Dbgen_0 => 0,
      Dbgen_1 => 1);

   --  Reset Transmit FIFO
   type CR_RTF_Field is
     (
      --  No effect.
      Rtf_0,
      --  Transmit FIFO is reset.
      Rtf_1)
     with Size => 1;
   for CR_RTF_Field use
     (Rtf_0 => 0,
      Rtf_1 => 1);

   --  Reset Receive FIFO
   type CR_RRF_Field is
     (
      --  No effect.
      Rrf_0,
      --  Receive FIFO is reset.
      Rrf_1)
     with Size => 1;
   for CR_RRF_Field use
     (Rrf_0 => 0,
      Rrf_1 => 1);

   --  Control Register
   type LPSPI0_CR_Register is record
      --  Module Enable
      MEN            : CR_MEN_Field := NRF_SVD.LPSPI.Men_0;
      --  Software Reset
      RST            : CR_RST_Field := NRF_SVD.LPSPI.Rst_0;
      --  Doze mode enable
      DOZEN          : CR_DOZEN_Field := NRF_SVD.LPSPI.Dozen_0;
      --  Debug Enable
      DBGEN          : CR_DBGEN_Field := NRF_SVD.LPSPI.Dbgen_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Reset Transmit FIFO
      RTF            : CR_RTF_Field := NRF_SVD.LPSPI.Rtf_0;
      --  Write-only. Reset Receive FIFO
      RRF            : CR_RRF_Field := NRF_SVD.LPSPI.Rrf_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_CR_Register use record
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
   type SR_TDF_Field is
     (
      --  Transmit data not requested.
      Tdf_0,
      --  Transmit data is requested.
      Tdf_1)
     with Size => 1;
   for SR_TDF_Field use
     (Tdf_0 => 0,
      Tdf_1 => 1);

   --  Receive Data Flag
   type SR_RDF_Field is
     (
      --  Receive Data is not ready.
      Rdf_0,
      --  Receive data is ready.
      Rdf_1)
     with Size => 1;
   for SR_RDF_Field use
     (Rdf_0 => 0,
      Rdf_1 => 1);

   --  Word Complete Flag
   type SR_WCF_Field is
     (
      --  Transfer word not completed.
      Wcf_0,
      --  Transfer word completed.
      Wcf_1)
     with Size => 1;
   for SR_WCF_Field use
     (Wcf_0 => 0,
      Wcf_1 => 1);

   --  Frame Complete Flag
   type SR_FCF_Field is
     (
      --  Frame transfer has not completed.
      Fcf_0,
      --  Frame transfer has completed.
      Fcf_1)
     with Size => 1;
   for SR_FCF_Field use
     (Fcf_0 => 0,
      Fcf_1 => 1);

   --  Transfer Complete Flag
   type SR_TCF_Field is
     (
      --  All transfers have not completed.
      Tcf_0,
      --  All transfers have completed.
      Tcf_1)
     with Size => 1;
   for SR_TCF_Field use
     (Tcf_0 => 0,
      Tcf_1 => 1);

   --  Transmit Error Flag
   type SR_TEF_Field is
     (
      --  Transmit FIFO underrun has not occurred.
      Tef_0,
      --  Transmit FIFO underrun has occurred
      Tef_1)
     with Size => 1;
   for SR_TEF_Field use
     (Tef_0 => 0,
      Tef_1 => 1);

   --  Receive Error Flag
   type SR_REF_Field is
     (
      --  Receive FIFO has not overflowed.
      Ref_0,
      --  Receive FIFO has overflowed.
      Ref_1)
     with Size => 1;
   for SR_REF_Field use
     (Ref_0 => 0,
      Ref_1 => 1);

   --  Data Match Flag
   type SR_DMF_Field is
     (
      --  Have not received matching data.
      Dmf_0,
      --  Have received matching data.
      Dmf_1)
     with Size => 1;
   for SR_DMF_Field use
     (Dmf_0 => 0,
      Dmf_1 => 1);

   --  Module Busy Flag
   type SR_MBF_Field is
     (
      --  LPSPI is idle.
      Mbf_0,
      --  LPSPI is busy.
      Mbf_1)
     with Size => 1;
   for SR_MBF_Field use
     (Mbf_0 => 0,
      Mbf_1 => 1);

   --  Status Register
   type LPSPI0_SR_Register is record
      --  Read-only. Transmit Data Flag
      TDF            : SR_TDF_Field := NRF_SVD.LPSPI.Tdf_1;
      --  Read-only. Receive Data Flag
      RDF            : SR_RDF_Field := NRF_SVD.LPSPI.Rdf_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Word Complete Flag
      WCF            : SR_WCF_Field := NRF_SVD.LPSPI.Wcf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Frame Complete Flag
      FCF            : SR_FCF_Field := NRF_SVD.LPSPI.Fcf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Transfer Complete Flag
      TCF            : SR_TCF_Field := NRF_SVD.LPSPI.Tcf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Transmit Error Flag
      TEF            : SR_TEF_Field := NRF_SVD.LPSPI.Tef_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Receive Error Flag
      REF            : SR_REF_Field := NRF_SVD.LPSPI.Ref_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Data Match Flag
      DMF            : SR_DMF_Field := NRF_SVD.LPSPI.Dmf_0;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Read-only. Module Busy Flag
      MBF            : SR_MBF_Field := NRF_SVD.LPSPI.Mbf_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_SR_Register use record
      TDF            at 0 range 0 .. 0;
      RDF            at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      WCF            at 0 range 8 .. 8;
      FCF            at 0 range 9 .. 9;
      TCF            at 0 range 10 .. 10;
      TEF            at 0 range 11 .. 11;
      REF            at 0 range 12 .. 12;
      DMF            at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      MBF            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transmit Data Interrupt Enable
   type IER_TDIE_Field is
     (
      --  Interrupt disabled.
      Tdie_0,
      --  Interrupt enabled
      Tdie_1)
     with Size => 1;
   for IER_TDIE_Field use
     (Tdie_0 => 0,
      Tdie_1 => 1);

   --  Receive Data Interrupt Enable
   type IER_RDIE_Field is
     (
      --  Interrupt disabled.
      Rdie_0,
      --  Interrupt enabled.
      Rdie_1)
     with Size => 1;
   for IER_RDIE_Field use
     (Rdie_0 => 0,
      Rdie_1 => 1);

   --  Word Complete Interrupt Enable
   type IER_WCIE_Field is
     (
      --  Interrupt disabled.
      Wcie_0,
      --  Interrupt enabled.
      Wcie_1)
     with Size => 1;
   for IER_WCIE_Field use
     (Wcie_0 => 0,
      Wcie_1 => 1);

   --  Frame Complete Interrupt Enable
   type IER_FCIE_Field is
     (
      --  Interrupt disabled.
      Fcie_0,
      --  Interrupt enabled.
      Fcie_1)
     with Size => 1;
   for IER_FCIE_Field use
     (Fcie_0 => 0,
      Fcie_1 => 1);

   --  Transfer Complete Interrupt Enable
   type IER_TCIE_Field is
     (
      --  Interrupt disabled.
      Tcie_0,
      --  Interrupt enabled.
      Tcie_1)
     with Size => 1;
   for IER_TCIE_Field use
     (Tcie_0 => 0,
      Tcie_1 => 1);

   --  Transmit Error Interrupt Enable
   type IER_TEIE_Field is
     (
      --  Interrupt disabled.
      Teie_0,
      --  Interrupt enabled.
      Teie_1)
     with Size => 1;
   for IER_TEIE_Field use
     (Teie_0 => 0,
      Teie_1 => 1);

   --  Receive Error Interrupt Enable
   type IER_REIE_Field is
     (
      --  Interrupt disabled.
      Reie_0,
      --  Interrupt enabled.
      Reie_1)
     with Size => 1;
   for IER_REIE_Field use
     (Reie_0 => 0,
      Reie_1 => 1);

   --  Data Match Interrupt Enable
   type IER_DMIE_Field is
     (
      --  Interrupt disabled.
      Dmie_0,
      --  Interrupt enabled.
      Dmie_1)
     with Size => 1;
   for IER_DMIE_Field use
     (Dmie_0 => 0,
      Dmie_1 => 1);

   --  Interrupt Enable Register
   type LPSPI0_IER_Register is record
      --  Transmit Data Interrupt Enable
      TDIE           : IER_TDIE_Field := NRF_SVD.LPSPI.Tdie_0;
      --  Receive Data Interrupt Enable
      RDIE           : IER_RDIE_Field := NRF_SVD.LPSPI.Rdie_0;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Word Complete Interrupt Enable
      WCIE           : IER_WCIE_Field := NRF_SVD.LPSPI.Wcie_0;
      --  Frame Complete Interrupt Enable
      FCIE           : IER_FCIE_Field := NRF_SVD.LPSPI.Fcie_0;
      --  Transfer Complete Interrupt Enable
      TCIE           : IER_TCIE_Field := NRF_SVD.LPSPI.Tcie_0;
      --  Transmit Error Interrupt Enable
      TEIE           : IER_TEIE_Field := NRF_SVD.LPSPI.Teie_0;
      --  Receive Error Interrupt Enable
      REIE           : IER_REIE_Field := NRF_SVD.LPSPI.Reie_0;
      --  Data Match Interrupt Enable
      DMIE           : IER_DMIE_Field := NRF_SVD.LPSPI.Dmie_0;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_IER_Register use record
      TDIE           at 0 range 0 .. 0;
      RDIE           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      WCIE           at 0 range 8 .. 8;
      FCIE           at 0 range 9 .. 9;
      TCIE           at 0 range 10 .. 10;
      TEIE           at 0 range 11 .. 11;
      REIE           at 0 range 12 .. 12;
      DMIE           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Transmit Data DMA Enable
   type DER_TDDE_Field is
     (
      --  DMA request disabled.
      Tdde_0,
      --  DMA request enabled
      Tdde_1)
     with Size => 1;
   for DER_TDDE_Field use
     (Tdde_0 => 0,
      Tdde_1 => 1);

   --  Receive Data DMA Enable
   type DER_RDDE_Field is
     (
      --  DMA request disabled.
      Rdde_0,
      --  DMA request enabled.
      Rdde_1)
     with Size => 1;
   for DER_RDDE_Field use
     (Rdde_0 => 0,
      Rdde_1 => 1);

   --  DMA Enable Register
   type LPSPI0_DER_Register is record
      --  Transmit Data DMA Enable
      TDDE          : DER_TDDE_Field := NRF_SVD.LPSPI.Tdde_0;
      --  Receive Data DMA Enable
      RDDE          : DER_RDDE_Field := NRF_SVD.LPSPI.Rdde_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_DER_Register use record
      TDDE          at 0 range 0 .. 0;
      RDDE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Host Request Enable
   type CFGR0_HREN_Field is
     (
      --  Host request is disabled.
      Hren_0,
      --  Host request is enabled.
      Hren_1)
     with Size => 1;
   for CFGR0_HREN_Field use
     (Hren_0 => 0,
      Hren_1 => 1);

   --  Host Request Polarity
   type CFGR0_HRPOL_Field is
     (
      --  Active low.
      Hrpol_0,
      --  Active high.
      Hrpol_1)
     with Size => 1;
   for CFGR0_HRPOL_Field use
     (Hrpol_0 => 0,
      Hrpol_1 => 1);

   --  Host Request Select
   type CFGR0_HRSEL_Field is
     (
      --  Host request input is pin LPSPI_HREQ.
      Hrsel_0,
      --  Host request input is input trigger.
      Hrsel_1)
     with Size => 1;
   for CFGR0_HRSEL_Field use
     (Hrsel_0 => 0,
      Hrsel_1 => 1);

   --  Circular FIFO Enable
   type CFGR0_CIRFIFO_Field is
     (
      --  Circular FIFO is disabled.
      Cirfifo_0,
      --  Circular FIFO is enabled.
      Cirfifo_1)
     with Size => 1;
   for CFGR0_CIRFIFO_Field use
     (Cirfifo_0 => 0,
      Cirfifo_1 => 1);

   --  Receive Data Match Only
   type CFGR0_RDMO_Field is
     (
      --  Received data is stored in the receive FIFO as normal.
      Rdmo_0,
      --  Received data is discarded unless the DMF is set.
      Rdmo_1)
     with Size => 1;
   for CFGR0_RDMO_Field use
     (Rdmo_0 => 0,
      Rdmo_1 => 1);

   --  Configuration Register 0
   type LPSPI0_CFGR0_Register is record
      --  Host Request Enable
      HREN           : CFGR0_HREN_Field := NRF_SVD.LPSPI.Hren_0;
      --  Host Request Polarity
      HRPOL          : CFGR0_HRPOL_Field := NRF_SVD.LPSPI.Hrpol_0;
      --  Host Request Select
      HRSEL          : CFGR0_HRSEL_Field := NRF_SVD.LPSPI.Hrsel_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Circular FIFO Enable
      CIRFIFO        : CFGR0_CIRFIFO_Field := NRF_SVD.LPSPI.Cirfifo_0;
      --  Receive Data Match Only
      RDMO           : CFGR0_RDMO_Field := NRF_SVD.LPSPI.Rdmo_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_CFGR0_Register use record
      HREN           at 0 range 0 .. 0;
      HRPOL          at 0 range 1 .. 1;
      HRSEL          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CIRFIFO        at 0 range 8 .. 8;
      RDMO           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Master Mode
   type CFGR1_MASTER_Field is
     (
      --  Slave mode.
      Master_0,
      --  Master mode.
      Master_1)
     with Size => 1;
   for CFGR1_MASTER_Field use
     (Master_0 => 0,
      Master_1 => 1);

   --  Sample Point
   type CFGR1_SAMPLE_Field is
     (
      --  Input data sampled on SCK edge.
      Sample_0,
      --  Input data sampled on delayed SCK edge.
      Sample_1)
     with Size => 1;
   for CFGR1_SAMPLE_Field use
     (Sample_0 => 0,
      Sample_1 => 1);

   --  Automatic PCS
   type CFGR1_AUTOPCS_Field is
     (
      --  Automatic PCS generation disabled.
      Autopcs_0,
      --  Automatic PCS generation enabled.
      Autopcs_1)
     with Size => 1;
   for CFGR1_AUTOPCS_Field use
     (Autopcs_0 => 0,
      Autopcs_1 => 1);

   --  No Stall
   type CFGR1_NOSTALL_Field is
     (
      --  Transfers will stall when transmit FIFO is empty or receive FIFO is
      --  full.
      Nostall_0,
      --  Transfers will not stall, allowing transmit FIFO underrun or receive
      --  FIFO overrun to occur.
      Nostall_1)
     with Size => 1;
   for CFGR1_NOSTALL_Field use
     (Nostall_0 => 0,
      Nostall_1 => 1);

   --  Peripheral Chip Select Polarity
   type CFGR1_PCSPOL_Field is
     (
      --  The PCSx is active low.
      Pcspol_0,
      --  The PCSx is active high.
      Pcspol_1)
     with Size => 4;
   for CFGR1_PCSPOL_Field use
     (Pcspol_0 => 0,
      Pcspol_1 => 1);

   --  Match Configuration
   type CFGR1_MATCFG_Field is
     (
      --  Match disabled.
      Matcfg_0,
      --  Match enabled (1st data word equals MATCH0 OR MATCH1).
      Matcfg_2,
      --  Match enabled (any data word equals MATCH0 OR MATCH1).
      Matcfg_3,
      --  Match enabled (1st data word equals MATCH0 AND 2nd data word equals
      --  MATCH1).
      Matcfg_4,
      --  Match enabled (any data word equals MATCH0 AND next data word equals
      --  MATCH1)
      Matcfg_5,
      --  Match enabled (1st data word AND MATCH1 equals MATCH0 AND MATCH1)
      Matcfg_6,
      --  Match enabled (any data word AND MATCH1 equals MATCH0 AND MATCH1).
      Matcfg_7)
     with Size => 3;
   for CFGR1_MATCFG_Field use
     (Matcfg_0 => 0,
      Matcfg_2 => 2,
      Matcfg_3 => 3,
      Matcfg_4 => 4,
      Matcfg_5 => 5,
      Matcfg_6 => 6,
      Matcfg_7 => 7);

   --  Pin Configuration
   type CFGR1_PINCFG_Field is
     (
      --  SIN is used for input data and SOUT for output data.
      Pincfg_0,
      --  SIN is used for both input and output data.
      Pincfg_1,
      --  SOUT is used for both input and output data.
      Pincfg_2,
      --  SOUT is used for input data and SIN for output data.
      Pincfg_3)
     with Size => 2;
   for CFGR1_PINCFG_Field use
     (Pincfg_0 => 0,
      Pincfg_1 => 1,
      Pincfg_2 => 2,
      Pincfg_3 => 3);

   --  Output Config
   type CFGR1_OUTCFG_Field is
     (
      --  Output data retains last value when chip select is negated.
      Outcfg_0,
      --  Output data is tristated when chip select is negated.
      Outcfg_1)
     with Size => 1;
   for CFGR1_OUTCFG_Field use
     (Outcfg_0 => 0,
      Outcfg_1 => 1);

   --  Peripheral Chip Select Configuration
   type CFGR1_PCSCFG_Field is
     (
      --  PCS[3:2] are enabled.
      Pcscfg_0,
      --  PCS[3:2] are disabled.
      Pcscfg_1)
     with Size => 1;
   for CFGR1_PCSCFG_Field use
     (Pcscfg_0 => 0,
      Pcscfg_1 => 1);

   --  Configuration Register 1
   type LPSPI0_CFGR1_Register is record
      --  Master Mode
      MASTER         : CFGR1_MASTER_Field := NRF_SVD.LPSPI.Master_0;
      --  Sample Point
      SAMPLE         : CFGR1_SAMPLE_Field := NRF_SVD.LPSPI.Sample_0;
      --  Automatic PCS
      AUTOPCS        : CFGR1_AUTOPCS_Field := NRF_SVD.LPSPI.Autopcs_0;
      --  No Stall
      NOSTALL        : CFGR1_NOSTALL_Field := NRF_SVD.LPSPI.Nostall_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Peripheral Chip Select Polarity
      PCSPOL         : CFGR1_PCSPOL_Field := NRF_SVD.LPSPI.Pcspol_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Match Configuration
      MATCFG         : CFGR1_MATCFG_Field := NRF_SVD.LPSPI.Matcfg_0;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Pin Configuration
      PINCFG         : CFGR1_PINCFG_Field := NRF_SVD.LPSPI.Pincfg_0;
      --  Output Config
      OUTCFG         : CFGR1_OUTCFG_Field := NRF_SVD.LPSPI.Outcfg_0;
      --  Peripheral Chip Select Configuration
      PCSCFG         : CFGR1_PCSCFG_Field := NRF_SVD.LPSPI.Pcscfg_0;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_CFGR1_Register use record
      MASTER         at 0 range 0 .. 0;
      SAMPLE         at 0 range 1 .. 1;
      AUTOPCS        at 0 range 2 .. 2;
      NOSTALL        at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCSPOL         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MATCFG         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      PINCFG         at 0 range 24 .. 25;
      OUTCFG         at 0 range 26 .. 26;
      PCSCFG         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LPSPI0_CCR_SCKDIV_Field is HAL.UInt8;
   subtype LPSPI0_CCR_DBT_Field is HAL.UInt8;
   subtype LPSPI0_CCR_PCSSCK_Field is HAL.UInt8;
   subtype LPSPI0_CCR_SCKPCS_Field is HAL.UInt8;

   --  Clock Configuration Register
   type LPSPI0_CCR_Register is record
      --  SCK Divider
      SCKDIV : LPSPI0_CCR_SCKDIV_Field := 16#0#;
      --  Delay Between Transfers
      DBT    : LPSPI0_CCR_DBT_Field := 16#0#;
      --  PCS to SCK Delay
      PCSSCK : LPSPI0_CCR_PCSSCK_Field := 16#0#;
      --  SCK to PCS Delay
      SCKPCS : LPSPI0_CCR_SCKPCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_CCR_Register use record
      SCKDIV at 0 range 0 .. 7;
      DBT    at 0 range 8 .. 15;
      PCSSCK at 0 range 16 .. 23;
      SCKPCS at 0 range 24 .. 31;
   end record;

   subtype LPSPI0_FCR_TXWATER_Field is HAL.UInt8;
   subtype LPSPI0_FCR_RXWATER_Field is HAL.UInt8;

   --  FIFO Control Register
   type LPSPI0_FCR_Register is record
      --  Transmit FIFO Watermark
      TXWATER        : LPSPI0_FCR_TXWATER_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Receive FIFO Watermark
      RXWATER        : LPSPI0_FCR_RXWATER_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_FCR_Register use record
      TXWATER        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RXWATER        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPSPI0_FSR_TXCOUNT_Field is HAL.UInt8;
   subtype LPSPI0_FSR_RXCOUNT_Field is HAL.UInt8;

   --  FIFO Status Register
   type LPSPI0_FSR_Register is record
      --  Read-only. Transmit FIFO Count
      TXCOUNT        : LPSPI0_FSR_TXCOUNT_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Receive FIFO Count
      RXCOUNT        : LPSPI0_FSR_RXCOUNT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_FSR_Register use record
      TXCOUNT        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      RXCOUNT        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype LPSPI0_TCR_FRAMESZ_Field is HAL.UInt12;

   --  Transfer Width
   type TCR_WIDTH_Field is
     (
      --  Single bit transfer.
      Width_0,
      --  Two bit transfer.
      Width_1,
      --  Four bit transfer.
      Width_2)
     with Size => 2;
   for TCR_WIDTH_Field use
     (Width_0 => 0,
      Width_1 => 1,
      Width_2 => 2);

   --  Transmit Data Mask
   type TCR_TXMSK_Field is
     (
      --  Normal transfer.
      Txmsk_0,
      --  Mask transmit data.
      Txmsk_1)
     with Size => 1;
   for TCR_TXMSK_Field use
     (Txmsk_0 => 0,
      Txmsk_1 => 1);

   --  Receive Data Mask
   type TCR_RXMSK_Field is
     (
      --  Normal transfer.
      Rxmsk_0,
      --  Receive data is masked.
      Rxmsk_1)
     with Size => 1;
   for TCR_RXMSK_Field use
     (Rxmsk_0 => 0,
      Rxmsk_1 => 1);

   --  Continuing Command
   type TCR_CONTC_Field is
     (
      --  Command word for start of new transfer.
      Contc_0,
      --  Command word for continuing transfer.
      Contc_1)
     with Size => 1;
   for TCR_CONTC_Field use
     (Contc_0 => 0,
      Contc_1 => 1);

   --  Continuous Transfer
   type TCR_CONT_Field is
     (
      --  Continuous transfer disabled.
      Cont_0,
      --  Continuous transfer enabled.
      Cont_1)
     with Size => 1;
   for TCR_CONT_Field use
     (Cont_0 => 0,
      Cont_1 => 1);

   --  Byte Swap
   type TCR_BYSW_Field is
     (
      --  Byte swap disabled.
      Bysw_0,
      --  Byte swap enabled.
      Bysw_1)
     with Size => 1;
   for TCR_BYSW_Field use
     (Bysw_0 => 0,
      Bysw_1 => 1);

   --  LSB First
   type TCR_LSBF_Field is
     (
      --  Data is transferred MSB first.
      Lsbf_0,
      --  Data is transferred LSB first.
      Lsbf_1)
     with Size => 1;
   for TCR_LSBF_Field use
     (Lsbf_0 => 0,
      Lsbf_1 => 1);

   --  Peripheral Chip Select
   type TCR_PCS_Field is
     (
      --  Transfer using LPSPI_PCS[0]
      Pcs_0,
      --  Transfer using LPSPI_PCS[1]
      Pcs_1,
      --  Transfer using LPSPI_PCS[2]
      Pcs_2,
      --  Transfer using LPSPI_PCS[3]
      Pcs_3)
     with Size => 2;
   for TCR_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3);

   --  Prescaler Value
   type TCR_PRESCALE_Field is
     (
      --  Divide by 1.
      Prescale_0,
      --  Divide by 2.
      Prescale_1,
      --  Divide by 4.
      Prescale_2,
      --  Divide by 8.
      Prescale_3,
      --  Divide by 16.
      Prescale_4,
      --  Divide by 32.
      Prescale_5,
      --  Divide by 64.
      Prescale_6,
      --  Divide by 128.
      Prescale_7)
     with Size => 3;
   for TCR_PRESCALE_Field use
     (Prescale_0 => 0,
      Prescale_1 => 1,
      Prescale_2 => 2,
      Prescale_3 => 3,
      Prescale_4 => 4,
      Prescale_5 => 5,
      Prescale_6 => 6,
      Prescale_7 => 7);

   --  Clock Phase
   type TCR_CPHA_Field is
     (
      --  Data is captured on the leading edge of SCK and changed on the
      --  following edge.
      Cpha_0,
      --  Data is changed on the leading edge of SCK and captured on the
      --  following edge.
      Cpha_1)
     with Size => 1;
   for TCR_CPHA_Field use
     (Cpha_0 => 0,
      Cpha_1 => 1);

   --  Clock Polarity
   type TCR_CPOL_Field is
     (
      --  The inactive state value of SCK is low.
      Cpol_0,
      --  The inactive state value of SCK is high.
      Cpol_1)
     with Size => 1;
   for TCR_CPOL_Field use
     (Cpol_0 => 0,
      Cpol_1 => 1);

   --  Transmit Command Register
   type LPSPI0_TCR_Register is record
      --  Frame Size
      FRAMESZ        : LPSPI0_TCR_FRAMESZ_Field := 16#1F#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Transfer Width
      WIDTH          : TCR_WIDTH_Field := NRF_SVD.LPSPI.Width_0;
      --  Transmit Data Mask
      TXMSK          : TCR_TXMSK_Field := NRF_SVD.LPSPI.Txmsk_0;
      --  Receive Data Mask
      RXMSK          : TCR_RXMSK_Field := NRF_SVD.LPSPI.Rxmsk_0;
      --  Continuing Command
      CONTC          : TCR_CONTC_Field := NRF_SVD.LPSPI.Contc_0;
      --  Continuous Transfer
      CONT           : TCR_CONT_Field := NRF_SVD.LPSPI.Cont_0;
      --  Byte Swap
      BYSW           : TCR_BYSW_Field := NRF_SVD.LPSPI.Bysw_0;
      --  LSB First
      LSBF           : TCR_LSBF_Field := NRF_SVD.LPSPI.Lsbf_0;
      --  Peripheral Chip Select
      PCS            : TCR_PCS_Field := NRF_SVD.LPSPI.Pcs_0;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Prescaler Value
      PRESCALE       : TCR_PRESCALE_Field := NRF_SVD.LPSPI.Prescale_0;
      --  Clock Phase
      CPHA           : TCR_CPHA_Field := NRF_SVD.LPSPI.Cpha_0;
      --  Clock Polarity
      CPOL           : TCR_CPOL_Field := NRF_SVD.LPSPI.Cpol_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_TCR_Register use record
      FRAMESZ        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WIDTH          at 0 range 16 .. 17;
      TXMSK          at 0 range 18 .. 18;
      RXMSK          at 0 range 19 .. 19;
      CONTC          at 0 range 20 .. 20;
      CONT           at 0 range 21 .. 21;
      BYSW           at 0 range 22 .. 22;
      LSBF           at 0 range 23 .. 23;
      PCS            at 0 range 24 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PRESCALE       at 0 range 27 .. 29;
      CPHA           at 0 range 30 .. 30;
      CPOL           at 0 range 31 .. 31;
   end record;

   --  Start Of Frame
   type RSR_SOF_Field is
     (
      --  Subsequent data word received after LPSPI_PCS assertion.
      Sof_0,
      --  First data word received after LPSPI_PCS assertion.
      Sof_1)
     with Size => 1;
   for RSR_SOF_Field use
     (Sof_0 => 0,
      Sof_1 => 1);

   --  RX FIFO Empty
   type RSR_RXEMPTY_Field is
     (
      --  RX FIFO is not empty.
      Rxempty_0,
      --  RX FIFO is empty.
      Rxempty_1)
     with Size => 1;
   for RSR_RXEMPTY_Field use
     (Rxempty_0 => 0,
      Rxempty_1 => 1);

   --  Receive Status Register
   type LPSPI0_RSR_Register is record
      --  Read-only. Start Of Frame
      SOF           : RSR_SOF_Field;
      --  Read-only. RX FIFO Empty
      RXEMPTY       : RSR_RXEMPTY_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSPI0_RSR_Register use record
      SOF           at 0 range 0 .. 0;
      RXEMPTY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low power SPI
   type LPSPI_Peripheral is record
      --  Version ID Register
      VERID : aliased LPSPI0_VERID_Register;
      --  Parameter Register
      PARAM : aliased LPSPI0_PARAM_Register;
      --  Control Register
      CR    : aliased LPSPI0_CR_Register;
      --  Status Register
      SR    : aliased LPSPI0_SR_Register;
      --  Interrupt Enable Register
      IER   : aliased LPSPI0_IER_Register;
      --  DMA Enable Register
      DER   : aliased LPSPI0_DER_Register;
      --  Configuration Register 0
      CFGR0 : aliased LPSPI0_CFGR0_Register;
      --  Configuration Register 1
      CFGR1 : aliased LPSPI0_CFGR1_Register;
      --  Data Match Register 0
      DMR0  : aliased HAL.UInt32;
      --  Data Match Register 1
      DMR1  : aliased HAL.UInt32;
      --  Clock Configuration Register
      CCR   : aliased LPSPI0_CCR_Register;
      --  FIFO Control Register
      FCR   : aliased LPSPI0_FCR_Register;
      --  FIFO Status Register
      FSR   : aliased LPSPI0_FSR_Register;
      --  Transmit Command Register
      TCR   : aliased LPSPI0_TCR_Register;
      --  Transmit Data Register
      TDR   : aliased HAL.UInt32;
      --  Receive Status Register
      RSR   : aliased LPSPI0_RSR_Register;
      --  Receive Data Register
      RDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for LPSPI_Peripheral use record
      VERID at 16#0# range 0 .. 31;
      PARAM at 16#4# range 0 .. 31;
      CR    at 16#10# range 0 .. 31;
      SR    at 16#14# range 0 .. 31;
      IER   at 16#18# range 0 .. 31;
      DER   at 16#1C# range 0 .. 31;
      CFGR0 at 16#20# range 0 .. 31;
      CFGR1 at 16#24# range 0 .. 31;
      DMR0  at 16#30# range 0 .. 31;
      DMR1  at 16#34# range 0 .. 31;
      CCR   at 16#40# range 0 .. 31;
      FCR   at 16#58# range 0 .. 31;
      FSR   at 16#5C# range 0 .. 31;
      TCR   at 16#60# range 0 .. 31;
      TDR   at 16#64# range 0 .. 31;
      RSR   at 16#70# range 0 .. 31;
      RDR   at 16#74# range 0 .. 31;
   end record;

   --  Low power SPI
   LPSPI0_Periph : aliased LPSPI_Peripheral
     with Import, Address => System'To_Address (16#4002C000#);

   --  Low power SPI
   LPSPI1_Periph : aliased LPSPI_Peripheral
     with Import, Address => System'To_Address (16#4002D000#);

end NRF_SVD.LPSPI;
