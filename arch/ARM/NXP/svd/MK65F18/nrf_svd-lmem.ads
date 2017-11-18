--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK65F18.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Local Memory Controller
package NRF_SVD.LMEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Cache enable
   type PCCCR_ENCACHE_Field is
     (
      --  Cache disabled
      PCCCR_ENCACHE_Field_0,
      --  Cache enabled
      PCCCR_ENCACHE_Field_1)
     with Size => 1;
   for PCCCR_ENCACHE_Field use
     (PCCCR_ENCACHE_Field_0 => 0,
      PCCCR_ENCACHE_Field_1 => 1);

   --  Enable Write Buffer
   type PCCCR_ENWRBUF_Field is
     (
      --  Write buffer disabled
      PCCCR_ENWRBUF_Field_0,
      --  Write buffer enabled
      PCCCR_ENWRBUF_Field_1)
     with Size => 1;
   for PCCCR_ENWRBUF_Field use
     (PCCCR_ENWRBUF_Field_0 => 0,
      PCCCR_ENWRBUF_Field_1 => 1);

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
      PCCCR_INVW0_Field_0,
      --  When setting the GO bit, invalidate all lines in way 0.
      PCCCR_INVW0_Field_1)
     with Size => 1;
   for PCCCR_INVW0_Field use
     (PCCCR_INVW0_Field_0 => 0,
      PCCCR_INVW0_Field_1 => 1);

   --  Push Way 0
   type PCCCR_PUSHW0_Field is
     (
      --  No operation
      PCCCR_PUSHW0_Field_0,
      --  When setting the GO bit, push all modified lines in way 0
      PCCCR_PUSHW0_Field_1)
     with Size => 1;
   for PCCCR_PUSHW0_Field use
     (PCCCR_PUSHW0_Field_0 => 0,
      PCCCR_PUSHW0_Field_1 => 1);

   --  Invalidate Way 1
   type PCCCR_INVW1_Field is
     (
      --  No operation
      PCCCR_INVW1_Field_0,
      --  When setting the GO bit, invalidate all lines in way 1
      PCCCR_INVW1_Field_1)
     with Size => 1;
   for PCCCR_INVW1_Field use
     (PCCCR_INVW1_Field_0 => 0,
      PCCCR_INVW1_Field_1 => 1);

   --  Push Way 1
   type PCCCR_PUSHW1_Field is
     (
      --  No operation
      PCCCR_PUSHW1_Field_0,
      --  When setting the GO bit, push all modified lines in way 1
      PCCCR_PUSHW1_Field_1)
     with Size => 1;
   for PCCCR_PUSHW1_Field use
     (PCCCR_PUSHW1_Field_0 => 0,
      PCCCR_PUSHW1_Field_1 => 1);

   --  Initiate Cache Command
   type PCCCR_GO_Field is
     (
      --  Write: no effect. Read: no cache command active.
      PCCCR_GO_Field_0,
      --  Write: initiate command indicated by bits 27-24. Read: cache command
      --  active.
      PCCCR_GO_Field_1)
     with Size => 1;
   for PCCCR_GO_Field use
     (PCCCR_GO_Field_0 => 0,
      PCCCR_GO_Field_1 => 1);

   --  Cache control register
   type LMEM_PCCCR_Register is record
      --  Cache enable
      ENCACHE        : PCCCR_ENCACHE_Field :=
                        NRF_SVD.LMEM.PCCCR_ENCACHE_Field_0;
      --  Enable Write Buffer
      ENWRBUF        : PCCCR_ENWRBUF_Field :=
                        NRF_SVD.LMEM.PCCCR_ENWRBUF_Field_0;
      --  Forces all cacheable spaces to write through
      PCCR           : LMEM_PCCCR_PCCR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_23  : HAL.UInt20 := 16#0#;
      --  Invalidate Way 0
      INVW0          : PCCCR_INVW0_Field := NRF_SVD.LMEM.PCCCR_INVW0_Field_0;
      --  Push Way 0
      PUSHW0         : PCCCR_PUSHW0_Field :=
                        NRF_SVD.LMEM.PCCCR_PUSHW0_Field_0;
      --  Invalidate Way 1
      INVW1          : PCCCR_INVW1_Field := NRF_SVD.LMEM.PCCCR_INVW1_Field_0;
      --  Push Way 1
      PUSHW1         : PCCCR_PUSHW1_Field :=
                        NRF_SVD.LMEM.PCCCR_PUSHW1_Field_0;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Initiate Cache Command
      GO             : PCCCR_GO_Field := NRF_SVD.LMEM.PCCCR_GO_Field_0;
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
      PCCLCR_LGO_Field_0,
      --  Write: initiate line command indicated by bits 27-24. Read: line
      --  command active.
      PCCLCR_LGO_Field_1)
     with Size => 1;
   for PCCLCR_LGO_Field use
     (PCCLCR_LGO_Field_0 => 0,
      PCCLCR_LGO_Field_1 => 1);

   subtype LMEM_PCCLCR_CACHEADDR_Field is HAL.UInt10;

   --  Way select
   type PCCLCR_WSEL_Field is
     (
      --  Way 0
      PCCLCR_WSEL_Field_0,
      --  Way 1
      PCCLCR_WSEL_Field_1)
     with Size => 1;
   for PCCLCR_WSEL_Field use
     (PCCLCR_WSEL_Field_0 => 0,
      PCCLCR_WSEL_Field_1 => 1);

   --  Tag/Data Select
   type PCCLCR_TDSEL_Field is
     (
      --  Data
      PCCLCR_TDSEL_Field_0,
      --  Tag
      PCCLCR_TDSEL_Field_1)
     with Size => 1;
   for PCCLCR_TDSEL_Field use
     (PCCLCR_TDSEL_Field_0 => 0,
      PCCLCR_TDSEL_Field_1 => 1);

   --  Line Command
   type PCCLCR_LCMD_Field is
     (
      --  Search and read or write
      PCCLCR_LCMD_Field_00,
      --  Invalidate
      PCCLCR_LCMD_Field_01,
      --  Push
      PCCLCR_LCMD_Field_10,
      --  Clear
      PCCLCR_LCMD_Field_11)
     with Size => 2;
   for PCCLCR_LCMD_Field use
     (PCCLCR_LCMD_Field_00 => 0,
      PCCLCR_LCMD_Field_01 => 1,
      PCCLCR_LCMD_Field_10 => 2,
      PCCLCR_LCMD_Field_11 => 3);

   --  Line Address Select
   type PCCLCR_LADSEL_Field is
     (
      --  Cache address
      PCCLCR_LADSEL_Field_0,
      --  Physical address
      PCCLCR_LADSEL_Field_1)
     with Size => 1;
   for PCCLCR_LADSEL_Field use
     (PCCLCR_LADSEL_Field_0 => 0,
      PCCLCR_LADSEL_Field_1 => 1);

   --  Line access type
   type PCCLCR_LACC_Field is
     (
      --  Read
      PCCLCR_LACC_Field_0,
      --  Write
      PCCLCR_LACC_Field_1)
     with Size => 1;
   for PCCLCR_LACC_Field use
     (PCCLCR_LACC_Field_0 => 0,
      PCCLCR_LACC_Field_1 => 1);

   --  Cache line control register
   type LMEM_PCCLCR_Register is record
      --  Initiate Cache Line Command
      LGO            : PCCLCR_LGO_Field := NRF_SVD.LMEM.PCCLCR_LGO_Field_0;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Cache address
      CACHEADDR      : LMEM_PCCLCR_CACHEADDR_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Way select
      WSEL           : PCCLCR_WSEL_Field := NRF_SVD.LMEM.PCCLCR_WSEL_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Tag/Data Select
      TDSEL          : PCCLCR_TDSEL_Field :=
                        NRF_SVD.LMEM.PCCLCR_TDSEL_Field_0;
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
      LCMD           : PCCLCR_LCMD_Field := NRF_SVD.LMEM.PCCLCR_LCMD_Field_00;
      --  Line Address Select
      LADSEL         : PCCLCR_LADSEL_Field :=
                        NRF_SVD.LMEM.PCCLCR_LADSEL_Field_0;
      --  Line access type
      LACC           : PCCLCR_LACC_Field := NRF_SVD.LMEM.PCCLCR_LACC_Field_0;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LMEM_PCCLCR_Register use record
      LGO            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CACHEADDR      at 0 range 2 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
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
      PCCSAR_LGO_Field_0,
      --  Write: initiate line command indicated by bits CLCR[27:24]. Read:
      --  line command active.
      PCCSAR_LGO_Field_1)
     with Size => 1;
   for PCCSAR_LGO_Field use
     (PCCSAR_LGO_Field_0 => 0,
      PCCSAR_LGO_Field_1 => 1);

   subtype LMEM_PCCSAR_PHYADDR_Field is HAL.UInt30;

   --  Cache search address register
   type LMEM_PCCSAR_Register is record
      --  Initiate Cache Line Command
      LGO          : PCCSAR_LGO_Field := NRF_SVD.LMEM.PCCSAR_LGO_Field_0;
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
      PCCRMR_R15_Field_00,
      --  Non-cacheable
      PCCRMR_R15_Field_01,
      --  Write-through
      PCCRMR_R15_Field_10,
      --  Write-back
      PCCRMR_R15_Field_11)
     with Size => 2;
   for PCCRMR_R15_Field use
     (PCCRMR_R15_Field_00 => 0,
      PCCRMR_R15_Field_01 => 1,
      PCCRMR_R15_Field_10 => 2,
      PCCRMR_R15_Field_11 => 3);

   --  Region 14 mode
   type PCCRMR_R14_Field is
     (
      --  Non-cacheable
      PCCRMR_R14_Field_00,
      --  Non-cacheable
      PCCRMR_R14_Field_01,
      --  Write-through
      PCCRMR_R14_Field_10,
      --  Write-back
      PCCRMR_R14_Field_11)
     with Size => 2;
   for PCCRMR_R14_Field use
     (PCCRMR_R14_Field_00 => 0,
      PCCRMR_R14_Field_01 => 1,
      PCCRMR_R14_Field_10 => 2,
      PCCRMR_R14_Field_11 => 3);

   --  Region 13 mode
   type PCCRMR_R13_Field is
     (
      --  Non-cacheable
      PCCRMR_R13_Field_00,
      --  Non-cacheable
      PCCRMR_R13_Field_01,
      --  Write-through
      PCCRMR_R13_Field_10,
      --  Write-back
      PCCRMR_R13_Field_11)
     with Size => 2;
   for PCCRMR_R13_Field use
     (PCCRMR_R13_Field_00 => 0,
      PCCRMR_R13_Field_01 => 1,
      PCCRMR_R13_Field_10 => 2,
      PCCRMR_R13_Field_11 => 3);

   --  Region 12 mode
   type PCCRMR_R12_Field is
     (
      --  Non-cacheable
      PCCRMR_R12_Field_00,
      --  Non-cacheable
      PCCRMR_R12_Field_01,
      --  Write-through
      PCCRMR_R12_Field_10,
      --  Write-back
      PCCRMR_R12_Field_11)
     with Size => 2;
   for PCCRMR_R12_Field use
     (PCCRMR_R12_Field_00 => 0,
      PCCRMR_R12_Field_01 => 1,
      PCCRMR_R12_Field_10 => 2,
      PCCRMR_R12_Field_11 => 3);

   --  Region 11 mode
   type PCCRMR_R11_Field is
     (
      --  Non-cacheable
      PCCRMR_R11_Field_00,
      --  Non-cacheable
      PCCRMR_R11_Field_01,
      --  Write-through
      PCCRMR_R11_Field_10,
      --  Write-back
      PCCRMR_R11_Field_11)
     with Size => 2;
   for PCCRMR_R11_Field use
     (PCCRMR_R11_Field_00 => 0,
      PCCRMR_R11_Field_01 => 1,
      PCCRMR_R11_Field_10 => 2,
      PCCRMR_R11_Field_11 => 3);

   --  Region 10 mode
   type PCCRMR_R10_Field is
     (
      --  Non-cacheable
      PCCRMR_R10_Field_00,
      --  Non-cacheable
      PCCRMR_R10_Field_01,
      --  Write-through
      PCCRMR_R10_Field_10,
      --  Write-back
      PCCRMR_R10_Field_11)
     with Size => 2;
   for PCCRMR_R10_Field use
     (PCCRMR_R10_Field_00 => 0,
      PCCRMR_R10_Field_01 => 1,
      PCCRMR_R10_Field_10 => 2,
      PCCRMR_R10_Field_11 => 3);

   --  Region 9 mode
   type PCCRMR_R9_Field is
     (
      --  Non-cacheable
      PCCRMR_R9_Field_00,
      --  Non-cacheable
      PCCRMR_R9_Field_01,
      --  Write-through
      PCCRMR_R9_Field_10,
      --  Write-back
      PCCRMR_R9_Field_11)
     with Size => 2;
   for PCCRMR_R9_Field use
     (PCCRMR_R9_Field_00 => 0,
      PCCRMR_R9_Field_01 => 1,
      PCCRMR_R9_Field_10 => 2,
      PCCRMR_R9_Field_11 => 3);

   --  Region 8 mode
   type PCCRMR_R8_Field is
     (
      --  Non-cacheable
      PCCRMR_R8_Field_00,
      --  Non-cacheable
      PCCRMR_R8_Field_01,
      --  Write-through
      PCCRMR_R8_Field_10,
      --  Write-back
      PCCRMR_R8_Field_11)
     with Size => 2;
   for PCCRMR_R8_Field use
     (PCCRMR_R8_Field_00 => 0,
      PCCRMR_R8_Field_01 => 1,
      PCCRMR_R8_Field_10 => 2,
      PCCRMR_R8_Field_11 => 3);

   --  Region 7 mode
   type PCCRMR_R7_Field is
     (
      --  Non-cacheable
      PCCRMR_R7_Field_00,
      --  Non-cacheable
      PCCRMR_R7_Field_01,
      --  Write-through
      PCCRMR_R7_Field_10,
      --  Write-back
      PCCRMR_R7_Field_11)
     with Size => 2;
   for PCCRMR_R7_Field use
     (PCCRMR_R7_Field_00 => 0,
      PCCRMR_R7_Field_01 => 1,
      PCCRMR_R7_Field_10 => 2,
      PCCRMR_R7_Field_11 => 3);

   --  Region 6 mode
   type PCCRMR_R6_Field is
     (
      --  Non-cacheable
      PCCRMR_R6_Field_00,
      --  Non-cacheable
      PCCRMR_R6_Field_01,
      --  Write-through
      PCCRMR_R6_Field_10,
      --  Write-back
      PCCRMR_R6_Field_11)
     with Size => 2;
   for PCCRMR_R6_Field use
     (PCCRMR_R6_Field_00 => 0,
      PCCRMR_R6_Field_01 => 1,
      PCCRMR_R6_Field_10 => 2,
      PCCRMR_R6_Field_11 => 3);

   --  Region 5 mode
   type PCCRMR_R5_Field is
     (
      --  Non-cacheable
      PCCRMR_R5_Field_00,
      --  Non-cacheable
      PCCRMR_R5_Field_01,
      --  Write-through
      PCCRMR_R5_Field_10,
      --  Write-back
      PCCRMR_R5_Field_11)
     with Size => 2;
   for PCCRMR_R5_Field use
     (PCCRMR_R5_Field_00 => 0,
      PCCRMR_R5_Field_01 => 1,
      PCCRMR_R5_Field_10 => 2,
      PCCRMR_R5_Field_11 => 3);

   --  Region 4 mode
   type PCCRMR_R4_Field is
     (
      --  Non-cacheable
      PCCRMR_R4_Field_00,
      --  Non-cacheable
      PCCRMR_R4_Field_01,
      --  Write-through
      PCCRMR_R4_Field_10,
      --  Write-back
      PCCRMR_R4_Field_11)
     with Size => 2;
   for PCCRMR_R4_Field use
     (PCCRMR_R4_Field_00 => 0,
      PCCRMR_R4_Field_01 => 1,
      PCCRMR_R4_Field_10 => 2,
      PCCRMR_R4_Field_11 => 3);

   --  Region 3 mode
   type PCCRMR_R3_Field is
     (
      --  Non-cacheable
      PCCRMR_R3_Field_00,
      --  Non-cacheable
      PCCRMR_R3_Field_01,
      --  Write-through
      PCCRMR_R3_Field_10,
      --  Write-back
      PCCRMR_R3_Field_11)
     with Size => 2;
   for PCCRMR_R3_Field use
     (PCCRMR_R3_Field_00 => 0,
      PCCRMR_R3_Field_01 => 1,
      PCCRMR_R3_Field_10 => 2,
      PCCRMR_R3_Field_11 => 3);

   --  Region 2 mode
   type PCCRMR_R2_Field is
     (
      --  Non-cacheable
      PCCRMR_R2_Field_00,
      --  Non-cacheable
      PCCRMR_R2_Field_01,
      --  Write-through
      PCCRMR_R2_Field_10,
      --  Write-back
      PCCRMR_R2_Field_11)
     with Size => 2;
   for PCCRMR_R2_Field use
     (PCCRMR_R2_Field_00 => 0,
      PCCRMR_R2_Field_01 => 1,
      PCCRMR_R2_Field_10 => 2,
      PCCRMR_R2_Field_11 => 3);

   --  Region 1 mode
   type PCCRMR_R1_Field is
     (
      --  Non-cacheable
      PCCRMR_R1_Field_00,
      --  Non-cacheable
      PCCRMR_R1_Field_01,
      --  Write-through
      PCCRMR_R1_Field_10,
      --  Write-back
      PCCRMR_R1_Field_11)
     with Size => 2;
   for PCCRMR_R1_Field use
     (PCCRMR_R1_Field_00 => 0,
      PCCRMR_R1_Field_01 => 1,
      PCCRMR_R1_Field_10 => 2,
      PCCRMR_R1_Field_11 => 3);

   --  Region 0 mode
   type PCCRMR_R0_Field is
     (
      --  Non-cacheable
      PCCRMR_R0_Field_00,
      --  Non-cacheable
      PCCRMR_R0_Field_01,
      --  Write-through
      PCCRMR_R0_Field_10,
      --  Write-back
      PCCRMR_R0_Field_11)
     with Size => 2;
   for PCCRMR_R0_Field use
     (PCCRMR_R0_Field_00 => 0,
      PCCRMR_R0_Field_01 => 1,
      PCCRMR_R0_Field_10 => 2,
      PCCRMR_R0_Field_11 => 3);

   --  Cache regions mode register
   type LMEM_PCCRMR_Register is record
      --  Region 15 mode
      R15 : PCCRMR_R15_Field := NRF_SVD.LMEM.PCCRMR_R15_Field_00;
      --  Region 14 mode
      R14 : PCCRMR_R14_Field := NRF_SVD.LMEM.PCCRMR_R14_Field_00;
      --  Region 13 mode
      R13 : PCCRMR_R13_Field := NRF_SVD.LMEM.PCCRMR_R13_Field_00;
      --  Region 12 mode
      R12 : PCCRMR_R12_Field := NRF_SVD.LMEM.PCCRMR_R12_Field_00;
      --  Region 11 mode
      R11 : PCCRMR_R11_Field := NRF_SVD.LMEM.PCCRMR_R11_Field_00;
      --  Region 10 mode
      R10 : PCCRMR_R10_Field := NRF_SVD.LMEM.PCCRMR_R10_Field_00;
      --  Region 9 mode
      R9  : PCCRMR_R9_Field := NRF_SVD.LMEM.PCCRMR_R9_Field_10;
      --  Region 8 mode
      R8  : PCCRMR_R8_Field := NRF_SVD.LMEM.PCCRMR_R8_Field_10;
      --  Region 7 mode
      R7  : PCCRMR_R7_Field := NRF_SVD.LMEM.PCCRMR_R7_Field_11;
      --  Region 6 mode
      R6  : PCCRMR_R6_Field := NRF_SVD.LMEM.PCCRMR_R6_Field_11;
      --  Region 5 mode
      R5  : PCCRMR_R5_Field := NRF_SVD.LMEM.PCCRMR_R5_Field_00;
      --  Region 4 mode
      R4  : PCCRMR_R4_Field := NRF_SVD.LMEM.PCCRMR_R4_Field_00;
      --  Region 3 mode
      R3  : PCCRMR_R3_Field := NRF_SVD.LMEM.PCCRMR_R3_Field_10;
      --  Region 2 mode
      R2  : PCCRMR_R2_Field := NRF_SVD.LMEM.PCCRMR_R2_Field_10;
      --  Region 1 mode
      R1  : PCCRMR_R1_Field := NRF_SVD.LMEM.PCCRMR_R1_Field_10;
      --  Region 0 mode
      R0  : PCCRMR_R0_Field := NRF_SVD.LMEM.PCCRMR_R0_Field_10;
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
     with Import, Address => LMEM_Base;

end NRF_SVD.LMEM;
