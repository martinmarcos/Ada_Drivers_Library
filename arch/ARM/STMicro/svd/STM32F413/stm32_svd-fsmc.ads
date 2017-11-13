--  This spec has been automatically generated from STM32F413.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.FSMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BCR_MTYP_Field is HAL.UInt2;
   subtype BCR_MWID_Field is HAL.UInt2;
   subtype BCR_CPSIZE_Field is HAL.UInt3;

   --  BCR1
   type BCR_Register is record
      --  Memory bank enable bit
      MBKEN          : Boolean := False;
      --  Memory bank enable bit
      MUXEN          : Boolean := False;
      --  Memory type
      MTYP           : BCR_MTYP_Field := 16#0#;
      --  Memory data bus width
      MWID           : BCR_MWID_Field := 16#0#;
      --  Flash access enable
      FACCEN         : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Burst enable bit
      BURSTEN        : Boolean := False;
      --  Wait signal polarity bit
      WAITPOL        : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Wait timing configuration
      WAITCFG        : Boolean := False;
      --  Write enable bitWREN
      WREN           : Boolean := False;
      --  Wait enable bit
      WAITEN         : Boolean := False;
      --  Extended mode enable
      EXTMOD         : Boolean := False;
      --  Wait signal during asynchronous transfers
      ASYNCWAIT      : Boolean := False;
      --  CRAM page size
      CPSIZE         : BCR_CPSIZE_Field := 16#0#;
      --  Write burst enable
      CBURSTRW       : Boolean := False;
      --  Continuous Clock Enable
      CCLKEN         : Boolean := False;
      --  Write FIFO Disable
      WFDIS          : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      CPSIZE         at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      CCLKEN         at 0 range 20 .. 20;
      WFDIS          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype BTR1_ADDSET_Field is HAL.UInt4;
   subtype BTR1_ADDHLD_Field is HAL.UInt4;
   subtype BTR1_DATAST_Field is HAL.UInt8;
   subtype BTR1_BUSTURN_Field is HAL.UInt4;
   subtype BTR1_CLKDIV_Field is HAL.UInt4;
   subtype BTR1_DATLAT_Field is HAL.UInt4;
   subtype BTR1_ACCMOD_Field is HAL.UInt2;

   --  BTR1
   type BTR1_Register is record
      --  Address setup phase duration
      ADDSET         : BTR1_ADDSET_Field := 16#0#;
      --  Address-hold phase duration
      ADDHLD         : BTR1_ADDHLD_Field := 16#0#;
      --  Data-phase duration
      DATAST         : BTR1_DATAST_Field := 16#0#;
      --  Bus turnaround phase duration
      BUSTURN        : BTR1_BUSTURN_Field := 16#0#;
      --  Clock divide ratio
      CLKDIV         : BTR1_CLKDIV_Field := 16#0#;
      --  Data latency
      DATLAT         : BTR1_DATLAT_Field := 16#0#;
      --  Access mode
      ACCMOD         : BTR1_ACCMOD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTR1_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype BTR_ADDSET_Field is HAL.UInt4;
   subtype BTR_ADDHLD_Field is HAL.UInt4;
   subtype BTR_DATAST_Field is HAL.UInt8;
   subtype BTR_BUSTURN_Field is HAL.UInt4;
   subtype BTR_CLKDIV_Field is HAL.UInt4;
   subtype BTR_DATLAT_Field is HAL.UInt4;
   subtype BTR_ACCMOD_Field is HAL.UInt2;

   --  BTR2
   type BTR_Register is record
      --  Address setup phase duration
      ADDSET         : BTR_ADDSET_Field := 16#0#;
      --  Address-hold phase duration
      ADDHLD         : BTR_ADDHLD_Field := 16#0#;
      --  Data-phase duration
      DATAST         : BTR_DATAST_Field := 16#0#;
      --  Bus turnaround phase duration
      BUSTURN        : BTR_BUSTURN_Field := 16#0#;
      --  Clock divide ratio
      CLKDIV         : BTR_CLKDIV_Field := 16#0#;
      --  Data latency
      DATLAT         : BTR_DATLAT_Field := 16#0#;
      --  Access mode
      ACCMOD         : BTR_ACCMOD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype BWTR_ADDSET_Field is HAL.UInt4;
   subtype BWTR_ADDHLD_Field is HAL.UInt4;
   subtype BWTR_DATAST_Field is HAL.UInt8;
   subtype BWTR_BUSTURN_Field is HAL.UInt4;
   subtype BWTR_ACCMOD_Field is HAL.UInt2;

   --  BWTR1
   type BWTR_Register is record
      --  Address setup phase duration
      ADDSET         : BWTR_ADDSET_Field := 16#0#;
      --  Address-hold phase duration
      ADDHLD         : BWTR_ADDHLD_Field := 16#0#;
      --  Data-phase duration
      DATAST         : BWTR_DATAST_Field := 16#0#;
      --  Bus turnaround phase duration
      BUSTURN        : BWTR_BUSTURN_Field := 16#0#;
      --  unspecified
      Reserved_20_27 : HAL.UInt8 := 16#0#;
      --  Access mode
      ACCMOD         : BWTR_ACCMOD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BWTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      Reserved_20_27 at 0 range 20 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible static memory controller
   type FSMC_Peripheral is record
      --  BCR1
      BCR1  : aliased BCR_Register;
      --  BTR1
      BTR1  : aliased BTR1_Register;
      --  BCR2
      BCR2  : aliased BCR_Register;
      --  BTR2
      BTR2  : aliased BTR_Register;
      --  BCR3
      BCR3  : aliased BCR_Register;
      --  BTR3
      BTR3  : aliased BTR_Register;
      --  BCR4
      BCR4  : aliased BCR_Register;
      --  BTR4
      BTR4  : aliased BTR_Register;
      --  BWTR1
      BWTR1 : aliased BWTR_Register;
      --  BWTR2
      BWTR2 : aliased BWTR_Register;
      --  BWTR3
      BWTR3 : aliased BWTR_Register;
      --  BWTR4
      BWTR4 : aliased BWTR_Register;
   end record
     with Volatile;

   for FSMC_Peripheral use record
      BCR1  at 16#0# range 0 .. 31;
      BTR1  at 16#4# range 0 .. 31;
      BCR2  at 16#8# range 0 .. 31;
      BTR2  at 16#C# range 0 .. 31;
      BCR3  at 16#10# range 0 .. 31;
      BTR3  at 16#14# range 0 .. 31;
      BCR4  at 16#18# range 0 .. 31;
      BTR4  at 16#1C# range 0 .. 31;
      BWTR1 at 16#104# range 0 .. 31;
      BWTR2 at 16#10C# range 0 .. 31;
      BWTR3 at 16#114# range 0 .. 31;
      BWTR4 at 16#11C# range 0 .. 31;
   end record;

   --  Flexible static memory controller
   FSMC_Periph : aliased FSMC_Peripheral
     with Import, Address => System'To_Address (16#60000000#);

end STM32_SVD.FSMC;
