--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LPIT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LPIT0_VERID_FEATURE_Field is HAL.UInt16;
   subtype LPIT0_VERID_MINOR_Field is HAL.UInt8;
   subtype LPIT0_VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type LPIT0_VERID_Register is record
      --  Read-only. Feature Number
      FEATURE : LPIT0_VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : LPIT0_VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : LPIT0_VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   subtype LPIT0_PARAM_CHANNEL_Field is HAL.UInt8;
   subtype LPIT0_PARAM_EXT_TRIG_Field is HAL.UInt8;

   --  Parameter Register
   type LPIT0_PARAM_Register is record
      --  Read-only. Number of Timer Channels
      CHANNEL        : LPIT0_PARAM_CHANNEL_Field;
      --  Read-only. Number of External Trigger Inputs
      EXT_TRIG       : LPIT0_PARAM_EXT_TRIG_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_PARAM_Register use record
      CHANNEL        at 0 range 0 .. 7;
      EXT_TRIG       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Module Clock Enable
   type MCR_M_CEN_Field is
     (
      --  Protocol clock to timers is disabled
      M_Cen_0,
      --  Protocol clock to timers is enabled
      M_Cen_1)
     with Size => 1;
   for MCR_M_CEN_Field use
     (M_Cen_0 => 0,
      M_Cen_1 => 1);

   --  Software Reset Bit
   type MCR_SW_RST_Field is
     (
      --  Timer channels and registers are not reset
      Sw_Rst_0,
      --  Timer channels and registers are reset
      Sw_Rst_1)
     with Size => 1;
   for MCR_SW_RST_Field use
     (Sw_Rst_0 => 0,
      Sw_Rst_1 => 1);

   --  DOZE Mode Enable Bit
   type MCR_DOZE_EN_Field is
     (
      --  Timer channels are stopped in DOZE mode
      Doze_En_0,
      --  Timer channels continue to run in DOZE mode
      Doze_En_1)
     with Size => 1;
   for MCR_DOZE_EN_Field use
     (Doze_En_0 => 0,
      Doze_En_1 => 1);

   --  Debug Enable Bit
   type MCR_DBG_EN_Field is
     (
      --  Timer channels are stopped in Debug mode
      Dbg_En_0,
      --  Timer channels continue to run in Debug mode
      Dbg_En_1)
     with Size => 1;
   for MCR_DBG_EN_Field use
     (Dbg_En_0 => 0,
      Dbg_En_1 => 1);

   --  Module Control Register
   type LPIT0_MCR_Register is record
      --  Module Clock Enable
      M_CEN         : MCR_M_CEN_Field := NRF_SVD.LPIT.M_Cen_0;
      --  Software Reset Bit
      SW_RST        : MCR_SW_RST_Field := NRF_SVD.LPIT.Sw_Rst_0;
      --  DOZE Mode Enable Bit
      DOZE_EN       : MCR_DOZE_EN_Field := NRF_SVD.LPIT.Doze_En_0;
      --  Debug Enable Bit
      DBG_EN        : MCR_DBG_EN_Field := NRF_SVD.LPIT.Dbg_En_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_MCR_Register use record
      M_CEN         at 0 range 0 .. 0;
      SW_RST        at 0 range 1 .. 1;
      DOZE_EN       at 0 range 2 .. 2;
      DBG_EN        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Channel 0 Timer Interrupt Flag
   type MSR_TIF0_Field is
     (
      --  Timer has not timed out
      Tif0_0,
      --  Timeout has occurred
      Tif0_1)
     with Size => 1;
   for MSR_TIF0_Field use
     (Tif0_0 => 0,
      Tif0_1 => 1);

   --  Channel 1 Timer Interrupt Flag
   type MSR_TIF1_Field is
     (
      --  Timer has not timed out
      Tif1_0,
      --  Timeout has occurred
      Tif1_1)
     with Size => 1;
   for MSR_TIF1_Field use
     (Tif1_0 => 0,
      Tif1_1 => 1);

   --  Channel 2 Timer Interrupt Flag
   type MSR_TIF2_Field is
     (
      --  Timer has not timed out
      Tif2_0,
      --  Timeout has occurred
      Tif2_1)
     with Size => 1;
   for MSR_TIF2_Field use
     (Tif2_0 => 0,
      Tif2_1 => 1);

   --  Channel 3 Timer Interrupt Flag
   type MSR_TIF3_Field is
     (
      --  Timer has not timed out
      Tif3_0,
      --  Timeout has occurred
      Tif3_1)
     with Size => 1;
   for MSR_TIF3_Field use
     (Tif3_0 => 0,
      Tif3_1 => 1);

   --  Module Status Register
   type LPIT0_MSR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 0 Timer Interrupt Flag
      TIF0          : MSR_TIF0_Field := NRF_SVD.LPIT.Tif0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 1 Timer Interrupt Flag
      TIF1          : MSR_TIF1_Field := NRF_SVD.LPIT.Tif1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 2 Timer Interrupt Flag
      TIF2          : MSR_TIF2_Field := NRF_SVD.LPIT.Tif2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 3 Timer Interrupt Flag
      TIF3          : MSR_TIF3_Field := NRF_SVD.LPIT.Tif3_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_MSR_Register use record
      TIF0          at 0 range 0 .. 0;
      TIF1          at 0 range 1 .. 1;
      TIF2          at 0 range 2 .. 2;
      TIF3          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Channel 0 Timer Interrupt Enable
   type MIER_TIE0_Field is
     (
      --  Interrupt generation is disabled
      Tie0_0,
      --  Interrupt generation is enabled
      Tie0_1)
     with Size => 1;
   for MIER_TIE0_Field use
     (Tie0_0 => 0,
      Tie0_1 => 1);

   --  Channel 1 Timer Interrupt Enable
   type MIER_TIE1_Field is
     (
      --  Interrupt generation is disabled
      Tie1_0,
      --  Interrupt generation is enabled
      Tie1_1)
     with Size => 1;
   for MIER_TIE1_Field use
     (Tie1_0 => 0,
      Tie1_1 => 1);

   --  Channel 2 Timer Interrupt Enable
   type MIER_TIE2_Field is
     (
      --  Interrupt generation is disabled
      Tie2_0,
      --  Interrupt generation is enabled
      Tie2_1)
     with Size => 1;
   for MIER_TIE2_Field use
     (Tie2_0 => 0,
      Tie2_1 => 1);

   --  Channel 3 Timer Interrupt Enable
   type MIER_TIE3_Field is
     (
      --  Interrupt generation is disabled
      Tie3_0,
      --  Interrupt generation is enabled
      Tie3_1)
     with Size => 1;
   for MIER_TIE3_Field use
     (Tie3_0 => 0,
      Tie3_1 => 1);

   --  Module Interrupt Enable Register
   type LPIT0_MIER_Register is record
      --  Channel 0 Timer Interrupt Enable
      TIE0          : MIER_TIE0_Field := NRF_SVD.LPIT.Tie0_0;
      --  Channel 1 Timer Interrupt Enable
      TIE1          : MIER_TIE1_Field := NRF_SVD.LPIT.Tie1_0;
      --  Channel 2 Timer Interrupt Enable
      TIE2          : MIER_TIE2_Field := NRF_SVD.LPIT.Tie2_0;
      --  Channel 3 Timer Interrupt Enable
      TIE3          : MIER_TIE3_Field := NRF_SVD.LPIT.Tie3_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_MIER_Register use record
      TIE0          at 0 range 0 .. 0;
      TIE1          at 0 range 1 .. 1;
      TIE2          at 0 range 2 .. 2;
      TIE3          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Set Timer 0 Enable
   type SETTEN_SET_T_EN_0_Field is
     (
      --  No effect
      Set_T_En_0_0,
      --  Enables the Timer Channel 0
      Set_T_En_0_1)
     with Size => 1;
   for SETTEN_SET_T_EN_0_Field use
     (Set_T_En_0_0 => 0,
      Set_T_En_0_1 => 1);

   --  Set Timer 1 Enable
   type SETTEN_SET_T_EN_1_Field is
     (
      --  No Effect
      Set_T_En_1_0,
      --  Enables the Timer Channel 1
      Set_T_En_1_1)
     with Size => 1;
   for SETTEN_SET_T_EN_1_Field use
     (Set_T_En_1_0 => 0,
      Set_T_En_1_1 => 1);

   --  Set Timer 2 Enable
   type SETTEN_SET_T_EN_2_Field is
     (
      --  No Effect
      Set_T_En_2_0,
      --  Enables the Timer Channel 2
      Set_T_En_2_1)
     with Size => 1;
   for SETTEN_SET_T_EN_2_Field use
     (Set_T_En_2_0 => 0,
      Set_T_En_2_1 => 1);

   --  Set Timer 3 Enable
   type SETTEN_SET_T_EN_3_Field is
     (
      --  No effect
      Set_T_En_3_0,
      --  Enables the Timer Channel 3
      Set_T_En_3_1)
     with Size => 1;
   for SETTEN_SET_T_EN_3_Field use
     (Set_T_En_3_0 => 0,
      Set_T_En_3_1 => 1);

   --  Set Timer Enable Register
   type LPIT0_SETTEN_Register is record
      --  Set Timer 0 Enable
      SET_T_EN_0    : SETTEN_SET_T_EN_0_Field := NRF_SVD.LPIT.Set_T_En_0_0;
      --  Set Timer 1 Enable
      SET_T_EN_1    : SETTEN_SET_T_EN_1_Field := NRF_SVD.LPIT.Set_T_En_1_0;
      --  Set Timer 2 Enable
      SET_T_EN_2    : SETTEN_SET_T_EN_2_Field := NRF_SVD.LPIT.Set_T_En_2_0;
      --  Set Timer 3 Enable
      SET_T_EN_3    : SETTEN_SET_T_EN_3_Field := NRF_SVD.LPIT.Set_T_En_3_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_SETTEN_Register use record
      SET_T_EN_0    at 0 range 0 .. 0;
      SET_T_EN_1    at 0 range 1 .. 1;
      SET_T_EN_2    at 0 range 2 .. 2;
      SET_T_EN_3    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Clear Timer 0 Enable
   type CLRTEN_CLR_T_EN_0_Field is
     (
      --  No action
      Clr_T_En_0_0,
      --  Clear T_EN bit for Timer Channel 0
      Clr_T_En_0_1)
     with Size => 1;
   for CLRTEN_CLR_T_EN_0_Field use
     (Clr_T_En_0_0 => 0,
      Clr_T_En_0_1 => 1);

   --  Clear Timer 1 Enable
   type CLRTEN_CLR_T_EN_1_Field is
     (
      --  No Action
      Clr_T_En_1_0,
      --  Clear T_EN bit for Timer Channel 1
      Clr_T_En_1_1)
     with Size => 1;
   for CLRTEN_CLR_T_EN_1_Field use
     (Clr_T_En_1_0 => 0,
      Clr_T_En_1_1 => 1);

   --  Clear Timer 2 Enable
   type CLRTEN_CLR_T_EN_2_Field is
     (
      --  No Action
      Clr_T_En_2_0,
      --  Clear T_EN bit for Timer Channel 2
      Clr_T_En_2_1)
     with Size => 1;
   for CLRTEN_CLR_T_EN_2_Field use
     (Clr_T_En_2_0 => 0,
      Clr_T_En_2_1 => 1);

   --  Clear Timer 3 Enable
   type CLRTEN_CLR_T_EN_3_Field is
     (
      --  No Action
      Clr_T_En_3_0,
      --  Clear T_EN bit for Timer Channel 3
      Clr_T_En_3_1)
     with Size => 1;
   for CLRTEN_CLR_T_EN_3_Field use
     (Clr_T_En_3_0 => 0,
      Clr_T_En_3_1 => 1);

   --  Clear Timer Enable Register
   type LPIT0_CLRTEN_Register is record
      --  Write-only. Clear Timer 0 Enable
      CLR_T_EN_0    : CLRTEN_CLR_T_EN_0_Field := NRF_SVD.LPIT.Clr_T_En_0_0;
      --  Write-only. Clear Timer 1 Enable
      CLR_T_EN_1    : CLRTEN_CLR_T_EN_1_Field := NRF_SVD.LPIT.Clr_T_En_1_0;
      --  Write-only. Clear Timer 2 Enable
      CLR_T_EN_2    : CLRTEN_CLR_T_EN_2_Field := NRF_SVD.LPIT.Clr_T_En_2_0;
      --  Write-only. Clear Timer 3 Enable
      CLR_T_EN_3    : CLRTEN_CLR_T_EN_3_Field := NRF_SVD.LPIT.Clr_T_En_3_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPIT0_CLRTEN_Register use record
      CLR_T_EN_0    at 0 range 0 .. 0;
      CLR_T_EN_1    at 0 range 1 .. 1;
      CLR_T_EN_2    at 0 range 2 .. 2;
      CLR_T_EN_3    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Timer Enable
   type TCTRL0_T_EN_Field is
     (
      --  Timer Channel is disabled
      T_En_0,
      --  Timer Channel is enabled
      T_En_1)
     with Size => 1;
   for TCTRL0_T_EN_Field use
     (T_En_0 => 0,
      T_En_1 => 1);

   --  Chain Channel
   type TCTRL0_CHAIN_Field is
     (
      --  Channel Chaining is disabled. Channel Timer runs independently.
      Chain_0,
      --  Channel Chaining is enabled. Timer decrements on previous channel's
      --  timeout
      Chain_1)
     with Size => 1;
   for TCTRL0_CHAIN_Field use
     (Chain_0 => 0,
      Chain_1 => 1);

   --  Timer Operation Mode
   type TCTRL0_MODE_Field is
     (
      --  32-bit Periodic Counter
      Mode_0,
      --  Dual 16-bit Periodic Counter
      Mode_1,
      --  32-bit Trigger Accumulator
      Mode_2,
      --  32-bit Trigger Input Capture
      Mode_3)
     with Size => 2;
   for TCTRL0_MODE_Field use
     (Mode_0 => 0,
      Mode_1 => 1,
      Mode_2 => 2,
      Mode_3 => 3);

   --  Timer Start On Trigger
   type TCTRL0_TSOT_Field is
     (
      --  Timer starts to decrement immediately based on restart condition
      --  (controlled by TSOI bit)
      Tsot_0,
      --  Timer starts to decrement when rising edge on selected trigger is
      --  detected
      Tsot_1)
     with Size => 1;
   for TCTRL0_TSOT_Field use
     (Tsot_0 => 0,
      Tsot_1 => 1);

   --  Timer Stop On Interrupt
   type TCTRL0_TSOI_Field is
     (
      --  Timer does not stop after timeout
      Tsoi_0,
      --  Timer will stop after timeout and will restart after rising edge on
      --  the T_EN bit is detected (i.e. timer channel is disabled and then
      --  enabled)
      Tsoi_1)
     with Size => 1;
   for TCTRL0_TSOI_Field use
     (Tsoi_0 => 0,
      Tsoi_1 => 1);

   --  Timer Reload On Trigger
   type TCTRL0_TROT_Field is
     (
      --  Timer will not reload on selected trigger
      Trot_0,
      --  Timer will reload on selected trigger
      Trot_1)
     with Size => 1;
   for TCTRL0_TROT_Field use
     (Trot_0 => 0,
      Trot_1 => 1);

   --  Trigger Source
   type TCTRL0_TRG_SRC_Field is
     (
      --  Trigger source selected in external
      Trg_Src_0,
      --  Trigger source selected is the internal trigger
      Trg_Src_1)
     with Size => 1;
   for TCTRL0_TRG_SRC_Field use
     (Trg_Src_0 => 0,
      Trg_Src_1 => 1);

   --  Trigger Select
   type TCTRL0_TRG_SEL_Field is
     (
      --  Timer channel 0 trigger source is selected
      Trg_Sel_0,
      --  Timer channel 1 trigger source is selected
      Trg_Sel_1,
      --  Timer channel 2 trigger source is selected
      Trg_Sel_2)
     with Size => 4;
   for TCTRL0_TRG_SEL_Field use
     (Trg_Sel_0 => 0,
      Trg_Sel_1 => 1,
      Trg_Sel_2 => 2);

   --  Timer Control Register
   type TCTRL_Register is record
      --  Timer Enable
      T_EN           : TCTRL0_T_EN_Field := NRF_SVD.LPIT.T_En_0;
      --  Chain Channel
      CHAIN          : TCTRL0_CHAIN_Field := NRF_SVD.LPIT.Chain_0;
      --  Timer Operation Mode
      MODE           : TCTRL0_MODE_Field := NRF_SVD.LPIT.Mode_0;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Timer Start On Trigger
      TSOT           : TCTRL0_TSOT_Field := NRF_SVD.LPIT.Tsot_0;
      --  Timer Stop On Interrupt
      TSOI           : TCTRL0_TSOI_Field := NRF_SVD.LPIT.Tsoi_0;
      --  Timer Reload On Trigger
      TROT           : TCTRL0_TROT_Field := NRF_SVD.LPIT.Trot_0;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  Trigger Source
      TRG_SRC        : TCTRL0_TRG_SRC_Field := NRF_SVD.LPIT.Trg_Src_0;
      --  Trigger Select
      TRG_SEL        : TCTRL0_TRG_SEL_Field := NRF_SVD.LPIT.Trg_Sel_0;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCTRL_Register use record
      T_EN           at 0 range 0 .. 0;
      CHAIN          at 0 range 1 .. 1;
      MODE           at 0 range 2 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      TSOT           at 0 range 16 .. 16;
      TSOI           at 0 range 17 .. 17;
      TROT           at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      TRG_SRC        at 0 range 23 .. 23;
      TRG_SEL        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low Power Periodic Interrupt Timer (LPIT)
   type LPIT0_Peripheral is record
      --  Version ID Register
      VERID  : aliased LPIT0_VERID_Register;
      --  Parameter Register
      PARAM  : aliased LPIT0_PARAM_Register;
      --  Module Control Register
      MCR    : aliased LPIT0_MCR_Register;
      --  Module Status Register
      MSR    : aliased LPIT0_MSR_Register;
      --  Module Interrupt Enable Register
      MIER   : aliased LPIT0_MIER_Register;
      --  Set Timer Enable Register
      SETTEN : aliased LPIT0_SETTEN_Register;
      --  Clear Timer Enable Register
      CLRTEN : aliased LPIT0_CLRTEN_Register;
      --  Timer Value Register
      TVAL0  : aliased HAL.UInt32;
      --  Current Timer Value
      CVAL0  : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL0 : aliased TCTRL_Register;
      --  Timer Value Register
      TVAL1  : aliased HAL.UInt32;
      --  Current Timer Value
      CVAL1  : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL1 : aliased TCTRL_Register;
      --  Timer Value Register
      TVAL2  : aliased HAL.UInt32;
      --  Current Timer Value
      CVAL2  : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL2 : aliased TCTRL_Register;
      --  Timer Value Register
      TVAL3  : aliased HAL.UInt32;
      --  Current Timer Value
      CVAL3  : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL3 : aliased TCTRL_Register;
   end record
     with Volatile;

   for LPIT0_Peripheral use record
      VERID  at 16#0# range 0 .. 31;
      PARAM  at 16#4# range 0 .. 31;
      MCR    at 16#8# range 0 .. 31;
      MSR    at 16#C# range 0 .. 31;
      MIER   at 16#10# range 0 .. 31;
      SETTEN at 16#14# range 0 .. 31;
      CLRTEN at 16#18# range 0 .. 31;
      TVAL0  at 16#20# range 0 .. 31;
      CVAL0  at 16#24# range 0 .. 31;
      TCTRL0 at 16#28# range 0 .. 31;
      TVAL1  at 16#30# range 0 .. 31;
      CVAL1  at 16#34# range 0 .. 31;
      TCTRL1 at 16#38# range 0 .. 31;
      TVAL2  at 16#40# range 0 .. 31;
      CVAL2  at 16#44# range 0 .. 31;
      TCTRL2 at 16#48# range 0 .. 31;
      TVAL3  at 16#50# range 0 .. 31;
      CVAL3  at 16#54# range 0 .. 31;
      TCTRL3 at 16#58# range 0 .. 31;
   end record;

   --  Low Power Periodic Interrupt Timer (LPIT)
   LPIT0_Periph : aliased LPIT0_Peripheral
     with Import, Address => System'To_Address (16#40037000#);

end NRF_SVD.LPIT;
