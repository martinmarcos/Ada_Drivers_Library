--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MATH0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Math Unit Interrupt Enable Control
   type CTL_Register is record
      --  Interrupt Enable, Invalid Operation
      IOEN          : Boolean := False;
      --  Interrupt Enable, Divided By Zero
      DZEN          : Boolean := False;
      --  Interrupt Enable, Overflow
      OFEN          : Boolean := False;
      --  Interrupt Enable, Underflow
      UFEN          : Boolean := False;
      --  Interrupt Enable, Inexact Operation
      IXEN          : Boolean := False;
      --  Interrupt Enable, Sequence Error
      SEQEN         : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      IOEN          at 0 range 0 .. 0;
      DZEN          at 0 range 1 .. 1;
      OFEN          at 0 range 2 .. 2;
      UFEN          at 0 range 3 .. 3;
      IXEN          at 0 range 4 .. 4;
      SEQEN         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Operand State Status, Last Operand code
   type FSTAT_LASTOP_Field is
     (
      --  Last operation was EXP.
      Exp,
      --  Last operation was EXP2.
      Exp2,
      --  Last operation was RECIP.
      Recip,
      --  Last operation was SQRT.
      Sqrt,
      --  Last operation was LN.
      Ln,
      --  Last operation was LOG2.
      Log2,
      --  Last operation was SIN.
      Sin,
      --  Last operation was COS.
      Cos,
      --  Last operation was TAN.
      Tan,
      --  Last operation was ASIN.
      Asin,
      --  Last operation was ACOS.
      Acos,
      --  Last operation was ATAN.
      Atan,
      --  Last operation was ATAN2.
      Atan2,
      --  Last operation was HYPOT.
      Hypot,
      --  Last operation was RTOP.
      Rtop,
      --  Last operation was PTOR.
      Ptor,
      --  Reset value for the field
      Fstat_Lastop_Field_Reset)
     with Size => 5;
   for FSTAT_LASTOP_Field use
     (Exp => 0,
      Exp2 => 1,
      Recip => 2,
      Sqrt => 3,
      Ln => 4,
      Log2 => 5,
      Sin => 6,
      Cos => 7,
      Tan => 8,
      Asin => 9,
      Acos => 10,
      Atan => 11,
      Atan2 => 16,
      Hypot => 17,
      Rtop => 18,
      Ptor => 19,
      Fstat_Lastop_Field_Reset => 31);

   --  Math Unit Function Status Register
   type FSTAT_Register is record
      --  Operand State Status, Invalid Operation
      IOS            : Boolean := False;
      --  Operand State Status, Divided By Zero
      DZS            : Boolean := False;
      --  Operand State Status, Overflow
      OFS            : Boolean := False;
      --  Operand State Status, Underflow
      UFS            : Boolean := False;
      --  Operand State Status, Inexact Operation
      IXS            : Boolean := False;
      --  Operand State Status, Sequence Error
      SEQERR         : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Operand State Status, Last Operand code
      LASTOP         : FSTAT_LASTOP_Field := Fstat_Lastop_Field_Reset;
      --  Operand State Status, YPARTIAL register bit
      YPARTIAL       : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FSTAT_Register use record
      IOS            at 0 range 0 .. 0;
      DZS            at 0 range 1 .. 1;
      OFS            at 0 range 2 .. 2;
      UFS            at 0 range 3 .. 3;
      IXS            at 0 range 4 .. 4;
      SEQERR         at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      LASTOP         at 0 range 16 .. 20;
      YPARTIAL       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Math Unit Interrupt Register
   type ISTAT_Register is record
      --  Math Unit Cumulative Interrupt Status, Invalid Operation
      IOC           : Boolean := False;
      --  Math Unit Cumulative Interrupt Status, Divided By Zero
      DZC           : Boolean := False;
      --  Math Unit Cumulative Interrupt Status, Overflow
      OFC           : Boolean := False;
      --  Math Unit Cumulative Interrupt Status, Underflow
      UFC           : Boolean := False;
      --  Math Unit Cumulative Interrupt Status, Inexact Operation
      IXC           : Boolean := False;
      --  Math Unit Cumulative Interrupt Status, Sequence Error
      SEQERR        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISTAT_Register use record
      IOC           at 0 range 0 .. 0;
      DZC           at 0 range 1 .. 1;
      OFC           at 0 range 2 .. 2;
      UFC           at 0 range 3 .. 3;
      IXC           at 0 range 4 .. 4;
      SEQERR        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Math Unit Function State Status Register
   type SSTAT_Register is record
      --  Read-only. Operand State Status
      DIRTY         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSTAT_Register use record
      DIRTY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Math Unit Function
   type MATH0_Peripheral is record
      --  Math Unit Interrupt Enable Control
      CTL      : aliased CTL_Register;
      --  exp(x) Function Register
      EXPF     : aliased HAL.UInt32;
      --  exp2(x) Function Register
      EXP2F    : aliased HAL.UInt32;
      --  Reciprocal(x) or 1/x Function Register
      RECIPF   : aliased HAL.UInt32;
      --  Square Root or sqrt(x) Function
      SQRTF    : aliased HAL.UInt32;
      --  ln(x) Function Register
      LNF      : aliased HAL.UInt32;
      --  log2(x) Function Register
      LOG2F    : aliased HAL.UInt32;
      --  sin(x) Function Register
      SINF     : aliased HAL.UInt32;
      --  cos(x) Function Register
      COSF     : aliased HAL.UInt32;
      --  tan(x) Function Register
      TANF     : aliased HAL.UInt32;
      --  arcsin(x) Function Register
      ASINF    : aliased HAL.UInt32;
      --  arccos(x) Function Register
      ACOSF    : aliased HAL.UInt32;
      --  arctan(x) Function Register
      ATANF    : aliased HAL.UInt32;
      --  arctan(y/x) Function y Operand Register
      ATAN2F_Y : aliased HAL.UInt32;
      --  arctan(y/x) Function x Operand Register
      ATAN2F_X : aliased HAL.UInt32;
      --  hypot(x,y) Function y Operand Register
      HYPOTF_Y : aliased HAL.UInt32;
      --  hypot(x,y) Function x Operand Register
      HYPOTF_X : aliased HAL.UInt32;
      --  Rectangular to Polar Function y Operand Register
      RTOPF_Y  : aliased HAL.UInt32;
      --  Rectangular to Polar Function x Operand Register
      RTOPF_X  : aliased HAL.UInt32;
      --  Polar to Rectangular Function r Operand Register
      PTORF_R  : aliased HAL.UInt32;
      --  Polar to Rectangular Function a Operand Register
      PTORF_A  : aliased HAL.UInt32;
      --  Generic Y Function Register (GY)
      GY       : aliased HAL.UInt32;
      --  Generic X Function Register (GX)
      GX       : aliased HAL.UInt32;
      --  Math Unit Function Result 1
      RES1     : aliased HAL.UInt32;
      --  Math Unit Function Result 2
      RES2     : aliased HAL.UInt32;
      --  Math Unit Function Status Register
      FSTAT    : aliased FSTAT_Register;
      --  Math Unit Interrupt Register
      ISTAT    : aliased ISTAT_Register;
      --  Math Unit Function State Status Register
      SSTAT    : aliased SSTAT_Register;
   end record
     with Volatile;

   for MATH0_Peripheral use record
      CTL      at 16#0# range 0 .. 31;
      EXPF     at 16#4# range 0 .. 31;
      EXP2F    at 16#C# range 0 .. 31;
      RECIPF   at 16#14# range 0 .. 31;
      SQRTF    at 16#1C# range 0 .. 31;
      LNF      at 16#24# range 0 .. 31;
      LOG2F    at 16#2C# range 0 .. 31;
      SINF     at 16#34# range 0 .. 31;
      COSF     at 16#3C# range 0 .. 31;
      TANF     at 16#44# range 0 .. 31;
      ASINF    at 16#4C# range 0 .. 31;
      ACOSF    at 16#54# range 0 .. 31;
      ATANF    at 16#5C# range 0 .. 31;
      ATAN2F_Y at 16#80# range 0 .. 31;
      ATAN2F_X at 16#84# range 0 .. 31;
      HYPOTF_Y at 16#88# range 0 .. 31;
      HYPOTF_X at 16#8C# range 0 .. 31;
      RTOPF_Y  at 16#90# range 0 .. 31;
      RTOPF_X  at 16#94# range 0 .. 31;
      PTORF_R  at 16#98# range 0 .. 31;
      PTORF_A  at 16#9C# range 0 .. 31;
      GY       at 16#200# range 0 .. 31;
      GX       at 16#204# range 0 .. 31;
      RES1     at 16#208# range 0 .. 31;
      RES2     at 16#20C# range 0 .. 31;
      FSTAT    at 16#210# range 0 .. 31;
      ISTAT    at 16#214# range 0 .. 31;
      SSTAT    at 16#218# range 0 .. 31;
   end record;

   --  Math Unit Function
   MATH0_Periph : aliased MATH0_Peripheral
     with Import, Address => System'To_Address (16#F8009000#);

end NRF_SVD.MATH0;
