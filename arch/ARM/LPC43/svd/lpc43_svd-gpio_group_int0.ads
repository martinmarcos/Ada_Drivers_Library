--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package LPC43_SVD.GPIO_GROUP_INT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Group interrupt status. This bit is cleared by writing a one to it.
   --  Writing zero has no effect.
   type CTRL_ENUM is
     (
      --  No interrupt request is pending.
      No_Interrupt_Request,
      --  Interrupt request is active.
      Interrupt_Request_Is)
     with Size => 1;
   for CTRL_ENUM use
     (No_Interrupt_Request => 0,
      Interrupt_Request_Is => 1);

   --  Combine enabled inputs for group interrupt
   type CTRL_ENUM_1 is
     (
      --  OR functionality: A grouped interrupt is generated when any one of
      --  the enabled inputs is active (based on its programmed polarity).
      Or_Functionality_A,
      --  AND functionality: An interrupt is generated when all enabled bits
      --  are active (based on their programmed polarity).
      And_Functionality_A)
     with Size => 1;
   for CTRL_ENUM_1 use
     (Or_Functionality_A => 0,
      And_Functionality_A => 1);

   --  Group interrupt trigger
   type CTRL_ENUM_2 is
     (
      --  Edge-triggered
      Edge_Triggered,
      --  Level-triggered
      Level_Triggered)
     with Size => 1;
   for CTRL_ENUM_2 use
     (Edge_Triggered => 0,
      Level_Triggered => 1);

   subtype CTRL_RESERVED_Field is HAL.UInt29;

   --  GPIO grouped interrupt control register
   type CTRL_Register is record
      --  Group interrupt status. This bit is cleared by writing a one to it.
      --  Writing zero has no effect.
      INT      : CTRL_ENUM := LPC43_SVD.GPIO_GROUP_INT0.No_Interrupt_Request;
      --  Combine enabled inputs for group interrupt
      COMB     : CTRL_ENUM_1 := LPC43_SVD.GPIO_GROUP_INT0.Or_Functionality_A;
      --  Group interrupt trigger
      TRIG     : CTRL_ENUM_2 := LPC43_SVD.GPIO_GROUP_INT0.Edge_Triggered;
      --  Reserved
      RESERVED : CTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      INT      at 0 range 0 .. 0;
      COMB     at 0 range 1 .. 1;
      TRIG     at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  GPIO grouped interrupt port polarity register
   type PORT_POL_Register is record
      --  Configure pin polarity of port pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m . 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_0  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_1  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_2  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_3  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_4  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_5  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_6  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_7  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_8  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_9  : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_10 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_11 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_12 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_13 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_14 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_15 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_16 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_17 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_18 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_19 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_20 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_21 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_22 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_23 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_24 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_25 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_26 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_27 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_28 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_29 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_30 : Boolean := True;
      --  Configure pin polarity of port m pins for group interrupt. Bit n
      --  corresponds to pin GPIOm[n] of port m. 0 = the pin is active LOW. If
      --  the level on this pin is LOW, the pin contributes to the group
      --  interrupt. 1 = the pin is active HIGH. If the level on this pin is
      --  HIGH, the pin contributes to the group interrupt.
      POL_31 : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_POL_Register use record
      POL_0  at 0 range 0 .. 0;
      POL_1  at 0 range 1 .. 1;
      POL_2  at 0 range 2 .. 2;
      POL_3  at 0 range 3 .. 3;
      POL_4  at 0 range 4 .. 4;
      POL_5  at 0 range 5 .. 5;
      POL_6  at 0 range 6 .. 6;
      POL_7  at 0 range 7 .. 7;
      POL_8  at 0 range 8 .. 8;
      POL_9  at 0 range 9 .. 9;
      POL_10 at 0 range 10 .. 10;
      POL_11 at 0 range 11 .. 11;
      POL_12 at 0 range 12 .. 12;
      POL_13 at 0 range 13 .. 13;
      POL_14 at 0 range 14 .. 14;
      POL_15 at 0 range 15 .. 15;
      POL_16 at 0 range 16 .. 16;
      POL_17 at 0 range 17 .. 17;
      POL_18 at 0 range 18 .. 18;
      POL_19 at 0 range 19 .. 19;
      POL_20 at 0 range 20 .. 20;
      POL_21 at 0 range 21 .. 21;
      POL_22 at 0 range 22 .. 22;
      POL_23 at 0 range 23 .. 23;
      POL_24 at 0 range 24 .. 24;
      POL_25 at 0 range 25 .. 25;
      POL_26 at 0 range 26 .. 26;
      POL_27 at 0 range 27 .. 27;
      POL_28 at 0 range 28 .. 28;
      POL_29 at 0 range 29 .. 29;
      POL_30 at 0 range 30 .. 30;
      POL_31 at 0 range 31 .. 31;
   end record;

   --  GPIO grouped interrupt port polarity register
   type PORT_POL_Registers is array (0 .. 7) of PORT_POL_Register
     with Volatile;

   --  GPIO grouped interrupt port m enable register
   type PORT_ENA_Register is record
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_0  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_1  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_2  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_3  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_4  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_5  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_6  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_7  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_8  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_9  : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_10 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_11 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_12 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_13 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_14 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_15 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_16 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_17 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_18 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_19 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_20 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_21 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_22 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_23 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_24 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_25 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_26 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_27 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_28 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_29 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_30 : Boolean := False;
      --  Enable port m pin for group interrupt. Bit n corresponds to pin
      --  GPIOm[n] of port m. 0 = the port m pin is disabled and does not
      --  contribute to the grouped interrupt. 1 = the port m pin is enabled
      --  and contributes to the grouped interrupt.
      ENA_31 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_ENA_Register use record
      ENA_0  at 0 range 0 .. 0;
      ENA_1  at 0 range 1 .. 1;
      ENA_2  at 0 range 2 .. 2;
      ENA_3  at 0 range 3 .. 3;
      ENA_4  at 0 range 4 .. 4;
      ENA_5  at 0 range 5 .. 5;
      ENA_6  at 0 range 6 .. 6;
      ENA_7  at 0 range 7 .. 7;
      ENA_8  at 0 range 8 .. 8;
      ENA_9  at 0 range 9 .. 9;
      ENA_10 at 0 range 10 .. 10;
      ENA_11 at 0 range 11 .. 11;
      ENA_12 at 0 range 12 .. 12;
      ENA_13 at 0 range 13 .. 13;
      ENA_14 at 0 range 14 .. 14;
      ENA_15 at 0 range 15 .. 15;
      ENA_16 at 0 range 16 .. 16;
      ENA_17 at 0 range 17 .. 17;
      ENA_18 at 0 range 18 .. 18;
      ENA_19 at 0 range 19 .. 19;
      ENA_20 at 0 range 20 .. 20;
      ENA_21 at 0 range 21 .. 21;
      ENA_22 at 0 range 22 .. 22;
      ENA_23 at 0 range 23 .. 23;
      ENA_24 at 0 range 24 .. 24;
      ENA_25 at 0 range 25 .. 25;
      ENA_26 at 0 range 26 .. 26;
      ENA_27 at 0 range 27 .. 27;
      ENA_28 at 0 range 28 .. 28;
      ENA_29 at 0 range 29 .. 29;
      ENA_30 at 0 range 30 .. 30;
      ENA_31 at 0 range 31 .. 31;
   end record;

   --  GPIO grouped interrupt port m enable register
   type PORT_ENA_Registers is array (0 .. 7) of PORT_ENA_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO group interrupt 0
   type GPIO_GROUP_INT0_Peripheral is record
      --  GPIO grouped interrupt control register
      CTRL     : aliased CTRL_Register;
      --  GPIO grouped interrupt port polarity register
      PORT_POL : aliased PORT_POL_Registers;
      --  GPIO grouped interrupt port m enable register
      PORT_ENA : aliased PORT_ENA_Registers;
   end record
     with Volatile;

   for GPIO_GROUP_INT0_Peripheral use record
      CTRL     at 16#0# range 0 .. 31;
      PORT_POL at 16#20# range 0 .. 255;
      PORT_ENA at 16#40# range 0 .. 255;
   end record;

   --  GPIO group interrupt 0
   GPIO_GROUP_INT0_Periph : aliased GPIO_GROUP_INT0_Peripheral
     with Import, Address => System'To_Address (16#40088000#);

   --  GPIO group interrupt 0
   GPIO_GROUP_INT1_Periph : aliased GPIO_GROUP_INT0_Peripheral
     with Import, Address => System'To_Address (16#40089000#);

end LPC43_SVD.GPIO_GROUP_INT0;
