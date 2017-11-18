--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CLKG0_OSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype KEY_VALUE_Field is HAL.UInt16;

   --  Key Protection for OSCCTRL
   type KEY_Register is record
      --  Write-only. Oscillator key
      VALUE          : KEY_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KEY_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTL_LFX_ROBUST_LD_Field is HAL.UInt2;

   --  Oscillator Control
   type CTL_Register is record
      --  32 kHz clock select mux
      LFCLK_MUX      : Boolean := False;
      --  High frequency internal oscillator enable
      HFOSC_EN       : Boolean := True;
      --  Low frequency crystal oscillator enable
      LFX_EN         : Boolean := False;
      --  High frequency crystal oscillator enable
      HFX_EN         : Boolean := False;
      --  Low frequency crystal oscillator Bypass
      LFX_BYP        : Boolean := False;
      --  LFXTAL clock monitor and Clock FAIL interrupt enable
      LFX_MON_EN     : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. Status of LFOSC oscillator
      LFOSC_OK       : Boolean := False;
      --  Read-only. Status of HFOSC oscillator
      HFOSC_OK       : Boolean := False;
      --  Read-only. Status of LFXTAL oscillator
      LFX_OK         : Boolean := False;
      --  Read-only. Status of HFXTAL oscillator
      HFX_OK         : Boolean := False;
      --  Enables automatic Switching of the LF Mux to LFOSC on LFXTAL Failure
      LFX_AUTSW_EN   : Boolean := False;
      --  Status of automatic switching of the LF Mux to LFOSC upon detection
      --  of LFXTAL failure
      LFX_AUTSW_STA  : Boolean := False;
      --  LFXTAL Mode select
      LFX_ROBUST_EN  : Boolean := False;
      --  LFXTAL Robust Mode Load select
      LFX_ROBUST_LD  : CTL_LFX_ROBUST_LD_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#3#;
      --  ROOT clock monitor and Clock FAIL interrupt enable
      ROOT_MON_EN    : Boolean := False;
      --  Enables automatic Switching of the Root clock to HFOSC on Root clock
      --  Failure
      ROOT_AUTSW_EN  : Boolean := False;
      --  Status of automatic switching of the Root clock to HFOSC upon
      --  detection of Root clock failure
      ROOT_AUTSW_STA : Boolean := False;
      --  unspecified
      Reserved_23_29 : HAL.UInt7 := 16#0#;
      --  Root clock (crystal clock) Not Stable
      ROOT_FAIL_STA  : Boolean := False;
      --  LF XTAL (crystal clock) Not Stable
      LFX_FAIL_STA   : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      LFCLK_MUX      at 0 range 0 .. 0;
      HFOSC_EN       at 0 range 1 .. 1;
      LFX_EN         at 0 range 2 .. 2;
      HFX_EN         at 0 range 3 .. 3;
      LFX_BYP        at 0 range 4 .. 4;
      LFX_MON_EN     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      LFOSC_OK       at 0 range 8 .. 8;
      HFOSC_OK       at 0 range 9 .. 9;
      LFX_OK         at 0 range 10 .. 10;
      HFX_OK         at 0 range 11 .. 11;
      LFX_AUTSW_EN   at 0 range 12 .. 12;
      LFX_AUTSW_STA  at 0 range 13 .. 13;
      LFX_ROBUST_EN  at 0 range 14 .. 14;
      LFX_ROBUST_LD  at 0 range 15 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      ROOT_MON_EN    at 0 range 20 .. 20;
      ROOT_AUTSW_EN  at 0 range 21 .. 21;
      ROOT_AUTSW_STA at 0 range 22 .. 22;
      Reserved_23_29 at 0 range 23 .. 29;
      ROOT_FAIL_STA  at 0 range 30 .. 30;
      LFX_FAIL_STA   at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clocking
   type CLKG0_OSC_Peripheral is record
      --  Key Protection for OSCCTRL
      KEY : aliased KEY_Register;
      --  Oscillator Control
      CTL : aliased CTL_Register;
   end record
     with Volatile;

   for CLKG0_OSC_Peripheral use record
      KEY at 16#C# range 0 .. 31;
      CTL at 16#10# range 0 .. 31;
   end record;

   --  Clocking
   CLKG0_OSC_Periph : aliased CLKG0_OSC_Peripheral
     with Import, Address => System'To_Address (16#4004C100#);

end NRF_SVD.CLKG0_OSC;
