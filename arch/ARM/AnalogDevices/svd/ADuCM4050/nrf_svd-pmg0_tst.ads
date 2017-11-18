--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMG0_TST is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SRAM_CTL_PENBNK array
   type SRAM_CTL_PENBNK_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for SRAM_CTL_PENBNK
   type SRAM_CTL_PENBNK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PENBNK as a value
            Val : HAL.UInt8;
         when True =>
            --  PENBNK as an array
            Arr : SRAM_CTL_PENBNK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SRAM_CTL_PENBNK_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Control for SRAM Parity and Instruction SRAM
   type SRAM_CTL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable Initialization
      BNK1EN         : Boolean := False;
      --  Enable Initialization
      BNK2EN         : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Enable Initialization
      BNK7EN         : Boolean := False;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Start Manual Initialization
      STARTINIT      : Boolean := False;
      --  Automatic Initialization on Wake up from Hibernate Mode
      AUTOINIT       : Boolean := False;
      --  Abort Current Initialization. Self-cleared
      ABTINIT        : Boolean := False;
      --  Enable Parity Check
      PENBNK         : SRAM_CTL_PENBNK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  Enables 32kB Instruction SRAM
      INSTREN        : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_CTL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      BNK1EN         at 0 range 1 .. 1;
      BNK2EN         at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      BNK7EN         at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      STARTINIT      at 0 range 13 .. 13;
      AUTOINIT       at 0 range 14 .. 14;
      ABTINIT        at 0 range 15 .. 15;
      PENBNK         at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      INSTREN        at 0 range 31 .. 31;
   end record;

   --  Bank 0 Initialization Status
   type SRAM_INITSTAT_BNK0DONE_Field is
     (
      --  Bank 0 not initialized
      No_Bank0_Init,
      --  Bank 0 initialized
      Bank0_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK0DONE_Field use
     (No_Bank0_Init => 0,
      Bank0_Init => 1);

   --  Bank 1 Initialization Status
   type SRAM_INITSTAT_BNK1DONE_Field is
     (
      --  Bank 1 not initialized
      No_Bank1_Init,
      --  Bank 1 initialized
      Bank1_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK1DONE_Field use
     (No_Bank1_Init => 0,
      Bank1_Init => 1);

   --  Bank 2 Initialization Status
   type SRAM_INITSTAT_BNK2DONE_Field is
     (
      --  Bank 2 not initialized
      No_Bank2_Init,
      --  Bank 2 initialized
      Bank2_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK2DONE_Field use
     (No_Bank2_Init => 0,
      Bank2_Init => 1);

   --  Bank 3 Initialization Status
   type SRAM_INITSTAT_BNK3DONE_Field is
     (
      --  Bank 3 not initialized
      No_Bank3_Init,
      --  Bank 3 initialized
      Bank3_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK3DONE_Field use
     (No_Bank3_Init => 0,
      Bank3_Init => 1);

   --  Bank 4 Initialization Status
   type SRAM_INITSTAT_BNK4DONE_Field is
     (
      --  Bank 4 not initialized
      No_Bank4_Init,
      --  Bank 4 initialized
      Bank4_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK4DONE_Field use
     (No_Bank4_Init => 0,
      Bank4_Init => 1);

   --  Bank 5 Initialization Status
   type SRAM_INITSTAT_BNK5DONE_Field is
     (
      --  Bank 5 not initialized
      No_Bank5_Init,
      --  Bank 5 initialized
      Bank5_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK5DONE_Field use
     (No_Bank5_Init => 0,
      Bank5_Init => 1);

   --  Bank 6 Initialization Status
   type SRAM_INITSTAT_BNK6DONE_Field is
     (
      --  Bank 6 not initialized
      No_Bank6_Init,
      --  Bank 6 initialized
      Bank6_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK6DONE_Field use
     (No_Bank6_Init => 0,
      Bank6_Init => 1);

   --  Bank 7 Initialization Status
   type SRAM_INITSTAT_BNK7DONE_Field is
     (
      --  Bank 7 not initialized
      No_Bank7_Init,
      --  Bank 7 initialized
      Bank7_Init)
     with Size => 1;
   for SRAM_INITSTAT_BNK7DONE_Field use
     (No_Bank7_Init => 0,
      Bank7_Init => 1);

   --  Initialization Status Register
   type SRAM_INITSTAT_Register is record
      --  Read-only. Bank 0 Initialization Status
      BNK0DONE      : SRAM_INITSTAT_BNK0DONE_Field;
      --  Read-only. Bank 1 Initialization Status
      BNK1DONE      : SRAM_INITSTAT_BNK1DONE_Field;
      --  Read-only. Bank 2 Initialization Status
      BNK2DONE      : SRAM_INITSTAT_BNK2DONE_Field;
      --  Read-only. Bank 3 Initialization Status
      BNK3DONE      : SRAM_INITSTAT_BNK3DONE_Field;
      --  Read-only. Bank 4 Initialization Status
      BNK4DONE      : SRAM_INITSTAT_BNK4DONE_Field;
      --  Read-only. Bank 5 Initialization Status
      BNK5DONE      : SRAM_INITSTAT_BNK5DONE_Field;
      --  Read-only. Bank 6 Initialization Status
      BNK6DONE      : SRAM_INITSTAT_BNK6DONE_Field;
      --  Read-only. Bank 7 Initialization Status
      BNK7DONE      : SRAM_INITSTAT_BNK7DONE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_INITSTAT_Register use record
      BNK0DONE      at 0 range 0 .. 0;
      BNK1DONE      at 0 range 1 .. 1;
      BNK2DONE      at 0 range 2 .. 2;
      BNK3DONE      at 0 range 3 .. 3;
      BNK4DONE      at 0 range 4 .. 4;
      BNK5DONE      at 0 range 5 .. 5;
      BNK6DONE      at 0 range 6 .. 6;
      BNK7DONE      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enables Fast Shutdown Wake-up
   type FAST_SHT_WAKEUP_FAST_SHT_WAKEUP_Field is
     (
      --  Fast shutdown wakeup is disabled
      Fastwake_Dis,
      --  Fast shutdown wakeup is enabled
      Fastwake_En)
     with Size => 1;
   for FAST_SHT_WAKEUP_FAST_SHT_WAKEUP_Field use
     (Fastwake_Dis => 0,
      Fastwake_En => 1);

   --  Fast Shutdown Wake-up Enable
   type FAST_SHT_WAKEUP_Register is record
      --  Enables Fast Shutdown Wake-up
      FAST_SHT_WAKEUP : FAST_SHT_WAKEUP_FAST_SHT_WAKEUP_Field :=
                         NRF_SVD.PMG0_TST.Fastwake_Dis;
      --  unspecified
      Reserved_1_31   : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FAST_SHT_WAKEUP_Register use record
      FAST_SHT_WAKEUP at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management
   type PMG0_TST_Peripheral is record
      --  Control for SRAM Parity and Instruction SRAM
      SRAM_CTL        : aliased SRAM_CTL_Register;
      --  Initialization Status Register
      SRAM_INITSTAT   : aliased SRAM_INITSTAT_Register;
      --  Clear GPIO After Shutdown Mode
      CLR_LATCH_GPIOS : aliased HAL.UInt16;
      --  Scratch Pad Image
      SCRPAD_IMG      : aliased HAL.UInt32;
      --  Scratch Pad Saved in Battery Domain
      SCRPAD_3V_RD    : aliased HAL.UInt32;
      --  Fast Shutdown Wake-up Enable
      FAST_SHT_WAKEUP : aliased FAST_SHT_WAKEUP_Register;
   end record
     with Volatile;

   for PMG0_TST_Peripheral use record
      SRAM_CTL        at 16#60# range 0 .. 31;
      SRAM_INITSTAT   at 16#64# range 0 .. 31;
      CLR_LATCH_GPIOS at 16#68# range 0 .. 15;
      SCRPAD_IMG      at 16#6C# range 0 .. 31;
      SCRPAD_3V_RD    at 16#70# range 0 .. 31;
      FAST_SHT_WAKEUP at 16#74# range 0 .. 31;
   end record;

   --  Power Management
   PMG0_TST_Periph : aliased PMG0_TST_Peripheral
     with Import, Address => System'To_Address (16#4004C200#);

end NRF_SVD.PMG0_TST;
