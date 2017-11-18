--  This spec has been automatically generated from XMC1300.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CCU8 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Prescaler Clear Configuration
   type GCTRL_PRBC_Field is
     (
      --  SW only
      VALUE1,
      --  GSTATThe register contains the status of the prescaler and each timer
      --  slice (idle mode or running)..PRB and prescaler registers are cleared
      --  when the Run Bit of CC80 is cleared.
      VALUE2,
      --  GSTATThe register contains the status of the prescaler and each timer
      --  slice (idle mode or running)..PRB and prescaler registers are cleared
      --  when the Run Bit of CC81 is cleared.
      VALUE3,
      --  GSTATThe register contains the status of the prescaler and each timer
      --  slice (idle mode or running)..PRB and prescaler registers are cleared
      --  when the Run Bit of CC82 is cleared.
      VALUE4,
      --  GSTATThe register contains the status of the prescaler and each timer
      --  slice (idle mode or running)..PRB and prescaler registers are cleared
      --  when the Run Bit of CC83 is cleared.
      VALUE5)
     with Size => 3;
   for GCTRL_PRBC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4);

   --  Prescaler Input Clock Selection
   type GCTRL_PCIS_Field is
     (
      --  Module clock
      VALUE1,
      --  CCU8x.ECLKA
      VALUE2,
      --  CCU8x.ECLKB
      VALUE3,
      --  CCU8x.ECLKC
      VALUE4)
     with Size => 2;
   for GCTRL_PCIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Suspend Mode Configuration
   type GCTRL_SUSCFG_Field is
     (
      --  Suspend request ignored. The module never enters in suspend
      VALUE1,
      --  Stops all the running slices immediately. Safe stop is not applied.
      VALUE2,
      --  Stops the block immediately and clamps all the outputs to PASSIVE
      --  state. Safe stop is applied.
      VALUE3,
      --  Waits for the roll over of each slice to stop and clamp the slices
      --  outputs. Safe stop is applied.
      VALUE4)
     with Size => 2;
   for GCTRL_SUSCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Slice 0 Multi Channel shadow transfer enable
   type GCTRL_MSE0_Field is
     (
      --  Shadow transfer can only be requested by SW
      VALUE1,
      --  Shadow transfer can be requested via SW and via the CCU8x.MCSS input.
      VALUE2)
     with Size => 1;
   for GCTRL_MSE0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  GCTRL_MSE array
   type GCTRL_MSE_Field_Array is array (0 .. 1) of GCTRL_MSE0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for GCTRL_MSE
   type GCTRL_MSE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSE as a value
            Val : HAL.UInt2;
         when True =>
            --  MSE as an array
            Arr : GCTRL_MSE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for GCTRL_MSE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Slice 2 Multi Channel shadow transfer enable
   type GCTRL_MSE2_Field is
     (
      --  Shadow transfer can only be requested by SW
      VALUE1,
      --  Shadow transfer can be requested via SW and via the CCU8xMCSS input.
      VALUE2)
     with Size => 1;
   for GCTRL_MSE2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 3 Multi Channel shadow transfer enable
   type GCTRL_MSE3_Field is
     (
      --  Shadow transfer can only be requested by SW
      VALUE1,
      --  Shadow transfer can be requested via SW and via the CCU8x.MCSS input.
      VALUE2)
     with Size => 1;
   for GCTRL_MSE3_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi Channel shadow transfer request configuration
   type GCTRL_MSDE_Field is
     (
      --  Only the shadow transfer for period and compare values is requested
      VALUE1,
      --  Shadow transfer for the compare, period and prescaler compare values
      --  is requested
      VALUE2,
      --  Shadow transfer for the compare, period, prescaler and dither compare
      --  values is requested
      VALUE4)
     with Size => 2;
   for GCTRL_MSDE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE4 => 3);

   --  Global Control Register
   type GCTRL_Register is record
      --  Prescaler Clear Configuration
      PRBC           : GCTRL_PRBC_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Prescaler Input Clock Selection
      PCIS           : GCTRL_PCIS_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Suspend Mode Configuration
      SUSCFG         : GCTRL_SUSCFG_Field := NRF_SVD.CCU8.VALUE1;
      --  Slice 0 Multi Channel shadow transfer enable
      MSE            : GCTRL_MSE_Field := (As_Array => False, Val => 16#0#);
      --  Slice 2 Multi Channel shadow transfer enable
      MSE2           : GCTRL_MSE2_Field := NRF_SVD.CCU8.VALUE1;
      --  Slice 3 Multi Channel shadow transfer enable
      MSE3           : GCTRL_MSE3_Field := NRF_SVD.CCU8.VALUE1;
      --  Multi Channel shadow transfer request configuration
      MSDE           : GCTRL_MSDE_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCTRL_Register use record
      PRBC           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCIS           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SUSCFG         at 0 range 8 .. 9;
      MSE            at 0 range 10 .. 11;
      MSE2           at 0 range 12 .. 12;
      MSE3           at 0 range 13 .. 13;
      MSDE           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CC80 IDLE status
   type GSTAT_S0I_Field is
     (
      --  Running
      VALUE1,
      --  Idle
      VALUE2)
     with Size => 1;
   for GSTAT_S0I_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC81 IDLE status
   type GSTAT_S1I_Field is
     (
      --  Running
      VALUE1,
      --  Idle
      VALUE2)
     with Size => 1;
   for GSTAT_S1I_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC82 IDLE status
   type GSTAT_S2I_Field is
     (
      --  Running
      VALUE1,
      --  Idle
      VALUE2)
     with Size => 1;
   for GSTAT_S2I_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CC83 IDLE status
   type GSTAT_S3I_Field is
     (
      --  Running
      VALUE1,
      --  Idle
      VALUE2)
     with Size => 1;
   for GSTAT_S3I_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Prescaler Run Bit
   type GSTAT_PRB_Field is
     (
      --  Prescaler is stopped
      VALUE1,
      --  Prescaler is running
      VALUE2)
     with Size => 1;
   for GSTAT_PRB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Parity Checker Run Bit
   type GSTAT_PCRB_Field is
     (
      --  Parity Checker is stopped
      VALUE1,
      --  Parity Checker is running
      VALUE2)
     with Size => 1;
   for GSTAT_PCRB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Status Register
   type GSTAT_Register is record
      --  Read-only. CC80 IDLE status
      S0I            : GSTAT_S0I_Field;
      --  Read-only. CC81 IDLE status
      S1I            : GSTAT_S1I_Field;
      --  Read-only. CC82 IDLE status
      S2I            : GSTAT_S2I_Field;
      --  Read-only. CC83 IDLE status
      S3I            : GSTAT_S3I_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Prescaler Run Bit
      PRB            : GSTAT_PRB_Field;
      --  unspecified
      Reserved_9_9   : HAL.Bit;
      --  Read-only. Parity Checker Run Bit
      PCRB           : GSTAT_PCRB_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GSTAT_Register use record
      S0I            at 0 range 0 .. 0;
      S1I            at 0 range 1 .. 1;
      S2I            at 0 range 2 .. 2;
      S3I            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PRB            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PCRB           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Global Idle Set
   type GIDLS_Register is record
      --  Write-only. CC80 IDLE mode set
      SS0I           : Boolean := False;
      --  Write-only. CC81 IDLE mode set
      SS1I           : Boolean := False;
      --  Write-only. CC82 IDLE mode set
      SS2I           : Boolean := False;
      --  Write-only. CC83 IDLE mode set
      SS3I           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Prescaler# Run Bit Clear
      CPRB           : Boolean := False;
      --  Write-only. Prescaler clear
      PSIC           : Boolean := False;
      --  Write-only. Parity Checker Run bit clear
      CPCH           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GIDLS_Register use record
      SS0I           at 0 range 0 .. 0;
      SS1I           at 0 range 1 .. 1;
      SS2I           at 0 range 2 .. 2;
      SS3I           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CPRB           at 0 range 8 .. 8;
      PSIC           at 0 range 9 .. 9;
      CPCH           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Global Idle Clear
   type GIDLC_Register is record
      --  Write-only. CC80 IDLE mode clear
      CS0I           : Boolean := False;
      --  Write-only. CC81 IDLE mode clear
      CS1I           : Boolean := False;
      --  Write-only. CC82 IDLE mode clear
      CS2I           : Boolean := False;
      --  Write-only. CC83 IDLE mode clear
      CS3I           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Prescaler Run Bit Set
      SPRB           : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Write-only. Parity Checker run bit set
      SPCH           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GIDLC_Register use record
      CS0I           at 0 range 0 .. 0;
      CS1I           at 0 range 1 .. 1;
      CS2I           at 0 range 2 .. 2;
      CS3I           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SPRB           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      SPCH           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Global Channel Set
   type GCSS_Register is record
      --  Write-only. Slice 0 shadow transfer set enable
      S0SE           : Boolean := False;
      --  Write-only. Slice 0 Dither shadow transfer set enable
      S0DSE          : Boolean := False;
      --  Write-only. Slice 0 Prescaler shadow transfer set enable
      S0PSE          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Slice 1 shadow transfer set enable
      S1SE           : Boolean := False;
      --  Write-only. Slice 1 Dither shadow transfer set enable
      S1DSE          : Boolean := False;
      --  Write-only. Slice 1 Prescaler shadow transfer set enable
      S1PSE          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Slice 2 shadow transfer set enable
      S2SE           : Boolean := False;
      --  Write-only. Slice 2 Dither shadow transfer set enable
      S2DSE          : Boolean := False;
      --  Write-only. Slice 2 Prescaler shadow transfer set enable
      S2PSE          : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Slice 3 shadow transfer set enable
      S3SE           : Boolean := False;
      --  Write-only. Slice 3 Dither shadow transfer set enable
      S3DSE          : Boolean := False;
      --  Write-only. Slice 3 Prescaler shadow transfer set enable
      S3PSE          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Slice 0 status bit 1 set
      S0ST1S         : Boolean := False;
      --  Write-only. Slice 1 status bit 1 set
      S1ST1S         : Boolean := False;
      --  Write-only. Slice 2 status bit 1 set
      S2ST1S         : Boolean := False;
      --  Write-only. Slice 3 status bit 1 set
      S3ST1S         : Boolean := False;
      --  Write-only. Slice 0 status bit 2 set
      S0ST2S         : Boolean := False;
      --  Write-only. Slice 1 status bit 2 set
      S1ST2S         : Boolean := False;
      --  Write-only. Slice 2 status bit 2 set
      S2ST2S         : Boolean := False;
      --  Write-only. Slice 3 status bit 2 set
      S3ST2S         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCSS_Register use record
      S0SE           at 0 range 0 .. 0;
      S0DSE          at 0 range 1 .. 1;
      S0PSE          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      S1SE           at 0 range 4 .. 4;
      S1DSE          at 0 range 5 .. 5;
      S1PSE          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      S2SE           at 0 range 8 .. 8;
      S2DSE          at 0 range 9 .. 9;
      S2PSE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      S3SE           at 0 range 12 .. 12;
      S3DSE          at 0 range 13 .. 13;
      S3PSE          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      S0ST1S         at 0 range 16 .. 16;
      S1ST1S         at 0 range 17 .. 17;
      S2ST1S         at 0 range 18 .. 18;
      S3ST1S         at 0 range 19 .. 19;
      S0ST2S         at 0 range 20 .. 20;
      S1ST2S         at 0 range 21 .. 21;
      S2ST2S         at 0 range 22 .. 22;
      S3ST2S         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Global Channel Clear
   type GCSC_Register is record
      --  Write-only. Slice 0 shadow transfer request clear
      S0SC           : Boolean := False;
      --  Write-only. Slice 0 Dither shadow transfer clear
      S0DSC          : Boolean := False;
      --  Write-only. Slice 0 Prescaler shadow transfer clear
      S0PSC          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Slice 1 shadow transfer clear
      S1SC           : Boolean := False;
      --  Write-only. Slice 1 Dither shadow transfer clear
      S1DSC          : Boolean := False;
      --  Write-only. Slice 1 Prescaler shadow transfer clear
      S1PSC          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Slice 2 shadow transfer clear
      S2SC           : Boolean := False;
      --  Write-only. Slice 2 Dither shadow transfer clear
      S2DSC          : Boolean := False;
      --  Write-only. Slice 2 Prescaler shadow transfer clear
      S2PSC          : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Slice 3 shadow transfer clear
      S3SC           : Boolean := False;
      --  Write-only. Slice 3 Dither shadow transfer clear
      S3DSC          : Boolean := False;
      --  Write-only. Slice 3 Prescaler shadow transfer clear
      S3PSC          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Slice 0 status bit 1 clear
      S0ST1C         : Boolean := False;
      --  Write-only. Slice 1 status bit 1 clear
      S1ST1C         : Boolean := False;
      --  Write-only. Slice 2 status bit 1 clear
      S2ST1C         : Boolean := False;
      --  Write-only. Slice 3 status bit 1 clear
      S3ST1C         : Boolean := False;
      --  Write-only. Slice 0 status bit 2 clear
      S0ST2C         : Boolean := False;
      --  Write-only. Slice 1 status bit 2 clear
      S1ST2C         : Boolean := False;
      --  Write-only. Slice 2 status bit 2 clear
      S2ST2C         : Boolean := False;
      --  Write-only. Slice 3 status bit 2 clear
      S3ST2C         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCSC_Register use record
      S0SC           at 0 range 0 .. 0;
      S0DSC          at 0 range 1 .. 1;
      S0PSC          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      S1SC           at 0 range 4 .. 4;
      S1DSC          at 0 range 5 .. 5;
      S1PSC          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      S2SC           at 0 range 8 .. 8;
      S2DSC          at 0 range 9 .. 9;
      S2PSC          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      S3SC           at 0 range 12 .. 12;
      S3DSC          at 0 range 13 .. 13;
      S3PSC          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      S0ST1C         at 0 range 16 .. 16;
      S1ST1C         at 0 range 17 .. 17;
      S2ST1C         at 0 range 18 .. 18;
      S3ST1C         at 0 range 19 .. 19;
      S0ST2C         at 0 range 20 .. 20;
      S1ST2C         at 0 range 21 .. 21;
      S2ST2C         at 0 range 22 .. 22;
      S3ST2C         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Slice 0 shadow transfer status
   type GCST_S0SS_Field is
     (
      --  Shadow transfer has not been requested
      VALUE1,
      --  Shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S0SS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 0 Dither shadow transfer status
   type GCST_S0DSS_Field is
     (
      --  Dither shadow transfer has not been requested
      VALUE1,
      --  Dither shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S0DSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 0 Prescaler shadow transfer status
   type GCST_S0PSS_Field is
     (
      --  Prescaler shadow transfer has not been requested
      VALUE1,
      --  Prescaler shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S0PSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 1 shadow transfer status
   type GCST_S1SS_Field is
     (
      --  Shadow transfer has not been requested
      VALUE1,
      --  Shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S1SS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 1 Dither shadow transfer status
   type GCST_S1DSS_Field is
     (
      --  Dither shadow transfer has not been requested
      VALUE1,
      --  Dither shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S1DSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 1 Prescaler shadow transfer status
   type GCST_S1PSS_Field is
     (
      --  Prescaler shadow transfer has not been requested
      VALUE1,
      --  Prescaler shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S1PSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 2 shadow transfer status
   type GCST_S2SS_Field is
     (
      --  Shadow transfer has not been requested
      VALUE1,
      --  Shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S2SS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 2 Dither shadow transfer status
   type GCST_S2DSS_Field is
     (
      --  Dither shadow transfer has not been requested
      VALUE1,
      --  Dither shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S2DSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 2 Prescaler shadow transfer status
   type GCST_S2PSS_Field is
     (
      --  Prescaler shadow transfer has not been requested
      VALUE1,
      --  Prescaler shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S2PSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 3 shadow transfer status
   type GCST_S3SS_Field is
     (
      --  Shadow transfer has not been requested
      VALUE1,
      --  Shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S3SS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 3 Dither shadow transfer status
   type GCST_S3DSS_Field is
     (
      --  Dither shadow transfer has not been requested
      VALUE1,
      --  Dither shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S3DSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Slice 3 Prescaler shadow transfer status
   type GCST_S3PSS_Field is
     (
      --  Prescaler shadow transfer has not been requested
      VALUE1,
      --  Prescaler shadow transfer has been requested
      VALUE2)
     with Size => 1;
   for GCST_S3PSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Channel status
   type GCST_Register is record
      --  Read-only. Slice 0 shadow transfer status
      S0SS           : GCST_S0SS_Field;
      --  Read-only. Slice 0 Dither shadow transfer status
      S0DSS          : GCST_S0DSS_Field;
      --  Read-only. Slice 0 Prescaler shadow transfer status
      S0PSS          : GCST_S0PSS_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Slice 1 shadow transfer status
      S1SS           : GCST_S1SS_Field;
      --  Read-only. Slice 1 Dither shadow transfer status
      S1DSS          : GCST_S1DSS_Field;
      --  Read-only. Slice 1 Prescaler shadow transfer status
      S1PSS          : GCST_S1PSS_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Slice 2 shadow transfer status
      S2SS           : GCST_S2SS_Field;
      --  Read-only. Slice 2 Dither shadow transfer status
      S2DSS          : GCST_S2DSS_Field;
      --  Read-only. Slice 2 Prescaler shadow transfer status
      S2PSS          : GCST_S2PSS_Field;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Slice 3 shadow transfer status
      S3SS           : GCST_S3SS_Field;
      --  Read-only. Slice 3 Dither shadow transfer status
      S3DSS          : GCST_S3DSS_Field;
      --  Read-only. Slice 3 Prescaler shadow transfer status
      S3PSS          : GCST_S3PSS_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Slice 0 compare channel 1 status bit
      CC80ST1        : Boolean;
      --  Read-only. Slice 1 compare channel 1 status bit
      CC81ST1        : Boolean;
      --  Read-only. Slice 2 compare channel 1 status bit
      CC82ST1        : Boolean;
      --  Read-only. Slice 3 compare channel 1 status bit
      CC83ST1        : Boolean;
      --  Read-only. Slice 0 compare channel 2 status bit
      CC80ST2        : Boolean;
      --  Read-only. Slice 1 compare channel 2 status bit
      CC81ST2        : Boolean;
      --  Read-only. Slice 2 compare channel 2 status bit
      CC82ST2        : Boolean;
      --  Read-only. Slice 3 compare channel 2 status bit
      CC83ST2        : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCST_Register use record
      S0SS           at 0 range 0 .. 0;
      S0DSS          at 0 range 1 .. 1;
      S0PSS          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      S1SS           at 0 range 4 .. 4;
      S1DSS          at 0 range 5 .. 5;
      S1PSS          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      S2SS           at 0 range 8 .. 8;
      S2DSS          at 0 range 9 .. 9;
      S2PSS          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      S3SS           at 0 range 12 .. 12;
      S3DSS          at 0 range 13 .. 13;
      S3PSS          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CC80ST1        at 0 range 16 .. 16;
      CC81ST1        at 0 range 17 .. 17;
      CC82ST1        at 0 range 18 .. 18;
      CC83ST1        at 0 range 19 .. 19;
      CC80ST2        at 0 range 20 .. 20;
      CC81ST2        at 0 range 21 .. 21;
      CC82ST2        at 0 range 22 .. 22;
      CC83ST2        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Parity Checker Automatic start/stop selector
   type GPCHK_PACS_Field is
     (
      --  CC80
      VALUE1,
      --  CC81
      VALUE2,
      --  CC82
      VALUE3,
      --  CC83
      VALUE4)
     with Size => 2;
   for GPCHK_PACS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Driver Input signal selector
   type GPCHK_PISEL_Field is
     (
      --  CC8x.GP01 - driver output is connected to event 1 of slice 0
      VALUE1,
      --  CC8x.GP11 - drive output is connected to event 1 of slice 1
      VALUE2,
      --  CC8x.GP21 - driver output is connected to event 1 of slice 2
      VALUE3,
      --  CC8x.GP31 - driver output is connected to event 1 of slice 3
      VALUE4)
     with Size => 2;
   for GPCHK_PISEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Parity Checker Delay Input Selector
   type GPCHK_PCDS_Field is
     (
      --  CCU8x.IGBTA
      VALUE1,
      --  CCU8x.IGBTB
      VALUE2,
      --  CCU8x.IGBTC
      VALUE3,
      --  CCU8x.IGBTD
      VALUE4)
     with Size => 2;
   for GPCHK_PCDS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Parity Checker type selector
   type GPCHK_PCTS_Field is
     (
      --  Even parity enabled
      VALUE1,
      --  Odd parity enabled
      VALUE2)
     with Size => 1;
   for GPCHK_PCTS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  GPCHK_PCSEL array element
   subtype GPCHK_PCSEL_Element is HAL.UInt4;

   --  GPCHK_PCSEL array
   type GPCHK_PCSEL_Field_Array is array (0 .. 3) of GPCHK_PCSEL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for GPCHK_PCSEL
   type GPCHK_PCSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCSEL as a value
            Val : HAL.UInt16;
         when True =>
            --  PCSEL as an array
            Arr : GPCHK_PCSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPCHK_PCSEL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Parity Checker Configuration
   type GPCHK_Register is record
      --  Parity Checker Automatic start/stop
      PASE          : Boolean := False;
      --  Parity Checker Automatic start/stop selector
      PACS          : GPCHK_PACS_Field := NRF_SVD.CCU8.VALUE1;
      --  Driver Input signal selector
      PISEL         : GPCHK_PISEL_Field := NRF_SVD.CCU8.VALUE1;
      --  Parity Checker Delay Input Selector
      PCDS          : GPCHK_PCDS_Field := NRF_SVD.CCU8.VALUE1;
      --  Parity Checker type selector
      PCTS          : GPCHK_PCTS_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_8_14 : HAL.UInt7 := 16#0#;
      --  Read-only. Parity Checker XOR status
      PCST          : Boolean := False;
      --  Parity Checker Slice 0 output selection
      PCSEL         : GPCHK_PCSEL_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPCHK_Register use record
      PASE          at 0 range 0 .. 0;
      PACS          at 0 range 1 .. 2;
      PISEL         at 0 range 3 .. 4;
      PCDS          at 0 range 5 .. 6;
      PCTS          at 0 range 7 .. 7;
      Reserved_8_14 at 0 range 8 .. 14;
      PCST          at 0 range 15 .. 15;
      PCSEL         at 0 range 16 .. 31;
   end record;

   subtype MIDR_MODR_Field is HAL.UInt8;
   subtype MIDR_MODT_Field is HAL.UInt8;
   subtype MIDR_MODN_Field is HAL.UInt16;

   --  Module Identification
   type MIDR_Register is record
      --  Read-only. Module Revision
      MODR : MIDR_MODR_Field;
      --  Read-only. Module Type
      MODT : MIDR_MODT_Field;
      --  Read-only. Module Number
      MODN : MIDR_MODN_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIDR_Register use record
      MODR at 0 range 0 .. 7;
      MODT at 0 range 8 .. 15;
      MODN at 0 range 16 .. 31;
   end record;

   --  Event 0 signal selection
   type INS_EV0IS_Field is
     (
      --  CCU8x.INyA
      VALUE1,
      --  CCU8x.INyB
      VALUE2,
      --  CCU8x.INyC
      VALUE3,
      --  CCU8x.INyD
      VALUE4,
      --  CCU8x.INyE
      VALUE5,
      --  CCU8x.INyF
      VALUE6,
      --  CCU8x.INyG
      VALUE7,
      --  CCU8x.INyH
      VALUE8,
      --  CCU8x.INyI
      VALUE9,
      --  CCU8x.INyJ
      VALUE10,
      --  CCU8x.INyK
      VALUE11,
      --  CCU8x.INyL
      VALUE12,
      --  CCU8x.INyM
      VALUE13,
      --  CCU8x.INyN
      VALUE14,
      --  CCU8x.INyO
      VALUE15,
      --  CCU8x.INyP
      VALUE16)
     with Size => 4;
   for INS_EV0IS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 8,
      VALUE10 => 9,
      VALUE11 => 10,
      VALUE12 => 11,
      VALUE13 => 12,
      VALUE14 => 13,
      VALUE15 => 14,
      VALUE16 => 15);

   --  Event 1 signal selection
   type INS_EV1IS_Field is
     (
      --  CCU8x.INyA
      VALUE1,
      --  CCU8x.INyB
      VALUE2,
      --  CCU8x.INyC
      VALUE3,
      --  CCU8x.INyD
      VALUE4,
      --  CCU8x.INyE
      VALUE5,
      --  CCU8x.INyF
      VALUE6,
      --  CCU8x.INyG
      VALUE7,
      --  CCU8x.INyH
      VALUE8,
      --  CCU8x.INyI
      VALUE9,
      --  CCU8x.INyJ
      VALUE10,
      --  CCU8x.INyK
      VALUE11,
      --  CCU8x.INyL
      VALUE12,
      --  CCU8x.INyM
      VALUE13,
      --  CCU8x.INyN
      VALUE14,
      --  CCU8x.INyO
      VALUE15,
      --  CCU8x.INyP
      VALUE16)
     with Size => 4;
   for INS_EV1IS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 8,
      VALUE10 => 9,
      VALUE11 => 10,
      VALUE12 => 11,
      VALUE13 => 12,
      VALUE14 => 13,
      VALUE15 => 14,
      VALUE16 => 15);

   --  Event 2 signal selection
   type INS_EV2IS_Field is
     (
      --  CCU8x.INyA
      VALUE1,
      --  CCU8x.INyB
      VALUE2,
      --  CCU8x.INyC
      VALUE3,
      --  CCU8x.INyD
      VALUE4,
      --  CCU8x.INyE
      VALUE5,
      --  CCU8x.INyF
      VALUE6,
      --  CCU8x.INyG
      VALUE7,
      --  CCU8x.INyH
      VALUE8,
      --  CCU8x.INyI
      VALUE9,
      --  CCU8x.INyJ
      VALUE10,
      --  CCU8x.INyK
      VALUE11,
      --  CCU8x.INyL
      VALUE12,
      --  CCU8x.INyM
      VALUE13,
      --  CCU8x.INyN
      VALUE14,
      --  CCU8x.INyO
      VALUE15,
      --  CCU8x.INyP
      VALUE16)
     with Size => 4;
   for INS_EV2IS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 8,
      VALUE10 => 9,
      VALUE11 => 10,
      VALUE12 => 11,
      VALUE13 => 12,
      VALUE14 => 13,
      VALUE15 => 14,
      VALUE16 => 15);

   --  Event 0 Edge Selection
   type INS_EV0EM_Field is
     (
      --  No action
      VALUE1,
      --  Signal active on rising edge
      VALUE2,
      --  Signal active on falling edge
      VALUE3,
      --  Signal active on both edges
      VALUE4)
     with Size => 2;
   for INS_EV0EM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 1 Edge Selection
   type INS_EV1EM_Field is
     (
      --  No action
      VALUE1,
      --  Signal active on rising edge
      VALUE2,
      --  Signal active on falling edge
      VALUE3,
      --  Signal active on both edges
      VALUE4)
     with Size => 2;
   for INS_EV1EM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 2 Edge Selection
   type INS_EV2EM_Field is
     (
      --  No action
      VALUE1,
      --  Signal active on rising edge
      VALUE2,
      --  Signal active on falling edge
      VALUE3,
      --  Signal active on both edges
      VALUE4)
     with Size => 2;
   for INS_EV2EM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 0 Level Selection
   type INS_EV0LM_Field is
     (
      --  Active on HIGH level
      VALUE1,
      --  Active on LOW level
      VALUE2)
     with Size => 1;
   for INS_EV0LM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 1 Level Selection
   type INS_EV1LM_Field is
     (
      --  Active on HIGH level
      VALUE1,
      --  Active on LOW level
      VALUE2)
     with Size => 1;
   for INS_EV1LM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 2 Level Selection
   type INS_EV2LM_Field is
     (
      --  Active on HIGH level
      VALUE1,
      --  Active on LOW level
      VALUE2)
     with Size => 1;
   for INS_EV2LM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 0 Low Pass Filter Configuration
   type INS_LPF0M_Field is
     (
      --  LPF is disabled
      VALUE1,
      --  3 clock cycles of fCCU8
      VALUE2,
      --  5 clock cycles of fCCU8
      VALUE3,
      --  7 clock cycles of fCCU8
      VALUE4)
     with Size => 2;
   for INS_LPF0M_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 1 Low Pass Filter Configuration
   type INS_LPF1M_Field is
     (
      --  LPF is disabled
      VALUE1,
      --  3 clock cycles of fCCU8
      VALUE2,
      --  5 clock cycles of fCCU8
      VALUE3,
      --  7 clock cycles of fCCU8
      VALUE4)
     with Size => 2;
   for INS_LPF1M_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 2 Low Pass Filter Configuration
   type INS_LPF2M_Field is
     (
      --  LPF is disabled
      VALUE1,
      --  3 clock cycles of fCCU8
      VALUE2,
      --  5 clock cycles of fCCU8
      VALUE3,
      --  7 clock cycles of fCCU8
      VALUE4)
     with Size => 2;
   for INS_LPF2M_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Input Selector Configuration
   type INS_Register is record
      --  Event 0 signal selection
      EV0IS          : INS_EV0IS_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 1 signal selection
      EV1IS          : INS_EV1IS_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 2 signal selection
      EV2IS          : INS_EV2IS_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Event 0 Edge Selection
      EV0EM          : INS_EV0EM_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 1 Edge Selection
      EV1EM          : INS_EV1EM_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 2 Edge Selection
      EV2EM          : INS_EV2EM_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 0 Level Selection
      EV0LM          : INS_EV0LM_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 1 Level Selection
      EV1LM          : INS_EV1LM_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 2 Level Selection
      EV2LM          : INS_EV2LM_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 0 Low Pass Filter Configuration
      LPF0M          : INS_LPF0M_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 1 Low Pass Filter Configuration
      LPF1M          : INS_LPF1M_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 2 Low Pass Filter Configuration
      LPF2M          : INS_LPF2M_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INS_Register use record
      EV0IS          at 0 range 0 .. 3;
      EV1IS          at 0 range 4 .. 7;
      EV2IS          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      EV0EM          at 0 range 16 .. 17;
      EV1EM          at 0 range 18 .. 19;
      EV2EM          at 0 range 20 .. 21;
      EV0LM          at 0 range 22 .. 22;
      EV1LM          at 0 range 23 .. 23;
      EV2LM          at 0 range 24 .. 24;
      LPF0M          at 0 range 25 .. 26;
      LPF1M          at 0 range 27 .. 28;
      LPF2M          at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  External Start Functionality Selector
   type CMC_STRTS_Field is
     (
      --  External Start Function deactivated
      VALUE1,
      --  External Start Function triggered by Event 0
      VALUE2,
      --  External Start Function triggered by Event 1
      VALUE3,
      --  External Start Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_STRTS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Stop Functionality Selector
   type CMC_ENDS_Field is
     (
      --  External Stop Function deactivated
      VALUE1,
      --  External Stop Function triggered by Event 0
      VALUE2,
      --  External Stop Function triggered by Event 1
      VALUE3,
      --  External Stop Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_ENDS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Capture 0 Functionality Selector
   type CMC_CAP0S_Field is
     (
      --  External Capture 0 Function deactivated
      VALUE1,
      --  External Capture 0 Function triggered by Event 0
      VALUE2,
      --  External Capture 0 Function triggered by Event 1
      VALUE3,
      --  External Capture 0 Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_CAP0S_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Capture 1 Functionality Selector
   type CMC_CAP1S_Field is
     (
      --  External Capture 1 Function deactivated
      VALUE1,
      --  External Capture 1 Function triggered by Event 0
      VALUE2,
      --  External Capture 1 Function triggered by Event 1
      VALUE3,
      --  External Capture 1 Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_CAP1S_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Gate Functionality Selector
   type CMC_GATES_Field is
     (
      --  External Gating Function deactivated
      VALUE1,
      --  External Gating Function triggered by Event 0
      VALUE2,
      --  External Gating Function triggered by Event 1
      VALUE3,
      --  External Gating Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_GATES_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Up/Down Functionality Selector
   type CMC_UDS_Field is
     (
      --  External Up/Down Function deactivated
      VALUE1,
      --  External Up/Down Function triggered by Event 0
      VALUE2,
      --  External Up/Down Function triggered by Event 1
      VALUE3,
      --  External Up/Down Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_UDS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   subtype CMC_LDS_Field is HAL.UInt2;

   --  External Count Selector
   type CMC_CNTS_Field is
     (
      --  External Count Function deactivated
      VALUE1,
      --  External Count Function triggered by Event 0
      VALUE2,
      --  External Count Function triggered by Event 1
      VALUE3,
      --  External Count Function triggered by Event 2
      VALUE4)
     with Size => 2;
   for CMC_CNTS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Override Function Selector
   type CMC_OFS_Field is
     (
      --  Override functionality disabled
      VALUE1,
      --  Status bit trigger override connected to Event 1; Status bit value
      --  override connected to Event 2
      VALUE2)
     with Size => 1;
   for CMC_OFS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Function Selector
   type CMC_TS_Field is
     (
      --  Trap function disabled
      VALUE1,
      --  TRAP function connected to Event 2
      VALUE2)
     with Size => 1;
   for CMC_TS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype CMC_MOS_Field is HAL.UInt2;

   --  Timer Concatenation Enable
   type CMC_TCE_Field is
     (
      --  Timer concatenation is disabled
      VALUE1,
      --  Timer concatenation is enabled
      VALUE2)
     with Size => 1;
   for CMC_TCE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Connection Matrix Control
   type CMC_Register is record
      --  External Start Functionality Selector
      STRTS          : CMC_STRTS_Field := NRF_SVD.CCU8.VALUE1;
      --  External Stop Functionality Selector
      ENDS           : CMC_ENDS_Field := NRF_SVD.CCU8.VALUE1;
      --  External Capture 0 Functionality Selector
      CAP0S          : CMC_CAP0S_Field := NRF_SVD.CCU8.VALUE1;
      --  External Capture 1 Functionality Selector
      CAP1S          : CMC_CAP1S_Field := NRF_SVD.CCU8.VALUE1;
      --  External Gate Functionality Selector
      GATES          : CMC_GATES_Field := NRF_SVD.CCU8.VALUE1;
      --  External Up/Down Functionality Selector
      UDS            : CMC_UDS_Field := NRF_SVD.CCU8.VALUE1;
      --  External Timer Load Functionality Selector
      LDS            : CMC_LDS_Field := 16#0#;
      --  External Count Selector
      CNTS           : CMC_CNTS_Field := NRF_SVD.CCU8.VALUE1;
      --  Override Function Selector
      OFS            : CMC_OFS_Field := NRF_SVD.CCU8.VALUE1;
      --  Trap Function Selector
      TS             : CMC_TS_Field := NRF_SVD.CCU8.VALUE1;
      --  External Modulation Functionality Selector
      MOS            : CMC_MOS_Field := 16#0#;
      --  Timer Concatenation Enable
      TCE            : CMC_TCE_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMC_Register use record
      STRTS          at 0 range 0 .. 1;
      ENDS           at 0 range 2 .. 3;
      CAP0S          at 0 range 4 .. 5;
      CAP1S          at 0 range 6 .. 7;
      GATES          at 0 range 8 .. 9;
      UDS            at 0 range 10 .. 11;
      LDS            at 0 range 12 .. 13;
      CNTS           at 0 range 14 .. 15;
      OFS            at 0 range 16 .. 16;
      TS             at 0 range 17 .. 17;
      MOS            at 0 range 18 .. 19;
      TCE            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Timer Run Bit
   type TCST_TRB_Field is
     (
      --  Timer is stopped
      VALUE1,
      --  Timer is running
      VALUE2)
     with Size => 1;
   for TCST_TRB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Timer Counting Direction
   type TCST_CDIR_Field is
     (
      --  Timer is counting up
      VALUE1,
      --  Timer is counting down
      VALUE2)
     with Size => 1;
   for TCST_CDIR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time Counter 1 Run bit
   type TCST_DTR1_Field is
     (
      --  Dead Time counter is idle
      VALUE1,
      --  Dead Time counter is running
      VALUE2)
     with Size => 1;
   for TCST_DTR1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  TCST_DTR array
   type TCST_DTR_Field_Array is array (1 .. 2) of TCST_DTR1_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TCST_DTR
   type TCST_DTR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DTR as a value
            Val : HAL.UInt2;
         when True =>
            --  DTR as an array
            Arr : TCST_DTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TCST_DTR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Slice Timer Status
   type TCST_Register is record
      --  Read-only. Timer Run Bit
      TRB           : TCST_TRB_Field;
      --  Read-only. Timer Counting Direction
      CDIR          : TCST_CDIR_Field;
      --  unspecified
      Reserved_2_2  : HAL.Bit;
      --  Read-only. Dead Time Counter 1 Run bit
      DTR           : TCST_DTR_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCST_Register use record
      TRB           at 0 range 0 .. 0;
      CDIR          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      DTR           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Slice Timer Run Set
   type TCSET_Register is record
      --  Write-only. Timer Run Bit set
      TRBS          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCSET_Register use record
      TRBS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Slice Timer Clear
   type TCCLR_Register is record
      --  Write-only. Timer Run Bit Clear
      TRBC          : Boolean := False;
      --  Write-only. Timer Clear
      TCC           : Boolean := False;
      --  Write-only. Dither Counter Clear
      DITC          : Boolean := False;
      --  Write-only. Dead Time Counter 1 Clear
      DTC1C         : Boolean := False;
      --  Write-only. Dead Time Counter 2 Clear
      DTC2C         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCCLR_Register use record
      TRBC          at 0 range 0 .. 0;
      TCC           at 0 range 1 .. 1;
      DITC          at 0 range 2 .. 2;
      DTC1C         at 0 range 3 .. 3;
      DTC2C         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Timer Counting Mode
   type TC_TCM_Field is
     (
      --  Edge aligned mode
      VALUE1,
      --  Center aligned mode
      VALUE2)
     with Size => 1;
   for TC_TCM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Timer Single Shot Mode
   type TC_TSSM_Field is
     (
      --  Single shot mode is disabled
      VALUE1,
      --  Single shot mode is enabled
      VALUE2)
     with Size => 1;
   for TC_TSSM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Capture Compare Mode
   type TC_CMOD_Field is
     (
      --  Compare Mode
      VALUE1,
      --  Capture Mode
      VALUE2)
     with Size => 1;
   for TC_CMOD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Extended Capture Mode
   type TC_ECM_Field is
     (
      --  Normal Capture Mode. Clear of the Full Flag of each capture register
      --  is done by accessing the registers individually only.
      VALUE1,
      --  Extended Capture Mode. Clear of the Full Flag of each capture
      --  register is done not only by accessing the individual registers but
      --  also by accessing the ECRD register. When reading the ECRD register,
      --  only the capture register register full flag pointed by the VPTR is
      --  cleared
      VALUE2)
     with Size => 1;
   for TC_ECM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear on Capture Control
   type TC_CAPC_Field is
     (
      --  Timer is never cleared on a capture event
      VALUE1,
      --  Timer is cleared on a capture event into capture registers 2 and 3.
      --  (When SCE = 1#, Timer is always cleared in a capture event)
      VALUE2,
      --  Timer is cleared on a capture event into capture registers 0 and 1.
      --  (When SCE = 1#, Timer is always cleared in a capture event)
      VALUE3,
      --  Timer is always cleared in a capture event.
      VALUE4)
     with Size => 2;
   for TC_CAPC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Timer Load selector
   type TC_TLS_Field is
     (
      --  Timer is loaded with the value of CR1
      VALUE1,
      --  Timer is loaded with the value of CR2
      VALUE2)
     with Size => 1;
   for TC_TLS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Extended Stop Function Control
   type TC_ENDM_Field is
     (
      --  Clears the timer run bit only (default stop)
      VALUE1,
      --  Clears the timer only (flush)
      VALUE2,
      --  Clears the timer and run bit (flush/stop)
      VALUE3)
     with Size => 2;
   for TC_ENDM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Extended Start Function Control
   type TC_STRM_Field is
     (
      --  Sets run bit only (default start)
      VALUE1,
      --  Clears the timer and sets run bit, if not set (flush/start)
      VALUE2)
     with Size => 1;
   for TC_STRM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Equal Capture Event enable
   type TC_SCE_Field is
     (
      --  Capture into CC8yC0VThis register contains the values associated with
      --  the Capture 0 field./CC8yC1VThis register contains the values
      --  associated with the Capture 1 field. registers control by CCycapt0
      --  and capture into CC8yC3VThis register contains the values associated
      --  with the Capture 3 field./CC8yC2VThis register contains the values
      --  associated with the Capture 2 field. control by CCycapt1
      VALUE1,
      --  Capture into CC8yC0VThis register contains the values associated with
      --  the Capture 0 field./CC8yC1VThis register contains the values
      --  associated with the Capture 1 field. and CC8yC3VThis register
      --  contains the values associated with the Capture 3 field./CC8yC2VThis
      --  register contains the values associated with the Capture 2 field.
      --  control by CCycapt1
      VALUE2)
     with Size => 1;
   for TC_SCE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Continuous Capture Enable
   type TC_CCS_Field is
     (
      --  The capture into a specific capture register is done with the rules
      --  linked with the full flags, described at .
      VALUE1,
      --  The capture into the capture registers is always done regardless of
      --  the full flag status (even if the register has not been read back).
      VALUE2)
     with Size => 1;
   for TC_CCS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dither Enable
   type TC_DITHE_Field is
     (
      --  Dither is disabled
      VALUE1,
      --  Dither is applied to the Period
      VALUE2,
      --  Dither is applied to the Compare
      VALUE3,
      --  Dither is applied to the Period and Compare
      VALUE4)
     with Size => 2;
   for TC_DITHE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Dither input selector
   type TC_DIM_Field is
     (
      --  Slice is using it own dither unit
      VALUE1,
      --  Slice is connected to the dither unit of slice 0.
      VALUE2)
     with Size => 1;
   for TC_DIM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Floating Prescaler enable
   type TC_FPE_Field is
     (
      --  Floating prescaler mode is disabled
      VALUE1,
      --  Floating prescaler mode is enabled
      VALUE2)
     with Size => 1;
   for TC_FPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  TRAP enable for CCU8x.OUTy0
   type TC_TRAPE0_Field is
     (
      --  TRAP functionality has no effect on the CCU8x.OUTy0 output
      VALUE1,
      --  TRAP functionality affects the CCU8x.OUTy0 output
      VALUE2)
     with Size => 1;
   for TC_TRAPE0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  TC_TRAPE array
   type TC_TRAPE_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for TC_TRAPE
   type TC_TRAPE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRAPE as a value
            Val : HAL.UInt3;
         when True =>
            --  TRAPE as an array
            Arr : TC_TRAPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for TC_TRAPE_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  TRAP Synchronization Enable
   type TC_TRPSE_Field is
     (
      --  Exiting from TRAP state isn't synchronized with the PWM signal
      VALUE1,
      --  Exiting from TRAP state is synchronized with the PWM signal
      VALUE2)
     with Size => 1;
   for TC_TRPSE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  TRAP State Clear Control
   type TC_TRPSW_Field is
     (
      --  The slice exits the TRAP state automatically when the TRAP condition
      --  is not present (Trap state cleared by HW and SW)
      VALUE1,
      --  The TRAP state can only be exited by a SW request.
      VALUE2)
     with Size => 1;
   for TC_TRPSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Modulation Synchronization
   type TC_EMS_Field is
     (
      --  External Modulation functionality is not synchronized with the PWM
      --  signal
      VALUE1,
      --  External Modulation functionality is synchronized with the PWM signal
      VALUE2)
     with Size => 1;
   for TC_EMS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Modulation Type
   type TC_EMT_Field is
     (
      --  External Modulation functionality is clearing the CC8ySTx bits.
      VALUE1,
      --  External Modulation functionality is gating the outputs.
      VALUE2)
     with Size => 1;
   for TC_EMT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi Channel Mode Enable for Channel 1
   type TC_MCME1_Field is
     (
      --  Multi Channel Mode in Channel 1 is disabled
      VALUE1,
      --  Multi Channel Mode in Channel 1 is enabled
      VALUE2)
     with Size => 1;
   for TC_MCME1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Multi Channel Mode Enable for Channel 2
   type TC_MCME2_Field is
     (
      --  Multi Channel Mode in Channel 2 is disabled
      VALUE1,
      --  Multi Channel Mode in Channel 2 is enabled
      VALUE2)
     with Size => 1;
   for TC_MCME2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Modulation Channel enable
   type TC_EME_Field is
     (
      --  External Modulation functionality doesn't affect any channel
      VALUE1,
      --  External Modulation only applied on channel 1
      VALUE2,
      --  External Modulation only applied on channel 2
      VALUE3,
      --  External Modulation applied on both channels
      VALUE4)
     with Size => 2;
   for TC_EME_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Status bit output selector
   type TC_STOS_Field is
     (
      --  CC8yST1 forward to CCU8x.STy
      VALUE1,
      --  CC8yST2 forward to CCU8x.STy
      VALUE2,
      --  CC8yST1 AND CC8yST2 forward to CCU8x.STy
      VALUE3,
      --  CC8yST1 OR CC8yST2 forward to CCU8x.STy
      VALUE4)
     with Size => 2;
   for TC_STOS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Slice Timer Control
   type TC_Register is record
      --  Timer Counting Mode
      TCM            : TC_TCM_Field := NRF_SVD.CCU8.VALUE1;
      --  Timer Single Shot Mode
      TSSM           : TC_TSSM_Field := NRF_SVD.CCU8.VALUE1;
      --  Shadow Transfer on Clear
      CLST           : Boolean := False;
      --  Read-only. Capture Compare Mode
      CMOD           : TC_CMOD_Field := NRF_SVD.CCU8.VALUE1;
      --  Extended Capture Mode
      ECM            : TC_ECM_Field := NRF_SVD.CCU8.VALUE1;
      --  Clear on Capture Control
      CAPC           : TC_CAPC_Field := NRF_SVD.CCU8.VALUE1;
      --  Timer Load selector
      TLS            : TC_TLS_Field := NRF_SVD.CCU8.VALUE1;
      --  Extended Stop Function Control
      ENDM           : TC_ENDM_Field := NRF_SVD.CCU8.VALUE1;
      --  Extended Start Function Control
      STRM           : TC_STRM_Field := NRF_SVD.CCU8.VALUE1;
      --  Equal Capture Event enable
      SCE            : TC_SCE_Field := NRF_SVD.CCU8.VALUE1;
      --  Continuous Capture Enable
      CCS            : TC_CCS_Field := NRF_SVD.CCU8.VALUE1;
      --  Dither Enable
      DITHE          : TC_DITHE_Field := NRF_SVD.CCU8.VALUE1;
      --  Dither input selector
      DIM            : TC_DIM_Field := NRF_SVD.CCU8.VALUE1;
      --  Floating Prescaler enable
      FPE            : TC_FPE_Field := NRF_SVD.CCU8.VALUE1;
      --  TRAP enable for CCU8x.OUTy0
      TRAPE0         : TC_TRAPE0_Field := NRF_SVD.CCU8.VALUE1;
      --  TRAP enable for CCU8x.OUTy1
      TRAPE          : TC_TRAPE_Field := (As_Array => False, Val => 16#0#);
      --  TRAP Synchronization Enable
      TRPSE          : TC_TRPSE_Field := NRF_SVD.CCU8.VALUE1;
      --  TRAP State Clear Control
      TRPSW          : TC_TRPSW_Field := NRF_SVD.CCU8.VALUE1;
      --  External Modulation Synchronization
      EMS            : TC_EMS_Field := NRF_SVD.CCU8.VALUE1;
      --  External Modulation Type
      EMT            : TC_EMT_Field := NRF_SVD.CCU8.VALUE1;
      --  Multi Channel Mode Enable for Channel 1
      MCME1          : TC_MCME1_Field := NRF_SVD.CCU8.VALUE1;
      --  Multi Channel Mode Enable for Channel 2
      MCME2          : TC_MCME2_Field := NRF_SVD.CCU8.VALUE1;
      --  External Modulation Channel enable
      EME            : TC_EME_Field := NRF_SVD.CCU8.VALUE4;
      --  Status bit output selector
      STOS           : TC_STOS_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_Register use record
      TCM            at 0 range 0 .. 0;
      TSSM           at 0 range 1 .. 1;
      CLST           at 0 range 2 .. 2;
      CMOD           at 0 range 3 .. 3;
      ECM            at 0 range 4 .. 4;
      CAPC           at 0 range 5 .. 6;
      TLS            at 0 range 7 .. 7;
      ENDM           at 0 range 8 .. 9;
      STRM           at 0 range 10 .. 10;
      SCE            at 0 range 11 .. 11;
      CCS            at 0 range 12 .. 12;
      DITHE          at 0 range 13 .. 14;
      DIM            at 0 range 15 .. 15;
      FPE            at 0 range 16 .. 16;
      TRAPE0         at 0 range 17 .. 17;
      TRAPE          at 0 range 18 .. 20;
      TRPSE          at 0 range 21 .. 21;
      TRPSW          at 0 range 22 .. 22;
      EMS            at 0 range 23 .. 23;
      EMT            at 0 range 24 .. 24;
      MCME1          at 0 range 25 .. 25;
      MCME2          at 0 range 26 .. 26;
      EME            at 0 range 27 .. 28;
      STOS           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Output Passive Level for CCU8x.OUTy0
   type PSL_PSL11_Field is
     (
      --  Passive Level is LOW
      VALUE1,
      --  Passive Level is HIGH
      VALUE2)
     with Size => 1;
   for PSL_PSL11_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PSL array
   type PSL_Field_Array is array (11 .. 14) of PSL_PSL11_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for PSL
   type PSL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSL as a value
            Val : HAL.UInt4;
         when True =>
            --  PSL as an array
            Arr : PSL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PSL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Passive Level Config
   type PSL_Register is record
      --  Output Passive Level for CCU8x.OUTy0
      PSL           : PSL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSL_Register use record
      PSL           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DIT_DCV_Field is HAL.UInt4;
   subtype DIT_DCNT_Field is HAL.UInt4;

   --  Dither Config
   type DIT_Register is record
      --  Read-only. Dither compare Value
      DCV            : DIT_DCV_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Dither counter actual value
      DCNT           : DIT_DCNT_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIT_Register use record
      DCV            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DCNT           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DITS_DCVS_Field is HAL.UInt4;

   --  Dither Shadow Register
   type DITS_Register is record
      --  Dither Shadow Compare Value
      DCVS          : DITS_DCVS_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DITS_Register use record
      DCVS          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PSC_PSIV_Field is HAL.UInt4;

   --  Prescaler Control
   type PSC_Register is record
      --  Prescaler Initial Value
      PSIV          : PSC_PSIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSC_Register use record
      PSIV          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FPC_PCMP_Field is HAL.UInt4;
   subtype FPC_PVAL_Field is HAL.UInt4;

   --  Floating Prescaler Control
   type FPC_Register is record
      --  Read-only. Floating Prescaler Compare Value
      PCMP           : FPC_PCMP_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Actual Prescaler Value
      PVAL           : FPC_PVAL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPC_Register use record
      PCMP           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PVAL           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype FPCS_PCMP_Field is HAL.UInt4;

   --  Floating Prescaler Shadow
   type FPCS_Register is record
      --  Floating Prescaler Shadow Compare Value
      PCMP          : FPCS_PCMP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPCS_Register use record
      PCMP          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PR_PR_Field is HAL.UInt16;

   --  Timer Period Value
   type PR_Register is record
      --  Read-only. Period Register
      PR             : PR_PR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PRS_PRS_Field is HAL.UInt16;

   --  Timer Shadow Period Value
   type PRS_Register is record
      --  Period Register
      PRS            : PRS_PRS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRS_Register use record
      PRS            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR1_CR1_Field is HAL.UInt16;

   --  Channel 1 Compare Value
   type CR1_Register is record
      --  Read-only. Compare Register for Channel 1
      CR1            : CR1_CR1_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CR1            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR1S_CR1S_Field is HAL.UInt16;

   --  Channel 1 Compare Shadow Value
   type CR1S_Register is record
      --  Shadow Compare Register for Channel 1
      CR1S           : CR1S_CR1S_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1S_Register use record
      CR1S           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2_CR2_Field is HAL.UInt16;

   --  Channel 2 Compare Value
   type CR2_Register is record
      --  Read-only. Compare Register for Channel 2
      CR2            : CR2_CR2_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      CR2            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2S_CR2S_Field is HAL.UInt16;

   --  Channel 2 Compare Shadow Value
   type CR2S_Register is record
      --  Shadow Compare Register for Channel 2
      CR2S           : CR2S_CR2S_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2S_Register use record
      CR2S           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Asymmetric PWM mode Enable
   type CHC_ASE_Field is
     (
      --  Asymmetric PWM is disabled
      VALUE1,
      --  Asymmetric PWM is enabled
      VALUE2)
     with Size => 1;
   for CHC_ASE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Output selector for CCU8x.OUTy0
   type CHC_OCS1_Field is
     (
      --  CC8yST1 signal path is connected to the CCU8x.OUTy0
      VALUE1,
      --  Inverted CC8yST1 signal path is connected to the CCU8x.OUTy0
      VALUE2)
     with Size => 1;
   for CHC_OCS1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Output selector for CCU8x.OUTy1
   type CHC_OCS2_Field is
     (
      --  Inverted CC8yST1 signal path is connected to the CCU8x.OUTy1
      VALUE1,
      --  CC8yST1 signal path is connected to the CCU8x.OUTy1
      VALUE2)
     with Size => 1;
   for CHC_OCS2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Output selector for CCU8x.OUTy2
   type CHC_OCS3_Field is
     (
      --  CC8yST2 signal path is connected to the CCU8x.OUTy2
      VALUE1,
      --  Inverted CCST2 signal path is connected to the CCU8x.OUTy2
      VALUE2)
     with Size => 1;
   for CHC_OCS3_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Output selector for CCU8x.OUTy3
   type CHC_OCS4_Field is
     (
      --  Inverted CC8yST2 signal path is connected to the CCU8x.OUTy3
      VALUE1,
      --  CC8yST2 signal path is connected to the CCU8x.OUTy3
      VALUE2)
     with Size => 1;
   for CHC_OCS4_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel Control
   type CHC_Register is record
      --  Asymmetric PWM mode Enable
      ASE           : CHC_ASE_Field := NRF_SVD.CCU8.VALUE1;
      --  Output selector for CCU8x.OUTy0
      OCS1          : CHC_OCS1_Field := NRF_SVD.CCU8.VALUE1;
      --  Output selector for CCU8x.OUTy1
      OCS2          : CHC_OCS2_Field := NRF_SVD.CCU8.VALUE1;
      --  Output selector for CCU8x.OUTy2
      OCS3          : CHC_OCS3_Field := NRF_SVD.CCU8.VALUE1;
      --  Output selector for CCU8x.OUTy3
      OCS4          : CHC_OCS4_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHC_Register use record
      ASE           at 0 range 0 .. 0;
      OCS1          at 0 range 1 .. 1;
      OCS2          at 0 range 2 .. 2;
      OCS3          at 0 range 3 .. 3;
      OCS4          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Dead Time Enable for Channel 1
   type DTC_DTE1_Field is
     (
      --  Dead Time for channel 1 is disabled
      VALUE1,
      --  Dead Time for channel 1 is enabled
      VALUE2)
     with Size => 1;
   for DTC_DTE1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time Enable for Channel 2
   type DTC_DTE2_Field is
     (
      --  Dead Time for channel 2 is disabled
      VALUE1,
      --  Dead Time for channel 2 is enabled
      VALUE2)
     with Size => 1;
   for DTC_DTE2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time Enable for CC8yST1
   type DTC_DCEN1_Field is
     (
      --  Dead Time for CC8yST1 path is disabled
      VALUE1,
      --  Dead Time for CC8yST1 path is enabled
      VALUE2)
     with Size => 1;
   for DTC_DCEN1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time Enable for inverted CC8yST1
   type DTC_DCEN2_Field is
     (
      --  Dead Time for inverted CC8yST1 path is disabled
      VALUE1,
      --  Dead Time for inverted CC8yST1 path is enabled
      VALUE2)
     with Size => 1;
   for DTC_DCEN2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time Enable for CC8yST2
   type DTC_DCEN3_Field is
     (
      --  Dead Time for CC8yST2 path is disabled
      VALUE1,
      --  Dead Time for CC8yST2 path is enabled
      VALUE2)
     with Size => 1;
   for DTC_DCEN3_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time Enable for inverted CC8yST2
   type DTC_DCEN4_Field is
     (
      --  Dead Time for inverted CC8yST2 path is disabled
      VALUE1,
      --  Dead Time for inverted CC8yST2 path is enabled
      VALUE2)
     with Size => 1;
   for DTC_DCEN4_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dead Time clock control
   type DTC_DTCC_Field is
     (
      --  ftclk
      VALUE1,
      --  ftclk/2
      VALUE2,
      --  ftclk/4
      VALUE3,
      --  ftclk/8
      VALUE4)
     with Size => 2;
   for DTC_DTCC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Dead Time Control
   type DTC_Register is record
      --  Dead Time Enable for Channel 1
      DTE1          : DTC_DTE1_Field := NRF_SVD.CCU8.VALUE1;
      --  Dead Time Enable for Channel 2
      DTE2          : DTC_DTE2_Field := NRF_SVD.CCU8.VALUE1;
      --  Dead Time Enable for CC8yST1
      DCEN1         : DTC_DCEN1_Field := NRF_SVD.CCU8.VALUE1;
      --  Dead Time Enable for inverted CC8yST1
      DCEN2         : DTC_DCEN2_Field := NRF_SVD.CCU8.VALUE1;
      --  Dead Time Enable for CC8yST2
      DCEN3         : DTC_DCEN3_Field := NRF_SVD.CCU8.VALUE1;
      --  Dead Time Enable for inverted CC8yST2
      DCEN4         : DTC_DCEN4_Field := NRF_SVD.CCU8.VALUE1;
      --  Dead Time clock control
      DTCC          : DTC_DTCC_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTC_Register use record
      DTE1          at 0 range 0 .. 0;
      DTE2          at 0 range 1 .. 1;
      DCEN1         at 0 range 2 .. 2;
      DCEN2         at 0 range 3 .. 3;
      DCEN3         at 0 range 4 .. 4;
      DCEN4         at 0 range 5 .. 5;
      DTCC          at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DC1R_DT1R_Field is HAL.UInt8;
   subtype DC1R_DT1F_Field is HAL.UInt8;

   --  Channel 1 Dead Time Values
   type DC1R_Register is record
      --  Rise Value for Dead Time of Channel 1
      DT1R           : DC1R_DT1R_Field := 16#0#;
      --  Fall Value for Dead Time of Channel 1
      DT1F           : DC1R_DT1F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DC1R_Register use record
      DT1R           at 0 range 0 .. 7;
      DT1F           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DC2R_DT2R_Field is HAL.UInt8;
   subtype DC2R_DT2F_Field is HAL.UInt8;

   --  Channel 2 Dead Time Values
   type DC2R_Register is record
      --  Rise Value for Dead Time of Channel 2
      DT2R           : DC2R_DT2R_Field := 16#0#;
      --  Fall Value for Dead Time of Channel 2
      DT2F           : DC2R_DT2F_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DC2R_Register use record
      DT2R           at 0 range 0 .. 7;
      DT2F           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMER_TVAL_Field is HAL.UInt16;

   --  Timer Value
   type TIMER_Register is record
      --  Timer Value
      TVAL           : TIMER_TVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER_Register use record
      TVAL           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype C0V_CAPTV_Field is HAL.UInt16;
   subtype C0V_FPCV_Field is HAL.UInt4;

   --  Full Flag
   type C0V_FFL_Field is
     (
      --  No new value was captured into the specific capture register
      VALUE1,
      --  A new value was captured into the specific register
      VALUE2)
     with Size => 1;
   for C0V_FFL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Capture Register 0
   type C0V_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Capture Value
      CAPTV          : C0V_CAPTV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Prescaler Value
      FPCV           : C0V_FPCV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Full Flag
      FFL            : C0V_FFL_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0V_Register use record
      CAPTV          at 0 range 0 .. 15;
      FPCV           at 0 range 16 .. 19;
      FFL            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype C1V_CAPTV_Field is HAL.UInt16;
   subtype C1V_FPCV_Field is HAL.UInt4;

   --  Full Flag
   type C1V_FFL_Field is
     (
      --  No new value was captured into the specific capture register
      VALUE1,
      --  A new value was captured into the specific register
      VALUE2)
     with Size => 1;
   for C1V_FFL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Capture Register 1
   type C1V_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Capture Value
      CAPTV          : C1V_CAPTV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Prescaler Value
      FPCV           : C1V_FPCV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Full Flag
      FFL            : C1V_FFL_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1V_Register use record
      CAPTV          at 0 range 0 .. 15;
      FPCV           at 0 range 16 .. 19;
      FFL            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype C2V_CAPTV_Field is HAL.UInt16;
   subtype C2V_FPCV_Field is HAL.UInt4;

   --  Full Flag
   type C2V_FFL_Field is
     (
      --  No new value was captured into the specific capture register
      VALUE1,
      --  A new value was captured into the specific register
      VALUE2)
     with Size => 1;
   for C2V_FFL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Capture Register 2
   type C2V_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Capture Value
      CAPTV          : C2V_CAPTV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Prescaler Value
      FPCV           : C2V_FPCV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Full Flag
      FFL            : C2V_FFL_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2V_Register use record
      CAPTV          at 0 range 0 .. 15;
      FPCV           at 0 range 16 .. 19;
      FFL            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype C3V_CAPTV_Field is HAL.UInt16;
   subtype C3V_FPCV_Field is HAL.UInt4;

   --  Full Flag
   type C3V_FFL_Field is
     (
      --  No new value was captured into the specific capture register
      VALUE1,
      --  A new value was captured into the specific register
      VALUE2)
     with Size => 1;
   for C3V_FFL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Capture Register 3
   type C3V_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Capture Value
      CAPTV          : C3V_CAPTV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Prescaler Value
      FPCV           : C3V_FPCV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Full Flag
      FFL            : C3V_FFL_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C3V_Register use record
      CAPTV          at 0 range 0 .. 15;
      FPCV           at 0 range 16 .. 19;
      FFL            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Period Match while Counting Up
   type INTS_PMUS_Field is
     (
      --  Period match while counting up not detected
      VALUE1,
      --  Period match while counting up detected
      VALUE2)
     with Size => 1;
   for INTS_PMUS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  One Match while Counting Down
   type INTS_OMDS_Field is
     (
      --  One match while counting down not detected
      VALUE1,
      --  One match while counting down detected
      VALUE2)
     with Size => 1;
   for INTS_OMDS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Compare Match while Counting Up
   type INTS_CMU1S_Field is
     (
      --  Compare match while counting up not detected
      VALUE1,
      --  Compare match while counting up detected
      VALUE2)
     with Size => 1;
   for INTS_CMU1S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Compare Match while Counting Down
   type INTS_CMD1S_Field is
     (
      --  Compare match while counting down not detected
      VALUE1,
      --  Compare match while counting down detected
      VALUE2)
     with Size => 1;
   for INTS_CMD1S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Compare Match while Counting Up
   type INTS_CMU2S_Field is
     (
      --  Compare match while counting up not detected
      VALUE1,
      --  Compare match while counting up detected
      VALUE2)
     with Size => 1;
   for INTS_CMU2S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Compare Match while Counting Down
   type INTS_CMD2S_Field is
     (
      --  Compare match while counting down not detected
      VALUE1,
      --  Compare match while counting down detected
      VALUE2)
     with Size => 1;
   for INTS_CMD2S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 0 Detection Status
   type INTS_E0AS_Field is
     (
      --  Event 0 not detected
      VALUE1,
      --  Event 0 detected
      VALUE2)
     with Size => 1;
   for INTS_E0AS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 1 Detection Status
   type INTS_E1AS_Field is
     (
      --  Event 1 not detected
      VALUE1,
      --  Event 1 detected
      VALUE2)
     with Size => 1;
   for INTS_E1AS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 2 Detection Status
   type INTS_E2AS_Field is
     (
      --  Event 2 not detected
      VALUE1,
      --  Event 2 detected
      VALUE2)
     with Size => 1;
   for INTS_E2AS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Interrupt Status
   type INTS_Register is record
      --  Read-only. Period Match while Counting Up
      PMUS           : INTS_PMUS_Field;
      --  Read-only. One Match while Counting Down
      OMDS           : INTS_OMDS_Field;
      --  Read-only. Channel 1 Compare Match while Counting Up
      CMU1S          : INTS_CMU1S_Field;
      --  Read-only. Channel 1 Compare Match while Counting Down
      CMD1S          : INTS_CMD1S_Field;
      --  Read-only. Channel 2 Compare Match while Counting Up
      CMU2S          : INTS_CMU2S_Field;
      --  Read-only. Channel 2 Compare Match while Counting Down
      CMD2S          : INTS_CMD2S_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Event 0 Detection Status
      E0AS           : INTS_E0AS_Field;
      --  Read-only. Event 1 Detection Status
      E1AS           : INTS_E1AS_Field;
      --  Read-only. Event 2 Detection Status
      E2AS           : INTS_E2AS_Field;
      --  Read-only. Trap Flag Status
      TRPF           : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTS_Register use record
      PMUS           at 0 range 0 .. 0;
      OMDS           at 0 range 1 .. 1;
      CMU1S          at 0 range 2 .. 2;
      CMD1S          at 0 range 3 .. 3;
      CMU2S          at 0 range 4 .. 4;
      CMD2S          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      E0AS           at 0 range 8 .. 8;
      E1AS           at 0 range 9 .. 9;
      E2AS           at 0 range 10 .. 10;
      TRPF           at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Period match while counting up enable
   type INTE_PME_Field is
     (
      --  Period Match interrupt is disabled
      VALUE1,
      --  Period Match interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_PME_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  One match while counting down enable
   type INTE_OME_Field is
     (
      --  One Match interrupt is disabled
      VALUE1,
      --  One Match interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_OME_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Compare match while counting up enable
   type INTE_CMU1E_Field is
     (
      --  Compare Match while counting up interrupt is disabled
      VALUE1,
      --  Compare Match while counting up interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_CMU1E_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Compare match while counting down enable
   type INTE_CMD1E_Field is
     (
      --  Compare Match while counting down interrupt is disabled
      VALUE1,
      --  Compare Match while counting down interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_CMD1E_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Compare match while counting up enable
   type INTE_CMU2E_Field is
     (
      --  Compare Match while counting up interrupt is disabled
      VALUE1,
      --  Compare Match while counting up interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_CMU2E_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Compare match while counting down enable
   type INTE_CMD2E_Field is
     (
      --  Compare Match while counting down interrupt is disabled
      VALUE1,
      --  Compare Match while counting down interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_CMD2E_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 0 interrupt enable
   type INTE_E0AE_Field is
     (
      --  Event 0 detection interrupt is disabled
      VALUE1,
      --  Event 0 detection interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_E0AE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 1 interrupt enable
   type INTE_E1AE_Field is
     (
      --  Event 1 detection interrupt is disabled
      VALUE1,
      --  Event 1 detection interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_E1AE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event 2 interrupt enable
   type INTE_E2AE_Field is
     (
      --  Event 2 detection interrupt is disabled
      VALUE1,
      --  Event 2 detection interrupt is enabled
      VALUE2)
     with Size => 1;
   for INTE_E2AE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Interrupt Enable Control
   type INTE_Register is record
      --  Period match while counting up enable
      PME            : INTE_PME_Field := NRF_SVD.CCU8.VALUE1;
      --  One match while counting down enable
      OME            : INTE_OME_Field := NRF_SVD.CCU8.VALUE1;
      --  Channel 1 Compare match while counting up enable
      CMU1E          : INTE_CMU1E_Field := NRF_SVD.CCU8.VALUE1;
      --  Channel 1 Compare match while counting down enable
      CMD1E          : INTE_CMD1E_Field := NRF_SVD.CCU8.VALUE1;
      --  Channel 2 Compare match while counting up enable
      CMU2E          : INTE_CMU2E_Field := NRF_SVD.CCU8.VALUE1;
      --  Channel 2 Compare match while counting down enable
      CMD2E          : INTE_CMD2E_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Event 0 interrupt enable
      E0AE           : INTE_E0AE_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 1 interrupt enable
      E1AE           : INTE_E1AE_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 2 interrupt enable
      E2AE           : INTE_E2AE_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTE_Register use record
      PME            at 0 range 0 .. 0;
      OME            at 0 range 1 .. 1;
      CMU1E          at 0 range 2 .. 2;
      CMD1E          at 0 range 3 .. 3;
      CMU2E          at 0 range 4 .. 4;
      CMD2E          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      E0AE           at 0 range 8 .. 8;
      E1AE           at 0 range 9 .. 9;
      E2AE           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Period/One match Service request selector
   type SRS_POSR_Field is
     (
      --  Forward to CC8ySR0
      VALUE1,
      --  Forward to CC8ySR1
      VALUE2,
      --  Forward to CC8ySR2
      VALUE3,
      --  Forward to CC8ySR3
      VALUE4)
     with Size => 2;
   for SRS_POSR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Channel 1 Compare match Service request selector
   type SRS_CM1SR_Field is
     (
      --  Forward to CC8ySR0
      VALUE1,
      --  Forward to CC8ySR1
      VALUE2,
      --  Forward to CC8ySR2
      VALUE3,
      --  Forward to CC8ySR3
      VALUE4)
     with Size => 2;
   for SRS_CM1SR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Channel 2 Compare match Service request selector
   type SRS_CM2SR_Field is
     (
      --  Forward to CC8ySR0
      VALUE1,
      --  Forward to CC8ySR1
      VALUE2,
      --  Forward to CC8ySR2
      VALUE3,
      --  Forward to CC8ySR3
      VALUE4)
     with Size => 2;
   for SRS_CM2SR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 0 Service request selector
   type SRS_E0SR_Field is
     (
      --  Forward to CCvySR0
      VALUE1,
      --  Forward to CC8ySR1
      VALUE2,
      --  Forward to CC8ySR2
      VALUE3,
      --  Forward to CC8ySR3
      VALUE4)
     with Size => 2;
   for SRS_E0SR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 1 Service request selector
   type SRS_E1SR_Field is
     (
      --  Forward to CC8ySR0
      VALUE1,
      --  Forward to CC8ySR1
      VALUE2,
      --  Forward to CC8ySR2
      VALUE3,
      --  Forward to CC8ySR3
      VALUE4)
     with Size => 2;
   for SRS_E1SR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event 2 Service request selector
   type SRS_E2SR_Field is
     (
      --  Forward to CC8ySR0
      VALUE1,
      --  Forward to CCvySR1
      VALUE2,
      --  Forward to CC8ySR2
      VALUE3,
      --  Forward to CC8ySR3
      VALUE4)
     with Size => 2;
   for SRS_E2SR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Service Request Selector
   type SRS_Register is record
      --  Period/One match Service request selector
      POSR           : SRS_POSR_Field := NRF_SVD.CCU8.VALUE1;
      --  Channel 1 Compare match Service request selector
      CM1SR          : SRS_CM1SR_Field := NRF_SVD.CCU8.VALUE1;
      --  Channel 2 Compare match Service request selector
      CM2SR          : SRS_CM2SR_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Event 0 Service request selector
      E0SR           : SRS_E0SR_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 1 Service request selector
      E1SR           : SRS_E1SR_Field := NRF_SVD.CCU8.VALUE1;
      --  Event 2 Service request selector
      E2SR           : SRS_E2SR_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRS_Register use record
      POSR           at 0 range 0 .. 1;
      CM1SR          at 0 range 2 .. 3;
      CM2SR          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      E0SR           at 0 range 8 .. 9;
      E1SR           at 0 range 10 .. 11;
      E2SR           at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Status Set
   type SWS_Register is record
      --  Write-only. Period match while counting up set
      SPM            : Boolean := False;
      --  Write-only. One match while counting down set
      SOM            : Boolean := False;
      --  Write-only. Channel 1 Compare match while counting up set
      SCM1U          : Boolean := False;
      --  Write-only. Channel 1 Compare match while counting down set
      SCM1D          : Boolean := False;
      --  Write-only. Compare match while counting up set
      SCM2U          : Boolean := False;
      --  Write-only. Compare match while counting down set
      SCM2D          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Event 0 detection set
      SE0A           : Boolean := False;
      --  Write-only. Event 1 detection set
      SE1A           : Boolean := False;
      --  Write-only. Event 2 detection set
      SE2A           : Boolean := False;
      --  Write-only. Trap Flag status set
      STRPF          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWS_Register use record
      SPM            at 0 range 0 .. 0;
      SOM            at 0 range 1 .. 1;
      SCM1U          at 0 range 2 .. 2;
      SCM1D          at 0 range 3 .. 3;
      SCM2U          at 0 range 4 .. 4;
      SCM2D          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SE0A           at 0 range 8 .. 8;
      SE1A           at 0 range 9 .. 9;
      SE2A           at 0 range 10 .. 10;
      STRPF          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Interrupt Status Clear
   type SWR_Register is record
      --  Write-only. Period match while counting up clear
      RPM            : Boolean := False;
      --  Write-only. One match while counting down clear
      ROM            : Boolean := False;
      --  Write-only. Channel 1 Compare match while counting up clear
      RCM1U          : Boolean := False;
      --  Write-only. Channel 1 Compare match while counting down clear
      RCM1D          : Boolean := False;
      --  Write-only. Channel 2 Compare match while counting up clear
      RCM2U          : Boolean := False;
      --  Write-only. Channel 2 Compare match while counting down clear
      RCM2D          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Event 0 detection clear
      RE0A           : Boolean := False;
      --  Write-only. Event 1 detection clear
      RE1A           : Boolean := False;
      --  Write-only. Event 2 detection clear
      RE2A           : Boolean := False;
      --  Write-only. Trap Flag status clear
      RTRPF          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWR_Register use record
      RPM            at 0 range 0 .. 0;
      ROM            at 0 range 1 .. 1;
      RCM1U          at 0 range 2 .. 2;
      RCM1D          at 0 range 3 .. 3;
      RCM2U          at 0 range 4 .. 4;
      RCM2D          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RE0A           at 0 range 8 .. 8;
      RE1A           at 0 range 9 .. 9;
      RE2A           at 0 range 10 .. 10;
      RTRPF          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Cascaded shadow transfer enable
   type STC_CSE_Field is
     (
      --  Cascaded shadow transfer disabled
      VALUE1,
      --  Cascaded shadow transfer enabled
      VALUE2)
     with Size => 1;
   for STC_CSE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Shadow transfer mode
   type STC_STM_Field is
     (
      --  Shadow transfer is done in Period Match and One match.
      VALUE1,
      --  Shadow transfer is done only in Period Match.
      VALUE2,
      --  Shadow transfer is done only in One Match.
      VALUE3)
     with Size => 2;
   for STC_STM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Shadow transfer control
   type STC_Register is record
      --  Cascaded shadow transfer enable
      CSE           : STC_CSE_Field := NRF_SVD.CCU8.VALUE1;
      --  Shadow transfer mode
      STM           : STC_STM_Field := NRF_SVD.CCU8.VALUE1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STC_Register use record
      CSE           at 0 range 0 .. 0;
      STM           at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ECRD_CAPV_Field is HAL.UInt16;
   subtype ECRD_FPCV_Field is HAL.UInt4;

   --  Slice pointer
   type ECRD0_SPTR_Field is
     (
      --  CC80
      VALUE1,
      --  CC81
      VALUE2,
      --  CC82
      VALUE3,
      --  CC83
      VALUE4)
     with Size => 2;
   for ECRD0_SPTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Capture register pointer
   type ECRD0_VPTR_Field is
     (
      --  Capture register 0
      VALUE1,
      --  Capture register 1
      VALUE2,
      --  Capture register 2
      VALUE3,
      --  Capture register 3
      VALUE4)
     with Size => 2;
   for ECRD0_VPTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Full Flag
   type ECRD0_FFL_Field is
     (
      --  No new value was captured into this register
      VALUE1,
      --  A new value has been captured into this register
      VALUE2)
     with Size => 1;
   for ECRD0_FFL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Lost Capture Value
   type ECRD0_LCV_Field is
     (
      --  No capture was lost
      VALUE1,
      --  A capture was lost
      VALUE2)
     with Size => 1;
   for ECRD0_LCV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Extended Read Back 0
   type ECRD_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Timer Capture Value
      CAPV           : ECRD_CAPV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Prescaler Capture value
      FPCV           : ECRD_FPCV_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Slice pointer
      SPTR           : ECRD0_SPTR_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Capture register pointer
      VPTR           : ECRD0_VPTR_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Full Flag
      FFL            : ECRD0_FFL_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Lost Capture Value
      LCV            : ECRD0_LCV_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECRD_Register use record
      CAPV           at 0 range 0 .. 15;
      FPCV           at 0 range 16 .. 19;
      SPTR           at 0 range 20 .. 21;
      VPTR           at 0 range 22 .. 23;
      FFL            at 0 range 24 .. 24;
      LCV            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Capture Compare Unit 8 - Unit 0
   type CCU8_Peripheral is record
      --  Global Control Register
      GCTRL : aliased GCTRL_Register;
      --  Global Status Register
      GSTAT : aliased GSTAT_Register;
      --  Global Idle Set
      GIDLS : aliased GIDLS_Register;
      --  Global Idle Clear
      GIDLC : aliased GIDLC_Register;
      --  Global Channel Set
      GCSS  : aliased GCSS_Register;
      --  Global Channel Clear
      GCSC  : aliased GCSC_Register;
      --  Global Channel status
      GCST  : aliased GCST_Register;
      --  Parity Checker Configuration
      GPCHK : aliased GPCHK_Register;
      --  Module Identification
      MIDR  : aliased MIDR_Register;
   end record
     with Volatile;

   for CCU8_Peripheral use record
      GCTRL at 16#0# range 0 .. 31;
      GSTAT at 16#4# range 0 .. 31;
      GIDLS at 16#8# range 0 .. 31;
      GIDLC at 16#C# range 0 .. 31;
      GCSS  at 16#10# range 0 .. 31;
      GCSC  at 16#14# range 0 .. 31;
      GCST  at 16#18# range 0 .. 31;
      GPCHK at 16#1C# range 0 .. 31;
      MIDR  at 16#80# range 0 .. 31;
   end record;

   --  Capture Compare Unit 8 - Unit 0
   CCU80_Periph : aliased CCU8_Peripheral
     with Import, Address => System'To_Address (16#50000000#);

   --  Capture Compare Unit 8 - Unit 0
   type CCU8_Peripheral_1 is record
      --  Input Selector Configuration
      INS   : aliased INS_Register;
      --  Connection Matrix Control
      CMC   : aliased CMC_Register;
      --  Slice Timer Status
      TCST  : aliased TCST_Register;
      --  Slice Timer Run Set
      TCSET : aliased TCSET_Register;
      --  Slice Timer Clear
      TCCLR : aliased TCCLR_Register;
      --  Slice Timer Control
      TC    : aliased TC_Register;
      --  Passive Level Config
      PSL   : aliased PSL_Register;
      --  Dither Config
      DIT   : aliased DIT_Register;
      --  Dither Shadow Register
      DITS  : aliased DITS_Register;
      --  Prescaler Control
      PSC   : aliased PSC_Register;
      --  Floating Prescaler Control
      FPC   : aliased FPC_Register;
      --  Floating Prescaler Shadow
      FPCS  : aliased FPCS_Register;
      --  Timer Period Value
      PR    : aliased PR_Register;
      --  Timer Shadow Period Value
      PRS   : aliased PRS_Register;
      --  Channel 1 Compare Value
      CR1   : aliased CR1_Register;
      --  Channel 1 Compare Shadow Value
      CR1S  : aliased CR1S_Register;
      --  Channel 2 Compare Value
      CR2   : aliased CR2_Register;
      --  Channel 2 Compare Shadow Value
      CR2S  : aliased CR2S_Register;
      --  Channel Control
      CHC   : aliased CHC_Register;
      --  Dead Time Control
      DTC   : aliased DTC_Register;
      --  Channel 1 Dead Time Values
      DC1R  : aliased DC1R_Register;
      --  Channel 2 Dead Time Values
      DC2R  : aliased DC2R_Register;
      --  Timer Value
      TIMER : aliased TIMER_Register;
      --  Capture Register 0
      C0V   : aliased C0V_Register;
      --  Capture Register 1
      C1V   : aliased C1V_Register;
      --  Capture Register 2
      C2V   : aliased C2V_Register;
      --  Capture Register 3
      C3V   : aliased C3V_Register;
      --  Interrupt Status
      INTS  : aliased INTS_Register;
      --  Interrupt Enable Control
      INTE  : aliased INTE_Register;
      --  Service Request Selector
      SRS   : aliased SRS_Register;
      --  Interrupt Status Set
      SWS   : aliased SWS_Register;
      --  Interrupt Status Clear
      SWR   : aliased SWR_Register;
      --  Shadow transfer control
      STC   : aliased STC_Register;
      --  Extended Read Back 0
      ECRD0 : aliased ECRD_Register;
      --  Extended Read Back 1
      ECRD1 : aliased ECRD_Register;
   end record
     with Volatile;

   for CCU8_Peripheral_1 use record
      INS   at 16#0# range 0 .. 31;
      CMC   at 16#4# range 0 .. 31;
      TCST  at 16#8# range 0 .. 31;
      TCSET at 16#C# range 0 .. 31;
      TCCLR at 16#10# range 0 .. 31;
      TC    at 16#14# range 0 .. 31;
      PSL   at 16#18# range 0 .. 31;
      DIT   at 16#1C# range 0 .. 31;
      DITS  at 16#20# range 0 .. 31;
      PSC   at 16#24# range 0 .. 31;
      FPC   at 16#28# range 0 .. 31;
      FPCS  at 16#2C# range 0 .. 31;
      PR    at 16#30# range 0 .. 31;
      PRS   at 16#34# range 0 .. 31;
      CR1   at 16#38# range 0 .. 31;
      CR1S  at 16#3C# range 0 .. 31;
      CR2   at 16#40# range 0 .. 31;
      CR2S  at 16#44# range 0 .. 31;
      CHC   at 16#48# range 0 .. 31;
      DTC   at 16#4C# range 0 .. 31;
      DC1R  at 16#50# range 0 .. 31;
      DC2R  at 16#54# range 0 .. 31;
      TIMER at 16#70# range 0 .. 31;
      C0V   at 16#74# range 0 .. 31;
      C1V   at 16#78# range 0 .. 31;
      C2V   at 16#7C# range 0 .. 31;
      C3V   at 16#80# range 0 .. 31;
      INTS  at 16#A0# range 0 .. 31;
      INTE  at 16#A4# range 0 .. 31;
      SRS   at 16#A8# range 0 .. 31;
      SWS   at 16#AC# range 0 .. 31;
      SWR   at 16#B0# range 0 .. 31;
      STC   at 16#B4# range 0 .. 31;
      ECRD0 at 16#B8# range 0 .. 31;
      ECRD1 at 16#BC# range 0 .. 31;
   end record;

   --  Capture Compare Unit 8 - Unit 0
   CCU80_CC80_Periph : aliased CCU8_Peripheral
     with Import, Address => System'To_Address (16#50000100#);

   --  Capture Compare Unit 8 - Unit 0
   CCU80_CC81_Periph : aliased CCU8_Peripheral
     with Import, Address => System'To_Address (16#50000200#);

   --  Capture Compare Unit 8 - Unit 0
   CCU80_CC82_Periph : aliased CCU8_Peripheral
     with Import, Address => System'To_Address (16#50000300#);

   --  Capture Compare Unit 8 - Unit 0
   CCU80_CC83_Periph : aliased CCU8_Peripheral
     with Import, Address => System'To_Address (16#50000400#);

end NRF_SVD.CCU8;
