--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PADS1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PCFG0_TWI0VSEL_Field is HAL.UInt3;
   subtype PCFG0_PWMIPE_Field is HAL.UInt3;

   --  Peripheral Configuration0 Register
   type PCFG0_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Drive/tolerate for TWI0 Pins SCL & SDA
      TWI0VSEL       : PCFG0_TWI0VSEL_Field := 16#0#;
      --  Pull-Up Enable
      PUE            : Boolean := False;
      --  PWM<2:0> Input Buffer/Pullup Enable (0=all 8 input buffers and
      --  pullups disabled, 1= all 8 input buffers enabled and pullups ready)
      PWMIPE         : PCFG0_PWMIPE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCFG0_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      TWI0VSEL       at 0 range 9 .. 11;
      PUE            at 0 range 12 .. 12;
      PWMIPE         at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FOCP_DIV_DAT_Field is HAL.UInt4;

   --  Fast Over Current Protection Clock Divisor Register
   type FOCP_DIV_Register is record
      --  Enable
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Divisor for FOCP_CLK output
      DAT           : FOCP_DIV_DAT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FOCP_DIV_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      DAT           at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DBC_PRESCALE_DATA_Field is HAL.UInt16;

   --  Debounce Prescale Register
   type DBC_PRESCALE_Register is record
      --  Debounce Clock Prescale Divisor
      DATA           : DBC_PRESCALE_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBC_PRESCALE_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DBC_CTL_THRESH_Field is HAL.UInt8;

   --  Debounce Control Register(s)
   type DBC_CTL_Register is record
      --  Debounce Filter Enable (Input is bypassed directly to output if
      --  disabled)
      EN             : Boolean := False;
      --  Decimating Sample Mode Enable
      DEC            : Boolean := False;
      --  Prescale Clock Select
      PRECLKSEL      : Boolean := False;
      --  Accumulator Mode
      ACCMODE        : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Debounce Counter or Accumulator Threshold
      THRESH         : DBC_CTL_THRESH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBC_CTL_Register use record
      EN             at 0 range 0 .. 0;
      DEC            at 0 range 1 .. 1;
      PRECLKSEL      at 0 range 2 .. 2;
      ACCMODE        at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      THRESH         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Debounce Control Register(s)
   type DBC_CTL_Registers is array (0 .. 3) of DBC_CTL_Register
     with Volatile;

   subtype VMU_CTL_REFPRG_Field is HAL.UInt2;
   subtype VMU_CTL_FAULTDLY_Field is HAL.UInt4;

   --  Voltage Monitor Unit Control Register
   type VMU_CTL_Register is record
      --  VMU Block Enable
      EN             : Boolean := False;
      --  1 Volt Over/Under Voltage Compare Enable
      IVDDCOMPEN     : Boolean := False;
      --  3Volt Over/Under Voltage Compare Enable
      EVDDCOMPEN     : Boolean := False;
      --  Fast Comparator Enable
      FCEN           : Boolean := False;
      --  Comparator Reference Select
      REFPRG         : VMU_CTL_REFPRG_Field := 16#0#;
      --  Comparator Over-voltage Disable
      OVDIS          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Fault Delay Count in AUX_CLK ticks
      FAULTDLY       : VMU_CTL_FAULTDLY_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMU_CTL_Register use record
      EN             at 0 range 0 .. 0;
      IVDDCOMPEN     at 0 range 1 .. 1;
      EVDDCOMPEN     at 0 range 2 .. 2;
      FCEN           at 0 range 3 .. 3;
      REFPRG         at 0 range 4 .. 5;
      OVDIS          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FAULTDLY       at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Voltage Monitor Unit Trip Enable Register
   type VMU_TRIPEN_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Oscillator Compare Unit Dead Clock Trip Enable
      OCU0CLK       : Boolean := False;
      --  Oscillator Compare Unit Asynchronous Fault Trip Enable
      OCU0FAULT     : Boolean := False;
      --  System Oscillator Clock No Good Trip Enable
      OSC0CLK       : Boolean := False;
      --  System Oscillator Asynchronous Fault Trip Enable
      OSC0FAULT     : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMU_TRIPEN_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OCU0CLK       at 0 range 1 .. 1;
      OCU0FAULT     at 0 range 2 .. 2;
      OSC0CLK       at 0 range 3 .. 3;
      OSC0FAULT     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Non-Volatile Write Reset Control Register
   type NVWR_RSTCTL_Register is record
      --  Enable for NonVolatile Write Logic (Default State is Disabled and in
      --  Reset)
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVWR_RSTCTL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MONOSC_CFG_CFG_Field is HAL.UInt4;
   subtype MONOSC_CFG_SMODE_Field is HAL.UInt2;

   --  Monitor Oscillator Control Register
   type MONOSC_CFG_Register is record
      --  Monitor Oscillator Configuration Data
      CFG           : MONOSC_CFG_CFG_Field := 16#0#;
      --  Sleep Mode Configuration Data
      SMODE         : MONOSC_CFG_SMODE_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MONOSC_CFG_Register use record
      CFG           at 0 range 0 .. 3;
      SMODE         at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype VMU_TRIM_TRIM_Field is HAL.UInt16;

   --  Voltage Monitor Unit Trim Register
   type VMU_TRIM_Register is record
      --  Voltage Monitor Unit Trim value
      TRIM           : VMU_TRIM_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMU_TRIM_Register use record
      TRIM           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PORT_DS_GPIO_DS_Field is HAL.UInt16;

   --  Multiport Drive Strength Register
   type PORT_DS_Register is record
      --  Port Drive Strength
      GPIO_DS        : PORT_DS_GPIO_DS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_DS_Register use record
      GPIO_DS        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Multiport Drive Strength Register
   type PORT_DS_Registers is array (0 .. 4) of PORT_DS_Register
     with Volatile;

   subtype PORT_RCTL_REN_CTL_Field is HAL.UInt16;

   --  Multiport Pullup/Pulldown Resistor Control Register
   type PORT_RCTL_Register is record
      --  Port Resistor Enable Control
      REN_CTL        : PORT_RCTL_REN_CTL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_RCTL_Register use record
      REN_CTL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Multiport Pullup/Pulldown Resistor Control Register
   type PORT_RCTL_Registers is array (0 .. 4) of PORT_RCTL_Register
     with Volatile;

   --  PORT_TRIPST_TS array element
   subtype PORT_TRIPST_TS_Element is HAL.UInt2;

   --  PORT_TRIPST_TS array
   type PORT_TRIPST_TS_Field_Array is array (0 .. 15)
     of PORT_TRIPST_TS_Element
     with Component_Size => 2, Size => 32;

   --  Multiport Trip State Register
   type PORT_TRIPST_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TS as a value
            Val : HAL.UInt32;
         when True =>
            --  TS as an array
            Arr : PORT_TRIPST_TS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PORT_TRIPST_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Multiport Trip State Register
   type PORT_TRIPST_Registers is array (0 .. 4) of PORT_TRIPST_Register
     with Volatile;

   subtype PORT_TRIPSEL_SEL_Field is HAL.UInt16;

   --  Multiport Trip Select Register
   type PORT_TRIPSEL_Register is record
      --  Trip A/B Mux Select
      SEL            : PORT_TRIPSEL_SEL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_TRIPSEL_Register use record
      SEL            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Multiport Trip Select Register
   type PORT_TRIPSEL_Registers is array (0 .. 4) of PORT_TRIPSEL_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Pads Controller
   type PADS1_Peripheral is record
      --  Peripheral Configuration0 Register
      PCFG0        : aliased PCFG0_Register;
      --  Fast Over Current Protection Clock Divisor Register
      FOCP_DIV     : aliased FOCP_DIV_Register;
      --  Debounce Prescale Register
      DBC_PRESCALE : aliased DBC_PRESCALE_Register;
      --  Debounce Control Register(s)
      DBC_CTL      : aliased DBC_CTL_Registers;
      --  Voltage Monitor Unit Control Register
      VMU_CTL      : aliased VMU_CTL_Register;
      --  Voltage Monitor Unit Trip Enable Register
      VMU_TRIPEN   : aliased VMU_TRIPEN_Register;
      --  Non-Volatile Write Reset Control Register
      NVWR_RSTCTL  : aliased NVWR_RSTCTL_Register;
      --  Monitor Oscillator Control Register
      MONOSC_CFG   : aliased MONOSC_CFG_Register;
      --  Voltage Monitor Unit Trim Register
      VMU_TRIM     : aliased VMU_TRIM_Register;
      --  Multiport Drive Strength Register
      PORT_DS      : aliased PORT_DS_Registers;
      --  Multiport Pullup/Pulldown Resistor Control Register
      PORT_RCTL    : aliased PORT_RCTL_Registers;
      --  Multiport Trip State Register
      PORT_TRIPST  : aliased PORT_TRIPST_Registers;
      --  Multiport Trip Select Register
      PORT_TRIPSEL : aliased PORT_TRIPSEL_Registers;
   end record
     with Volatile;

   for PADS1_Peripheral use record
      PCFG0        at 16#4# range 0 .. 31;
      FOCP_DIV     at 16#48# range 0 .. 31;
      DBC_PRESCALE at 16#70# range 0 .. 31;
      DBC_CTL      at 16#80# range 0 .. 127;
      VMU_CTL      at 16#A0# range 0 .. 31;
      VMU_TRIPEN   at 16#A8# range 0 .. 31;
      NVWR_RSTCTL  at 16#AC# range 0 .. 31;
      MONOSC_CFG   at 16#B0# range 0 .. 31;
      VMU_TRIM     at 16#BC# range 0 .. 31;
      PORT_DS      at 16#100# range 0 .. 159;
      PORT_RCTL    at 16#120# range 0 .. 159;
      PORT_TRIPST  at 16#140# range 0 .. 159;
      PORT_TRIPSEL at 16#160# range 0 .. 159;
   end record;

   --  Pads Controller
   PADS1_Periph : aliased PADS1_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end NRF_SVD.PADS1;
