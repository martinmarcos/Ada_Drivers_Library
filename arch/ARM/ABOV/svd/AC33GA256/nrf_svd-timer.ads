--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CON_TMODE_Field is HAL.UInt2;
   subtype CON_TCS_Field is HAL.UInt3;

   --  CON_TIE array
   type CON_TIE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CON_TIE
   type CON_TIE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIE as a value
            Val : HAL.UInt2;
         when True =>
            --  TIE as an array
            Arr : CON_TIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CON_TIE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CON_TIF array
   type CON_TIF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CON_TIF
   type CON_TIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIF as a value
            Val : HAL.UInt2;
         when True =>
            --  TIF as an array
            Arr : CON_TIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CON_TIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Timer n Control Register
   type CON_Register is record
      --  Timer operation mode
      TMODE          : CON_TMODE_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Rising-edge clear mode/Falling-edge clear mode
      CAPM           : Boolean := False;
      --  Select the clock source
      TCS            : CON_TCS_Field := 16#0#;
      --  Initial output of each mode
      TSTRT          : Boolean := False;
      --  Enable match0 interrupt
      TIE            : CON_TIE_Field := (As_Array => False, Val => 16#0#);
      --  Enable overflow interrupt
      TOVE           : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Match0 interrupt occurred(write 1 to clear the flag)
      TIF            : CON_TIF_Field := (As_Array => False, Val => 16#0#);
      --  Overflow Occurred (write1 to clar the flag)
      TOVF           : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CON_Register use record
      TMODE          at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CAPM           at 0 range 3 .. 3;
      TCS            at 0 range 4 .. 6;
      TSTRT          at 0 range 7 .. 7;
      TIE            at 0 range 8 .. 9;
      TOVE           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TIF            at 0 range 12 .. 13;
      TOVF           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Timer n Command Register
   type CMD_Register is record
      --  Timer enable bit
      TEN            : Boolean := False;
      --  Write-only. No effect/Initialize Timer.
      TCLR           : Boolean := False;
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  Read-only. Timer Output state
      TOUT           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      TEN            at 0 range 0 .. 0;
      TCLR           at 0 range 1 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      TOUT           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GRA_GRA_Field is HAL.UInt16;

   --  Timer n General Purpose Register A
   type GRA_Register is record
      --  General Purpose Register A
      GRA            : GRA_GRA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRA_Register use record
      GRA            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GRB_GRB_Field is HAL.UInt16;

   --  Timer n General Register B
   type GRB_Register is record
      --  GRB
      GRB            : GRB_GRB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRB_Register use record
      GRB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PRS_PRS_Field is HAL.UInt10;

   --  Timer n Prescaler Register
   type PRS_Register is record
      --  Input clock prescaler value
      PRS            : PRS_PRS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRS_Register use record
      PRS            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  Timer n Count Register
   type CNT_Register is record
      --  CNT
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  16-BIT TIMER
   type TIMER_Peripheral is record
      --  Timer n Control Register
      CON : aliased CON_Register;
      --  Timer n Command Register
      CMD : aliased CMD_Register;
      --  Timer n General Purpose Register A
      GRA : aliased GRA_Register;
      --  Timer n General Register B
      GRB : aliased GRB_Register;
      --  Timer n Prescaler Register
      PRS : aliased PRS_Register;
      --  Timer n Count Register
      CNT : aliased CNT_Register;
   end record
     with Volatile;

   for TIMER_Peripheral use record
      CON at 16#0# range 0 .. 31;
      CMD at 16#4# range 0 .. 31;
      GRA at 16#8# range 0 .. 31;
      GRB at 16#C# range 0 .. 31;
      PRS at 16#10# range 0 .. 31;
      CNT at 16#14# range 0 .. 31;
   end record;

   --  16-BIT TIMER
   T0_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000C00#);

   --  16-BIT TIMER
   T1_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000C20#);

   --  16-BIT TIMER
   T2_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000C40#);

   --  16-BIT TIMER
   T3_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000C60#);

   --  16-BIT TIMER
   T4_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000C80#);

   --  16-BIT TIMER
   T5_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000CA0#);

   --  16-BIT TIMER
   T6_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000CC0#);

   --  16-BIT TIMER
   T7_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000CE0#);

   --  16-BIT TIMER
   T8_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000D00#);

   --  16-BIT TIMER
   T9_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40000D20#);

end NRF_SVD.TIMER;
