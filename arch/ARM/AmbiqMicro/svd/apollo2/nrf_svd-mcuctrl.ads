--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  MCU Miscellaneous Control Logic
package NRF_SVD.MCUCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Minor Revision ID.
   type CHIPREV_REVMIN_Field is
     (
      --  Apollo2 minor revision value. value.
      Rev0)
     with Size => 4;
   for CHIPREV_REVMIN_Field use
     (Rev0 => 1);

   --  Major Revision ID.
   type CHIPREV_REVMAJ_Field is
     (
      --  Apollo2 revision A value.
      A,
      --  Apollo2 revision B value.
      B)
     with Size => 4;
   for CHIPREV_REVMAJ_Field use
     (A => 1,
      B => 2);

   --  Chip Revision
   type CHIPREV_Register is record
      --  Minor Revision ID.
      REVMIN        : CHIPREV_REVMIN_Field := NRF_SVD.MCUCTRL.Rev0;
      --  Major Revision ID.
      REVMAJ        : CHIPREV_REVMAJ_Field := NRF_SVD.MCUCTRL.A;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIPREV_Register use record
      REVMIN        at 0 range 0 .. 3;
      REVMAJ        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Debugger Access Control
   type DEBUGGER_Register is record
      --  Lockout of debugger (SWD).
      LOCKOUT       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGGER_Register use record
      LOCKOUT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Buck Register Software Override Enable. This will enable the override
   --  values for MEMBUCKPWD, COREBUCKPWD, COREBUCKRST, MEMBUCKRST, all to be
   --  propagated to the control logic, instead of the normal power control
   --  module signal. Note - Must take care to have correct value for ALL the
   --  register bits when this SWE is enabled.
   type BUCK_BUCKSWE_Field is
     (
      --  BUCK Software Override Disable. value.
      Override_Dis,
      --  BUCK Software Override Enable. value.
      Override_En)
     with Size => 1;
   for BUCK_BUCKSWE_Field use
     (Override_Dis => 0,
      Override_En => 1);

   --  Core buck power down override. 1=Powered Down; 0=Enabled; Value is
   --  propagated only when the BUCKSWE bit is active, otherwise control is
   --  from the power control module.
   type BUCK_COREBUCKPWD_Field is
     (
      --  Core Buck enable. value.
      En)
     with Size => 1;
   for BUCK_COREBUCKPWD_Field use
     (En => 0);

   --  Memory buck power down override. 1=Powered Down; 0=Enabled; Value is
   --  propagated only when the BUCKSWE bit is active, otherwise control is
   --  from the power control module.
   type BUCK_MEMBUCKPWD_Field is
     (
      --  Memory Buck Enable. value.
      En)
     with Size => 1;
   for BUCK_MEMBUCKPWD_Field use
     (En => 0);

   --  Analog Buck Control
   type BUCK_Register is record
      --  Buck Register Software Override Enable. This will enable the override
      --  values for MEMBUCKPWD, COREBUCKPWD, COREBUCKRST, MEMBUCKRST, all to
      --  be propagated to the control logic, instead of the normal power
      --  control module signal. Note - Must take care to have correct value
      --  for ALL the register bits when this SWE is enabled.
      BUCKSWE       : BUCK_BUCKSWE_Field := NRF_SVD.MCUCTRL.Override_Dis;
      --  Not used. Additional control of buck is available in the power
      --  control module
      BYPBUCKCORE   : Boolean := False;
      --  Core buck power down override. 1=Powered Down; 0=Enabled; Value is
      --  propagated only when the BUCKSWE bit is active, otherwise control is
      --  from the power control module.
      COREBUCKPWD   : BUCK_COREBUCKPWD_Field := NRF_SVD.MCUCTRL.En;
      --  HFRC clkgen bit 0 override. When set, this will override to 0 bit 0
      --  of the hfrc_freq_clkgen internal bus (see internal Shelby-1473)
      SLEEPBUCKANA  : Boolean := False;
      --  Memory buck power down override. 1=Powered Down; 0=Enabled; Value is
      --  propagated only when the BUCKSWE bit is active, otherwise control is
      --  from the power control module.
      MEMBUCKPWD    : BUCK_MEMBUCKPWD_Field := NRF_SVD.MCUCTRL.En;
      --  Not used. Additional control of buck is available in the power
      --  control module
      BYPBUCKMEM    : Boolean := False;
      --  Reset control override for Core Buck; 0=enabled, 1=reset; Value is
      --  propagated only when the BUCKSWE bit is active, otherwise control is
      --  from the power control module.
      COREBUCKRST   : Boolean := False;
      --  Reset control override for Mem Buck; 0=enabled, 1=reset; Value is
      --  propagated only when the BUCKSWE bit is active, otherwise contrl is
      --  from the power control module.
      MEMBUCKRST    : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUCK_Register use record
      BUCKSWE       at 0 range 0 .. 0;
      BYPBUCKCORE   at 0 range 1 .. 1;
      COREBUCKPWD   at 0 range 2 .. 2;
      SLEEPBUCKANA  at 0 range 3 .. 3;
      MEMBUCKPWD    at 0 range 4 .. 4;
      BYPBUCKMEM    at 0 range 5 .. 5;
      COREBUCKRST   at 0 range 6 .. 6;
      MEMBUCKRST    at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BUCK2_BCORETONSEL_Field is HAL.UInt4;
   subtype BUCK2_BMEMTONSEL_Field is HAL.UInt4;

   --  Enable/disable hysteresis on memory buck converters internal
   --  comparators.
   type BUCK2_HYSTBUCKMEM_Field is
     (
      --  Disable hysteresis on memory buck converters internal comparators.
      --  value.
      Dis,
      --  Enable hysteresis on memory buck converters internal comparators.
      --  value.
      En)
     with Size => 1;
   for BUCK2_HYSTBUCKMEM_Field use
     (Dis => 0,
      En => 1);

   --  Enable/disable hysteresis on core buck converters internal comparators.
   type BUCK2_HYSTBUCKCORE_Field is
     (
      --  Disable hysteresis on core buck converters internal comparators.
      --  value.
      Dis,
      --  Enable hysteresis on core buck converters internal comparators.
      --  value.
      En)
     with Size => 1;
   for BUCK2_HYSTBUCKCORE_Field use
     (Dis => 0,
      En => 1);

   subtype BUCK2_BUCKLFCLKSEL_Field is HAL.UInt2;

   --  Buck Control Reg2
   type BUCK2_Register is record
      --  Core Buck low turn on trim
      BCORETONSEL    : BUCK2_BCORETONSEL_Field := 16#0#;
      --  Flash Buck high turn on trim
      BMEMTONSEL     : BUCK2_BMEMTONSEL_Field := 16#0#;
      --  Enable/disable hysteresis on memory buck converters internal
      --  comparators.
      HYSTBUCKMEM    : BUCK2_HYSTBUCKMEM_Field := NRF_SVD.MCUCTRL.Dis;
      --  Enable/disable hysteresis on core buck converters internal
      --  comparators.
      HYSTBUCKCORE   : BUCK2_HYSTBUCKCORE_Field := NRF_SVD.MCUCTRL.Dis;
      --  Buck clkgen divider trim. 00 = 1.5MHz; 01 = 750kHz; 10 = 375kHz; 11 =
      --  187.5kHz
      BUCKLFCLKSEL   : BUCK2_BUCKLFCLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUCK2_Register use record
      BCORETONSEL    at 0 range 0 .. 3;
      BMEMTONSEL     at 0 range 4 .. 7;
      HYSTBUCKMEM    at 0 range 8 .. 8;
      HYSTBUCKCORE   at 0 range 9 .. 9;
      BUCKLFCLKSEL   at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype BUCK3_COREBUCKHYSTTRIM_Field is HAL.UInt2;
   subtype BUCK3_COREBUCKZXTRIM_Field is HAL.UInt4;
   subtype BUCK3_COREBUCKLOTON_Field is HAL.UInt4;
   subtype BUCK3_MEMBUCKHYSTTRIM_Field is HAL.UInt2;
   subtype BUCK3_MEMBUCKZXTRIM_Field is HAL.UInt4;
   subtype BUCK3_MEMBUCKLOTON_Field is HAL.UInt4;

   --  Buck control reg 3
   type BUCK3_Register is record
      --  Hysterisis trim for core buck
      COREBUCKHYSTTRIM : BUCK3_COREBUCKHYSTTRIM_Field := 16#0#;
      --  Core buck zero crossing trim value
      COREBUCKZXTRIM   : BUCK3_COREBUCKZXTRIM_Field := 16#0#;
      --  Core Buck burst enable. 0=disabled, 1=enabled
      COREBUCKBURSTEN  : Boolean := False;
      --  Core Buck low TON trim value
      COREBUCKLOTON    : BUCK3_COREBUCKLOTON_Field := 16#0#;
      --  Hysterisis trim for mem buck
      MEMBUCKHYSTTRIM  : BUCK3_MEMBUCKHYSTTRIM_Field := 16#0#;
      --  Memory buck zero crossing trim value
      MEMBUCKZXTRIM    : BUCK3_MEMBUCKZXTRIM_Field := 16#0#;
      --  MEM Buck burst enable 0=disable, 0=disabled, 1=enable.
      MEMBUCKBURSTEN   : Boolean := False;
      --  MEM Buck low TON trim value
      MEMBUCKLOTON     : BUCK3_MEMBUCKLOTON_Field := 16#0#;
      --  unspecified
      Reserved_22_31   : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUCK3_Register use record
      COREBUCKHYSTTRIM at 0 range 0 .. 1;
      COREBUCKZXTRIM   at 0 range 2 .. 5;
      COREBUCKBURSTEN  at 0 range 6 .. 6;
      COREBUCKLOTON    at 0 range 7 .. 10;
      MEMBUCKHYSTTRIM  at 0 range 11 .. 12;
      MEMBUCKZXTRIM    at 0 range 13 .. 16;
      MEMBUCKBURSTEN   at 0 range 17 .. 17;
      MEMBUCKLOTON     at 0 range 18 .. 21;
      Reserved_22_31   at 0 range 22 .. 31;
   end record;

   subtype LDOREG1_TRIMCORELDOR1_Field is HAL.UInt10;
   subtype LDOREG1_TRIMCORELDOR3_Field is HAL.UInt4;
   subtype LDOREG1_CORELDOLPTRIM_Field is HAL.UInt6;

   --  Analog LDO Reg 1
   type LDOREG1_Register is record
      --  CORE LDO Active mode ouput trim (R1).
      TRIMCORELDOR1  : LDOREG1_TRIMCORELDOR1_Field := 16#0#;
      --  CORE LDO tempco trim (R3).
      TRIMCORELDOR3  : LDOREG1_TRIMCORELDOR3_Field := 16#0#;
      --  CORE LDO Low Power Trim
      CORELDOLPTRIM  : LDOREG1_CORELDOLPTRIM_Field := 16#0#;
      --  CORE LDO IBIAS Trim
      CORELDOIBSTRM  : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LDOREG1_Register use record
      TRIMCORELDOR1  at 0 range 0 .. 9;
      TRIMCORELDOR3  at 0 range 10 .. 13;
      CORELDOLPTRIM  at 0 range 14 .. 19;
      CORELDOIBSTRM  at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  LDO2 Software Override Enable. If enabled (=1), this will enable the
   --  override values from this register to be used instead of the normal
   --  control signals for the following fields: CORELDOVDDLEN, RAMLDOLPMODE,
   --  PWDRAMLDO, PWDANALDO, PWDMEMLDO, PWDCORELDO, SLEEPANALDO, SLEEPMEMLDO,
   --  SLEEPCORELDO.
   type LDOREG2_LDO2SWE_Field is
     (
      --  LDO2 Software Override Disable. value.
      Override_Dis,
      --  LDO2 Software Override Enable. value.
      Override_En)
     with Size => 1;
   for LDOREG2_LDO2SWE_Field use
     (Override_Dis => 0,
      Override_En => 1);

   subtype LDOREG2_RAMLDOTRIM_Field is HAL.UInt5;
   subtype LDOREG2_TRIMANALDO_Field is HAL.UInt4;

   --  CORE LDO Sleep. This value is propagated only when LDO2SWE bit is
   --  active(1).
   type LDOREG2_SLEEPCORELDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Sleepcoreldo_Field_Reset,
      --  Core LDO sleep. value.
      Sleep)
     with Size => 1;
   for LDOREG2_SLEEPCORELDO_Field use
     (Ldoreg2_Sleepcoreldo_Field_Reset => 0,
      Sleep => 1);

   --  FLASH LDO Sleep. This value is propagated only when LDO2SWE bit is
   --  active(1).
   type LDOREG2_SLEEPMEMLDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Sleepmemldo_Field_Reset,
      --  SRAM LDO sleep. value.
      Sleep)
     with Size => 1;
   for LDOREG2_SLEEPMEMLDO_Field use
     (Ldoreg2_Sleepmemldo_Field_Reset => 0,
      Sleep => 1);

   --  Analog LDO Sleep. This value is propagated only when LDO2SWE bit is
   --  active(1).
   type LDOREG2_SLEEPANALDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Sleepanaldo_Field_Reset,
      --  Analog LDO sleep. value.
      Sleep)
     with Size => 1;
   for LDOREG2_SLEEPANALDO_Field use
     (Ldoreg2_Sleepanaldo_Field_Reset => 0,
      Sleep => 1);

   --  CORE LDO Power Down. This value is propagated only when LDO2SWE bit is
   --  active(1).
   type LDOREG2_PWDCORELDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Pwdcoreldo_Field_Reset,
      --  Power down Core LDO. value.
      Pwr_Dn)
     with Size => 1;
   for LDOREG2_PWDCORELDO_Field use
     (Ldoreg2_Pwdcoreldo_Field_Reset => 0,
      Pwr_Dn => 1);

   --  MEM LDO Power Down. This value is propagated only when LDO2SWE bit is
   --  active(1).
   type LDOREG2_PWDMEMLDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Pwdmemldo_Field_Reset,
      --  Power down Flash LDO. value.
      Pwr_Dn)
     with Size => 1;
   for LDOREG2_PWDMEMLDO_Field use
     (Ldoreg2_Pwdmemldo_Field_Reset => 0,
      Pwr_Dn => 1);

   --  Analog LDO Power Down. This value is propagated only when LDO2SWE bit is
   --  active(1).
   type LDOREG2_PWDANALDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Pwdanaldo_Field_Reset,
      --  Power down Analog LDO. value.
      Pwr_Dn)
     with Size => 1;
   for LDOREG2_PWDANALDO_Field use
     (Ldoreg2_Pwdanaldo_Field_Reset => 0,
      Pwr_Dn => 1);

   --  RAM LDO Power Down. 0=powered up, 1=powered down ; This value is
   --  propagated only when LDO2SWE bit is active(1).
   type LDOREG2_PWDRAMLDO_Field is
     (
      --  Reset value for the field
      Ldoreg2_Pwdramldo_Field_Reset,
      --  Power down RAM LDO. value.
      Pwr_Dn)
     with Size => 1;
   for LDOREG2_PWDRAMLDO_Field use
     (Ldoreg2_Pwdramldo_Field_Reset => 0,
      Pwr_Dn => 1);

   --  RAM LDO LP Mode. 0=normal mode, 1=low power mode; This value is
   --  propagated only when LDO2SWE bit is active(1).
   type LDOREG2_RAMLDOLPMODE_Field is
     (
      --  Reset value for the field
      Ldoreg2_Ramldolpmode_Field_Reset,
      --  RAM IN LP mode value.
      Lpmode)
     with Size => 1;
   for LDOREG2_RAMLDOLPMODE_Field use
     (Ldoreg2_Ramldolpmode_Field_Reset => 0,
      Lpmode => 1);

   --  LDO Control Register 2
   type LDOREG2_Register is record
      --  LDO2 Software Override Enable. If enabled (=1), this will enable the
      --  override values from this register to be used instead of the normal
      --  control signals for the following fields: CORELDOVDDLEN,
      --  RAMLDOLPMODE, PWDRAMLDO, PWDANALDO, PWDMEMLDO, PWDCORELDO,
      --  SLEEPANALDO, SLEEPMEMLDO, SLEEPCORELDO.
      LDO2SWE         : LDOREG2_LDO2SWE_Field := NRF_SVD.MCUCTRL.Override_Dis;
      --  RAM LDO TRIM
      RAMLDOTRIM      : LDOREG2_RAMLDOTRIM_Field := 16#0#;
      --  Analog LDO Trim.
      TRIMANALDO      : LDOREG2_TRIMANALDO_Field := 16#0#;
      --  CONTROL BIT IS NOT USED. PLEASE TREAT AS RESERVED
      VREFSELCORELDO  : Boolean := False;
      --  CONTROL BIT IS NOT USED. PLEASE TREAT AS RESERVED
      VREFSELFLASHLDO : Boolean := False;
      --  CONTROL BIT IS NOT USED. PLEASE TREAT AS RESERVED
      VREFSELSRAMLDO  : Boolean := False;
      --  CONTROL BIT IS NOT USED. PLEASE TREAT AS RESERVED
      VREFSELANALDO   : Boolean := False;
      --  CORE LDO Sleep. This value is propagated only when LDO2SWE bit is
      --  active(1).
      SLEEPCORELDO    : LDOREG2_SLEEPCORELDO_Field :=
                         Ldoreg2_Sleepcoreldo_Field_Reset;
      --  FLASH LDO Sleep. This value is propagated only when LDO2SWE bit is
      --  active(1).
      SLEEPMEMLDO     : LDOREG2_SLEEPMEMLDO_Field :=
                         Ldoreg2_Sleepmemldo_Field_Reset;
      --  Analog LDO Sleep. This value is propagated only when LDO2SWE bit is
      --  active(1).
      SLEEPANALDO     : LDOREG2_SLEEPANALDO_Field :=
                         Ldoreg2_Sleepanaldo_Field_Reset;
      --  CORE LDO Power Down. This value is propagated only when LDO2SWE bit
      --  is active(1).
      PWDCORELDO      : LDOREG2_PWDCORELDO_Field :=
                         Ldoreg2_Pwdcoreldo_Field_Reset;
      --  MEM LDO Power Down. This value is propagated only when LDO2SWE bit is
      --  active(1).
      PWDMEMLDO       : LDOREG2_PWDMEMLDO_Field :=
                         Ldoreg2_Pwdmemldo_Field_Reset;
      --  Analog LDO Power Down. This value is propagated only when LDO2SWE bit
      --  is active(1).
      PWDANALDO       : LDOREG2_PWDANALDO_Field :=
                         Ldoreg2_Pwdanaldo_Field_Reset;
      --  RAM LDO Power Down. 0=powered up, 1=powered down ; This value is
      --  propagated only when LDO2SWE bit is active(1).
      PWDRAMLDO       : LDOREG2_PWDRAMLDO_Field :=
                         Ldoreg2_Pwdramldo_Field_Reset;
      --  RAM LDO LP Mode. 0=normal mode, 1=low power mode; This value is
      --  propagated only when LDO2SWE bit is active(1).
      RAMLDOLPMODE    : LDOREG2_RAMLDOLPMODE_Field :=
                         Ldoreg2_Ramldolpmode_Field_Reset;
      --  Core LDO output enable. 0=Hi-Z, 1=enable. This value is propagated
      --  only when LDO2SWE bit is active(1).
      CORELDOVDDLEN   : Boolean := False;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LDOREG2_Register use record
      LDO2SWE         at 0 range 0 .. 0;
      RAMLDOTRIM      at 0 range 1 .. 5;
      TRIMANALDO      at 0 range 6 .. 9;
      VREFSELCORELDO  at 0 range 10 .. 10;
      VREFSELFLASHLDO at 0 range 11 .. 11;
      VREFSELSRAMLDO  at 0 range 12 .. 12;
      VREFSELANALDO   at 0 range 13 .. 13;
      SLEEPCORELDO    at 0 range 14 .. 14;
      SLEEPMEMLDO     at 0 range 15 .. 15;
      SLEEPANALDO     at 0 range 16 .. 16;
      PWDCORELDO      at 0 range 17 .. 17;
      PWDMEMLDO       at 0 range 18 .. 18;
      PWDANALDO       at 0 range 19 .. 19;
      PWDRAMLDO       at 0 range 20 .. 20;
      RAMLDOLPMODE    at 0 range 21 .. 21;
      CORELDOVDDLEN   at 0 range 22 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   subtype LDOREG3_MEMLDOLPTRIM_Field is HAL.UInt6;
   subtype LDOREG3_MEMLDOLPALTTRIM_Field is HAL.UInt6;
   subtype LDOREG3_TRIMMEMLDOR1_Field is HAL.UInt6;

   --  LDO Control Register 3
   type LDOREG3_Register is record
      --  MEM LDO TRIM for low power mode with ADC inactive
      MEMLDOLPTRIM    : LDOREG3_MEMLDOLPTRIM_Field := 16#0#;
      --  MEM LDO TRIM for low power mode with ADC active
      MEMLDOLPALTTRIM : LDOREG3_MEMLDOLPALTTRIM_Field := 16#0#;
      --  MEM LDO active mode trim (R1).
      TRIMMEMLDOR1    : LDOREG3_TRIMMEMLDOR1_Field := 16#0#;
      --  unspecified
      Reserved_18_31  : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LDOREG3_Register use record
      MEMLDOLPTRIM    at 0 range 0 .. 5;
      MEMLDOLPALTTRIM at 0 range 6 .. 11;
      TRIMMEMLDOR1    at 0 range 12 .. 17;
      Reserved_18_31  at 0 range 18 .. 31;
   end record;

   --  PDR Power Down.
   type BODPORCTRL_PWDPDR_Field is
     (
      --  Reset value for the field
      Bodporctrl_Pwdpdr_Field_Reset,
      --  PDR power down value.
      Pwr_Dn)
     with Size => 1;
   for BODPORCTRL_PWDPDR_Field use
     (Bodporctrl_Pwdpdr_Field_Reset => 0,
      Pwr_Dn => 1);

   --  BOD Power Down.
   type BODPORCTRL_PWDBOD_Field is
     (
      --  Reset value for the field
      Bodporctrl_Pwdbod_Field_Reset,
      --  BOD power down. value.
      Pwr_Dn)
     with Size => 1;
   for BODPORCTRL_PWDBOD_Field use
     (Bodporctrl_Pwdbod_Field_Reset => 0,
      Pwr_Dn => 1);

   --  PDR External Reference Select.
   type BODPORCTRL_PDREXTREFSEL_Field is
     (
      --  Reset value for the field
      Bodporctrl_Pdrextrefsel_Field_Reset,
      --  PDR external reference select. value.
      Select_k)
     with Size => 1;
   for BODPORCTRL_PDREXTREFSEL_Field use
     (Bodporctrl_Pdrextrefsel_Field_Reset => 0,
      Select_k => 1);

   --  BOD External Reference Select.
   type BODPORCTRL_BODEXTREFSEL_Field is
     (
      --  Reset value for the field
      Bodporctrl_Bodextrefsel_Field_Reset,
      --  BOD external reference select. value.
      Select_k)
     with Size => 1;
   for BODPORCTRL_BODEXTREFSEL_Field use
     (Bodporctrl_Bodextrefsel_Field_Reset => 0,
      Select_k => 1);

   --  BOD and PDR control Register
   type BODPORCTRL_Register is record
      --  PDR Power Down.
      PWDPDR        : BODPORCTRL_PWDPDR_Field :=
                       Bodporctrl_Pwdpdr_Field_Reset;
      --  BOD Power Down.
      PWDBOD        : BODPORCTRL_PWDBOD_Field :=
                       Bodporctrl_Pwdbod_Field_Reset;
      --  PDR External Reference Select.
      PDREXTREFSEL  : BODPORCTRL_PDREXTREFSEL_Field :=
                       Bodporctrl_Pdrextrefsel_Field_Reset;
      --  BOD External Reference Select.
      BODEXTREFSEL  : BODPORCTRL_BODEXTREFSEL_Field :=
                       Bodporctrl_Bodextrefsel_Field_Reset;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BODPORCTRL_Register use record
      PWDPDR        at 0 range 0 .. 0;
      PWDBOD        at 0 range 1 .. 1;
      PDREXTREFSEL  at 0 range 2 .. 2;
      BODEXTREFSEL  at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  ADCPWRDLY_ADCPWR array element
   subtype ADCPWRDLY_ADCPWR_Element is HAL.UInt8;

   --  ADCPWRDLY_ADCPWR array
   type ADCPWRDLY_ADCPWR_Field_Array is array (0 .. 1)
     of ADCPWRDLY_ADCPWR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ADCPWRDLY_ADCPWR
   type ADCPWRDLY_ADCPWR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADCPWR as a value
            Val : HAL.UInt16;
         when True =>
            --  ADCPWR as an array
            Arr : ADCPWRDLY_ADCPWR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ADCPWRDLY_ADCPWR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ADC Power Up Delay Control
   type ADCPWRDLY_Register is record
      --  ADC Reference Buffer Power Enable delay in 64 ADC CLK increments for
      --  ADC_CLKSEL = 0x1, 32 ADC CLOCK increments for ADC_CLKSEL = 0x2.
      ADCPWR         : ADCPWRDLY_ADCPWR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCPWRDLY_Register use record
      ADCPWR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Run ADC Calibration on initial power up sequence
   type ADCCAL_CALONPWRUP_Field is
     (
      --  Disable automatic calibration on initial power up value.
      Dis,
      --  Enable automatic calibration on initial power up value.
      En)
     with Size => 1;
   for ADCCAL_CALONPWRUP_Field use
     (Dis => 0,
      En => 1);

   --  Status for ADC Calibration
   type ADCCAL_ADCCALIBRATED_Field is
     (
      --  ADC is not calibrated value.
      False,
      --  ADC is calibrated value.
      True)
     with Size => 1;
   for ADCCAL_ADCCALIBRATED_Field use
     (False => 0,
      True => 1);

   --  ADC Calibration Control
   type ADCCAL_Register is record
      --  Run ADC Calibration on initial power up sequence
      CALONPWRUP    : ADCCAL_CALONPWRUP_Field := NRF_SVD.MCUCTRL.En;
      --  Status for ADC Calibration
      ADCCALIBRATED : ADCCAL_ADCCALIBRATED_Field := NRF_SVD.MCUCTRL.False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCAL_Register use record
      CALONPWRUP    at 0 range 0 .. 0;
      ADCCALIBRATED at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable the ADC battery load resistor
   type ADCBATTLOAD_BATTLOAD_Field is
     (
      --  Battery load is disconnected value.
      Dis,
      --  Battery load is enabled value.
      En)
     with Size => 1;
   for ADCBATTLOAD_BATTLOAD_Field use
     (Dis => 0,
      En => 1);

   --  ADC Battery Load Enable
   type ADCBATTLOAD_Register is record
      --  Enable the ADC battery load resistor
      BATTLOAD      : ADCBATTLOAD_BATTLOAD_Field := NRF_SVD.MCUCTRL.Dis;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCBATTLOAD_Register use record
      BATTLOAD      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype BUCKTRIM_MEMBUCKR1_Field is HAL.UInt6;
   subtype BUCKTRIM_COREBUCKR1_LO_Field is HAL.UInt6;
   subtype BUCKTRIM_COREBUCKR1_HI_Field is HAL.UInt4;
   subtype BUCKTRIM_RSVD2_Field is HAL.UInt6;

   --  Trim settings for Core and Mem buck modules
   type BUCKTRIM_Register is record
      --  Trim values for BUCK regulator.
      MEMBUCKR1      : BUCKTRIM_MEMBUCKR1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Core Buck voltage output trim bits[5:0], Concatenate with field
      --  COREBUCKR1_HI for the full trim value.
      COREBUCKR1_LO  : BUCKTRIM_COREBUCKR1_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Core Buck voltage output trim bits[9:6]. Concatenate with field
      --  COREBUCKR1_LO for the full trim value.
      COREBUCKR1_HI  : BUCKTRIM_COREBUCKR1_HI_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  RESERVED.
      RSVD2          : BUCKTRIM_RSVD2_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUCKTRIM_Register use record
      MEMBUCKR1      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      COREBUCKR1_LO  at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      COREBUCKR1_HI  at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RSVD2          at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ADCTRIM_ADCREFKEEPIBTRIM_Field is HAL.UInt2;
   subtype ADCTRIM_ADCREFBUFTRIM_Field is HAL.UInt5;
   subtype ADCTRIM_ADCRFBUFIBTRIM_Field is HAL.UInt2;

   --  ADC Trims
   type ADCTRIM_Register is record
      --  ADC Reference Ibias trim
      ADCREFKEEPIBTRIM : ADCTRIM_ADCREFKEEPIBTRIM_Field := 16#0#;
      --  unspecified
      Reserved_2_5     : HAL.UInt4 := 16#0#;
      --  ADC Reference buffer trim
      ADCREFBUFTRIM    : ADCTRIM_ADCREFBUFTRIM_Field := 16#0#;
      --  ADC reference buffer input bias trim
      ADCRFBUFIBTRIM   : ADCTRIM_ADCRFBUFIBTRIM_Field := 16#0#;
      --  unspecified
      Reserved_13_31   : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCTRIM_Register use record
      ADCREFKEEPIBTRIM at 0 range 0 .. 1;
      Reserved_2_5     at 0 range 2 .. 5;
      ADCREFBUFTRIM    at 0 range 6 .. 10;
      ADCRFBUFIBTRIM   at 0 range 11 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   subtype ADCREFCOMP_ADCREFKEEPTRIM_Field is HAL.UInt5;

   --  ADC Reference Keeper and Comparator Control
   type ADCREFCOMP_Register is record
      --  Output of the ADC reference comparator
      ADC_REFCOMP_OUT : Boolean := False;
      --  unspecified
      Reserved_1_7    : HAL.UInt7 := 16#0#;
      --  ADC Reference Keeper Trim
      ADCREFKEEPTRIM  : ADCREFCOMP_ADCREFKEEPTRIM_Field := 16#0#;
      --  unspecified
      Reserved_13_15  : HAL.UInt3 := 16#0#;
      --  ADC Reference comparator power down
      ADCRFCMPEN      : Boolean := False;
      --  unspecified
      Reserved_17_31  : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCREFCOMP_Register use record
      ADC_REFCOMP_OUT at 0 range 0 .. 0;
      Reserved_1_7    at 0 range 1 .. 7;
      ADCREFKEEPTRIM  at 0 range 8 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      ADCRFCMPEN      at 0 range 16 .. 16;
      Reserved_17_31  at 0 range 17 .. 31;
   end record;

   --  Auto-calibration delay control
   type XTALGENCTRL_ACWARMUP_Field is
     (
      --  Warmup period of 1-2 seconds value.
      XTALGENCTRL_ACWARMUP_Field_1Sec,
      --  Warmup period of 2-4 seconds value.
      XTALGENCTRL_ACWARMUP_Field_2Sec,
      --  Warmup period of 4-8 seconds value.
      XTALGENCTRL_ACWARMUP_Field_4Sec,
      --  Warmup period of 8-16 seconds value.
      XTALGENCTRL_ACWARMUP_Field_8Sec)
     with Size => 2;
   for XTALGENCTRL_ACWARMUP_Field use
     (XTALGENCTRL_ACWARMUP_Field_1Sec => 0,
      XTALGENCTRL_ACWARMUP_Field_2Sec => 1,
      XTALGENCTRL_ACWARMUP_Field_4Sec => 2,
      XTALGENCTRL_ACWARMUP_Field_8Sec => 3);

   subtype XTALGENCTRL_XTALBIASTRIM_Field is HAL.UInt6;
   subtype XTALGENCTRL_XTALKSBIASTRIM_Field is HAL.UInt6;

   --  XTAL Oscillator General Control
   type XTALGENCTRL_Register is record
      --  Auto-calibration delay control
      ACWARMUP       : XTALGENCTRL_ACWARMUP_Field :=
                        NRF_SVD.MCUCTRL.XTALGENCTRL_ACWARMUP_Field_1Sec;
      --  XTAL IBIAS trim
      XTALBIASTRIM   : XTALGENCTRL_XTALBIASTRIM_Field := 16#0#;
      --  XTAL IBIAS Kick start trim . This trim value is used during the
      --  startup process to enable a faster lock and is applied when the
      --  kickstart signal is active.
      XTALKSBIASTRIM : XTALGENCTRL_XTALKSBIASTRIM_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTALGENCTRL_Register use record
      ACWARMUP       at 0 range 0 .. 1;
      XTALBIASTRIM   at 0 range 2 .. 7;
      XTALKSBIASTRIM at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  XTAL External Clock Source Select.
   type EXTCLKSEL_EXT_XT_Field is
     (
      --  Select the internal XT clock source. value.
      Int,
      --  Select the external XT clock source. value.
      Ext)
     with Size => 1;
   for EXTCLKSEL_EXT_XT_Field use
     (Int => 0,
      Ext => 1);

   --  LFRC External Clock Source Select.
   type EXTCLKSEL_EXT_LF_Field is
     (
      --  Select the internal LFRC clock source. value.
      Int,
      --  Select the external LFRC clock source. value.
      Ext)
     with Size => 1;
   for EXTCLKSEL_EXT_LF_Field use
     (Int => 0,
      Ext => 1);

   --  HFRC External Clock Source Select.
   type EXTCLKSEL_EXT_HF_Field is
     (
      --  Select the internal HFRC clock source. value.
      Int,
      --  Select the external HFRC clock source. value.
      Ext)
     with Size => 1;
   for EXTCLKSEL_EXT_HF_Field use
     (Int => 0,
      Ext => 1);

   --  Source selection of LFRC, HFRC and XTAL clock sources
   type EXTCLKSEL_Register is record
      --  XTAL External Clock Source Select.
      EXT_XT        : EXTCLKSEL_EXT_XT_Field := NRF_SVD.MCUCTRL.Int;
      --  LFRC External Clock Source Select.
      EXT_LF        : EXTCLKSEL_EXT_LF_Field := NRF_SVD.MCUCTRL.Int;
      --  HFRC External Clock Source Select.
      EXT_HF        : EXTCLKSEL_EXT_HF_Field := NRF_SVD.MCUCTRL.Int;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTCLKSEL_Register use record
      EXT_XT        at 0 range 0 .. 0;
      EXT_LF        at 0 range 1 .. 1;
      EXT_HF        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Determines whether the bootloader code is visible at address 0x00000000
   --  or not.
   type BOOTLOADERLOW_VALUE_Field is
     (
      --  Bootloader code at 0x00000000. value.
      Addr0)
     with Size => 1;
   for BOOTLOADERLOW_VALUE_Field use
     (Addr0 => 1);

   --  Determines whether the bootloader code is visible at address 0x00000000
   type BOOTLOADERLOW_Register is record
      --  Determines whether the bootloader code is visible at address
      --  0x00000000 or not.
      VALUE         : BOOTLOADERLOW_VALUE_Field := NRF_SVD.MCUCTRL.Addr0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOOTLOADERLOW_Register use record
      VALUE         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Indicates whether the shadow registers contain valid data from the Flash
   --  Information Space.
   type SHADOWVALID_VALID_Field is
     (
      --  Flash information space contains valid data. value.
      Valid)
     with Size => 1;
   for SHADOWVALID_VALID_Field use
     (Valid => 1);

   --  Indicates whether the bootloader should sleep or deep sleep if no image
   --  loaded.
   type SHADOWVALID_BL_DSLEEP_Field is
     (
      --  Bootloader will go to deep sleep if no flash image loaded value.
      Deepsleep)
     with Size => 1;
   for SHADOWVALID_BL_DSLEEP_Field use
     (Deepsleep => 1);

   --  Register to indicate whether the shadow registers have been successfully
   --  loaded from the Flash Information Space.
   type SHADOWVALID_Register is record
      --  Indicates whether the shadow registers contain valid data from the
      --  Flash Information Space.
      VALID         : SHADOWVALID_VALID_Field := NRF_SVD.MCUCTRL.Valid;
      --  Indicates whether the bootloader should sleep or deep sleep if no
      --  image loaded.
      BL_DSLEEP     : SHADOWVALID_BL_DSLEEP_Field :=
                       NRF_SVD.MCUCTRL.Deepsleep;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHADOWVALID_Register use record
      VALID         at 0 range 0 .. 0;
      BL_DSLEEP     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  The ICODE Bus Decoder Fault Detected bit. When set, a fault has been
   --  detected, and the ICODEFAULTADDR register will contain the bus address
   --  which generated the fault.
   type FAULTSTATUS_ICODE_Field is
     (
      --  No ICODE fault has been detected. value.
      Nofault,
      --  ICODE fault detected. value.
      Fault)
     with Size => 1;
   for FAULTSTATUS_ICODE_Field use
     (Nofault => 0,
      Fault => 1);

   --  DCODE Bus Decoder Fault Detected bit. When set, a fault has been
   --  detected, and the DCODEFAULTADDR register will contain the bus address
   --  which generated the fault.
   type FAULTSTATUS_DCODE_Field is
     (
      --  No DCODE fault has been detected. value.
      Nofault,
      --  DCODE fault detected. value.
      Fault)
     with Size => 1;
   for FAULTSTATUS_DCODE_Field use
     (Nofault => 0,
      Fault => 1);

   --  SYS Bus Decoder Fault Detected bit. When set, a fault has been detected,
   --  and the SYSFAULTADDR register will contain the bus address which
   --  generated the fault.
   type FAULTSTATUS_SYS_Field is
     (
      --  No bus fault has been detected. value.
      Nofault,
      --  Bus fault detected. value.
      Fault)
     with Size => 1;
   for FAULTSTATUS_SYS_Field use
     (Nofault => 0,
      Fault => 1);

   --  Reflects the status of the bus decoders' fault detection. Any write to
   --  this register will clear all of the status bits within the register.
   type FAULTSTATUS_Register is record
      --  The ICODE Bus Decoder Fault Detected bit. When set, a fault has been
      --  detected, and the ICODEFAULTADDR register will contain the bus
      --  address which generated the fault.
      ICODE         : FAULTSTATUS_ICODE_Field := NRF_SVD.MCUCTRL.Nofault;
      --  DCODE Bus Decoder Fault Detected bit. When set, a fault has been
      --  detected, and the DCODEFAULTADDR register will contain the bus
      --  address which generated the fault.
      DCODE         : FAULTSTATUS_DCODE_Field := NRF_SVD.MCUCTRL.Nofault;
      --  SYS Bus Decoder Fault Detected bit. When set, a fault has been
      --  detected, and the SYSFAULTADDR register will contain the bus address
      --  which generated the fault.
      SYS           : FAULTSTATUS_SYS_Field := NRF_SVD.MCUCTRL.Nofault;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FAULTSTATUS_Register use record
      ICODE         at 0 range 0 .. 0;
      DCODE         at 0 range 1 .. 1;
      SYS           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Fault Capture Enable field. When set, the Fault Capture monitors are
   --  enabled and addresses which generate a hard fault are captured into the
   --  FAULTADDR registers.
   type FAULTCAPTUREEN_ENABLE_Field is
     (
      --  Disable fault capture. value.
      Dis,
      --  Enable fault capture. value.
      En)
     with Size => 1;
   for FAULTCAPTUREEN_ENABLE_Field use
     (Dis => 0,
      En => 1);

   --  Enable the fault capture registers
   type FAULTCAPTUREEN_Register is record
      --  Fault Capture Enable field. When set, the Fault Capture monitors are
      --  enabled and addresses which generate a hard fault are captured into
      --  the FAULTADDR registers.
      ENABLE        : FAULTCAPTUREEN_ENABLE_Field := NRF_SVD.MCUCTRL.Dis;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FAULTCAPTUREEN_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PMU Enable Control bit. When set, the MCU's PMU will place the MCU into
   --  the lowest power consuming Deep Sleep mode upon execution of a WFI
   --  instruction (dependent on the setting of the SLEEPDEEP bit in the ARM
   --  SCR register). When cleared, regardless of the requested sleep mode, the
   --  PMU will not enter the lowest power Deep Sleep mode, instead entering
   --  the Sleep mode.
   type PMUENABLE_ENABLE_Field is
     (
      --  Disable MCU power management. value.
      Dis,
      --  Enable MCU power management. value.
      En)
     with Size => 1;
   for PMUENABLE_ENABLE_Field use
     (Dis => 0,
      En => 1);

   --  Control bit to enable/disable the PMU
   type PMUENABLE_Register is record
      --  PMU Enable Control bit. When set, the MCU's PMU will place the MCU
      --  into the lowest power consuming Deep Sleep mode upon execution of a
      --  WFI instruction (dependent on the setting of the SLEEPDEEP bit in the
      --  ARM SCR register). When cleared, regardless of the requested sleep
      --  mode, the PMU will not enter the lowest power Deep Sleep mode,
      --  instead entering the Sleep mode.
      ENABLE        : PMUENABLE_ENABLE_Field := NRF_SVD.MCUCTRL.En;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMUENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  TPIU Enable field. When set, the ARM M4 TPIU is enabled and data can be
   --  streamed out of the MCU's SWO port using the ARM ITM and TPIU modules.
   type TPIUCTRL_ENABLE_Field is
     (
      --  Disable the TPIU. value.
      Dis,
      --  Enable the TPIU. value.
      En)
     with Size => 1;
   for TPIUCTRL_ENABLE_Field use
     (Dis => 0,
      En => 1);

   --  This field selects the frequency of the ARM M4 TPIU port.
   type TPIUCTRL_CLKSEL_Field is
     (
      --  Low power state. value.
      Low_Pwr,
      --  Selects HFRC divided by 2 as the source TPIU clk value.
      Hfrc_Div_2,
      --  Selects HFRC divided by 8 as the source TPIU clk value.
      Hfrc_Div_8,
      --  Selects HFRC divided by 16 as the source TPIU clk value.
      Hfrc_Div_16,
      --  Selects HFRC divided by 32 as the source TPIU clk value.
      Hfrc_Div_32)
     with Size => 3;
   for TPIUCTRL_CLKSEL_Field use
     (Low_Pwr => 0,
      Hfrc_Div_2 => 1,
      Hfrc_Div_8 => 2,
      Hfrc_Div_16 => 3,
      Hfrc_Div_32 => 4);

   --  TPIU Control Register. Determines the clock enable and frequency for the
   --  M4's TPIU interface.
   type TPIUCTRL_Register is record
      --  TPIU Enable field. When set, the ARM M4 TPIU is enabled and data can
      --  be streamed out of the MCU's SWO port using the ARM ITM and TPIU
      --  modules.
      ENABLE         : TPIUCTRL_ENABLE_Field := NRF_SVD.MCUCTRL.Dis;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  This field selects the frequency of the ARM M4 TPIU port.
      CLKSEL         : TPIUCTRL_CLKSEL_Field := NRF_SVD.MCUCTRL.Low_Pwr;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TPIUCTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CLKSEL         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MCU Miscellaneous Control Logic
   type MCUCTRL_Peripheral is record
      --  Chip Information Register
      CHIP_INFO      : aliased HAL.UInt32;
      --  Unique Chip ID 0
      CHIPID0        : aliased HAL.UInt32;
      --  Unique Chip ID 1
      CHIPID1        : aliased HAL.UInt32;
      --  Chip Revision
      CHIPREV        : aliased CHIPREV_Register;
      --  Unique Vendor ID
      VENDORID       : aliased HAL.UInt32;
      --  Debugger Access Control
      DEBUGGER       : aliased DEBUGGER_Register;
      --  Analog Buck Control
      BUCK           : aliased BUCK_Register;
      --  Buck Control Reg2
      BUCK2          : aliased BUCK2_Register;
      --  Buck control reg 3
      BUCK3          : aliased BUCK3_Register;
      --  Analog LDO Reg 1
      LDOREG1        : aliased LDOREG1_Register;
      --  LDO Control Register 2
      LDOREG2        : aliased LDOREG2_Register;
      --  LDO Control Register 3
      LDOREG3        : aliased LDOREG3_Register;
      --  BOD and PDR control Register
      BODPORCTRL     : aliased BODPORCTRL_Register;
      --  ADC Power Up Delay Control
      ADCPWRDLY      : aliased ADCPWRDLY_Register;
      --  ADC Calibration Control
      ADCCAL         : aliased ADCCAL_Register;
      --  ADC Battery Load Enable
      ADCBATTLOAD    : aliased ADCBATTLOAD_Register;
      --  Trim settings for Core and Mem buck modules
      BUCKTRIM       : aliased BUCKTRIM_Register;
      --  ADC Trims
      ADCTRIM        : aliased ADCTRIM_Register;
      --  ADC Reference Keeper and Comparator Control
      ADCREFCOMP     : aliased ADCREFCOMP_Register;
      --  XTAL Oscillator General Control
      XTALGENCTRL    : aliased XTALGENCTRL_Register;
      --  Source selection of LFRC, HFRC and XTAL clock sources
      EXTCLKSEL      : aliased EXTCLKSEL_Register;
      --  Determines whether the bootloader code is visible at address
      --  0x00000000
      BOOTLOADERLOW  : aliased BOOTLOADERLOW_Register;
      --  Register to indicate whether the shadow registers have been
      --  successfully loaded from the Flash Information Space.
      SHADOWVALID    : aliased SHADOWVALID_Register;
      --  ICODE bus address which was present when a bus fault occurred.
      ICODEFAULTADDR : aliased HAL.UInt32;
      --  DCODE bus address which was present when a bus fault occurred.
      DCODEFAULTADDR : aliased HAL.UInt32;
      --  System bus address which was present when a bus fault occurred.
      SYSFAULTADDR   : aliased HAL.UInt32;
      --  Reflects the status of the bus decoders' fault detection. Any write
      --  to this register will clear all of the status bits within the
      --  register.
      FAULTSTATUS    : aliased FAULTSTATUS_Register;
      --  Enable the fault capture registers
      FAULTCAPTUREEN : aliased FAULTCAPTUREEN_Register;
      --  Read-only debug register 1
      DBGR1          : aliased HAL.UInt32;
      --  Read-only debug register 2
      DBGR2          : aliased HAL.UInt32;
      --  Control bit to enable/disable the PMU
      PMUENABLE      : aliased PMUENABLE_Register;
      --  TPIU Control Register. Determines the clock enable and frequency for
      --  the M4's TPIU interface.
      TPIUCTRL       : aliased TPIUCTRL_Register;
      --  Key Register to enable the use of external clock selects via the
      --  EXTCLKSEL reg
      KEXTCLKSEL     : aliased HAL.UInt32;
   end record
     with Volatile;

   for MCUCTRL_Peripheral use record
      CHIP_INFO      at 16#0# range 0 .. 31;
      CHIPID0        at 16#4# range 0 .. 31;
      CHIPID1        at 16#8# range 0 .. 31;
      CHIPREV        at 16#C# range 0 .. 31;
      VENDORID       at 16#10# range 0 .. 31;
      DEBUGGER       at 16#14# range 0 .. 31;
      BUCK           at 16#60# range 0 .. 31;
      BUCK2          at 16#64# range 0 .. 31;
      BUCK3          at 16#68# range 0 .. 31;
      LDOREG1        at 16#80# range 0 .. 31;
      LDOREG2        at 16#84# range 0 .. 31;
      LDOREG3        at 16#88# range 0 .. 31;
      BODPORCTRL     at 16#100# range 0 .. 31;
      ADCPWRDLY      at 16#104# range 0 .. 31;
      ADCCAL         at 16#10C# range 0 .. 31;
      ADCBATTLOAD    at 16#110# range 0 .. 31;
      BUCKTRIM       at 16#114# range 0 .. 31;
      ADCTRIM        at 16#118# range 0 .. 31;
      ADCREFCOMP     at 16#11C# range 0 .. 31;
      XTALGENCTRL    at 16#124# range 0 .. 31;
      EXTCLKSEL      at 16#160# range 0 .. 31;
      BOOTLOADERLOW  at 16#1A0# range 0 .. 31;
      SHADOWVALID    at 16#1A4# range 0 .. 31;
      ICODEFAULTADDR at 16#1C0# range 0 .. 31;
      DCODEFAULTADDR at 16#1C4# range 0 .. 31;
      SYSFAULTADDR   at 16#1C8# range 0 .. 31;
      FAULTSTATUS    at 16#1CC# range 0 .. 31;
      FAULTCAPTUREEN at 16#1D0# range 0 .. 31;
      DBGR1          at 16#200# range 0 .. 31;
      DBGR2          at 16#204# range 0 .. 31;
      PMUENABLE      at 16#220# range 0 .. 31;
      TPIUCTRL       at 16#250# range 0 .. 31;
      KEXTCLKSEL     at 16#348# range 0 .. 31;
   end record;

   --  MCU Miscellaneous Control Logic
   MCUCTRL_Periph : aliased MCUCTRL_Peripheral
     with Import, Address => MCUCTRL_Base;

end NRF_SVD.MCUCTRL;
