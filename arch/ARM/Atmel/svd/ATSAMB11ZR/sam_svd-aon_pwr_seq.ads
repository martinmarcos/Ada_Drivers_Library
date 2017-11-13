--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AON_PWR_SEQ is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Controls the wakeup enable for GPIO_0, GPIO_1 and GPIO_2 (Pinmux will
   --  control the ARM wakeup)
   type GPIO_WAKEUP_CTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  If set, this will enable GPIO_0 to wake up the BLE domain (PD4, PD5
      --  and PD6)
      BLE_ENABLE   : Boolean := True;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for GPIO_WAKEUP_CTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      BLE_ENABLE   at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Controls the wakeup enable for the Always On Sleep Timer (AON_ST)
   type AON_ST_WAKEUP_CTRL_Register is record
      --  If set, this will enable the AON_ST to wake up the ARM domain (PD1,
      --  PD2 and PD3)
      ARM_ENABLE   : Boolean := False;
      --  If set, this will enable the AON_ST to wake up the BLE domain (PD4,
      --  PD5 and PD6)
      BLE_ENABLE   : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AON_ST_WAKEUP_CTRL_Register use record
      ARM_ENABLE   at 0 range 0 .. 0;
      BLE_ENABLE   at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Controls the wakeup enable for the Low Power Micro Controller Unit
   --  (LPMCU)
   type LPMCU_WAKEUP_CTRL_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  If set, this will enable the LPMCU to wake up the BLE domain (PD4,
      --  PD5 and PD6)
      BLE_ENABLE     : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  If set, this will enable the LPMCU to wakeup the PD7 domain (EFUSE)
      PD7_ENABLE     : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LPMCU_WAKEUP_CTRL_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      BLE_ENABLE     at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      PD7_ENABLE     at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Controls the wakeup enable for the BLE Sleep Timer (BLE_ST)
   type BLE_ST_WAKEUP_CTRL_Register is record
      --  If set, this will enable the BLE_ST to wake up the ARM domain
      ARM_ENABLE   : Boolean := False;
      --  If set, this will enable the BLE_ST to wake up the BLE domain
      BLE_ENABLE   : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for BLE_ST_WAKEUP_CTRL_Register use record
      ARM_ENABLE   at 0 range 0 .. 0;
      BLE_ENABLE   at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Controls the sleep and retention options for SLEEP request 1 from the
   --  ARM
   type LPMCU_SLEEP_1_CTRL_Register is record
      --  Enables the SLEEP request 1 to put all ARM domains in sleep or
      --  retention (PD1, PD2A, PD2B, PD3, PD8). PD7 has its own control
      ARM_SLEEP_EN      : Boolean := False;
      --  unspecified
      Reserved_1_5      : HAL.UInt5 := 16#0#;
      --  Enables the SLEEP request 1 to put PD4 domain in sleep (BLE Core) and
      --  PD5 (BLE memories) in sleep or retention
      BLE_SLEEP_EN      : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Enables the SLEEP request 1 to put PD6 domain in sleep (BLE Sleep
      --  Timer)
      PD6_SLEEP_EN      : Boolean := False;
      --  Enables the SLEEP request 1 to put PD7 domain in sleep (EFUSE)
      PD7_SLEEP_EN      : Boolean := False;
      --  unspecified
      Reserved_10_15    : HAL.UInt6 := 16#0#;
      --  If 1, then PD2A will be put in retention mode when instructed to go
      --  to sleep (First ARM Memory 16K)
      PD2A_RETENTION_EN : Boolean := False;
      --  If 1, then PD2B will be put in retention mode when instructed to go
      --  to sleep (Second ARM Memory 16K)
      PD2B_RETENTION_EN : Boolean := False;
      --  If 1, then PD3 will be put in retention mode when instructed to go to
      --  sleep (Third, Fourth and Fifth ARM Memories 3x32K = 96K)
      PD3_RETENTION_EN  : Boolean := False;
      --  unspecified
      Reserved_19_20    : HAL.UInt2 := 16#0#;
      --  If 1, then PD5 will be put in retention mode when instructed to go to
      --  sleep (BLE Retention Memory)
      PD5_RETENTION_EN  : Boolean := False;
      --  If 1, then PD8 will be put in retention mode when instructed to go to
      --  sleep (BLE LP Memory)
      PD8_RETENTION_EN  : Boolean := False;
      --  unspecified
      Reserved_23_31    : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMCU_SLEEP_1_CTRL_Register use record
      ARM_SLEEP_EN      at 0 range 0 .. 0;
      Reserved_1_5      at 0 range 1 .. 5;
      BLE_SLEEP_EN      at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      PD6_SLEEP_EN      at 0 range 8 .. 8;
      PD7_SLEEP_EN      at 0 range 9 .. 9;
      Reserved_10_15    at 0 range 10 .. 15;
      PD2A_RETENTION_EN at 0 range 16 .. 16;
      PD2B_RETENTION_EN at 0 range 17 .. 17;
      PD3_RETENTION_EN  at 0 range 18 .. 18;
      Reserved_19_20    at 0 range 19 .. 20;
      PD5_RETENTION_EN  at 0 range 21 .. 21;
      PD8_RETENTION_EN  at 0 range 22 .. 22;
      Reserved_23_31    at 0 range 23 .. 31;
   end record;

   subtype OFF_DELAY_0_CTRL_CLOCK_EN_EARLY_Field is HAL.UInt6;
   subtype OFF_DELAY_0_CTRL_ISOLATE_Field is HAL.UInt6;
   subtype OFF_DELAY_0_CTRL_RESETN_Field is HAL.UInt6;

   --  Controls the delays for turning OFF power. Default order is: Disable
   --  clock_en_early (used for dividers) Disable clock_en (main clock branch)
   --  Isolate Assert RESETN Apply BTRIM Mux Select Apply STDBY_N (active low)
   --  Cut Off Power (VDD and standard cells) Cut Off or Lower VDM Power (Array
   --  Power Supply for memories)
   type OFF_DELAY_0_CTRL_Register is record
      --  Number of clock cycles before setting clock_en_early to low (clock_en
      --  is +1 of this value)
      CLOCK_EN_EARLY : OFF_DELAY_0_CTRL_CLOCK_EN_EARLY_Field := 16#1#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Number of clock cycles before enabling the isolation cells
      ISOLATE        : OFF_DELAY_0_CTRL_ISOLATE_Field := 16#3#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before asserting RESETN
      RESETN         : OFF_DELAY_0_CTRL_RESETN_Field := 16#4#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFF_DELAY_0_CTRL_Register use record
      CLOCK_EN_EARLY at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      ISOLATE        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RESETN         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype OFF_DELAY_1_CTRL_BTRIM_Field is HAL.UInt6;
   subtype OFF_DELAY_1_CTRL_STDBY_N_Field is HAL.UInt6;
   subtype OFF_DELAY_1_CTRL_POWER_VDD_Field is HAL.UInt6;
   subtype OFF_DELAY_1_CTRL_POWER_VDM_Field is HAL.UInt6;

   --  Controls delays for turning OFF power
   type OFF_DELAY_1_CTRL_Register is record
      --  Number of clock cycles before applying BTRIM mux select
      BTRIM          : OFF_DELAY_1_CTRL_BTRIM_Field := 16#5#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before applying STDBY_N
      STDBY_N        : OFF_DELAY_1_CTRL_STDBY_N_Field := 16#6#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before cutting off power (VDD and standard
      --  cells)
      POWER_VDD      : OFF_DELAY_1_CTRL_POWER_VDD_Field := 16#7#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before cutting off or lowering power (VDM)
      POWER_VDM      : OFF_DELAY_1_CTRL_POWER_VDM_Field := 16#8#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OFF_DELAY_1_CTRL_Register use record
      BTRIM          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STDBY_N        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      POWER_VDD      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      POWER_VDM      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ON_DELAY_0_CTRL_CLOCK_EN_EARLY_ARM_Field is HAL.UInt6;
   subtype ON_DELAY_0_CTRL_CLOCK_EN_EARLY_BLE_Field is HAL.UInt6;

   --  Controls the delays when turning ON power Default order is: Apply VDM
   --  Power (Memory Array) Apply VDD Power (VDD and standard cells) Remove
   --  STDBY_N Remove BTRIM Mux Select Remove Isolation De-assert RESETN Enable
   --  clock_en_early Enable clock_en
   type ON_DELAY_0_CTRL_Register is record
      --  Number of clock cycles before setting clock_en_early to high for ARM
      --  domain clock_en is +1 of this value isolate is -2 of this value
      --  resetn is -1 of this value
      CLOCK_EN_EARLY_ARM : ON_DELAY_0_CTRL_CLOCK_EN_EARLY_ARM_Field := 16#27#;
      --  unspecified
      Reserved_6_7       : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before setting clock_en_early to high for BLE
      --  domain clock_en is +1 of this value isolate is -2 of this value
      --  resetn is -1 of this value
      CLOCK_EN_EARLY_BLE : ON_DELAY_0_CTRL_CLOCK_EN_EARLY_BLE_Field := 16#27#;
      --  unspecified
      Reserved_14_15     : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ON_DELAY_0_CTRL_Register use record
      CLOCK_EN_EARLY_ARM at 0 range 0 .. 5;
      Reserved_6_7       at 0 range 6 .. 7;
      CLOCK_EN_EARLY_BLE at 0 range 8 .. 13;
      Reserved_14_15     at 0 range 14 .. 15;
   end record;

   subtype ON_DELAY_1_CTRL_BTRIM_Field is HAL.UInt6;
   subtype ON_DELAY_1_CTRL_STDBY_N_Field is HAL.UInt6;
   subtype ON_DELAY_1_CTRL_POWER_VDD_Field is HAL.UInt6;
   subtype ON_DELAY_1_CTRL_POWER_VDM_Field is HAL.UInt6;

   --  Controls delays for turning ON power
   type ON_DELAY_1_CTRL_Register is record
      --  Number of clock cycles before removing BTRIM mux select
      BTRIM          : ON_DELAY_1_CTRL_BTRIM_Field := 16#4#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before de-asserting the STDBY_N
      STDBY_N        : ON_DELAY_1_CTRL_STDBY_N_Field := 16#3#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before applying VDD power
      POWER_VDD      : ON_DELAY_1_CTRL_POWER_VDD_Field := 16#2#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before applying VDM power
      POWER_VDM      : ON_DELAY_1_CTRL_POWER_VDM_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ON_DELAY_1_CTRL_Register use record
      BTRIM          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STDBY_N        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      POWER_VDD      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      POWER_VDM      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype VDD_DCDC_EN_DELAY_CTRL_OFF_Field is HAL.UInt6;
   subtype VDD_DCDC_EN_DELAY_CTRL_ON_Field is HAL.UInt6;

   --  Delay control for the vdd_dcdc_en signal (BLE domain only)
   type VDD_DCDC_EN_DELAY_CTRL_Register is record
      --  Number of clock cycles before disabling the DCDC
      OFF            : VDD_DCDC_EN_DELAY_CTRL_OFF_Field := 16#6#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Number of clock cycles before turning on the DCDC
      ON             : VDD_DCDC_EN_DELAY_CTRL_ON_Field := 16#21#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for VDD_DCDC_EN_DELAY_CTRL_Register use record
      OFF            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ON             at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Bypass control for misc signals
   type MISC_BYPASS_0_CTRL_Register is record
      --  unspecified
      Reserved_0_1           : HAL.UInt2 := 16#0#;
      --  Bypass value for pd0_low_voltage_en
      PD0_LOW_VOLTAGE_EN_VAL : Boolean := False;
      --  Bypass enable for pd0_low_voltage_en
      PD0_LOW_VOLTAGE_EN_EN  : Boolean := True;
      --  If set, allows the AON PS to gate its own clock while waiting for an
      --  event to enable it again
      ENABLE_CLOCK_GATE      : Boolean := False;
      --  unspecified
      Reserved_5_5           : HAL.Bit := 16#0#;
      --  Bypass value for vdd_dcdc_en
      VDD_DCDC_EN_VAL        : Boolean := False;
      --  Bypass enable for vdd_dcdc_en
      VDD_DCDC_EN_EN         : Boolean := True;
      --  If set, this will keep the power enabled for the BLE Core (enables
      --  the DCDC operation)
      FORCE_ON_BLE_CORE      : Boolean := False;
      --  If set, this will keep the power enabled for the BLE memories
      --  (enables the DCDC operation)
      FORCE_ON_BLE_MEMORIES  : Boolean := False;
      --  unspecified
      Reserved_10_15         : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MISC_BYPASS_0_CTRL_Register use record
      Reserved_0_1           at 0 range 0 .. 1;
      PD0_LOW_VOLTAGE_EN_VAL at 0 range 2 .. 2;
      PD0_LOW_VOLTAGE_EN_EN  at 0 range 3 .. 3;
      ENABLE_CLOCK_GATE      at 0 range 4 .. 4;
      Reserved_5_5           at 0 range 5 .. 5;
      VDD_DCDC_EN_VAL        at 0 range 6 .. 6;
      VDD_DCDC_EN_EN         at 0 range 7 .. 7;
      FORCE_ON_BLE_CORE      at 0 range 8 .. 8;
      FORCE_ON_BLE_MEMORIES  at 0 range 9 .. 9;
      Reserved_10_15         at 0 range 10 .. 15;
   end record;

   --  Raw Wakeup Bits
   type RAW_WAKEUP_BITS_Register is record
      --  Read-only. AO_GPIO_0 wakeup raw status
      GPIO_0       : Boolean;
      --  Read-only. AO_GPIO_1 wakeup raw status
      GPIO_1       : Boolean;
      --  Read-only. AO_GPIO_2 wakeup raw status
      GPIO_2       : Boolean;
      --  Read-only. AON_ST wakeup raw status
      AON_ST       : Boolean;
      --  Read-only. LPMCU wakeup raw status
      LPMCU        : Boolean;
      --  Read-only. BLE_ST wakeup raw status
      BLE_ST       : Boolean;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RAW_WAKEUP_BITS_Register use record
      GPIO_0       at 0 range 0 .. 0;
      GPIO_1       at 0 range 1 .. 1;
      GPIO_2       at 0 range 2 .. 2;
      AON_ST       at 0 range 3 .. 3;
      LPMCU        at 0 range 4 .. 4;
      BLE_ST       at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  PD_WAKEUP_BITS_PD array
   type PD_WAKEUP_BITS_PD_Field_Array is array (6 .. 7) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PD_WAKEUP_BITS_PD
   type PD_WAKEUP_BITS_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt2;
         when True =>
            --  PD as an array
            Arr : PD_WAKEUP_BITS_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PD_WAKEUP_BITS_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Individual Power Domain Wakeup Bits
   type PD_WAKEUP_BITS_Register is record
      --  Read-only. Indicates ARM (PD1, PD2A, PD2B, PD3, PD8) currently has a
      --  wakeup active
      ARM            : Boolean;
      --  unspecified
      Reserved_1_5   : HAL.UInt5;
      --  Read-only. Indicates BLE (PD4 and PD5) currently has a wakeup active
      BLE            : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Indicates PD6 currently has a wakeup active
      PD             : PD_WAKEUP_BITS_PD_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PD_WAKEUP_BITS_Register use record
      ARM            at 0 range 0 .. 0;
      Reserved_1_5   at 0 range 1 .. 5;
      BLE            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PD             at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Serviced Request Status Bits
   type SERVICED_REQUEST_Register is record
      --  Read-only. Indicates GPIO wakeup has been serviced
      GPIO_WAKEUP   : Boolean;
      --  unspecified
      Reserved_1_2  : HAL.UInt2;
      --  Read-only. Indicates AON_ST wakeup has been serviced
      AON_ST_WAKEUP : Boolean;
      --  Read-only. Indicates LPMCU wakeup has been serviced
      LPMCU_WAKEUP  : Boolean;
      --  Read-only. Indicates BLE_ST wakeup has been serviced
      BLE_ST_WAKEUP : Boolean;
      --  unspecified
      Reserved_6_7  : HAL.UInt2;
      --  Read-only. Indicates SLEEP 1 has been serviced
      SLEEP_1       : Boolean;
      --  unspecified
      Reserved_9_15 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SERVICED_REQUEST_Register use record
      GPIO_WAKEUP   at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      AON_ST_WAKEUP at 0 range 3 .. 3;
      LPMCU_WAKEUP  at 0 range 4 .. 4;
      BLE_ST_WAKEUP at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      SLEEP_1       at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  Active Request Status Bits
   type ACTIVE_REQUEST_Register is record
      --  Read-only. Indicates GPIO wakeup is the active request
      GPIO_WAKEUP   : Boolean;
      --  unspecified
      Reserved_1_2  : HAL.UInt2;
      --  Read-only. Indicates AON_ST wakeup is the active request
      AON_ST_WAKEUP : Boolean;
      --  Read-only. Indicates LPMCU wakeup is the active request
      LPMCU_WAKEUP  : Boolean;
      --  Read-only. Indicates BLE_ST wakeup is the active request
      BLE_ST_WAKEUP : Boolean;
      --  unspecified
      Reserved_6_7  : HAL.UInt2;
      --  Read-only. Indicates SLEEP 1 is the active request
      SLEEP_1       : Boolean;
      --  unspecified
      Reserved_9_15 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ACTIVE_REQUEST_Register use record
      GPIO_WAKEUP   at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      AON_ST_WAKEUP at 0 range 3 .. 3;
      LPMCU_WAKEUP  at 0 range 4 .. 4;
      BLE_ST_WAKEUP at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      SLEEP_1       at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  Main FSM State
   type LOGIC_FSM_STATES_MAIN_FSM_STATE_Field is
     (
      --  RESET
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_0,
      --  READY
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_1,
      --  TRANS
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_2,
      --  RESET_TO_READY
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_3,
      --  READY_TO_TRANS
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_4,
      --  TRANS_TO_READY
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_5)
     with Size => 3;
   for LOGIC_FSM_STATES_MAIN_FSM_STATE_Field use
     (LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_0 => 0,
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_1 => 1,
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_2 => 2,
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_3 => 3,
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_4 => 4,
      LOGIC_FSM_STATES_MAIN_FSM_STATE_Field_5 => 5);

   --  Current Logic FSM States
   type LOGIC_FSM_STATES_Register is record
      --  Read-only. Main FSM State
      MAIN_FSM_STATE : LOGIC_FSM_STATES_MAIN_FSM_STATE_Field;
      --  unspecified
      Reserved_3_7   : HAL.UInt5;
      --  Read-only. If 1, then PD4 and PD5 are ON
      BLE_ON_STATE   : Boolean;
      --  Read-only. If 1, then PD4 and PD5 are OFF (PD5 is in RET if set by
      --  ARM)
      BLE_OFF_STATE  : Boolean;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. If 1, then PD6 is ON
      PD6_ON_STATE   : Boolean;
      --  Read-only. If 1, then PD6 is OFF
      PD6_OFF_STATE  : Boolean;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. If 1, then PD7 is ON
      PD7_ON_STATE   : Boolean;
      --  Read-only. If 1, then PD7 is OFF
      PD7_OFF_STATE  : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOGIC_FSM_STATES_Register use record
      MAIN_FSM_STATE at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BLE_ON_STATE   at 0 range 8 .. 8;
      BLE_OFF_STATE  at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PD6_ON_STATE   at 0 range 12 .. 12;
      PD6_OFF_STATE  at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PD7_ON_STATE   at 0 range 16 .. 16;
      PD7_OFF_STATE  at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Always On Power Sequencer
   type AON_PWR_SEQ0_Peripheral is record
      --  Controls the wakeup enable for GPIO_0, GPIO_1 and GPIO_2 (Pinmux will
      --  control the ARM wakeup)
      GPIO_WAKEUP_CTRL       : aliased GPIO_WAKEUP_CTRL_Register;
      --  Controls the wakeup enable for the Always On Sleep Timer (AON_ST)
      AON_ST_WAKEUP_CTRL     : aliased AON_ST_WAKEUP_CTRL_Register;
      --  Controls the wakeup enable for the Low Power Micro Controller Unit
      --  (LPMCU)
      LPMCU_WAKEUP_CTRL      : aliased LPMCU_WAKEUP_CTRL_Register;
      --  Controls the wakeup enable for the BLE Sleep Timer (BLE_ST)
      BLE_ST_WAKEUP_CTRL     : aliased BLE_ST_WAKEUP_CTRL_Register;
      --  Controls the sleep and retention options for SLEEP request 1 from the
      --  ARM
      LPMCU_SLEEP_1_CTRL     : aliased LPMCU_SLEEP_1_CTRL_Register;
      --  Controls the delays for turning OFF power. Default order is: Disable
      --  clock_en_early (used for dividers) Disable clock_en (main clock
      --  branch) Isolate Assert RESETN Apply BTRIM Mux Select Apply STDBY_N
      --  (active low) Cut Off Power (VDD and standard cells) Cut Off or Lower
      --  VDM Power (Array Power Supply for memories)
      OFF_DELAY_0_CTRL       : aliased OFF_DELAY_0_CTRL_Register;
      --  Controls delays for turning OFF power
      OFF_DELAY_1_CTRL       : aliased OFF_DELAY_1_CTRL_Register;
      --  Controls the delays when turning ON power Default order is: Apply VDM
      --  Power (Memory Array) Apply VDD Power (VDD and standard cells) Remove
      --  STDBY_N Remove BTRIM Mux Select Remove Isolation De-assert RESETN
      --  Enable clock_en_early Enable clock_en
      ON_DELAY_0_CTRL        : aliased ON_DELAY_0_CTRL_Register;
      --  Controls delays for turning ON power
      ON_DELAY_1_CTRL        : aliased ON_DELAY_1_CTRL_Register;
      --  Delay control for the vdd_dcdc_en signal (BLE domain only)
      VDD_DCDC_EN_DELAY_CTRL : aliased VDD_DCDC_EN_DELAY_CTRL_Register;
      --  Bypass control for misc signals
      MISC_BYPASS_0_CTRL     : aliased MISC_BYPASS_0_CTRL_Register;
      --  Raw Wakeup Bits
      RAW_WAKEUP_BITS        : aliased RAW_WAKEUP_BITS_Register;
      --  Individual Power Domain Wakeup Bits
      PD_WAKEUP_BITS         : aliased PD_WAKEUP_BITS_Register;
      --  Serviced Request Status Bits
      SERVICED_REQUEST       : aliased SERVICED_REQUEST_Register;
      --  Active Request Status Bits
      ACTIVE_REQUEST         : aliased ACTIVE_REQUEST_Register;
      --  Current Logic FSM States
      LOGIC_FSM_STATES       : aliased LOGIC_FSM_STATES_Register;
   end record
     with Volatile;

   for AON_PWR_SEQ0_Peripheral use record
      GPIO_WAKEUP_CTRL       at 16#0# range 0 .. 7;
      AON_ST_WAKEUP_CTRL     at 16#C# range 0 .. 7;
      LPMCU_WAKEUP_CTRL      at 16#10# range 0 .. 15;
      BLE_ST_WAKEUP_CTRL     at 16#14# range 0 .. 7;
      LPMCU_SLEEP_1_CTRL     at 16#20# range 0 .. 31;
      OFF_DELAY_0_CTRL       at 16#40# range 0 .. 31;
      OFF_DELAY_1_CTRL       at 16#44# range 0 .. 31;
      ON_DELAY_0_CTRL        at 16#48# range 0 .. 15;
      ON_DELAY_1_CTRL        at 16#4C# range 0 .. 31;
      VDD_DCDC_EN_DELAY_CTRL at 16#50# range 0 .. 15;
      MISC_BYPASS_0_CTRL     at 16#218# range 0 .. 15;
      RAW_WAKEUP_BITS        at 16#300# range 0 .. 7;
      PD_WAKEUP_BITS         at 16#304# range 0 .. 15;
      SERVICED_REQUEST       at 16#308# range 0 .. 15;
      ACTIVE_REQUEST         at 16#30C# range 0 .. 15;
      LOGIC_FSM_STATES       at 16#3F0# range 0 .. 31;
   end record;

   --  Always On Power Sequencer
   AON_PWR_SEQ0_Periph : aliased AON_PWR_SEQ0_Peripheral
     with Import, Address => System'To_Address (16#4000E000#);

end SAM_SVD.AON_PWR_SEQ;
