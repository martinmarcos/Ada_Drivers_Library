--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PADS0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Peripheral Configuration0 Register
   type PCFG0_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Pull-Up Enable
      PUE            : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCFG0_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      PUE            at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
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

   -----------------
   -- Peripherals --
   -----------------

   --  Pads Controller
   type PADS0_Peripheral is record
      --  Peripheral Configuration0 Register
      PCFG0        : aliased PCFG0_Register;
      --  Multiport Drive Strength Register
      PORT_DS      : aliased PORT_DS_Register;
      --  Multiport Pullup/Pulldown Resistor Control Register
      PORT_RCTL    : aliased PORT_RCTL_Register;
      --  Multiport Trip State Register
      PORT_TRIPST  : aliased PORT_TRIPST_Register;
      --  Multiport Trip Select Register
      PORT_TRIPSEL : aliased PORT_TRIPSEL_Register;
   end record
     with Volatile;

   for PADS0_Peripheral use record
      PCFG0        at 16#4# range 0 .. 31;
      PORT_DS      at 16#100# range 0 .. 31;
      PORT_RCTL    at 16#120# range 0 .. 31;
      PORT_TRIPST  at 16#140# range 0 .. 31;
      PORT_TRIPSEL at 16#160# range 0 .. 31;
   end record;

   --  Pads Controller
   PADS0_Periph : aliased PADS0_Peripheral
     with Import, Address => System'To_Address (16#41001000#);

end NRF_SVD.PADS0;
