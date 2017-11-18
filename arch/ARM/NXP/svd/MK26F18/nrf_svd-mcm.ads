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

--  This spec has been automatically generated from MK26F18.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Core Platform Miscellaneous Control Module
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
      PLASC_ASC_Field_0,
      --  A bus slave connection to AXBS input port n is present
      PLASC_ASC_Field_1)
     with Size => 8;
   for PLASC_ASC_Field use
     (PLASC_ASC_Field_0 => 0,
      PLASC_ASC_Field_1 => 1);

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
      PLAMC_AMC_Field_0,
      --  A bus master connection to AXBS input port n is present
      PLAMC_AMC_Field_1)
     with Size => 8;
   for PLAMC_AMC_Field use
     (PLAMC_AMC_Field_0 => 0,
      PLAMC_AMC_Field_1 => 1);

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

   --  SRAM_U arbitration priority
   type CR_SRAMUAP_Field is
     (
      --  Round robin
      CR_SRAMUAP_Field_00,
      --  Special round robin (favors SRAM backoor accesses over the processor)
      CR_SRAMUAP_Field_01,
      --  Fixed priority. Processor has highest, backdoor has lowest
      CR_SRAMUAP_Field_10,
      --  Fixed priority. Backdoor has highest, processor has lowest
      CR_SRAMUAP_Field_11)
     with Size => 2;
   for CR_SRAMUAP_Field use
     (CR_SRAMUAP_Field_00 => 0,
      CR_SRAMUAP_Field_01 => 1,
      CR_SRAMUAP_Field_10 => 2,
      CR_SRAMUAP_Field_11 => 3);

   --  SRAM_L arbitration priority
   type CR_SRAMLAP_Field is
     (
      --  Round robin
      CR_SRAMLAP_Field_00,
      --  Special round robin (favors SRAM backoor accesses over the processor)
      CR_SRAMLAP_Field_01,
      --  Fixed priority. Processor has highest, backdoor has lowest
      CR_SRAMLAP_Field_10,
      --  Fixed priority. Backdoor has highest, processor has lowest
      CR_SRAMLAP_Field_11)
     with Size => 2;
   for CR_SRAMLAP_Field use
     (CR_SRAMLAP_Field_00 => 0,
      CR_SRAMLAP_Field_01 => 1,
      CR_SRAMLAP_Field_10 => 2,
      CR_SRAMLAP_Field_11 => 3);

   --  Control Register
   type MCM_CR_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  SRAM_U arbitration priority
      SRAMUAP        : CR_SRAMUAP_Field := NRF_SVD.MCM.CR_SRAMUAP_Field_00;
      --  SRAM_U write protect
      SRAMUWP        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  SRAM_L arbitration priority
      SRAMLAP        : CR_SRAMLAP_Field := NRF_SVD.MCM.CR_SRAMLAP_Field_00;
      --  SRAM_L Write Protect
      SRAMLWP        : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_CR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      SRAMUAP        at 0 range 24 .. 25;
      SRAMUWP        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SRAMLAP        at 0 range 28 .. 29;
      SRAMLWP        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Normal Interrupt Pending
   type ISCR_IRQ_Field is
     (
      --  No pending interrupt
      ISCR_IRQ_Field_0,
      --  Due to the ETB counter expiring, a normal interrupt is pending
      ISCR_IRQ_Field_1)
     with Size => 1;
   for ISCR_IRQ_Field use
     (ISCR_IRQ_Field_0 => 0,
      ISCR_IRQ_Field_1 => 1);

   --  Non-maskable Interrupt Pending
   type ISCR_NMI_Field is
     (
      --  No pending NMI
      ISCR_NMI_Field_0,
      --  Due to the ETB counter expiring, an NMI is pending
      ISCR_NMI_Field_1)
     with Size => 1;
   for ISCR_NMI_Field use
     (ISCR_NMI_Field_0 => 0,
      ISCR_NMI_Field_1 => 1);

   --  Debug Halt Request Indicator
   type ISCR_DHREQ_Field is
     (
      --  No debug halt request
      ISCR_DHREQ_Field_0,
      --  Debug halt request initiated
      ISCR_DHREQ_Field_1)
     with Size => 1;
   for ISCR_DHREQ_Field use
     (ISCR_DHREQ_Field_0 => 0,
      ISCR_DHREQ_Field_1 => 1);

   --  FPU invalid operation interrupt status
   type ISCR_FIOC_Field is
     (
      --  No interrupt
      ISCR_FIOC_Field_0,
      --  Interrupt occurred
      ISCR_FIOC_Field_1)
     with Size => 1;
   for ISCR_FIOC_Field use
     (ISCR_FIOC_Field_0 => 0,
      ISCR_FIOC_Field_1 => 1);

   --  FPU divide-by-zero interrupt status
   type ISCR_FDZC_Field is
     (
      --  No interrupt
      ISCR_FDZC_Field_0,
      --  Interrupt occurred
      ISCR_FDZC_Field_1)
     with Size => 1;
   for ISCR_FDZC_Field use
     (ISCR_FDZC_Field_0 => 0,
      ISCR_FDZC_Field_1 => 1);

   --  FPU overflow interrupt status
   type ISCR_FOFC_Field is
     (
      --  No interrupt
      ISCR_FOFC_Field_0,
      --  Interrupt occurred
      ISCR_FOFC_Field_1)
     with Size => 1;
   for ISCR_FOFC_Field use
     (ISCR_FOFC_Field_0 => 0,
      ISCR_FOFC_Field_1 => 1);

   --  FPU underflow interrupt status
   type ISCR_FUFC_Field is
     (
      --  No interrupt
      ISCR_FUFC_Field_0,
      --  Interrupt occurred
      ISCR_FUFC_Field_1)
     with Size => 1;
   for ISCR_FUFC_Field use
     (ISCR_FUFC_Field_0 => 0,
      ISCR_FUFC_Field_1 => 1);

   --  FPU inexact interrupt status
   type ISCR_FIXC_Field is
     (
      --  No interrupt
      ISCR_FIXC_Field_0,
      --  Interrupt occurred
      ISCR_FIXC_Field_1)
     with Size => 1;
   for ISCR_FIXC_Field use
     (ISCR_FIXC_Field_0 => 0,
      ISCR_FIXC_Field_1 => 1);

   --  FPU input denormal interrupt status
   type ISCR_FIDC_Field is
     (
      --  No interrupt
      ISCR_FIDC_Field_0,
      --  Interrupt occurred
      ISCR_FIDC_Field_1)
     with Size => 1;
   for ISCR_FIDC_Field use
     (ISCR_FIDC_Field_0 => 0,
      ISCR_FIDC_Field_1 => 1);

   --  FPU invalid operation interrupt enable
   type ISCR_FIOCE_Field is
     (
      --  Disable interrupt
      ISCR_FIOCE_Field_0,
      --  Enable interrupt
      ISCR_FIOCE_Field_1)
     with Size => 1;
   for ISCR_FIOCE_Field use
     (ISCR_FIOCE_Field_0 => 0,
      ISCR_FIOCE_Field_1 => 1);

   --  FPU divide-by-zero interrupt enable
   type ISCR_FDZCE_Field is
     (
      --  Disable interrupt
      ISCR_FDZCE_Field_0,
      --  Enable interrupt
      ISCR_FDZCE_Field_1)
     with Size => 1;
   for ISCR_FDZCE_Field use
     (ISCR_FDZCE_Field_0 => 0,
      ISCR_FDZCE_Field_1 => 1);

   --  FPU overflow interrupt enable
   type ISCR_FOFCE_Field is
     (
      --  Disable interrupt
      ISCR_FOFCE_Field_0,
      --  Enable interrupt
      ISCR_FOFCE_Field_1)
     with Size => 1;
   for ISCR_FOFCE_Field use
     (ISCR_FOFCE_Field_0 => 0,
      ISCR_FOFCE_Field_1 => 1);

   --  FPU underflow interrupt enable
   type ISCR_FUFCE_Field is
     (
      --  Disable interrupt
      ISCR_FUFCE_Field_0,
      --  Enable interrupt
      ISCR_FUFCE_Field_1)
     with Size => 1;
   for ISCR_FUFCE_Field use
     (ISCR_FUFCE_Field_0 => 0,
      ISCR_FUFCE_Field_1 => 1);

   --  FPU inexact interrupt enable
   type ISCR_FIXCE_Field is
     (
      --  Disable interrupt
      ISCR_FIXCE_Field_0,
      --  Enable interrupt
      ISCR_FIXCE_Field_1)
     with Size => 1;
   for ISCR_FIXCE_Field use
     (ISCR_FIXCE_Field_0 => 0,
      ISCR_FIXCE_Field_1 => 1);

   --  FPU input denormal interrupt enable
   type ISCR_FIDCE_Field is
     (
      --  Disable interrupt
      ISCR_FIDCE_Field_0,
      --  Enable interrupt
      ISCR_FIDCE_Field_1)
     with Size => 1;
   for ISCR_FIDCE_Field use
     (ISCR_FIDCE_Field_0 => 0,
      ISCR_FIDCE_Field_1 => 1);

   --  Interrupt Status Register
   type MCM_ISCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Normal Interrupt Pending
      IRQ            : ISCR_IRQ_Field := NRF_SVD.MCM.ISCR_IRQ_Field_0;
      --  Non-maskable Interrupt Pending
      NMI            : ISCR_NMI_Field := NRF_SVD.MCM.ISCR_NMI_Field_0;
      --  Read-only. Debug Halt Request Indicator
      DHREQ          : ISCR_DHREQ_Field := NRF_SVD.MCM.ISCR_DHREQ_Field_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Read-only. FPU invalid operation interrupt status
      FIOC           : ISCR_FIOC_Field := NRF_SVD.MCM.ISCR_FIOC_Field_0;
      --  Read-only. FPU divide-by-zero interrupt status
      FDZC           : ISCR_FDZC_Field := NRF_SVD.MCM.ISCR_FDZC_Field_0;
      --  Read-only. FPU overflow interrupt status
      FOFC           : ISCR_FOFC_Field := NRF_SVD.MCM.ISCR_FOFC_Field_0;
      --  Read-only. FPU underflow interrupt status
      FUFC           : ISCR_FUFC_Field := NRF_SVD.MCM.ISCR_FUFC_Field_0;
      --  Read-only. FPU inexact interrupt status
      FIXC           : ISCR_FIXC_Field := NRF_SVD.MCM.ISCR_FIXC_Field_0;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Read-only. FPU input denormal interrupt status
      FIDC           : ISCR_FIDC_Field := NRF_SVD.MCM.ISCR_FIDC_Field_0;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  FPU invalid operation interrupt enable
      FIOCE          : ISCR_FIOCE_Field := NRF_SVD.MCM.ISCR_FIOCE_Field_0;
      --  FPU divide-by-zero interrupt enable
      FDZCE          : ISCR_FDZCE_Field := NRF_SVD.MCM.ISCR_FDZCE_Field_0;
      --  FPU overflow interrupt enable
      FOFCE          : ISCR_FOFCE_Field := NRF_SVD.MCM.ISCR_FOFCE_Field_0;
      --  FPU underflow interrupt enable
      FUFCE          : ISCR_FUFCE_Field := NRF_SVD.MCM.ISCR_FUFCE_Field_0;
      --  FPU inexact interrupt enable
      FIXCE          : ISCR_FIXCE_Field := NRF_SVD.MCM.ISCR_FIXCE_Field_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  FPU input denormal interrupt enable
      FIDCE          : ISCR_FIDCE_Field := NRF_SVD.MCM.ISCR_FIDCE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_ISCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IRQ            at 0 range 1 .. 1;
      NMI            at 0 range 2 .. 2;
      DHREQ          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FIOC           at 0 range 8 .. 8;
      FDZC           at 0 range 9 .. 9;
      FOFC           at 0 range 10 .. 10;
      FUFC           at 0 range 11 .. 11;
      FIXC           at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FIDC           at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      FIOCE          at 0 range 24 .. 24;
      FDZCE          at 0 range 25 .. 25;
      FOFCE          at 0 range 26 .. 26;
      FUFCE          at 0 range 27 .. 27;
      FIXCE          at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FIDCE          at 0 range 31 .. 31;
   end record;

   --  Counter Enable
   type ETBCC_CNTEN_Field is
     (
      --  ETB counter disabled
      ETBCC_CNTEN_Field_0,
      --  ETB counter enabled
      ETBCC_CNTEN_Field_1)
     with Size => 1;
   for ETBCC_CNTEN_Field use
     (ETBCC_CNTEN_Field_0 => 0,
      ETBCC_CNTEN_Field_1 => 1);

   --  Response Type
   type ETBCC_RSPT_Field is
     (
      --  No response when the ETB count expires
      ETBCC_RSPT_Field_00,
      --  Generate a normal interrupt when the ETB count expires
      ETBCC_RSPT_Field_01,
      --  Generate an NMI when the ETB count expires
      ETBCC_RSPT_Field_10,
      --  Generate a debug halt when the ETB count expires
      ETBCC_RSPT_Field_11)
     with Size => 2;
   for ETBCC_RSPT_Field use
     (ETBCC_RSPT_Field_00 => 0,
      ETBCC_RSPT_Field_01 => 1,
      ETBCC_RSPT_Field_10 => 2,
      ETBCC_RSPT_Field_11 => 3);

   --  Reload Request
   type ETBCC_RLRQ_Field is
     (
      --  No effect
      ETBCC_RLRQ_Field_0,
      --  Clears pending debug halt, NMI, or IRQ interrupt requests
      ETBCC_RLRQ_Field_1)
     with Size => 1;
   for ETBCC_RLRQ_Field use
     (ETBCC_RLRQ_Field_0 => 0,
      ETBCC_RLRQ_Field_1 => 1);

   --  ETM-To-TPIU Disable
   type ETBCC_ETDIS_Field is
     (
      --  ETM-to-TPIU trace path enabled
      ETBCC_ETDIS_Field_0,
      --  ETM-to-TPIU trace path disabled
      ETBCC_ETDIS_Field_1)
     with Size => 1;
   for ETBCC_ETDIS_Field use
     (ETBCC_ETDIS_Field_0 => 0,
      ETBCC_ETDIS_Field_1 => 1);

   --  ITM-To-TPIU Disable
   type ETBCC_ITDIS_Field is
     (
      --  ITM-to-TPIU trace path enabled
      ETBCC_ITDIS_Field_0,
      --  ITM-to-TPIU trace path disabled
      ETBCC_ITDIS_Field_1)
     with Size => 1;
   for ETBCC_ITDIS_Field use
     (ETBCC_ITDIS_Field_0 => 0,
      ETBCC_ITDIS_Field_1 => 1);

   --  ETB Counter Control register
   type MCM_ETBCC_Register is record
      --  Counter Enable
      CNTEN         : ETBCC_CNTEN_Field := NRF_SVD.MCM.ETBCC_CNTEN_Field_0;
      --  Response Type
      RSPT          : ETBCC_RSPT_Field := NRF_SVD.MCM.ETBCC_RSPT_Field_00;
      --  Reload Request
      RLRQ          : ETBCC_RLRQ_Field := NRF_SVD.MCM.ETBCC_RLRQ_Field_0;
      --  ETM-To-TPIU Disable
      ETDIS         : ETBCC_ETDIS_Field := NRF_SVD.MCM.ETBCC_ETDIS_Field_0;
      --  ITM-To-TPIU Disable
      ITDIS         : ETBCC_ITDIS_Field := NRF_SVD.MCM.ETBCC_ITDIS_Field_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_ETBCC_Register use record
      CNTEN         at 0 range 0 .. 0;
      RSPT          at 0 range 1 .. 2;
      RLRQ          at 0 range 3 .. 3;
      ETDIS         at 0 range 4 .. 4;
      ITDIS         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MCM_ETBRL_RELOAD_Field is HAL.UInt11;

   --  ETB Reload register
   type MCM_ETBRL_Register is record
      --  Byte Count Reload Value
      RELOAD         : MCM_ETBRL_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_ETBRL_Register use record
      RELOAD         at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MCM_ETBCNT_COUNTER_Field is HAL.UInt11;

   --  ETB Counter Value register
   type MCM_ETBCNT_Register is record
      --  Read-only. Byte Count Counter Value
      COUNTER        : MCM_ETBCNT_COUNTER_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_ETBCNT_Register use record
      COUNTER        at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Bus error access type
   type FATR_BEDA_Field is
     (
      --  Instruction
      FATR_BEDA_Field_0,
      --  Data
      FATR_BEDA_Field_1)
     with Size => 1;
   for FATR_BEDA_Field use
     (FATR_BEDA_Field_0 => 0,
      FATR_BEDA_Field_1 => 1);

   --  Bus error privilege level
   type FATR_BEMD_Field is
     (
      --  User mode
      FATR_BEMD_Field_0,
      --  Supervisor/privileged mode
      FATR_BEMD_Field_1)
     with Size => 1;
   for FATR_BEMD_Field use
     (FATR_BEMD_Field_0 => 0,
      FATR_BEMD_Field_1 => 1);

   --  Bus error size
   type FATR_BESZ_Field is
     (
      --  8-bit access
      FATR_BESZ_Field_00,
      --  16-bit access
      FATR_BESZ_Field_01,
      --  32-bit access
      FATR_BESZ_Field_10)
     with Size => 2;
   for FATR_BESZ_Field use
     (FATR_BESZ_Field_00 => 0,
      FATR_BESZ_Field_01 => 1,
      FATR_BESZ_Field_10 => 2);

   --  Bus error write
   type FATR_BEWT_Field is
     (
      --  Read access
      FATR_BEWT_Field_0,
      --  Write access
      FATR_BEWT_Field_1)
     with Size => 1;
   for FATR_BEWT_Field use
     (FATR_BEWT_Field_0 => 0,
      FATR_BEWT_Field_1 => 1);

   subtype MCM_FATR_BEMN_Field is HAL.UInt4;

   --  Bus error overrun
   type FATR_BEOVR_Field is
     (
      --  No bus error overrun
      FATR_BEOVR_Field_0,
      --  Bus error overrun occurred. The FADR and FDR registers and the other
      --  FATR bits are not updated to reflect this new bus error.
      FATR_BEOVR_Field_1)
     with Size => 1;
   for FATR_BEOVR_Field use
     (FATR_BEOVR_Field_0 => 0,
      FATR_BEOVR_Field_1 => 1);

   --  Fault attributes register
   type MCM_FATR_Register is record
      --  Read-only. Bus error access type
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
      CPO_CPOREQ_Field_0,
      --  Request Compute Operation.
      CPO_CPOREQ_Field_1)
     with Size => 1;
   for CPO_CPOREQ_Field use
     (CPO_CPOREQ_Field_0 => 0,
      CPO_CPOREQ_Field_1 => 1);

   --  Compute Operation acknowledge
   type CPO_CPOACK_Field is
     (
      --  Compute operation entry has not completed or compute operation exit
      --  has completed.
      CPO_CPOACK_Field_0,
      --  Compute operation entry has completed or compute operation exit has
      --  not completed.
      CPO_CPOACK_Field_1)
     with Size => 1;
   for CPO_CPOACK_Field use
     (CPO_CPOACK_Field_0 => 0,
      CPO_CPOACK_Field_1 => 1);

   --  Compute Operation wakeup on interrupt
   type CPO_CPOWOI_Field is
     (
      --  No effect.
      CPO_CPOWOI_Field_0,
      --  When set, the CPOREQ is cleared on any interrupt or exception vector
      --  fetch.
      CPO_CPOWOI_Field_1)
     with Size => 1;
   for CPO_CPOWOI_Field use
     (CPO_CPOWOI_Field_0 => 0,
      CPO_CPOWOI_Field_1 => 1);

   --  Compute Operation Control Register
   type MCM_CPO_Register is record
      --  Compute Operation request
      CPOREQ        : CPO_CPOREQ_Field := NRF_SVD.MCM.CPO_CPOREQ_Field_0;
      --  Read-only. Compute Operation acknowledge
      CPOACK        : CPO_CPOACK_Field := NRF_SVD.MCM.CPO_CPOACK_Field_0;
      --  Compute Operation wakeup on interrupt
      CPOWOI        : CPO_CPOWOI_Field := NRF_SVD.MCM.CPO_CPOWOI_Field_0;
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

   -----------------
   -- Peripherals --
   -----------------

   --  Core Platform Miscellaneous Control Module
   type MCM_Peripheral is record
      --  Crossbar Switch (AXBS) Slave Configuration
      PLASC  : aliased MCM_PLASC_Register;
      --  Crossbar Switch (AXBS) Master Configuration
      PLAMC  : aliased MCM_PLAMC_Register;
      --  Control Register
      CR     : aliased MCM_CR_Register;
      --  Interrupt Status Register
      ISCR   : aliased MCM_ISCR_Register;
      --  ETB Counter Control register
      ETBCC  : aliased MCM_ETBCC_Register;
      --  ETB Reload register
      ETBRL  : aliased MCM_ETBRL_Register;
      --  ETB Counter Value register
      ETBCNT : aliased MCM_ETBCNT_Register;
      --  Fault address register
      FADR   : aliased HAL.UInt32;
      --  Fault attributes register
      FATR   : aliased MCM_FATR_Register;
      --  Fault data register
      FDR    : aliased HAL.UInt32;
      --  Process ID register
      PID    : aliased MCM_PID_Register;
      --  Compute Operation Control Register
      CPO    : aliased MCM_CPO_Register;
   end record
     with Volatile;

   for MCM_Peripheral use record
      PLASC  at 16#8# range 0 .. 15;
      PLAMC  at 16#A# range 0 .. 15;
      CR     at 16#C# range 0 .. 31;
      ISCR   at 16#10# range 0 .. 31;
      ETBCC  at 16#14# range 0 .. 31;
      ETBRL  at 16#18# range 0 .. 31;
      ETBCNT at 16#1C# range 0 .. 31;
      FADR   at 16#20# range 0 .. 31;
      FATR   at 16#24# range 0 .. 31;
      FDR    at 16#28# range 0 .. 31;
      PID    at 16#30# range 0 .. 31;
      CPO    at 16#40# range 0 .. 31;
   end record;

   --  Core Platform Miscellaneous Control Module
   MCM_Periph : aliased MCM_Peripheral
     with Import, Address => MCM_Base;

end NRF_SVD.MCM;
