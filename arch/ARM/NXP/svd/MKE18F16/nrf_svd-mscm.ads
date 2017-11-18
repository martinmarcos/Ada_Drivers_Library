--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MSCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MSCM_CPxTYPE_RYPZ_Field is HAL.UInt8;
   subtype MSCM_CPxTYPE_PERSONALITY_Field is HAL.UInt24;

   --  Processor X Type Register
   type MSCM_CPxTYPE_Register is record
      --  Read-only. Processor x Revision
      RYPZ        : MSCM_CPxTYPE_RYPZ_Field;
      --  Read-only. Processor x Personality
      PERSONALITY : MSCM_CPxTYPE_PERSONALITY_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CPxTYPE_Register use record
      RYPZ        at 0 range 0 .. 7;
      PERSONALITY at 0 range 8 .. 31;
   end record;

   --  Processor X Number Register
   type MSCM_CPxNUM_Register is record
      --  Read-only. Processor x Number
      CPN           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CPxNUM_Register use record
      CPN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MSCM_CPxMASTER_PPN_Field is HAL.UInt6;

   --  Processor X Master Register
   type MSCM_CPxMASTER_Register is record
      --  Read-only. Processor x Physical Port Number
      PPN           : MSCM_CPxMASTER_PPN_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CPxMASTER_Register use record
      PPN           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MSCM_CPxCOUNT_PCNT_Field is HAL.UInt2;

   --  Processor X Count Register
   type MSCM_CPxCOUNT_Register is record
      --  Read-only. Processor Count
      PCNT          : MSCM_CPxCOUNT_PCNT_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CPxCOUNT_Register use record
      PCNT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MSCM_CPxCFG_ICSZ_Field is HAL.UInt8;

   --  Processor X Configuration Register
   type MSCM_CPxCFG_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24;
      --  Read-only. Level 1 Instruction Cache Size
      ICSZ          : MSCM_CPxCFG_ICSZ_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CPxCFG_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      ICSZ          at 0 range 24 .. 31;
   end record;

   --  Processor X Configuration Register
   type MSCM_CPxCFG_Registers is array (0 .. 3) of MSCM_CPxCFG_Register
     with Volatile;

   subtype MSCM_CP0TYPE_RYPZ_Field is HAL.UInt8;
   subtype MSCM_CP0TYPE_PERSONALITY_Field is HAL.UInt24;

   --  Processor 0 Type Register
   type MSCM_CP0TYPE_Register is record
      --  Read-only. Processor x Revision
      RYPZ        : MSCM_CP0TYPE_RYPZ_Field;
      --  Read-only. Processor x Personality
      PERSONALITY : MSCM_CP0TYPE_PERSONALITY_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CP0TYPE_Register use record
      RYPZ        at 0 range 0 .. 7;
      PERSONALITY at 0 range 8 .. 31;
   end record;

   --  Processor 0 Number Register
   type MSCM_CP0NUM_Register is record
      --  Read-only. Processor x Number
      CPN           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CP0NUM_Register use record
      CPN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MSCM_CP0MASTER_PPN_Field is HAL.UInt6;

   --  Processor 0 Master Register
   type MSCM_CP0MASTER_Register is record
      --  Read-only. Processor x Physical Port Number
      PPN           : MSCM_CP0MASTER_PPN_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CP0MASTER_Register use record
      PPN           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MSCM_CP0COUNT_PCNT_Field is HAL.UInt2;

   --  Processor 0 Count Register
   type MSCM_CP0COUNT_Register is record
      --  Read-only. Processor Count
      PCNT          : MSCM_CP0COUNT_PCNT_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CP0COUNT_Register use record
      PCNT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MSCM_CP0CFG_ICSZ_Field is HAL.UInt8;

   --  Processor 0 Configuration Register
   type MSCM_CP0CFG_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24;
      --  Read-only. Level 1 Instruction Cache Size
      ICSZ          : MSCM_CP0CFG_ICSZ_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CP0CFG_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      ICSZ          at 0 range 24 .. 31;
   end record;

   --  Processor 0 Configuration Register
   type MSCM_CP0CFG_Registers is array (0 .. 3) of MSCM_CP0CFG_Register
     with Volatile;

   --  MSCM_OCMDR_OCMC array element
   subtype MSCM_OCMDR_OCMC_Element is HAL.UInt4;

   --  MSCM_OCMDR_OCMC array
   type MSCM_OCMDR_OCMC_Field_Array is array (0 .. 2)
     of MSCM_OCMDR_OCMC_Element
     with Component_Size => 4, Size => 12;

   --  Type definition for MSCM_OCMDR_OCMC
   type MSCM_OCMDR_OCMC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OCMC as a value
            Val : HAL.UInt12;
         when True =>
            --  OCMC as an array
            Arr : MSCM_OCMDR_OCMC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for MSCM_OCMDR_OCMC_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  OCMEM Memory Protection Unit
   type OCMDR_OCMPU_Field is
     (
      --  OCMEMn is not protected by an MPU.
      Ocmpu_0,
      --  OCMEMn is protected by an MPU.
      Ocmpu_1)
     with Size => 1;
   for OCMDR_OCMPU_Field use
     (Ocmpu_0 => 0,
      Ocmpu_1 => 1);

   --  OCMEM Type. This field defines the type of the on-chip memory:
   type OCMDR_OCMT_Field is
     (
      --  Reset value for the field
      Ocmdr_Ocmt_Field_Reset,
      --  OCMEMn is a ROM.
      Ocmt_3,
      --  OCMEMn is a program flash.
      Ocmt_4,
      --  OCMEMn is a data flash.
      Ocmt_5,
      --  OCMEMn is an EEE.
      Ocmt_6)
     with Size => 3;
   for OCMDR_OCMT_Field use
     (Ocmdr_Ocmt_Field_Reset => 0,
      Ocmt_3 => 3,
      Ocmt_4 => 4,
      Ocmt_5 => 5,
      Ocmt_6 => 6);

   --  Read-Only
   type OCMDR_RO_Field is
     (
      --  writes to the OCMDRn[11:0] are allowed
      Ro_0,
      --  writes to the OCMDRn[11:0] are ignored
      Ro_1)
     with Size => 1;
   for OCMDR_RO_Field use
     (Ro_0 => 0,
      Ro_1 => 1);

   --  OCMEM datapath Width. This read-only field defines the width of the
   --  on-chip memory:
   type OCMDR_OCMW_Field is
     (
      --  Reset value for the field
      Ocmdr_Ocmw_Field_Reset,
      --  OCMEMn 32-bits wide
      Ocmw_2,
      --  OCMEMn 64-bits wide
      Ocmw_3,
      --  OCMEMn 128-bits wide
      Ocmw_4,
      --  OCMEMn 256-bits wide
      Ocmw_5)
     with Size => 3;
   for OCMDR_OCMW_Field use
     (Ocmdr_Ocmw_Field_Reset => 0,
      Ocmw_2 => 2,
      Ocmw_3 => 3,
      Ocmw_4 => 4,
      Ocmw_5 => 5);

   --  OCMEM Size
   type OCMDR_OCMSZ_Field is
     (
      --  no OCMEMn
      Ocmsz_0,
      --  4KB OCMEMn
      Ocmsz_3,
      --  8KB OCMEMn
      Ocmsz_4,
      --  16KB OCMEMn
      Ocmsz_5,
      --  32KB OCMEMn
      Ocmsz_6,
      --  64KB OCMEMn
      Ocmsz_7,
      --  128KB OCMEMn
      Ocmsz_8,
      --  256KB OCMEMn
      Ocmsz_9,
      --  512KB OCMEMn
      Ocmsz_10,
      --  1024KB OCMEMn
      Ocmsz_11,
      --  2048KB OCMEMn
      Ocmsz_12,
      --  4096KB OCMEMn
      Ocmsz_13,
      --  8192KB OCMEMn
      Ocmsz_14,
      --  16384KB OCMEMn
      Ocmsz_15)
     with Size => 4;
   for OCMDR_OCMSZ_Field use
     (Ocmsz_0 => 0,
      Ocmsz_3 => 3,
      Ocmsz_4 => 4,
      Ocmsz_5 => 5,
      Ocmsz_6 => 6,
      Ocmsz_7 => 7,
      Ocmsz_8 => 8,
      Ocmsz_9 => 9,
      Ocmsz_10 => 10,
      Ocmsz_11 => 11,
      Ocmsz_12 => 12,
      Ocmsz_13 => 13,
      Ocmsz_14 => 14,
      Ocmsz_15 => 15);

   --  OCMEM Size "Hole"
   type OCMDR_OCMSZH_Field is
     (
      --  OCMEMn is a power-of-2 capacity.
      Ocmszh_0,
      --  OCMEMn is not a power-of-2, with a capacity is 0.75 * OCMSZ.
      Ocmszh_1)
     with Size => 1;
   for OCMDR_OCMSZH_Field use
     (Ocmszh_0 => 0,
      Ocmszh_1 => 1);

   --  OCMEM Valid bit. This read-only field defines the validity (presence) of
   --  the on-chip memory
   type OCMDR_V_Field is
     (
      --  OCMEMn is not present.
      V_0,
      --  OCMEMn is present.
      V_1)
     with Size => 1;
   for OCMDR_V_Field use
     (V_0 => 0,
      V_1 => 1);

   --  On-Chip Memory Descriptor Register
   type MSCM_OCMDR_Register is record
      --  OCMEM Control Field 0
      OCMC           : MSCM_OCMDR_OCMC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Read-only. OCMEM Memory Protection Unit
      OCMPU          : OCMDR_OCMPU_Field := NRF_SVD.MSCM.Ocmpu_0;
      --  Read-only. OCMEM Type. This field defines the type of the on-chip
      --  memory:
      OCMT           : OCMDR_OCMT_Field := Ocmdr_Ocmt_Field_Reset;
      --  Read-only. Read-Only
      RO             : OCMDR_RO_Field := NRF_SVD.MSCM.Ro_0;
      --  Read-only. OCMEM datapath Width. This read-only field defines the
      --  width of the on-chip memory:
      OCMW           : OCMDR_OCMW_Field := Ocmdr_Ocmw_Field_Reset;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Read-only. OCMEM Size
      OCMSZ          : OCMDR_OCMSZ_Field := NRF_SVD.MSCM.Ocmsz_0;
      --  Read-only. OCMEM Size "Hole"
      OCMSZH         : OCMDR_OCMSZH_Field := NRF_SVD.MSCM.Ocmszh_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Read-only. OCMEM Valid bit. This read-only field defines the validity
      --  (presence) of the on-chip memory
      V              : OCMDR_V_Field := NRF_SVD.MSCM.V_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_OCMDR_Register use record
      OCMC           at 0 range 0 .. 11;
      OCMPU          at 0 range 12 .. 12;
      OCMT           at 0 range 13 .. 15;
      RO             at 0 range 16 .. 16;
      OCMW           at 0 range 17 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      OCMSZ          at 0 range 24 .. 27;
      OCMSZH         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      V              at 0 range 31 .. 31;
   end record;

   --  On-Chip Memory Descriptor Register
   type MSCM_OCMDR_Registers is array (0 .. 3) of MSCM_OCMDR_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  MSCM
   type MSCM_Peripheral is record
      --  Processor X Type Register
      CPxTYPE   : aliased MSCM_CPxTYPE_Register;
      --  Processor X Number Register
      CPxNUM    : aliased MSCM_CPxNUM_Register;
      --  Processor X Master Register
      CPxMASTER : aliased MSCM_CPxMASTER_Register;
      --  Processor X Count Register
      CPxCOUNT  : aliased MSCM_CPxCOUNT_Register;
      --  Processor X Configuration Register
      CPxCFG    : aliased MSCM_CPxCFG_Registers;
      --  Processor 0 Type Register
      CP0TYPE   : aliased MSCM_CP0TYPE_Register;
      --  Processor 0 Number Register
      CP0NUM    : aliased MSCM_CP0NUM_Register;
      --  Processor 0 Master Register
      CP0MASTER : aliased MSCM_CP0MASTER_Register;
      --  Processor 0 Count Register
      CP0COUNT  : aliased MSCM_CP0COUNT_Register;
      --  Processor 0 Configuration Register
      CP0CFG    : aliased MSCM_CP0CFG_Registers;
      --  On-Chip Memory Descriptor Register
      OCMDR     : aliased MSCM_OCMDR_Registers;
   end record
     with Volatile;

   for MSCM_Peripheral use record
      CPxTYPE   at 16#0# range 0 .. 31;
      CPxNUM    at 16#4# range 0 .. 31;
      CPxMASTER at 16#8# range 0 .. 31;
      CPxCOUNT  at 16#C# range 0 .. 31;
      CPxCFG    at 16#10# range 0 .. 127;
      CP0TYPE   at 16#20# range 0 .. 31;
      CP0NUM    at 16#24# range 0 .. 31;
      CP0MASTER at 16#28# range 0 .. 31;
      CP0COUNT  at 16#2C# range 0 .. 31;
      CP0CFG    at 16#30# range 0 .. 127;
      OCMDR     at 16#400# range 0 .. 127;
   end record;

   --  MSCM
   MSCM_Periph : aliased MSCM_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end NRF_SVD.MSCM;
