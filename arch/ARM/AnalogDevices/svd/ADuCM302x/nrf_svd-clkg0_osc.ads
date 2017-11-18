--

--  This spec has been automatically generated from ADuCM302x.svd

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

   --  Key Protection for CLKG_OSC_CTL
   type KEY_Register is record
      --  Write-only. Oscillator K
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

   --  LFXTAL Not Stable
   type CTL_LFXTAL_MON_FAIL_STAT_Field is
     (
      --  LFXTAL is running fine
      Lfxtal_Running,
      --  LFXTAL is not running
      Lfxtal_Notrunning)
     with Size => 1;
   for CTL_LFXTAL_MON_FAIL_STAT_Field use
     (Lfxtal_Running => 0,
      Lfxtal_Notrunning => 1);

   --  Oscillator Control
   type CTL_Register is record
      --  32kHz Clock Select Mux
      LFCLKMUX             : Boolean := False;
      --  High Frequency Internal Oscillator Enable
      HFOSCEN              : Boolean := True;
      --  Low Frequency Crystal Oscillator Enable
      LFXTALEN             : Boolean := False;
      --  High Frequency Crystal Oscillator Enable
      HFXTALEN             : Boolean := False;
      --  Low Frequency Crystal Oscillator Bypass
      LFXTAL_BYPASS        : Boolean := False;
      --  LFXTAL Clock Monitor and Clock Fail Interrupt Enable
      LFXTAL_MON_EN        : Boolean := False;
      --  unspecified
      Reserved_6_7         : HAL.UInt2 := 16#0#;
      --  Read-only. Status of LFOSC Oscillator
      LFOSCOK              : Boolean := False;
      --  Read-only. Status of HFOSC
      HFOSCOK              : Boolean := False;
      --  Read-only. Status of LFXTAL Oscillator
      LFXTALOK             : Boolean := False;
      --  Read-only. Status of HFXTAL Oscillator
      HFXTALOK             : Boolean := False;
      --  unspecified
      Reserved_12_30       : HAL.UInt19 := 16#0#;
      --  LFXTAL Not Stable
      LFXTAL_MON_FAIL_STAT : CTL_LFXTAL_MON_FAIL_STAT_Field :=
                              NRF_SVD.CLKG0_OSC.Lfxtal_Running;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      LFCLKMUX             at 0 range 0 .. 0;
      HFOSCEN              at 0 range 1 .. 1;
      LFXTALEN             at 0 range 2 .. 2;
      HFXTALEN             at 0 range 3 .. 3;
      LFXTAL_BYPASS        at 0 range 4 .. 4;
      LFXTAL_MON_EN        at 0 range 5 .. 5;
      Reserved_6_7         at 0 range 6 .. 7;
      LFOSCOK              at 0 range 8 .. 8;
      HFOSCOK              at 0 range 9 .. 9;
      LFXTALOK             at 0 range 10 .. 10;
      HFXTALOK             at 0 range 11 .. 11;
      Reserved_12_30       at 0 range 12 .. 30;
      LFXTAL_MON_FAIL_STAT at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clocking
   type CLKG0_OSC_Peripheral is record
      --  Key Protection for CLKG_OSC_CTL
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
