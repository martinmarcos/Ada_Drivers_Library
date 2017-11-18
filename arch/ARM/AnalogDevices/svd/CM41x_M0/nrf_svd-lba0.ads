--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LBA0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CLK_CTL_DIVDAT_Field is HAL.UInt4;

   --  Logic Block Array Clock Divisor Register
   type CLK_CTL_Register is record
      --  Clock Divisor Enable
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Divisor for LBA_CLK Output
      DIVDAT        : CLK_CTL_DIVDAT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CTL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      DIVDAT        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DIR_PIN array
   type DIR_PIN_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for DIR_PIN
   type DIR_PIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIN as a value
            Val : HAL.UInt8;
         when True =>
            --  PIN as an array
            Arr : DIR_PIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DIR_PIN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Logic Block Array Pin Direction Register
   type DIR_Register is record
      --  Output Enable for PIN0
      PIN           : DIR_PIN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIR_Register use record
      PIN           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DIN_DATA_Field is HAL.UInt8;

   --  Logic Block Array Data Input Register
   type DIN_Register is record
      --  Data Input Field
      DATA          : DIN_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIN_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DOUT_DATA_Field is HAL.UInt8;

   --  Logic Block Array Data Output Register
   type DOUT_Register is record
      --  Read-only. Registered Data Output
      DATA          : DOUT_DATA_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOUT_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFG_A0MXSEL_Field is HAL.UInt2;
   subtype CFG_A1MXSEL_Field is HAL.UInt2;
   subtype CFG_A2MXSEL_Field is HAL.UInt2;
   subtype CFG_A3MXSEL_Field is HAL.UInt2;
   subtype CFG_A4MXSEL_Field is HAL.UInt2;
   subtype CFG_A5MXSEL_Field is HAL.UInt2;
   subtype CFG_A6MXSEL_Field is HAL.UInt2;
   subtype CFG_A7MXSEL_Field is HAL.UInt2;
   subtype CFG_B0MXSEL_Field is HAL.UInt2;
   subtype CFG_B1MXSEL_Field is HAL.UInt2;
   subtype CFG_B2MXSEL_Field is HAL.UInt2;
   subtype CFG_B3MXSEL_Field is HAL.UInt2;
   subtype CFG_B4MXSEL_Field is HAL.UInt2;
   subtype CFG_B5MXSEL_Field is HAL.UInt2;
   subtype CFG_B6MXSEL_Field is HAL.UInt2;
   subtype CFG_B7MXSEL_Field is HAL.UInt2;

   --  Logic Block Array Configuration Register
   type CFG_Register is record
      --  A0 Multiplexer Select
      A0MXSEL : CFG_A0MXSEL_Field := 16#0#;
      --  A1 Multiplexer Select
      A1MXSEL : CFG_A1MXSEL_Field := 16#0#;
      --  A2 Multiplexer Select
      A2MXSEL : CFG_A2MXSEL_Field := 16#0#;
      --  A3 Multiplexer Select
      A3MXSEL : CFG_A3MXSEL_Field := 16#0#;
      --  A4 Multiplexer Select
      A4MXSEL : CFG_A4MXSEL_Field := 16#0#;
      --  A5 Multiplexer Select
      A5MXSEL : CFG_A5MXSEL_Field := 16#0#;
      --  A6 Multiplexer Select
      A6MXSEL : CFG_A6MXSEL_Field := 16#0#;
      --  A7 Multiplexer Select
      A7MXSEL : CFG_A7MXSEL_Field := 16#0#;
      --  B0 Multiplexer Select
      B0MXSEL : CFG_B0MXSEL_Field := 16#0#;
      --  B1 Multiplexer Select
      B1MXSEL : CFG_B1MXSEL_Field := 16#0#;
      --  B2 Multiplexer Select
      B2MXSEL : CFG_B2MXSEL_Field := 16#0#;
      --  B3 Multiplexer Select
      B3MXSEL : CFG_B3MXSEL_Field := 16#0#;
      --  B4 Multiplexer Select
      B4MXSEL : CFG_B4MXSEL_Field := 16#0#;
      --  B5 Multiplexer Select
      B5MXSEL : CFG_B5MXSEL_Field := 16#0#;
      --  B6 Multiplexer Select
      B6MXSEL : CFG_B6MXSEL_Field := 16#0#;
      --  B6 Multiplexer Select
      B7MXSEL : CFG_B7MXSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      A0MXSEL at 0 range 0 .. 1;
      A1MXSEL at 0 range 2 .. 3;
      A2MXSEL at 0 range 4 .. 5;
      A3MXSEL at 0 range 6 .. 7;
      A4MXSEL at 0 range 8 .. 9;
      A5MXSEL at 0 range 10 .. 11;
      A6MXSEL at 0 range 12 .. 13;
      A7MXSEL at 0 range 14 .. 15;
      B0MXSEL at 0 range 16 .. 17;
      B1MXSEL at 0 range 18 .. 19;
      B2MXSEL at 0 range 20 .. 21;
      B3MXSEL at 0 range 22 .. 23;
      B4MXSEL at 0 range 24 .. 25;
      B5MXSEL at 0 range 26 .. 27;
      B6MXSEL at 0 range 28 .. 29;
      B7MXSEL at 0 range 30 .. 31;
   end record;

   subtype SYNC_CTL_SYNCIN_Field is HAL.UInt8;

   --  Logic Block Array GPIO Input Synchronization Control Register
   type SYNC_CTL_Register is record
      --  Synchronizer Select for Each GPIO Input
      SYNCIN        : SYNC_CTL_SYNCIN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNC_CTL_Register use record
      SYNCIN        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Logic Block Control Register
   type BLK_CTL_Register is record
      --  Enable
      EN            : Boolean := False;
      --  Product Term Array Mode
      PTA           : Boolean := False;
      --  Registered Output Mode Select
      REGOUT        : Boolean := False;
      --  Cascade Input Select
      CINSEL        : Boolean := False;
      --  Invert Logic Block Output
      OUTINV        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BLK_CTL_Register use record
      EN            at 0 range 0 .. 0;
      PTA           at 0 range 1 .. 1;
      REGOUT        at 0 range 2 .. 2;
      CINSEL        at 0 range 3 .. 3;
      OUTINV        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Logic Block Control Register
   type BLK_CTL_Registers is array (0 .. 7) of BLK_CTL_Register
     with Volatile;

   -----------------------------
   -- BLK cluster's Registers --
   -----------------------------

   --  BLK block
   type BLK_Cluster is record
      --  Logic Block Function 0 Register
      FN0 : aliased HAL.UInt32;
      --  Logic Block Function 1 Register
      FN1 : aliased HAL.UInt32;
      --  Logic Block Function 2 Register
      FN2 : aliased HAL.UInt32;
      --  Logic Block Function 3 Register
      FN3 : aliased HAL.UInt32;
      --  Logic Block Function 4 Register
      FN4 : aliased HAL.UInt32;
      --  Logic Block Function 5 Register
      FN5 : aliased HAL.UInt32;
      --  Logic Block Function 6 Register
      FN6 : aliased HAL.UInt32;
      --  Logic Block Function 7 Register
      FN7 : aliased HAL.UInt32;
   end record
     with Volatile, Size => 256;

   for BLK_Cluster use record
      FN0 at 16#0# range 0 .. 31;
      FN1 at 16#4# range 0 .. 31;
      FN2 at 16#8# range 0 .. 31;
      FN3 at 16#C# range 0 .. 31;
      FN4 at 16#10# range 0 .. 31;
      FN5 at 16#14# range 0 .. 31;
      FN6 at 16#18# range 0 .. 31;
      FN7 at 16#1C# range 0 .. 31;
   end record;

   --  BLK block
   type BLK_Clusters is array (0 .. 7) of BLK_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Logic Block Array
   type LBA0_Peripheral is record
      --  Logic Block Array Clock Divisor Register
      CLK_CTL  : aliased CLK_CTL_Register;
      --  Logic Block Array Pin Direction Register
      DIR      : aliased DIR_Register;
      --  Logic Block Array Data Input Register
      DIN      : aliased DIN_Register;
      --  Logic Block Array Data Output Register
      DOUT     : aliased DOUT_Register;
      --  Logic Block Array Configuration Register
      CFG      : aliased CFG_Register;
      --  Logic Block Array GPIO Input Synchronization Control Register
      SYNC_CTL : aliased SYNC_CTL_Register;
      --  Logic Block Control Register
      BLK_CTL  : aliased BLK_CTL_Registers;
      --  BLK block
      BLK      : aliased BLK_Clusters;
   end record
     with Volatile;

   for LBA0_Peripheral use record
      CLK_CTL  at 16#4# range 0 .. 31;
      DIR      at 16#8# range 0 .. 31;
      DIN      at 16#C# range 0 .. 31;
      DOUT     at 16#10# range 0 .. 31;
      CFG      at 16#14# range 0 .. 31;
      SYNC_CTL at 16#18# range 0 .. 31;
      BLK_CTL  at 16#20# range 0 .. 255;
      BLK      at 16#100# range 0 .. 2047;
   end record;

   --  Logic Block Array
   LBA0_Periph : aliased LBA0_Peripheral
     with Import, Address => System'To_Address (16#4000F000#);

end NRF_SVD.LBA0;
