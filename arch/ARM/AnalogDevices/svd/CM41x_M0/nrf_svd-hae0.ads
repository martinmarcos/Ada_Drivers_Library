--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.HAE0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Run Register
   type RUN_Register is record
      --  Run/Stop
      RUN           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RUN_Register use record
      RUN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Configuration 0 Register
   type CFG0_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Line Frequency Select
      LFREQ         : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Read-only. Clear Parity Status
      CLR_PERR      : Boolean := False;
      --  Parity Enable
      PERR_EN       : Boolean := False;
      --  Transmit IRQ Enable
      TXIRQEN       : Boolean := False;
      --  Receive IRQ Enable
      RXIRQEN       : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG0_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFREQ         at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CLR_PERR      at 0 range 4 .. 4;
      PERR_EN       at 0 range 5 .. 5;
      TXIRQEN       at 0 range 6 .. 6;
      RXIRQEN       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFG1_STARTDIV_Field is HAL.UInt15;

   --  Configuration 1 Register
   type CFG1_Register is record
      --  Start (Clock) Divider
      STARTDIV       : CFG1_STARTDIV_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG1_Register use record
      STARTDIV       at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype CFG2_SETTLE_Field is HAL.UInt2;
   subtype CFG2_UPDATE_Field is HAL.UInt3;

   --  Configuration 2 Register
   type CFG2_Register is record
      --  (Results) Mode Select
      MODE          : Boolean := False;
      --  Settle Period Select
      SETTLE        : CFG2_SETTLE_Field := 16#0#;
      --  Update Rate Select
      UPDATE        : CFG2_UPDATE_Field := 16#0#;
      --  Enable Clock
      EN            : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG2_Register use record
      MODE          at 0 range 0 .. 0;
      SETTLE        at 0 range 1 .. 2;
      UPDATE        at 0 range 3 .. 5;
      EN            at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CFG3_CHANEN_Field is HAL.UInt13;

   --  Configuration 3 Register
   type CFG3_Register is record
      --  Channel n Enable
      CHANEN         : CFG3_CHANEN_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG3_Register use record
      CHANEN         at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Status Register
   type STAT_Register is record
      --  Transmit IRQ Status
      TXIRQ         : Boolean := False;
      --  Receive IRQ Status
      RXIRQ         : Boolean := False;
      --  Read-only. Ready Status
      RDY           : Boolean := False;
      --  Read-only. Parity Error Status
      PERR_STAT     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      TXIRQ         at 0 range 0 .. 0;
      RXIRQ         at 0 range 1 .. 1;
      RDY           at 0 range 2 .. 2;
      PERR_STAT     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ISAMPLE_VALUE_Field is HAL.UInt24;

   --  I (Current) Sample Register
   type ISAMPLE_Register is record
      --  Current Input Sample
      VALUE          : ISAMPLE_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISAMPLE_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype VSAMPLE_VALUE_Field is HAL.UInt24;

   --  V (Voltage) Sample Register
   type VSAMPLE_Register is record
      --  Voltage Input Sample
      VALUE          : VSAMPLE_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VSAMPLE_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype IWAVEFORM_VALUE_Field is HAL.UInt24;

   --  I (Current) Waveform Register
   type IWAVEFORM_Register is record
      --  Read-only. Current Waveform
      VALUE          : IWAVEFORM_VALUE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWAVEFORM_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype VWAVEFORM_VALUE_Field is HAL.UInt24;

   --  V (Voltage) Waveform Register
   type VWAVEFORM_Register is record
      --  Read-only. Voltage Waveform
      VALUE          : VWAVEFORM_VALUE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VWAVEFORM_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Configuration 4 Register
   type CFG4_Register is record
      --  High-Pass Filter Enable
      HPFEN         : Boolean := False;
      --  di/dt (Sensor) Enable
      DIDTEN        : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG4_Register use record
      HPFEN         at 0 range 0 .. 0;
      DIDTEN        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DIDT_GAIN_VALUE_Field is HAL.UInt28;

   --  DIDT Gain Register
   type DIDT_GAIN_Register is record
      --  di/dt Sensor Gain
      VALUE          : DIDT_GAIN_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIDT_GAIN_Register use record
      VALUE          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DIDT_COEF_VALUE_Field is HAL.UInt28;

   --  DIDT Coefficient Register
   type DIDT_COEF_Register is record
      --  di/dt Coefficient
      VALUE          : DIDT_COEF_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIDT_COEF_Register use record
      VALUE          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype VLEVEL_VALUE_Field is HAL.UInt28;

   --  Voltage Level Register
   type VLEVEL_Register is record
      --  Voltage Input Level
      VALUE          : VLEVEL_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VLEVEL_Register use record
      VALUE          at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype H_INDX_VALUE_Field is HAL.UInt6;

   --  Harmonic n Index Register
   type H_INDX_Register is record
      --  Harmonic n Index
      VALUE         : H_INDX_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for H_INDX_Register use record
      VALUE         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Harmonic n Index Register
   type H_INDX_Registers is array (0 .. 11) of H_INDX_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Harmonic Analysis Engine
   type HAE0_Peripheral is record
      --  Run Register
      RUN       : aliased RUN_Register;
      --  Configuration 0 Register
      CFG0      : aliased CFG0_Register;
      --  Configuration 1 Register
      CFG1      : aliased CFG1_Register;
      --  Configuration 2 Register
      CFG2      : aliased CFG2_Register;
      --  Configuration 3 Register
      CFG3      : aliased CFG3_Register;
      --  Status Register
      STAT      : aliased STAT_Register;
      --  I (Current) Sample Register
      ISAMPLE   : aliased ISAMPLE_Register;
      --  V (Voltage) Sample Register
      VSAMPLE   : aliased VSAMPLE_Register;
      --  I (Current) Waveform Register
      IWAVEFORM : aliased IWAVEFORM_Register;
      --  V (Voltage) Waveform Register
      VWAVEFORM : aliased VWAVEFORM_Register;
      --  Configuration 4 Register
      CFG4      : aliased CFG4_Register;
      --  DIDT Gain Register
      DIDT_GAIN : aliased DIDT_GAIN_Register;
      --  DIDT Coefficient Register
      DIDT_COEF : aliased DIDT_COEF_Register;
      --  Voltage Level Register
      VLEVEL    : aliased VLEVEL_Register;
      --  Harmonic n Index Register
      H_INDX    : aliased H_INDX_Registers;
   end record
     with Volatile;

   for HAE0_Peripheral use record
      RUN       at 16#A0# range 0 .. 31;
      CFG0      at 16#B00# range 0 .. 31;
      CFG1      at 16#B04# range 0 .. 31;
      CFG2      at 16#B08# range 0 .. 31;
      CFG3      at 16#B0C# range 0 .. 31;
      STAT      at 16#B20# range 0 .. 31;
      ISAMPLE   at 16#B40# range 0 .. 31;
      VSAMPLE   at 16#B44# range 0 .. 31;
      IWAVEFORM at 16#B80# range 0 .. 31;
      VWAVEFORM at 16#B84# range 0 .. 31;
      CFG4      at 16#1E00# range 0 .. 31;
      DIDT_GAIN at 16#1E04# range 0 .. 31;
      DIDT_COEF at 16#1E08# range 0 .. 31;
      VLEVEL    at 16#1E10# range 0 .. 31;
      H_INDX    at 16#1E2C# range 0 .. 383;
   end record;

   --  Harmonic Analysis Engine
   HAE0_Periph : aliased HAE0_Peripheral
     with Import, Address => System'To_Address (16#40050000#);

end NRF_SVD.HAE0;
