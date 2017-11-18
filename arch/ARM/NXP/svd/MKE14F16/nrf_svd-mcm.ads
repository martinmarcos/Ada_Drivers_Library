--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Each bit in the ASC field indicates whether there is a corresponding
   --  connection to the crossbar switch's slave input port.
   type PLASC_ASC_Field is
     (
      --  A bus slave connection to AXBS input port n is absent
      Asc_0,
      --  A bus slave connection to AXBS input port n is present
      Asc_1)
     with Size => 8;
   for PLASC_ASC_Field use
     (Asc_0 => 0,
      Asc_1 => 1);

   --  Crossbar Switch (AXBS) Slave Configuration
   type MCM_PLASC_Register is record
      --  Read-only. Each bit in the ASC field indicates whether there is a
      --  corresponding connection to the crossbar switch's slave input port.
      ASC           : PLASC_ASC_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCM_PLASC_Register use record
      ASC           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Each bit in the AMC field indicates whether there is a corresponding
   --  connection to the AXBS master input port.
   type PLAMC_AMC_Field is
     (
      --  A bus master connection to AXBS input port n is absent
      Amc_0,
      --  A bus master connection to AXBS input port n is present
      Amc_1)
     with Size => 8;
   for PLAMC_AMC_Field use
     (Amc_0 => 0,
      Amc_1 => 1);

   --  Crossbar Switch (AXBS) Master Configuration
   type MCM_PLAMC_Register is record
      --  Read-only. Each bit in the AMC field indicates whether there is a
      --  corresponding connection to the AXBS master input port.
      AMC           : PLAMC_AMC_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCM_PLAMC_Register use record
      AMC           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Crossbar round-robin arbitration enable
   type CPCR_CBRR_Field is
     (
      --  Fixed-priority arbitration
      Cbrr_0,
      --  Round-robin arbitration
      Cbrr_1)
     with Size => 1;
   for CPCR_CBRR_Field use
     (Cbrr_0 => 0,
      Cbrr_1 => 1);

   --  SRAM_U arbitration priority
   type CPCR_SRAMUAP_Field is
     (
      --  Round robin
      Sramuap_0,
      --  Special round robin (favors SRAM backdoor accesses over the
      --  processor)
      Sramuap_1,
      --  Fixed priority. Processor has highest, backdoor has lowest
      Sramuap_2,
      --  Fixed priority. Backdoor has highest, processor has lowest
      Sramuap_3)
     with Size => 2;
   for CPCR_SRAMUAP_Field use
     (Sramuap_0 => 0,
      Sramuap_1 => 1,
      Sramuap_2 => 2,
      Sramuap_3 => 3);

   --  SRAM_L arbitration priority
   type CPCR_SRAMLAP_Field is
     (
      --  Round robin
      Sramlap_0,
      --  Special round robin (favors SRAM backdoor accesses over the
      --  processor)
      Sramlap_1,
      --  Fixed priority. Processor has highest, backdoor has lowest
      Sramlap_2,
      --  Fixed priority. Backdoor has highest, processor has lowest
      Sramlap_3)
     with Size => 2;
   for CPCR_SRAMLAP_Field use
     (Sramlap_0 => 0,
      Sramlap_1 => 1,
      Sramlap_2 => 2,
      Sramlap_3 => 3);

   --  Core Platform Control Register
   type MCM_CPCR_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Crossbar round-robin arbitration enable
      CBRR           : CPCR_CBRR_Field := NRF_SVD.MCM.Cbrr_0;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  SRAM_U arbitration priority
      SRAMUAP        : CPCR_SRAMUAP_Field := NRF_SVD.MCM.Sramuap_0;
      --  SRAM_U write protect
      SRAMUWP        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  SRAM_L arbitration priority
      SRAMLAP        : CPCR_SRAMLAP_Field := NRF_SVD.MCM.Sramlap_0;
      --  SRAM_L Write Protect
      SRAMLWP        : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_CPCR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      CBRR           at 0 range 9 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      SRAMUAP        at 0 range 24 .. 25;
      SRAMUWP        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SRAMLAP        at 0 range 28 .. 29;
      SRAMLWP        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Cache write buffer error status
   type ISCR_CWBER_Field is
     (
      --  No error
      Cwber_0,
      --  Error occurred
      Cwber_1)
     with Size => 1;
   for ISCR_CWBER_Field use
     (Cwber_0 => 0,
      Cwber_1 => 1);

   --  FPU invalid operation interrupt status
   type ISCR_FIOC_Field is
     (
      --  No interrupt
      Fioc_0,
      --  Interrupt occurred
      Fioc_1)
     with Size => 1;
   for ISCR_FIOC_Field use
     (Fioc_0 => 0,
      Fioc_1 => 1);

   --  FPU divide-by-zero interrupt status
   type ISCR_FDZC_Field is
     (
      --  No interrupt
      Fdzc_0,
      --  Interrupt occurred
      Fdzc_1)
     with Size => 1;
   for ISCR_FDZC_Field use
     (Fdzc_0 => 0,
      Fdzc_1 => 1);

   --  FPU overflow interrupt status
   type ISCR_FOFC_Field is
     (
      --  No interrupt
      Fofc_0,
      --  Interrupt occurred
      Fofc_1)
     with Size => 1;
   for ISCR_FOFC_Field use
     (Fofc_0 => 0,
      Fofc_1 => 1);

   --  FPU underflow interrupt status
   type ISCR_FUFC_Field is
     (
      --  No interrupt
      Fufc_0,
      --  Interrupt occurred
      Fufc_1)
     with Size => 1;
   for ISCR_FUFC_Field use
     (Fufc_0 => 0,
      Fufc_1 => 1);

   --  FPU inexact interrupt status
   type ISCR_FIXC_Field is
     (
      --  No interrupt
      Fixc_0,
      --  Interrupt occurred
      Fixc_1)
     with Size => 1;
   for ISCR_FIXC_Field use
     (Fixc_0 => 0,
      Fixc_1 => 1);

   --  FPU input denormal interrupt status
   type ISCR_FIDC_Field is
     (
      --  No interrupt
      Fidc_0,
      --  Interrupt occurred
      Fidc_1)
     with Size => 1;
   for ISCR_FIDC_Field use
     (Fidc_0 => 0,
      Fidc_1 => 1);

   --  Cache write buffer error enable
   type ISCR_CWBEE_Field is
     (
      --  Disable error interrupt
      Cwbee_0,
      --  Enable error interrupt
      Cwbee_1)
     with Size => 1;
   for ISCR_CWBEE_Field use
     (Cwbee_0 => 0,
      Cwbee_1 => 1);

   --  FPU invalid operation interrupt enable
   type ISCR_FIOCE_Field is
     (
      --  Disable interrupt
      Fioce_0,
      --  Enable interrupt
      Fioce_1)
     with Size => 1;
   for ISCR_FIOCE_Field use
     (Fioce_0 => 0,
      Fioce_1 => 1);

   --  FPU divide-by-zero interrupt enable
   type ISCR_FDZCE_Field is
     (
      --  Disable interrupt
      Fdzce_0,
      --  Enable interrupt
      Fdzce_1)
     with Size => 1;
   for ISCR_FDZCE_Field use
     (Fdzce_0 => 0,
      Fdzce_1 => 1);

   --  FPU overflow interrupt enable
   type ISCR_FOFCE_Field is
     (
      --  Disable interrupt
      Fofce_0,
      --  Enable interrupt
      Fofce_1)
     with Size => 1;
   for ISCR_FOFCE_Field use
     (Fofce_0 => 0,
      Fofce_1 => 1);

   --  FPU underflow interrupt enable
   type ISCR_FUFCE_Field is
     (
      --  Disable interrupt
      Fufce_0,
      --  Enable interrupt
      Fufce_1)
     with Size => 1;
   for ISCR_FUFCE_Field use
     (Fufce_0 => 0,
      Fufce_1 => 1);

   --  FPU inexact interrupt enable
   type ISCR_FIXCE_Field is
     (
      --  Disable interrupt
      Fixce_0,
      --  Enable interrupt
      Fixce_1)
     with Size => 1;
   for ISCR_FIXCE_Field use
     (Fixce_0 => 0,
      Fixce_1 => 1);

   --  FPU input denormal interrupt enable
   type ISCR_FIDCE_Field is
     (
      --  Disable interrupt
      Fidce_0,
      --  Enable interrupt
      Fidce_1)
     with Size => 1;
   for ISCR_FIDCE_Field use
     (Fidce_0 => 0,
      Fidce_1 => 1);

   --  Interrupt Status and Control Register
   type MCM_ISCR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Cache write buffer error status
      CWBER          : ISCR_CWBER_Field := NRF_SVD.MCM.Cwber_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Read-only. FPU invalid operation interrupt status
      FIOC           : ISCR_FIOC_Field := NRF_SVD.MCM.Fioc_0;
      --  Read-only. FPU divide-by-zero interrupt status
      FDZC           : ISCR_FDZC_Field := NRF_SVD.MCM.Fdzc_0;
      --  Read-only. FPU overflow interrupt status
      FOFC           : ISCR_FOFC_Field := NRF_SVD.MCM.Fofc_0;
      --  Read-only. FPU underflow interrupt status
      FUFC           : ISCR_FUFC_Field := NRF_SVD.MCM.Fufc_0;
      --  Read-only. FPU inexact interrupt status
      FIXC           : ISCR_FIXC_Field := NRF_SVD.MCM.Fixc_0;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Read-only. FPU input denormal interrupt status
      FIDC           : ISCR_FIDC_Field := NRF_SVD.MCM.Fidc_0;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Cache write buffer error enable
      CWBEE          : ISCR_CWBEE_Field := NRF_SVD.MCM.Cwbee_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  FPU invalid operation interrupt enable
      FIOCE          : ISCR_FIOCE_Field := NRF_SVD.MCM.Fioce_0;
      --  FPU divide-by-zero interrupt enable
      FDZCE          : ISCR_FDZCE_Field := NRF_SVD.MCM.Fdzce_0;
      --  FPU overflow interrupt enable
      FOFCE          : ISCR_FOFCE_Field := NRF_SVD.MCM.Fofce_0;
      --  FPU underflow interrupt enable
      FUFCE          : ISCR_FUFCE_Field := NRF_SVD.MCM.Fufce_0;
      --  FPU inexact interrupt enable
      FIXCE          : ISCR_FIXCE_Field := NRF_SVD.MCM.Fixce_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  FPU input denormal interrupt enable
      FIDCE          : ISCR_FIDCE_Field := NRF_SVD.MCM.Fidce_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_ISCR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      CWBER          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FIOC           at 0 range 8 .. 8;
      FDZC           at 0 range 9 .. 9;
      FOFC           at 0 range 10 .. 10;
      FUFC           at 0 range 11 .. 11;
      FIXC           at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FIDC           at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      CWBEE          at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FIOCE          at 0 range 24 .. 24;
      FDZCE          at 0 range 25 .. 25;
      FOFCE          at 0 range 26 .. 26;
      FUFCE          at 0 range 27 .. 27;
      FIXCE          at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FIDCE          at 0 range 31 .. 31;
   end record;

   --  Bus Error Data Access type
   type FATR_BEDA_Field is
     (
      --  Instruction
      Beda_0,
      --  Data
      Beda_1)
     with Size => 1;
   for FATR_BEDA_Field use
     (Beda_0 => 0,
      Beda_1 => 1);

   --  Bus error privilege level
   type FATR_BEMD_Field is
     (
      --  User mode
      Bemd_0,
      --  Supervisor/privileged mode
      Bemd_1)
     with Size => 1;
   for FATR_BEMD_Field use
     (Bemd_0 => 0,
      Bemd_1 => 1);

   --  Bus error size
   type FATR_BESZ_Field is
     (
      --  8-bit access
      Besz_0,
      --  16-bit access
      Besz_1,
      --  32-bit access
      Besz_2)
     with Size => 2;
   for FATR_BESZ_Field use
     (Besz_0 => 0,
      Besz_1 => 1,
      Besz_2 => 2);

   --  Bus error write
   type FATR_BEWT_Field is
     (
      --  Read access
      Bewt_0,
      --  Write access
      Bewt_1)
     with Size => 1;
   for FATR_BEWT_Field use
     (Bewt_0 => 0,
      Bewt_1 => 1);

   subtype MCM_FATR_BEMN_Field is HAL.UInt4;

   --  Bus error overrun
   type FATR_BEOVR_Field is
     (
      --  No bus error overrun
      Beovr_0,
      --  Bus error overrun occurred. The FADR and FDR registers and the other
      --  FATR bits are not updated to reflect this new bus error.
      Beovr_1)
     with Size => 1;
   for FATR_BEOVR_Field use
     (Beovr_0 => 0,
      Beovr_1 => 1);

   --  Store Buffer Fault Attributes register
   type MCM_FATR_Register is record
      --  Read-only. Bus Error Data Access type
      BEDA           : FATR_BEDA_Field;
      --  Read-only. Bus error privilege level
      BEMD           : FATR_BEMD_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Bus error size
      BESZ           : FATR_BESZ_Field;
      --  unspecified
      Reserved_6_6   : HAL.Bit;
      --  Read-only. Bus error write
      BEWT           : FATR_BEWT_Field;
      --  Read-only. Bus error master number
      BEMN           : MCM_FATR_BEMN_Field;
      --  unspecified
      Reserved_12_30 : HAL.UInt19;
      --  Read-only. Bus error overrun
      BEOVR          : FATR_BEOVR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_FATR_Register use record
      BEDA           at 0 range 0 .. 0;
      BEMD           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BESZ           at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      BEWT           at 0 range 7 .. 7;
      BEMN           at 0 range 8 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      BEOVR          at 0 range 31 .. 31;
   end record;

   subtype MCM_PID_PID_Field is HAL.UInt8;

   --  Process ID register
   type MCM_PID_Register is record
      --  M0_PID And M1_PID For MPU
      PID           : MCM_PID_PID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_PID_Register use record
      PID           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Compute Operation request
   type CPO_CPOREQ_Field is
     (
      --  Request is cleared.
      Cporeq_0,
      --  Request Compute Operation.
      Cporeq_1)
     with Size => 1;
   for CPO_CPOREQ_Field use
     (Cporeq_0 => 0,
      Cporeq_1 => 1);

   --  Compute Operation acknowledge
   type CPO_CPOACK_Field is
     (
      --  Compute operation entry has not completed or compute operation exit
      --  has completed.
      Cpoack_0,
      --  Compute operation entry has completed or compute operation exit has
      --  not completed.
      Cpoack_1)
     with Size => 1;
   for CPO_CPOACK_Field use
     (Cpoack_0 => 0,
      Cpoack_1 => 1);

   --  Compute Operation wakeup on interrupt
   type CPO_CPOWOI_Field is
     (
      --  No effect.
      Cpowoi_0,
      --  When set, the CPOREQ is cleared on any interrupt or exception vector
      --  fetch.
      Cpowoi_1)
     with Size => 1;
   for CPO_CPOWOI_Field use
     (Cpowoi_0 => 0,
      Cpowoi_1 => 1);

   --  Compute Operation Control Register
   type MCM_CPO_Register is record
      --  Compute Operation request
      CPOREQ        : CPO_CPOREQ_Field := NRF_SVD.MCM.Cporeq_0;
      --  Read-only. Compute Operation acknowledge
      CPOACK        : CPO_CPOACK_Field := NRF_SVD.MCM.Cpoack_0;
      --  Compute Operation wakeup on interrupt
      CPOWOI        : CPO_CPOWOI_Field := NRF_SVD.MCM.Cpowoi_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_CPO_Register use record
      CPOREQ        at 0 range 0 .. 0;
      CPOACK        at 0 range 1 .. 1;
      CPOWOI        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  MCM_LMDR_CF array element
   subtype MCM_LMDR_CF_Element is HAL.UInt4;

   --  MCM_LMDR_CF array
   type MCM_LMDR_CF_Field_Array is array (0 .. 1) of MCM_LMDR_CF_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for MCM_LMDR_CF
   type MCM_LMDR_CF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CF as a value
            Val : HAL.UInt8;
         when True =>
            --  CF as an array
            Arr : MCM_LMDR_CF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for MCM_LMDR_CF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Memory Type
   type LMDR_MT_Field is
     (
      --  SRAM_L
      Mt_0,
      --  SRAM_U
      Mt_1,
      --  PC Cache
      Mt_2,
      --  PS Cache
      Mt_3)
     with Size => 3;
   for LMDR_MT_Field use
     (Mt_0 => 0,
      Mt_1 => 1,
      Mt_2 => 2,
      Mt_3 => 3);

   --  (??TBD?? current content from "MSCM OCMEM Configuration Register
   --  Descriptions")
   type LMDR_RO_Field is
     (
      --  (??TBD?? current content from "MSCM OCMEM Configuration Register
      --  Descriptions"). Writes to the LMDRn[7:0] are allowed.
      Ro_0,
      --  (??TBD?? current content from "MSCM OCMEM Configuration Register
      --  Descriptions"). Writes to the LMDRn[7:0] are ignored.
      Ro_1)
     with Size => 1;
   for LMDR_RO_Field use
     (Ro_0 => 0,
      Ro_1 => 1);

   --  LMEM Data Path Width. This read-only field defines the width of the
   --  local memory.
   type LMDR_DPW_Field is
     (
      --  Reset value for the field
      Lmdr_Dpw_Field_Reset,
      --  LMEMn 32-bits wide
      Dpw_2,
      --  LMEMn 64-bits wide
      Dpw_3)
     with Size => 3;
   for LMDR_DPW_Field use
     (Lmdr_Dpw_Field_Reset => 0,
      Dpw_2 => 2,
      Dpw_3 => 3);

   --  Level 1 Cache Ways
   type LMDR_WY_Field is
     (
      --  No Cache
      Wy_0,
      --  2-Way Set Associative
      Wy_2,
      --  4-Way Set Associative
      Wy_4)
     with Size => 4;
   for LMDR_WY_Field use
     (Wy_0 => 0,
      Wy_2 => 2,
      Wy_4 => 4);

   --  (??TBD?? current content from "MSCM OCMEM Configuration Register
   --  Descriptions")
   type LMDR_LMSZ_Field is
     (
      --  no LMEMn (0 KB)
      Lmsz_0,
      --  1 KB LMEMn
      Lmsz_1,
      --  2 KB LMEMn
      Lmsz_2,
      --  4 KB LMEMn
      Lmsz_3,
      --  8 KB LMEMn
      Lmsz_4,
      --  16 KB LMEMn
      Lmsz_5,
      --  32 KB LMEMn
      Lmsz_6,
      --  64 KB LMEMn
      Lmsz_7,
      --  128 KB LMEMn
      Lmsz_8,
      --  256 KB LMEMn
      Lmsz_9,
      --  512 KB LMEMn
      Lmsz_10,
      --  1024 KB LMEMn
      Lmsz_11,
      --  2048 KB LMEMn
      Lmsz_12,
      --  4096 KB LMEMn
      Lmsz_13,
      --  8192 KB LMEMn
      Lmsz_14,
      --  16384 KB LMEMn
      Lmsz_15)
     with Size => 4;
   for LMDR_LMSZ_Field use
     (Lmsz_0 => 0,
      Lmsz_1 => 1,
      Lmsz_2 => 2,
      Lmsz_3 => 3,
      Lmsz_4 => 4,
      Lmsz_5 => 5,
      Lmsz_6 => 6,
      Lmsz_7 => 7,
      Lmsz_8 => 8,
      Lmsz_9 => 9,
      Lmsz_10 => 10,
      Lmsz_11 => 11,
      Lmsz_12 => 12,
      Lmsz_13 => 13,
      Lmsz_14 => 14,
      Lmsz_15 => 15);

   --  (??TBD?? current content from "MSCM OCMEM Configuration Register
   --  Descriptions")
   type LMDR_LMSZH_Field is
     (
      --  LMEMn is a power-of-2 capacity.
      Lmszh_0,
      --  LMEMn is not a power-of-2, with a capacity is 0.75 * LMSZ.
      Lmszh_1)
     with Size => 1;
   for LMDR_LMSZH_Field use
     (Lmszh_0 => 0,
      Lmszh_1 => 1);

   --  Local memory Valid bit. This read-only field defines the validity
   --  (presence) of the local memory.
   type LMDR_V_Field is
     (
      --  (??TBD?? current content from "MSCM OCMEM Configuration Register
      --  Descriptions"). LMEMn is not present.
      V_0,
      --  (??TBD?? current content from "MSCM OCMEM Configuration Register
      --  Descriptions"). LMEMn is present.
      V_1)
     with Size => 1;
   for LMDR_V_Field use
     (V_0 => 0,
      V_1 => 1);

   --  Local Memory Descriptor Register
   type MCM_LMDR_Register is record
      --  Control Field 0
      CF             : MCM_LMDR_CF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Read-only. Memory Type
      MT             : LMDR_MT_Field := NRF_SVD.MCM.Mt_0;
      --  Read-only. (??TBD?? current content from "MSCM OCMEM Configuration
      --  Register Descriptions")
      RO             : LMDR_RO_Field := NRF_SVD.MCM.Ro_0;
      --  Read-only. LMEM Data Path Width. This read-only field defines the
      --  width of the local memory.
      DPW            : LMDR_DPW_Field := Lmdr_Dpw_Field_Reset;
      --  Read-only. Level 1 Cache Ways
      WY             : LMDR_WY_Field := NRF_SVD.MCM.Wy_0;
      --  Read-only. (??TBD?? current content from "MSCM OCMEM Configuration
      --  Register Descriptions")
      LMSZ           : LMDR_LMSZ_Field := NRF_SVD.MCM.Lmsz_0;
      --  Read-only. (??TBD?? current content from "MSCM OCMEM Configuration
      --  Register Descriptions")
      LMSZH          : LMDR_LMSZH_Field := NRF_SVD.MCM.Lmszh_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Read-only. Local memory Valid bit. This read-only field defines the
      --  validity (presence) of the local memory.
      V              : LMDR_V_Field := NRF_SVD.MCM.V_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_LMDR_Register use record
      CF             at 0 range 0 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      MT             at 0 range 13 .. 15;
      RO             at 0 range 16 .. 16;
      DPW            at 0 range 17 .. 19;
      WY             at 0 range 20 .. 23;
      LMSZ           at 0 range 24 .. 27;
      LMSZH          at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      V              at 0 range 31 .. 31;
   end record;

   --  Local Memory Descriptor Register
   type MCM_LMDR_Registers is array (0 .. 2) of MCM_LMDR_Register
     with Volatile;

   --  Enable RAM ECC Noncorrectable Reporting
   type LMPECR_ERNCR_Field is
     (
      --  reporting disabled
      Erncr_0,
      --  reporting enabled
      Erncr_1)
     with Size => 1;
   for LMPECR_ERNCR_Field use
     (Erncr_0 => 0,
      Erncr_1 => 1);

   --  Enable RAM ECC 1 Bit Reporting
   type LMPECR_ER1BR_Field is
     (
      --  reporting disabled
      Er1Br_0,
      --  reporting enabled
      Er1Br_1)
     with Size => 1;
   for LMPECR_ER1BR_Field use
     (Er1Br_0 => 0,
      Er1Br_1 => 1);

   --  Enable RAM Parity Reporting
   type LMPECR_ERPR_Field is
     (
      --  reporting disabled
      Erpr_0,
      --  reporting enabled
      Erpr_1)
     with Size => 1;
   for LMPECR_ERPR_Field use
     (Erpr_0 => 0,
      Erpr_1 => 1);

   --  Enable Cache Parity Reporting
   type LMPECR_ECPR_Field is
     (
      --  reporting disabled
      Ecpr_0,
      --  reporting enabled
      Ecpr_1)
     with Size => 1;
   for LMPECR_ECPR_Field use
     (Ecpr_0 => 0,
      Ecpr_1 => 1);

   --  LMEM Parity & ECC Control Register
   type MCM_LMPECR_Register is record
      --  Enable RAM ECC Noncorrectable Reporting
      ERNCR          : LMPECR_ERNCR_Field := NRF_SVD.MCM.Erncr_0;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Enable RAM ECC 1 Bit Reporting
      ER1BR          : LMPECR_ER1BR_Field := NRF_SVD.MCM.Er1Br_0;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Enable RAM Parity Reporting
      ERPR           : LMPECR_ERPR_Field := NRF_SVD.MCM.Erpr_0;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Enable Cache Parity Reporting
      ECPR           : LMPECR_ECPR_Field := NRF_SVD.MCM.Ecpr_0;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_LMPECR_Register use record
      ERNCR          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ER1BR          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      ERPR           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      ECPR           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype MCM_LMPEIR_ENC_Field is HAL.UInt8;
   subtype MCM_LMPEIR_E1B_Field is HAL.UInt8;
   subtype MCM_LMPEIR_PE_Field is HAL.UInt8;
   subtype MCM_LMPEIR_PEELOC_Field is HAL.UInt5;

   --  LMEM Parity & ECC Interrupt Register
   type MCM_LMPEIR_Register is record
      --  ENCn = ECC Noncorrectable Error n
      ENC            : MCM_LMPEIR_ENC_Field := 16#0#;
      --  E1Bn = ECC 1-bit Error n
      E1B            : MCM_LMPEIR_E1B_Field := 16#0#;
      --  Parity Error
      PE             : MCM_LMPEIR_PE_Field := 16#0#;
      --  Parity or ECC Error Location 5'h00 - a non-correctable ECC event from
      --  SRAM_L 5'h01 - a non-correctable ECC event from SRAM_U 5'h08 - a
      --  1-bit correctable ECC event from SRAM_L 5'h09 - a 1-bit correctable
      --  ECC event from SRAM_U 5'h14 - a PC Tag Parity Error 5'h15 - a PC Data
      --  Parity Error
      PEELOC         : MCM_LMPEIR_PEELOC_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Read-only. Valid bit
      V              : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_LMPEIR_Register use record
      ENC            at 0 range 0 .. 7;
      E1B            at 0 range 8 .. 15;
      PE             at 0 range 16 .. 23;
      PEELOC         at 0 range 24 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      V              at 0 range 31 .. 31;
   end record;

   subtype MCM_LMFATR_PEFPRT_Field is HAL.UInt4;
   subtype MCM_LMFATR_PEFSIZE_Field is HAL.UInt3;
   subtype MCM_LMFATR_PEFMST_Field is HAL.UInt8;

   --  LMEM Fault Attribute Register
   type MCM_LMFATR_Register is record
      --  Parity/ECC Fault Protection FATR[3] is Cacheable: 0=Non-cacheable,
      --  1=Cacheable FATR[2] is Bufferable: 0=Non-bufferable, 1=Bufferable
      --  FATR[1] is Mode: 0=User mode, 1=Supervisor mode FATR[0] is Type:
      --  0=I-Fetch, 1=Data
      PEFPRT         : MCM_LMFATR_PEFPRT_Field := 16#0#;
      --  Parity/ECC Fault Master Size 3'b000 = 8-bit access 3'b001 = 16-bit
      --  access 3'b010 = 32-bit access 3'b011 = 64-bit access 3'b1xx =
      --  Reserved
      PEFSIZE        : MCM_LMFATR_PEFSIZE_Field := 16#0#;
      --  Read-only. Parity/ECC Fault Write
      PEFW           : Boolean := False;
      --  Read-only. Parity/ECC Fault Master Number
      PEFMST         : MCM_LMFATR_PEFMST_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Read-only. Overrun
      OVR            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_LMFATR_Register use record
      PEFPRT         at 0 range 0 .. 3;
      PEFSIZE        at 0 range 4 .. 6;
      PEFW           at 0 range 7 .. 7;
      PEFMST         at 0 range 8 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      OVR            at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Core Platform Miscellaneous Control Module
   type MCM_Peripheral is record
      --  Crossbar Switch (AXBS) Slave Configuration
      PLASC  : aliased MCM_PLASC_Register;
      --  Crossbar Switch (AXBS) Master Configuration
      PLAMC  : aliased MCM_PLAMC_Register;
      --  Core Platform Control Register
      CPCR   : aliased MCM_CPCR_Register;
      --  Interrupt Status and Control Register
      ISCR   : aliased MCM_ISCR_Register;
      --  Store Buffer Fault address register
      FADR   : aliased HAL.UInt32;
      --  Store Buffer Fault Attributes register
      FATR   : aliased MCM_FATR_Register;
      --  Store Buffer Fault Data Register
      FDR    : aliased HAL.UInt32;
      --  Process ID register
      PID    : aliased MCM_PID_Register;
      --  Compute Operation Control Register
      CPO    : aliased MCM_CPO_Register;
      --  Local Memory Descriptor Register
      LMDR   : aliased MCM_LMDR_Registers;
      --  LMEM Parity & ECC Control Register
      LMPECR : aliased MCM_LMPECR_Register;
      --  LMEM Parity & ECC Interrupt Register
      LMPEIR : aliased MCM_LMPEIR_Register;
      --  LMEM Fault Address Register
      LMFAR  : aliased HAL.UInt32;
      --  LMEM Fault Attribute Register
      LMFATR : aliased MCM_LMFATR_Register;
      --  LMEM Fault Data High Register
      LMFDHR : aliased HAL.UInt32;
      --  LMEM Fault Data Low Register
      LMFDLR : aliased HAL.UInt32;
   end record
     with Volatile;

   for MCM_Peripheral use record
      PLASC  at 16#8# range 0 .. 15;
      PLAMC  at 16#A# range 0 .. 15;
      CPCR   at 16#C# range 0 .. 31;
      ISCR   at 16#10# range 0 .. 31;
      FADR   at 16#20# range 0 .. 31;
      FATR   at 16#24# range 0 .. 31;
      FDR    at 16#28# range 0 .. 31;
      PID    at 16#30# range 0 .. 31;
      CPO    at 16#40# range 0 .. 31;
      LMDR   at 16#400# range 0 .. 95;
      LMPECR at 16#480# range 0 .. 31;
      LMPEIR at 16#488# range 0 .. 31;
      LMFAR  at 16#490# range 0 .. 31;
      LMFATR at 16#494# range 0 .. 31;
      LMFDHR at 16#4A0# range 0 .. 31;
      LMFDLR at 16#4A4# range 0 .. 31;
   end record;

   --  Core Platform Miscellaneous Control Module
   MCM_Periph : aliased MCM_Peripheral
     with Import, Address => System'To_Address (16#E0080000#);

end NRF_SVD.MCM;
