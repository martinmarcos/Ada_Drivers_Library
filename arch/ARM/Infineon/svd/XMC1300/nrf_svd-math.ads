--  This spec has been automatically generated from XMC1300.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  MATH Unit
package NRF_SVD.MATH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Dividend Register Result Chaining
   type GLBCON_DVDRC_Field is
     (
      --  No result chaining is selected
      VALUE1,
      --  QUOT register is the selected source
      VALUE2,
      --  RMD register is the selected source
      VALUE3,
      --  CORRX is the selected source
      VALUE4,
      --  CORRY is the selected source
      VALUE5,
      --  CORRZ is the selected source
      VALUE6)
     with Size => 3;
   for GLBCON_DVDRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  Divisor Register Result Chaining
   type GLBCON_DVSRC_Field is
     (
      --  No result chaining is selected
      VALUE1,
      --  QUOT register is the selected source
      VALUE2,
      --  RMD register is the selected source
      VALUE3,
      --  CORRX is the selected source
      VALUE4,
      --  CORRY is the selected source
      VALUE5,
      --  CORRZ is the selected source
      VALUE6)
     with Size => 3;
   for GLBCON_DVSRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5);

   --  CORDX Register Result Chaining
   type GLBCON_CORDXRC_Field is
     (
      --  No result chaining is selected
      VALUE1,
      --  QUOT register is the selected source
      VALUE2,
      --  RMD register is the selected source
      VALUE3)
     with Size => 2;
   for GLBCON_CORDXRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  CORDY Register Result Chaining
   type GLBCON_CORDYRC_Field is
     (
      --  No result chaining is selected
      VALUE1,
      --  QUOT register is the selected source
      VALUE2,
      --  RMD register is the selected source
      VALUE3)
     with Size => 2;
   for GLBCON_CORDYRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  CORDZ Register Result Chaining
   type GLBCON_CORDZRC_Field is
     (
      --  No result chaining is selected
      VALUE1,
      --  QUOT register is the selected source
      VALUE2,
      --  RMD register is the selected source
      VALUE3)
     with Size => 2;
   for GLBCON_CORDZRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Suspend Mode Configuration
   type GLBCON_SUSCFG_Field is
     (
      --  Suspend mode is never entered.
      VALUE1,
      --  Hard suspend mode will be entered when CPU is halted.
      VALUE2,
      --  Soft suspend mode will be entered when CPU is halted.
      VALUE3)
     with Size => 2;
   for GLBCON_SUSCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Global Control Register
   type GLBCON_Register is record
      --  Dividend Register Result Chaining
      DVDRC          : GLBCON_DVDRC_Field := NRF_SVD.MATH.VALUE1;
      --  Divisor Register Result Chaining
      DVSRC          : GLBCON_DVSRC_Field := NRF_SVD.MATH.VALUE1;
      --  CORDX Register Result Chaining
      CORDXRC        : GLBCON_CORDXRC_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  CORDY Register Result Chaining
      CORDYRC        : GLBCON_CORDYRC_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CORDZ Register Result Chaining
      CORDZRC        : GLBCON_CORDZRC_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Suspend Mode Configuration
      SUSCFG         : GLBCON_SUSCFG_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLBCON_Register use record
      DVDRC          at 0 range 0 .. 2;
      DVSRC          at 0 range 3 .. 5;
      CORDXRC        at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CORDYRC        at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CORDZRC        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SUSCFG         at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

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

   --  Divider End of Calculation Interrupt Enable
   type EVIER_DIVEOCIEN_Field is
     (
      --  Divider end of calculation interrupt generation is disabled.
      VALUE1,
      --  Divider end of calculation interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for EVIER_DIVEOCIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Divider Error Interrupt Enable
   type EVIER_DIVERRIEN_Field is
     (
      --  Divider error interrupt generation is disabled
      VALUE1,
      --  Divider error interrupt generation is enabled
      VALUE2)
     with Size => 1;
   for EVIER_DIVERRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC End of Calculation Interrupt Enable
   type EVIER_CDEOCIEN_Field is
     (
      --  CORDIC end of calculation interrupt generation is disabled.
      VALUE1,
      --  CORDIC end of calculation interrupt generation is enabled.
      VALUE2)
     with Size => 1;
   for EVIER_CDEOCIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Error Interrupt Enable
   type EVIER_CDERRIEN_Field is
     (
      --  CORDIC error interrupt generation is disabled
      VALUE1,
      --  CORDIC error interrupt generation is enabled
      VALUE2)
     with Size => 1;
   for EVIER_CDERRIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Interrupt Enable Register
   type EVIER_Register is record
      --  Divider End of Calculation Interrupt Enable
      DIVEOCIEN     : EVIER_DIVEOCIEN_Field := NRF_SVD.MATH.VALUE1;
      --  Divider Error Interrupt Enable
      DIVERRIEN     : EVIER_DIVERRIEN_Field := NRF_SVD.MATH.VALUE1;
      --  CORDIC End of Calculation Interrupt Enable
      CDEOCIEN      : EVIER_CDEOCIEN_Field := NRF_SVD.MATH.VALUE1;
      --  CORDIC Error Interrupt Enable
      CDERRIEN      : EVIER_CDERRIEN_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVIER_Register use record
      DIVEOCIEN     at 0 range 0 .. 0;
      DIVERRIEN     at 0 range 1 .. 1;
      CDEOCIEN      at 0 range 2 .. 2;
      CDERRIEN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Divider End of Calculation Event Flag
   type EVFR_DIVEOC_Field is
     (
      --  Divider end of calculation event has not been detected.
      VALUE1,
      --  Divider end of calculation event has been detected.
      VALUE2)
     with Size => 1;
   for EVFR_DIVEOC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Divider Error Event Flag
   type EVFR_DIVERR_Field is
     (
      --  Divider error event has not been detected
      VALUE1,
      --  Divider error event has been detected
      VALUE2)
     with Size => 1;
   for EVFR_DIVERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC End of Calculation Event Flag
   type EVFR_CDEOC_Field is
     (
      --  CORDIC end of calculation event has not been detected.
      VALUE1,
      --  CORDIC end of calculation event has been detected.
      VALUE2)
     with Size => 1;
   for EVFR_CDEOC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Error Event Flag
   type EVFR_CDERR_Field is
     (
      --  CORDIC error event has not been detected
      VALUE1,
      --  CORDIC error event has been detected
      VALUE2)
     with Size => 1;
   for EVFR_CDERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag Register
   type EVFR_Register is record
      --  Read-only. Divider End of Calculation Event Flag
      DIVEOC        : EVFR_DIVEOC_Field;
      --  Read-only. Divider Error Event Flag
      DIVERR        : EVFR_DIVERR_Field;
      --  Read-only. CORDIC End of Calculation Event Flag
      CDEOC         : EVFR_CDEOC_Field;
      --  Read-only. CORDIC Error Event Flag
      CDERR         : EVFR_CDERR_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFR_Register use record
      DIVEOC        at 0 range 0 .. 0;
      DIVERR        at 0 range 1 .. 1;
      CDEOC         at 0 range 2 .. 2;
      CDERR         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Divider End of Calculation Event Flag Set
   type EVFSR_DIVEOCS_Field is
     (
      --  No effect.
      VALUE1,
      --  Sets the Divider end of calculation event flag in EVFR register.
      --  Interrupt will be generated if enabled in EVIER register.
      VALUE2)
     with Size => 1;
   for EVFSR_DIVEOCS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Divider Error Event Flag Set
   type EVFSR_DIVERRS_Field is
     (
      --  No effect.
      VALUE1,
      --  Sets the Divider error event flag in EVFR register. Interrupt will be
      --  generated if enabled in EVIER register.
      VALUE2)
     with Size => 1;
   for EVFSR_DIVERRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Event Flag Set
   type EVFSR_CDEOCS_Field is
     (
      --  No effect.
      VALUE1,
      --  Sets the CORDIC end of calculation event flag in EVFR register.
      --  Interrupt will be generated if enabled in EVIER register.
      VALUE2)
     with Size => 1;
   for EVFSR_CDEOCS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Error Event Flag Set
   type EVFSR_CDERRS_Field is
     (
      --  No effect.
      VALUE1,
      --  Sets the CORDIC error event flag in EVFR register. Interrupt will be
      --  generated if enabled in EVIER register.
      VALUE2)
     with Size => 1;
   for EVFSR_CDERRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag Set Register
   type EVFSR_Register is record
      --  Write-only. Divider End of Calculation Event Flag Set
      DIVEOCS       : EVFSR_DIVEOCS_Field := NRF_SVD.MATH.VALUE1;
      --  Write-only. Divider Error Event Flag Set
      DIVERRS       : EVFSR_DIVERRS_Field := NRF_SVD.MATH.VALUE1;
      --  Write-only. CORDIC Event Flag Set
      CDEOCS        : EVFSR_CDEOCS_Field := NRF_SVD.MATH.VALUE1;
      --  Write-only. CORDIC Error Event Flag Set
      CDERRS        : EVFSR_CDERRS_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFSR_Register use record
      DIVEOCS       at 0 range 0 .. 0;
      DIVERRS       at 0 range 1 .. 1;
      CDEOCS        at 0 range 2 .. 2;
      CDERRS        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Divider End of Calculation Event Flag Clear
   type EVFCR_DIVEOCC_Field is
     (
      --  No effect.
      VALUE1,
      --  Clears the Divider end of calculation event flag in EVFR register.
      VALUE2)
     with Size => 1;
   for EVFCR_DIVEOCC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Divider Error Event Flag Clear
   type EVFCR_DIVERRC_Field is
     (
      --  No effect.
      VALUE1,
      --  Clears the Divider error event flag in EVFR register.
      VALUE2)
     with Size => 1;
   for EVFCR_DIVERRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC End of Calculation Event Flag Clear
   type EVFCR_CDEOCC_Field is
     (
      --  No effect.
      VALUE1,
      --  Clears the CORDIC end of calculation event flag in EVFR register.
      VALUE2)
     with Size => 1;
   for EVFCR_CDEOCC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CORDIC Error Event Flag Clear
   type EVFCR_CDERRC_Field is
     (
      --  No effect.
      VALUE1,
      --  Clears the CORDIC error event flag in EVFR register.
      VALUE2)
     with Size => 1;
   for EVFCR_CDERRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag Clear Register
   type EVFCR_Register is record
      --  Write-only. Divider End of Calculation Event Flag Clear
      DIVEOCC       : EVFCR_DIVEOCC_Field := NRF_SVD.MATH.VALUE1;
      --  Write-only. Divider Error Event Flag Clear
      DIVERRC       : EVFCR_DIVERRC_Field := NRF_SVD.MATH.VALUE1;
      --  Write-only. CORDIC End of Calculation Event Flag Clear
      CDEOCC        : EVFCR_CDEOCC_Field := NRF_SVD.MATH.VALUE1;
      --  Write-only. CORDIC Error Event Flag Clear
      CDERRC        : EVFCR_CDERRC_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFCR_Register use record
      DIVEOCC       at 0 range 0 .. 0;
      DIVERRC       at 0 range 1 .. 1;
      CDEOCC        at 0 range 2 .. 2;
      CDERRC        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Busy Indication
   type DIVST_BSY_Field is
     (
      --  Divider is not running any division operation.
      VALUE1,
      --  Divider is still running a division operation.
      VALUE2)
     with Size => 1;
   for DIVST_BSY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Divider Status Register
   type DIVST_Register is record
      --  Read-only. Busy Indication
      BSY           : DIVST_BSY_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIVST_Register use record
      BSY           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start Bit
   type DIVCON_ST_Field is
     (
      --  No effect
      VALUE1,
      --  Start the division operation when STMODE=1#
      VALUE2)
     with Size => 1;
   for DIVCON_ST_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start Mode
   type DIVCON_STMODE_Field is
     (
      --  Calculation is automatically started with a write to DVS register
      VALUE1,
      --  Calculation is started by setting the ST bit to 1
      VALUE2)
     with Size => 1;
   for DIVCON_STMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Unsigned Division Enable
   type DIVCON_USIGN_Field is
     (
      --  Signed division is selected
      VALUE1,
      --  Unsigned division is selected
      VALUE2)
     with Size => 1;
   for DIVCON_USIGN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Division Mode
   type DIVCON_DIVMODE_Field is
     (
      --  32-bit divide by 32-bit
      VALUE1,
      --  32-bit divide by 16-bit
      VALUE2,
      --  16-bit divide by 16-bit
      VALUE3)
     with Size => 2;
   for DIVCON_DIVMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   subtype DIVCON_QSCNT_Field is HAL.UInt5;

   --  Quotient Shift Direction
   type DIVCON_QSDIR_Field is
     (
      --  Left shift
      VALUE1,
      --  Right shift
      VALUE2)
     with Size => 1;
   for DIVCON_QSDIR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype DIVCON_DVDSLC_Field is HAL.UInt5;
   subtype DIVCON_DVSSRC_Field is HAL.UInt5;

   --  Divider Control Register
   type DIVCON_Register is record
      --  Start Bit
      ST             : DIVCON_ST_Field := NRF_SVD.MATH.VALUE1;
      --  Start Mode
      STMODE         : DIVCON_STMODE_Field := NRF_SVD.MATH.VALUE1;
      --  Unsigned Division Enable
      USIGN          : DIVCON_USIGN_Field := NRF_SVD.MATH.VALUE1;
      --  Division Mode
      DIVMODE        : DIVCON_DIVMODE_Field := NRF_SVD.MATH.VALUE1;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Quotient Shift Count
      QSCNT          : DIVCON_QSCNT_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Quotient Shift Direction
      QSDIR          : DIVCON_QSDIR_Field := NRF_SVD.MATH.VALUE1;
      --  Dividend Shift Left Count
      DVDSLC         : DIVCON_DVDSLC_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Divisor Shift Right Count
      DVSSRC         : DIVCON_DVSSRC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIVCON_Register use record
      ST             at 0 range 0 .. 0;
      STMODE         at 0 range 1 .. 1;
      USIGN          at 0 range 2 .. 2;
      DIVMODE        at 0 range 3 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      QSCNT          at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      QSDIR          at 0 range 15 .. 15;
      DVDSLC         at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      DVSSRC         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CORDIC Status and Data Control Register
   type STATC_Register is record
      --  Read-only. Busy Indication
      BSY           : Boolean := False;
      --  unspecified
      Reserved_1_4  : HAL.UInt4 := 16#0#;
      --  Last X Result as Initial Data for New Calculation
      KEEPX         : Boolean := False;
      --  Last Y Result as Initial Data for New Calculation
      KEEPY         : Boolean := False;
      --  Last Z Result as Initial Data for New Calculation
      KEEPZ         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATC_Register use record
      BSY           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      KEEPX         at 0 range 5 .. 5;
      KEEPY         at 0 range 6 .. 6;
      KEEPZ         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Operating Mode
   type CON_MODE_Field is
     (
      --  Linear Mode
      VALUE1,
      --  Circular Mode (default)
      VALUE2,
      --  Hyperbolic Mode
      VALUE4)
     with Size => 2;
   for CON_MODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE4 => 3);

   --  Rotation Vectoring Selection
   type CON_ROTVEC_Field is
     (
      --  Vectoring Mode (default)
      VALUE1,
      --  Rotation Mode
      VALUE2)
     with Size => 1;
   for CON_ROTVEC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start Method
   type CON_ST_MODE_Field is
     (
      --  Auto start of calculation after write access to X parameter data
      --  register CORDX(default).
      VALUE1,
      --  Start calculation only after bit ST is set
      VALUE2)
     with Size => 1;
   for CON_ST_MODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Result Data Format for X in Circular Vectoring Mode
   type CON_X_USIGN_Field is
     (
      --  Signed, twos complement
      VALUE1,
      --  Unsigned (default)
      VALUE2)
     with Size => 1;
   for CON_X_USIGN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  X and Y Magnitude Prescaler
   type CON_MPS_Field is
     (
      --  Divide by 1
      VALUE1,
      --  Divide by 2 (default)
      VALUE2,
      --  Divide by 4
      VALUE3,
      --  Reserved, retain the last MPS setting
      VALUE4)
     with Size => 2;
   for CON_MPS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  CORDIC Control Register
   type CON_Register is record
      --  Start Calculation
      ST            : Boolean := False;
      --  Operating Mode
      MODE          : CON_MODE_Field := NRF_SVD.MATH.VALUE2;
      --  Rotation Vectoring Selection
      ROTVEC        : CON_ROTVEC_Field := NRF_SVD.MATH.VALUE1;
      --  Start Method
      ST_MODE       : CON_ST_MODE_Field := NRF_SVD.MATH.VALUE1;
      --  Result Data Format for X in Circular Vectoring Mode
      X_USIGN       : CON_X_USIGN_Field := NRF_SVD.MATH.VALUE2;
      --  X and Y Magnitude Prescaler
      MPS           : CON_MPS_Field := NRF_SVD.MATH.VALUE2;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      ST            at 0 range 0 .. 0;
      MODE          at 0 range 1 .. 2;
      ROTVEC        at 0 range 3 .. 3;
      ST_MODE       at 0 range 4 .. 4;
      X_USIGN       at 0 range 5 .. 5;
      MPS           at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CORDX_DATA_Field is HAL.UInt24;

   --  CORDIC X Data Register
   type CORDX_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8 := 16#0#;
      --  Initial X Parameter Data
      DATA         : CORDX_DATA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORDX_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DATA         at 0 range 8 .. 31;
   end record;

   subtype CORDY_DATA_Field is HAL.UInt24;

   --  CORDIC Y Data Register
   type CORDY_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8 := 16#0#;
      --  Initial Y Parameter Data
      DATA         : CORDY_DATA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORDY_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DATA         at 0 range 8 .. 31;
   end record;

   subtype CORDZ_DATA_Field is HAL.UInt24;

   --  CORDIC Z Data Register
   type CORDZ_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8 := 16#0#;
      --  Initial Z Parameter Data
      DATA         : CORDZ_DATA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORDZ_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DATA         at 0 range 8 .. 31;
   end record;

   subtype CORRX_RESULT_Field is HAL.UInt24;

   --  CORDIC X Result Register
   type CORRX_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. X Calculation Result
      RESULT       : CORRX_RESULT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORRX_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      RESULT       at 0 range 8 .. 31;
   end record;

   subtype CORRY_RESULT_Field is HAL.UInt24;

   --  CORDIC Y Result Register
   type CORRY_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Y Calculation Result
      RESULT       : CORRY_RESULT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORRY_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      RESULT       at 0 range 8 .. 31;
   end record;

   subtype CORRZ_RESULT_Field is HAL.UInt24;

   --  CORDIC Z Result Register
   type CORRZ_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Z Calculation Result
      RESULT       : CORRZ_RESULT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORRZ_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      RESULT       at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MATH Unit
   type MATH_Peripheral is record
      --  Global Control Register
      GLBCON : aliased GLBCON_Register;
      --  Module Identification Register
      ID     : aliased ID_Register;
      --  Event Interrupt Enable Register
      EVIER  : aliased EVIER_Register;
      --  Event Flag Register
      EVFR   : aliased EVFR_Register;
      --  Event Flag Set Register
      EVFSR  : aliased EVFSR_Register;
      --  Event Flag Clear Register
      EVFCR  : aliased EVFCR_Register;
      --  Dividend Register
      DVD    : aliased HAL.UInt32;
      --  Divisor Register
      DVS    : aliased HAL.UInt32;
      --  Quotient Register
      QUOT   : aliased HAL.UInt32;
      --  Remainder Register
      RMD    : aliased HAL.UInt32;
      --  Divider Status Register
      DIVST  : aliased DIVST_Register;
      --  Divider Control Register
      DIVCON : aliased DIVCON_Register;
      --  CORDIC Status and Data Control Register
      STATC  : aliased STATC_Register;
      --  CORDIC Control Register
      CON    : aliased CON_Register;
      --  CORDIC X Data Register
      CORDX  : aliased CORDX_Register;
      --  CORDIC Y Data Register
      CORDY  : aliased CORDY_Register;
      --  CORDIC Z Data Register
      CORDZ  : aliased CORDZ_Register;
      --  CORDIC X Result Register
      CORRX  : aliased CORRX_Register;
      --  CORDIC Y Result Register
      CORRY  : aliased CORRY_Register;
      --  CORDIC Z Result Register
      CORRZ  : aliased CORRZ_Register;
   end record
     with Volatile;

   for MATH_Peripheral use record
      GLBCON at 16#4# range 0 .. 31;
      ID     at 16#8# range 0 .. 31;
      EVIER  at 16#C# range 0 .. 31;
      EVFR   at 16#10# range 0 .. 31;
      EVFSR  at 16#14# range 0 .. 31;
      EVFCR  at 16#18# range 0 .. 31;
      DVD    at 16#20# range 0 .. 31;
      DVS    at 16#24# range 0 .. 31;
      QUOT   at 16#28# range 0 .. 31;
      RMD    at 16#2C# range 0 .. 31;
      DIVST  at 16#30# range 0 .. 31;
      DIVCON at 16#34# range 0 .. 31;
      STATC  at 16#40# range 0 .. 31;
      CON    at 16#44# range 0 .. 31;
      CORDX  at 16#48# range 0 .. 31;
      CORDY  at 16#4C# range 0 .. 31;
      CORDZ  at 16#50# range 0 .. 31;
      CORRX  at 16#54# range 0 .. 31;
      CORRY  at 16#58# range 0 .. 31;
      CORRZ  at 16#5C# range 0 .. 31;
   end record;

   --  MATH Unit
   MATH_Periph : aliased MATH_Peripheral
     with Import, Address => MATH_Base;

end NRF_SVD.MATH;
