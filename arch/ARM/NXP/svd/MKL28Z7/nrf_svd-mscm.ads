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

--  This spec has been automatically generated from MKL28Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  MSCM
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

   subtype MSCM_CPxCFG_DCWY_Field is HAL.UInt8;
   subtype MSCM_CPxCFG_DCSZ_Field is HAL.UInt8;
   subtype MSCM_CPxCFG_ICWY_Field is HAL.UInt8;
   subtype MSCM_CPxCFG_ICSZ_Field is HAL.UInt8;

   --  Processor X Configuration Register
   type MSCM_CPxCFG_Register is record
      --  Read-only. Level 1 Data Cache Ways
      DCWY : MSCM_CPxCFG_DCWY_Field;
      --  Read-only. Level 1 Data Cache Size
      DCSZ : MSCM_CPxCFG_DCSZ_Field;
      --  Read-only. Level 1 Instruction Cache Ways
      ICWY : MSCM_CPxCFG_ICWY_Field;
      --  Read-only. Level 1 Instruction Cache Size
      ICSZ : MSCM_CPxCFG_ICSZ_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CPxCFG_Register use record
      DCWY at 0 range 0 .. 7;
      DCSZ at 0 range 8 .. 15;
      ICWY at 0 range 16 .. 23;
      ICSZ at 0 range 24 .. 31;
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

   subtype MSCM_CP0CFG_DCWY_Field is HAL.UInt8;
   subtype MSCM_CP0CFG_DCSZ_Field is HAL.UInt8;
   subtype MSCM_CP0CFG_ICWY_Field is HAL.UInt8;
   subtype MSCM_CP0CFG_ICSZ_Field is HAL.UInt8;

   --  Processor 0 Configuration Register
   type MSCM_CP0CFG_Register is record
      --  Read-only. Level 1 Data Cache Ways
      DCWY : MSCM_CP0CFG_DCWY_Field;
      --  Read-only. Level 1 Data Cache Size
      DCSZ : MSCM_CP0CFG_DCSZ_Field;
      --  Read-only. Level 1 Instruction Cache Ways
      ICWY : MSCM_CP0CFG_ICWY_Field;
      --  Read-only. Level 1 Instruction Cache Size
      ICSZ : MSCM_CP0CFG_ICSZ_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_CP0CFG_Register use record
      DCWY at 0 range 0 .. 7;
      DCSZ at 0 range 8 .. 15;
      ICWY at 0 range 16 .. 23;
      ICSZ at 0 range 24 .. 31;
   end record;

   --  Processor 0 Configuration Register
   type MSCM_CP0CFG_Registers is array (0 .. 3) of MSCM_CP0CFG_Register
     with Volatile;

   --  OCMEM Type. This field defines the type of the on-chip memory:
   type OCMDR_OCMT_Field is
     (
      --  OCMEMn is a system RAM.
      OCMDR_OCMT_Field_000,
      --  OCMEMn is a graphics RAM.
      OCMDR_OCMT_Field_001,
      --  OCMEMn is a ROM.
      OCMDR_OCMT_Field_011)
     with Size => 3;
   for OCMDR_OCMT_Field use
     (OCMDR_OCMT_Field_000 => 0,
      OCMDR_OCMT_Field_001 => 1,
      OCMDR_OCMT_Field_011 => 3);

   --  Read-Only
   type OCMDR_RO_Field is
     (
      --  Writes to the OCMDRn[11:0] are allowed
      OCMDR_RO_Field_0,
      --  Writes to the OCMDRn[11:0] are ignored
      OCMDR_RO_Field_1)
     with Size => 1;
   for OCMDR_RO_Field use
     (OCMDR_RO_Field_0 => 0,
      OCMDR_RO_Field_1 => 1);

   --  OCMEM datapath Width. This read-only field defines the width of the
   --  on-chip memory:
   type OCMDR_OCMW_Field is
     (
      --  OCMEMn 32-bits wide
      OCMDR_OCMW_Field_010,
      --  OCMEMn 64-bits wide
      OCMDR_OCMW_Field_011)
     with Size => 3;
   for OCMDR_OCMW_Field use
     (OCMDR_OCMW_Field_010 => 2,
      OCMDR_OCMW_Field_011 => 3);

   --  OCMEM Size
   type OCMDR_OCMSZ_Field is
     (
      --  no OCMEMn
      OCMDR_OCMSZ_Field_0000,
      --  4KB OCMEMn
      OCMDR_OCMSZ_Field_0100,
      --  8KB OCMEMn
      OCMDR_OCMSZ_Field_0101,
      --  16KB OCMEMn
      OCMDR_OCMSZ_Field_0110,
      --  32KB OCMEMn
      OCMDR_OCMSZ_Field_0111,
      --  8192KB OCMEMn
      OCMDR_OCMSZ_Field_1111)
     with Size => 4;
   for OCMDR_OCMSZ_Field use
     (OCMDR_OCMSZ_Field_0000 => 0,
      OCMDR_OCMSZ_Field_0100 => 4,
      OCMDR_OCMSZ_Field_0101 => 5,
      OCMDR_OCMSZ_Field_0110 => 6,
      OCMDR_OCMSZ_Field_0111 => 7,
      OCMDR_OCMSZ_Field_1111 => 15);

   --  OCMEM Size "Hole"
   type OCMDR_OCMSZH_Field is
     (
      --  OCMEMn is a power-of-2 capacity.
      OCMDR_OCMSZH_Field_0,
      --  OCMEMn is not a power-of-2, with a capacity is 0.75 * OCMSZ.
      OCMDR_OCMSZH_Field_1)
     with Size => 1;
   for OCMDR_OCMSZH_Field use
     (OCMDR_OCMSZH_Field_0 => 0,
      OCMDR_OCMSZH_Field_1 => 1);

   --  OCMEM Valid bit. This read-only field defines the validity (presence) of
   --  the on-chip memory
   type OCMDR_V_Field is
     (
      --  OCMEMn is not present.
      OCMDR_V_Field_0,
      --  OCMEMn is present.
      OCMDR_V_Field_1)
     with Size => 1;
   for OCMDR_V_Field use
     (OCMDR_V_Field_0 => 0,
      OCMDR_V_Field_1 => 1);

   --  On-Chip Memory Descriptor Register
   type MSCM_OCMDR_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12;
      --  Read-only. OCMEM Memory Protection Unit. This field is reserved for
      --  this device.
      OCMPU          : Boolean;
      --  Read-only. OCMEM Type. This field defines the type of the on-chip
      --  memory:
      OCMT           : OCMDR_OCMT_Field;
      --  Read-only. Read-Only
      RO             : OCMDR_RO_Field;
      --  Read-only. OCMEM datapath Width. This read-only field defines the
      --  width of the on-chip memory:
      OCMW           : OCMDR_OCMW_Field;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. OCMEM Size
      OCMSZ          : OCMDR_OCMSZ_Field;
      --  Read-only. OCMEM Size "Hole"
      OCMSZH         : OCMDR_OCMSZH_Field;
      --  unspecified
      Reserved_29_30 : HAL.UInt2;
      --  Read-only. OCMEM Valid bit. This read-only field defines the validity
      --  (presence) of the on-chip memory
      V              : OCMDR_V_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSCM_OCMDR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
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
   type MSCM_OCMDR_Registers is array (0 .. 2) of MSCM_OCMDR_Register
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
      OCMDR     at 16#400# range 0 .. 95;
   end record;

   --  MSCM
   MSCM_Periph : aliased MSCM_Peripheral
     with Import, Address => MSCM_Base;

end NRF_SVD.MSCM;
