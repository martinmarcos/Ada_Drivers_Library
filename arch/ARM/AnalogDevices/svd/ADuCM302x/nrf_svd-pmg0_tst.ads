--

--  This spec has been automatically generated from ADuCM302x.svd

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
   type SRAM_CTL_PENBNK_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for SRAM_CTL_PENBNK
   type SRAM_CTL_PENBNK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PENBNK as a value
            Val : HAL.UInt6;
         when True =>
            --  PENBNK as an array
            Arr : SRAM_CTL_PENBNK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for SRAM_CTL_PENBNK_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Control for SRAM Parity and Instruction SRAM
   type SRAM_CTL_Register is record
      --  Enable Initialization of SRAM Bank 0
      BNK0EN         : Boolean := False;
      --  Enable Initialization of SRAM Bank 1
      BNK1EN         : Boolean := False;
      --  Enable Initialization of SRAM Bank 2
      BNK2EN         : Boolean := False;
      --  Enable Initialization of SRAM Bank 3
      BNK3EN         : Boolean := False;
      --  Enable Initialization of SRAM Bank 4
      BNK4EN         : Boolean := False;
      --  Enable Initialization of SRAM Bank 5
      BNK5EN         : Boolean := False;
      --  unspecified
      Reserved_6_12  : HAL.UInt7 := 16#0#;
      --  Write 1 to Trigger Initialization
      STARTINIT      : Boolean := False;
      --  Automatic Initialization on Wakeup from Hibernate Mode
      AUTOINIT       : Boolean := False;
      --  Abort Current Initialization. Self-cleared
      ABTINIT        : Boolean := False;
      --  Enable Parity Check SRAM Bank 0
      PENBNK         : SRAM_CTL_PENBNK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Enables Instruction SRAM
      INSTREN        : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_CTL_Register use record
      BNK0EN         at 0 range 0 .. 0;
      BNK1EN         at 0 range 1 .. 1;
      BNK2EN         at 0 range 2 .. 2;
      BNK3EN         at 0 range 3 .. 3;
      BNK4EN         at 0 range 4 .. 4;
      BNK5EN         at 0 range 5 .. 5;
      Reserved_6_12  at 0 range 6 .. 12;
      STARTINIT      at 0 range 13 .. 13;
      AUTOINIT       at 0 range 14 .. 14;
      ABTINIT        at 0 range 15 .. 15;
      PENBNK         at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      INSTREN        at 0 range 31 .. 31;
   end record;

   --  SRAM_INITSTAT_BNK array
   type SRAM_INITSTAT_BNK_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for SRAM_INITSTAT_BNK
   type SRAM_INITSTAT_BNK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BNK as a value
            Val : HAL.UInt6;
         when True =>
            --  BNK as an array
            Arr : SRAM_INITSTAT_BNK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for SRAM_INITSTAT_BNK_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Initialization Status Register
   type SRAM_INITSTAT_Register is record
      --  Read-only. Initialization Done of SRAM Bank 0
      BNK           : SRAM_INITSTAT_BNK_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_INITSTAT_Register use record
      BNK           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
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
   end record
     with Volatile;

   for PMG0_TST_Peripheral use record
      SRAM_CTL        at 16#60# range 0 .. 31;
      SRAM_INITSTAT   at 16#64# range 0 .. 31;
      CLR_LATCH_GPIOS at 16#68# range 0 .. 15;
      SCRPAD_IMG      at 16#6C# range 0 .. 31;
      SCRPAD_3V_RD    at 16#70# range 0 .. 31;
   end record;

   --  Power Management
   PMG0_TST_Periph : aliased PMG0_TST_Peripheral
     with Import, Address => System'To_Address (16#4004C200#);

end NRF_SVD.PMG0_TST;
