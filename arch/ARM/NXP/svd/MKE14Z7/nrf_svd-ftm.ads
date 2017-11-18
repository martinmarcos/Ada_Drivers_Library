--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FTM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Prescale Factor Selection
   type SC_PS_Field is
     (
      --  Divide by 1
      Ps_0,
      --  Divide by 2
      Ps_1,
      --  Divide by 4
      Ps_2,
      --  Divide by 8
      Ps_3,
      --  Divide by 16
      Ps_4,
      --  Divide by 32
      Ps_5,
      --  Divide by 64
      Ps_6,
      --  Divide by 128
      Ps_7)
     with Size => 3;
   for SC_PS_Field use
     (Ps_0 => 0,
      Ps_1 => 1,
      Ps_2 => 2,
      Ps_3 => 3,
      Ps_4 => 4,
      Ps_5 => 5,
      Ps_6 => 6,
      Ps_7 => 7);

   --  Clock Source Selection
   type SC_CLKS_Field is
     (
      --  No clock selected. This in effect disables the FTM counter.
      Clks_0,
      --  FTM input clock
      Clks_1,
      --  Fixed frequency clock
      Clks_2,
      --  External clock
      Clks_3)
     with Size => 2;
   for SC_CLKS_Field use
     (Clks_0 => 0,
      Clks_1 => 1,
      Clks_2 => 2,
      Clks_3 => 3);

   --  Center-Aligned PWM Select
   type SC_CPWMS_Field is
     (
      --  FTM counter operates in Up Counting mode.
      Cpwms_0,
      --  FTM counter operates in Up-Down Counting mode.
      Cpwms_1)
     with Size => 1;
   for SC_CPWMS_Field use
     (Cpwms_0 => 0,
      Cpwms_1 => 1);

   --  Reload Interrupt Enable
   type SC_RIE_Field is
     (
      --  Reload interrupt is disabled.
      Rie_0,
      --  Reload interrupt is enabled.
      Rie_1)
     with Size => 1;
   for SC_RIE_Field use
     (Rie_0 => 0,
      Rie_1 => 1);

   --  Reload Flag
   type SC_RF_Field is
     (
      --  FTM counter did not reach a reload point.
      Rf_0,
      --  FTM counter reached a reload point.
      Rf_1)
     with Size => 1;
   for SC_RF_Field use
     (Rf_0 => 0,
      Rf_1 => 1);

   --  Timer Overflow Interrupt Enable
   type SC_TOIE_Field is
     (
      --  Disable TOF interrupts. Use software polling.
      Toie_0,
      --  Enable TOF interrupts. An interrupt is generated when TOF equals one.
      Toie_1)
     with Size => 1;
   for SC_TOIE_Field use
     (Toie_0 => 0,
      Toie_1 => 1);

   --  Timer Overflow Flag
   type SC_TOF_Field is
     (
      --  FTM counter has not overflowed.
      Tof_0,
      --  FTM counter has overflowed.
      Tof_1)
     with Size => 1;
   for SC_TOF_Field use
     (Tof_0 => 0,
      Tof_1 => 1);

   --  Channel 0 PWM enable bit
   type SC_PWMEN0_Field is
     (
      --  Channel output port is disabled
      Pwmen0_0,
      --  Channel output port is enabled
      Pwmen0_1)
     with Size => 1;
   for SC_PWMEN0_Field use
     (Pwmen0_0 => 0,
      Pwmen0_1 => 1);

   --  Channel 1 PWM enable bit
   type SC_PWMEN1_Field is
     (
      --  Channel output port is disabled
      Pwmen1_0,
      --  Channel output port is enabled
      Pwmen1_1)
     with Size => 1;
   for SC_PWMEN1_Field use
     (Pwmen1_0 => 0,
      Pwmen1_1 => 1);

   --  Channel 2 PWM enable bit
   type SC_PWMEN2_Field is
     (
      --  Channel output port is disabled
      Pwmen2_0,
      --  Channel output port is enabled
      Pwmen2_1)
     with Size => 1;
   for SC_PWMEN2_Field use
     (Pwmen2_0 => 0,
      Pwmen2_1 => 1);

   --  Channel 3 PWM enable bit
   type SC_PWMEN3_Field is
     (
      --  Channel output port is disabled
      Pwmen3_0,
      --  Channel output port is enabled
      Pwmen3_1)
     with Size => 1;
   for SC_PWMEN3_Field use
     (Pwmen3_0 => 0,
      Pwmen3_1 => 1);

   --  Channel 4 PWM enable bit
   type SC_PWMEN4_Field is
     (
      --  Channel output port is disabled
      Pwmen4_0,
      --  Channel output port is enabled
      Pwmen4_1)
     with Size => 1;
   for SC_PWMEN4_Field use
     (Pwmen4_0 => 0,
      Pwmen4_1 => 1);

   --  Channel 5 PWM enable bit
   type SC_PWMEN5_Field is
     (
      --  Channel output port is disabled
      Pwmen5_0,
      --  Channel output port is enabled
      Pwmen5_1)
     with Size => 1;
   for SC_PWMEN5_Field use
     (Pwmen5_0 => 0,
      Pwmen5_1 => 1);

   --  Channel 6 PWM enable bit
   type SC_PWMEN6_Field is
     (
      --  Channel output port is disabled
      Pwmen6_0,
      --  Channel output port is enabled
      Pwmen6_1)
     with Size => 1;
   for SC_PWMEN6_Field use
     (Pwmen6_0 => 0,
      Pwmen6_1 => 1);

   --  Channel 7 PWM enable bit
   type SC_PWMEN7_Field is
     (
      --  Channel output port is disabled
      Pwmen7_0,
      --  Channel output port is enabled
      Pwmen7_1)
     with Size => 1;
   for SC_PWMEN7_Field use
     (Pwmen7_0 => 0,
      Pwmen7_1 => 1);

   --  Status And Control
   type FTM0_SC_Register is record
      --  Prescale Factor Selection
      PS             : SC_PS_Field := NRF_SVD.FTM.Ps_0;
      --  Clock Source Selection
      CLKS           : SC_CLKS_Field := NRF_SVD.FTM.Clks_0;
      --  Center-Aligned PWM Select
      CPWMS          : SC_CPWMS_Field := NRF_SVD.FTM.Cpwms_0;
      --  Reload Interrupt Enable
      RIE            : SC_RIE_Field := NRF_SVD.FTM.Rie_0;
      --  Read-only. Reload Flag
      RF             : SC_RF_Field := NRF_SVD.FTM.Rf_0;
      --  Timer Overflow Interrupt Enable
      TOIE           : SC_TOIE_Field := NRF_SVD.FTM.Toie_0;
      --  Read-only. Timer Overflow Flag
      TOF            : SC_TOF_Field := NRF_SVD.FTM.Tof_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Channel 0 PWM enable bit
      PWMEN0         : SC_PWMEN0_Field := NRF_SVD.FTM.Pwmen0_0;
      --  Channel 1 PWM enable bit
      PWMEN1         : SC_PWMEN1_Field := NRF_SVD.FTM.Pwmen1_0;
      --  Channel 2 PWM enable bit
      PWMEN2         : SC_PWMEN2_Field := NRF_SVD.FTM.Pwmen2_0;
      --  Channel 3 PWM enable bit
      PWMEN3         : SC_PWMEN3_Field := NRF_SVD.FTM.Pwmen3_0;
      --  Channel 4 PWM enable bit
      PWMEN4         : SC_PWMEN4_Field := NRF_SVD.FTM.Pwmen4_0;
      --  Channel 5 PWM enable bit
      PWMEN5         : SC_PWMEN5_Field := NRF_SVD.FTM.Pwmen5_0;
      --  Channel 6 PWM enable bit
      PWMEN6         : SC_PWMEN6_Field := NRF_SVD.FTM.Pwmen6_0;
      --  Channel 7 PWM enable bit
      PWMEN7         : SC_PWMEN7_Field := NRF_SVD.FTM.Pwmen7_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_SC_Register use record
      PS             at 0 range 0 .. 2;
      CLKS           at 0 range 3 .. 4;
      CPWMS          at 0 range 5 .. 5;
      RIE            at 0 range 6 .. 6;
      RF             at 0 range 7 .. 7;
      TOIE           at 0 range 8 .. 8;
      TOF            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PWMEN0         at 0 range 16 .. 16;
      PWMEN1         at 0 range 17 .. 17;
      PWMEN2         at 0 range 18 .. 18;
      PWMEN3         at 0 range 19 .. 19;
      PWMEN4         at 0 range 20 .. 20;
      PWMEN5         at 0 range 21 .. 21;
      PWMEN6         at 0 range 22 .. 22;
      PWMEN7         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FTM0_CNT_COUNT_Field is HAL.UInt16;

   --  Counter
   type FTM0_CNT_Register is record
      --  Counter Value
      COUNT          : FTM0_CNT_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_CNT_Register use record
      COUNT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FTM0_MOD_MOD_Field is HAL.UInt16;

   --  Modulo
   type FTM0_MOD_Register is record
      --  Modulo Value
      MOD_k          : FTM0_MOD_MOD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_MOD_Register use record
      MOD_k          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DMA Enable
   type CSC0_DMA_Field is
     (
      --  Disable DMA transfers.
      Dma_0,
      --  Enable DMA transfers.
      Dma_1)
     with Size => 1;
   for CSC0_DMA_Field use
     (Dma_0 => 0,
      Dma_1 => 1);

   --  FTM counter reset by the selected input capture event.
   type CSC0_ICRST_Field is
     (
      --  FTM counter is not reset when the selected channel (n) input event is
      --  detected.
      Icrst_0,
      --  FTM counter is reset when the selected channel (n) input event is
      --  detected.
      Icrst_1)
     with Size => 1;
   for CSC0_ICRST_Field use
     (Icrst_0 => 0,
      Icrst_1 => 1);

   --  Channel (n) Interrupt Enable
   type CSC0_CHIE_Field is
     (
      --  Disable channel (n) interrupt. Use software polling.
      Chie_0,
      --  Enable channel (n) interrupt.
      Chie_1)
     with Size => 1;
   for CSC0_CHIE_Field use
     (Chie_0 => 0,
      Chie_1 => 1);

   --  Channel (n) Flag
   type CSC0_CHF_Field is
     (
      --  No channel (n) event has occurred.
      Chf_0,
      --  A channel (n) event has occurred.
      Chf_1)
     with Size => 1;
   for CSC0_CHF_Field use
     (Chf_0 => 0,
      Chf_1 => 1);

   --  Trigger mode control
   type CSC0_TRIGMODE_Field is
     (
      --  Channel outputs will generate the normal PWM outputs without
      --  generating a pulse.
      Trigmode_0,
      --  If a match in the channel occurs, a trigger generation on channel
      --  output will happen. The trigger pulse width has one FTM clock cycle.
      Trigmode_1)
     with Size => 1;
   for CSC0_TRIGMODE_Field use
     (Trigmode_0 => 0,
      Trigmode_1 => 1);

   --  Channel (n) Input State
   type CSC0_CHIS_Field is
     (
      --  The channel (n) input is zero.
      Chis_0,
      --  The channel (n) input is one.
      Chis_1)
     with Size => 1;
   for CSC0_CHIS_Field use
     (Chis_0 => 0,
      Chis_1 => 1);

   --  Channel (n) Status And Control
   type CSC_Register is record
      --  DMA Enable
      DMA            : CSC0_DMA_Field := NRF_SVD.FTM.Dma_0;
      --  FTM counter reset by the selected input capture event.
      ICRST          : CSC0_ICRST_Field := NRF_SVD.FTM.Icrst_0;
      --  Channel (n) Edge or Level Select
      ELSA           : Boolean := False;
      --  Channel (n) Edge or Level Select
      ELSB           : Boolean := False;
      --  Channel (n) Mode Select
      MSA            : Boolean := False;
      --  Channel (n) Mode Select
      MSB            : Boolean := False;
      --  Channel (n) Interrupt Enable
      CHIE           : CSC0_CHIE_Field := NRF_SVD.FTM.Chie_0;
      --  Read-only. Channel (n) Flag
      CHF            : CSC0_CHF_Field := NRF_SVD.FTM.Chf_0;
      --  Trigger mode control
      TRIGMODE       : CSC0_TRIGMODE_Field := NRF_SVD.FTM.Trigmode_0;
      --  Read-only. Channel (n) Input State
      CHIS           : CSC0_CHIS_Field := NRF_SVD.FTM.Chis_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSC_Register use record
      DMA            at 0 range 0 .. 0;
      ICRST          at 0 range 1 .. 1;
      ELSA           at 0 range 2 .. 2;
      ELSB           at 0 range 3 .. 3;
      MSA            at 0 range 4 .. 4;
      MSB            at 0 range 5 .. 5;
      CHIE           at 0 range 6 .. 6;
      CHF            at 0 range 7 .. 7;
      TRIGMODE       at 0 range 8 .. 8;
      CHIS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CV_VAL_Field is HAL.UInt16;

   --  Channel (n) Value
   type CV_Register is record
      --  Channel Value
      VAL            : CV_VAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CV_Register use record
      VAL            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FTM0_CNTIN_INIT_Field is HAL.UInt16;

   --  Counter Initial Value
   type FTM0_CNTIN_Register is record
      --  Initial Value Of The FTM Counter
      INIT           : FTM0_CNTIN_INIT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_CNTIN_Register use record
      INIT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Channel 0 Flag
   type STATUS_CH0F_Field is
     (
      --  No channel event has occurred.
      Ch0F_0,
      --  A channel event has occurred.
      Ch0F_1)
     with Size => 1;
   for STATUS_CH0F_Field use
     (Ch0F_0 => 0,
      Ch0F_1 => 1);

   --  Channel 1 Flag
   type STATUS_CH1F_Field is
     (
      --  No channel event has occurred.
      Ch1F_0,
      --  A channel event has occurred.
      Ch1F_1)
     with Size => 1;
   for STATUS_CH1F_Field use
     (Ch1F_0 => 0,
      Ch1F_1 => 1);

   --  Channel 2 Flag
   type STATUS_CH2F_Field is
     (
      --  No channel event has occurred.
      Ch2F_0,
      --  A channel event has occurred.
      Ch2F_1)
     with Size => 1;
   for STATUS_CH2F_Field use
     (Ch2F_0 => 0,
      Ch2F_1 => 1);

   --  Channel 3 Flag
   type STATUS_CH3F_Field is
     (
      --  No channel event has occurred.
      Ch3F_0,
      --  A channel event has occurred.
      Ch3F_1)
     with Size => 1;
   for STATUS_CH3F_Field use
     (Ch3F_0 => 0,
      Ch3F_1 => 1);

   --  Channel 4 Flag
   type STATUS_CH4F_Field is
     (
      --  No channel event has occurred.
      Ch4F_0,
      --  A channel event has occurred.
      Ch4F_1)
     with Size => 1;
   for STATUS_CH4F_Field use
     (Ch4F_0 => 0,
      Ch4F_1 => 1);

   --  Channel 5 Flag
   type STATUS_CH5F_Field is
     (
      --  No channel event has occurred.
      Ch5F_0,
      --  A channel event has occurred.
      Ch5F_1)
     with Size => 1;
   for STATUS_CH5F_Field use
     (Ch5F_0 => 0,
      Ch5F_1 => 1);

   --  Channel 6 Flag
   type STATUS_CH6F_Field is
     (
      --  No channel event has occurred.
      Ch6F_0,
      --  A channel event has occurred.
      Ch6F_1)
     with Size => 1;
   for STATUS_CH6F_Field use
     (Ch6F_0 => 0,
      Ch6F_1 => 1);

   --  Channel 7 Flag
   type STATUS_CH7F_Field is
     (
      --  No channel event has occurred.
      Ch7F_0,
      --  A channel event has occurred.
      Ch7F_1)
     with Size => 1;
   for STATUS_CH7F_Field use
     (Ch7F_0 => 0,
      Ch7F_1 => 1);

   --  Capture And Compare Status
   type FTM0_STATUS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 0 Flag
      CH0F          : STATUS_CH0F_Field := NRF_SVD.FTM.Ch0F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 1 Flag
      CH1F          : STATUS_CH1F_Field := NRF_SVD.FTM.Ch1F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 2 Flag
      CH2F          : STATUS_CH2F_Field := NRF_SVD.FTM.Ch2F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 3 Flag
      CH3F          : STATUS_CH3F_Field := NRF_SVD.FTM.Ch3F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 4 Flag
      CH4F          : STATUS_CH4F_Field := NRF_SVD.FTM.Ch4F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 5 Flag
      CH5F          : STATUS_CH5F_Field := NRF_SVD.FTM.Ch5F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 6 Flag
      CH6F          : STATUS_CH6F_Field := NRF_SVD.FTM.Ch6F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 7 Flag
      CH7F          : STATUS_CH7F_Field := NRF_SVD.FTM.Ch7F_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_STATUS_Register use record
      CH0F          at 0 range 0 .. 0;
      CH1F          at 0 range 1 .. 1;
      CH2F          at 0 range 2 .. 2;
      CH3F          at 0 range 3 .. 3;
      CH4F          at 0 range 4 .. 4;
      CH5F          at 0 range 5 .. 5;
      CH6F          at 0 range 6 .. 6;
      CH7F          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FTM Enable
   type MODE_FTMEN_Field is
     (
      --  TPM compatibility. Free running counter and synchronization
      --  compatible with TPM.
      Ftmen_0,
      --  Free running counter and synchronization are different from TPM
      --  behavior.
      Ftmen_1)
     with Size => 1;
   for MODE_FTMEN_Field use
     (Ftmen_0 => 0,
      Ftmen_1 => 1);

   --  Write Protection Disable
   type MODE_WPDIS_Field is
     (
      --  Write protection is enabled.
      Wpdis_0,
      --  Write protection is disabled.
      Wpdis_1)
     with Size => 1;
   for MODE_WPDIS_Field use
     (Wpdis_0 => 0,
      Wpdis_1 => 1);

   --  PWM Synchronization Mode
   type MODE_PWMSYNC_Field is
     (
      --  No restrictions. Software and hardware triggers can be used by MOD,
      --  CnV, OUTMASK, and FTM counter synchronization.
      Pwmsync_0,
      --  Software trigger can only be used by MOD and CnV synchronization, and
      --  hardware triggers can only be used by OUTMASK and FTM counter
      --  synchronization.
      Pwmsync_1)
     with Size => 1;
   for MODE_PWMSYNC_Field use
     (Pwmsync_0 => 0,
      Pwmsync_1 => 1);

   --  Capture Test Mode Enable
   type MODE_CAPTEST_Field is
     (
      --  Capture test mode is disabled.
      Captest_0,
      --  Capture test mode is enabled.
      Captest_1)
     with Size => 1;
   for MODE_CAPTEST_Field use
     (Captest_0 => 0,
      Captest_1 => 1);

   --  Fault Control Mode
   type MODE_FAULTM_Field is
     (
      --  Fault control is disabled for all channels.
      Faultm_0,
      --  Fault control is enabled for even channels only (channels 0, 2, 4,
      --  and 6), and the selected mode is the manual fault clearing.
      Faultm_1,
      --  Fault control is enabled for all channels, and the selected mode is
      --  the manual fault clearing.
      Faultm_2,
      --  Fault control is enabled for all channels, and the selected mode is
      --  the automatic fault clearing.
      Faultm_3)
     with Size => 2;
   for MODE_FAULTM_Field use
     (Faultm_0 => 0,
      Faultm_1 => 1,
      Faultm_2 => 2,
      Faultm_3 => 3);

   --  Fault Interrupt Enable
   type MODE_FAULTIE_Field is
     (
      --  Fault control interrupt is disabled.
      Faultie_0,
      --  Fault control interrupt is enabled.
      Faultie_1)
     with Size => 1;
   for MODE_FAULTIE_Field use
     (Faultie_0 => 0,
      Faultie_1 => 1);

   --  Features Mode Selection
   type FTM0_MODE_Register is record
      --  FTM Enable
      FTMEN         : MODE_FTMEN_Field := NRF_SVD.FTM.Ftmen_0;
      --  Initialize The Channels Output
      INIT          : Boolean := False;
      --  Write Protection Disable
      WPDIS         : MODE_WPDIS_Field := NRF_SVD.FTM.Wpdis_1;
      --  PWM Synchronization Mode
      PWMSYNC       : MODE_PWMSYNC_Field := NRF_SVD.FTM.Pwmsync_0;
      --  Capture Test Mode Enable
      CAPTEST       : MODE_CAPTEST_Field := NRF_SVD.FTM.Captest_0;
      --  Fault Control Mode
      FAULTM        : MODE_FAULTM_Field := NRF_SVD.FTM.Faultm_0;
      --  Fault Interrupt Enable
      FAULTIE       : MODE_FAULTIE_Field := NRF_SVD.FTM.Faultie_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_MODE_Register use record
      FTMEN         at 0 range 0 .. 0;
      INIT          at 0 range 1 .. 1;
      WPDIS         at 0 range 2 .. 2;
      PWMSYNC       at 0 range 3 .. 3;
      CAPTEST       at 0 range 4 .. 4;
      FAULTM        at 0 range 5 .. 6;
      FAULTIE       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Minimum Loading Point Enable
   type SYNC_CNTMIN_Field is
     (
      --  The minimum loading point is disabled.
      Cntmin_0,
      --  The minimum loading point is enabled.
      Cntmin_1)
     with Size => 1;
   for SYNC_CNTMIN_Field use
     (Cntmin_0 => 0,
      Cntmin_1 => 1);

   --  Maximum Loading Point Enable
   type SYNC_CNTMAX_Field is
     (
      --  The maximum loading point is disabled.
      Cntmax_0,
      --  The maximum loading point is enabled.
      Cntmax_1)
     with Size => 1;
   for SYNC_CNTMAX_Field use
     (Cntmax_0 => 0,
      Cntmax_1 => 1);

   --  FTM Counter Reinitialization By Synchronization (FTM counter
   --  synchronization)
   type SYNC_REINIT_Field is
     (
      --  FTM counter continues to count normally.
      Reinit_0,
      --  FTM counter is updated with its initial value when the selected
      --  trigger is detected.
      Reinit_1)
     with Size => 1;
   for SYNC_REINIT_Field use
     (Reinit_0 => 0,
      Reinit_1 => 1);

   --  Output Mask Synchronization
   type SYNC_SYNCHOM_Field is
     (
      --  OUTMASK register is updated with the value of its buffer in all
      --  rising edges of the FTM input clock.
      Synchom_0,
      --  OUTMASK register is updated with the value of its buffer only by the
      --  PWM synchronization.
      Synchom_1)
     with Size => 1;
   for SYNC_SYNCHOM_Field use
     (Synchom_0 => 0,
      Synchom_1 => 1);

   --  PWM Synchronization Hardware Trigger 0
   type SYNC_TRIG0_Field is
     (
      --  Trigger is disabled.
      Trig0_0,
      --  Trigger is enabled.
      Trig0_1)
     with Size => 1;
   for SYNC_TRIG0_Field use
     (Trig0_0 => 0,
      Trig0_1 => 1);

   --  PWM Synchronization Hardware Trigger 1
   type SYNC_TRIG1_Field is
     (
      --  Trigger is disabled.
      Trig1_0,
      --  Trigger is enabled.
      Trig1_1)
     with Size => 1;
   for SYNC_TRIG1_Field use
     (Trig1_0 => 0,
      Trig1_1 => 1);

   --  PWM Synchronization Hardware Trigger 2
   type SYNC_TRIG2_Field is
     (
      --  Trigger is disabled.
      Trig2_0,
      --  Trigger is enabled.
      Trig2_1)
     with Size => 1;
   for SYNC_TRIG2_Field use
     (Trig2_0 => 0,
      Trig2_1 => 1);

   --  PWM Synchronization Software Trigger
   type SYNC_SWSYNC_Field is
     (
      --  Software trigger is not selected.
      Swsync_0,
      --  Software trigger is selected.
      Swsync_1)
     with Size => 1;
   for SYNC_SWSYNC_Field use
     (Swsync_0 => 0,
      Swsync_1 => 1);

   --  Synchronization
   type FTM0_SYNC_Register is record
      --  Minimum Loading Point Enable
      CNTMIN        : SYNC_CNTMIN_Field := NRF_SVD.FTM.Cntmin_0;
      --  Maximum Loading Point Enable
      CNTMAX        : SYNC_CNTMAX_Field := NRF_SVD.FTM.Cntmax_0;
      --  FTM Counter Reinitialization By Synchronization (FTM counter
      --  synchronization)
      REINIT        : SYNC_REINIT_Field := NRF_SVD.FTM.Reinit_0;
      --  Output Mask Synchronization
      SYNCHOM       : SYNC_SYNCHOM_Field := NRF_SVD.FTM.Synchom_0;
      --  PWM Synchronization Hardware Trigger 0
      TRIG0         : SYNC_TRIG0_Field := NRF_SVD.FTM.Trig0_0;
      --  PWM Synchronization Hardware Trigger 1
      TRIG1         : SYNC_TRIG1_Field := NRF_SVD.FTM.Trig1_0;
      --  PWM Synchronization Hardware Trigger 2
      TRIG2         : SYNC_TRIG2_Field := NRF_SVD.FTM.Trig2_0;
      --  PWM Synchronization Software Trigger
      SWSYNC        : SYNC_SWSYNC_Field := NRF_SVD.FTM.Swsync_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_SYNC_Register use record
      CNTMIN        at 0 range 0 .. 0;
      CNTMAX        at 0 range 1 .. 1;
      REINIT        at 0 range 2 .. 2;
      SYNCHOM       at 0 range 3 .. 3;
      TRIG0         at 0 range 4 .. 4;
      TRIG1         at 0 range 5 .. 5;
      TRIG2         at 0 range 6 .. 6;
      SWSYNC        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Channel 0 Output Initialization Value
   type OUTINIT_CH0OI_Field is
     (
      --  The initialization value is 0.
      Ch0Oi_0,
      --  The initialization value is 1.
      Ch0Oi_1)
     with Size => 1;
   for OUTINIT_CH0OI_Field use
     (Ch0Oi_0 => 0,
      Ch0Oi_1 => 1);

   --  Channel 1 Output Initialization Value
   type OUTINIT_CH1OI_Field is
     (
      --  The initialization value is 0.
      Ch1Oi_0,
      --  The initialization value is 1.
      Ch1Oi_1)
     with Size => 1;
   for OUTINIT_CH1OI_Field use
     (Ch1Oi_0 => 0,
      Ch1Oi_1 => 1);

   --  Channel 2 Output Initialization Value
   type OUTINIT_CH2OI_Field is
     (
      --  The initialization value is 0.
      Ch2Oi_0,
      --  The initialization value is 1.
      Ch2Oi_1)
     with Size => 1;
   for OUTINIT_CH2OI_Field use
     (Ch2Oi_0 => 0,
      Ch2Oi_1 => 1);

   --  Channel 3 Output Initialization Value
   type OUTINIT_CH3OI_Field is
     (
      --  The initialization value is 0.
      Ch3Oi_0,
      --  The initialization value is 1.
      Ch3Oi_1)
     with Size => 1;
   for OUTINIT_CH3OI_Field use
     (Ch3Oi_0 => 0,
      Ch3Oi_1 => 1);

   --  Channel 4 Output Initialization Value
   type OUTINIT_CH4OI_Field is
     (
      --  The initialization value is 0.
      Ch4Oi_0,
      --  The initialization value is 1.
      Ch4Oi_1)
     with Size => 1;
   for OUTINIT_CH4OI_Field use
     (Ch4Oi_0 => 0,
      Ch4Oi_1 => 1);

   --  Channel 5 Output Initialization Value
   type OUTINIT_CH5OI_Field is
     (
      --  The initialization value is 0.
      Ch5Oi_0,
      --  The initialization value is 1.
      Ch5Oi_1)
     with Size => 1;
   for OUTINIT_CH5OI_Field use
     (Ch5Oi_0 => 0,
      Ch5Oi_1 => 1);

   --  Channel 6 Output Initialization Value
   type OUTINIT_CH6OI_Field is
     (
      --  The initialization value is 0.
      Ch6Oi_0,
      --  The initialization value is 1.
      Ch6Oi_1)
     with Size => 1;
   for OUTINIT_CH6OI_Field use
     (Ch6Oi_0 => 0,
      Ch6Oi_1 => 1);

   --  Channel 7 Output Initialization Value
   type OUTINIT_CH7OI_Field is
     (
      --  The initialization value is 0.
      Ch7Oi_0,
      --  The initialization value is 1.
      Ch7Oi_1)
     with Size => 1;
   for OUTINIT_CH7OI_Field use
     (Ch7Oi_0 => 0,
      Ch7Oi_1 => 1);

   --  Initial State For Channels Output
   type FTM0_OUTINIT_Register is record
      --  Channel 0 Output Initialization Value
      CH0OI         : OUTINIT_CH0OI_Field := NRF_SVD.FTM.Ch0Oi_0;
      --  Channel 1 Output Initialization Value
      CH1OI         : OUTINIT_CH1OI_Field := NRF_SVD.FTM.Ch1Oi_0;
      --  Channel 2 Output Initialization Value
      CH2OI         : OUTINIT_CH2OI_Field := NRF_SVD.FTM.Ch2Oi_0;
      --  Channel 3 Output Initialization Value
      CH3OI         : OUTINIT_CH3OI_Field := NRF_SVD.FTM.Ch3Oi_0;
      --  Channel 4 Output Initialization Value
      CH4OI         : OUTINIT_CH4OI_Field := NRF_SVD.FTM.Ch4Oi_0;
      --  Channel 5 Output Initialization Value
      CH5OI         : OUTINIT_CH5OI_Field := NRF_SVD.FTM.Ch5Oi_0;
      --  Channel 6 Output Initialization Value
      CH6OI         : OUTINIT_CH6OI_Field := NRF_SVD.FTM.Ch6Oi_0;
      --  Channel 7 Output Initialization Value
      CH7OI         : OUTINIT_CH7OI_Field := NRF_SVD.FTM.Ch7Oi_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_OUTINIT_Register use record
      CH0OI         at 0 range 0 .. 0;
      CH1OI         at 0 range 1 .. 1;
      CH2OI         at 0 range 2 .. 2;
      CH3OI         at 0 range 3 .. 3;
      CH4OI         at 0 range 4 .. 4;
      CH5OI         at 0 range 5 .. 5;
      CH6OI         at 0 range 6 .. 6;
      CH7OI         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Channel 0 Output Mask
   type OUTMASK_CH0OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch0Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch0Om_1)
     with Size => 1;
   for OUTMASK_CH0OM_Field use
     (Ch0Om_0 => 0,
      Ch0Om_1 => 1);

   --  Channel 1 Output Mask
   type OUTMASK_CH1OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch1Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch1Om_1)
     with Size => 1;
   for OUTMASK_CH1OM_Field use
     (Ch1Om_0 => 0,
      Ch1Om_1 => 1);

   --  Channel 2 Output Mask
   type OUTMASK_CH2OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch2Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch2Om_1)
     with Size => 1;
   for OUTMASK_CH2OM_Field use
     (Ch2Om_0 => 0,
      Ch2Om_1 => 1);

   --  Channel 3 Output Mask
   type OUTMASK_CH3OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch3Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch3Om_1)
     with Size => 1;
   for OUTMASK_CH3OM_Field use
     (Ch3Om_0 => 0,
      Ch3Om_1 => 1);

   --  Channel 4 Output Mask
   type OUTMASK_CH4OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch4Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch4Om_1)
     with Size => 1;
   for OUTMASK_CH4OM_Field use
     (Ch4Om_0 => 0,
      Ch4Om_1 => 1);

   --  Channel 5 Output Mask
   type OUTMASK_CH5OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch5Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch5Om_1)
     with Size => 1;
   for OUTMASK_CH5OM_Field use
     (Ch5Om_0 => 0,
      Ch5Om_1 => 1);

   --  Channel 6 Output Mask
   type OUTMASK_CH6OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch6Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch6Om_1)
     with Size => 1;
   for OUTMASK_CH6OM_Field use
     (Ch6Om_0 => 0,
      Ch6Om_1 => 1);

   --  Channel 7 Output Mask
   type OUTMASK_CH7OM_Field is
     (
      --  Channel output is not masked. It continues to operate normally.
      Ch7Om_0,
      --  Channel output is masked. It is forced to its inactive state.
      Ch7Om_1)
     with Size => 1;
   for OUTMASK_CH7OM_Field use
     (Ch7Om_0 => 0,
      Ch7Om_1 => 1);

   --  Output Mask
   type FTM0_OUTMASK_Register is record
      --  Channel 0 Output Mask
      CH0OM         : OUTMASK_CH0OM_Field := NRF_SVD.FTM.Ch0Om_0;
      --  Channel 1 Output Mask
      CH1OM         : OUTMASK_CH1OM_Field := NRF_SVD.FTM.Ch1Om_0;
      --  Channel 2 Output Mask
      CH2OM         : OUTMASK_CH2OM_Field := NRF_SVD.FTM.Ch2Om_0;
      --  Channel 3 Output Mask
      CH3OM         : OUTMASK_CH3OM_Field := NRF_SVD.FTM.Ch3Om_0;
      --  Channel 4 Output Mask
      CH4OM         : OUTMASK_CH4OM_Field := NRF_SVD.FTM.Ch4Om_0;
      --  Channel 5 Output Mask
      CH5OM         : OUTMASK_CH5OM_Field := NRF_SVD.FTM.Ch5Om_0;
      --  Channel 6 Output Mask
      CH6OM         : OUTMASK_CH6OM_Field := NRF_SVD.FTM.Ch6Om_0;
      --  Channel 7 Output Mask
      CH7OM         : OUTMASK_CH7OM_Field := NRF_SVD.FTM.Ch7Om_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_OUTMASK_Register use record
      CH0OM         at 0 range 0 .. 0;
      CH1OM         at 0 range 1 .. 1;
      CH2OM         at 0 range 2 .. 2;
      CH3OM         at 0 range 3 .. 3;
      CH4OM         at 0 range 4 .. 4;
      CH5OM         at 0 range 5 .. 5;
      CH6OM         at 0 range 6 .. 6;
      CH7OM         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Complement Of Channel (n) For n = 0
   type COMBINE_COMP0_Field is
     (
      --  The channel (n+1) output is the same as the channel (n) output.
      Comp0_0,
      --  The channel (n+1) output is the complement of the channel (n) output.
      Comp0_1)
     with Size => 1;
   for COMBINE_COMP0_Field use
     (Comp0_0 => 0,
      Comp0_1 => 1);

   --  Dual Edge Capture Mode Captures For n = 0
   type COMBINE_DECAP0_Field is
     (
      --  The dual edge captures are inactive.
      Decap0_0,
      --  The dual edge captures are active.
      Decap0_1)
     with Size => 1;
   for COMBINE_DECAP0_Field use
     (Decap0_0 => 0,
      Decap0_1 => 1);

   --  Deadtime Enable For n = 0
   type COMBINE_DTEN0_Field is
     (
      --  The deadtime insertion in this pair of channels is disabled.
      Dten0_0,
      --  The deadtime insertion in this pair of channels is enabled.
      Dten0_1)
     with Size => 1;
   for COMBINE_DTEN0_Field use
     (Dten0_0 => 0,
      Dten0_1 => 1);

   --  Synchronization Enable For n = 0
   type COMBINE_SYNCEN0_Field is
     (
      --  The PWM synchronization in this pair of channels is disabled.
      Syncen0_0,
      --  The PWM synchronization in this pair of channels is enabled.
      Syncen0_1)
     with Size => 1;
   for COMBINE_SYNCEN0_Field use
     (Syncen0_0 => 0,
      Syncen0_1 => 1);

   --  Fault Control Enable For n = 0
   type COMBINE_FAULTEN0_Field is
     (
      --  The fault control in this pair of channels is disabled.
      Faulten0_0,
      --  The fault control in this pair of channels is enabled.
      Faulten0_1)
     with Size => 1;
   for COMBINE_FAULTEN0_Field use
     (Faulten0_0 => 0,
      Faulten0_1 => 1);

   --  Complement Of Channel (n) For n = 2
   type COMBINE_COMP1_Field is
     (
      --  The channel (n+1) output is the same as the channel (n) output.
      Comp1_0,
      --  The channel (n+1) output is the complement of the channel (n) output.
      Comp1_1)
     with Size => 1;
   for COMBINE_COMP1_Field use
     (Comp1_0 => 0,
      Comp1_1 => 1);

   --  Dual Edge Capture Mode Captures For n = 2
   type COMBINE_DECAP1_Field is
     (
      --  The dual edge captures are inactive.
      Decap1_0,
      --  The dual edge captures are active.
      Decap1_1)
     with Size => 1;
   for COMBINE_DECAP1_Field use
     (Decap1_0 => 0,
      Decap1_1 => 1);

   --  Deadtime Enable For n = 2
   type COMBINE_DTEN1_Field is
     (
      --  The deadtime insertion in this pair of channels is disabled.
      Dten1_0,
      --  The deadtime insertion in this pair of channels is enabled.
      Dten1_1)
     with Size => 1;
   for COMBINE_DTEN1_Field use
     (Dten1_0 => 0,
      Dten1_1 => 1);

   --  Synchronization Enable For n = 2
   type COMBINE_SYNCEN1_Field is
     (
      --  The PWM synchronization in this pair of channels is disabled.
      Syncen1_0,
      --  The PWM synchronization in this pair of channels is enabled.
      Syncen1_1)
     with Size => 1;
   for COMBINE_SYNCEN1_Field use
     (Syncen1_0 => 0,
      Syncen1_1 => 1);

   --  Fault Control Enable For n = 2
   type COMBINE_FAULTEN1_Field is
     (
      --  The fault control in this pair of channels is disabled.
      Faulten1_0,
      --  The fault control in this pair of channels is enabled.
      Faulten1_1)
     with Size => 1;
   for COMBINE_FAULTEN1_Field use
     (Faulten1_0 => 0,
      Faulten1_1 => 1);

   --  Complement Of Channel (n) For n = 4
   type COMBINE_COMP2_Field is
     (
      --  The channel (n+1) output is the same as the channel (n) output.
      Comp2_0,
      --  The channel (n+1) output is the complement of the channel (n) output.
      Comp2_1)
     with Size => 1;
   for COMBINE_COMP2_Field use
     (Comp2_0 => 0,
      Comp2_1 => 1);

   --  Dual Edge Capture Mode Captures For n = 4
   type COMBINE_DECAP2_Field is
     (
      --  The dual edge captures are inactive.
      Decap2_0,
      --  The dual edge captures are active.
      Decap2_1)
     with Size => 1;
   for COMBINE_DECAP2_Field use
     (Decap2_0 => 0,
      Decap2_1 => 1);

   --  Deadtime Enable For n = 4
   type COMBINE_DTEN2_Field is
     (
      --  The deadtime insertion in this pair of channels is disabled.
      Dten2_0,
      --  The deadtime insertion in this pair of channels is enabled.
      Dten2_1)
     with Size => 1;
   for COMBINE_DTEN2_Field use
     (Dten2_0 => 0,
      Dten2_1 => 1);

   --  Synchronization Enable For n = 4
   type COMBINE_SYNCEN2_Field is
     (
      --  The PWM synchronization in this pair of channels is disabled.
      Syncen2_0,
      --  The PWM synchronization in this pair of channels is enabled.
      Syncen2_1)
     with Size => 1;
   for COMBINE_SYNCEN2_Field use
     (Syncen2_0 => 0,
      Syncen2_1 => 1);

   --  Fault Control Enable For n = 4
   type COMBINE_FAULTEN2_Field is
     (
      --  The fault control in this pair of channels is disabled.
      Faulten2_0,
      --  The fault control in this pair of channels is enabled.
      Faulten2_1)
     with Size => 1;
   for COMBINE_FAULTEN2_Field use
     (Faulten2_0 => 0,
      Faulten2_1 => 1);

   --  Complement Of Channel (n) for n = 6
   type COMBINE_COMP3_Field is
     (
      --  The channel (n+1) output is the same as the channel (n) output.
      Comp3_0,
      --  The channel (n+1) output is the complement of the channel (n) output.
      Comp3_1)
     with Size => 1;
   for COMBINE_COMP3_Field use
     (Comp3_0 => 0,
      Comp3_1 => 1);

   --  Dual Edge Capture Mode Captures For n = 6
   type COMBINE_DECAP3_Field is
     (
      --  The dual edge captures are inactive.
      Decap3_0,
      --  The dual edge captures are active.
      Decap3_1)
     with Size => 1;
   for COMBINE_DECAP3_Field use
     (Decap3_0 => 0,
      Decap3_1 => 1);

   --  Deadtime Enable For n = 6
   type COMBINE_DTEN3_Field is
     (
      --  The deadtime insertion in this pair of channels is disabled.
      Dten3_0,
      --  The deadtime insertion in this pair of channels is enabled.
      Dten3_1)
     with Size => 1;
   for COMBINE_DTEN3_Field use
     (Dten3_0 => 0,
      Dten3_1 => 1);

   --  Synchronization Enable For n = 6
   type COMBINE_SYNCEN3_Field is
     (
      --  The PWM synchronization in this pair of channels is disabled.
      Syncen3_0,
      --  The PWM synchronization in this pair of channels is enabled.
      Syncen3_1)
     with Size => 1;
   for COMBINE_SYNCEN3_Field use
     (Syncen3_0 => 0,
      Syncen3_1 => 1);

   --  Fault Control Enable For n = 6
   type COMBINE_FAULTEN3_Field is
     (
      --  The fault control in this pair of channels is disabled.
      Faulten3_0,
      --  The fault control in this pair of channels is enabled.
      Faulten3_1)
     with Size => 1;
   for COMBINE_FAULTEN3_Field use
     (Faulten3_0 => 0,
      Faulten3_1 => 1);

   --  Function For Linked Channels
   type FTM0_COMBINE_Register is record
      --  Combine Channels For n = 0
      COMBINE0       : Boolean := False;
      --  Complement Of Channel (n) For n = 0
      COMP0          : COMBINE_COMP0_Field := NRF_SVD.FTM.Comp0_0;
      --  Dual Edge Capture Mode Enable For n = 0
      DECAPEN0       : Boolean := False;
      --  Dual Edge Capture Mode Captures For n = 0
      DECAP0         : COMBINE_DECAP0_Field := NRF_SVD.FTM.Decap0_0;
      --  Deadtime Enable For n = 0
      DTEN0          : COMBINE_DTEN0_Field := NRF_SVD.FTM.Dten0_0;
      --  Synchronization Enable For n = 0
      SYNCEN0        : COMBINE_SYNCEN0_Field := NRF_SVD.FTM.Syncen0_0;
      --  Fault Control Enable For n = 0
      FAULTEN0       : COMBINE_FAULTEN0_Field := NRF_SVD.FTM.Faulten0_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Combine Channels For n = 2
      COMBINE1       : Boolean := False;
      --  Complement Of Channel (n) For n = 2
      COMP1          : COMBINE_COMP1_Field := NRF_SVD.FTM.Comp1_0;
      --  Dual Edge Capture Mode Enable For n = 2
      DECAPEN1       : Boolean := False;
      --  Dual Edge Capture Mode Captures For n = 2
      DECAP1         : COMBINE_DECAP1_Field := NRF_SVD.FTM.Decap1_0;
      --  Deadtime Enable For n = 2
      DTEN1          : COMBINE_DTEN1_Field := NRF_SVD.FTM.Dten1_0;
      --  Synchronization Enable For n = 2
      SYNCEN1        : COMBINE_SYNCEN1_Field := NRF_SVD.FTM.Syncen1_0;
      --  Fault Control Enable For n = 2
      FAULTEN1       : COMBINE_FAULTEN1_Field := NRF_SVD.FTM.Faulten1_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Combine Channels For n = 4
      COMBINE2       : Boolean := False;
      --  Complement Of Channel (n) For n = 4
      COMP2          : COMBINE_COMP2_Field := NRF_SVD.FTM.Comp2_0;
      --  Dual Edge Capture Mode Enable For n = 4
      DECAPEN2       : Boolean := False;
      --  Dual Edge Capture Mode Captures For n = 4
      DECAP2         : COMBINE_DECAP2_Field := NRF_SVD.FTM.Decap2_0;
      --  Deadtime Enable For n = 4
      DTEN2          : COMBINE_DTEN2_Field := NRF_SVD.FTM.Dten2_0;
      --  Synchronization Enable For n = 4
      SYNCEN2        : COMBINE_SYNCEN2_Field := NRF_SVD.FTM.Syncen2_0;
      --  Fault Control Enable For n = 4
      FAULTEN2       : COMBINE_FAULTEN2_Field := NRF_SVD.FTM.Faulten2_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Combine Channels For n = 6
      COMBINE3       : Boolean := False;
      --  Complement Of Channel (n) for n = 6
      COMP3          : COMBINE_COMP3_Field := NRF_SVD.FTM.Comp3_0;
      --  Dual Edge Capture Mode Enable For n = 6
      DECAPEN3       : Boolean := False;
      --  Dual Edge Capture Mode Captures For n = 6
      DECAP3         : COMBINE_DECAP3_Field := NRF_SVD.FTM.Decap3_0;
      --  Deadtime Enable For n = 6
      DTEN3          : COMBINE_DTEN3_Field := NRF_SVD.FTM.Dten3_0;
      --  Synchronization Enable For n = 6
      SYNCEN3        : COMBINE_SYNCEN3_Field := NRF_SVD.FTM.Syncen3_0;
      --  Fault Control Enable For n = 6
      FAULTEN3       : COMBINE_FAULTEN3_Field := NRF_SVD.FTM.Faulten3_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_COMBINE_Register use record
      COMBINE0       at 0 range 0 .. 0;
      COMP0          at 0 range 1 .. 1;
      DECAPEN0       at 0 range 2 .. 2;
      DECAP0         at 0 range 3 .. 3;
      DTEN0          at 0 range 4 .. 4;
      SYNCEN0        at 0 range 5 .. 5;
      FAULTEN0       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      COMBINE1       at 0 range 8 .. 8;
      COMP1          at 0 range 9 .. 9;
      DECAPEN1       at 0 range 10 .. 10;
      DECAP1         at 0 range 11 .. 11;
      DTEN1          at 0 range 12 .. 12;
      SYNCEN1        at 0 range 13 .. 13;
      FAULTEN1       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      COMBINE2       at 0 range 16 .. 16;
      COMP2          at 0 range 17 .. 17;
      DECAPEN2       at 0 range 18 .. 18;
      DECAP2         at 0 range 19 .. 19;
      DTEN2          at 0 range 20 .. 20;
      SYNCEN2        at 0 range 21 .. 21;
      FAULTEN2       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      COMBINE3       at 0 range 24 .. 24;
      COMP3          at 0 range 25 .. 25;
      DECAPEN3       at 0 range 26 .. 26;
      DECAP3         at 0 range 27 .. 27;
      DTEN3          at 0 range 28 .. 28;
      SYNCEN3        at 0 range 29 .. 29;
      FAULTEN3       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FTM0_DEADTIME_DTVAL_Field is HAL.UInt6;

   --  Deadtime Prescaler Value
   type DEADTIME_DTPS_Field is
     (
      --  Reset value for the field
      Deadtime_Dtps_Field_Reset,
      --  Divide the FTM input clock by 4.
      Dtps_2,
      --  Divide the FTM input clock by 16.
      Dtps_3)
     with Size => 2;
   for DEADTIME_DTPS_Field use
     (Deadtime_Dtps_Field_Reset => 0,
      Dtps_2 => 2,
      Dtps_3 => 3);

   --  Deadtime Configuration
   type FTM0_DEADTIME_Register is record
      --  Deadtime Value
      DTVAL         : FTM0_DEADTIME_DTVAL_Field := 16#0#;
      --  Deadtime Prescaler Value
      DTPS          : DEADTIME_DTPS_Field := Deadtime_Dtps_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_DEADTIME_Register use record
      DTVAL         at 0 range 0 .. 5;
      DTPS          at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Channel 2 Trigger Enable
   type EXTTRIG_CH2TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch2Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch2Trig_1)
     with Size => 1;
   for EXTTRIG_CH2TRIG_Field use
     (Ch2Trig_0 => 0,
      Ch2Trig_1 => 1);

   --  Channel 3 Trigger Enable
   type EXTTRIG_CH3TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch3Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch3Trig_1)
     with Size => 1;
   for EXTTRIG_CH3TRIG_Field use
     (Ch3Trig_0 => 0,
      Ch3Trig_1 => 1);

   --  Channel 4 Trigger Enable
   type EXTTRIG_CH4TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch4Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch4Trig_1)
     with Size => 1;
   for EXTTRIG_CH4TRIG_Field use
     (Ch4Trig_0 => 0,
      Ch4Trig_1 => 1);

   --  Channel 5 Trigger Enable
   type EXTTRIG_CH5TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch5Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch5Trig_1)
     with Size => 1;
   for EXTTRIG_CH5TRIG_Field use
     (Ch5Trig_0 => 0,
      Ch5Trig_1 => 1);

   --  Channel 0 Trigger Enable
   type EXTTRIG_CH0TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch0Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch0Trig_1)
     with Size => 1;
   for EXTTRIG_CH0TRIG_Field use
     (Ch0Trig_0 => 0,
      Ch0Trig_1 => 1);

   --  Channel 1 Trigger Enable
   type EXTTRIG_CH1TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch1Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch1Trig_1)
     with Size => 1;
   for EXTTRIG_CH1TRIG_Field use
     (Ch1Trig_0 => 0,
      Ch1Trig_1 => 1);

   --  Initialization Trigger Enable
   type EXTTRIG_INITTRIGEN_Field is
     (
      --  The generation of initialization trigger is disabled.
      Inittrigen_0,
      --  The generation of initialization trigger is enabled.
      Inittrigen_1)
     with Size => 1;
   for EXTTRIG_INITTRIGEN_Field use
     (Inittrigen_0 => 0,
      Inittrigen_1 => 1);

   --  Channel Trigger Flag
   type EXTTRIG_TRIGF_Field is
     (
      --  No channel trigger was generated.
      Trigf_0,
      --  A channel trigger was generated.
      Trigf_1)
     with Size => 1;
   for EXTTRIG_TRIGF_Field use
     (Trigf_0 => 0,
      Trigf_1 => 1);

   --  Channel 6 Trigger Enable
   type EXTTRIG_CH6TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch6Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch6Trig_1)
     with Size => 1;
   for EXTTRIG_CH6TRIG_Field use
     (Ch6Trig_0 => 0,
      Ch6Trig_1 => 1);

   --  Channel 7 Trigger Enable
   type EXTTRIG_CH7TRIG_Field is
     (
      --  The generation of the channel trigger is disabled.
      Ch7Trig_0,
      --  The generation of the channel trigger is enabled.
      Ch7Trig_1)
     with Size => 1;
   for EXTTRIG_CH7TRIG_Field use
     (Ch7Trig_0 => 0,
      Ch7Trig_1 => 1);

   --  FTM External Trigger
   type FTM0_EXTTRIG_Register is record
      --  Channel 2 Trigger Enable
      CH2TRIG        : EXTTRIG_CH2TRIG_Field := NRF_SVD.FTM.Ch2Trig_0;
      --  Channel 3 Trigger Enable
      CH3TRIG        : EXTTRIG_CH3TRIG_Field := NRF_SVD.FTM.Ch3Trig_0;
      --  Channel 4 Trigger Enable
      CH4TRIG        : EXTTRIG_CH4TRIG_Field := NRF_SVD.FTM.Ch4Trig_0;
      --  Channel 5 Trigger Enable
      CH5TRIG        : EXTTRIG_CH5TRIG_Field := NRF_SVD.FTM.Ch5Trig_0;
      --  Channel 0 Trigger Enable
      CH0TRIG        : EXTTRIG_CH0TRIG_Field := NRF_SVD.FTM.Ch0Trig_0;
      --  Channel 1 Trigger Enable
      CH1TRIG        : EXTTRIG_CH1TRIG_Field := NRF_SVD.FTM.Ch1Trig_0;
      --  Initialization Trigger Enable
      INITTRIGEN     : EXTTRIG_INITTRIGEN_Field := NRF_SVD.FTM.Inittrigen_0;
      --  Read-only. Channel Trigger Flag
      TRIGF          : EXTTRIG_TRIGF_Field := NRF_SVD.FTM.Trigf_0;
      --  Channel 6 Trigger Enable
      CH6TRIG        : EXTTRIG_CH6TRIG_Field := NRF_SVD.FTM.Ch6Trig_0;
      --  Channel 7 Trigger Enable
      CH7TRIG        : EXTTRIG_CH7TRIG_Field := NRF_SVD.FTM.Ch7Trig_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_EXTTRIG_Register use record
      CH2TRIG        at 0 range 0 .. 0;
      CH3TRIG        at 0 range 1 .. 1;
      CH4TRIG        at 0 range 2 .. 2;
      CH5TRIG        at 0 range 3 .. 3;
      CH0TRIG        at 0 range 4 .. 4;
      CH1TRIG        at 0 range 5 .. 5;
      INITTRIGEN     at 0 range 6 .. 6;
      TRIGF          at 0 range 7 .. 7;
      CH6TRIG        at 0 range 8 .. 8;
      CH7TRIG        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Channel 0 Polarity
   type POL_POL0_Field is
     (
      --  The channel polarity is active high.
      Pol0_0,
      --  The channel polarity is active low.
      Pol0_1)
     with Size => 1;
   for POL_POL0_Field use
     (Pol0_0 => 0,
      Pol0_1 => 1);

   --  Channel 1 Polarity
   type POL_POL1_Field is
     (
      --  The channel polarity is active high.
      Pol1_0,
      --  The channel polarity is active low.
      Pol1_1)
     with Size => 1;
   for POL_POL1_Field use
     (Pol1_0 => 0,
      Pol1_1 => 1);

   --  Channel 2 Polarity
   type POL_POL2_Field is
     (
      --  The channel polarity is active high.
      Pol2_0,
      --  The channel polarity is active low.
      Pol2_1)
     with Size => 1;
   for POL_POL2_Field use
     (Pol2_0 => 0,
      Pol2_1 => 1);

   --  Channel 3 Polarity
   type POL_POL3_Field is
     (
      --  The channel polarity is active high.
      Pol3_0,
      --  The channel polarity is active low.
      Pol3_1)
     with Size => 1;
   for POL_POL3_Field use
     (Pol3_0 => 0,
      Pol3_1 => 1);

   --  Channel 4 Polarity
   type POL_POL4_Field is
     (
      --  The channel polarity is active high.
      Pol4_0,
      --  The channel polarity is active low.
      Pol4_1)
     with Size => 1;
   for POL_POL4_Field use
     (Pol4_0 => 0,
      Pol4_1 => 1);

   --  Channel 5 Polarity
   type POL_POL5_Field is
     (
      --  The channel polarity is active high.
      Pol5_0,
      --  The channel polarity is active low.
      Pol5_1)
     with Size => 1;
   for POL_POL5_Field use
     (Pol5_0 => 0,
      Pol5_1 => 1);

   --  Channel 6 Polarity
   type POL_POL6_Field is
     (
      --  The channel polarity is active high.
      Pol6_0,
      --  The channel polarity is active low.
      Pol6_1)
     with Size => 1;
   for POL_POL6_Field use
     (Pol6_0 => 0,
      Pol6_1 => 1);

   --  Channel 7 Polarity
   type POL_POL7_Field is
     (
      --  The channel polarity is active high.
      Pol7_0,
      --  The channel polarity is active low.
      Pol7_1)
     with Size => 1;
   for POL_POL7_Field use
     (Pol7_0 => 0,
      Pol7_1 => 1);

   --  Channels Polarity
   type FTM0_POL_Register is record
      --  Channel 0 Polarity
      POL0          : POL_POL0_Field := NRF_SVD.FTM.Pol0_0;
      --  Channel 1 Polarity
      POL1          : POL_POL1_Field := NRF_SVD.FTM.Pol1_0;
      --  Channel 2 Polarity
      POL2          : POL_POL2_Field := NRF_SVD.FTM.Pol2_0;
      --  Channel 3 Polarity
      POL3          : POL_POL3_Field := NRF_SVD.FTM.Pol3_0;
      --  Channel 4 Polarity
      POL4          : POL_POL4_Field := NRF_SVD.FTM.Pol4_0;
      --  Channel 5 Polarity
      POL5          : POL_POL5_Field := NRF_SVD.FTM.Pol5_0;
      --  Channel 6 Polarity
      POL6          : POL_POL6_Field := NRF_SVD.FTM.Pol6_0;
      --  Channel 7 Polarity
      POL7          : POL_POL7_Field := NRF_SVD.FTM.Pol7_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_POL_Register use record
      POL0          at 0 range 0 .. 0;
      POL1          at 0 range 1 .. 1;
      POL2          at 0 range 2 .. 2;
      POL3          at 0 range 3 .. 3;
      POL4          at 0 range 4 .. 4;
      POL5          at 0 range 5 .. 5;
      POL6          at 0 range 6 .. 6;
      POL7          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Fault Detection Flag 0
   type FMS_FAULTF0_Field is
     (
      --  No fault condition was detected at the fault input.
      Faultf0_0,
      --  A fault condition was detected at the fault input.
      Faultf0_1)
     with Size => 1;
   for FMS_FAULTF0_Field use
     (Faultf0_0 => 0,
      Faultf0_1 => 1);

   --  Fault Detection Flag 1
   type FMS_FAULTF1_Field is
     (
      --  No fault condition was detected at the fault input.
      Faultf1_0,
      --  A fault condition was detected at the fault input.
      Faultf1_1)
     with Size => 1;
   for FMS_FAULTF1_Field use
     (Faultf1_0 => 0,
      Faultf1_1 => 1);

   --  Fault Detection Flag 2
   type FMS_FAULTF2_Field is
     (
      --  No fault condition was detected at the fault input.
      Faultf2_0,
      --  A fault condition was detected at the fault input.
      Faultf2_1)
     with Size => 1;
   for FMS_FAULTF2_Field use
     (Faultf2_0 => 0,
      Faultf2_1 => 1);

   --  Fault Detection Flag 3
   type FMS_FAULTF3_Field is
     (
      --  No fault condition was detected at the fault input.
      Faultf3_0,
      --  A fault condition was detected at the fault input.
      Faultf3_1)
     with Size => 1;
   for FMS_FAULTF3_Field use
     (Faultf3_0 => 0,
      Faultf3_1 => 1);

   --  Fault Inputs
   type FMS_FAULTIN_Field is
     (
      --  The logic OR of the enabled fault inputs is 0.
      Faultin_0,
      --  The logic OR of the enabled fault inputs is 1.
      Faultin_1)
     with Size => 1;
   for FMS_FAULTIN_Field use
     (Faultin_0 => 0,
      Faultin_1 => 1);

   --  Write Protection Enable
   type FMS_WPEN_Field is
     (
      --  Write protection is disabled. Write protected bits can be written.
      Wpen_0,
      --  Write protection is enabled. Write protected bits cannot be written.
      Wpen_1)
     with Size => 1;
   for FMS_WPEN_Field use
     (Wpen_0 => 0,
      Wpen_1 => 1);

   --  Fault Detection Flag
   type FMS_FAULTF_Field is
     (
      --  No fault condition was detected.
      Faultf_0,
      --  A fault condition was detected.
      Faultf_1)
     with Size => 1;
   for FMS_FAULTF_Field use
     (Faultf_0 => 0,
      Faultf_1 => 1);

   --  Fault Mode Status
   type FTM0_FMS_Register is record
      --  Read-only. Fault Detection Flag 0
      FAULTF0       : FMS_FAULTF0_Field := NRF_SVD.FTM.Faultf0_0;
      --  Read-only. Fault Detection Flag 1
      FAULTF1       : FMS_FAULTF1_Field := NRF_SVD.FTM.Faultf1_0;
      --  Read-only. Fault Detection Flag 2
      FAULTF2       : FMS_FAULTF2_Field := NRF_SVD.FTM.Faultf2_0;
      --  Read-only. Fault Detection Flag 3
      FAULTF3       : FMS_FAULTF3_Field := NRF_SVD.FTM.Faultf3_0;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Read-only. Fault Inputs
      FAULTIN       : FMS_FAULTIN_Field := NRF_SVD.FTM.Faultin_0;
      --  Write Protection Enable
      WPEN          : FMS_WPEN_Field := NRF_SVD.FTM.Wpen_0;
      --  Read-only. Fault Detection Flag
      FAULTF        : FMS_FAULTF_Field := NRF_SVD.FTM.Faultf_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_FMS_Register use record
      FAULTF0       at 0 range 0 .. 0;
      FAULTF1       at 0 range 1 .. 1;
      FAULTF2       at 0 range 2 .. 2;
      FAULTF3       at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      FAULTIN       at 0 range 5 .. 5;
      WPEN          at 0 range 6 .. 6;
      FAULTF        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FTM0_FILTER_CH0FVAL_Field is HAL.UInt4;
   subtype FTM0_FILTER_CH1FVAL_Field is HAL.UInt4;
   subtype FTM0_FILTER_CH2FVAL_Field is HAL.UInt4;
   subtype FTM0_FILTER_CH3FVAL_Field is HAL.UInt4;

   --  Input Capture Filter Control
   type FTM0_FILTER_Register is record
      --  Channel 0 Input Filter
      CH0FVAL        : FTM0_FILTER_CH0FVAL_Field := 16#0#;
      --  Channel 1 Input Filter
      CH1FVAL        : FTM0_FILTER_CH1FVAL_Field := 16#0#;
      --  Channel 2 Input Filter
      CH2FVAL        : FTM0_FILTER_CH2FVAL_Field := 16#0#;
      --  Channel 3 Input Filter
      CH3FVAL        : FTM0_FILTER_CH3FVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_FILTER_Register use record
      CH0FVAL        at 0 range 0 .. 3;
      CH1FVAL        at 0 range 4 .. 7;
      CH2FVAL        at 0 range 8 .. 11;
      CH3FVAL        at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Fault Input 0 Enable
   type FLTCTRL_FAULT0EN_Field is
     (
      --  Fault input is disabled.
      Fault0En_0,
      --  Fault input is enabled.
      Fault0En_1)
     with Size => 1;
   for FLTCTRL_FAULT0EN_Field use
     (Fault0En_0 => 0,
      Fault0En_1 => 1);

   --  Fault Input 1 Enable
   type FLTCTRL_FAULT1EN_Field is
     (
      --  Fault input is disabled.
      Fault1En_0,
      --  Fault input is enabled.
      Fault1En_1)
     with Size => 1;
   for FLTCTRL_FAULT1EN_Field use
     (Fault1En_0 => 0,
      Fault1En_1 => 1);

   --  Fault Input 2 Enable
   type FLTCTRL_FAULT2EN_Field is
     (
      --  Fault input is disabled.
      Fault2En_0,
      --  Fault input is enabled.
      Fault2En_1)
     with Size => 1;
   for FLTCTRL_FAULT2EN_Field use
     (Fault2En_0 => 0,
      Fault2En_1 => 1);

   --  Fault Input 3 Enable
   type FLTCTRL_FAULT3EN_Field is
     (
      --  Fault input is disabled.
      Fault3En_0,
      --  Fault input is enabled.
      Fault3En_1)
     with Size => 1;
   for FLTCTRL_FAULT3EN_Field use
     (Fault3En_0 => 0,
      Fault3En_1 => 1);

   --  Fault Input 0 Filter Enable
   type FLTCTRL_FFLTR0EN_Field is
     (
      --  Fault input filter is disabled.
      Ffltr0En_0,
      --  Fault input filter is enabled.
      Ffltr0En_1)
     with Size => 1;
   for FLTCTRL_FFLTR0EN_Field use
     (Ffltr0En_0 => 0,
      Ffltr0En_1 => 1);

   --  Fault Input 1 Filter Enable
   type FLTCTRL_FFLTR1EN_Field is
     (
      --  Fault input filter is disabled.
      Ffltr1En_0,
      --  Fault input filter is enabled.
      Ffltr1En_1)
     with Size => 1;
   for FLTCTRL_FFLTR1EN_Field use
     (Ffltr1En_0 => 0,
      Ffltr1En_1 => 1);

   --  Fault Input 2 Filter Enable
   type FLTCTRL_FFLTR2EN_Field is
     (
      --  Fault input filter is disabled.
      Ffltr2En_0,
      --  Fault input filter is enabled.
      Ffltr2En_1)
     with Size => 1;
   for FLTCTRL_FFLTR2EN_Field use
     (Ffltr2En_0 => 0,
      Ffltr2En_1 => 1);

   --  Fault Input 3 Filter Enable
   type FLTCTRL_FFLTR3EN_Field is
     (
      --  Fault input filter is disabled.
      Ffltr3En_0,
      --  Fault input filter is enabled.
      Ffltr3En_1)
     with Size => 1;
   for FLTCTRL_FFLTR3EN_Field use
     (Ffltr3En_0 => 0,
      Ffltr3En_1 => 1);

   subtype FTM0_FLTCTRL_FFVAL_Field is HAL.UInt4;

   --  Fault output state
   type FLTCTRL_FSTATE_Field is
     (
      --  FTM outputs will be placed into safe values when fault events in
      --  ongoing (defined by POL bits).
      Fstate_0,
      --  FTM outputs will be tri-stated when fault event is ongoing
      Fstate_1)
     with Size => 1;
   for FLTCTRL_FSTATE_Field use
     (Fstate_0 => 0,
      Fstate_1 => 1);

   --  Fault Control
   type FTM0_FLTCTRL_Register is record
      --  Fault Input 0 Enable
      FAULT0EN       : FLTCTRL_FAULT0EN_Field := NRF_SVD.FTM.Fault0En_0;
      --  Fault Input 1 Enable
      FAULT1EN       : FLTCTRL_FAULT1EN_Field := NRF_SVD.FTM.Fault1En_0;
      --  Fault Input 2 Enable
      FAULT2EN       : FLTCTRL_FAULT2EN_Field := NRF_SVD.FTM.Fault2En_0;
      --  Fault Input 3 Enable
      FAULT3EN       : FLTCTRL_FAULT3EN_Field := NRF_SVD.FTM.Fault3En_0;
      --  Fault Input 0 Filter Enable
      FFLTR0EN       : FLTCTRL_FFLTR0EN_Field := NRF_SVD.FTM.Ffltr0En_0;
      --  Fault Input 1 Filter Enable
      FFLTR1EN       : FLTCTRL_FFLTR1EN_Field := NRF_SVD.FTM.Ffltr1En_0;
      --  Fault Input 2 Filter Enable
      FFLTR2EN       : FLTCTRL_FFLTR2EN_Field := NRF_SVD.FTM.Ffltr2En_0;
      --  Fault Input 3 Filter Enable
      FFLTR3EN       : FLTCTRL_FFLTR3EN_Field := NRF_SVD.FTM.Ffltr3En_0;
      --  Fault Input Filter
      FFVAL          : FTM0_FLTCTRL_FFVAL_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Fault output state
      FSTATE         : FLTCTRL_FSTATE_Field := NRF_SVD.FTM.Fstate_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_FLTCTRL_Register use record
      FAULT0EN       at 0 range 0 .. 0;
      FAULT1EN       at 0 range 1 .. 1;
      FAULT2EN       at 0 range 2 .. 2;
      FAULT3EN       at 0 range 3 .. 3;
      FFLTR0EN       at 0 range 4 .. 4;
      FFLTR1EN       at 0 range 5 .. 5;
      FFLTR2EN       at 0 range 6 .. 6;
      FFLTR3EN       at 0 range 7 .. 7;
      FFVAL          at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      FSTATE         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Quadrature Decoder Mode Enable
   type QDCTRL_QUADEN_Field is
     (
      --  Quadrature Decoder mode is disabled.
      Quaden_0,
      --  Quadrature Decoder mode is enabled.
      Quaden_1)
     with Size => 1;
   for QDCTRL_QUADEN_Field use
     (Quaden_0 => 0,
      Quaden_1 => 1);

   --  Timer Overflow Direction In Quadrature Decoder Mode
   type QDCTRL_TOFDIR_Field is
     (
      --  TOF bit was set on the bottom of counting. There was an FTM counter
      --  decrement and FTM counter changes from its minimum value (CNTIN
      --  register) to its maximum value (MOD register).
      Tofdir_0,
      --  TOF bit was set on the top of counting. There was an FTM counter
      --  increment and FTM counter changes from its maximum value (MOD
      --  register) to its minimum value (CNTIN register).
      Tofdir_1)
     with Size => 1;
   for QDCTRL_TOFDIR_Field use
     (Tofdir_0 => 0,
      Tofdir_1 => 1);

   --  FTM Counter Direction In Quadrature Decoder Mode
   type QDCTRL_QUADIR_Field is
     (
      --  Counting direction is decreasing (FTM counter decrement).
      Quadir_0,
      --  Counting direction is increasing (FTM counter increment).
      Quadir_1)
     with Size => 1;
   for QDCTRL_QUADIR_Field use
     (Quadir_0 => 0,
      Quadir_1 => 1);

   --  Quadrature Decoder Mode
   type QDCTRL_QUADMODE_Field is
     (
      --  Phase A and phase B encoding mode.
      Quadmode_0,
      --  Count and direction encoding mode.
      Quadmode_1)
     with Size => 1;
   for QDCTRL_QUADMODE_Field use
     (Quadmode_0 => 0,
      Quadmode_1 => 1);

   --  Phase B Input Polarity
   type QDCTRL_PHBPOL_Field is
     (
      --  Normal polarity. Phase B input signal is not inverted before
      --  identifying the rising and falling edges of this signal.
      Phbpol_0,
      --  Inverted polarity. Phase B input signal is inverted before
      --  identifying the rising and falling edges of this signal.
      Phbpol_1)
     with Size => 1;
   for QDCTRL_PHBPOL_Field use
     (Phbpol_0 => 0,
      Phbpol_1 => 1);

   --  Phase A Input Polarity
   type QDCTRL_PHAPOL_Field is
     (
      --  Normal polarity. Phase A input signal is not inverted before
      --  identifying the rising and falling edges of this signal.
      Phapol_0,
      --  Inverted polarity. Phase A input signal is inverted before
      --  identifying the rising and falling edges of this signal.
      Phapol_1)
     with Size => 1;
   for QDCTRL_PHAPOL_Field use
     (Phapol_0 => 0,
      Phapol_1 => 1);

   --  Phase B Input Filter Enable
   type QDCTRL_PHBFLTREN_Field is
     (
      --  Phase B input filter is disabled.
      Phbfltren_0,
      --  Phase B input filter is enabled.
      Phbfltren_1)
     with Size => 1;
   for QDCTRL_PHBFLTREN_Field use
     (Phbfltren_0 => 0,
      Phbfltren_1 => 1);

   --  Phase A Input Filter Enable
   type QDCTRL_PHAFLTREN_Field is
     (
      --  Phase A input filter is disabled.
      Phafltren_0,
      --  Phase A input filter is enabled.
      Phafltren_1)
     with Size => 1;
   for QDCTRL_PHAFLTREN_Field use
     (Phafltren_0 => 0,
      Phafltren_1 => 1);

   --  Quadrature Decoder Control And Status
   type FTM0_QDCTRL_Register is record
      --  Quadrature Decoder Mode Enable
      QUADEN        : QDCTRL_QUADEN_Field := NRF_SVD.FTM.Quaden_0;
      --  Read-only. Timer Overflow Direction In Quadrature Decoder Mode
      TOFDIR        : QDCTRL_TOFDIR_Field := NRF_SVD.FTM.Tofdir_0;
      --  Read-only. FTM Counter Direction In Quadrature Decoder Mode
      QUADIR        : QDCTRL_QUADIR_Field := NRF_SVD.FTM.Quadir_0;
      --  Quadrature Decoder Mode
      QUADMODE      : QDCTRL_QUADMODE_Field := NRF_SVD.FTM.Quadmode_0;
      --  Phase B Input Polarity
      PHBPOL        : QDCTRL_PHBPOL_Field := NRF_SVD.FTM.Phbpol_0;
      --  Phase A Input Polarity
      PHAPOL        : QDCTRL_PHAPOL_Field := NRF_SVD.FTM.Phapol_0;
      --  Phase B Input Filter Enable
      PHBFLTREN     : QDCTRL_PHBFLTREN_Field := NRF_SVD.FTM.Phbfltren_0;
      --  Phase A Input Filter Enable
      PHAFLTREN     : QDCTRL_PHAFLTREN_Field := NRF_SVD.FTM.Phafltren_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_QDCTRL_Register use record
      QUADEN        at 0 range 0 .. 0;
      TOFDIR        at 0 range 1 .. 1;
      QUADIR        at 0 range 2 .. 2;
      QUADMODE      at 0 range 3 .. 3;
      PHBPOL        at 0 range 4 .. 4;
      PHAPOL        at 0 range 5 .. 5;
      PHBFLTREN     at 0 range 6 .. 6;
      PHAFLTREN     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FTM0_CONF_LDFQ_Field is HAL.UInt5;
   subtype FTM0_CONF_BDMMODE_Field is HAL.UInt2;

   --  Global Time Base Enable
   type CONF_GTBEEN_Field is
     (
      --  Use of an external global time base is disabled.
      Gtbeen_0,
      --  Use of an external global time base is enabled.
      Gtbeen_1)
     with Size => 1;
   for CONF_GTBEEN_Field use
     (Gtbeen_0 => 0,
      Gtbeen_1 => 1);

   --  Global Time Base Output
   type CONF_GTBEOUT_Field is
     (
      --  A global time base signal generation is disabled.
      Gtbeout_0,
      --  A global time base signal generation is enabled.
      Gtbeout_1)
     with Size => 1;
   for CONF_GTBEOUT_Field use
     (Gtbeout_0 => 0,
      Gtbeout_1 => 1);

   --  Initialization trigger on Reload Point
   type CONF_ITRIGR_Field is
     (
      --  Initialization trigger is generated on counter wrap events.
      Itrigr_0,
      --  Initialization trigger is generated when a reload point is reached.
      Itrigr_1)
     with Size => 1;
   for CONF_ITRIGR_Field use
     (Itrigr_0 => 0,
      Itrigr_1 => 1);

   --  Configuration
   type FTM0_CONF_Register is record
      --  Load Frequency
      LDFQ           : FTM0_CONF_LDFQ_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Debug Mode
      BDMMODE        : FTM0_CONF_BDMMODE_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Global Time Base Enable
      GTBEEN         : CONF_GTBEEN_Field := NRF_SVD.FTM.Gtbeen_0;
      --  Global Time Base Output
      GTBEOUT        : CONF_GTBEOUT_Field := NRF_SVD.FTM.Gtbeout_0;
      --  Initialization trigger on Reload Point
      ITRIGR         : CONF_ITRIGR_Field := NRF_SVD.FTM.Itrigr_0;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_CONF_Register use record
      LDFQ           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      BDMMODE        at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      GTBEEN         at 0 range 9 .. 9;
      GTBEOUT        at 0 range 10 .. 10;
      ITRIGR         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Fault Input 0 Polarity
   type FLTPOL_FLT0POL_Field is
     (
      --  The fault input polarity is active high. A 1 at the fault input
      --  indicates a fault.
      Flt0Pol_0,
      --  The fault input polarity is active low. A 0 at the fault input
      --  indicates a fault.
      Flt0Pol_1)
     with Size => 1;
   for FLTPOL_FLT0POL_Field use
     (Flt0Pol_0 => 0,
      Flt0Pol_1 => 1);

   --  Fault Input 1 Polarity
   type FLTPOL_FLT1POL_Field is
     (
      --  The fault input polarity is active high. A 1 at the fault input
      --  indicates a fault.
      Flt1Pol_0,
      --  The fault input polarity is active low. A 0 at the fault input
      --  indicates a fault.
      Flt1Pol_1)
     with Size => 1;
   for FLTPOL_FLT1POL_Field use
     (Flt1Pol_0 => 0,
      Flt1Pol_1 => 1);

   --  Fault Input 2 Polarity
   type FLTPOL_FLT2POL_Field is
     (
      --  The fault input polarity is active high. A 1 at the fault input
      --  indicates a fault.
      Flt2Pol_0,
      --  The fault input polarity is active low. A 0 at the fault input
      --  indicates a fault.
      Flt2Pol_1)
     with Size => 1;
   for FLTPOL_FLT2POL_Field use
     (Flt2Pol_0 => 0,
      Flt2Pol_1 => 1);

   --  Fault Input 3 Polarity
   type FLTPOL_FLT3POL_Field is
     (
      --  The fault input polarity is active high. A 1 at the fault input
      --  indicates a fault.
      Flt3Pol_0,
      --  The fault input polarity is active low. A 0 at the fault input
      --  indicates a fault.
      Flt3Pol_1)
     with Size => 1;
   for FLTPOL_FLT3POL_Field use
     (Flt3Pol_0 => 0,
      Flt3Pol_1 => 1);

   --  FTM Fault Input Polarity
   type FTM0_FLTPOL_Register is record
      --  Fault Input 0 Polarity
      FLT0POL       : FLTPOL_FLT0POL_Field := NRF_SVD.FTM.Flt0Pol_0;
      --  Fault Input 1 Polarity
      FLT1POL       : FLTPOL_FLT1POL_Field := NRF_SVD.FTM.Flt1Pol_0;
      --  Fault Input 2 Polarity
      FLT2POL       : FLTPOL_FLT2POL_Field := NRF_SVD.FTM.Flt2Pol_0;
      --  Fault Input 3 Polarity
      FLT3POL       : FLTPOL_FLT3POL_Field := NRF_SVD.FTM.Flt3Pol_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_FLTPOL_Register use record
      FLT0POL       at 0 range 0 .. 0;
      FLT1POL       at 0 range 1 .. 1;
      FLT2POL       at 0 range 2 .. 2;
      FLT3POL       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Hardware Trigger Mode
   type SYNCONF_HWTRIGMODE_Field is
     (
      --  FTM clears the TRIGj bit when the hardware trigger j is detected,
      --  where j = 0, 1,2.
      Hwtrigmode_0,
      --  FTM does not clear the TRIGj bit when the hardware trigger j is
      --  detected, where j = 0, 1,2.
      Hwtrigmode_1)
     with Size => 1;
   for SYNCONF_HWTRIGMODE_Field use
     (Hwtrigmode_0 => 0,
      Hwtrigmode_1 => 1);

   --  CNTIN Register Synchronization
   type SYNCONF_CNTINC_Field is
     (
      --  CNTIN register is updated with its buffer value at all rising edges
      --  of FTM input clock.
      Cntinc_0,
      --  CNTIN register is updated with its buffer value by the PWM
      --  synchronization.
      Cntinc_1)
     with Size => 1;
   for SYNCONF_CNTINC_Field use
     (Cntinc_0 => 0,
      Cntinc_1 => 1);

   --  INVCTRL Register Synchronization
   type SYNCONF_INVC_Field is
     (
      --  INVCTRL register is updated with its buffer value at all rising edges
      --  of FTM input clock.
      Invc_0,
      --  INVCTRL register is updated with its buffer value by the PWM
      --  synchronization.
      Invc_1)
     with Size => 1;
   for SYNCONF_INVC_Field use
     (Invc_0 => 0,
      Invc_1 => 1);

   --  SWOCTRL Register Synchronization
   type SYNCONF_SWOC_Field is
     (
      --  SWOCTRL register is updated with its buffer value at all rising edges
      --  of FTM input clock.
      Swoc_0,
      --  SWOCTRL register is updated with its buffer value by the PWM
      --  synchronization.
      Swoc_1)
     with Size => 1;
   for SYNCONF_SWOC_Field use
     (Swoc_0 => 0,
      Swoc_1 => 1);

   --  Synchronization Mode
   type SYNCONF_SYNCMODE_Field is
     (
      --  Legacy PWM synchronization is selected.
      Syncmode_0,
      --  Enhanced PWM synchronization is selected.
      Syncmode_1)
     with Size => 1;
   for SYNCONF_SYNCMODE_Field use
     (Syncmode_0 => 0,
      Syncmode_1 => 1);

   --  FTM counter synchronization is activated by the software trigger.
   type SYNCONF_SWRSTCNT_Field is
     (
      --  The software trigger does not activate the FTM counter
      --  synchronization.
      Swrstcnt_0,
      --  The software trigger activates the FTM counter synchronization.
      Swrstcnt_1)
     with Size => 1;
   for SYNCONF_SWRSTCNT_Field use
     (Swrstcnt_0 => 0,
      Swrstcnt_1 => 1);

   --  MOD, HCR, CNTIN, and CV registers synchronization is activated by the
   --  software trigger.
   type SYNCONF_SWWRBUF_Field is
     (
      --  The software trigger does not activate MOD, HCR, CNTIN, and CV
      --  registers synchronization.
      Swwrbuf_0,
      --  The software trigger activates MOD, HCR, CNTIN, and CV registers
      --  synchronization.
      Swwrbuf_1)
     with Size => 1;
   for SYNCONF_SWWRBUF_Field use
     (Swwrbuf_0 => 0,
      Swwrbuf_1 => 1);

   --  Output mask synchronization is activated by the software trigger.
   type SYNCONF_SWOM_Field is
     (
      --  The software trigger does not activate the OUTMASK register
      --  synchronization.
      Swom_0,
      --  The software trigger activates the OUTMASK register synchronization.
      Swom_1)
     with Size => 1;
   for SYNCONF_SWOM_Field use
     (Swom_0 => 0,
      Swom_1 => 1);

   --  Inverting control synchronization is activated by the software trigger.
   type SYNCONF_SWINVC_Field is
     (
      --  The software trigger does not activate the INVCTRL register
      --  synchronization.
      Swinvc_0,
      --  The software trigger activates the INVCTRL register synchronization.
      Swinvc_1)
     with Size => 1;
   for SYNCONF_SWINVC_Field use
     (Swinvc_0 => 0,
      Swinvc_1 => 1);

   --  Software output control synchronization is activated by the software
   --  trigger.
   type SYNCONF_SWSOC_Field is
     (
      --  The software trigger does not activate the SWOCTRL register
      --  synchronization.
      Swsoc_0,
      --  The software trigger activates the SWOCTRL register synchronization.
      Swsoc_1)
     with Size => 1;
   for SYNCONF_SWSOC_Field use
     (Swsoc_0 => 0,
      Swsoc_1 => 1);

   --  FTM counter synchronization is activated by a hardware trigger.
   type SYNCONF_HWRSTCNT_Field is
     (
      --  A hardware trigger does not activate the FTM counter synchronization.
      Hwrstcnt_0,
      --  A hardware trigger activates the FTM counter synchronization.
      Hwrstcnt_1)
     with Size => 1;
   for SYNCONF_HWRSTCNT_Field use
     (Hwrstcnt_0 => 0,
      Hwrstcnt_1 => 1);

   --  MOD, HCR, CNTIN, and CV registers synchronization is activated by a
   --  hardware trigger.
   type SYNCONF_HWWRBUF_Field is
     (
      --  A hardware trigger does not activate MOD, HCR, CNTIN, and CV
      --  registers synchronization.
      Hwwrbuf_0,
      --  A hardware trigger activates MOD, HCR, CNTIN, and CV registers
      --  synchronization.
      Hwwrbuf_1)
     with Size => 1;
   for SYNCONF_HWWRBUF_Field use
     (Hwwrbuf_0 => 0,
      Hwwrbuf_1 => 1);

   --  Output mask synchronization is activated by a hardware trigger.
   type SYNCONF_HWOM_Field is
     (
      --  A hardware trigger does not activate the OUTMASK register
      --  synchronization.
      Hwom_0,
      --  A hardware trigger activates the OUTMASK register synchronization.
      Hwom_1)
     with Size => 1;
   for SYNCONF_HWOM_Field use
     (Hwom_0 => 0,
      Hwom_1 => 1);

   --  Inverting control synchronization is activated by a hardware trigger.
   type SYNCONF_HWINVC_Field is
     (
      --  A hardware trigger does not activate the INVCTRL register
      --  synchronization.
      Hwinvc_0,
      --  A hardware trigger activates the INVCTRL register synchronization.
      Hwinvc_1)
     with Size => 1;
   for SYNCONF_HWINVC_Field use
     (Hwinvc_0 => 0,
      Hwinvc_1 => 1);

   --  Software output control synchronization is activated by a hardware
   --  trigger.
   type SYNCONF_HWSOC_Field is
     (
      --  A hardware trigger does not activate the SWOCTRL register
      --  synchronization.
      Hwsoc_0,
      --  A hardware trigger activates the SWOCTRL register synchronization.
      Hwsoc_1)
     with Size => 1;
   for SYNCONF_HWSOC_Field use
     (Hwsoc_0 => 0,
      Hwsoc_1 => 1);

   --  Synchronization Configuration
   type FTM0_SYNCONF_Register is record
      --  Hardware Trigger Mode
      HWTRIGMODE     : SYNCONF_HWTRIGMODE_Field := NRF_SVD.FTM.Hwtrigmode_0;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  CNTIN Register Synchronization
      CNTINC         : SYNCONF_CNTINC_Field := NRF_SVD.FTM.Cntinc_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  INVCTRL Register Synchronization
      INVC           : SYNCONF_INVC_Field := NRF_SVD.FTM.Invc_0;
      --  SWOCTRL Register Synchronization
      SWOC           : SYNCONF_SWOC_Field := NRF_SVD.FTM.Swoc_0;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Synchronization Mode
      SYNCMODE       : SYNCONF_SYNCMODE_Field := NRF_SVD.FTM.Syncmode_0;
      --  FTM counter synchronization is activated by the software trigger.
      SWRSTCNT       : SYNCONF_SWRSTCNT_Field := NRF_SVD.FTM.Swrstcnt_0;
      --  MOD, HCR, CNTIN, and CV registers synchronization is activated by the
      --  software trigger.
      SWWRBUF        : SYNCONF_SWWRBUF_Field := NRF_SVD.FTM.Swwrbuf_0;
      --  Output mask synchronization is activated by the software trigger.
      SWOM           : SYNCONF_SWOM_Field := NRF_SVD.FTM.Swom_0;
      --  Inverting control synchronization is activated by the software
      --  trigger.
      SWINVC         : SYNCONF_SWINVC_Field := NRF_SVD.FTM.Swinvc_0;
      --  Software output control synchronization is activated by the software
      --  trigger.
      SWSOC          : SYNCONF_SWSOC_Field := NRF_SVD.FTM.Swsoc_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  FTM counter synchronization is activated by a hardware trigger.
      HWRSTCNT       : SYNCONF_HWRSTCNT_Field := NRF_SVD.FTM.Hwrstcnt_0;
      --  MOD, HCR, CNTIN, and CV registers synchronization is activated by a
      --  hardware trigger.
      HWWRBUF        : SYNCONF_HWWRBUF_Field := NRF_SVD.FTM.Hwwrbuf_0;
      --  Output mask synchronization is activated by a hardware trigger.
      HWOM           : SYNCONF_HWOM_Field := NRF_SVD.FTM.Hwom_0;
      --  Inverting control synchronization is activated by a hardware trigger.
      HWINVC         : SYNCONF_HWINVC_Field := NRF_SVD.FTM.Hwinvc_0;
      --  Software output control synchronization is activated by a hardware
      --  trigger.
      HWSOC          : SYNCONF_HWSOC_Field := NRF_SVD.FTM.Hwsoc_0;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_SYNCONF_Register use record
      HWTRIGMODE     at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CNTINC         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INVC           at 0 range 4 .. 4;
      SWOC           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SYNCMODE       at 0 range 7 .. 7;
      SWRSTCNT       at 0 range 8 .. 8;
      SWWRBUF        at 0 range 9 .. 9;
      SWOM           at 0 range 10 .. 10;
      SWINVC         at 0 range 11 .. 11;
      SWSOC          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      HWRSTCNT       at 0 range 16 .. 16;
      HWWRBUF        at 0 range 17 .. 17;
      HWOM           at 0 range 18 .. 18;
      HWINVC         at 0 range 19 .. 19;
      HWSOC          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Pair Channels 0 Inverting Enable
   type INVCTRL_INV0EN_Field is
     (
      --  Inverting is disabled.
      Inv0En_0,
      --  Inverting is enabled.
      Inv0En_1)
     with Size => 1;
   for INVCTRL_INV0EN_Field use
     (Inv0En_0 => 0,
      Inv0En_1 => 1);

   --  Pair Channels 1 Inverting Enable
   type INVCTRL_INV1EN_Field is
     (
      --  Inverting is disabled.
      Inv1En_0,
      --  Inverting is enabled.
      Inv1En_1)
     with Size => 1;
   for INVCTRL_INV1EN_Field use
     (Inv1En_0 => 0,
      Inv1En_1 => 1);

   --  Pair Channels 2 Inverting Enable
   type INVCTRL_INV2EN_Field is
     (
      --  Inverting is disabled.
      Inv2En_0,
      --  Inverting is enabled.
      Inv2En_1)
     with Size => 1;
   for INVCTRL_INV2EN_Field use
     (Inv2En_0 => 0,
      Inv2En_1 => 1);

   --  Pair Channels 3 Inverting Enable
   type INVCTRL_INV3EN_Field is
     (
      --  Inverting is disabled.
      Inv3En_0,
      --  Inverting is enabled.
      Inv3En_1)
     with Size => 1;
   for INVCTRL_INV3EN_Field use
     (Inv3En_0 => 0,
      Inv3En_1 => 1);

   --  FTM Inverting Control
   type FTM0_INVCTRL_Register is record
      --  Pair Channels 0 Inverting Enable
      INV0EN        : INVCTRL_INV0EN_Field := NRF_SVD.FTM.Inv0En_0;
      --  Pair Channels 1 Inverting Enable
      INV1EN        : INVCTRL_INV1EN_Field := NRF_SVD.FTM.Inv1En_0;
      --  Pair Channels 2 Inverting Enable
      INV2EN        : INVCTRL_INV2EN_Field := NRF_SVD.FTM.Inv2En_0;
      --  Pair Channels 3 Inverting Enable
      INV3EN        : INVCTRL_INV3EN_Field := NRF_SVD.FTM.Inv3En_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_INVCTRL_Register use record
      INV0EN        at 0 range 0 .. 0;
      INV1EN        at 0 range 1 .. 1;
      INV2EN        at 0 range 2 .. 2;
      INV3EN        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Channel 0 Software Output Control Enable
   type SWOCTRL_CH0OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch0Oc_0,
      --  The channel output is affected by software output control.
      Ch0Oc_1)
     with Size => 1;
   for SWOCTRL_CH0OC_Field use
     (Ch0Oc_0 => 0,
      Ch0Oc_1 => 1);

   --  Channel 1 Software Output Control Enable
   type SWOCTRL_CH1OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch1Oc_0,
      --  The channel output is affected by software output control.
      Ch1Oc_1)
     with Size => 1;
   for SWOCTRL_CH1OC_Field use
     (Ch1Oc_0 => 0,
      Ch1Oc_1 => 1);

   --  Channel 2 Software Output Control Enable
   type SWOCTRL_CH2OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch2Oc_0,
      --  The channel output is affected by software output control.
      Ch2Oc_1)
     with Size => 1;
   for SWOCTRL_CH2OC_Field use
     (Ch2Oc_0 => 0,
      Ch2Oc_1 => 1);

   --  Channel 3 Software Output Control Enable
   type SWOCTRL_CH3OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch3Oc_0,
      --  The channel output is affected by software output control.
      Ch3Oc_1)
     with Size => 1;
   for SWOCTRL_CH3OC_Field use
     (Ch3Oc_0 => 0,
      Ch3Oc_1 => 1);

   --  Channel 4 Software Output Control Enable
   type SWOCTRL_CH4OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch4Oc_0,
      --  The channel output is affected by software output control.
      Ch4Oc_1)
     with Size => 1;
   for SWOCTRL_CH4OC_Field use
     (Ch4Oc_0 => 0,
      Ch4Oc_1 => 1);

   --  Channel 5 Software Output Control Enable
   type SWOCTRL_CH5OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch5Oc_0,
      --  The channel output is affected by software output control.
      Ch5Oc_1)
     with Size => 1;
   for SWOCTRL_CH5OC_Field use
     (Ch5Oc_0 => 0,
      Ch5Oc_1 => 1);

   --  Channel 6 Software Output Control Enable
   type SWOCTRL_CH6OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch6Oc_0,
      --  The channel output is affected by software output control.
      Ch6Oc_1)
     with Size => 1;
   for SWOCTRL_CH6OC_Field use
     (Ch6Oc_0 => 0,
      Ch6Oc_1 => 1);

   --  Channel 7 Software Output Control Enable
   type SWOCTRL_CH7OC_Field is
     (
      --  The channel output is not affected by software output control.
      Ch7Oc_0,
      --  The channel output is affected by software output control.
      Ch7Oc_1)
     with Size => 1;
   for SWOCTRL_CH7OC_Field use
     (Ch7Oc_0 => 0,
      Ch7Oc_1 => 1);

   --  Channel 0 Software Output Control Value
   type SWOCTRL_CH0OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch0Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch0Ocv_1)
     with Size => 1;
   for SWOCTRL_CH0OCV_Field use
     (Ch0Ocv_0 => 0,
      Ch0Ocv_1 => 1);

   --  Channel 1 Software Output Control Value
   type SWOCTRL_CH1OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch1Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch1Ocv_1)
     with Size => 1;
   for SWOCTRL_CH1OCV_Field use
     (Ch1Ocv_0 => 0,
      Ch1Ocv_1 => 1);

   --  Channel 2 Software Output Control Value
   type SWOCTRL_CH2OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch2Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch2Ocv_1)
     with Size => 1;
   for SWOCTRL_CH2OCV_Field use
     (Ch2Ocv_0 => 0,
      Ch2Ocv_1 => 1);

   --  Channel 3 Software Output Control Value
   type SWOCTRL_CH3OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch3Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch3Ocv_1)
     with Size => 1;
   for SWOCTRL_CH3OCV_Field use
     (Ch3Ocv_0 => 0,
      Ch3Ocv_1 => 1);

   --  Channel 4 Software Output Control Value
   type SWOCTRL_CH4OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch4Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch4Ocv_1)
     with Size => 1;
   for SWOCTRL_CH4OCV_Field use
     (Ch4Ocv_0 => 0,
      Ch4Ocv_1 => 1);

   --  Channel 5 Software Output Control Value
   type SWOCTRL_CH5OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch5Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch5Ocv_1)
     with Size => 1;
   for SWOCTRL_CH5OCV_Field use
     (Ch5Ocv_0 => 0,
      Ch5Ocv_1 => 1);

   --  Channel 6 Software Output Control Value
   type SWOCTRL_CH6OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch6Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch6Ocv_1)
     with Size => 1;
   for SWOCTRL_CH6OCV_Field use
     (Ch6Ocv_0 => 0,
      Ch6Ocv_1 => 1);

   --  Channel 7 Software Output Control Value
   type SWOCTRL_CH7OCV_Field is
     (
      --  The software output control forces 0 to the channel output.
      Ch7Ocv_0,
      --  The software output control forces 1 to the channel output.
      Ch7Ocv_1)
     with Size => 1;
   for SWOCTRL_CH7OCV_Field use
     (Ch7Ocv_0 => 0,
      Ch7Ocv_1 => 1);

   --  FTM Software Output Control
   type FTM0_SWOCTRL_Register is record
      --  Channel 0 Software Output Control Enable
      CH0OC          : SWOCTRL_CH0OC_Field := NRF_SVD.FTM.Ch0Oc_0;
      --  Channel 1 Software Output Control Enable
      CH1OC          : SWOCTRL_CH1OC_Field := NRF_SVD.FTM.Ch1Oc_0;
      --  Channel 2 Software Output Control Enable
      CH2OC          : SWOCTRL_CH2OC_Field := NRF_SVD.FTM.Ch2Oc_0;
      --  Channel 3 Software Output Control Enable
      CH3OC          : SWOCTRL_CH3OC_Field := NRF_SVD.FTM.Ch3Oc_0;
      --  Channel 4 Software Output Control Enable
      CH4OC          : SWOCTRL_CH4OC_Field := NRF_SVD.FTM.Ch4Oc_0;
      --  Channel 5 Software Output Control Enable
      CH5OC          : SWOCTRL_CH5OC_Field := NRF_SVD.FTM.Ch5Oc_0;
      --  Channel 6 Software Output Control Enable
      CH6OC          : SWOCTRL_CH6OC_Field := NRF_SVD.FTM.Ch6Oc_0;
      --  Channel 7 Software Output Control Enable
      CH7OC          : SWOCTRL_CH7OC_Field := NRF_SVD.FTM.Ch7Oc_0;
      --  Channel 0 Software Output Control Value
      CH0OCV         : SWOCTRL_CH0OCV_Field := NRF_SVD.FTM.Ch0Ocv_0;
      --  Channel 1 Software Output Control Value
      CH1OCV         : SWOCTRL_CH1OCV_Field := NRF_SVD.FTM.Ch1Ocv_0;
      --  Channel 2 Software Output Control Value
      CH2OCV         : SWOCTRL_CH2OCV_Field := NRF_SVD.FTM.Ch2Ocv_0;
      --  Channel 3 Software Output Control Value
      CH3OCV         : SWOCTRL_CH3OCV_Field := NRF_SVD.FTM.Ch3Ocv_0;
      --  Channel 4 Software Output Control Value
      CH4OCV         : SWOCTRL_CH4OCV_Field := NRF_SVD.FTM.Ch4Ocv_0;
      --  Channel 5 Software Output Control Value
      CH5OCV         : SWOCTRL_CH5OCV_Field := NRF_SVD.FTM.Ch5Ocv_0;
      --  Channel 6 Software Output Control Value
      CH6OCV         : SWOCTRL_CH6OCV_Field := NRF_SVD.FTM.Ch6Ocv_0;
      --  Channel 7 Software Output Control Value
      CH7OCV         : SWOCTRL_CH7OCV_Field := NRF_SVD.FTM.Ch7Ocv_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_SWOCTRL_Register use record
      CH0OC          at 0 range 0 .. 0;
      CH1OC          at 0 range 1 .. 1;
      CH2OC          at 0 range 2 .. 2;
      CH3OC          at 0 range 3 .. 3;
      CH4OC          at 0 range 4 .. 4;
      CH5OC          at 0 range 5 .. 5;
      CH6OC          at 0 range 6 .. 6;
      CH7OC          at 0 range 7 .. 7;
      CH0OCV         at 0 range 8 .. 8;
      CH1OCV         at 0 range 9 .. 9;
      CH2OCV         at 0 range 10 .. 10;
      CH3OCV         at 0 range 11 .. 11;
      CH4OCV         at 0 range 12 .. 12;
      CH5OCV         at 0 range 13 .. 13;
      CH6OCV         at 0 range 14 .. 14;
      CH7OCV         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Channel 0 Select
   type PWMLOAD_CH0SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch0Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch0Sel_1)
     with Size => 1;
   for PWMLOAD_CH0SEL_Field use
     (Ch0Sel_0 => 0,
      Ch0Sel_1 => 1);

   --  Channel 1 Select
   type PWMLOAD_CH1SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch1Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch1Sel_1)
     with Size => 1;
   for PWMLOAD_CH1SEL_Field use
     (Ch1Sel_0 => 0,
      Ch1Sel_1 => 1);

   --  Channel 2 Select
   type PWMLOAD_CH2SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch2Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch2Sel_1)
     with Size => 1;
   for PWMLOAD_CH2SEL_Field use
     (Ch2Sel_0 => 0,
      Ch2Sel_1 => 1);

   --  Channel 3 Select
   type PWMLOAD_CH3SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch3Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch3Sel_1)
     with Size => 1;
   for PWMLOAD_CH3SEL_Field use
     (Ch3Sel_0 => 0,
      Ch3Sel_1 => 1);

   --  Channel 4 Select
   type PWMLOAD_CH4SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch4Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch4Sel_1)
     with Size => 1;
   for PWMLOAD_CH4SEL_Field use
     (Ch4Sel_0 => 0,
      Ch4Sel_1 => 1);

   --  Channel 5 Select
   type PWMLOAD_CH5SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch5Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch5Sel_1)
     with Size => 1;
   for PWMLOAD_CH5SEL_Field use
     (Ch5Sel_0 => 0,
      Ch5Sel_1 => 1);

   --  Channel 6 Select
   type PWMLOAD_CH6SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch6Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch6Sel_1)
     with Size => 1;
   for PWMLOAD_CH6SEL_Field use
     (Ch6Sel_0 => 0,
      Ch6Sel_1 => 1);

   --  Channel 7 Select
   type PWMLOAD_CH7SEL_Field is
     (
      --  Channel match is not included as a reload opportunity.
      Ch7Sel_0,
      --  Channel match is included as a reload opportunity.
      Ch7Sel_1)
     with Size => 1;
   for PWMLOAD_CH7SEL_Field use
     (Ch7Sel_0 => 0,
      Ch7Sel_1 => 1);

   --  Half Cycle Select
   type PWMLOAD_HCSEL_Field is
     (
      --  Half cycle reload is disabled and it is not considered as a reload
      --  opportunity.
      Hcsel_0,
      --  Half cycle reload is enabled and it is considered as a reload
      --  opportunity.
      Hcsel_1)
     with Size => 1;
   for PWMLOAD_HCSEL_Field use
     (Hcsel_0 => 0,
      Hcsel_1 => 1);

   --  Load Enable
   type PWMLOAD_LDOK_Field is
     (
      --  Loading updated values is disabled.
      Ldok_0,
      --  Loading updated values is enabled.
      Ldok_1)
     with Size => 1;
   for PWMLOAD_LDOK_Field use
     (Ldok_0 => 0,
      Ldok_1 => 1);

   --  Global Load Enable
   type PWMLOAD_GLEN_Field is
     (
      --  Global Load Ok disabled.
      Glen_0,
      --  Global Load OK enabled. A pulse event on the module global load input
      --  sets the LDOK bit.
      Glen_1)
     with Size => 1;
   for PWMLOAD_GLEN_Field use
     (Glen_0 => 0,
      Glen_1 => 1);

   --  Global Load OK
   type PWMLOAD_GLDOK_Field is
     (
      --  No action.
      Gldok_0,
      --  LDOK bit is set.
      Gldok_1)
     with Size => 1;
   for PWMLOAD_GLDOK_Field use
     (Gldok_0 => 0,
      Gldok_1 => 1);

   --  FTM PWM Load
   type FTM0_PWMLOAD_Register is record
      --  Channel 0 Select
      CH0SEL         : PWMLOAD_CH0SEL_Field := NRF_SVD.FTM.Ch0Sel_0;
      --  Channel 1 Select
      CH1SEL         : PWMLOAD_CH1SEL_Field := NRF_SVD.FTM.Ch1Sel_0;
      --  Channel 2 Select
      CH2SEL         : PWMLOAD_CH2SEL_Field := NRF_SVD.FTM.Ch2Sel_0;
      --  Channel 3 Select
      CH3SEL         : PWMLOAD_CH3SEL_Field := NRF_SVD.FTM.Ch3Sel_0;
      --  Channel 4 Select
      CH4SEL         : PWMLOAD_CH4SEL_Field := NRF_SVD.FTM.Ch4Sel_0;
      --  Channel 5 Select
      CH5SEL         : PWMLOAD_CH5SEL_Field := NRF_SVD.FTM.Ch5Sel_0;
      --  Channel 6 Select
      CH6SEL         : PWMLOAD_CH6SEL_Field := NRF_SVD.FTM.Ch6Sel_0;
      --  Channel 7 Select
      CH7SEL         : PWMLOAD_CH7SEL_Field := NRF_SVD.FTM.Ch7Sel_0;
      --  Half Cycle Select
      HCSEL          : PWMLOAD_HCSEL_Field := NRF_SVD.FTM.Hcsel_0;
      --  Load Enable
      LDOK           : PWMLOAD_LDOK_Field := NRF_SVD.FTM.Ldok_0;
      --  Global Load Enable
      GLEN           : PWMLOAD_GLEN_Field := NRF_SVD.FTM.Glen_0;
      --  Write-only. Global Load OK
      GLDOK          : PWMLOAD_GLDOK_Field := NRF_SVD.FTM.Gldok_0;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_PWMLOAD_Register use record
      CH0SEL         at 0 range 0 .. 0;
      CH1SEL         at 0 range 1 .. 1;
      CH2SEL         at 0 range 2 .. 2;
      CH3SEL         at 0 range 3 .. 3;
      CH4SEL         at 0 range 4 .. 4;
      CH5SEL         at 0 range 5 .. 5;
      CH6SEL         at 0 range 6 .. 6;
      CH7SEL         at 0 range 7 .. 7;
      HCSEL          at 0 range 8 .. 8;
      LDOK           at 0 range 9 .. 9;
      GLEN           at 0 range 10 .. 10;
      GLDOK          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype FTM0_HCR_HCVAL_Field is HAL.UInt16;

   --  Half Cycle Register
   type FTM0_HCR_Register is record
      --  Half Cycle Value
      HCVAL          : FTM0_HCR_HCVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_HCR_Register use record
      HCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FTM0_MOD_MIRROR_FRACMOD_Field is HAL.UInt5;
   subtype FTM0_MOD_MIRROR_MOD_Field is HAL.UInt16;

   --  Mirror of Modulo Value
   type FTM0_MOD_MIRROR_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Modulo Fractional Value
      FRACMOD       : FTM0_MOD_MIRROR_FRACMOD_Field := 16#0#;
      --  Mirror of the Modulo Integer Value
      MOD_k         : FTM0_MOD_MIRROR_MOD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_MOD_MIRROR_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACMOD       at 0 range 11 .. 15;
      MOD_k         at 0 range 16 .. 31;
   end record;

   subtype FTM0_CV_MIRROR_FRACVAL_Field is HAL.UInt5;
   subtype FTM0_CV_MIRROR_VAL_Field is HAL.UInt16;

   --  Mirror of Channel (n) Match Value
   type FTM0_CV_MIRROR_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Channel (n) Match Fractional Value
      FRACVAL       : FTM0_CV_MIRROR_FRACVAL_Field := 16#0#;
      --  Mirror of the Channel (n) Match Integer Value
      VAL           : FTM0_CV_MIRROR_VAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTM0_CV_MIRROR_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      FRACVAL       at 0 range 11 .. 15;
      VAL           at 0 range 16 .. 31;
   end record;

   --  Mirror of Channel (n) Match Value
   type FTM0_CV_MIRROR_Registers is array (0 .. 7) of FTM0_CV_MIRROR_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  FlexTimer Module
   type FTM_Peripheral is record
      --  Status And Control
      SC         : aliased FTM0_SC_Register;
      --  Counter
      CNT        : aliased FTM0_CNT_Register;
      --  Modulo
      MOD_k      : aliased FTM0_MOD_Register;
      --  Channel (n) Status And Control
      CSC0       : aliased CSC_Register;
      --  Channel (n) Value
      CV0        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC1       : aliased CSC_Register;
      --  Channel (n) Value
      CV1        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC2       : aliased CSC_Register;
      --  Channel (n) Value
      CV2        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC3       : aliased CSC_Register;
      --  Channel (n) Value
      CV3        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC4       : aliased CSC_Register;
      --  Channel (n) Value
      CV4        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC5       : aliased CSC_Register;
      --  Channel (n) Value
      CV5        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC6       : aliased CSC_Register;
      --  Channel (n) Value
      CV6        : aliased CV_Register;
      --  Channel (n) Status And Control
      CSC7       : aliased CSC_Register;
      --  Channel (n) Value
      CV7        : aliased CV_Register;
      --  Counter Initial Value
      CNTIN      : aliased FTM0_CNTIN_Register;
      --  Capture And Compare Status
      STATUS     : aliased FTM0_STATUS_Register;
      --  Features Mode Selection
      MODE       : aliased FTM0_MODE_Register;
      --  Synchronization
      SYNC       : aliased FTM0_SYNC_Register;
      --  Initial State For Channels Output
      OUTINIT    : aliased FTM0_OUTINIT_Register;
      --  Output Mask
      OUTMASK    : aliased FTM0_OUTMASK_Register;
      --  Function For Linked Channels
      COMBINE    : aliased FTM0_COMBINE_Register;
      --  Deadtime Configuration
      DEADTIME   : aliased FTM0_DEADTIME_Register;
      --  FTM External Trigger
      EXTTRIG    : aliased FTM0_EXTTRIG_Register;
      --  Channels Polarity
      POL        : aliased FTM0_POL_Register;
      --  Fault Mode Status
      FMS        : aliased FTM0_FMS_Register;
      --  Input Capture Filter Control
      FILTER     : aliased FTM0_FILTER_Register;
      --  Fault Control
      FLTCTRL    : aliased FTM0_FLTCTRL_Register;
      --  Quadrature Decoder Control And Status
      QDCTRL     : aliased FTM0_QDCTRL_Register;
      --  Configuration
      CONF       : aliased FTM0_CONF_Register;
      --  FTM Fault Input Polarity
      FLTPOL     : aliased FTM0_FLTPOL_Register;
      --  Synchronization Configuration
      SYNCONF    : aliased FTM0_SYNCONF_Register;
      --  FTM Inverting Control
      INVCTRL    : aliased FTM0_INVCTRL_Register;
      --  FTM Software Output Control
      SWOCTRL    : aliased FTM0_SWOCTRL_Register;
      --  FTM PWM Load
      PWMLOAD    : aliased FTM0_PWMLOAD_Register;
      --  Half Cycle Register
      HCR        : aliased FTM0_HCR_Register;
      --  Mirror of Modulo Value
      MOD_MIRROR : aliased FTM0_MOD_MIRROR_Register;
      --  Mirror of Channel (n) Match Value
      CV_MIRROR  : aliased FTM0_CV_MIRROR_Registers;
   end record
     with Volatile;

   for FTM_Peripheral use record
      SC         at 16#0# range 0 .. 31;
      CNT        at 16#4# range 0 .. 31;
      MOD_k      at 16#8# range 0 .. 31;
      CSC0       at 16#C# range 0 .. 31;
      CV0        at 16#10# range 0 .. 31;
      CSC1       at 16#14# range 0 .. 31;
      CV1        at 16#18# range 0 .. 31;
      CSC2       at 16#1C# range 0 .. 31;
      CV2        at 16#20# range 0 .. 31;
      CSC3       at 16#24# range 0 .. 31;
      CV3        at 16#28# range 0 .. 31;
      CSC4       at 16#2C# range 0 .. 31;
      CV4        at 16#30# range 0 .. 31;
      CSC5       at 16#34# range 0 .. 31;
      CV5        at 16#38# range 0 .. 31;
      CSC6       at 16#3C# range 0 .. 31;
      CV6        at 16#40# range 0 .. 31;
      CSC7       at 16#44# range 0 .. 31;
      CV7        at 16#48# range 0 .. 31;
      CNTIN      at 16#4C# range 0 .. 31;
      STATUS     at 16#50# range 0 .. 31;
      MODE       at 16#54# range 0 .. 31;
      SYNC       at 16#58# range 0 .. 31;
      OUTINIT    at 16#5C# range 0 .. 31;
      OUTMASK    at 16#60# range 0 .. 31;
      COMBINE    at 16#64# range 0 .. 31;
      DEADTIME   at 16#68# range 0 .. 31;
      EXTTRIG    at 16#6C# range 0 .. 31;
      POL        at 16#70# range 0 .. 31;
      FMS        at 16#74# range 0 .. 31;
      FILTER     at 16#78# range 0 .. 31;
      FLTCTRL    at 16#7C# range 0 .. 31;
      QDCTRL     at 16#80# range 0 .. 31;
      CONF       at 16#84# range 0 .. 31;
      FLTPOL     at 16#88# range 0 .. 31;
      SYNCONF    at 16#8C# range 0 .. 31;
      INVCTRL    at 16#90# range 0 .. 31;
      SWOCTRL    at 16#94# range 0 .. 31;
      PWMLOAD    at 16#98# range 0 .. 31;
      HCR        at 16#9C# range 0 .. 31;
      MOD_MIRROR at 16#200# range 0 .. 31;
      CV_MIRROR  at 16#204# range 0 .. 255;
   end record;

   --  FlexTimer Module
   FTM0_Periph : aliased FTM_Peripheral
     with Import, Address => System'To_Address (16#40038000#);

   --  FlexTimer Module
   FTM1_Periph : aliased FTM_Peripheral
     with Import, Address => System'To_Address (16#40039000#);

   --  FlexTimer Module
   FTM2_Periph : aliased FTM_Peripheral
     with Import, Address => System'To_Address (16#4003A000#);

end NRF_SVD.FTM;
