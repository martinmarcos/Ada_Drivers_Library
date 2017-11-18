--  This spec has been automatically generated from MKE15Z7.xml

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
      --  A bus slave connection to AXBS input port n is absent.
      Asc_0,
      --  A bus slave connection to AXBS input port n is present.
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

   --  Arbitration select
   type PLACR_ARB_Field is
     (
      --  Fixed-priority arbitration for the crossbar masters
      Arb_0,
      --  Round-robin arbitration for the crossbar masters
      Arb_1)
     with Size => 1;
   for PLACR_ARB_Field use
     (Arb_0 => 0,
      Arb_1 => 1);

   --  Disable Flash Controller Data Caching
   type PLACR_DFCDA_Field is
     (
      --  Enable flash controller data caching
      Dfcda_0,
      --  Disable flash controller data caching.
      Dfcda_1)
     with Size => 1;
   for PLACR_DFCDA_Field use
     (Dfcda_0 => 0,
      Dfcda_1 => 1);

   --  Disable Flash Controller Instruction Caching
   type PLACR_DFCIC_Field is
     (
      --  Enable flash controller instruction caching.
      Dfcic_0,
      --  Disable flash controller instruction caching.
      Dfcic_1)
     with Size => 1;
   for PLACR_DFCIC_Field use
     (Dfcic_0 => 0,
      Dfcic_1 => 1);

   --  Disable Flash Controller Cache
   type PLACR_DFCC_Field is
     (
      --  Enable flash controller cache.
      Dfcc_0,
      --  Disable flash controller cache.
      Dfcc_1)
     with Size => 1;
   for PLACR_DFCC_Field use
     (Dfcc_0 => 0,
      Dfcc_1 => 1);

   --  Enable Flash Data Speculation
   type PLACR_EFDS_Field is
     (
      --  Disable flash data speculation.
      Efds_0,
      --  Enable flash data speculation.
      Efds_1)
     with Size => 1;
   for PLACR_EFDS_Field use
     (Efds_0 => 0,
      Efds_1 => 1);

   --  Disable Flash Controller Speculation
   type PLACR_DFCS_Field is
     (
      --  Enable flash controller speculation.
      Dfcs_0,
      --  Disable flash controller speculation.
      Dfcs_1)
     with Size => 1;
   for PLACR_DFCS_Field use
     (Dfcs_0 => 0,
      Dfcs_1 => 1);

   --  Enable Stalling Flash Controller
   type PLACR_ESFC_Field is
     (
      --  Disable stalling flash controller when flash is busy.
      Esfc_0,
      --  Enable stalling flash controller when flash is busy.
      Esfc_1)
     with Size => 1;
   for PLACR_ESFC_Field use
     (Esfc_0 => 0,
      Esfc_1 => 1);

   --  Platform Control Register
   type MCM_PLACR_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#50#;
      --  Arbitration select
      ARB            : PLACR_ARB_Field := NRF_SVD.MCM.Arb_1;
      --  Write-only. Clear Flash Controller Cache
      CFCC           : Boolean := False;
      --  Disable Flash Controller Data Caching
      DFCDA          : PLACR_DFCDA_Field := NRF_SVD.MCM.Dfcda_0;
      --  Disable Flash Controller Instruction Caching
      DFCIC          : PLACR_DFCIC_Field := NRF_SVD.MCM.Dfcic_0;
      --  Disable Flash Controller Cache
      DFCC           : PLACR_DFCC_Field := NRF_SVD.MCM.Dfcc_0;
      --  Enable Flash Data Speculation
      EFDS           : PLACR_EFDS_Field := NRF_SVD.MCM.Efds_0;
      --  Disable Flash Controller Speculation
      DFCS           : PLACR_DFCS_Field := NRF_SVD.MCM.Dfcs_0;
      --  Enable Stalling Flash Controller
      ESFC           : PLACR_ESFC_Field := NRF_SVD.MCM.Esfc_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_PLACR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ARB            at 0 range 9 .. 9;
      CFCC           at 0 range 10 .. 10;
      DFCDA          at 0 range 11 .. 11;
      DFCIC          at 0 range 12 .. 12;
      DFCC           at 0 range 13 .. 13;
      EFDS           at 0 range 14 .. 14;
      DFCS           at 0 range 15 .. 15;
      ESFC           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Compute Operation Request
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

   --  Compute Operation Acknowledge
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

   --  Compute Operation Wake-up on Interrupt
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
      --  Compute Operation Request
      CPOREQ        : CPO_CPOREQ_Field := NRF_SVD.MCM.Cporeq_0;
      --  Read-only. Compute Operation Acknowledge
      CPOACK        : CPO_CPOACK_Field := NRF_SVD.MCM.Cpoack_0;
      --  Compute Operation Wake-up on Interrupt
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

   -----------------
   -- Peripherals --
   -----------------

   --  Core Platform Miscellaneous Control Module
   type MCM_Peripheral is record
      --  Crossbar Switch (AXBS) Slave Configuration
      PLASC : aliased MCM_PLASC_Register;
      --  Crossbar Switch (AXBS) Master Configuration
      PLAMC : aliased MCM_PLAMC_Register;
      --  Platform Control Register
      PLACR : aliased MCM_PLACR_Register;
      --  Compute Operation Control Register
      CPO   : aliased MCM_CPO_Register;
   end record
     with Volatile;

   for MCM_Peripheral use record
      PLASC at 16#8# range 0 .. 15;
      PLAMC at 16#A# range 0 .. 15;
      PLACR at 16#C# range 0 .. 31;
      CPO   at 16#40# range 0 .. 31;
   end record;

   --  Core Platform Miscellaneous Control Module
   MCM_Periph : aliased MCM_Peripheral
     with Import, Address => System'To_Address (16#F0003000#);

end NRF_SVD.MCM;
