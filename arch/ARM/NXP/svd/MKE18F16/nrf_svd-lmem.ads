--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LMEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Cache enable
   type PCCCR_ENCACHE_Field is
     (
      --  Cache disabled
      Encache_0,
      --  Cache enabled
      Encache_1)
     with Size => 1;
   for PCCCR_ENCACHE_Field use
     (Encache_0 => 0,
      Encache_1 => 1);

   --  Enable Write Buffer
   type PCCCR_ENWRBUF_Field is
     (
      --  Write buffer disabled
      Enwrbuf_0,
      --  Write buffer enabled
      Enwrbuf_1)
     with Size => 1;
   for PCCCR_ENWRBUF_Field use
     (Enwrbuf_0 => 0,
      Enwrbuf_1 => 1);

   --  LMEM_PCCCR_PCCR array
   type LMEM_PCCCR_PCCR_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for LMEM_PCCCR_PCCR
   type LMEM_PCCCR_PCCR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCCR as a value
            Val : HAL.UInt2;
         when True =>
            --  PCCR as an array
            Arr : LMEM_PCCCR_PCCR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for LMEM_PCCCR_PCCR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Invalidate Way 0
   type PCCCR_INVW0_Field is
     (
      --  No operation
      Invw0_0,
      --  When setting the GO bit, invalidate all lines in way 0.
      Invw0_1)
     with Size => 1;
   for PCCCR_INVW0_Field use
     (Invw0_0 => 0,
      Invw0_1 => 1);

   --  Push Way 0
   type PCCCR_PUSHW0_Field is
     (
      --  No operation
      Pushw0_0,
      --  When setting the GO bit, push all modified lines in way 0
      Pushw0_1)
     with Size => 1;
   for PCCCR_PUSHW0_Field use
     (Pushw0_0 => 0,
      Pushw0_1 => 1);

   --  Invalidate Way 1
   type PCCCR_INVW1_Field is
     (
      --  No operation
      Invw1_0,
      --  When setting the GO bit, invalidate all lines in way 1
      Invw1_1)
     with Size => 1;
   for PCCCR_INVW1_Field use
     (Invw1_0 => 0,
      Invw1_1 => 1);

   --  Push Way 1
   type PCCCR_PUSHW1_Field is
     (
      --  No operation
      Pushw1_0,
      --  When setting the GO bit, push all modified lines in way 1
      Pushw1_1)
     with Size => 1;
   for PCCCR_PUSHW1_Field use
     (Pushw1_0 => 0,
      Pushw1_1 => 1);

   --  Initiate Cache Command
   type PCCCR_GO_Field is
     (
      --  Write: no effect. Read: no cache command active.
      Go_0,
      --  Write: initiate command indicated by bits 27-24. Read: cache command
      --  active.
      Go_1)
     with Size => 1;
   for PCCCR_GO_Field use
     (Go_0 => 0,
      Go_1 => 1);

   --  Cache control register
   type LMEM_PCCCR_Register is record
      --  Cache enable
      ENCACHE        : PCCCR_ENCACHE_Field := NRF_SVD.LMEM.Encache_0;
      --  Enable Write Buffer
      ENWRBUF        : PCCCR_ENWRBUF_Field := NRF_SVD.LMEM.Enwrbuf_0;
      --  Forces all cacheable spaces to write through
      PCCR           : LMEM_PCCCR_PCCR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_23  : HAL.UInt20 := 16#0#;
      --  Invalidate Way 0
      INVW0          : PCCCR_INVW0_Field := NRF_SVD.LMEM.Invw0_0;
      --  Push Way 0
      PUSHW0         : PCCCR_PUSHW0_Field := NRF_SVD.LMEM.Pushw0_0;
      --  Invalidate Way 1
      INVW1          : PCCCR_INVW1_Field := NRF_SVD.LMEM.Invw1_0;
      --  Push Way 1
      PUSHW1         : PCCCR_PUSHW1_Field := NRF_SVD.LMEM.Pushw1_0;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Initiate Cache Command
      GO             : PCCCR_GO_Field := NRF_SVD.LMEM.Go_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LMEM_PCCCR_Register use record
      ENCACHE        at 0 range 0 .. 0;
      ENWRBUF        at 0 range 1 .. 1;
      PCCR           at 0 range 2 .. 3;
      Reserved_4_23  at 0 range 4 .. 23;
      INVW0          at 0 range 24 .. 24;
      PUSHW0         at 0 range 25 .. 25;
      INVW1          at 0 range 26 .. 26;
      PUSHW1         at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      GO             at 0 range 31 .. 31;
   end record;

   --  Initiate Cache Line Command
   type PCCLCR_LGO_Field is
     (
      --  Write: no effect. Read: no line command active.
      Lgo_0,
      --  Write: initiate line command indicated by bits 27-24. Read: line
      --  command active.
      Lgo_1)
     with Size => 1;
   for PCCLCR_LGO_Field use
     (Lgo_0 => 0,
      Lgo_1 => 1);

   subtype LMEM_PCCLCR_CACHEADDR_Field is HAL.UInt12;

   --  Way select
   type PCCLCR_WSEL_Field is
     (
      --  Way 0
      Wsel_0,
      --  Way 1
      Wsel_1)
     with Size => 1;
   for PCCLCR_WSEL_Field use
     (Wsel_0 => 0,
      Wsel_1 => 1);

   --  Tag/Data Select
   type PCCLCR_TDSEL_Field is
     (
      --  Data
      Tdsel_0,
      --  Tag
      Tdsel_1)
     with Size => 1;
   for PCCLCR_TDSEL_Field use
     (Tdsel_0 => 0,
      Tdsel_1 => 1);

   --  Line Command
   type PCCLCR_LCMD_Field is
     (
      --  Search and read or write
      Lcmd_0,
      --  Invalidate
      Lcmd_1,
      --  Push
      Lcmd_2,
      --  Clear
      Lcmd_3)
     with Size => 2;
   for PCCLCR_LCMD_Field use
     (Lcmd_0 => 0,
      Lcmd_1 => 1,
      Lcmd_2 => 2,
      Lcmd_3 => 3);

   --  Line Address Select
   type PCCLCR_LADSEL_Field is
     (
      --  Cache address
      Ladsel_0,
      --  Physical address
      Ladsel_1)
     with Size => 1;
   for PCCLCR_LADSEL_Field use
     (Ladsel_0 => 0,
      Ladsel_1 => 1);

   --  Line access type
   type PCCLCR_LACC_Field is
     (
      --  Read
      Lacc_0,
      --  Write
      Lacc_1)
     with Size => 1;
   for PCCLCR_LACC_Field use
     (Lacc_0 => 0,
      Lacc_1 => 1);

   --  Cache line control register
   type LMEM_PCCLCR_Register is record
      --  Initiate Cache Line Command
      LGO            : PCCLCR_LGO_Field := NRF_SVD.LMEM.Lgo_0;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Cache address
      CACHEADDR      : LMEM_PCCLCR_CACHEADDR_Field := 16#0#;
      --  Way select
      WSEL           : PCCLCR_WSEL_Field := NRF_SVD.LMEM.Wsel_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Tag/Data Select
      TDSEL          : PCCLCR_TDSEL_Field := NRF_SVD.LMEM.Tdsel_0;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Read-only. Line Command Initial Valid Bit
      LCIVB          : Boolean := False;
      --  Read-only. Line Command Initial Modified Bit
      LCIMB          : Boolean := False;
      --  Read-only. Line Command Way
      LCWAY          : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Line Command
      LCMD           : PCCLCR_LCMD_Field := NRF_SVD.LMEM.Lcmd_0;
      --  Line Address Select
      LADSEL         : PCCLCR_LADSEL_Field := NRF_SVD.LMEM.Ladsel_0;
      --  Line access type
      LACC           : PCCLCR_LACC_Field := NRF_SVD.LMEM.Lacc_0;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LMEM_PCCLCR_Register use record
      LGO            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CACHEADDR      at 0 range 2 .. 13;
      WSEL           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDSEL          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      LCIVB          at 0 range 20 .. 20;
      LCIMB          at 0 range 21 .. 21;
      LCWAY          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LCMD           at 0 range 24 .. 25;
      LADSEL         at 0 range 26 .. 26;
      LACC           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Initiate Cache Line Command
   type PCCSAR_LGO_Field is
     (
      --  Write: no effect. Read: no line command active.
      Lgo_0,
      --  Write: initiate line command indicated by bits CLCR[27:24]. Read:
      --  line command active.
      Lgo_1)
     with Size => 1;
   for PCCSAR_LGO_Field use
     (Lgo_0 => 0,
      Lgo_1 => 1);

   subtype LMEM_PCCSAR_PHYADDR_Field is HAL.UInt30;

   --  Cache search address register
   type LMEM_PCCSAR_Register is record
      --  Initiate Cache Line Command
      LGO          : PCCSAR_LGO_Field := NRF_SVD.LMEM.Lgo_0;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Physical Address
      PHYADDR      : LMEM_PCCSAR_PHYADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LMEM_PCCSAR_Register use record
      LGO          at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      PHYADDR      at 0 range 2 .. 31;
   end record;

   --  Region 15 mode
   type PCCRMR_R15_Field is
     (
      --  Non-cacheable
      R15_0,
      --  Non-cacheable
      R15_1,
      --  Write-through
      R15_2,
      --  Write-back
      R15_3)
     with Size => 2;
   for PCCRMR_R15_Field use
     (R15_0 => 0,
      R15_1 => 1,
      R15_2 => 2,
      R15_3 => 3);

   --  Region 14 mode
   type PCCRMR_R14_Field is
     (
      --  Non-cacheable
      R14_0,
      --  Non-cacheable
      R14_1,
      --  Write-through
      R14_2,
      --  Write-back
      R14_3)
     with Size => 2;
   for PCCRMR_R14_Field use
     (R14_0 => 0,
      R14_1 => 1,
      R14_2 => 2,
      R14_3 => 3);

   --  Region 13 mode
   type PCCRMR_R13_Field is
     (
      --  Non-cacheable
      R13_0,
      --  Non-cacheable
      R13_1,
      --  Write-through
      R13_2,
      --  Write-back
      R13_3)
     with Size => 2;
   for PCCRMR_R13_Field use
     (R13_0 => 0,
      R13_1 => 1,
      R13_2 => 2,
      R13_3 => 3);

   --  Region 12 mode
   type PCCRMR_R12_Field is
     (
      --  Non-cacheable
      R12_0,
      --  Non-cacheable
      R12_1,
      --  Write-through
      R12_2,
      --  Write-back
      R12_3)
     with Size => 2;
   for PCCRMR_R12_Field use
     (R12_0 => 0,
      R12_1 => 1,
      R12_2 => 2,
      R12_3 => 3);

   --  Region 11 mode
   type PCCRMR_R11_Field is
     (
      --  Non-cacheable
      R11_0,
      --  Non-cacheable
      R11_1,
      --  Write-through
      R11_2,
      --  Write-back
      R11_3)
     with Size => 2;
   for PCCRMR_R11_Field use
     (R11_0 => 0,
      R11_1 => 1,
      R11_2 => 2,
      R11_3 => 3);

   --  Region 10 mode
   type PCCRMR_R10_Field is
     (
      --  Non-cacheable
      R10_0,
      --  Non-cacheable
      R10_1,
      --  Write-through
      R10_2,
      --  Write-back
      R10_3)
     with Size => 2;
   for PCCRMR_R10_Field use
     (R10_0 => 0,
      R10_1 => 1,
      R10_2 => 2,
      R10_3 => 3);

   --  Region 9 mode
   type PCCRMR_R9_Field is
     (
      --  Non-cacheable
      R9_0,
      --  Non-cacheable
      R9_1,
      --  Write-through
      R9_2,
      --  Write-back
      R9_3)
     with Size => 2;
   for PCCRMR_R9_Field use
     (R9_0 => 0,
      R9_1 => 1,
      R9_2 => 2,
      R9_3 => 3);

   --  Region 8 mode
   type PCCRMR_R8_Field is
     (
      --  Non-cacheable
      R8_0,
      --  Non-cacheable
      R8_1,
      --  Write-through
      R8_2,
      --  Write-back
      R8_3)
     with Size => 2;
   for PCCRMR_R8_Field use
     (R8_0 => 0,
      R8_1 => 1,
      R8_2 => 2,
      R8_3 => 3);

   --  Region 7 mode
   type PCCRMR_R7_Field is
     (
      --  Non-cacheable
      R7_0,
      --  Non-cacheable
      R7_1,
      --  Write-through
      R7_2,
      --  Write-back
      R7_3)
     with Size => 2;
   for PCCRMR_R7_Field use
     (R7_0 => 0,
      R7_1 => 1,
      R7_2 => 2,
      R7_3 => 3);

   --  Region 6 mode
   type PCCRMR_R6_Field is
     (
      --  Non-cacheable
      R6_0,
      --  Non-cacheable
      R6_1,
      --  Write-through
      R6_2,
      --  Write-back
      R6_3)
     with Size => 2;
   for PCCRMR_R6_Field use
     (R6_0 => 0,
      R6_1 => 1,
      R6_2 => 2,
      R6_3 => 3);

   --  Region 5 mode
   type PCCRMR_R5_Field is
     (
      --  Non-cacheable
      R5_0,
      --  Non-cacheable
      R5_1,
      --  Write-through
      R5_2,
      --  Write-back
      R5_3)
     with Size => 2;
   for PCCRMR_R5_Field use
     (R5_0 => 0,
      R5_1 => 1,
      R5_2 => 2,
      R5_3 => 3);

   --  Region 4 mode
   type PCCRMR_R4_Field is
     (
      --  Non-cacheable
      R4_0,
      --  Non-cacheable
      R4_1,
      --  Write-through
      R4_2,
      --  Write-back
      R4_3)
     with Size => 2;
   for PCCRMR_R4_Field use
     (R4_0 => 0,
      R4_1 => 1,
      R4_2 => 2,
      R4_3 => 3);

   --  Region 3 mode
   type PCCRMR_R3_Field is
     (
      --  Non-cacheable
      R3_0,
      --  Non-cacheable
      R3_1,
      --  Write-through
      R3_2,
      --  Write-back
      R3_3)
     with Size => 2;
   for PCCRMR_R3_Field use
     (R3_0 => 0,
      R3_1 => 1,
      R3_2 => 2,
      R3_3 => 3);

   --  Region 2 mode
   type PCCRMR_R2_Field is
     (
      --  Non-cacheable
      R2_0,
      --  Non-cacheable
      R2_1,
      --  Write-through
      R2_2,
      --  Write-back
      R2_3)
     with Size => 2;
   for PCCRMR_R2_Field use
     (R2_0 => 0,
      R2_1 => 1,
      R2_2 => 2,
      R2_3 => 3);

   --  Region 1 mode
   type PCCRMR_R1_Field is
     (
      --  Non-cacheable
      R1_0,
      --  Non-cacheable
      R1_1,
      --  Write-through
      R1_2,
      --  Write-back
      R1_3)
     with Size => 2;
   for PCCRMR_R1_Field use
     (R1_0 => 0,
      R1_1 => 1,
      R1_2 => 2,
      R1_3 => 3);

   --  Region 0 mode
   type PCCRMR_R0_Field is
     (
      --  Non-cacheable
      R0_0,
      --  Non-cacheable
      R0_1,
      --  Write-through
      R0_2,
      --  Write-back
      R0_3)
     with Size => 2;
   for PCCRMR_R0_Field use
     (R0_0 => 0,
      R0_1 => 1,
      R0_2 => 2,
      R0_3 => 3);

   --  Cache regions mode register
   type LMEM_PCCRMR_Register is record
      --  Region 15 mode
      R15 : PCCRMR_R15_Field := NRF_SVD.LMEM.R15_0;
      --  Region 14 mode
      R14 : PCCRMR_R14_Field := NRF_SVD.LMEM.R14_0;
      --  Region 13 mode
      R13 : PCCRMR_R13_Field := NRF_SVD.LMEM.R13_0;
      --  Region 12 mode
      R12 : PCCRMR_R12_Field := NRF_SVD.LMEM.R12_0;
      --  Region 11 mode
      R11 : PCCRMR_R11_Field := NRF_SVD.LMEM.R11_0;
      --  Region 10 mode
      R10 : PCCRMR_R10_Field := NRF_SVD.LMEM.R10_0;
      --  Region 9 mode
      R9  : PCCRMR_R9_Field := NRF_SVD.LMEM.R9_2;
      --  Region 8 mode
      R8  : PCCRMR_R8_Field := NRF_SVD.LMEM.R8_2;
      --  Region 7 mode
      R7  : PCCRMR_R7_Field := NRF_SVD.LMEM.R7_3;
      --  Region 6 mode
      R6  : PCCRMR_R6_Field := NRF_SVD.LMEM.R6_3;
      --  Region 5 mode
      R5  : PCCRMR_R5_Field := NRF_SVD.LMEM.R5_0;
      --  Region 4 mode
      R4  : PCCRMR_R4_Field := NRF_SVD.LMEM.R4_0;
      --  Region 3 mode
      R3  : PCCRMR_R3_Field := NRF_SVD.LMEM.R3_2;
      --  Region 2 mode
      R2  : PCCRMR_R2_Field := NRF_SVD.LMEM.R2_2;
      --  Region 1 mode
      R1  : PCCRMR_R1_Field := NRF_SVD.LMEM.R1_2;
      --  Region 0 mode
      R0  : PCCRMR_R0_Field := NRF_SVD.LMEM.R0_2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LMEM_PCCRMR_Register use record
      R15 at 0 range 0 .. 1;
      R14 at 0 range 2 .. 3;
      R13 at 0 range 4 .. 5;
      R12 at 0 range 6 .. 7;
      R11 at 0 range 8 .. 9;
      R10 at 0 range 10 .. 11;
      R9  at 0 range 12 .. 13;
      R8  at 0 range 14 .. 15;
      R7  at 0 range 16 .. 17;
      R6  at 0 range 18 .. 19;
      R5  at 0 range 20 .. 21;
      R4  at 0 range 22 .. 23;
      R3  at 0 range 24 .. 25;
      R2  at 0 range 26 .. 27;
      R1  at 0 range 28 .. 29;
      R0  at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Local Memory Controller
   type LMEM_Peripheral is record
      --  Cache control register
      PCCCR  : aliased LMEM_PCCCR_Register;
      --  Cache line control register
      PCCLCR : aliased LMEM_PCCLCR_Register;
      --  Cache search address register
      PCCSAR : aliased LMEM_PCCSAR_Register;
      --  Cache read/write value register
      PCCCVR : aliased HAL.UInt32;
      --  Cache regions mode register
      PCCRMR : aliased LMEM_PCCRMR_Register;
   end record
     with Volatile;

   for LMEM_Peripheral use record
      PCCCR  at 16#0# range 0 .. 31;
      PCCLCR at 16#4# range 0 .. 31;
      PCCSAR at 16#8# range 0 .. 31;
      PCCCVR at 16#C# range 0 .. 31;
      PCCRMR at 16#20# range 0 .. 31;
   end record;

   --  Local Memory Controller
   LMEM_Periph : aliased LMEM_Peripheral
     with Import, Address => System'To_Address (16#E0082000#);

end NRF_SVD.LMEM;
