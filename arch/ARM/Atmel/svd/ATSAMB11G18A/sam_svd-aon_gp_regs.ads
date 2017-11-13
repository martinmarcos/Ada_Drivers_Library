--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11G18A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.AON_GP_REGS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype AON_PINMUX_SEL_AO_GPIO_0_SEL_Field is HAL.UInt2;
   subtype AON_PINMUX_SEL_AO_GPIO_1_SEL_Field is HAL.UInt2;
   subtype AON_PINMUX_SEL_AO_GPIO_2_SEL_Field is HAL.UInt2;

   --  Controls the pinmux selection for the AO GPIOs
   type AON_PINMUX_SEL_Register is record
      --  Pinmux select for AO_GPIO_0
      AO_GPIO_0_SEL  : AON_PINMUX_SEL_AO_GPIO_0_SEL_Field := 16#1#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Pinmux select for AO_GPIO_1
      AO_GPIO_1_SEL  : AON_PINMUX_SEL_AO_GPIO_1_SEL_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Pinmux select for AO_GPIO_2
      AO_GPIO_2_SEL  : AON_PINMUX_SEL_AO_GPIO_2_SEL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for AON_PINMUX_SEL_Register use record
      AO_GPIO_0_SEL  at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      AO_GPIO_1_SEL  at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AO_GPIO_2_SEL  at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   subtype AON_PMU_CTRL_PMU_RETN_VAL_SEL_Field is HAL.UInt2;
   subtype AON_PMU_CTRL_PMU_MUX_A_Field is HAL.UInt3;
   subtype AON_PMU_CTRL_PMU_MUX_SEL_Field is HAL.UInt4;

   --  Always On Misc Control
   type AON_PMU_CTRL_Register is record
      --  If 1 then uses the frequency hopping table otherwise registers in PD0
      PMU_REGS_4TO1_SEL       : Boolean := False;
      --  Enables the PMU RTC clock
      PMU_RTC_CLK_EN          : Boolean := True;
      --  unspecified
      Reserved_2_3            : HAL.UInt2 := 16#0#;
      --  Retention Voltage Selection
      PMU_RETN_VAL_SEL        : AON_PMU_CTRL_PMU_RETN_VAL_SEL_Field := 16#2#;
      --  unspecified
      Reserved_6_6            : HAL.Bit := 16#0#;
      --  Enables the EFUSE LDO
      EFUSE_LDO_EN            : Boolean := False;
      --  PMU MUX EN
      PMU_MUX_EN              : Boolean := False;
      --  PMU MUX A
      PMU_MUX_A               : AON_PMU_CTRL_PMU_MUX_A_Field := 16#0#;
      --  PMU MUX SEL
      PMU_MUX_SEL             : AON_PMU_CTRL_PMU_MUX_SEL_Field := 16#0#;
      --  PMU Sensor ADC Enable
      PMU_SENS_ADC_EN         : Boolean := False;
      --  PMU Sensor ADC Reset
      PMU_SENS_ADC_RST        : Boolean := True;
      --  PMU BGR EN
      PMU_BGR_EN              : Boolean := False;
      --  Enables the 2MHz OSC clock coming to the digital from the PMU
      PMU_2MHZ_CLK_EN         : Boolean := True;
      --  If set, this will force off the OSC 26 MHz clock, otherwise this will
      --  follow the power for PD1
      PMU_26MHZ_CLK_FORCE_OFF : Boolean := False;
      --  unspecified
      Reserved_21_31          : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AON_PMU_CTRL_Register use record
      PMU_REGS_4TO1_SEL       at 0 range 0 .. 0;
      PMU_RTC_CLK_EN          at 0 range 1 .. 1;
      Reserved_2_3            at 0 range 2 .. 3;
      PMU_RETN_VAL_SEL        at 0 range 4 .. 5;
      Reserved_6_6            at 0 range 6 .. 6;
      EFUSE_LDO_EN            at 0 range 7 .. 7;
      PMU_MUX_EN              at 0 range 8 .. 8;
      PMU_MUX_A               at 0 range 9 .. 11;
      PMU_MUX_SEL             at 0 range 12 .. 15;
      PMU_SENS_ADC_EN         at 0 range 16 .. 16;
      PMU_SENS_ADC_RST        at 0 range 17 .. 17;
      PMU_BGR_EN              at 0 range 18 .. 18;
      PMU_2MHZ_CLK_EN         at 0 range 19 .. 19;
      PMU_26MHZ_CLK_FORCE_OFF at 0 range 20 .. 20;
      Reserved_21_31          at 0 range 21 .. 31;
   end record;

   --  Always On BLE LP Control
   type AON_BLE_LP_CTRL_Register is record
      --  If set, this will latch the wakeup signal in the BLE LP block
      WAKEUP_LP_LATCH         : Boolean := False;
      --  If set, this will use the sync flops for deep sleep stat
      DEEP_SLEEP_STAT_SYNC_EN : Boolean := False;
      --  unspecified
      Reserved_2_7            : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AON_BLE_LP_CTRL_Register use record
      WAKEUP_LP_LATCH         at 0 range 0 .. 0;
      DEEP_SLEEP_STAT_SYNC_EN at 0 range 1 .. 1;
      Reserved_2_7            at 0 range 2 .. 7;
   end record;

   --  Always On Misc Control
   type AON_MISC_CTRL_Register is record
      --  unspecified
      Reserved_0_0                  : HAL.Bit := 16#0#;
      --  If set, this will use the RTC version of the 32khz clock for the
      --  sleep timer
      USE_RTC_32KHZ_CLK_SLEEP_TIMER : Boolean := False;
      --  If set, this will use an external RTC for the 32khz clock for the
      --  sleep timer
      USE_EXT_32KHZ_CLK_SLEEP_TIMER : Boolean := False;
      --  If 1, then it uses the CPU register bit, otherwise LP_BOOT_PIN is
      --  connected
      LPMCU_BOOT_RESET_MUXSEL       : Boolean := False;
      --  If 1, then the ARM will use the boot regs instead of the boot rom for
      --  the first 4 boot addresses (0x0 - 0xF)
      LPMCU_USE_BOOT_REGS           : Boolean := False;
      --  If 1, then it will use the PD0 register value for LPMCU CPU RESET
      --  (higher priority than lpmcu_boot_reset_muxsel)
      LPMCU_CPU_RESET_OVERRIDE_EN   : Boolean := False;
      --  If lpmcu_cpu_reset_override_en is set then this value will be used
      --  for the LPMCU CPU RESET
      LPMCU_CPU_RESET_OVERRIDE_VAL  : Boolean := False;
      --  unspecified
      Reserved_7_13                 : HAL.UInt7 := 16#0#;
      --  If set, this will use either the osc 2M or rtc 32kHz clock for the
      --  AON power sequencer. The field use_rtc_aon_pwr_seq_clk determines
      --  which.
      USE_2M_AON_PWR_SEQ_CLK        : Boolean := False;
      --  If set, this will use the osc 2M clock as the PD0 testbus clock
      USE_OSC2M_AS_TB_CLK           : Boolean := False;
      --  If set, this will enable the 32khz clock to the AON Sleep Timer
      AON_SLEEP_TIMER_CLK_EN        : Boolean := True;
      --  If set, this will enable the 32khz clock to the AON pads as an output
      --  of the chip
      AON_EXT_32KHZ_OUT_EN          : Boolean := False;
      --  If set, this will use the RTC clock as the AON power sequencer clock
      --  once use_2m_aon_pwr_seq_clk is also set. This must be set first.
      USE_RTC_AON_PWR_SEQ_CLK       : Boolean := False;
      --  If set, this will invert the wakeup gpio_0
      INVERT_WAKEUP_GPIO_0          : Boolean := False;
      --  If set, this will force off the XO, otherwise XO is always on if BLE
      --  core is powered on.
      FORCE_OFF_XO                  : Boolean := False;
      --  If set, this will force the XO into bypass mode.
      FORCE_XO_TO_BYPASS_MODE       : Boolean := False;
      --  unspecified
      Reserved_22_31                : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AON_MISC_CTRL_Register use record
      Reserved_0_0                  at 0 range 0 .. 0;
      USE_RTC_32KHZ_CLK_SLEEP_TIMER at 0 range 1 .. 1;
      USE_EXT_32KHZ_CLK_SLEEP_TIMER at 0 range 2 .. 2;
      LPMCU_BOOT_RESET_MUXSEL       at 0 range 3 .. 3;
      LPMCU_USE_BOOT_REGS           at 0 range 4 .. 4;
      LPMCU_CPU_RESET_OVERRIDE_EN   at 0 range 5 .. 5;
      LPMCU_CPU_RESET_OVERRIDE_VAL  at 0 range 6 .. 6;
      Reserved_7_13                 at 0 range 7 .. 13;
      USE_2M_AON_PWR_SEQ_CLK        at 0 range 14 .. 14;
      USE_OSC2M_AS_TB_CLK           at 0 range 15 .. 15;
      AON_SLEEP_TIMER_CLK_EN        at 0 range 16 .. 16;
      AON_EXT_32KHZ_OUT_EN          at 0 range 17 .. 17;
      USE_RTC_AON_PWR_SEQ_CLK       at 0 range 18 .. 18;
      INVERT_WAKEUP_GPIO_0          at 0 range 19 .. 19;
      FORCE_OFF_XO                  at 0 range 20 .. 20;
      FORCE_XO_TO_BYPASS_MODE       at 0 range 21 .. 21;
      Reserved_22_31                at 0 range 22 .. 31;
   end record;

   --  Active Low Always On Reset Control
   type AON_GLOBAL_RESET_Register is record
      --  Global Reset
      GLOBAL_RSTN      : Boolean := True;
      --  Sleep Timer Reset
      SLEEP_TIMER_RSTN : Boolean := True;
      --  unspecified
      Reserved_2_2     : HAL.Bit := 16#0#;
      --  BLE Low Power Reset
      BLE_LP_RSTN      : Boolean := True;
      --  Allow the SW to force PD4 into reset
      PD4_RSTN         : Boolean := True;
      --  unspecified
      Reserved_5_7     : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AON_GLOBAL_RESET_Register use record
      GLOBAL_RSTN      at 0 range 0 .. 0;
      SLEEP_TIMER_RSTN at 0 range 1 .. 1;
      Reserved_2_2     at 0 range 2 .. 2;
      BLE_LP_RSTN      at 0 range 3 .. 3;
      PD4_RSTN         at 0 range 4 .. 4;
      Reserved_5_7     at 0 range 5 .. 7;
   end record;

   --  Active Low Always On Pull Enable Control
   type AON_PULL_ENABLE_Register is record
      --  Pull Enable for AO_GPIO_0
      AO_GPIO_0    : Boolean := False;
      --  Pull Enable for AO_GPIO_1
      AO_GPIO_1    : Boolean := False;
      --  Pull Enable for AO_GPIO_2
      AO_GPIO_2    : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for AON_PULL_ENABLE_Register use record
      AO_GPIO_0    at 0 range 0 .. 0;
      AO_GPIO_1    at 0 range 1 .. 1;
      AO_GPIO_2    at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   subtype AON_RESET_CTRL_PD1_COUNT_Field is HAL.UInt4;
   subtype AON_RESET_CTRL_PD4_COUNT_Field is HAL.UInt4;
   subtype AON_RESET_CTRL_PD6_COUNT_Field is HAL.UInt4;

   --  Reset Count Control for PD1, PD4, PD6 and PD7
   type AON_RESET_CTRL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Number of clock cycles to delay the PD1 reset. (also for PD7) Upper 4
      --  MSBs only (bits 3:0 will be forced to 0)
      PD1_COUNT      : AON_RESET_CTRL_PD1_COUNT_Field := 16#A#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Number of clock cycles to delay the PD4 reset. Upper 4 MSBs only
      --  (bits 3:0 will be forced to 0)
      PD4_COUNT      : AON_RESET_CTRL_PD4_COUNT_Field := 16#A#;
      --  Number of clock cycles to delay the PD6 reset
      PD6_COUNT      : AON_RESET_CTRL_PD6_COUNT_Field := 16#3#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AON_RESET_CTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PD1_COUNT      at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      PD4_COUNT      at 0 range 12 .. 15;
      PD6_COUNT      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Select clock edge for Vreg comparator in buck converter
   type RF_PMU_REGS_0_CLK_EDGE_SEL_Field is
     (
      --  Comparator samples on rising edge of clock
      RF_PMU_REGS_0_CLK_EDGE_SEL_Field_0,
      --  Comparator samples on falling edge of clock
      RF_PMU_REGS_0_CLK_EDGE_SEL_Field_1)
     with Size => 1;
   for RF_PMU_REGS_0_CLK_EDGE_SEL_Field use
     (RF_PMU_REGS_0_CLK_EDGE_SEL_Field_0 => 0,
      RF_PMU_REGS_0_CLK_EDGE_SEL_Field_1 => 1);

   --  Select the output voltage of the buck converter
   type RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field is
     (
      --  1.12V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_0,
      --  1.15V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_1,
      --  1.17V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_2,
      --  1.20V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_3,
      --  1.22V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_4,
      --  1.25V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_5,
      --  1.27V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_6,
      --  1.30V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_7,
      --  1.32V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_8,
      --  1.35V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_9,
      --  1.37V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_10,
      --  1.40V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_11,
      --  1.42V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_12,
      --  1.45V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_13,
      --  1.47V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_14,
      --  1.50V
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_15)
     with Size => 4;
   for RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field use
     (RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_0 => 0,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_1 => 1,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_2 => 2,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_3 => 3,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_4 => 4,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_5 => 5,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_6 => 6,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_7 => 7,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_8 => 8,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_9 => 9,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_10 => 10,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_11 => 11,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_12 => 12,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_13 => 13,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_14 => 14,
      RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_15 => 15);

   --  Comparator clock divider in buck converter
   type RF_PMU_REGS_0_CLK_2_4_Field is
     (
      --  Divide by 2
      RF_PMU_REGS_0_CLK_2_4_Field_0,
      --  Divide by 4
      RF_PMU_REGS_0_CLK_2_4_Field_1)
     with Size => 1;
   for RF_PMU_REGS_0_CLK_2_4_Field use
     (RF_PMU_REGS_0_CLK_2_4_Field_0 => 0,
      RF_PMU_REGS_0_CLK_2_4_Field_1 => 1);

   subtype RF_PMU_REGS_0_VREG_FILT_CTRL_Field is HAL.UInt2;

   --  Programmable divider that sets the on duration of positive charging
   --  pulse
   type RF_PMU_REGS_0_CLK_DIV_Field is
     (
      --  Divide by 4
      RF_PMU_REGS_0_CLK_DIV_Field_0,
      --  Divide by 6
      RF_PMU_REGS_0_CLK_DIV_Field_1,
      --  Divide by 8
      RF_PMU_REGS_0_CLK_DIV_Field_2,
      --  Divide by 10
      RF_PMU_REGS_0_CLK_DIV_Field_3,
      --  Divide by 12
      RF_PMU_REGS_0_CLK_DIV_Field_4,
      --  Divide by 14
      RF_PMU_REGS_0_CLK_DIV_Field_5,
      --  Divide by 16
      RF_PMU_REGS_0_CLK_DIV_Field_6)
     with Size => 3;
   for RF_PMU_REGS_0_CLK_DIV_Field use
     (RF_PMU_REGS_0_CLK_DIV_Field_0 => 0,
      RF_PMU_REGS_0_CLK_DIV_Field_1 => 1,
      RF_PMU_REGS_0_CLK_DIV_Field_2 => 2,
      RF_PMU_REGS_0_CLK_DIV_Field_3 => 3,
      RF_PMU_REGS_0_CLK_DIV_Field_4 => 4,
      RF_PMU_REGS_0_CLK_DIV_Field_5 => 5,
      RF_PMU_REGS_0_CLK_DIV_Field_6 => 6);

   --  Force reset of FSM in buck converter
   type RF_PMU_REGS_0_RESET_FSM_Field is
     (
      --  FSM is not reset
      RF_PMU_REGS_0_RESET_FSM_Field_0,
      --  FSM is reset
      RF_PMU_REGS_0_RESET_FSM_Field_1)
     with Size => 1;
   for RF_PMU_REGS_0_RESET_FSM_Field use
     (RF_PMU_REGS_0_RESET_FSM_Field_0 => 0,
      RF_PMU_REGS_0_RESET_FSM_Field_1 => 1);

   --  Allow tristate_ctrl to control minimum time between pulses of the buck
   --  converter
   type RF_PMU_REGS_0_EN_TRISTATE_Field is
     (
      --  Tristate logic disable
      RF_PMU_REGS_0_EN_TRISTATE_Field_0,
      --  Tristate logic enabled
      RF_PMU_REGS_0_EN_TRISTATE_Field_1)
     with Size => 1;
   for RF_PMU_REGS_0_EN_TRISTATE_Field use
     (RF_PMU_REGS_0_EN_TRISTATE_Field_0 => 0,
      RF_PMU_REGS_0_EN_TRISTATE_Field_1 => 1);

   --  Controls the minimum time between pulses in the buck converter
   type RF_PMU_REGS_0_TRISTATE_CTRL_Field is
     (
      --  Divide by 4
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_0,
      --  Divide by 6
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_1,
      --  Divide by 8
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_2,
      --  Divide by 10
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_3,
      --  Divide by 12
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_4,
      --  Divide by 14
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_5,
      --  Divide by 16
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_6)
     with Size => 3;
   for RF_PMU_REGS_0_TRISTATE_CTRL_Field use
     (RF_PMU_REGS_0_TRISTATE_CTRL_Field_0 => 0,
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_1 => 1,
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_2 => 2,
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_3 => 3,
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_4 => 4,
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_5 => 5,
      RF_PMU_REGS_0_TRISTATE_CTRL_Field_6 => 6);

   --  Controls a fixed comparator offset in the buck converter for positive
   --  pulses
   type RF_PMU_REGS_0_OFFSETP_CTRL_Field is
     (
      --  0.0mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_0,
      --  0.4mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_1,
      --  0.8mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_2,
      --  1.2mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_3,
      --  1.6mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_4,
      --  2.0mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_5,
      --  2.4mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_6,
      --  2.8mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_7,
      --  3.2mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_8,
      --  3.6mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_9,
      --  4.0mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_10,
      --  4.4mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_11,
      --  4.8mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_12,
      --  5.2mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_13,
      --  5.6mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_14,
      --  6.0mV offset
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_15)
     with Size => 4;
   for RF_PMU_REGS_0_OFFSETP_CTRL_Field use
     (RF_PMU_REGS_0_OFFSETP_CTRL_Field_0 => 0,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_1 => 1,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_2 => 2,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_3 => 3,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_4 => 4,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_5 => 5,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_6 => 6,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_7 => 7,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_8 => 8,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_9 => 9,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_10 => 10,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_11 => 11,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_12 => 12,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_13 => 13,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_14 => 14,
      RF_PMU_REGS_0_OFFSETP_CTRL_Field_15 => 15);

   --  Controls a fixed comparator offset in the buck converter for negative
   --  pulses
   type RF_PMU_REGS_0_OFFSETN_CTRL_Field is
     (
      --  0.0mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_0,
      --  0.4mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_1,
      --  0.8mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_2,
      --  1.2mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_3,
      --  1.6mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_4,
      --  2.0mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_5,
      --  2.4mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_6,
      --  2.8mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_7,
      --  3.2mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_8,
      --  3.6mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_9,
      --  4.0mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_10,
      --  4.4mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_11,
      --  4.8mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_12,
      --  5.2mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_13,
      --  5.6mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_14,
      --  6.0mV offset
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_15)
     with Size => 4;
   for RF_PMU_REGS_0_OFFSETN_CTRL_Field use
     (RF_PMU_REGS_0_OFFSETN_CTRL_Field_0 => 0,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_1 => 1,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_2 => 2,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_3 => 3,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_4 => 4,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_5 => 5,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_6 => 6,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_7 => 7,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_8 => 8,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_9 => 9,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_10 => 10,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_11 => 11,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_12 => 12,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_13 => 13,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_14 => 14,
      RF_PMU_REGS_0_OFFSETN_CTRL_Field_15 => 15);

   --  Power switch units for the buck converter
   type RF_PMU_REGS_0_P_SW_CTRL_Field is
     (
      --  0 power switches enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_0,
      --  1 power switch enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_1,
      --  2 power switches enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_3,
      --  3 power switches enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_7,
      --  4 power switches enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_15,
      --  5 power switches enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_31,
      --  6 power switches enabled
      RF_PMU_REGS_0_P_SW_CTRL_Field_63)
     with Size => 7;
   for RF_PMU_REGS_0_P_SW_CTRL_Field use
     (RF_PMU_REGS_0_P_SW_CTRL_Field_0 => 0,
      RF_PMU_REGS_0_P_SW_CTRL_Field_1 => 1,
      RF_PMU_REGS_0_P_SW_CTRL_Field_3 => 3,
      RF_PMU_REGS_0_P_SW_CTRL_Field_7 => 7,
      RF_PMU_REGS_0_P_SW_CTRL_Field_15 => 15,
      RF_PMU_REGS_0_P_SW_CTRL_Field_31 => 31,
      RF_PMU_REGS_0_P_SW_CTRL_Field_63 => 63);

   --  Source clock for the buck converter
   type RF_PMU_REGS_0_CLK_SEL_Field is
     (
      --  Internal 26MHz clock
      RF_PMU_REGS_0_CLK_SEL_Field_0,
      --  External 52MHz clock
      RF_PMU_REGS_0_CLK_SEL_Field_1)
     with Size => 1;
   for RF_PMU_REGS_0_CLK_SEL_Field use
     (RF_PMU_REGS_0_CLK_SEL_Field_0 => 0,
      RF_PMU_REGS_0_CLK_SEL_Field_1 => 1);

   --  RF PMU Registers
   type RF_PMU_REGS_0_Register is record
      --  Select clock edge for Vreg comparator in buck converter
      CLK_EDGE_SEL   : RF_PMU_REGS_0_CLK_EDGE_SEL_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_CLK_EDGE_SEL_Field_1;
      --  Select the output voltage of the buck converter
      VOUT_CTRL_BUCK : RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_VOUT_CTRL_BUCK_Field_4;
      --  Comparator clock divider in buck converter
      CLK_2_4        : RF_PMU_REGS_0_CLK_2_4_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_CLK_2_4_Field_0;
      --  Not Used
      VREG_FILT_CTRL : RF_PMU_REGS_0_VREG_FILT_CTRL_Field := 16#0#;
      --  Programmable divider that sets the on duration of positive charging
      --  pulse
      CLK_DIV        : RF_PMU_REGS_0_CLK_DIV_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_CLK_DIV_Field_4;
      --  Force reset of FSM in buck converter
      RESET_FSM      : RF_PMU_REGS_0_RESET_FSM_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_RESET_FSM_Field_0;
      --  Allow tristate_ctrl to control minimum time between pulses of the
      --  buck converter
      EN_TRISTATE    : RF_PMU_REGS_0_EN_TRISTATE_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_EN_TRISTATE_Field_0;
      --  Controls the minimum time between pulses in the buck converter
      TRISTATE_CTRL  : RF_PMU_REGS_0_TRISTATE_CTRL_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_TRISTATE_CTRL_Field_0;
      --  Controls a fixed comparator offset in the buck converter for positive
      --  pulses
      OFFSETP_CTRL   : RF_PMU_REGS_0_OFFSETP_CTRL_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_OFFSETP_CTRL_Field_0;
      --  Controls a fixed comparator offset in the buck converter for negative
      --  pulses
      OFFSETN_CTRL   : RF_PMU_REGS_0_OFFSETN_CTRL_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_OFFSETN_CTRL_Field_6;
      --  Power switch units for the buck converter
      P_SW_CTRL      : RF_PMU_REGS_0_P_SW_CTRL_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_P_SW_CTRL_Field_15;
      --  Source clock for the buck converter
      CLK_SEL        : RF_PMU_REGS_0_CLK_SEL_Field :=
                        SAM_SVD.AON_GP_REGS.RF_PMU_REGS_0_CLK_SEL_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RF_PMU_REGS_0_Register use record
      CLK_EDGE_SEL   at 0 range 0 .. 0;
      VOUT_CTRL_BUCK at 0 range 1 .. 4;
      CLK_2_4        at 0 range 5 .. 5;
      VREG_FILT_CTRL at 0 range 6 .. 7;
      CLK_DIV        at 0 range 8 .. 10;
      RESET_FSM      at 0 range 11 .. 11;
      EN_TRISTATE    at 0 range 12 .. 12;
      TRISTATE_CTRL  at 0 range 13 .. 15;
      OFFSETP_CTRL   at 0 range 16 .. 19;
      OFFSETN_CTRL   at 0 range 20 .. 23;
      P_SW_CTRL      at 0 range 24 .. 30;
      CLK_SEL        at 0 range 31 .. 31;
   end record;

   --  Internal reference voltage level for sensor ADC
   type RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field is
     (
      --  0.5V
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_0,
      --  0.6V
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_1,
      --  0.7V
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_2,
      --  0.8V
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_3,
      --  0.9V
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_4,
      --  1.0V
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_5,
      --  1.1V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_6,
      --  1.2V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_7,
      --  1.3V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_8,
      --  1.4V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_9,
      --  1.5V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_10,
      --  1.6V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_11,
      --  1.7V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_12,
      --  1.8V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_13,
      --  1.9V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_14,
      --  2.0V (only for VBATT gt 2.0V)
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_15)
     with Size => 4;
   for RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field use
     (RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_1 => 1,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_2 => 2,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_3 => 3,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_4 => 4,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_5 => 5,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_6 => 6,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_7 => 7,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_8 => 8,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_9 => 9,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_10 => 10,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_11 => 11,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_12 => 12,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_13 => 13,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_14 => 14,
      RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_15 => 15);

   --  Reference Voltage Source for the Sensor ADC
   type RF_PMU_REGS_1_SADC_REF_SEL_Field is
     (
      --  Buffered reference voltage
      RF_PMU_REGS_1_SADC_REF_SEL_Field_0,
      --  IR voltage
      RF_PMU_REGS_1_SADC_REF_SEL_Field_1,
      --  VBATT divided by 2
      RF_PMU_REGS_1_SADC_REF_SEL_Field_2,
      --  GPIO_MS1
      RF_PMU_REGS_1_SADC_REF_SEL_Field_3,
      --  GPIO_MS2
      RF_PMU_REGS_1_SADC_REF_SEL_Field_4,
      --  GPIO_MS3
      RF_PMU_REGS_1_SADC_REF_SEL_Field_5,
      --  GPIO_MS4
      RF_PMU_REGS_1_SADC_REF_SEL_Field_6,
      --  VBATT supply voltage
      RF_PMU_REGS_1_SADC_REF_SEL_Field_7)
     with Size => 3;
   for RF_PMU_REGS_1_SADC_REF_SEL_Field use
     (RF_PMU_REGS_1_SADC_REF_SEL_Field_0 => 0,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_1 => 1,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_2 => 2,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_3 => 3,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_4 => 4,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_5 => 5,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_6 => 6,
      RF_PMU_REGS_1_SADC_REF_SEL_Field_7 => 7);

   --  Brown Out Detector Enable Control
   type RF_PMU_REGS_1_BOD_EN_Field is
     (
      --  Disable
      RF_PMU_REGS_1_BOD_EN_Field_0,
      --  Enable
      RF_PMU_REGS_1_BOD_EN_Field_1)
     with Size => 1;
   for RF_PMU_REGS_1_BOD_EN_Field use
     (RF_PMU_REGS_1_BOD_EN_Field_0 => 0,
      RF_PMU_REGS_1_BOD_EN_Field_1 => 1);

   --  Low Power Domain Clock Injection Enable Control
   type RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field is
     (
      --  Disable (Free running)
      RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field_0,
      --  Enable (Lock to XO clock)
      RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field_1)
     with Size => 1;
   for RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field use
     (RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field_0 => 0,
      RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field_1 => 1);

   --  Bypass controlf for EFUSE LDO
   type RF_PMU_REGS_1_EFUSE_LDO_BYP_Field is
     (
      --  EFUSE LDO regulates from VBATT voltage to 2.5V
      RF_PMU_REGS_1_EFUSE_LDO_BYP_Field_0,
      --  EFUSE LDO is bypass to VBATT voltage
      RF_PMU_REGS_1_EFUSE_LDO_BYP_Field_1)
     with Size => 1;
   for RF_PMU_REGS_1_EFUSE_LDO_BYP_Field use
     (RF_PMU_REGS_1_EFUSE_LDO_BYP_Field_0 => 0,
      RF_PMU_REGS_1_EFUSE_LDO_BYP_Field_1 => 1);

   --  Output voltage of EFUSE LDO
   type RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field is
     (
      --  2.3V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_0,
      --  2.4V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_1,
      --  2.4V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_2,
      --  2.5V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_3,
      --  2.6V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_4,
      --  2.7V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_5,
      --  2.7V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_6,
      --  2.8V
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_7)
     with Size => 3;
   for RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field use
     (RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_1 => 1,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_2 => 2,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_3 => 3,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_4 => 4,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_5 => 5,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_6 => 6,
      RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_7 => 7);

   --  Set the current bias for the EFUSE LDO
   type RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field is
     (
      --  80uA bias current
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_0,
      --  100uA bias current
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_1,
      --  120uA bias current
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_2,
      --  140uA bias current
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_3)
     with Size => 2;
   for RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field use
     (RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_1 => 1,
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_2 => 2,
      RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_3 => 3);

   --  RTC crystal circuit feedback resistance value
   type RF_PMU_REGS_1_PIERCE_RES_CTRL_Field is
     (
      --  20Mohm resistor
      RF_PMU_REGS_1_PIERCE_RES_CTRL_Field_0,
      --  30Mohm resistor
      RF_PMU_REGS_1_PIERCE_RES_CTRL_Field_1)
     with Size => 1;
   for RF_PMU_REGS_1_PIERCE_RES_CTRL_Field use
     (RF_PMU_REGS_1_PIERCE_RES_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_PIERCE_RES_CTRL_Field_1 => 1);

   --  Transconductance of RTC oscillator
   type RF_PMU_REGS_1_PIERCE_GM_CTRL_Field is
     (
      --  75nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_0,
      --  85nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_1,
      --  96nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_2,
      --  106nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_3,
      --  116nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_4,
      --  127nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_5,
      --  137nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_6,
      --  147nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_7,
      --  158nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_8,
      --  168nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_9,
      --  178nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_10,
      --  189nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_11,
      --  199nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_12,
      --  209nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_13,
      --  220nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_14,
      --  230nS
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_15)
     with Size => 4;
   for RF_PMU_REGS_1_PIERCE_GM_CTRL_Field use
     (RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_1 => 1,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_2 => 2,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_3 => 3,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_4 => 4,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_5 => 5,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_6 => 6,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_7 => 7,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_8 => 8,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_9 => 9,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_10 => 10,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_11 => 11,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_12 => 12,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_13 => 13,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_14 => 14,
      RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_15 => 15);

   --  On chip single ended capacitors for RTC oscillator
   type RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field is
     (
      --  0pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_0,
      --  1pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_1,
      --  2pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_2,
      --  3pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_3,
      --  4pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_4,
      --  5pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_5,
      --  6pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_6,
      --  7pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_7,
      --  8pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_8,
      --  9pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_9,
      --  10pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_10,
      --  11pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_11,
      --  12pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_12,
      --  13pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_13,
      --  14pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_14,
      --  15pF
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_15)
     with Size => 4;
   for RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field use
     (RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_1 => 1,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_2 => 2,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_3 => 3,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_4 => 4,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_5 => 5,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_6 => 6,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_7 => 7,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_8 => 8,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_9 => 9,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_10 => 10,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_11 => 11,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_12 => 12,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_13 => 13,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_14 => 14,
      RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_15 => 15);

   --  enable input channel time multiplexing to the sensor ADC
   type RF_PMU_REGS_1_SADC_CHN_CTRL_Field is
     (
      --  Conversion is done on the four input channels in a time multiplexed
      --  manner
      RF_PMU_REGS_1_SADC_CHN_CTRL_Field_0,
      --  Conversion is done for one specific input channel
      RF_PMU_REGS_1_SADC_CHN_CTRL_Field_1)
     with Size => 1;
   for RF_PMU_REGS_1_SADC_CHN_CTRL_Field use
     (RF_PMU_REGS_1_SADC_CHN_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_SADC_CHN_CTRL_Field_1 => 1);

   --  Input channel selection for the sensor ADC
   type RF_PMU_REGS_1_SADC_CHN_SEL_Field is
     (
      --  GPIO_MS1
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_0,
      --  GPIO_MS2
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_1,
      --  GPIO_MS3
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_2,
      --  GPIO_MS4
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_3,
      --  On Chip Temperature
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_4,
      --  VBATT divided by 4 voltage level
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_5,
      --  LP_LDO_OUT_1P2 low power domain voltage
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_6,
      --  Sensor ADC reference voltage level
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_7)
     with Size => 3;
   for RF_PMU_REGS_1_SADC_CHN_SEL_Field use
     (RF_PMU_REGS_1_SADC_CHN_SEL_Field_0 => 0,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_1 => 1,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_2 => 2,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_3 => 3,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_4 => 4,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_5 => 5,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_6 => 6,
      RF_PMU_REGS_1_SADC_CHN_SEL_Field_7 => 7);

   --  Optional mode to improve sub-ranging technique of the sensor ADC
   type RF_PMU_REGS_1_CODE_IN_Field is
     (
      --  input dynamic range from 0V to VBATT voltage level
      RF_PMU_REGS_1_CODE_IN_Field_0,
      --  input dynamic range from 0.08*VBATT to 0.92*VBATT
      RF_PMU_REGS_1_CODE_IN_Field_1,
      --  input dynamic range from 0.17*VBATT to 0.83*VBATT
      RF_PMU_REGS_1_CODE_IN_Field_2,
      --  input dynamic range from 0.25*VBATT to 0.75*VBATT
      RF_PMU_REGS_1_CODE_IN_Field_3)
     with Size => 2;
   for RF_PMU_REGS_1_CODE_IN_Field use
     (RF_PMU_REGS_1_CODE_IN_Field_0 => 0,
      RF_PMU_REGS_1_CODE_IN_Field_1 => 1,
      RF_PMU_REGS_1_CODE_IN_Field_2 => 2,
      RF_PMU_REGS_1_CODE_IN_Field_3 => 3);

   --  Comparator biasing current for different sampling rates of the sensor
   --  ADC
   type RF_PMU_REGS_1_SADC_LP_CTRL_Field is
     (
      --  Comparator bias current is 4uA
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_0,
      --  Comparator bias current is 8uA
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_1,
      --  Comparator bias current is 20uA
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_2,
      --  Comparator bias current is 24uA
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_3)
     with Size => 2;
   for RF_PMU_REGS_1_SADC_LP_CTRL_Field use
     (RF_PMU_REGS_1_SADC_LP_CTRL_Field_0 => 0,
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_1 => 1,
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_2 => 2,
      RF_PMU_REGS_1_SADC_LP_CTRL_Field_3 => 3);

   --  RF PMU Registers
   type RF_PMU_REGS_1_Register is record
      --  Internal reference voltage level for sensor ADC
      SADC_BIAS_RES_CTRL   : RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_SADC_BIAS_RES_CTRL_Field_2;
      --  Reference Voltage Source for the Sensor ADC
      SADC_REF_SEL         : RF_PMU_REGS_1_SADC_REF_SEL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_SADC_REF_SEL_Field_0;
      --  Brown Out Detector Enable Control
      BOD_EN               : RF_PMU_REGS_1_BOD_EN_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_BOD_EN_Field_1;
      --  Low Power Domain Clock Injection Enable Control
      LPD_CLK_INJECT_EN    : RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_LPD_CLK_INJECT_EN_Field_0;
      --  Bypass controlf for EFUSE LDO
      EFUSE_LDO_BYP        : RF_PMU_REGS_1_EFUSE_LDO_BYP_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_EFUSE_LDO_BYP_Field_0;
      --  Output voltage of EFUSE LDO
      EFUSE_LDO_VOUT_CTRL  : RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_EFUSE_LDO_VOUT_CTRL_Field_3;
      --  Set the current bias for the EFUSE LDO
      EFUSE_LDO_IBIAS_CTRL : RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_EFUSE_LDO_IBIAS_CTRL_Field_0;
      --  RTC crystal circuit feedback resistance value
      PIERCE_RES_CTRL      : RF_PMU_REGS_1_PIERCE_RES_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_PIERCE_RES_CTRL_Field_1;
      --  Transconductance of RTC oscillator
      PIERCE_GM_CTRL       : RF_PMU_REGS_1_PIERCE_GM_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_PIERCE_GM_CTRL_Field_8;
      --  On chip single ended capacitors for RTC oscillator
      PIERCE_CAP_CTRL      : RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_PIERCE_CAP_CTRL_Field_8;
      --  enable input channel time multiplexing to the sensor ADC
      SADC_CHN_CTRL        : RF_PMU_REGS_1_SADC_CHN_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_SADC_CHN_CTRL_Field_1;
      --  Input channel selection for the sensor ADC
      SADC_CHN_SEL         : RF_PMU_REGS_1_SADC_CHN_SEL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_SADC_CHN_SEL_Field_0;
      --  Optional mode to improve sub-ranging technique of the sensor ADC
      CODE_IN              : RF_PMU_REGS_1_CODE_IN_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_CODE_IN_Field_3;
      --  Comparator biasing current for different sampling rates of the sensor
      --  ADC
      SADC_LP_CTRL         : RF_PMU_REGS_1_SADC_LP_CTRL_Field :=
                              SAM_SVD.AON_GP_REGS.RF_PMU_REGS_1_SADC_LP_CTRL_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RF_PMU_REGS_1_Register use record
      SADC_BIAS_RES_CTRL   at 0 range 0 .. 3;
      SADC_REF_SEL         at 0 range 4 .. 6;
      BOD_EN               at 0 range 7 .. 7;
      LPD_CLK_INJECT_EN    at 0 range 8 .. 8;
      EFUSE_LDO_BYP        at 0 range 9 .. 9;
      EFUSE_LDO_VOUT_CTRL  at 0 range 10 .. 12;
      EFUSE_LDO_IBIAS_CTRL at 0 range 13 .. 14;
      PIERCE_RES_CTRL      at 0 range 15 .. 15;
      PIERCE_GM_CTRL       at 0 range 16 .. 19;
      PIERCE_CAP_CTRL      at 0 range 20 .. 23;
      SADC_CHN_CTRL        at 0 range 24 .. 24;
      SADC_CHN_SEL         at 0 range 25 .. 27;
      CODE_IN              at 0 range 28 .. 29;
      SADC_LP_CTRL         at 0 range 30 .. 31;
   end record;

   --  Bypass mode of digital core LDO which regulates from the buck converter
   --  output to the local power domains of each digital power island
   type RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field is
     (
      --  Not in bypass mode
      RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field_0,
      --  Bypass mode so output will be shorted to the buck converter output
      RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field_1)
     with Size => 1;
   for RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field use
     (RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field_0 => 0,
      RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field_1 => 1);

   --  Voltage level of the digital core LDO when LDO is not in bypass mode
   type RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field is
     (
      --  0.91V
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_0,
      --  0.96V
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_1,
      --  1.02V
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_2,
      --  1.09V
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_3)
     with Size => 2;
   for RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field use
     (RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_0 => 0,
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_1 => 1,
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_2 => 2,
      RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_3 => 3);

   --  Controls the sensor ADCs internal reference buffer output resistance
   type RF_PMU_REGS_2_REF_HP_MODE_Field is
     (
      --  setting for applications that require less than 10KSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_0,
      --  setting for throughputs between 10KSPS and 100KSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_1,
      --  setting for 100KSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_2,
      --  setting for 325KSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_3,
      --  setting for 550KSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_4,
      --  setting for 775KSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_5,
      --  setting for 1MSPS
      RF_PMU_REGS_2_REF_HP_MODE_Field_6)
     with Size => 3;
   for RF_PMU_REGS_2_REF_HP_MODE_Field use
     (RF_PMU_REGS_2_REF_HP_MODE_Field_0 => 0,
      RF_PMU_REGS_2_REF_HP_MODE_Field_1 => 1,
      RF_PMU_REGS_2_REF_HP_MODE_Field_2 => 2,
      RF_PMU_REGS_2_REF_HP_MODE_Field_3 => 3,
      RF_PMU_REGS_2_REF_HP_MODE_Field_4 => 4,
      RF_PMU_REGS_2_REF_HP_MODE_Field_5 => 5,
      RF_PMU_REGS_2_REF_HP_MODE_Field_6 => 6);

   --  Enable sensor ADC offset calibration
   type RF_PMU_REGS_2_OFFSET_CAL_EN_Field is
     (
      --  Disable
      RF_PMU_REGS_2_OFFSET_CAL_EN_Field_0,
      --  Enable
      RF_PMU_REGS_2_OFFSET_CAL_EN_Field_1)
     with Size => 1;
   for RF_PMU_REGS_2_OFFSET_CAL_EN_Field use
     (RF_PMU_REGS_2_OFFSET_CAL_EN_Field_0 => 0,
      RF_PMU_REGS_2_OFFSET_CAL_EN_Field_1 => 1);

   --  Control the 26MHz RC oscillator frequency
   type RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field is
     (
      --  12MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_0,
      --  13MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_1,
      --  14MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_2,
      --  15MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_3,
      --  16MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_4,
      --  17MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_5,
      --  18MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_6,
      --  19MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_7,
      --  20MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_8,
      --  21MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_9,
      --  22MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_10,
      --  23MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_11,
      --  24MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_12,
      --  25MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_13,
      --  26MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_14,
      --  27MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_15,
      --  28MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_16,
      --  29MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_17,
      --  30MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_18,
      --  31MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_19,
      --  32MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_20,
      --  33MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_21,
      --  34MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_22,
      --  35MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_23,
      --  36MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_24,
      --  37MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_25,
      --  38MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_26,
      --  39MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_27,
      --  40MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_28,
      --  41MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_29,
      --  42MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_30,
      --  43MHz
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_31)
     with Size => 5;
   for RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field use
     (RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_0 => 0,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_1 => 1,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_2 => 2,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_3 => 3,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_4 => 4,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_5 => 5,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_6 => 6,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_7 => 7,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_8 => 8,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_9 => 9,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_10 => 10,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_11 => 11,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_12 => 12,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_13 => 13,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_14 => 14,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_15 => 15,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_16 => 16,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_17 => 17,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_18 => 18,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_19 => 19,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_20 => 20,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_21 => 21,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_22 => 22,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_23 => 23,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_24 => 24,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_25 => 25,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_26 => 26,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_27 => 27,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_28 => 28,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_29 => 29,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_30 => 30,
      RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_31 => 31);

   subtype RF_PMU_REGS_2_RESERVED_15_13_Field is HAL.UInt3;

   --  RF PMU Registers
   type RF_PMU_REGS_2_Register is record
      --  Bypass mode of digital core LDO which regulates from the buck
      --  converter output to the local power domains of each digital power
      --  island
      DIG_CORE_LDO_BYP   : RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field :=
                            SAM_SVD.AON_GP_REGS.RF_PMU_REGS_2_DIG_CORE_LDO_BYP_Field_1;
      --  Voltage level of the digital core LDO when LDO is not in bypass mode
      DIG_CORE_LDO_VCTRL : RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field :=
                            SAM_SVD.AON_GP_REGS.RF_PMU_REGS_2_DIG_CORE_LDO_VCTRL_Field_2;
      --  Controls the sensor ADCs internal reference buffer output resistance
      REF_HP_MODE        : RF_PMU_REGS_2_REF_HP_MODE_Field :=
                            SAM_SVD.AON_GP_REGS.RF_PMU_REGS_2_REF_HP_MODE_Field_0;
      --  Enable sensor ADC offset calibration
      OFFSET_CAL_EN      : RF_PMU_REGS_2_OFFSET_CAL_EN_Field :=
                            SAM_SVD.AON_GP_REGS.RF_PMU_REGS_2_OFFSET_CAL_EN_Field_0;
      --  not using
      RESERVED_7         : Boolean := False;
      --  Control the 26MHz RC oscillator frequency
      CLK_CTRL_26MHZ     : RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field :=
                            SAM_SVD.AON_GP_REGS.RF_PMU_REGS_2_CLK_CTRL_26MHZ_Field_0;
      --  not using
      RESERVED_15_13     : RF_PMU_REGS_2_RESERVED_15_13_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RF_PMU_REGS_2_Register use record
      DIG_CORE_LDO_BYP   at 0 range 0 .. 0;
      DIG_CORE_LDO_VCTRL at 0 range 1 .. 2;
      REF_HP_MODE        at 0 range 3 .. 5;
      OFFSET_CAL_EN      at 0 range 6 .. 6;
      RESERVED_7         at 0 range 7 .. 7;
      CLK_CTRL_26MHZ     at 0 range 8 .. 12;
      RESERVED_15_13     at 0 range 13 .. 15;
   end record;

   --  Analog Mode Select of Mixed Signal GPIOs
   type MS_GPIO_MODE_Register is record
      --  Active High Analog Mode Enable for Mixed Signal LP_GPIO_44
      ANALOG_ENABLE_44 : Boolean := True;
      --  Active High Analog Mode Enable for Mixed Signal LP_GPIO_45
      ANALOG_ENABLE_45 : Boolean := True;
      --  Active High Analog Mode Enable for Mixed Signal LP_GPIO_46
      ANALOG_ENABLE_46 : Boolean := True;
      --  Active High Analog Mode Enable for Mixed Signal LP_GPIO_47
      ANALOG_ENABLE_47 : Boolean := True;
      --  unspecified
      Reserved_4_7     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MS_GPIO_MODE_Register use record
      ANALOG_ENABLE_44 at 0 range 0 .. 0;
      ANALOG_ENABLE_45 at 0 range 1 .. 1;
      ANALOG_ENABLE_46 at 0 range 2 .. 2;
      ANALOG_ENABLE_47 at 0 range 3 .. 3;
      Reserved_4_7     at 0 range 4 .. 7;
   end record;

   --  Controls behaviour of IO Pads in Sleep Mode
   type IO_PADS_CONTROL_Register is record
      --  Active High Latch Enable of IO Pads configuration parameters. When
      --  Low, Pads retain their configured state during sleep mode.
      LATCH_ENABLE : Boolean := True;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for IO_PADS_CONTROL_Register use record
      LATCH_ENABLE at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Always On General Purpose Registers
   type AON_GP_REGS0_Peripheral is record
      --  Controls the pinmux selection for the AO GPIOs
      AON_PINMUX_SEL        : aliased AON_PINMUX_SEL_Register;
      --  Always On Misc Control
      AON_PMU_CTRL          : aliased AON_PMU_CTRL_Register;
      --  Always On BLE LP Control
      AON_BLE_LP_CTRL       : aliased AON_BLE_LP_CTRL_Register;
      --  Always On Misc Control
      AON_MISC_CTRL         : aliased AON_MISC_CTRL_Register;
      --  Active Low Always On Reset Control
      AON_GLOBAL_RESET      : aliased AON_GLOBAL_RESET_Register;
      --  Active Low Always On Pull Enable Control
      AON_PULL_ENABLE       : aliased AON_PULL_ENABLE_Register;
      --  Reset Count Control for PD1, PD4, PD6 and PD7
      AON_RESET_CTRL        : aliased AON_RESET_CTRL_Register;
      --  BTRIM settings for active mode (i.e. not in retention)
      AON_BTRIM_ACTIVE      : aliased HAL.UInt8;
      --  BTRIM settings for retention mode
      AON_BTRIM_RETENTION   : aliased HAL.UInt8;
      --  Usage for the LPMCU for any sort of status it needs to store for
      --  itself before it goes to sleep
      AON_LPMCU_SCRATCH_PAD : aliased HAL.UInt8;
      --  To be used by ARM to determine if it is a cold boot or not
      AON_LPMCU_COLD_BOOT   : aliased HAL.UInt8;
      --  Brown Out Detected (must be cleared manually)
      AON_BO_OUT_STATUS     : aliased HAL.UInt8;
      --  Set to 1 to clear (hold until 0 read at aon_bo_out_status and then
      --  this must be cleared to detect another brown out condition)
      CLEAR_BROWN_OUT_REG   : aliased HAL.UInt8;
      --  RF PMU Registers
      RF_PMU_REGS_0         : aliased RF_PMU_REGS_0_Register;
      --  RF PMU Registers
      RF_PMU_REGS_1         : aliased RF_PMU_REGS_1_Register;
      --  RF PMU Registers
      RF_PMU_REGS_2         : aliased RF_PMU_REGS_2_Register;
      --  Analog Mode Select of Mixed Signal GPIOs
      MS_GPIO_MODE          : aliased MS_GPIO_MODE_Register;
      --  Controls behaviour of IO Pads in Sleep Mode
      IO_PADS_CONTROL       : aliased IO_PADS_CONTROL_Register;
   end record
     with Volatile;

   for AON_GP_REGS0_Peripheral use record
      AON_PINMUX_SEL        at 16#0# range 0 .. 15;
      AON_PMU_CTRL          at 16#4# range 0 .. 31;
      AON_BLE_LP_CTRL       at 16#8# range 0 .. 7;
      AON_MISC_CTRL         at 16#C# range 0 .. 31;
      AON_GLOBAL_RESET      at 16#10# range 0 .. 7;
      AON_PULL_ENABLE       at 16#14# range 0 .. 7;
      AON_RESET_CTRL        at 16#1C# range 0 .. 31;
      AON_BTRIM_ACTIVE      at 16#20# range 0 .. 7;
      AON_BTRIM_RETENTION   at 16#24# range 0 .. 7;
      AON_LPMCU_SCRATCH_PAD at 16#40# range 0 .. 7;
      AON_LPMCU_COLD_BOOT   at 16#44# range 0 .. 7;
      AON_BO_OUT_STATUS     at 16#80# range 0 .. 7;
      CLEAR_BROWN_OUT_REG   at 16#84# range 0 .. 7;
      RF_PMU_REGS_0         at 16#400# range 0 .. 31;
      RF_PMU_REGS_1         at 16#404# range 0 .. 31;
      RF_PMU_REGS_2         at 16#408# range 0 .. 15;
      MS_GPIO_MODE          at 16#410# range 0 .. 7;
      IO_PADS_CONTROL       at 16#414# range 0 .. 7;
   end record;

   --  Always On General Purpose Registers
   AON_GP_REGS0_Periph : aliased AON_GP_REGS0_Peripheral
     with Import, Address => System'To_Address (16#4000F000#);

end SAM_SVD.AON_GP_REGS;
