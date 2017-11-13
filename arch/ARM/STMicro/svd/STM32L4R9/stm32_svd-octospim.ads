--  This spec has been automatically generated from STM32L4R9.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.OCTOSPIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype P1CR_IOLSRC_Field is HAL.UInt2;
   subtype P1CR_IOHSRC_Field is HAL.UInt2;

   --  OctoSPI IO Manager Port 1 Configuration Register
   type P1CR_Register is record
      --  CLK/CLK Enable for Port
      CLKEN          : Boolean := True;
      --  CLK/CLK Source for Port
      CLKSRC         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  DQS Enable for Port
      DQSEN          : Boolean := True;
      --  DQS Source for Port
      DQSSRC         : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  CS Enable for Port
      NCSEN          : Boolean := True;
      --  CS Source for Port
      NCSSRC         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Enable for Port
      IOLEN          : Boolean := True;
      --  Source for Port
      IOLSRC         : P1CR_IOLSRC_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Enable for Port n
      IOHEN          : Boolean := True;
      --  Source for Port
      IOHSRC         : P1CR_IOHSRC_Field := 16#1#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P1CR_Register use record
      CLKEN          at 0 range 0 .. 0;
      CLKSRC         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DQSEN          at 0 range 4 .. 4;
      DQSSRC         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCSEN          at 0 range 8 .. 8;
      NCSSRC         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      IOLEN          at 0 range 16 .. 16;
      IOLSRC         at 0 range 17 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      IOHEN          at 0 range 24 .. 24;
      IOHSRC         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype P2CR_IOLSRC_Field is HAL.UInt2;
   subtype P2CR_IOHSRC_Field is HAL.UInt2;

   --  OctoSPI IO Manager Port 2 Configuration Register
   type P2CR_Register is record
      --  CLK/CLK Enable for Port
      CLKEN          : Boolean := True;
      --  CLK/CLK Source for Port
      CLKSRC         : Boolean := True;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  DQS Enable for Port
      DQSEN          : Boolean := True;
      --  DQS Source for Port
      DQSSRC         : Boolean := True;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  CS Enable for Port
      NCSEN          : Boolean := True;
      --  CS Source for Port
      NCSSRC         : Boolean := True;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Enable for Port
      IOLEN          : Boolean := True;
      --  Source for Port
      IOLSRC         : P2CR_IOLSRC_Field := 16#2#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Enable for Port n
      IOHEN          : Boolean := True;
      --  Source for Port
      IOHSRC         : P2CR_IOHSRC_Field := 16#3#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P2CR_Register use record
      CLKEN          at 0 range 0 .. 0;
      CLKSRC         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DQSEN          at 0 range 4 .. 4;
      DQSSRC         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCSEN          at 0 range 8 .. 8;
      NCSSRC         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      IOLEN          at 0 range 16 .. 16;
      IOLSRC         at 0 range 17 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      IOHEN          at 0 range 24 .. 24;
      IOHSRC         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OctoSPI IO Manager
   type OCTOSPIM_Peripheral is record
      --  OctoSPI IO Manager Port 1 Configuration Register
      P1CR : aliased P1CR_Register;
      --  OctoSPI IO Manager Port 2 Configuration Register
      P2CR : aliased P2CR_Register;
   end record
     with Volatile;

   for OCTOSPIM_Peripheral use record
      P1CR at 16#4# range 0 .. 31;
      P2CR at 16#8# range 0 .. 31;
   end record;

   --  OctoSPI IO Manager
   OCTOSPIM_Periph : aliased OCTOSPIM_Peripheral
     with Import, Address => System'To_Address (16#50061C00#);

end STM32_SVD.OCTOSPIM;
