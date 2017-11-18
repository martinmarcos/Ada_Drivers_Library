--  This spec has been automatically generated from XMC1200.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  Module Identification Register
   type ID_Register is record
      --  Read-only. Module Revision Number
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number Value
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   --  SSC Protocol Available
   type CCFG_SSC_Field is
     (
      --  The SSC protocol is not available.
      VALUE1,
      --  The SSC protocol is available.
      VALUE2)
     with Size => 1;
   for CCFG_SSC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ASC Protocol Available
   type CCFG_ASC_Field is
     (
      --  The ASC protocol is not available.
      VALUE1,
      --  The ASC protocol is available.
      VALUE2)
     with Size => 1;
   for CCFG_ASC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  IIC Protocol Available
   type CCFG_IIC_Field is
     (
      --  The IIC protocol is not available.
      VALUE1,
      --  The IIC protocol is available.
      VALUE2)
     with Size => 1;
   for CCFG_IIC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  IIS Protocol Available
   type CCFG_IIS_Field is
     (
      --  The IIS protocol is not available.
      VALUE1,
      --  The IIS protocol is available.
      VALUE2)
     with Size => 1;
   for CCFG_IIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive FIFO Buffer Available
   type CCFG_RB_Field is
     (
      --  A receive FIFO buffer is not available.
      VALUE1,
      --  A receive FIFO buffer is available.
      VALUE2)
     with Size => 1;
   for CCFG_RB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit FIFO Buffer Available
   type CCFG_TB_Field is
     (
      --  A transmit FIFO buffer is not available.
      VALUE1,
      --  A transmit FIFO buffer is available.
      VALUE2)
     with Size => 1;
   for CCFG_TB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel Configuration Register
   type CCFG_Register is record
      --  Read-only. SSC Protocol Available
      SSC           : CCFG_SSC_Field;
      --  Read-only. ASC Protocol Available
      ASC           : CCFG_ASC_Field;
      --  Read-only. IIC Protocol Available
      IIC           : CCFG_IIC_Field;
      --  Read-only. IIS Protocol Available
      IIS           : CCFG_IIS_Field;
      --  unspecified
      Reserved_4_5  : HAL.UInt2;
      --  Read-only. Receive FIFO Buffer Available
      RB            : CCFG_RB_Field;
      --  Read-only. Transmit FIFO Buffer Available
      TB            : CCFG_TB_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_Register use record
      SSC           at 0 range 0 .. 0;
      ASC           at 0 range 1 .. 1;
      IIC           at 0 range 2 .. 2;
      IIS           at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      RB            at 0 range 6 .. 6;
      TB            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Module Enable
   type KSCFG_MODEN_Field is
     (
      --  The module is switched off immediately (without respecting a stop
      --  condition). It does not react on mode control actions and the module
      --  clock is switched off. The module does not react on read accesses and
      --  ignores write accesses (except to KSCFG).
      VALUE1,
      --  The module is switched on and can operate. After writing 1 to MODEN,
      --  it is recommended to read register KSCFG to avoid pipeline effects in
      --  the control block before accessing other Service Request Processing
      --  registers.
      VALUE2)
     with Size => 1;
   for KSCFG_MODEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Bit Protection for MODEN
   type KSCFG_BPMODEN_Field is
     (
      --  MODEN is not changed.
      VALUE1,
      --  MODEN is updated with the written value.
      VALUE2)
     with Size => 1;
   for KSCFG_BPMODEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Normal Operation Mode Configuration
   type KSCFG_NOMCFG_Field is
     (
      --  Run mode 0 is selected.
      VALUE1,
      --  Run mode 1 is selected.
      VALUE2,
      --  Stop mode 0 is selected.
      VALUE3,
      --  Stop mode 1 is selected.
      VALUE4)
     with Size => 2;
   for KSCFG_NOMCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Bit Protection for NOMCFG
   type KSCFG_BPNOM_Field is
     (
      --  NOMCFG is not changed.
      VALUE1,
      --  NOMCFG is updated with the written value.
      VALUE2)
     with Size => 1;
   for KSCFG_BPNOM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype KSCFG_SUMCFG_Field is HAL.UInt2;

   --  Bit Protection for SUMCFG
   type KSCFG_BPSUM_Field is
     (
      --  SUMCFG is not changed.
      VALUE1,
      --  SUMCFG is updated with the written value.
      VALUE2)
     with Size => 1;
   for KSCFG_BPSUM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Kernel State Configuration Register
   type KSCFG_Register is record
      --  Module Enable
      MODEN          : KSCFG_MODEN_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Bit Protection for MODEN
      BPMODEN        : KSCFG_BPMODEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Normal Operation Mode Configuration
      NOMCFG         : KSCFG_NOMCFG_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Write-only. Bit Protection for NOMCFG
      BPNOM          : KSCFG_BPNOM_Field := NRF_SVD.USIC.VALUE1;
      --  Suspend Mode Configuration
      SUMCFG         : KSCFG_SUMCFG_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Write-only. Bit Protection for SUMCFG
      BPSUM          : KSCFG_BPSUM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KSCFG_Register use record
      MODEN          at 0 range 0 .. 0;
      BPMODEN        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NOMCFG         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BPNOM          at 0 range 7 .. 7;
      SUMCFG         at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BPSUM          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype FDR_STEP_Field is HAL.UInt10;

   --  Divider Mode
   type FDR_DM_Field is
     (
      --  The divider is switched off, fFD = 0.
      VALUE1,
      --  Normal divider mode selected.
      VALUE2,
      --  Fractional divider mode selected.
      VALUE3,
      --  The divider is switched off, fFD = 0.
      VALUE4)
     with Size => 2;
   for FDR_DM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   subtype FDR_RESULT_Field is HAL.UInt10;

   --  Fractional Divider Register
   type FDR_Register is record
      --  Step Value
      STEP           : FDR_STEP_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Divider Mode
      DM             : FDR_DM_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Result Value
      RESULT         : FDR_RESULT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDR_Register use record
      STEP           at 0 range 0 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      DM             at 0 range 14 .. 15;
      RESULT         at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Clock Selection
   type BRG_CLKSEL_Field is
     (
      --  The fractional divider frequency fFD is selected.
      VALUE1,
      --  The trigger signal DX1T defines fPIN. Signal MCLK toggles with fPIN.
      VALUE3,
      --  Signal MCLK corresponds to the DX1S signal and the frequency fPIN is
      --  derived from the rising edges of DX1S.
      VALUE4)
     with Size => 2;
   for BRG_CLKSEL_Field use
     (VALUE1 => 0,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Timing Measurement Enable
   type BRG_TMEN_Field is
     (
      --  Timing measurement is disabled: The trigger signals DX0T and DX1T are
      --  ignored.
      VALUE1,
      --  Timing measurement is enabled: The 10-bit counter is incremented by 1
      --  with fPPP and stops counting when reaching its maximum value. If one
      --  of the trigger signals DX0T or DX1T become active, the counter value
      --  is captured into bit field CTV, the counter is cleared and a transmit
      --  shift event is generated.
      VALUE2)
     with Size => 1;
   for BRG_TMEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable 2:1 Divider for fPPP
   type BRG_PPPEN_Field is
     (
      --  The 2:1 divider for fPPP is disabled. fPPP = fPIN
      VALUE1,
      --  The 2:1 divider for fPPP is enabled. fPPP = fMCLK = fPIN / 2.
      VALUE2)
     with Size => 1;
   for BRG_PPPEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Selection for CTQ
   type BRG_CTQSEL_Field is
     (
      --  fCTQIN = fPDIV
      VALUE1,
      --  fCTQIN = fPPP
      VALUE2,
      --  fCTQIN = fSCLK
      VALUE3,
      --  fCTQIN = fMCLK
      VALUE4)
     with Size => 2;
   for BRG_CTQSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   subtype BRG_PCTQ_Field is HAL.UInt2;
   subtype BRG_DCTQ_Field is HAL.UInt5;
   subtype BRG_PDIV_Field is HAL.UInt10;

   --  Shift Clock Output Select
   type BRG_SCLKOSEL_Field is
     (
      --  SCLK from the baud rate generator is selected as the SCLKOUT input
      --  source.
      VALUE1,
      --  The transmit shift clock from DX1 input stage is selected as the
      --  SCLKOUT input source.
      VALUE2)
     with Size => 1;
   for BRG_SCLKOSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Master Clock Configuration
   type BRG_MCLKCFG_Field is
     (
      --  The passive level is 0.
      VALUE1,
      --  The passive level is 1.
      VALUE2)
     with Size => 1;
   for BRG_MCLKCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Shift Clock Output Configuration
   type BRG_SCLKCFG_Field is
     (
      --  The passive level is 0 and the delay is disabled.
      VALUE1,
      --  The passive level is 1 and the delay is disabled.
      VALUE2,
      --  The passive level is 0 and the delay is enabled.
      VALUE3,
      --  The passive level is 1 and the delay is enabled.
      VALUE4)
     with Size => 2;
   for BRG_SCLKCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Baud Rate Generator Register
   type BRG_Register is record
      --  Clock Selection
      CLKSEL         : BRG_CLKSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Timing Measurement Enable
      TMEN           : BRG_TMEN_Field := NRF_SVD.USIC.VALUE1;
      --  Enable 2:1 Divider for fPPP
      PPPEN          : BRG_PPPEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Input Selection for CTQ
      CTQSEL         : BRG_CTQSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Pre-Divider for Time Quanta Counter
      PCTQ           : BRG_PCTQ_Field := 16#0#;
      --  Denominator for Time Quanta Counter
      DCTQ           : BRG_DCTQ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Divider Mode: Divider Factor to Generate fPDIV
      PDIV           : BRG_PDIV_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Shift Clock Output Select
      SCLKOSEL       : BRG_SCLKOSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Master Clock Configuration
      MCLKCFG        : BRG_MCLKCFG_Field := NRF_SVD.USIC.VALUE1;
      --  Shift Clock Output Configuration
      SCLKCFG        : BRG_SCLKCFG_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRG_Register use record
      CLKSEL         at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TMEN           at 0 range 3 .. 3;
      PPPEN          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CTQSEL         at 0 range 6 .. 7;
      PCTQ           at 0 range 8 .. 9;
      DCTQ           at 0 range 10 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDIV           at 0 range 16 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      SCLKOSEL       at 0 range 28 .. 28;
      MCLKCFG        at 0 range 29 .. 29;
      SCLKCFG        at 0 range 30 .. 31;
   end record;

   --  Transmit Shift Interrupt Node Pointer
   type INPR_TSINP_Field is
     (
      --  Output SR0 becomes activated.
      VALUE1,
      --  Output SR1 becomes activated.
      VALUE2,
      --  Output SR2 becomes activated.
      VALUE3,
      --  Output SR3 becomes activated.
      VALUE4,
      --  Output SR4 becomes activated.
      VALUE5,
      --  Output SR5 becomes activated.
      VALUE6)
     with Size => 3;
   for INPR_TSINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   subtype INPR_TBINP_Field is HAL.UInt3;
   subtype INPR_RINP_Field is HAL.UInt3;
   subtype INPR_AINP_Field is HAL.UInt3;

   --  Transmit Shift Interrupt Node Pointer
   type INPR_PINP_Field is
     (
      --  Output SR0 becomes activated.
      VALUE1,
      --  Output SR1 becomes activated.
      VALUE2,
      --  Output SR2 becomes activated.
      VALUE3,
      --  Output SR3 becomes activated.
      VALUE4,
      --  Output SR4 becomes activated.
      VALUE5,
      --  Output SR5 becomes activated.
      VALUE6)
     with Size => 3;
   for INPR_PINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  Interrupt Node Pointer Register
   type INPR_Register is record
      --  Transmit Shift Interrupt Node Pointer
      TSINP          : INPR_TSINP_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Transmit Buffer Interrupt Node Pointer
      TBINP          : INPR_TBINP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Receive Interrupt Node Pointer
      RINP           : INPR_RINP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Alternative Receive Interrupt Node Pointer
      AINP           : INPR_AINP_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Transmit Shift Interrupt Node Pointer
      PINP           : INPR_PINP_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPR_Register use record
      TSINP          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TBINP          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RINP           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      AINP           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PINP           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Data Selection for Input Signal
   type DX0CR_DSEL_Field is
     (
      --  The data input DXnA is selected.
      VALUE1,
      --  The data input DXnB is selected.
      VALUE2,
      --  The data input DXnC is selected.
      VALUE3,
      --  The data input DXnD is selected.
      VALUE4,
      --  The data input DXnE is selected.
      VALUE5,
      --  The data input DXnF is selected.
      VALUE6,
      --  The data input DXnG is selected.
      VALUE7,
      --  The data input is always 1.
      VALUE8)
     with Size => 3;
   for DX0CR_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Input Switch
   type DX0CR_INSW_Field is
     (
      --  The input of the data shift unit is controlled by the protocol
      --  pre-processor.
      VALUE1,
      --  The input of the data shift unit is connected to the selected data
      --  input line. This setting is used if the signals are directly derived
      --  from an input pin without treatment by the protocol pre-processor.
      VALUE2)
     with Size => 1;
   for DX0CR_INSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Digital Filter Enable
   type DX0CR_DFEN_Field is
     (
      --  The input signal is not digitally filtered.
      VALUE1,
      --  The input signal is digitally filtered.
      VALUE2)
     with Size => 1;
   for DX0CR_DFEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Synchronization Enable
   type DX0CR_DSEN_Field is
     (
      --  The un-synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE1,
      --  The synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE2)
     with Size => 1;
   for DX0CR_DSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Polarity for DXn
   type DX0CR_DPOL_Field is
     (
      --  The input signal is not inverted.
      VALUE1,
      --  The input signal is inverted.
      VALUE2)
     with Size => 1;
   for DX0CR_DPOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sampling Frequency Selection
   type DX0CR_SFSEL_Field is
     (
      --  The sampling frequency is fPERIPH.
      VALUE1,
      --  The sampling frequency is fFD.
      VALUE2)
     with Size => 1;
   for DX0CR_SFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Combination Mode
   type DX0CR_CM_Field is
     (
      --  The trigger activation is disabled.
      VALUE1,
      --  A rising edge activates DXnT.
      VALUE2,
      --  A falling edge activates DXnT.
      VALUE3,
      --  Both edges activate DXnT.
      VALUE4)
     with Size => 2;
   for DX0CR_CM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronized Data Value
   type DX0CR_DXS_Field is
     (
      --  The current value of DXnS is 0.
      VALUE1,
      --  The current value of DXnS is 1.
      VALUE2)
     with Size => 1;
   for DX0CR_DXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Control Register 0
   type DX0CR_Register is record
      --  Data Selection for Input Signal
      DSEL           : DX0CR_DSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Input Switch
      INSW           : DX0CR_INSW_Field := NRF_SVD.USIC.VALUE1;
      --  Digital Filter Enable
      DFEN           : DX0CR_DFEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Synchronization Enable
      DSEN           : DX0CR_DSEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Data Polarity for DXn
      DPOL           : DX0CR_DPOL_Field := NRF_SVD.USIC.VALUE1;
      --  Sampling Frequency Selection
      SFSEL          : DX0CR_SFSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Combination Mode
      CM             : DX0CR_CM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Read-only. Synchronized Data Value
      DXS            : DX0CR_DXS_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DX0CR_Register use record
      DSEL           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INSW           at 0 range 4 .. 4;
      DFEN           at 0 range 5 .. 5;
      DSEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DPOL           at 0 range 8 .. 8;
      SFSEL          at 0 range 9 .. 9;
      CM             at 0 range 10 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DXS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Data Selection for Input Signal
   type DX1CR_DSEL_Field is
     (
      --  The data input DX1A is selected.
      VALUE1,
      --  The data input DX1B is selected.
      VALUE2,
      --  The data input DX1C is selected.
      VALUE3,
      --  The data input DX1D is selected.
      VALUE4,
      --  The data input DX1E is selected.
      VALUE5,
      --  The data input DX1F is selected.
      VALUE6,
      --  The data input DX1G is selected.
      VALUE7,
      --  The data input is always 1.
      VALUE8)
     with Size => 3;
   for DX1CR_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Delay Compensation Enable
   type DX1CR_DCEN_Field is
     (
      --  The receive shift clock is dependent on INSW selection.
      VALUE1,
      --  The receive shift clock is connected to the selected data input line.
      --  This setting is used if delay compensation is required in SSC and IIS
      --  protocols, else DCEN should always be 0.
      VALUE2)
     with Size => 1;
   for DX1CR_DCEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Switch
   type DX1CR_INSW_Field is
     (
      --  The input of the data shift unit is controlled by the protocol
      --  pre-processor.
      VALUE1,
      --  The input of the data shift unit is connected to the selected data
      --  input line. This setting is used if the signals are directly derived
      --  from an input pin without treatment by the protocol pre-processor.
      VALUE2)
     with Size => 1;
   for DX1CR_INSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Digital Filter Enable
   type DX1CR_DFEN_Field is
     (
      --  The input signal is not digitally filtered.
      VALUE1,
      --  The input signal is digitally filtered.
      VALUE2)
     with Size => 1;
   for DX1CR_DFEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Synchronization Enable
   type DX1CR_DSEN_Field is
     (
      --  The un-synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE1,
      --  The synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE2)
     with Size => 1;
   for DX1CR_DSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Polarity for DXn
   type DX1CR_DPOL_Field is
     (
      --  The input signal is not inverted.
      VALUE1,
      --  The input signal is inverted.
      VALUE2)
     with Size => 1;
   for DX1CR_DPOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sampling Frequency Selection
   type DX1CR_SFSEL_Field is
     (
      --  The sampling frequency is fPERIPH.
      VALUE1,
      --  The sampling frequency is fFD.
      VALUE2)
     with Size => 1;
   for DX1CR_SFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Combination Mode
   type DX1CR_CM_Field is
     (
      --  The trigger activation is disabled.
      VALUE1,
      --  A rising edge activates DX1T.
      VALUE2,
      --  A falling edge activates DX1T.
      VALUE3,
      --  Both edges activate DX1T.
      VALUE4)
     with Size => 2;
   for DX1CR_CM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronized Data Value
   type DX1CR_DXS_Field is
     (
      --  The current value of DX1S is 0.
      VALUE1,
      --  The current value of DX1S is 1.
      VALUE2)
     with Size => 1;
   for DX1CR_DXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Control Register 1
   type DX1CR_Register is record
      --  Data Selection for Input Signal
      DSEL           : DX1CR_DSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Delay Compensation Enable
      DCEN           : DX1CR_DCEN_Field := NRF_SVD.USIC.VALUE1;
      --  Input Switch
      INSW           : DX1CR_INSW_Field := NRF_SVD.USIC.VALUE1;
      --  Digital Filter Enable
      DFEN           : DX1CR_DFEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Synchronization Enable
      DSEN           : DX1CR_DSEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Data Polarity for DXn
      DPOL           : DX1CR_DPOL_Field := NRF_SVD.USIC.VALUE1;
      --  Sampling Frequency Selection
      SFSEL          : DX1CR_SFSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Combination Mode
      CM             : DX1CR_CM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Read-only. Synchronized Data Value
      DXS            : DX1CR_DXS_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DX1CR_Register use record
      DSEL           at 0 range 0 .. 2;
      DCEN           at 0 range 3 .. 3;
      INSW           at 0 range 4 .. 4;
      DFEN           at 0 range 5 .. 5;
      DSEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DPOL           at 0 range 8 .. 8;
      SFSEL          at 0 range 9 .. 9;
      CM             at 0 range 10 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DXS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Data Selection for Input Signal
   type DX2CR_DSEL_Field is
     (
      --  The data input DXnA is selected.
      VALUE1,
      --  The data input DXnB is selected.
      VALUE2,
      --  The data input DXnC is selected.
      VALUE3,
      --  The data input DXnD is selected.
      VALUE4,
      --  The data input DXnE is selected.
      VALUE5,
      --  The data input DXnF is selected.
      VALUE6,
      --  The data input DXnG is selected.
      VALUE7,
      --  The data input is always 1.
      VALUE8)
     with Size => 3;
   for DX2CR_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Input Switch
   type DX2CR_INSW_Field is
     (
      --  The input of the data shift unit is controlled by the protocol
      --  pre-processor.
      VALUE1,
      --  The input of the data shift unit is connected to the selected data
      --  input line. This setting is used if the signals are directly derived
      --  from an input pin without treatment by the protocol pre-processor.
      VALUE2)
     with Size => 1;
   for DX2CR_INSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Digital Filter Enable
   type DX2CR_DFEN_Field is
     (
      --  The input signal is not digitally filtered.
      VALUE1,
      --  The input signal is digitally filtered.
      VALUE2)
     with Size => 1;
   for DX2CR_DFEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Synchronization Enable
   type DX2CR_DSEN_Field is
     (
      --  The un-synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE1,
      --  The synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE2)
     with Size => 1;
   for DX2CR_DSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Polarity for DXn
   type DX2CR_DPOL_Field is
     (
      --  The input signal is not inverted.
      VALUE1,
      --  The input signal is inverted.
      VALUE2)
     with Size => 1;
   for DX2CR_DPOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sampling Frequency Selection
   type DX2CR_SFSEL_Field is
     (
      --  The sampling frequency is fPERIPH.
      VALUE1,
      --  The sampling frequency is fFD.
      VALUE2)
     with Size => 1;
   for DX2CR_SFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Combination Mode
   type DX2CR_CM_Field is
     (
      --  The trigger activation is disabled.
      VALUE1,
      --  A rising edge activates DXnT.
      VALUE2,
      --  A falling edge activates DXnT.
      VALUE3,
      --  Both edges activate DXnT.
      VALUE4)
     with Size => 2;
   for DX2CR_CM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronized Data Value
   type DX2CR_DXS_Field is
     (
      --  The current value of DXnS is 0.
      VALUE1,
      --  The current value of DXnS is 1.
      VALUE2)
     with Size => 1;
   for DX2CR_DXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Control Register 2
   type DX2CR_Register is record
      --  Data Selection for Input Signal
      DSEL           : DX2CR_DSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Input Switch
      INSW           : DX2CR_INSW_Field := NRF_SVD.USIC.VALUE1;
      --  Digital Filter Enable
      DFEN           : DX2CR_DFEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Synchronization Enable
      DSEN           : DX2CR_DSEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Data Polarity for DXn
      DPOL           : DX2CR_DPOL_Field := NRF_SVD.USIC.VALUE1;
      --  Sampling Frequency Selection
      SFSEL          : DX2CR_SFSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Combination Mode
      CM             : DX2CR_CM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Read-only. Synchronized Data Value
      DXS            : DX2CR_DXS_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DX2CR_Register use record
      DSEL           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INSW           at 0 range 4 .. 4;
      DFEN           at 0 range 5 .. 5;
      DSEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DPOL           at 0 range 8 .. 8;
      SFSEL          at 0 range 9 .. 9;
      CM             at 0 range 10 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DXS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Data Selection for Input Signal
   type DX3CR_DSEL_Field is
     (
      --  The data input DXnA is selected.
      VALUE1,
      --  The data input DXnB is selected.
      VALUE2,
      --  The data input DXnC is selected.
      VALUE3,
      --  The data input DXnD is selected.
      VALUE4,
      --  The data input DXnE is selected.
      VALUE5,
      --  The data input DXnF is selected.
      VALUE6,
      --  The data input DXnG is selected.
      VALUE7,
      --  The data input is always 1.
      VALUE8)
     with Size => 3;
   for DX3CR_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Input Switch
   type DX3CR_INSW_Field is
     (
      --  The input of the data shift unit is controlled by the protocol
      --  pre-processor.
      VALUE1,
      --  The input of the data shift unit is connected to the selected data
      --  input line. This setting is used if the signals are directly derived
      --  from an input pin without treatment by the protocol pre-processor.
      VALUE2)
     with Size => 1;
   for DX3CR_INSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Digital Filter Enable
   type DX3CR_DFEN_Field is
     (
      --  The input signal is not digitally filtered.
      VALUE1,
      --  The input signal is digitally filtered.
      VALUE2)
     with Size => 1;
   for DX3CR_DFEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Synchronization Enable
   type DX3CR_DSEN_Field is
     (
      --  The un-synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE1,
      --  The synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE2)
     with Size => 1;
   for DX3CR_DSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Polarity for DXn
   type DX3CR_DPOL_Field is
     (
      --  The input signal is not inverted.
      VALUE1,
      --  The input signal is inverted.
      VALUE2)
     with Size => 1;
   for DX3CR_DPOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sampling Frequency Selection
   type DX3CR_SFSEL_Field is
     (
      --  The sampling frequency is fPERIPH.
      VALUE1,
      --  The sampling frequency is fFD.
      VALUE2)
     with Size => 1;
   for DX3CR_SFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Combination Mode
   type DX3CR_CM_Field is
     (
      --  The trigger activation is disabled.
      VALUE1,
      --  A rising edge activates DXnT.
      VALUE2,
      --  A falling edge activates DXnT.
      VALUE3,
      --  Both edges activate DXnT.
      VALUE4)
     with Size => 2;
   for DX3CR_CM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronized Data Value
   type DX3CR_DXS_Field is
     (
      --  The current value of DXnS is 0.
      VALUE1,
      --  The current value of DXnS is 1.
      VALUE2)
     with Size => 1;
   for DX3CR_DXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Control Register 3
   type DX3CR_Register is record
      --  Data Selection for Input Signal
      DSEL           : DX3CR_DSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Input Switch
      INSW           : DX3CR_INSW_Field := NRF_SVD.USIC.VALUE1;
      --  Digital Filter Enable
      DFEN           : DX3CR_DFEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Synchronization Enable
      DSEN           : DX3CR_DSEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Data Polarity for DXn
      DPOL           : DX3CR_DPOL_Field := NRF_SVD.USIC.VALUE1;
      --  Sampling Frequency Selection
      SFSEL          : DX3CR_SFSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Combination Mode
      CM             : DX3CR_CM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Read-only. Synchronized Data Value
      DXS            : DX3CR_DXS_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DX3CR_Register use record
      DSEL           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INSW           at 0 range 4 .. 4;
      DFEN           at 0 range 5 .. 5;
      DSEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DPOL           at 0 range 8 .. 8;
      SFSEL          at 0 range 9 .. 9;
      CM             at 0 range 10 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DXS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Data Selection for Input Signal
   type DX4CR_DSEL_Field is
     (
      --  The data input DXnA is selected.
      VALUE1,
      --  The data input DXnB is selected.
      VALUE2,
      --  The data input DXnC is selected.
      VALUE3,
      --  The data input DXnD is selected.
      VALUE4,
      --  The data input DXnE is selected.
      VALUE5,
      --  The data input DXnF is selected.
      VALUE6,
      --  The data input DXnG is selected.
      VALUE7,
      --  The data input is always 1.
      VALUE8)
     with Size => 3;
   for DX4CR_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Input Switch
   type DX4CR_INSW_Field is
     (
      --  The input of the data shift unit is controlled by the protocol
      --  pre-processor.
      VALUE1,
      --  The input of the data shift unit is connected to the selected data
      --  input line. This setting is used if the signals are directly derived
      --  from an input pin without treatment by the protocol pre-processor.
      VALUE2)
     with Size => 1;
   for DX4CR_INSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Digital Filter Enable
   type DX4CR_DFEN_Field is
     (
      --  The input signal is not digitally filtered.
      VALUE1,
      --  The input signal is digitally filtered.
      VALUE2)
     with Size => 1;
   for DX4CR_DFEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Synchronization Enable
   type DX4CR_DSEN_Field is
     (
      --  The un-synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE1,
      --  The synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE2)
     with Size => 1;
   for DX4CR_DSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Polarity for DXn
   type DX4CR_DPOL_Field is
     (
      --  The input signal is not inverted.
      VALUE1,
      --  The input signal is inverted.
      VALUE2)
     with Size => 1;
   for DX4CR_DPOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sampling Frequency Selection
   type DX4CR_SFSEL_Field is
     (
      --  The sampling frequency is fPERIPH.
      VALUE1,
      --  The sampling frequency is fFD.
      VALUE2)
     with Size => 1;
   for DX4CR_SFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Combination Mode
   type DX4CR_CM_Field is
     (
      --  The trigger activation is disabled.
      VALUE1,
      --  A rising edge activates DXnT.
      VALUE2,
      --  A falling edge activates DXnT.
      VALUE3,
      --  Both edges activate DXnT.
      VALUE4)
     with Size => 2;
   for DX4CR_CM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronized Data Value
   type DX4CR_DXS_Field is
     (
      --  The current value of DXnS is 0.
      VALUE1,
      --  The current value of DXnS is 1.
      VALUE2)
     with Size => 1;
   for DX4CR_DXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Control Register 4
   type DX4CR_Register is record
      --  Data Selection for Input Signal
      DSEL           : DX4CR_DSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Input Switch
      INSW           : DX4CR_INSW_Field := NRF_SVD.USIC.VALUE1;
      --  Digital Filter Enable
      DFEN           : DX4CR_DFEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Synchronization Enable
      DSEN           : DX4CR_DSEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Data Polarity for DXn
      DPOL           : DX4CR_DPOL_Field := NRF_SVD.USIC.VALUE1;
      --  Sampling Frequency Selection
      SFSEL          : DX4CR_SFSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Combination Mode
      CM             : DX4CR_CM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Read-only. Synchronized Data Value
      DXS            : DX4CR_DXS_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DX4CR_Register use record
      DSEL           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INSW           at 0 range 4 .. 4;
      DFEN           at 0 range 5 .. 5;
      DSEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DPOL           at 0 range 8 .. 8;
      SFSEL          at 0 range 9 .. 9;
      CM             at 0 range 10 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DXS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Data Selection for Input Signal
   type DX5CR_DSEL_Field is
     (
      --  The data input DXnA is selected.
      VALUE1,
      --  The data input DXnB is selected.
      VALUE2,
      --  The data input DXnC is selected.
      VALUE3,
      --  The data input DXnD is selected.
      VALUE4,
      --  The data input DXnE is selected.
      VALUE5,
      --  The data input DXnF is selected.
      VALUE6,
      --  The data input DXnG is selected.
      VALUE7,
      --  The data input is always 1.
      VALUE8)
     with Size => 3;
   for DX5CR_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Input Switch
   type DX5CR_INSW_Field is
     (
      --  The input of the data shift unit is controlled by the protocol
      --  pre-processor.
      VALUE1,
      --  The input of the data shift unit is connected to the selected data
      --  input line. This setting is used if the signals are directly derived
      --  from an input pin without treatment by the protocol pre-processor.
      VALUE2)
     with Size => 1;
   for DX5CR_INSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Digital Filter Enable
   type DX5CR_DFEN_Field is
     (
      --  The input signal is not digitally filtered.
      VALUE1,
      --  The input signal is digitally filtered.
      VALUE2)
     with Size => 1;
   for DX5CR_DFEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Synchronization Enable
   type DX5CR_DSEN_Field is
     (
      --  The un-synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE1,
      --  The synchronized signal can be taken as input for the data shift
      --  unit.
      VALUE2)
     with Size => 1;
   for DX5CR_DSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Polarity for DXn
   type DX5CR_DPOL_Field is
     (
      --  The input signal is not inverted.
      VALUE1,
      --  The input signal is inverted.
      VALUE2)
     with Size => 1;
   for DX5CR_DPOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sampling Frequency Selection
   type DX5CR_SFSEL_Field is
     (
      --  The sampling frequency is fPERIPH.
      VALUE1,
      --  The sampling frequency is fFD.
      VALUE2)
     with Size => 1;
   for DX5CR_SFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Combination Mode
   type DX5CR_CM_Field is
     (
      --  The trigger activation is disabled.
      VALUE1,
      --  A rising edge activates DXnT.
      VALUE2,
      --  A falling edge activates DXnT.
      VALUE3,
      --  Both edges activate DXnT.
      VALUE4)
     with Size => 2;
   for DX5CR_CM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronized Data Value
   type DX5CR_DXS_Field is
     (
      --  The current value of DXnS is 0.
      VALUE1,
      --  The current value of DXnS is 1.
      VALUE2)
     with Size => 1;
   for DX5CR_DXS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Control Register 5
   type DX5CR_Register is record
      --  Data Selection for Input Signal
      DSEL           : DX5CR_DSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Input Switch
      INSW           : DX5CR_INSW_Field := NRF_SVD.USIC.VALUE1;
      --  Digital Filter Enable
      DFEN           : DX5CR_DFEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Synchronization Enable
      DSEN           : DX5CR_DSEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Data Polarity for DXn
      DPOL           : DX5CR_DPOL_Field := NRF_SVD.USIC.VALUE1;
      --  Sampling Frequency Selection
      SFSEL          : DX5CR_SFSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Combination Mode
      CM             : DX5CR_CM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Read-only. Synchronized Data Value
      DXS            : DX5CR_DXS_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DX5CR_Register use record
      DSEL           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INSW           at 0 range 4 .. 4;
      DFEN           at 0 range 5 .. 5;
      DSEN           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DPOL           at 0 range 8 .. 8;
      SFSEL          at 0 range 9 .. 9;
      CM             at 0 range 10 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      DXS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Shift Direction
   type SCTR_SDIR_Field is
     (
      --  Shift LSB first. The first data bit of a data word is located at bit
      --  position 0.
      VALUE1,
      --  Shift MSB first. The first data bit of a data word is located at the
      --  bit position given by bit field SCTR.WLE.
      VALUE2)
     with Size => 1;
   for SCTR_SDIR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Passive Data Level
   type SCTR_PDL_Field is
     (
      --  The passive data level is 0.
      VALUE1,
      --  The passive data level is 1.
      VALUE2)
     with Size => 1;
   for SCTR_PDL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Shift Mode
   type SCTR_DSM_Field is
     (
      --  Receive and transmit data is shifted in and out one bit at a time
      --  through DX0 and DOUT0.
      VALUE1,
      --  Receive and transmit data is shifted in and out two bits at a time
      --  through two input stages (DX0 and DX3) and DOUT[1:0] respectively.
      VALUE3,
      --  Receive and transmit data is shifted in and out four bits at a time
      --  through four input stages (DX0, DX[5:3]) and DOUT[3:0] respectively.
      VALUE4)
     with Size => 2;
   for SCTR_DSM_Field use
     (VALUE1 => 0,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Port Control Direction
   type SCTR_HPCDIR_Field is
     (
      --  The pin(s) with hardware pin control enabled are selected to be in
      --  input mode.
      VALUE1,
      --  The pin(s) with hardware pin control enabled are selected to be in
      --  output mode.
      VALUE2)
     with Size => 1;
   for SCTR_HPCDIR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Output Configuration
   type SCTR_DOCFG_Field is
     (
      --  DOUTx = shift data value
      VALUE1,
      --  DOUTx = inverted shift data value
      VALUE2)
     with Size => 2;
   for SCTR_DOCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmission Mode
   type SCTR_TRM_Field is
     (
      --  The shift control signal is considered as inactive and data frame
      --  transfers are not possible.
      VALUE1,
      --  The shift control signal is considered active if it is at 1-level.
      --  This is the setting to be programmed to allow data transfers.
      VALUE2,
      --  The shift control signal is considered active if it is at 0-level. It
      --  is recommended to avoid this setting and to use the inversion in the
      --  DX2 stage in case of a low-active signal.
      VALUE3,
      --  The shift control signal is considered active without referring to
      --  the actual signal level. Data frame transfer is possible after each
      --  edge of the signal.
      VALUE4)
     with Size => 2;
   for SCTR_TRM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   subtype SCTR_FLE_Field is HAL.UInt6;

   --  Word Length
   type SCTR_WLE_Field is
     (
      --  The data word contains 1 data bit located at bit position 0.
      VALUE1,
      --  The data word contains 2 data bits located at bit positions [1:0].
      VALUE2,
      --  The data word contains 15 data bits located at bit positions [14:0].
      VALUE3,
      --  The data word contains 16 data bits located at bit positions [15:0].
      VALUE4)
     with Size => 4;
   for SCTR_WLE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   --  Shift Control Register
   type SCTR_Register is record
      --  Shift Direction
      SDIR           : SCTR_SDIR_Field := NRF_SVD.USIC.VALUE1;
      --  Passive Data Level
      PDL            : SCTR_PDL_Field := NRF_SVD.USIC.VALUE1;
      --  Data Shift Mode
      DSM            : SCTR_DSM_Field := NRF_SVD.USIC.VALUE1;
      --  Port Control Direction
      HPCDIR         : SCTR_HPCDIR_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Data Output Configuration
      DOCFG          : SCTR_DOCFG_Field := NRF_SVD.USIC.VALUE1;
      --  Transmission Mode
      TRM            : SCTR_TRM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Frame Length
      FLE            : SCTR_FLE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Word Length
      WLE            : SCTR_WLE_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTR_Register use record
      SDIR           at 0 range 0 .. 0;
      PDL            at 0 range 1 .. 1;
      DSM            at 0 range 2 .. 3;
      HPCDIR         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      DOCFG          at 0 range 6 .. 7;
      TRM            at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FLE            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      WLE            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  WLE Mode
   type TCSR_WLEMD_Field is
     (
      --  The automatic update of SCTR.WLE and TCSR.EOF is disabled.
      VALUE1,
      --  The automatic update of SCTR.WLE and TCSR.EOF is enabled.
      VALUE2)
     with Size => 1;
   for TCSR_WLEMD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Select Mode
   type TCSR_SELMD_Field is
     (
      --  The automatic update of PCR.CTR[23:16] is disabled.
      VALUE1,
      --  The automatic update of PCR.CTR[23:16] is disabled.
      VALUE2)
     with Size => 1;
   for TCSR_SELMD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FLE Mode
   type TCSR_FLEMD_Field is
     (
      --  The automatic update of FLE is disabled.
      VALUE1,
      --  The automatic update of FLE is enabled.
      VALUE2)
     with Size => 1;
   for TCSR_FLEMD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WA Mode
   type TCSR_WAMD_Field is
     (
      --  The automatic update of bit WA is disabled.
      VALUE1,
      --  The automatic update of bit WA is enabled.
      VALUE2)
     with Size => 1;
   for TCSR_WAMD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Hardware Port Control Mode
   type TCSR_HPCMD_Field is
     (
      --  The automatic update of bits SCTR.DSM and SCTR.HPCDIR is disabled.
      VALUE1,
      --  The automatic update of bits SCTR.DSM and SCTR.HPCDIR is enabled.
      VALUE2)
     with Size => 1;
   for TCSR_HPCMD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start Of Frame
   type TCSR_SOF_Field is
     (
      --  The data word in TBUF is not considered as first word of a frame.
      VALUE1,
      --  The data word in TBUF is considered as first word of a frame. A
      --  currently running frame is finished and MSLS becomes deactivated
      --  (respecting the programmed delays).
      VALUE2)
     with Size => 1;
   for TCSR_SOF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  End Of Frame
   type TCSR_EOF_Field is
     (
      --  The data word in TBUF is not considered as last word of an SSC frame.
      VALUE1,
      --  The data word in TBUF is considered as last word of an SSC frame.
      VALUE2)
     with Size => 1;
   for TCSR_EOF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Data Valid
   type TCSR_TDV_Field is
     (
      --  The data word in TBUF is not valid for transmission.
      VALUE1,
      --  The data word in TBUF is valid for transmission and a transmission
      --  start is possible. New data should not be written to a TBUFx input
      --  location while TDV = 1.
      VALUE2)
     with Size => 1;
   for TCSR_TDV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  TBUF Data Single Shot Mode
   type TCSR_TDSSM_Field is
     (
      --  The data word in TBUF is not considered as invalid after it has been
      --  loaded into the transmit shift register. The loading of the TBUF data
      --  into the shift register does not clear TDV.
      VALUE1,
      --  The data word in TBUF is considered as invalid after it has been
      --  loaded into the shift register. In ASC and IIC mode, TDV is cleared
      --  with the TBI event, whereas in SSC and IIS mode, it is cleared with
      --  the RSI event. TDSSM = 1 has to be programmed if an optional data
      --  buffer is used.
      VALUE2)
     with Size => 1;
   for TCSR_TDSSM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  TBUF Data Enable
   type TCSR_TDEN_Field is
     (
      --  A transmission start of the data word in TBUF is disabled. If a
      --  transmission is started, the passive data level is sent out.
      VALUE1,
      --  A transmission of the data word in TBUF can be started if TDV = 1.
      VALUE2,
      --  A transmission of the data word in TBUF can be started if TDV = 1
      --  while DX2S = 0.
      VALUE3,
      --  A transmission of the data word in TBUF can be started if TDV = 1
      --  while DX2S = 1.
      VALUE4)
     with Size => 2;
   for TCSR_TDEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  TBUF Data Valid Trigger
   type TCSR_TDVTR_Field is
     (
      --  Bit TCSR.TE is permanently set.
      VALUE1,
      --  Bit TCSR.TE is set if DX2T becomes active while TDV = 1.
      VALUE2)
     with Size => 1;
   for TCSR_TDVTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Word Address
   type TCSR_WA_Field is
     (
      --  The data word in TBUF will be transmitted after a falling edge of WA
      --  has been detected (referring to PSR.WA).
      VALUE1,
      --  The data word in TBUF will be transmitted after a rising edge of WA
      --  has been detected (referring to PSR.WA).
      VALUE2)
     with Size => 1;
   for TCSR_WA_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmitted Start Of Frame
   type TCSR_TSOF_Field is
     (
      --  The latest data word transmission has not been started for the first
      --  word of a data frame.
      VALUE1,
      --  The latest data word transmission has been started for the first word
      --  of a data frame.
      VALUE2)
     with Size => 1;
   for TCSR_TSOF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmission Valid
   type TCSR_TV_Field is
     (
      --  The latest start of a data word transmission has taken place while no
      --  valid data was available. As a result, the transmission of a data
      --  words with passive level (SCTR.PDL) has been started.
      VALUE1,
      --  The latest start of a data word transmission has taken place with
      --  valid data from TBUF.
      VALUE2)
     with Size => 1;
   for TCSR_TV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmission Valid Cumulated
   type TCSR_TVC_Field is
     (
      --  Since TVC has been set, at least one data buffer underflow condition
      --  has occurred.
      VALUE1,
      --  Since TVC has been set, no data buffer underflow condition has
      --  occurred.
      VALUE2)
     with Size => 1;
   for TCSR_TVC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger Event
   type TCSR_TE_Field is
     (
      --  The trigger event has not yet been detected. A transmission of the
      --  data word in TBUF can not be started.
      VALUE1,
      --  The trigger event has been detected (or the trigger mechanism is
      --  switched off) and a transmission of the data word in TBUF can be
      --  started.
      VALUE2)
     with Size => 1;
   for TCSR_TE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Control/Status Register
   type TCSR_Register is record
      --  WLE Mode
      WLEMD          : TCSR_WLEMD_Field := NRF_SVD.USIC.VALUE1;
      --  Select Mode
      SELMD          : TCSR_SELMD_Field := NRF_SVD.USIC.VALUE1;
      --  FLE Mode
      FLEMD          : TCSR_FLEMD_Field := NRF_SVD.USIC.VALUE1;
      --  WA Mode
      WAMD           : TCSR_WAMD_Field := NRF_SVD.USIC.VALUE1;
      --  Hardware Port Control Mode
      HPCMD          : TCSR_HPCMD_Field := NRF_SVD.USIC.VALUE1;
      --  Start Of Frame
      SOF            : TCSR_SOF_Field := NRF_SVD.USIC.VALUE1;
      --  End Of Frame
      EOF            : TCSR_EOF_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Transmit Data Valid
      TDV            : TCSR_TDV_Field := NRF_SVD.USIC.VALUE1;
      --  TBUF Data Single Shot Mode
      TDSSM          : TCSR_TDSSM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  TBUF Data Enable
      TDEN           : TCSR_TDEN_Field := NRF_SVD.USIC.VALUE1;
      --  TBUF Data Valid Trigger
      TDVTR          : TCSR_TDVTR_Field := NRF_SVD.USIC.VALUE1;
      --  Word Address
      WA             : TCSR_WA_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Read-only. Transmitted Start Of Frame
      TSOF           : TCSR_TSOF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Read-only. Transmission Valid
      TV             : TCSR_TV_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Transmission Valid Cumulated
      TVC            : TCSR_TVC_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Trigger Event
      TE             : TCSR_TE_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCSR_Register use record
      WLEMD          at 0 range 0 .. 0;
      SELMD          at 0 range 1 .. 1;
      FLEMD          at 0 range 2 .. 2;
      WAMD           at 0 range 3 .. 3;
      HPCMD          at 0 range 4 .. 4;
      SOF            at 0 range 5 .. 5;
      EOF            at 0 range 6 .. 6;
      TDV            at 0 range 7 .. 7;
      TDSSM          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      TDEN           at 0 range 10 .. 11;
      TDVTR          at 0 range 12 .. 12;
      WA             at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      TSOF           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      TV             at 0 range 26 .. 26;
      TVC            at 0 range 27 .. 27;
      TE             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  PCR_CTR array
   type PCR_CTR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Protocol Control Register
   type PCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTR as a value
            Val : HAL.UInt32;
         when True =>
            --  CTR as an array
            Arr : PCR_CTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Sample Mode
   type PCR_ASCMode_SMD_Field is
     (
      --  Only one sample is taken per bit time. The current input value is
      --  sampled.
      VALUE1,
      --  Three samples are taken per bit time and a majority decision is made.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_SMD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Stop Bits
   type PCR_ASCMode_STPB_Field is
     (
      --  The number of stop bits is 1.
      VALUE1,
      --  The number of stop bits is 2.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_STPB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Idle Detection Mode
   type PCR_ASCMode_IDM_Field is
     (
      --  The bus idle detection is switched off and bits PSR.TXIDLE and
      --  PSR.RXIDLE are set automatically to enable data transfers without
      --  checking the inputs before.
      VALUE1,
      --  The bus is considered as idle after a number of consecutive passive
      --  bit times defined by SCTR.FLE plus 2 (in the case without parity bit)
      --  or plus 3 (in the case with parity bit).
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_IDM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Synchronization Break Interrupt Enable
   type PCR_ASCMode_SBIEN_Field is
     (
      --  The interrupt generation is disabled.
      VALUE1,
      --  The interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_SBIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Collision Detection Enable
   type PCR_ASCMode_CDEN_Field is
     (
      --  The collision detection is disabled.
      VALUE1,
      --  If a collision is detected, the transmitter stops its data
      --  transmission, outputs a 1, sets bit PSR.COL and generates a protocol
      --  interrupt. In order to allow data transmission again, PSR.COL has to
      --  be cleared by software.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_CDEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Noise Detection Interrupt Enable
   type PCR_ASCMode_RNIEN_Field is
     (
      --  The interrupt generation is disabled.
      VALUE1,
      --  The interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_RNIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Format Error Interrupt Enable
   type PCR_ASCMode_FEIEN_Field is
     (
      --  The interrupt generation is disabled.
      VALUE1,
      --  The interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_FEIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Frame Finished Interrupt Enable
   type PCR_ASCMode_FFIEN_Field is
     (
      --  The interrupt generation is disabled.
      VALUE1,
      --  The interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_FFIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype PCR_ASCMode_SP_Field is HAL.UInt5;

   --  Pulse Length
   type PCR_ASCMode_PL_Field is
     (
      --  The pulse length is equal to the bit length (no shortened 0).
      VALUE1,
      --  The pulse length of a 0 bit is 2 time quanta.
      VALUE2,
      --  The pulse length of a 0 bit is 3 time quanta.
      VALUE3,
      --  The pulse length of a 0 bit is 8 time quanta.
      VALUE4)
     with Size => 3;
   for PCR_ASCMode_PL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 7);

   --  Receiver Status Enable
   type PCR_ASCMode_RSTEN_Field is
     (
      --  Flag PSR[9] is not modified depending on the receiver status.
      VALUE1,
      --  Flag PSR[9] is set during the complete reception of a frame.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_RSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmitter Status Enable
   type PCR_ASCMode_TSTEN_Field is
     (
      --  Flag PSR[9] is not modified depending on the transmitter status.
      VALUE1,
      --  Flag PSR[9] is set during the complete transmission of a frame.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_TSTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Master Clock Enable
   type PCR_ASCMode_MCLK_Field is
     (
      --  The MCLK generation is disabled and the MCLK signal is 0.
      VALUE1,
      --  The MCLK generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_ASCMode_MCLK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Control Register [ASC Mode]
   type PCR_ASCMode_Register is record
      --  Sample Mode
      SMD            : PCR_ASCMode_SMD_Field := NRF_SVD.USIC.VALUE1;
      --  Stop Bits
      STPB           : PCR_ASCMode_STPB_Field := NRF_SVD.USIC.VALUE1;
      --  Idle Detection Mode
      IDM            : PCR_ASCMode_IDM_Field := NRF_SVD.USIC.VALUE1;
      --  Synchronization Break Interrupt Enable
      SBIEN          : PCR_ASCMode_SBIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Collision Detection Enable
      CDEN           : PCR_ASCMode_CDEN_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Noise Detection Interrupt Enable
      RNIEN          : PCR_ASCMode_RNIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Format Error Interrupt Enable
      FEIEN          : PCR_ASCMode_FEIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Frame Finished Interrupt Enable
      FFIEN          : PCR_ASCMode_FFIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Sample Point
      SP             : PCR_ASCMode_SP_Field := 16#0#;
      --  Pulse Length
      PL             : PCR_ASCMode_PL_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Status Enable
      RSTEN          : PCR_ASCMode_RSTEN_Field := NRF_SVD.USIC.VALUE1;
      --  Transmitter Status Enable
      TSTEN          : PCR_ASCMode_TSTEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Master Clock Enable
      MCLK           : PCR_ASCMode_MCLK_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_ASCMode_Register use record
      SMD            at 0 range 0 .. 0;
      STPB           at 0 range 1 .. 1;
      IDM            at 0 range 2 .. 2;
      SBIEN          at 0 range 3 .. 3;
      CDEN           at 0 range 4 .. 4;
      RNIEN          at 0 range 5 .. 5;
      FEIEN          at 0 range 6 .. 6;
      FFIEN          at 0 range 7 .. 7;
      SP             at 0 range 8 .. 12;
      PL             at 0 range 13 .. 15;
      RSTEN          at 0 range 16 .. 16;
      TSTEN          at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      MCLK           at 0 range 31 .. 31;
   end record;

   --  MSLS Enable
   type PCR_SSCMode_MSLSEN_Field is
     (
      --  The MSLS generation is disabled (MSLS = 0). This is the setting for
      --  SSC slave mode.
      VALUE1,
      --  The MSLS generation is enabled. This is the setting for SSC master
      --  mode.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_MSLSEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Select Control
   type PCR_SSCMode_SELCTR_Field is
     (
      --  The coded select mode is enabled.
      VALUE1,
      --  The direct select mode is enabled.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_SELCTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Select Inversion
   type PCR_SSCMode_SELINV_Field is
     (
      --  The SELO outputs have the same polarity as the MSLS signal (active
      --  high).
      VALUE1,
      --  The SELO outputs have the inverted polarity to the MSLS signal
      --  (active low).
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_SELINV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Frame End Mode
   type PCR_SSCMode_FEM_Field is
     (
      --  The current data frame is considered as finished when the last bit of
      --  a data word has been sent out and the transmit buffer TBUF does not
      --  contain new data (TDV = 0).
      VALUE1,
      --  The MSLS signal is kept active also while no new data is available
      --  and no other end of frame condition is reached. In this case, the
      --  software can accept delays in delivering the data without automatic
      --  deactivation of MSLS in multi-word data frames.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_FEM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Frequency Selection
   type PCR_SSCMode_CTQSEL1_Field is
     (
      --  fCTQIN = fPDIV
      VALUE1,
      --  fCTQIN = fPPP
      VALUE2,
      --  fCTQIN = fSCLK
      VALUE3,
      --  fCTQIN = fMCLK
      VALUE4)
     with Size => 2;
   for PCR_SSCMode_CTQSEL1_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   subtype PCR_SSCMode_PCTQ1_Field is HAL.UInt2;
   subtype PCR_SSCMode_DCTQ1_Field is HAL.UInt5;

   --  Parity Error Interrupt Enable
   type PCR_SSCMode_PARIEN_Field is
     (
      --  A protocol interrupt is not generated with the detection of a parity
      --  error.
      VALUE1,
      --  A protocol interrupt is generated with the detection of a parity
      --  error.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_PARIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MSLS Interrupt Enable
   type PCR_SSCMode_MSLSIEN_Field is
     (
      --  A protocol interrupt is not generated if a change of signal MSLS is
      --  detected.
      VALUE1,
      --  A protocol interrupt is generated if a change of signal MSLS is
      --  detected.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_MSLSIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DX2T Interrupt Enable
   type PCR_SSCMode_DX2TIEN_Field is
     (
      --  A protocol interrupt is not generated if DX2T is activated.
      VALUE1,
      --  A protocol interrupt is generated if DX2T is activated.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_DX2TIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Select Output
   type PCR_SSCMode_SELO_Field is
     (
      --  The corresponding SELOx line cannot be activated.
      VALUE1,
      --  The corresponding SELOx line can be activated (according to the mode
      --  selected by SELCTR).
      VALUE2)
     with Size => 8;
   for PCR_SSCMode_SELO_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Inter-Word Delay Tiw
   type PCR_SSCMode_TIWEN_Field is
     (
      --  No delay between data words of the same frame.
      VALUE1,
      --  The inter-word delay Tiw is enabled and introduced between data words
      --  of the same frame.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_TIWEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slave Mode Clock Phase Select
   type PCR_SSCMode_SLPHSEL_Field is
     (
      --  Data bits are shifted out with the leading edge of the shift clock
      --  signal and latched in with the trailing edge.
      VALUE1,
      --  The first data bit is shifted out when the data shift unit receives a
      --  low to high transition from the DX2 stage. Subsequent bits are
      --  shifted out with the trailing edge of the shift clock signal. Data
      --  bits are always latched in with the leading edge.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_SLPHSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Master Clock Enable
   type PCR_SSCMode_MCLK_Field is
     (
      --  The MCLK generation is disabled and output MCLK = 0.
      VALUE1,
      --  The MCLK generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_SSCMode_MCLK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Control Register [SSC Mode]
   type PCR_SSCMode_Register is record
      --  MSLS Enable
      MSLSEN         : PCR_SSCMode_MSLSEN_Field := NRF_SVD.USIC.VALUE1;
      --  Select Control
      SELCTR         : PCR_SSCMode_SELCTR_Field := NRF_SVD.USIC.VALUE1;
      --  Select Inversion
      SELINV         : PCR_SSCMode_SELINV_Field := NRF_SVD.USIC.VALUE1;
      --  Frame End Mode
      FEM            : PCR_SSCMode_FEM_Field := NRF_SVD.USIC.VALUE1;
      --  Input Frequency Selection
      CTQSEL1        : PCR_SSCMode_CTQSEL1_Field := NRF_SVD.USIC.VALUE1;
      --  Divider Factor PCTQ1 for Tiw and Tnf
      PCTQ1          : PCR_SSCMode_PCTQ1_Field := 16#0#;
      --  Divider Factor DCTQ1 for Tiw and Tnf
      DCTQ1          : PCR_SSCMode_DCTQ1_Field := 16#0#;
      --  Parity Error Interrupt Enable
      PARIEN         : PCR_SSCMode_PARIEN_Field := NRF_SVD.USIC.VALUE1;
      --  MSLS Interrupt Enable
      MSLSIEN        : PCR_SSCMode_MSLSIEN_Field := NRF_SVD.USIC.VALUE1;
      --  DX2T Interrupt Enable
      DX2TIEN        : PCR_SSCMode_DX2TIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Select Output
      SELO           : PCR_SSCMode_SELO_Field := NRF_SVD.USIC.VALUE1;
      --  Enable Inter-Word Delay Tiw
      TIWEN          : PCR_SSCMode_TIWEN_Field := NRF_SVD.USIC.VALUE1;
      --  Slave Mode Clock Phase Select
      SLPHSEL        : PCR_SSCMode_SLPHSEL_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  Master Clock Enable
      MCLK           : PCR_SSCMode_MCLK_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_SSCMode_Register use record
      MSLSEN         at 0 range 0 .. 0;
      SELCTR         at 0 range 1 .. 1;
      SELINV         at 0 range 2 .. 2;
      FEM            at 0 range 3 .. 3;
      CTQSEL1        at 0 range 4 .. 5;
      PCTQ1          at 0 range 6 .. 7;
      DCTQ1          at 0 range 8 .. 12;
      PARIEN         at 0 range 13 .. 13;
      MSLSIEN        at 0 range 14 .. 14;
      DX2TIEN        at 0 range 15 .. 15;
      SELO           at 0 range 16 .. 23;
      TIWEN          at 0 range 24 .. 24;
      SLPHSEL        at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      MCLK           at 0 range 31 .. 31;
   end record;

   subtype PCR_IICMode_SLAD_Field is HAL.UInt16;

   --  Acknowledge 00H
   type PCR_IICMode_ACK00_Field is
     (
      --  The slave device is not sensitive to this address.
      VALUE1,
      --  The slave device is sensitive to this address.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_ACK00_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Symbol Timing
   type PCR_IICMode_STIM_Field is
     (
      --  A symbol contains 10 time quanta. The timing is adapted for standard
      --  mode (100 kBaud).
      VALUE1,
      --  A symbol contains 25 time quanta. The timing is adapted for fast mode
      --  (400 kBaud).
      VALUE2)
     with Size => 1;
   for PCR_IICMode_STIM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start Condition Received Interrupt Enable
   type PCR_IICMode_SCRIEN_Field is
     (
      --  The start condition interrupt is disabled.
      VALUE1,
      --  The start condition interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_SCRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Repeated Start Condition Received Interrupt Enable
   type PCR_IICMode_RSCRIEN_Field is
     (
      --  The repeated start condition interrupt is disabled.
      VALUE1,
      --  The repeated start condition interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_RSCRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Stop Condition Received Interrupt Enable
   type PCR_IICMode_PCRIEN_Field is
     (
      --  The stop condition interrupt is disabled.
      VALUE1,
      --  The stop condition interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_PCRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Non-Acknowledge Interrupt Enable
   type PCR_IICMode_NACKIEN_Field is
     (
      --  The non-acknowledge interrupt is disabled.
      VALUE1,
      --  The non-acknowledge interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_NACKIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Arbitration Lost Interrupt Enable
   type PCR_IICMode_ARLIEN_Field is
     (
      --  The arbitration lost interrupt is disabled.
      VALUE1,
      --  The arbitration lost interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_ARLIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slave Read Request Interrupt Enable
   type PCR_IICMode_SRRIEN_Field is
     (
      --  The slave read request interrupt is disabled.
      VALUE1,
      --  The slave read request interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_SRRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Error Interrupt Enable
   type PCR_IICMode_ERRIEN_Field is
     (
      --  The error interrupt is disabled.
      VALUE1,
      --  The error interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_ERRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slave Acknowledge Disable
   type PCR_IICMode_SACKDIS_Field is
     (
      --  The generation of an active slave acknowledge is enabled (slave
      --  acknowledge with 0 level = more bytes can be received).
      VALUE1,
      --  The generation of an active slave acknowledge is disabled (slave
      --  acknowledge with 1 level = reception stopped).
      VALUE2)
     with Size => 1;
   for PCR_IICMode_SACKDIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype PCR_IICMode_HDEL_Field is HAL.UInt4;

   --  Acknowledge Interrupt Enable
   type PCR_IICMode_ACKIEN_Field is
     (
      --  The acknowledge interrupt is disabled.
      VALUE1,
      --  The acknowledge interrupt is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_ACKIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Master Clock Enable
   type PCR_IICMode_MCLK_Field is
     (
      --  The MCLK generation is disabled and MCLK is 0.
      VALUE1,
      --  The MCLK generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IICMode_MCLK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Control Register [IIC Mode]
   type PCR_IICMode_Register is record
      --  Slave Address
      SLAD    : PCR_IICMode_SLAD_Field := 16#0#;
      --  Acknowledge 00H
      ACK00   : PCR_IICMode_ACK00_Field := NRF_SVD.USIC.VALUE1;
      --  Symbol Timing
      STIM    : PCR_IICMode_STIM_Field := NRF_SVD.USIC.VALUE1;
      --  Start Condition Received Interrupt Enable
      SCRIEN  : PCR_IICMode_SCRIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Repeated Start Condition Received Interrupt Enable
      RSCRIEN : PCR_IICMode_RSCRIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Stop Condition Received Interrupt Enable
      PCRIEN  : PCR_IICMode_PCRIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Non-Acknowledge Interrupt Enable
      NACKIEN : PCR_IICMode_NACKIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Arbitration Lost Interrupt Enable
      ARLIEN  : PCR_IICMode_ARLIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Slave Read Request Interrupt Enable
      SRRIEN  : PCR_IICMode_SRRIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Error Interrupt Enable
      ERRIEN  : PCR_IICMode_ERRIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Slave Acknowledge Disable
      SACKDIS : PCR_IICMode_SACKDIS_Field := NRF_SVD.USIC.VALUE1;
      --  Hardware Delay
      HDEL    : PCR_IICMode_HDEL_Field := 16#0#;
      --  Acknowledge Interrupt Enable
      ACKIEN  : PCR_IICMode_ACKIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Master Clock Enable
      MCLK    : PCR_IICMode_MCLK_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_IICMode_Register use record
      SLAD    at 0 range 0 .. 15;
      ACK00   at 0 range 16 .. 16;
      STIM    at 0 range 17 .. 17;
      SCRIEN  at 0 range 18 .. 18;
      RSCRIEN at 0 range 19 .. 19;
      PCRIEN  at 0 range 20 .. 20;
      NACKIEN at 0 range 21 .. 21;
      ARLIEN  at 0 range 22 .. 22;
      SRRIEN  at 0 range 23 .. 23;
      ERRIEN  at 0 range 24 .. 24;
      SACKDIS at 0 range 25 .. 25;
      HDEL    at 0 range 26 .. 29;
      ACKIEN  at 0 range 30 .. 30;
      MCLK    at 0 range 31 .. 31;
   end record;

   --  WA Generation Enable
   type PCR_IISMode_WAGEN_Field is
     (
      --  The IIS can be used as slave. The generation of the word address
      --  signal is disabled. The output signal WA is 0. The MCLKO signal
      --  generation depends on PCR.MCLK.
      VALUE1,
      --  The IIS can be used as master. The generation of the word address
      --  signal is enabled. The signal starts with a 0 after being enabled.
      --  The generation of MCLK is enabled, independent of PCR.MCLK. After
      --  clearing WAGEN, the USIC module stops the generation of the WA signal
      --  within the next 4 WA periods.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_WAGEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Transfers Enable
   type PCR_IISMode_DTEN_Field is
     (
      --  The changes of the WA input signal are ignored and no transfers take
      --  place.
      VALUE1,
      --  Transfers are enabled.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_DTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Select Inversion
   type PCR_IISMode_SELINV_Field is
     (
      --  The SELOx outputs have the same polarity as the WA signal.
      VALUE1,
      --  The SELOx outputs have the inverted polarity to the WA signal.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_SELINV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WA Falling Edge Interrupt Enable
   type PCR_IISMode_WAFEIEN_Field is
     (
      --  A protocol interrupt is not activated if a falling edge of WA is
      --  generated.
      VALUE1,
      --  A protocol interrupt is activated if a falling edge of WA is
      --  generated.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_WAFEIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WA Rising Edge Interrupt Enable
   type PCR_IISMode_WAREIEN_Field is
     (
      --  A protocol interrupt is not activated if a rising edge of WA is
      --  generated.
      VALUE1,
      --  A protocol interrupt is activated if a rising edge of WA is
      --  generated.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_WAREIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  END Interrupt Enable
   type PCR_IISMode_ENDIEN_Field is
     (
      --  A protocol interrupt is not activated.
      VALUE1,
      --  A protocol interrupt is activated.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_ENDIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DX2T Interrupt Enable
   type PCR_IISMode_DX2TIEN_Field is
     (
      --  A protocol interrupt is not generated if DX2T is active.
      VALUE1,
      --  A protocol interrupt is generated if DX2T is active.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_DX2TIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype PCR_IISMode_TDEL_Field is HAL.UInt6;

   --  Master Clock Enable
   type PCR_IISMode_MCLK_Field is
     (
      --  The MCLK generation is disabled and MCLK is 0.
      VALUE1,
      --  The MCLK generation is enabled.
      VALUE2)
     with Size => 1;
   for PCR_IISMode_MCLK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Control Register [IIS Mode]
   type PCR_IISMode_Register is record
      --  WA Generation Enable
      WAGEN          : PCR_IISMode_WAGEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Transfers Enable
      DTEN           : PCR_IISMode_DTEN_Field := NRF_SVD.USIC.VALUE1;
      --  Select Inversion
      SELINV         : PCR_IISMode_SELINV_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  WA Falling Edge Interrupt Enable
      WAFEIEN        : PCR_IISMode_WAFEIEN_Field := NRF_SVD.USIC.VALUE1;
      --  WA Rising Edge Interrupt Enable
      WAREIEN        : PCR_IISMode_WAREIEN_Field := NRF_SVD.USIC.VALUE1;
      --  END Interrupt Enable
      ENDIEN         : PCR_IISMode_ENDIEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_14  : HAL.UInt8 := 16#0#;
      --  DX2T Interrupt Enable
      DX2TIEN        : PCR_IISMode_DX2TIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Transfer Delay
      TDEL           : PCR_IISMode_TDEL_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Master Clock Enable
      MCLK           : PCR_IISMode_MCLK_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_IISMode_Register use record
      WAGEN          at 0 range 0 .. 0;
      DTEN           at 0 range 1 .. 1;
      SELINV         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WAFEIEN        at 0 range 4 .. 4;
      WAREIEN        at 0 range 5 .. 5;
      ENDIEN         at 0 range 6 .. 6;
      Reserved_7_14  at 0 range 7 .. 14;
      DX2TIEN        at 0 range 15 .. 15;
      TDEL           at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      MCLK           at 0 range 31 .. 31;
   end record;

   --  Operating Mode
   type CCR_MODE_Field is
     (
      --  The USIC channel is disabled. All protocol-related state machines are
      --  set to an idle state.
      VALUE1,
      --  The SSC (SPI) protocol is selected.
      VALUE2,
      --  The ASC (SCI, UART) protocol is selected.
      VALUE3,
      --  The IIS protocol is selected.
      VALUE4,
      --  The IIC protocol is selected.
      VALUE5)
     with Size => 4;
   for CCR_MODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4);

   --  Hardware Port Control Enable
   type CCR_HPCEN_Field is
     (
      --  The hardware port control is disabled.
      VALUE1,
      --  The hardware port control is enabled for DX0 and DOUT0.
      VALUE2,
      --  The hardware port control is enabled for DX3, DX0 and DOUT[1:0].
      VALUE3,
      --  The hardware port control is enabled for DX0, DX[5:3] and DOUT[3:0].
      VALUE4)
     with Size => 2;
   for CCR_HPCEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Parity Mode
   type CCR_PM_Field is
     (
      --  The parity generation is disabled.
      VALUE1,
      --  Even parity is selected (parity bit = 1 on odd number of 1s in data,
      --  parity bit = 0 on even number of 1s in data).
      VALUE3,
      --  Odd parity is selected (parity bit = 0 on odd number of 1s in data,
      --  parity bit = 1 on even number of 1s in data).
      VALUE4)
     with Size => 2;
   for CCR_PM_Field use
     (VALUE1 => 0,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Receiver Start Interrupt Enable
   type CCR_RSIEN_Field is
     (
      --  The receiver start interrupt is disabled.
      VALUE1,
      --  The receiver start interrupt is enabled. In case of a receiver start
      --  event, the service request output SRx indicated by INPR.TBINP is
      --  activated.
      VALUE2)
     with Size => 1;
   for CCR_RSIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Lost Interrupt Enable
   type CCR_DLIEN_Field is
     (
      --  The data lost interrupt is disabled.
      VALUE1,
      --  The data lost interrupt is enabled. In case of a data lost event, the
      --  service request output SRx indicated by INPR.PINP is activated.
      VALUE2)
     with Size => 1;
   for CCR_DLIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Shift Interrupt Enable
   type CCR_TSIEN_Field is
     (
      --  The transmit shift interrupt is disabled.
      VALUE1,
      --  The transmit shift interrupt is enabled. In case of a transmit shift
      --  interrupt event, the service request output SRx indicated by
      --  INPR.TSINP is activated.
      VALUE2)
     with Size => 1;
   for CCR_TSIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Interrupt Enable
   type CCR_TBIEN_Field is
     (
      --  The transmit buffer interrupt is disabled.
      VALUE1,
      --  The transmit buffer interrupt is enabled. In case of a transmit
      --  buffer event, the service request output SRx indicated by INPR.TBINP
      --  is activated.
      VALUE2)
     with Size => 1;
   for CCR_TBIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Interrupt Enable
   type CCR_RIEN_Field is
     (
      --  The receive interrupt is disabled.
      VALUE1,
      --  The receive interrupt is enabled. In case of a receive event, the
      --  service request output SRx indicated by INPR.RINP is activated.
      VALUE2)
     with Size => 1;
   for CCR_RIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Interrupt Enable
   type CCR_AIEN_Field is
     (
      --  The alternative receive interrupt is disabled.
      VALUE1,
      --  The alternative receive interrupt is enabled. In case of an
      --  alternative receive event, the service request output SRx indicated
      --  by INPR.AINP is activated.
      VALUE2)
     with Size => 1;
   for CCR_AIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Baud Rate Generator Interrupt Enable
   type CCR_BRGIEN_Field is
     (
      --  The baud rate generator interrupt is disabled.
      VALUE1,
      --  The baud rate generator interrupt is enabled. In case of a baud rate
      --  generator event, the service request output SRx indicated by
      --  INPR.PINP is activated.
      VALUE2)
     with Size => 1;
   for CCR_BRGIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel Control Register
   type CCR_Register is record
      --  Operating Mode
      MODE           : CCR_MODE_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Hardware Port Control Enable
      HPCEN          : CCR_HPCEN_Field := NRF_SVD.USIC.VALUE1;
      --  Parity Mode
      PM             : CCR_PM_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Start Interrupt Enable
      RSIEN          : CCR_RSIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Data Lost Interrupt Enable
      DLIEN          : CCR_DLIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Shift Interrupt Enable
      TSIEN          : CCR_TSIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Interrupt Enable
      TBIEN          : CCR_TBIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Interrupt Enable
      RIEN           : CCR_RIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Interrupt Enable
      AIEN           : CCR_AIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Baud Rate Generator Interrupt Enable
      BRGIEN         : CCR_BRGIEN_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      MODE           at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      HPCEN          at 0 range 6 .. 7;
      PM             at 0 range 8 .. 9;
      RSIEN          at 0 range 10 .. 10;
      DLIEN          at 0 range 11 .. 11;
      TSIEN          at 0 range 12 .. 12;
      TBIEN          at 0 range 13 .. 13;
      RIEN           at 0 range 14 .. 14;
      AIEN           at 0 range 15 .. 15;
      BRGIEN         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CMTR_CTV_Field is HAL.UInt10;

   --  Capture Mode Timer Register
   type CMTR_Register is record
      --  Captured Timer Value
      CTV            : CMTR_CTV_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMTR_Register use record
      CTV            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PSR_ST array
   type PSR_ST_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for PSR_ST
   type PSR_ST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ST as a value
            Val : HAL.UInt10;
         when True =>
            --  ST as an array
            Arr : PSR_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for PSR_ST_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Receiver Start Indication Flag
   type PSR_RSIF_Field is
     (
      --  A receiver start event has not occurred.
      VALUE1,
      --  A receiver start event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_RSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Lost Indication Flag
   type PSR_DLIF_Field is
     (
      --  A data lost event has not occurred.
      VALUE1,
      --  A data lost event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_DLIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Shift Indication Flag
   type PSR_TSIF_Field is
     (
      --  A transmit shift event has not occurred.
      VALUE1,
      --  A transmit shift event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_TSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Indication Flag
   type PSR_TBIF_Field is
     (
      --  A transmit buffer event has not occurred.
      VALUE1,
      --  A transmit buffer event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_TBIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Indication Flag
   type PSR_RIF_Field is
     (
      --  A receive event has not occurred.
      VALUE1,
      --  A receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_RIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Indication Flag
   type PSR_AIF_Field is
     (
      --  An alternative receive event has not occurred.
      VALUE1,
      --  An alternative receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_AIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Baud Rate Generator Indication Flag
   type PSR_BRGIF_Field is
     (
      --  A baud rate generator event has not occurred.
      VALUE1,
      --  A baud rate generator event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_BRGIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Status Register
   type PSR_Register is record
      --  Protocol Status Flag 0
      ST             : PSR_ST_Field := (As_Array => False, Val => 16#0#);
      --  Receiver Start Indication Flag
      RSIF           : PSR_RSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Data Lost Indication Flag
      DLIF           : PSR_DLIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Shift Indication Flag
      TSIF           : PSR_TSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Indication Flag
      TBIF           : PSR_TBIF_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Indication Flag
      RIF            : PSR_RIF_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Indication Flag
      AIF            : PSR_AIF_Field := NRF_SVD.USIC.VALUE1;
      --  Baud Rate Generator Indication Flag
      BRGIF          : PSR_BRGIF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      ST             at 0 range 0 .. 9;
      RSIF           at 0 range 10 .. 10;
      DLIF           at 0 range 11 .. 11;
      TSIF           at 0 range 12 .. 12;
      TBIF           at 0 range 13 .. 13;
      RIF            at 0 range 14 .. 14;
      AIF            at 0 range 15 .. 15;
      BRGIF          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Transmission Idle
   type PSR_ASCMode_TXIDLE_Field is
     (
      --  The transmitter line has not yet been idle.
      VALUE1,
      --  The transmitter line has been idle and frame transmission is
      --  possible.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_TXIDLE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Reception Idle
   type PSR_ASCMode_RXIDLE_Field is
     (
      --  The receiver line has not yet been idle.
      VALUE1,
      --  The receiver line has been idle and frame reception is possible.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_RXIDLE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Synchronization Break Detected
   type PSR_ASCMode_SBD_Field is
     (
      --  A synchronization break has not yet been detected.
      VALUE1,
      --  A synchronization break has been detected.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_SBD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Collision Detected
   type PSR_ASCMode_COL_Field is
     (
      --  A collision has not yet been detected and frame transmission is
      --  possible.
      VALUE1,
      --  A collision has been detected and frame transmission is not possible.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_COL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Noise Detected
   type PSR_ASCMode_RNS_Field is
     (
      --  Receiver noise has not been detected.
      VALUE1,
      --  Receiver noise has been detected.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_RNS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Format Error in Stop Bit 0
   type PSR_ASCMode_FER0_Field is
     (
      --  A format error 0 has not been detected.
      VALUE1,
      --  A format error 0 has been detected.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_FER0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Format Error in Stop Bit 1
   type PSR_ASCMode_FER1_Field is
     (
      --  A format error 1 has not been detected.
      VALUE1,
      --  A format error 1 has been detected.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_FER1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Frame Finished
   type PSR_ASCMode_RFF_Field is
     (
      --  The received frame is not yet finished.
      VALUE1,
      --  The received frame is finished.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_RFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmitter Frame Finished
   type PSR_ASCMode_TFF_Field is
     (
      --  The transmitter frame is not yet finished.
      VALUE1,
      --  The transmitter frame is finished.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_TFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transfer Status BUSY
   type PSR_ASCMode_BUSY_Field is
     (
      --  A data transfer does not take place.
      VALUE1,
      --  A data transfer currently takes place.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_BUSY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Start Indication Flag
   type PSR_ASCMode_RSIF_Field is
     (
      --  A receiver start event has not occurred.
      VALUE1,
      --  A receiver start event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_RSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Lost Indication Flag
   type PSR_ASCMode_DLIF_Field is
     (
      --  A data lost event has not occurred.
      VALUE1,
      --  A data lost event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_DLIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Shift Indication Flag
   type PSR_ASCMode_TSIF_Field is
     (
      --  A transmit shift event has not occurred.
      VALUE1,
      --  A transmit shift event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_TSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Indication Flag
   type PSR_ASCMode_TBIF_Field is
     (
      --  A transmit buffer event has not occurred.
      VALUE1,
      --  A transmit buffer event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_TBIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Indication Flag
   type PSR_ASCMode_RIF_Field is
     (
      --  A receive event has not occurred.
      VALUE1,
      --  A receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_RIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Indication Flag
   type PSR_ASCMode_AIF_Field is
     (
      --  An alternative receive event has not occurred.
      VALUE1,
      --  An alternative receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_AIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Baud Rate Generator Indication Flag
   type PSR_ASCMode_BRGIF_Field is
     (
      --  A baud rate generator event has not occurred.
      VALUE1,
      --  A baud rate generator event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_ASCMode_BRGIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Status Register [ASC Mode]
   type PSR_ASCMode_Register is record
      --  Transmission Idle
      TXIDLE         : PSR_ASCMode_TXIDLE_Field := NRF_SVD.USIC.VALUE1;
      --  Reception Idle
      RXIDLE         : PSR_ASCMode_RXIDLE_Field := NRF_SVD.USIC.VALUE1;
      --  Synchronization Break Detected
      SBD            : PSR_ASCMode_SBD_Field := NRF_SVD.USIC.VALUE1;
      --  Collision Detected
      COL            : PSR_ASCMode_COL_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Noise Detected
      RNS            : PSR_ASCMode_RNS_Field := NRF_SVD.USIC.VALUE1;
      --  Format Error in Stop Bit 0
      FER0           : PSR_ASCMode_FER0_Field := NRF_SVD.USIC.VALUE1;
      --  Format Error in Stop Bit 1
      FER1           : PSR_ASCMode_FER1_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Frame Finished
      RFF            : PSR_ASCMode_RFF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmitter Frame Finished
      TFF            : PSR_ASCMode_TFF_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Transfer Status BUSY
      BUSY           : PSR_ASCMode_BUSY_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Start Indication Flag
      RSIF           : PSR_ASCMode_RSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Data Lost Indication Flag
      DLIF           : PSR_ASCMode_DLIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Shift Indication Flag
      TSIF           : PSR_ASCMode_TSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Indication Flag
      TBIF           : PSR_ASCMode_TBIF_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Indication Flag
      RIF            : PSR_ASCMode_RIF_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Indication Flag
      AIF            : PSR_ASCMode_AIF_Field := NRF_SVD.USIC.VALUE1;
      --  Baud Rate Generator Indication Flag
      BRGIF          : PSR_ASCMode_BRGIF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_ASCMode_Register use record
      TXIDLE         at 0 range 0 .. 0;
      RXIDLE         at 0 range 1 .. 1;
      SBD            at 0 range 2 .. 2;
      COL            at 0 range 3 .. 3;
      RNS            at 0 range 4 .. 4;
      FER0           at 0 range 5 .. 5;
      FER1           at 0 range 6 .. 6;
      RFF            at 0 range 7 .. 7;
      TFF            at 0 range 8 .. 8;
      BUSY           at 0 range 9 .. 9;
      RSIF           at 0 range 10 .. 10;
      DLIF           at 0 range 11 .. 11;
      TSIF           at 0 range 12 .. 12;
      TBIF           at 0 range 13 .. 13;
      RIF            at 0 range 14 .. 14;
      AIF            at 0 range 15 .. 15;
      BRGIF          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  MSLS Status
   type PSR_SSCMode_MSLS_Field is
     (
      --  The internal signal MSLS is inactive (0).
      VALUE1,
      --  The internal signal MSLS is active (1).
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_MSLS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DX2S Status
   type PSR_SSCMode_DX2S_Field is
     (
      --  DX2S is 0.
      VALUE1,
      --  DX2S is 1.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_DX2S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MSLS Event Detected
   type PSR_SSCMode_MSLSEV_Field is
     (
      --  The MSLS signal has not changed its state.
      VALUE1,
      --  The MSLS signal has changed its state.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_MSLSEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DX2T Event Detected
   type PSR_SSCMode_DX2TEV_Field is
     (
      --  The DX2T signal has not been activated.
      VALUE1,
      --  The DX2T signal has been activated.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_DX2TEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Parity Error Event Detected
   type PSR_SSCMode_PARERR_Field is
     (
      --  A parity error event has not been activated.
      VALUE1,
      --  A parity error event has been activated.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_PARERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Start Indication Flag
   type PSR_SSCMode_RSIF_Field is
     (
      --  A receiver start event has not occurred.
      VALUE1,
      --  A receiver start event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_RSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Lost Indication Flag
   type PSR_SSCMode_DLIF_Field is
     (
      --  A data lost event has not occurred.
      VALUE1,
      --  A data lost event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_DLIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Shift Indication Flag
   type PSR_SSCMode_TSIF_Field is
     (
      --  A transmit shift event has not occurred.
      VALUE1,
      --  A transmit shift event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_TSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Indication Flag
   type PSR_SSCMode_TBIF_Field is
     (
      --  A transmit buffer event has not occurred.
      VALUE1,
      --  A transmit buffer event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_TBIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Indication Flag
   type PSR_SSCMode_RIF_Field is
     (
      --  A receive event has not occurred.
      VALUE1,
      --  A receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_RIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Indication Flag
   type PSR_SSCMode_AIF_Field is
     (
      --  An alternative receive event has not occurred.
      VALUE1,
      --  An alternative receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_AIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Baud Rate Generator Indication Flag
   type PSR_SSCMode_BRGIF_Field is
     (
      --  A baud rate generator event has not occurred.
      VALUE1,
      --  A baud rate generator event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_SSCMode_BRGIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Status Register [SSC Mode]
   type PSR_SSCMode_Register is record
      --  MSLS Status
      MSLS           : PSR_SSCMode_MSLS_Field := NRF_SVD.USIC.VALUE1;
      --  DX2S Status
      DX2S           : PSR_SSCMode_DX2S_Field := NRF_SVD.USIC.VALUE1;
      --  MSLS Event Detected
      MSLSEV         : PSR_SSCMode_MSLSEV_Field := NRF_SVD.USIC.VALUE1;
      --  DX2T Event Detected
      DX2TEV         : PSR_SSCMode_DX2TEV_Field := NRF_SVD.USIC.VALUE1;
      --  Parity Error Event Detected
      PARERR         : PSR_SSCMode_PARERR_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_5_9   : HAL.UInt5 := 16#0#;
      --  Receiver Start Indication Flag
      RSIF           : PSR_SSCMode_RSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Data Lost Indication Flag
      DLIF           : PSR_SSCMode_DLIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Shift Indication Flag
      TSIF           : PSR_SSCMode_TSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Indication Flag
      TBIF           : PSR_SSCMode_TBIF_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Indication Flag
      RIF            : PSR_SSCMode_RIF_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Indication Flag
      AIF            : PSR_SSCMode_AIF_Field := NRF_SVD.USIC.VALUE1;
      --  Baud Rate Generator Indication Flag
      BRGIF          : PSR_SSCMode_BRGIF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_SSCMode_Register use record
      MSLS           at 0 range 0 .. 0;
      DX2S           at 0 range 1 .. 1;
      MSLSEV         at 0 range 2 .. 2;
      DX2TEV         at 0 range 3 .. 3;
      PARERR         at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      RSIF           at 0 range 10 .. 10;
      DLIF           at 0 range 11 .. 11;
      TSIF           at 0 range 12 .. 12;
      TBIF           at 0 range 13 .. 13;
      RIF            at 0 range 14 .. 14;
      AIF            at 0 range 15 .. 15;
      BRGIF          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Slave Select
   type PSR_IICMode_SLSEL_Field is
     (
      --  The device is not selected as slave.
      VALUE1,
      --  The device is selected as slave.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_SLSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Wrong TDF Code Found
   type PSR_IICMode_WTDF_Field is
     (
      --  A wrong TDF code has not been found.
      VALUE1,
      --  A wrong TDF code has been found.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_WTDF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start Condition Received
   type PSR_IICMode_SCR_Field is
     (
      --  A start condition has not yet been detected.
      VALUE1,
      --  A start condition has been detected.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_SCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Repeated Start Condition Received
   type PSR_IICMode_RSCR_Field is
     (
      --  A repeated start condition has not yet been detected.
      VALUE1,
      --  A repeated start condition has been detected.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_RSCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Stop Condition Received
   type PSR_IICMode_PCR_Field is
     (
      --  A stop condition has not yet been detected.
      VALUE1,
      --  A stop condition has been detected.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_PCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Non-Acknowledge Received
   type PSR_IICMode_NACK_Field is
     (
      --  A non-acknowledge has not been received.
      VALUE1,
      --  A non-acknowledge has been received.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_NACK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Arbitration Lost
   type PSR_IICMode_ARL_Field is
     (
      --  An arbitration has not been lost.
      VALUE1,
      --  An arbitration has been lost.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_ARL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slave Read Request
   type PSR_IICMode_SRR_Field is
     (
      --  A slave read request has not been detected.
      VALUE1,
      --  A slave read request has been detected.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_SRR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Error
   type PSR_IICMode_ERR_Field is
     (
      --  An IIC error has not been detected.
      VALUE1,
      --  An IIC error has been detected.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_ERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Acknowledge Received
   type PSR_IICMode_ACK_Field is
     (
      --  An acknowledge has not been received.
      VALUE1,
      --  An acknowledge has been received.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_ACK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Start Indication Flag
   type PSR_IICMode_RSIF_Field is
     (
      --  A receiver start event has not occurred.
      VALUE1,
      --  A receiver start event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_RSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Lost Indication Flag
   type PSR_IICMode_DLIF_Field is
     (
      --  A data lost event has not occurred.
      VALUE1,
      --  A data lost event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_DLIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Shift Indication Flag
   type PSR_IICMode_TSIF_Field is
     (
      --  A transmit shift event has not occurred.
      VALUE1,
      --  A transmit shift event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_TSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Indication Flag
   type PSR_IICMode_TBIF_Field is
     (
      --  A transmit buffer event has not occurred.
      VALUE1,
      --  A transmit buffer event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_TBIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Indication Flag
   type PSR_IICMode_RIF_Field is
     (
      --  A receive event has not occurred.
      VALUE1,
      --  A receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_RIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Indication Flag
   type PSR_IICMode_AIF_Field is
     (
      --  An alternative receive event has not occurred.
      VALUE1,
      --  An alternative receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_AIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Baud Rate Generator Indication Flag
   type PSR_IICMode_BRGIF_Field is
     (
      --  A baud rate generator event has not occurred.
      VALUE1,
      --  A baud rate generator event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IICMode_BRGIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Status Register [IIC Mode]
   type PSR_IICMode_Register is record
      --  Slave Select
      SLSEL          : PSR_IICMode_SLSEL_Field := NRF_SVD.USIC.VALUE1;
      --  Wrong TDF Code Found
      WTDF           : PSR_IICMode_WTDF_Field := NRF_SVD.USIC.VALUE1;
      --  Start Condition Received
      SCR            : PSR_IICMode_SCR_Field := NRF_SVD.USIC.VALUE1;
      --  Repeated Start Condition Received
      RSCR           : PSR_IICMode_RSCR_Field := NRF_SVD.USIC.VALUE1;
      --  Stop Condition Received
      PCR            : PSR_IICMode_PCR_Field := NRF_SVD.USIC.VALUE1;
      --  Non-Acknowledge Received
      NACK           : PSR_IICMode_NACK_Field := NRF_SVD.USIC.VALUE1;
      --  Arbitration Lost
      ARL            : PSR_IICMode_ARL_Field := NRF_SVD.USIC.VALUE1;
      --  Slave Read Request
      SRR            : PSR_IICMode_SRR_Field := NRF_SVD.USIC.VALUE1;
      --  Error
      ERR            : PSR_IICMode_ERR_Field := NRF_SVD.USIC.VALUE1;
      --  Acknowledge Received
      ACK            : PSR_IICMode_ACK_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Start Indication Flag
      RSIF           : PSR_IICMode_RSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Data Lost Indication Flag
      DLIF           : PSR_IICMode_DLIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Shift Indication Flag
      TSIF           : PSR_IICMode_TSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Indication Flag
      TBIF           : PSR_IICMode_TBIF_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Indication Flag
      RIF            : PSR_IICMode_RIF_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Indication Flag
      AIF            : PSR_IICMode_AIF_Field := NRF_SVD.USIC.VALUE1;
      --  Baud Rate Generator Indication Flag
      BRGIF          : PSR_IICMode_BRGIF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_IICMode_Register use record
      SLSEL          at 0 range 0 .. 0;
      WTDF           at 0 range 1 .. 1;
      SCR            at 0 range 2 .. 2;
      RSCR           at 0 range 3 .. 3;
      PCR            at 0 range 4 .. 4;
      NACK           at 0 range 5 .. 5;
      ARL            at 0 range 6 .. 6;
      SRR            at 0 range 7 .. 7;
      ERR            at 0 range 8 .. 8;
      ACK            at 0 range 9 .. 9;
      RSIF           at 0 range 10 .. 10;
      DLIF           at 0 range 11 .. 11;
      TSIF           at 0 range 12 .. 12;
      TBIF           at 0 range 13 .. 13;
      RIF            at 0 range 14 .. 14;
      AIF            at 0 range 15 .. 15;
      BRGIF          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Word Address
   type PSR_IISMode_WA_Field is
     (
      --  WA has been sampled 0.
      VALUE1,
      --  WA has been sampled 1.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_WA_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DX2S Status
   type PSR_IISMode_DX2S_Field is
     (
      --  DX2S is 0.
      VALUE1,
      --  DX2S is 1.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_DX2S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DX2T Event Detected
   type PSR_IISMode_DX2TEV_Field is
     (
      --  The DX2T signal has not been activated.
      VALUE1,
      --  The DX2T signal has been activated.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_DX2TEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WA Falling Edge Event
   type PSR_IISMode_WAFE_Field is
     (
      --  A WA falling edge has not been generated.
      VALUE1,
      --  A WA falling edge has been generated.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_WAFE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WA Rising Edge Event
   type PSR_IISMode_WARE_Field is
     (
      --  A WA rising edge has not been generated.
      VALUE1,
      --  A WA rising edge has been generated.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_WARE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  WA Generation End
   type PSR_IISMode_END_Field is
     (
      --  The WA generation has not yet ended (if it is running and WAGEN has
      --  been cleared).
      VALUE1,
      --  The WA generation has ended (if it has been running).
      VALUE2)
     with Size => 1;
   for PSR_IISMode_END_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Start Indication Flag
   type PSR_IISMode_RSIF_Field is
     (
      --  A receiver start event has not occurred.
      VALUE1,
      --  A receiver start event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_RSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Lost Indication Flag
   type PSR_IISMode_DLIF_Field is
     (
      --  A data lost event has not occurred.
      VALUE1,
      --  A data lost event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_DLIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Shift Indication Flag
   type PSR_IISMode_TSIF_Field is
     (
      --  A transmit shift event has not occurred.
      VALUE1,
      --  A transmit shift event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_TSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Indication Flag
   type PSR_IISMode_TBIF_Field is
     (
      --  A transmit buffer event has not occurred.
      VALUE1,
      --  A transmit buffer event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_TBIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Indication Flag
   type PSR_IISMode_RIF_Field is
     (
      --  A receive event has not occurred.
      VALUE1,
      --  A receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_RIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Indication Flag
   type PSR_IISMode_AIF_Field is
     (
      --  An alternative receive event has not occurred.
      VALUE1,
      --  An alternative receive event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_AIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Baud Rate Generator Indication Flag
   type PSR_IISMode_BRGIF_Field is
     (
      --  A baud rate generator event has not occurred.
      VALUE1,
      --  A baud rate generator event has occurred.
      VALUE2)
     with Size => 1;
   for PSR_IISMode_BRGIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Status Register [IIS Mode]
   type PSR_IISMode_Register is record
      --  Word Address
      WA             : PSR_IISMode_WA_Field := NRF_SVD.USIC.VALUE1;
      --  DX2S Status
      DX2S           : PSR_IISMode_DX2S_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  DX2T Event Detected
      DX2TEV         : PSR_IISMode_DX2TEV_Field := NRF_SVD.USIC.VALUE1;
      --  WA Falling Edge Event
      WAFE           : PSR_IISMode_WAFE_Field := NRF_SVD.USIC.VALUE1;
      --  WA Rising Edge Event
      WARE           : PSR_IISMode_WARE_Field := NRF_SVD.USIC.VALUE1;
      --  WA Generation End
      END_k          : PSR_IISMode_END_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Receiver Start Indication Flag
      RSIF           : PSR_IISMode_RSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Data Lost Indication Flag
      DLIF           : PSR_IISMode_DLIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Shift Indication Flag
      TSIF           : PSR_IISMode_TSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Indication Flag
      TBIF           : PSR_IISMode_TBIF_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Indication Flag
      RIF            : PSR_IISMode_RIF_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Indication Flag
      AIF            : PSR_IISMode_AIF_Field := NRF_SVD.USIC.VALUE1;
      --  Baud Rate Generator Indication Flag
      BRGIF          : PSR_IISMode_BRGIF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_IISMode_Register use record
      WA             at 0 range 0 .. 0;
      DX2S           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DX2TEV         at 0 range 3 .. 3;
      WAFE           at 0 range 4 .. 4;
      WARE           at 0 range 5 .. 5;
      END_k          at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RSIF           at 0 range 10 .. 10;
      DLIF           at 0 range 11 .. 11;
      TSIF           at 0 range 12 .. 12;
      TBIF           at 0 range 13 .. 13;
      RIF            at 0 range 14 .. 14;
      AIF            at 0 range 15 .. 15;
      BRGIF          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Clear Status Flag 0 in PSR
   type PSCR_CST0_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.STx is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CST0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PSCR_CST array
   type PSCR_CST_Field_Array is array (0 .. 9) of PSCR_CST0_Field
     with Component_Size => 1, Size => 10;

   --  Type definition for PSCR_CST
   type PSCR_CST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CST as a value
            Val : HAL.UInt10;
         when True =>
            --  CST as an array
            Arr : PSCR_CST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for PSCR_CST_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Clear Receiver Start Indication Flag
   type PSCR_CRSIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.RSIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CRSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Data Lost Indication Flag
   type PSCR_CDLIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.DLIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CDLIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Transmit Shift Indication Flag
   type PSCR_CTSIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.TSIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CTSIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Transmit Buffer Indication Flag
   type PSCR_CTBIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.TBIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CTBIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Receive Indication Flag
   type PSCR_CRIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.RIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CRIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Alternative Receive Indication Flag
   type PSCR_CAIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.AIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CAIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Baud Rate Generator Indication Flag
   type PSCR_CBRGIF_Field is
     (
      --  No action
      VALUE1,
      --  Flag PSR.BRGIF is cleared.
      VALUE2)
     with Size => 1;
   for PSCR_CBRGIF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol Status Clear Register
   type PSCR_Register is record
      --  Write-only. Clear Status Flag 0 in PSR
      CST            : PSCR_CST_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Clear Receiver Start Indication Flag
      CRSIF          : PSCR_CRSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Data Lost Indication Flag
      CDLIF          : PSCR_CDLIF_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Transmit Shift Indication Flag
      CTSIF          : PSCR_CTSIF_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Transmit Buffer Indication Flag
      CTBIF          : PSCR_CTBIF_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Receive Indication Flag
      CRIF           : PSCR_CRIF_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Alternative Receive Indication Flag
      CAIF           : PSCR_CAIF_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Baud Rate Generator Indication Flag
      CBRGIF         : PSCR_CBRGIF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSCR_Register use record
      CST            at 0 range 0 .. 9;
      CRSIF          at 0 range 10 .. 10;
      CDLIF          at 0 range 11 .. 11;
      CTSIF          at 0 range 12 .. 12;
      CTBIF          at 0 range 13 .. 13;
      CRIF           at 0 range 14 .. 14;
      CAIF           at 0 range 15 .. 15;
      CBRGIF         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype RBUFSR_WLEN_Field is HAL.UInt4;

   --  RBUFSR_RDV array
   type RBUFSR_RDV_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RBUFSR_RDV
   type RBUFSR_RDV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDV as a value
            Val : HAL.UInt2;
         when True =>
            --  RDV as an array
            Arr : RBUFSR_RDV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RBUFSR_RDV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Receiver Buffer Status Register
   type RBUFSR_Register is record
      --  Read-only. Received Data Word Length in RBUF or RBUFD
      WLEN           : RBUFSR_WLEN_Field;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. Start of Frame in RBUF or RBUFD
      SOF            : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Protocol-Related Argument in RBUF or RBUFD
      PAR            : Boolean;
      --  Read-only. Protocol-related Error in RBUF or RBUFD
      PERR           : Boolean;
      --  unspecified
      Reserved_10_12 : HAL.UInt3;
      --  Read-only. Receive Data Valid in RBUF or RBUFD
      RDV            : RBUFSR_RDV_Field;
      --  Read-only. Data Source of RBUF or RBUFD
      DS             : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBUFSR_Register use record
      WLEN           at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SOF            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PAR            at 0 range 8 .. 8;
      PERR           at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      RDV            at 0 range 13 .. 14;
      DS             at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RBUF_DSR_Field is HAL.UInt16;

   --  Receiver Buffer Register
   type RBUF_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Received Data
      DSR            : RBUF_DSR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBUF_Register use record
      DSR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RBUFD_DSR_Field is HAL.UInt16;

   --  Receiver Buffer Register for Debugger
   type RBUFD_Register is record
      --  Read-only. Data from Shift Register
      DSR            : RBUFD_DSR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBUFD_Register use record
      DSR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RBUF0_DSR0_Field is HAL.UInt16;

   --  Receiver Buffer Register 0
   type RBUF0_Register is record
      --  Read-only. Data of Shift Registers 0[3:0]
      DSR0           : RBUF0_DSR0_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBUF0_Register use record
      DSR0           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RBUF1_DSR1_Field is HAL.UInt16;

   --  Receiver Buffer Register 1
   type RBUF1_Register is record
      --  Read-only. Data of Shift Registers 1[3:0]
      DSR1           : RBUF1_DSR1_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBUF1_Register use record
      DSR1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RBUF01SR_WLEN0_Field is HAL.UInt4;

   --  Start of Frame in RBUF0
   type RBUF01SR_SOF0_Field is
     (
      --  The data in RBUF0 has not been the first data word of a data frame.
      VALUE1,
      --  The data in RBUF0 has been the first data word of a data frame.
      VALUE2)
     with Size => 1;
   for RBUF01SR_SOF0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol-related Error in RBUF0
   type RBUF01SR_PERR0_Field is
     (
      --  The received protocol-related argument PAR matches the expected
      --  value. The reception of the data word sets bit PSR.RIF and can
      --  generate a receive interrupt.
      VALUE1,
      --  The received protocol-related argument PAR does not match the
      --  expected value. The reception of the data word sets bit PSR.AIF and
      --  can generate an alternative receive interrupt.
      VALUE2)
     with Size => 1;
   for RBUF01SR_PERR0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Data Valid in RBUF0
   type RBUF01SR_RDV00_Field is
     (
      --  Register RBUF0 does not contain data that has not yet been read out.
      VALUE1,
      --  Register RBUF0 contains data that has not yet been read out.
      VALUE2)
     with Size => 1;
   for RBUF01SR_RDV00_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Data Valid in RBUF1
   type RBUF01SR_RDV01_Field is
     (
      --  Register RBUF1 does not contain data that has not yet been read out.
      VALUE1,
      --  Register RBUF1 contains data that has not yet been read out.
      VALUE2)
     with Size => 1;
   for RBUF01SR_RDV01_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Source
   type RBUF01SR_DS0_Field is
     (
      --  The register RBUF contains the data of RBUF0 (same for associated
      --  status information).
      VALUE1,
      --  The register RBUF contains the data of RBUF1 (same for associated
      --  status information).
      VALUE2)
     with Size => 1;
   for RBUF01SR_DS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype RBUF01SR_WLEN1_Field is HAL.UInt4;

   --  Start of Frame in RBUF1
   type RBUF01SR_SOF1_Field is
     (
      --  The data in RBUF1 has not been the first data word of a data frame.
      VALUE1,
      --  The data in RBUF1 has been the first data word of a data frame.
      VALUE2)
     with Size => 1;
   for RBUF01SR_SOF1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Protocol-related Error in RBUF1
   type RBUF01SR_PERR1_Field is
     (
      --  The received protocol-related argument PAR matches the expected
      --  value. The reception of the data word sets bit PSR.RIF and can
      --  generate a receive interrupt.
      VALUE1,
      --  The received protocol-related argument PAR does not match the
      --  expected value. The reception of the data word sets bit PSR.AIF and
      --  can generate an alternative receive interrupt.
      VALUE2)
     with Size => 1;
   for RBUF01SR_PERR1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Data Valid in RBUF0
   type RBUF01SR_RDV10_Field is
     (
      --  Register RBUF0 does not contain data that has not yet been read out.
      VALUE1,
      --  Register RBUF0 contains data that has not yet been read out.
      VALUE2)
     with Size => 1;
   for RBUF01SR_RDV10_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Data Valid in RBUF1
   type RBUF01SR_RDV11_Field is
     (
      --  Register RBUF1 does not contain data that has not yet been read out.
      VALUE1,
      --  Register RBUF1 contains data that has not yet been read out.
      VALUE2)
     with Size => 1;
   for RBUF01SR_RDV11_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Source
   type RBUF01SR_DS1_Field is
     (
      --  The register RBUF contains the data of RBUF0 (same for associated
      --  status information).
      VALUE1,
      --  The register RBUF contains the data of RBUF1 (same for associated
      --  status information).
      VALUE2)
     with Size => 1;
   for RBUF01SR_DS1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Buffer 01 Status Register
   type RBUF01SR_Register is record
      --  Read-only. Received Data Word Length in RBUF0
      WLEN0          : RBUF01SR_WLEN0_Field;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. Start of Frame in RBUF0
      SOF0           : RBUF01SR_SOF0_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Protocol-Related Argument in RBUF0
      PAR0           : Boolean;
      --  Read-only. Protocol-related Error in RBUF0
      PERR0          : RBUF01SR_PERR0_Field;
      --  unspecified
      Reserved_10_12 : HAL.UInt3;
      --  Read-only. Receive Data Valid in RBUF0
      RDV00          : RBUF01SR_RDV00_Field;
      --  Read-only. Receive Data Valid in RBUF1
      RDV01          : RBUF01SR_RDV01_Field;
      --  Read-only. Data Source
      DS0            : RBUF01SR_DS0_Field;
      --  Read-only. Received Data Word Length in RBUF1
      WLEN1          : RBUF01SR_WLEN1_Field;
      --  unspecified
      Reserved_20_21 : HAL.UInt2;
      --  Read-only. Start of Frame in RBUF1
      SOF1           : RBUF01SR_SOF1_Field;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Protocol-Related Argument in RBUF1
      PAR1           : Boolean;
      --  Read-only. Protocol-related Error in RBUF1
      PERR1          : RBUF01SR_PERR1_Field;
      --  unspecified
      Reserved_26_28 : HAL.UInt3;
      --  Read-only. Receive Data Valid in RBUF0
      RDV10          : RBUF01SR_RDV10_Field;
      --  Read-only. Receive Data Valid in RBUF1
      RDV11          : RBUF01SR_RDV11_Field;
      --  Read-only. Data Source
      DS1            : RBUF01SR_DS1_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBUF01SR_Register use record
      WLEN0          at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SOF0           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PAR0           at 0 range 8 .. 8;
      PERR0          at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      RDV00          at 0 range 13 .. 13;
      RDV01          at 0 range 14 .. 14;
      DS0            at 0 range 15 .. 15;
      WLEN1          at 0 range 16 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      SOF1           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PAR1           at 0 range 24 .. 24;
      PERR1          at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      RDV10          at 0 range 29 .. 29;
      RDV11          at 0 range 30 .. 30;
      DS1            at 0 range 31 .. 31;
   end record;

   --  Modify Transmit Data Valid
   type FMR_MTDV_Field is
     (
      --  No action.
      VALUE1,
      --  Bit TDV is set, TE is unchanged.
      VALUE2,
      --  Bits TDV and TE are cleared.
      VALUE3)
     with Size => 2;
   for FMR_MTDV_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Activate Bit TVC
   type FMR_ATVC_Field is
     (
      --  No action.
      VALUE1,
      --  Bit TCSR.TVC is set.
      VALUE2)
     with Size => 1;
   for FMR_ATVC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Bits RDV for RBUF0
   type FMR_CRDV0_Field is
     (
      --  No action.
      VALUE1,
      --  Bits RBUF01SR.RDV00 and RBUF01SR.RDV10 are cleared.
      VALUE2)
     with Size => 1;
   for FMR_CRDV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Bit RDV for RBUF1
   type FMR_CRDV1_Field is
     (
      --  No action.
      VALUE1,
      --  Bits RBUF01SR.RDV01 and RBUF01SR.RDV11 are cleared.
      VALUE2)
     with Size => 1;
   for FMR_CRDV1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Set Interrupt Output SRx
   type FMR_SIO0_Field is
     (
      --  No action.
      VALUE1,
      --  The service request output SRx is activated.
      VALUE2)
     with Size => 1;
   for FMR_SIO0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FMR_SIO array
   type FMR_SIO_Field_Array is array (0 .. 5) of FMR_SIO0_Field
     with Component_Size => 1, Size => 6;

   --  Type definition for FMR_SIO
   type FMR_SIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SIO as a value
            Val : HAL.UInt6;
         when True =>
            --  SIO as an array
            Arr : FMR_SIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for FMR_SIO_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Flag Modification Register
   type FMR_Register is record
      --  Write-only. Modify Transmit Data Valid
      MTDV           : FMR_MTDV_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Activate Bit TVC
      ATVC           : FMR_ATVC_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_5_13  : HAL.UInt9 := 16#0#;
      --  Write-only. Clear Bits RDV for RBUF0
      CRDV0          : FMR_CRDV0_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Bit RDV for RBUF1
      CRDV1          : FMR_CRDV1_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Set Interrupt Output SRx
      SIO            : FMR_SIO_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMR_Register use record
      MTDV           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ATVC           at 0 range 4 .. 4;
      Reserved_5_13  at 0 range 5 .. 13;
      CRDV0          at 0 range 14 .. 14;
      CRDV1          at 0 range 15 .. 15;
      SIO            at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TBUF_TDATA_Field is HAL.UInt16;

   --  Transmit Buffer
   type TBUF_Register is record
      --  Transmit Data
      TDATA          : TBUF_TDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TBUF_Register use record
      TDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transmit Buffer
   type TBUF_Registers is array (0 .. 31) of TBUF_Register
     with Volatile;

   subtype BYP_BDATA_Field is HAL.UInt16;

   --  Bypass Data Register
   type BYP_Register is record
      --  Bypass Data
      BDATA          : BYP_BDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BYP_Register use record
      BDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BYPCR_BWLE_Field is HAL.UInt4;

   --  Bypass Data Single Shot Mode
   type BYPCR_BDSSM_Field is
     (
      --  The bypass data is still considered as valid after it has been loaded
      --  into TBUF. The loading of the data into TBUF does not clear BDV.
      VALUE1,
      --  The bypass data is considered as invalid after it has been loaded
      --  into TBUF. The loading of the data into TBUF clears BDV.
      VALUE2)
     with Size => 1;
   for BYPCR_BDSSM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Bypass Data Enable
   type BYPCR_BDEN_Field is
     (
      --  The transfer of bypass data is disabled.
      VALUE1,
      --  The transfer of bypass data to TBUF is possible. Bypass data will be
      --  transferred to TBUF according to its priority if BDV = 1.
      VALUE2,
      --  Gated bypass data transfer is enabled. Bypass data will be
      --  transferred to TBUF according to its priority if BDV = 1 and while
      --  DX2S = 0.
      VALUE3,
      --  Gated bypass data transfer is enabled. Bypass data will be
      --  transferred to TBUF according to its priority if BDV = 1 and while
      --  DX2S = 1.
      VALUE4)
     with Size => 2;
   for BYPCR_BDEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Bypass Data Valid Trigger
   type BYPCR_BDVTR_Field is
     (
      --  Bit BDV is not influenced by DX2T.
      VALUE1,
      --  Bit BDV is set if DX2T is active.
      VALUE2)
     with Size => 1;
   for BYPCR_BDVTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Bypass Priority
   type BYPCR_BPRIO_Field is
     (
      --  The transmit FIFO data has a higher priority than the bypass data.
      VALUE1,
      --  The bypass data has a higher priority than the transmit FIFO data.
      VALUE2)
     with Size => 1;
   for BYPCR_BPRIO_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Bypass Data Valid
   type BYPCR_BDV_Field is
     (
      --  The bypass data is not valid.
      VALUE1,
      --  The bypass data is valid.
      VALUE2)
     with Size => 1;
   for BYPCR_BDV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype BYPCR_BSELO_Field is HAL.UInt5;
   subtype BYPCR_BHPC_Field is HAL.UInt3;

   --  Bypass Control Register
   type BYPCR_Register is record
      --  Bypass Word Length
      BWLE           : BYPCR_BWLE_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Bypass Data Single Shot Mode
      BDSSM          : BYPCR_BDSSM_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Bypass Data Enable
      BDEN           : BYPCR_BDEN_Field := NRF_SVD.USIC.VALUE1;
      --  Bypass Data Valid Trigger
      BDVTR          : BYPCR_BDVTR_Field := NRF_SVD.USIC.VALUE1;
      --  Bypass Priority
      BPRIO          : BYPCR_BPRIO_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Read-only. Bypass Data Valid
      BDV            : BYPCR_BDV_Field := NRF_SVD.USIC.VALUE1;
      --  Bypass Select Outputs
      BSELO          : BYPCR_BSELO_Field := 16#0#;
      --  Bypass Hardware Port Control
      BHPC           : BYPCR_BHPC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BYPCR_Register use record
      BWLE           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      BDSSM          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      BDEN           at 0 range 10 .. 11;
      BDVTR          at 0 range 12 .. 12;
      BPRIO          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BDV            at 0 range 15 .. 15;
      BSELO          at 0 range 16 .. 20;
      BHPC           at 0 range 21 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TBCTR_DPTR_Field is HAL.UInt6;
   subtype TBCTR_LIMIT_Field is HAL.UInt6;

   --  Standard Transmit Buffer Trigger Mode
   type TBCTR_STBTM_Field is
     (
      --  Trigger mode 0: While TRBSR.STBT=1, a standard buffer event will be
      --  generated whenever there is a data transfer to TBUF or data write to
      --  INx (depending on TBCTR.LOF setting). STBT is cleared when
      --  TRBSR.TBFLVL=TBCTR.LIMIT.
      VALUE1,
      --  Trigger mode 1: While TRBSR.STBT=1, a standard buffer event will be
      --  generated whenever there is a data transfer to TBUF or data write to
      --  INx (depending on TBCTR.LOF setting). STBT is cleared when
      --  TRBSR.TBFLVL=TBCTR.SIZE.
      VALUE2)
     with Size => 1;
   for TBCTR_STBTM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Transmit Buffer Trigger Enable
   type TBCTR_STBTEN_Field is
     (
      --  The standard transmit buffer event trigger through bit TRBSR.STBT is
      --  disabled.
      VALUE1,
      --  The standard transmit buffer event trigger through bit TRBSR.STBT is
      --  enabled.
      VALUE2)
     with Size => 1;
   for TBCTR_STBTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Transmit Buffer Interrupt Node Pointer
   type TBCTR_STBINP_Field is
     (
      --  Output SR0 becomes activated.
      VALUE1,
      --  Output SR1 becomes activated.
      VALUE2,
      --  Output SR2 becomes activated.
      VALUE3,
      --  Output SR3 becomes activated.
      VALUE4,
      --  Output SR4 becomes activated.
      VALUE5,
      --  Output SR5 becomes activated.
      VALUE6)
     with Size => 3;
   for TBCTR_STBINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  Alternative Transmit Buffer Interrupt Node Pointer
   type TBCTR_ATBINP_Field is
     (
      --  Output SR0 becomes activated.
      VALUE1,
      --  Output SR1 becomes activated.
      VALUE2,
      --  Output SR2 becomes activated.
      VALUE3,
      --  Output SR3 becomes activated.
      VALUE4,
      --  Output SR4 becomes activated.
      VALUE5,
      --  Output SR5 becomes activated.
      VALUE6)
     with Size => 3;
   for TBCTR_ATBINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  Buffer Size
   type TBCTR_SIZE_Field is
     (
      --  The FIFO mechanism is disabled. The buffer does not accept any
      --  request for data.
      VALUE1,
      --  The FIFO buffer contains 2 entries.
      VALUE2,
      --  The FIFO buffer contains 4 entries.
      VALUE3,
      --  The FIFO buffer contains 8 entries.
      VALUE4,
      --  The FIFO buffer contains 16 entries.
      VALUE5,
      --  The FIFO buffer contains 32 entries.
      VALUE6,
      --  The FIFO buffer contains 64 entries.
      VALUE7)
     with Size => 3;
   for TBCTR_SIZE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6);

   --  Buffer Event on Limit Overflow
   type TBCTR_LOF_Field is
     (
      --  A standard transmit buffer event occurs when the filling level equals
      --  the limit value and gets lower due to transmission of a data word.
      VALUE1,
      --  A standard transmit buffer interrupt event occurs when the filling
      --  level equals the limit value and gets bigger due to a write access to
      --  a data input location INx.
      VALUE2)
     with Size => 1;
   for TBCTR_LOF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Transmit Buffer Interrupt Enable
   type TBCTR_STBIEN_Field is
     (
      --  The standard transmit buffer interrupt generation is disabled.
      VALUE1,
      --  The standard transmit buffer interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for TBCTR_STBIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Error Interrupt Enable
   type TBCTR_TBERIEN_Field is
     (
      --  The transmit buffer error interrupt generation is disabled.
      VALUE1,
      --  The transmit buffer error interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for TBCTR_TBERIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmitter Buffer Control Register
   type TBCTR_Register is record
      --  Write-only. Data Pointer
      DPTR           : TBCTR_DPTR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Limit For Interrupt Generation
      LIMIT          : TBCTR_LIMIT_Field := 16#0#;
      --  Standard Transmit Buffer Trigger Mode
      STBTM          : TBCTR_STBTM_Field := NRF_SVD.USIC.VALUE1;
      --  Standard Transmit Buffer Trigger Enable
      STBTEN         : TBCTR_STBTEN_Field := NRF_SVD.USIC.VALUE1;
      --  Standard Transmit Buffer Interrupt Node Pointer
      STBINP         : TBCTR_STBINP_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Transmit Buffer Interrupt Node Pointer
      ATBINP         : TBCTR_ATBINP_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Buffer Size
      SIZE           : TBCTR_SIZE_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Buffer Event on Limit Overflow
      LOF            : TBCTR_LOF_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Standard Transmit Buffer Interrupt Enable
      STBIEN         : TBCTR_STBIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Error Interrupt Enable
      TBERIEN        : TBCTR_TBERIEN_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TBCTR_Register use record
      DPTR           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LIMIT          at 0 range 8 .. 13;
      STBTM          at 0 range 14 .. 14;
      STBTEN         at 0 range 15 .. 15;
      STBINP         at 0 range 16 .. 18;
      ATBINP         at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SIZE           at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      LOF            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      STBIEN         at 0 range 30 .. 30;
      TBERIEN        at 0 range 31 .. 31;
   end record;

   subtype RBCTR_DPTR_Field is HAL.UInt6;
   subtype RBCTR_LIMIT_Field is HAL.UInt6;

   --  Standard Receive Buffer Trigger Mode
   type RBCTR_SRBTM_Field is
     (
      --  Trigger mode 0: While TRBSR.SRBT=1, a standard receive buffer event
      --  will be generated whenever there is a new data received or data read
      --  out (depending on RBCTR.LOF setting). SRBT is cleared when
      --  TRBSR.RBFLVL=RBCTR.LIMIT.
      VALUE1,
      --  Trigger mode 1: While TRBSR.SRBT=1, a standard receive buffer event
      --  will be generated whenever there is a new data received or data read
      --  out (depending on RBCTR.LOF setting). SRBT is cleared when
      --  TRBSR.RBFLVL=0.
      VALUE2)
     with Size => 1;
   for RBCTR_SRBTM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Receive Buffer Trigger Enable
   type RBCTR_SRBTEN_Field is
     (
      --  The standard receive buffer event trigger through bit TRBSR.SRBT is
      --  disabled.
      VALUE1,
      --  The standard receive buffer event trigger through bit TRBSR.SRBT is
      --  enabled.
      VALUE2)
     with Size => 1;
   for RBCTR_SRBTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Receive Buffer Interrupt Node Pointer
   type RBCTR_SRBINP_Field is
     (
      --  Output SR0 becomes activated.
      VALUE1,
      --  Output SR1 becomes activated.
      VALUE2,
      --  Output SR2 becomes activated.
      VALUE3,
      --  Output SR3 becomes activated.
      VALUE4,
      --  Output SR4 becomes activated.
      VALUE5,
      --  Output SR5 becomes activated.
      VALUE6)
     with Size => 3;
   for RBCTR_SRBINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  Alternative Receive Buffer Interrupt Node Pointer
   type RBCTR_ARBINP_Field is
     (
      --  Output SR0 becomes activated.
      VALUE1,
      --  Output SR1 becomes activated.
      VALUE2,
      --  Output SR2 becomes activated.
      VALUE3,
      --  Output SR3 becomes activated.
      VALUE4,
      --  Output SR4 becomes activated.
      VALUE5,
      --  Output SR5 becomes activated.
      VALUE6)
     with Size => 3;
   for RBCTR_ARBINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  Receiver Control Information Mode
   type RBCTR_RCIM_Field is
     (
      --  RCI[4] = PERR, RCI[3:0] = WLEN
      VALUE1,
      --  RCI[4] = SOF, RCI[3:0] = WLEN
      VALUE2,
      --  RCI[4] = 0, RCI[3:0] = WLEN
      VALUE3,
      --  RCI[4] = PERR, RCI[3] = PAR, RCI[2:1] = 00B, RCI[0] = SOF
      VALUE4)
     with Size => 2;
   for RBCTR_RCIM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Buffer Size
   type RBCTR_SIZE_Field is
     (
      --  The FIFO mechanism is disabled. The buffer does not accept any
      --  request for data.
      VALUE1,
      --  The FIFO buffer contains 2 entries.
      VALUE2,
      --  The FIFO buffer contains 4 entries.
      VALUE3,
      --  The FIFO buffer contains 8 entries.
      VALUE4,
      --  The FIFO buffer contains 16 entries.
      VALUE5,
      --  The FIFO buffer contains 32 entries.
      VALUE6,
      --  The FIFO buffer contains 64 entries.
      VALUE7)
     with Size => 3;
   for RBCTR_SIZE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6);

   --  Receiver Notification Mode
   type RBCTR_RNM_Field is
     (
      --  Filling level mode: A standard receive buffer event occurs when the
      --  filling level equals the limit value and changes, either due to a
      --  read access from OUTR (LOF = 0) or due to a new received data word
      --  (LOF = 1).
      VALUE1,
      --  RCI mode: A standard receive buffer event occurs when register OUTR
      --  is updated with a new value if the corresponding value in OUTR.RCI[4]
      --  = 0. If OUTR.RCI[4] = 1, an alternative receive buffer event occurs
      --  instead of the standard receive buffer event.
      VALUE2)
     with Size => 1;
   for RBCTR_RNM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Buffer Event on Limit Overflow
   type RBCTR_LOF_Field is
     (
      --  A standard receive buffer event occurs when the filling level equals
      --  the limit value and gets lower due to a read access from OUTR.
      VALUE1,
      --  A standard receive buffer event occurs when the filling level equals
      --  the limit value and gets bigger due to the reception of a new data
      --  word.
      VALUE2)
     with Size => 1;
   for RBCTR_LOF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Buffer Interrupt Enable
   type RBCTR_ARBIEN_Field is
     (
      --  The alternative receive buffer interrupt generation is disabled.
      VALUE1,
      --  The alternative receive buffer interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for RBCTR_ARBIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Receive Buffer Interrupt Enable
   type RBCTR_SRBIEN_Field is
     (
      --  The standard receive buffer interrupt generation is disabled.
      VALUE1,
      --  The standard receive buffer interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for RBCTR_SRBIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Buffer Error Interrupt Enable
   type RBCTR_RBERIEN_Field is
     (
      --  The receive buffer error interrupt generation is disabled.
      VALUE1,
      --  The receive buffer error interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for RBCTR_RBERIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receiver Buffer Control Register
   type RBCTR_Register is record
      --  Write-only. Data Pointer
      DPTR         : RBCTR_DPTR_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Limit For Interrupt Generation
      LIMIT        : RBCTR_LIMIT_Field := 16#0#;
      --  Standard Receive Buffer Trigger Mode
      SRBTM        : RBCTR_SRBTM_Field := NRF_SVD.USIC.VALUE1;
      --  Standard Receive Buffer Trigger Enable
      SRBTEN       : RBCTR_SRBTEN_Field := NRF_SVD.USIC.VALUE1;
      --  Standard Receive Buffer Interrupt Node Pointer
      SRBINP       : RBCTR_SRBINP_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Buffer Interrupt Node Pointer
      ARBINP       : RBCTR_ARBINP_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Control Information Mode
      RCIM         : RBCTR_RCIM_Field := NRF_SVD.USIC.VALUE1;
      --  Buffer Size
      SIZE         : RBCTR_SIZE_Field := NRF_SVD.USIC.VALUE1;
      --  Receiver Notification Mode
      RNM          : RBCTR_RNM_Field := NRF_SVD.USIC.VALUE1;
      --  Buffer Event on Limit Overflow
      LOF          : RBCTR_LOF_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Buffer Interrupt Enable
      ARBIEN       : RBCTR_ARBIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Standard Receive Buffer Interrupt Enable
      SRBIEN       : RBCTR_SRBIEN_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Buffer Error Interrupt Enable
      RBERIEN      : RBCTR_RBERIEN_Field := NRF_SVD.USIC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBCTR_Register use record
      DPTR         at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      LIMIT        at 0 range 8 .. 13;
      SRBTM        at 0 range 14 .. 14;
      SRBTEN       at 0 range 15 .. 15;
      SRBINP       at 0 range 16 .. 18;
      ARBINP       at 0 range 19 .. 21;
      RCIM         at 0 range 22 .. 23;
      SIZE         at 0 range 24 .. 26;
      RNM          at 0 range 27 .. 27;
      LOF          at 0 range 28 .. 28;
      ARBIEN       at 0 range 29 .. 29;
      SRBIEN       at 0 range 30 .. 30;
      RBERIEN      at 0 range 31 .. 31;
   end record;

   subtype TRBPTR_TDIPTR_Field is HAL.UInt6;
   subtype TRBPTR_TDOPTR_Field is HAL.UInt6;
   subtype TRBPTR_RDIPTR_Field is HAL.UInt6;
   subtype TRBPTR_RDOPTR_Field is HAL.UInt6;

   --  Transmit/Receive Buffer Pointer Register
   type TRBPTR_Register is record
      --  Read-only. Transmitter Data Input Pointer
      TDIPTR         : TRBPTR_TDIPTR_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Transmitter Data Output Pointer
      TDOPTR         : TRBPTR_TDOPTR_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Receiver Data Input Pointer
      RDIPTR         : TRBPTR_RDIPTR_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Receiver Data Output Pointer
      RDOPTR         : TRBPTR_RDOPTR_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRBPTR_Register use record
      TDIPTR         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TDOPTR         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RDIPTR         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RDOPTR         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Standard Receive Buffer Event
   type TRBSR_SRBI_Field is
     (
      --  A standard receive buffer event has not been detected.
      VALUE1,
      --  A standard receive buffer event has been detected.
      VALUE2)
     with Size => 1;
   for TRBSR_SRBI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Buffer Error Event
   type TRBSR_RBERI_Field is
     (
      --  A receive buffer error event has not been detected.
      VALUE1,
      --  A receive buffer error event has been detected.
      VALUE2)
     with Size => 1;
   for TRBSR_RBERI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alternative Receive Buffer Event
   type TRBSR_ARBI_Field is
     (
      --  An alternative receive buffer event has not been detected.
      VALUE1,
      --  An alternative receive buffer event has been detected.
      VALUE2)
     with Size => 1;
   for TRBSR_ARBI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Buffer Empty
   type TRBSR_REMPTY_Field is
     (
      --  The receive buffer is not empty.
      VALUE1,
      --  The receive buffer is empty.
      VALUE2)
     with Size => 1;
   for TRBSR_REMPTY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Buffer Full
   type TRBSR_RFULL_Field is
     (
      --  The receive buffer is not full.
      VALUE1,
      --  The receive buffer is full.
      VALUE2)
     with Size => 1;
   for TRBSR_RFULL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Buffer Busy
   type TRBSR_RBUS_Field is
     (
      --  The receive buffer information has been completely updated.
      VALUE1,
      --  The OUTR update from the FIFO memory is ongoing. A read from OUTR
      --  will be delayed. FIFO pointers from the previous read are not yet
      --  updated.
      VALUE2)
     with Size => 1;
   for TRBSR_RBUS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Receive Buffer Event Trigger
   type TRBSR_SRBT_Field is
     (
      --  A standard receive buffer event is not triggered using this bit.
      VALUE1,
      --  A standard receive buffer event is triggered using this bit.
      VALUE2)
     with Size => 1;
   for TRBSR_SRBT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Transmit Buffer Event
   type TRBSR_STBI_Field is
     (
      --  A standard transmit buffer event has not been detected.
      VALUE1,
      --  A standard transmit buffer event has been detected.
      VALUE2)
     with Size => 1;
   for TRBSR_STBI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Error Event
   type TRBSR_TBERI_Field is
     (
      --  A transmit buffer error event has not been detected.
      VALUE1,
      --  A transmit buffer error event has been detected.
      VALUE2)
     with Size => 1;
   for TRBSR_TBERI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Empty
   type TRBSR_TEMPTY_Field is
     (
      --  The transmit buffer is not empty.
      VALUE1,
      --  The transmit buffer is empty.
      VALUE2)
     with Size => 1;
   for TRBSR_TEMPTY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Full
   type TRBSR_TFULL_Field is
     (
      --  The transmit buffer is not full.
      VALUE1,
      --  The transmit buffer is full.
      VALUE2)
     with Size => 1;
   for TRBSR_TFULL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Buffer Busy
   type TRBSR_TBUS_Field is
     (
      --  The transmit buffer information has been completely updated.
      VALUE1,
      --  The FIFO memory update after write to INx is ongoing. A write to INx
      --  will be delayed. FIFO pointers from the previous INx write are not
      --  yet updated.
      VALUE2)
     with Size => 1;
   for TRBSR_TBUS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Standard Transmit Buffer Event Trigger
   type TRBSR_STBT_Field is
     (
      --  A standard transmit buffer event is not triggered using this bit.
      VALUE1,
      --  A standard transmit buffer event is triggered using this bit.
      VALUE2)
     with Size => 1;
   for TRBSR_STBT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype TRBSR_RBFLVL_Field is HAL.UInt7;
   subtype TRBSR_TBFLVL_Field is HAL.UInt7;

   --  Transmit/Receive Buffer Status Register
   type TRBSR_Register is record
      --  Standard Receive Buffer Event
      SRBI           : TRBSR_SRBI_Field := NRF_SVD.USIC.VALUE1;
      --  Receive Buffer Error Event
      RBERI          : TRBSR_RBERI_Field := NRF_SVD.USIC.VALUE1;
      --  Alternative Receive Buffer Event
      ARBI           : TRBSR_ARBI_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Receive Buffer Empty
      REMPTY         : TRBSR_REMPTY_Field := NRF_SVD.USIC.VALUE2;
      --  Read-only. Receive Buffer Full
      RFULL          : TRBSR_RFULL_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Receive Buffer Busy
      RBUS           : TRBSR_RBUS_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Standard Receive Buffer Event Trigger
      SRBT           : TRBSR_SRBT_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Standard Transmit Buffer Event
      STBI           : TRBSR_STBI_Field := NRF_SVD.USIC.VALUE1;
      --  Transmit Buffer Error Event
      TBERI          : TRBSR_TBERI_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Read-only. Transmit Buffer Empty
      TEMPTY         : TRBSR_TEMPTY_Field := NRF_SVD.USIC.VALUE2;
      --  Read-only. Transmit Buffer Full
      TFULL          : TRBSR_TFULL_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Transmit Buffer Busy
      TBUS           : TRBSR_TBUS_Field := NRF_SVD.USIC.VALUE1;
      --  Read-only. Standard Transmit Buffer Event Trigger
      STBT           : TRBSR_STBT_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. Receive Buffer Filling Level
      RBFLVL         : TRBSR_RBFLVL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Read-only. Transmit Buffer Filling Level
      TBFLVL         : TRBSR_TBFLVL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRBSR_Register use record
      SRBI           at 0 range 0 .. 0;
      RBERI          at 0 range 1 .. 1;
      ARBI           at 0 range 2 .. 2;
      REMPTY         at 0 range 3 .. 3;
      RFULL          at 0 range 4 .. 4;
      RBUS           at 0 range 5 .. 5;
      SRBT           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      STBI           at 0 range 8 .. 8;
      TBERI          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TEMPTY         at 0 range 11 .. 11;
      TFULL          at 0 range 12 .. 12;
      TBUS           at 0 range 13 .. 13;
      STBT           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RBFLVL         at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TBFLVL         at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Clear Standard Receive Buffer Event
   type TRBSCR_CSRBI_Field is
     (
      --  No effect.
      VALUE1,
      --  Clear TRBSR.SRBI.
      VALUE2)
     with Size => 1;
   for TRBSCR_CSRBI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Receive Buffer Error Event
   type TRBSCR_CRBERI_Field is
     (
      --  No effect.
      VALUE1,
      --  Clear TRBSR.RBERI.
      VALUE2)
     with Size => 1;
   for TRBSCR_CRBERI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Alternative Receive Buffer Event
   type TRBSCR_CARBI_Field is
     (
      --  No effect.
      VALUE1,
      --  Clear TRBSR.ARBI.
      VALUE2)
     with Size => 1;
   for TRBSCR_CARBI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Standard Transmit Buffer Event
   type TRBSCR_CSTBI_Field is
     (
      --  No effect.
      VALUE1,
      --  Clear TRBSR.STBI.
      VALUE2)
     with Size => 1;
   for TRBSCR_CSTBI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Transmit Buffer Error Event
   type TRBSCR_CTBERI_Field is
     (
      --  No effect.
      VALUE1,
      --  Clear TRBSR.TBERI.
      VALUE2)
     with Size => 1;
   for TRBSCR_CTBERI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Bypass Data Valid
   type TRBSCR_CBDV_Field is
     (
      --  No effect.
      VALUE1,
      --  Clear BYPCR.BDV.
      VALUE2)
     with Size => 1;
   for TRBSCR_CBDV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Flush Receive Buffer
   type TRBSCR_FLUSHRB_Field is
     (
      --  No effect.
      VALUE1,
      --  The receive FIFO buffer is cleared (filling level is cleared and
      --  output pointer is set to input pointer value). Should only be used
      --  while the FIFO buffer is not taking part in data traffic.
      VALUE2)
     with Size => 1;
   for TRBSCR_FLUSHRB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Flush Transmit Buffer
   type TRBSCR_FLUSHTB_Field is
     (
      --  No effect.
      VALUE1,
      --  The transmit FIFO buffer is cleared (filling level is cleared and
      --  output pointer is set to input pointer value). Should only be used
      --  while the FIFO buffer is not taking part in data traffic.
      VALUE2)
     with Size => 1;
   for TRBSCR_FLUSHTB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit/Receive Buffer Status Clear Register
   type TRBSCR_Register is record
      --  Write-only. Clear Standard Receive Buffer Event
      CSRBI          : TRBSCR_CSRBI_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Receive Buffer Error Event
      CRBERI         : TRBSCR_CRBERI_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Alternative Receive Buffer Event
      CARBI          : TRBSCR_CARBI_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Write-only. Clear Standard Transmit Buffer Event
      CSTBI          : TRBSCR_CSTBI_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Transmit Buffer Error Event
      CTBERI         : TRBSCR_CTBERI_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Clear Bypass Data Valid
      CBDV           : TRBSCR_CBDV_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Write-only. Flush Receive Buffer
      FLUSHRB        : TRBSCR_FLUSHRB_Field := NRF_SVD.USIC.VALUE1;
      --  Write-only. Flush Transmit Buffer
      FLUSHTB        : TRBSCR_FLUSHTB_Field := NRF_SVD.USIC.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRBSCR_Register use record
      CSRBI          at 0 range 0 .. 0;
      CRBERI         at 0 range 1 .. 1;
      CARBI          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CSTBI          at 0 range 8 .. 8;
      CTBERI         at 0 range 9 .. 9;
      CBDV           at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      FLUSHRB        at 0 range 14 .. 14;
      FLUSHTB        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OUTR_DSR_Field is HAL.UInt16;
   subtype OUTR_RCI_Field is HAL.UInt5;

   --  Receiver Buffer Output Register
   type OUTR_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Received Data
      DSR            : OUTR_DSR_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Receiver Control Information
      RCI            : OUTR_RCI_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTR_Register use record
      DSR            at 0 range 0 .. 15;
      RCI            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OUTDR_DSR_Field is HAL.UInt16;
   subtype OUTDR_RCI_Field is HAL.UInt5;

   --  Receiver Buffer Output Register L for Debugger
   type OUTDR_Register is record
      --  Read-only. Data from Shift Register
      DSR            : OUTDR_DSR_Field;
      --  Read-only. Receive Control Information from Shift Register
      RCI            : OUTDR_RCI_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTDR_Register use record
      DSR            at 0 range 0 .. 15;
      RCI            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype IN_TDATA_Field is HAL.UInt16;

   --  Transmit FIFO Buffer
   type IN_Register is record
      --  Write-only. Transmit Data
      TDATA          : IN_TDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_Register use record
      TDATA          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transmit FIFO Buffer
   type IN_Registers is array (0 .. 31) of IN_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Serial Interface Controller 0
   type USIC_Peripheral is record
      --  Module Identification Register
      ID : aliased ID_Register;
   end record
     with Volatile;

   for USIC_Peripheral use record
      ID at 0 range 0 .. 31;
   end record;

   --  Universal Serial Interface Controller 0
   USIC0_Periph : aliased USIC_Peripheral
     with Import, Address => System'To_Address (16#48000008#);

   type USIC_CH_Disc is
     (
      Default,
      Ascmode,
      Sscmode,
      Iicmode,
      Iismode);

   --  Universal Serial Interface Controller 0
   type USIC_Peripheral_1
     (Discriminent : USIC_CH_Disc := Default)
   is record
      --  Channel Configuration Register
      CCFG        : aliased CCFG_Register;
      --  Kernel State Configuration Register
      KSCFG       : aliased KSCFG_Register;
      --  Fractional Divider Register
      FDR         : aliased FDR_Register;
      --  Baud Rate Generator Register
      BRG         : aliased BRG_Register;
      --  Interrupt Node Pointer Register
      INPR        : aliased INPR_Register;
      --  Input Control Register 0
      DX0CR       : aliased DX0CR_Register;
      --  Input Control Register 1
      DX1CR       : aliased DX1CR_Register;
      --  Input Control Register 2
      DX2CR       : aliased DX2CR_Register;
      --  Input Control Register 3
      DX3CR       : aliased DX3CR_Register;
      --  Input Control Register 4
      DX4CR       : aliased DX4CR_Register;
      --  Input Control Register 5
      DX5CR       : aliased DX5CR_Register;
      --  Shift Control Register
      SCTR        : aliased SCTR_Register;
      --  Transmit Control/Status Register
      TCSR        : aliased TCSR_Register;
      --  Channel Control Register
      CCR         : aliased CCR_Register;
      --  Capture Mode Timer Register
      CMTR        : aliased CMTR_Register;
      --  Protocol Status Clear Register
      PSCR        : aliased PSCR_Register;
      --  Receiver Buffer Status Register
      RBUFSR      : aliased RBUFSR_Register;
      --  Receiver Buffer Register
      RBUF        : aliased RBUF_Register;
      --  Receiver Buffer Register for Debugger
      RBUFD       : aliased RBUFD_Register;
      --  Receiver Buffer Register 0
      RBUF0       : aliased RBUF0_Register;
      --  Receiver Buffer Register 1
      RBUF1       : aliased RBUF1_Register;
      --  Receiver Buffer 01 Status Register
      RBUF01SR    : aliased RBUF01SR_Register;
      --  Flag Modification Register
      FMR         : aliased FMR_Register;
      --  Transmit Buffer
      TBUF        : aliased TBUF_Registers;
      --  Bypass Data Register
      BYP         : aliased BYP_Register;
      --  Bypass Control Register
      BYPCR       : aliased BYPCR_Register;
      --  Transmitter Buffer Control Register
      TBCTR       : aliased TBCTR_Register;
      --  Receiver Buffer Control Register
      RBCTR       : aliased RBCTR_Register;
      --  Transmit/Receive Buffer Pointer Register
      TRBPTR      : aliased TRBPTR_Register;
      --  Transmit/Receive Buffer Status Register
      TRBSR       : aliased TRBSR_Register;
      --  Transmit/Receive Buffer Status Clear Register
      TRBSCR      : aliased TRBSCR_Register;
      --  Receiver Buffer Output Register
      OUTR        : aliased OUTR_Register;
      --  Receiver Buffer Output Register L for Debugger
      OUTDR       : aliased OUTDR_Register;
      --  Transmit FIFO Buffer
      IN_k        : aliased IN_Registers;
      case Discriminent is
         when Default =>
            --  Protocol Control Register
            PCR : aliased PCR_Register;
            --  Protocol Status Register
            PSR : aliased PSR_Register;
         when Ascmode =>
            --  Protocol Control Register [ASC Mode]
            PCR_ASCMode : aliased PCR_ASCMode_Register;
            --  Protocol Status Register [ASC Mode]
            PSR_ASCMode : aliased PSR_ASCMode_Register;
         when Sscmode =>
            --  Protocol Control Register [SSC Mode]
            PCR_SSCMode : aliased PCR_SSCMode_Register;
            --  Protocol Status Register [SSC Mode]
            PSR_SSCMode : aliased PSR_SSCMode_Register;
         when Iicmode =>
            --  Protocol Control Register [IIC Mode]
            PCR_IICMode : aliased PCR_IICMode_Register;
            --  Protocol Status Register [IIC Mode]
            PSR_IICMode : aliased PSR_IICMode_Register;
         when Iismode =>
            --  Protocol Control Register [IIS Mode]
            PCR_IISMode : aliased PCR_IISMode_Register;
            --  Protocol Status Register [IIS Mode]
            PSR_IISMode : aliased PSR_IISMode_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USIC_Peripheral_1 use record
      CCFG        at 16#4# range 0 .. 31;
      KSCFG       at 16#C# range 0 .. 31;
      FDR         at 16#10# range 0 .. 31;
      BRG         at 16#14# range 0 .. 31;
      INPR        at 16#18# range 0 .. 31;
      DX0CR       at 16#1C# range 0 .. 31;
      DX1CR       at 16#20# range 0 .. 31;
      DX2CR       at 16#24# range 0 .. 31;
      DX3CR       at 16#28# range 0 .. 31;
      DX4CR       at 16#2C# range 0 .. 31;
      DX5CR       at 16#30# range 0 .. 31;
      SCTR        at 16#34# range 0 .. 31;
      TCSR        at 16#38# range 0 .. 31;
      CCR         at 16#40# range 0 .. 31;
      CMTR        at 16#44# range 0 .. 31;
      PSCR        at 16#4C# range 0 .. 31;
      RBUFSR      at 16#50# range 0 .. 31;
      RBUF        at 16#54# range 0 .. 31;
      RBUFD       at 16#58# range 0 .. 31;
      RBUF0       at 16#5C# range 0 .. 31;
      RBUF1       at 16#60# range 0 .. 31;
      RBUF01SR    at 16#64# range 0 .. 31;
      FMR         at 16#68# range 0 .. 31;
      TBUF        at 16#80# range 0 .. 1023;
      BYP         at 16#100# range 0 .. 31;
      BYPCR       at 16#104# range 0 .. 31;
      TBCTR       at 16#108# range 0 .. 31;
      RBCTR       at 16#10C# range 0 .. 31;
      TRBPTR      at 16#110# range 0 .. 31;
      TRBSR       at 16#114# range 0 .. 31;
      TRBSCR      at 16#118# range 0 .. 31;
      OUTR        at 16#11C# range 0 .. 31;
      OUTDR       at 16#120# range 0 .. 31;
      IN_k        at 16#180# range 0 .. 1023;
      PCR         at 16#3C# range 0 .. 31;
      PSR         at 16#48# range 0 .. 31;
      PCR_ASCMode at 16#3C# range 0 .. 31;
      PSR_ASCMode at 16#48# range 0 .. 31;
      PCR_SSCMode at 16#3C# range 0 .. 31;
      PSR_SSCMode at 16#48# range 0 .. 31;
      PCR_IICMode at 16#3C# range 0 .. 31;
      PSR_IICMode at 16#48# range 0 .. 31;
      PCR_IISMode at 16#3C# range 0 .. 31;
      PSR_IISMode at 16#48# range 0 .. 31;
   end record;

   --  Universal Serial Interface Controller 0
   USIC0_CH0_Periph : aliased USIC_Peripheral
     with Import, Address => System'To_Address (16#48000000#);

   --  Universal Serial Interface Controller 0
   USIC0_CH1_Periph : aliased USIC_Peripheral
     with Import, Address => System'To_Address (16#48000200#);

end NRF_SVD.USIC;
