--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.AIPSTZ is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype AIPSTZ1_MPR_MPROT5_Field is HAL.UInt4;
   subtype AIPSTZ1_MPR_MPROT3_Field is HAL.UInt4;
   subtype AIPSTZ1_MPR_MPROT2_Field is HAL.UInt4;
   subtype AIPSTZ1_MPR_MPROT1_Field is HAL.UInt4;
   subtype AIPSTZ1_MPR_MPROT0_Field is HAL.UInt4;

   --  Master Priviledge Registers
   type AIPSTZ1_MPR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Master 5 Priviledge, Buffer, Read, Write Control.
      MPROT5         : AIPSTZ1_MPR_MPROT5_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Master 3 Priviledge, Buffer, Read, Write Control.
      MPROT3         : AIPSTZ1_MPR_MPROT3_Field := 16#0#;
      --  Master 2 Priviledge, Buffer, Read, Write Control
      MPROT2         : AIPSTZ1_MPR_MPROT2_Field := 16#0#;
      --  Master 1 Priviledge, Buffer, Read, Write Control
      MPROT1         : AIPSTZ1_MPR_MPROT1_Field := 16#7#;
      --  Master 0 Priviledge, Buffer, Read, Write Control
      MPROT0         : AIPSTZ1_MPR_MPROT0_Field := 16#7#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPSTZ1_MPR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MPROT5         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MPROT3         at 0 range 16 .. 19;
      MPROT2         at 0 range 20 .. 23;
      MPROT1         at 0 range 24 .. 27;
      MPROT0         at 0 range 28 .. 31;
   end record;

   subtype AIPSTZ1_OPACR_OPAC7_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC6_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC5_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC4_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC3_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC2_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC1_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR_OPAC0_Field is HAL.UInt4;

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR_Register is record
      --  Off-platform Peripheral Access Control 7
      OPAC7 : AIPSTZ1_OPACR_OPAC7_Field := 16#4#;
      --  Off-platform Peripheral Access Control 6
      OPAC6 : AIPSTZ1_OPACR_OPAC6_Field := 16#4#;
      --  Off-platform Peripheral Access Control 5
      OPAC5 : AIPSTZ1_OPACR_OPAC5_Field := 16#4#;
      --  Off-platform Peripheral Access Control 4
      OPAC4 : AIPSTZ1_OPACR_OPAC4_Field := 16#4#;
      --  Off-platform Peripheral Access Control 3
      OPAC3 : AIPSTZ1_OPACR_OPAC3_Field := 16#4#;
      --  Off-platform Peripheral Access Control 2
      OPAC2 : AIPSTZ1_OPACR_OPAC2_Field := 16#4#;
      --  Off-platform Peripheral Access Control 1
      OPAC1 : AIPSTZ1_OPACR_OPAC1_Field := 16#4#;
      --  Off-platform Peripheral Access Control 0
      OPAC0 : AIPSTZ1_OPACR_OPAC0_Field := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPSTZ1_OPACR_Register use record
      OPAC7 at 0 range 0 .. 3;
      OPAC6 at 0 range 4 .. 7;
      OPAC5 at 0 range 8 .. 11;
      OPAC4 at 0 range 12 .. 15;
      OPAC3 at 0 range 16 .. 19;
      OPAC2 at 0 range 20 .. 23;
      OPAC1 at 0 range 24 .. 27;
      OPAC0 at 0 range 28 .. 31;
   end record;

   subtype AIPSTZ1_OPACR1_OPAC15_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC14_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC13_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC12_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC11_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC10_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC9_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR1_OPAC8_Field is HAL.UInt4;

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR1_Register is record
      --  Off-platform Peripheral Access Control 15
      OPAC15 : AIPSTZ1_OPACR1_OPAC15_Field := 16#4#;
      --  Off-platform Peripheral Access Control 14
      OPAC14 : AIPSTZ1_OPACR1_OPAC14_Field := 16#4#;
      --  Off-platform Peripheral Access Control 13
      OPAC13 : AIPSTZ1_OPACR1_OPAC13_Field := 16#4#;
      --  Off-platform Peripheral Access Control 12
      OPAC12 : AIPSTZ1_OPACR1_OPAC12_Field := 16#4#;
      --  Off-platform Peripheral Access Control 11
      OPAC11 : AIPSTZ1_OPACR1_OPAC11_Field := 16#4#;
      --  Off-platform Peripheral Access Control 10
      OPAC10 : AIPSTZ1_OPACR1_OPAC10_Field := 16#4#;
      --  Off-platform Peripheral Access Control 9
      OPAC9  : AIPSTZ1_OPACR1_OPAC9_Field := 16#4#;
      --  Off-platform Peripheral Access Control 8
      OPAC8  : AIPSTZ1_OPACR1_OPAC8_Field := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPSTZ1_OPACR1_Register use record
      OPAC15 at 0 range 0 .. 3;
      OPAC14 at 0 range 4 .. 7;
      OPAC13 at 0 range 8 .. 11;
      OPAC12 at 0 range 12 .. 15;
      OPAC11 at 0 range 16 .. 19;
      OPAC10 at 0 range 20 .. 23;
      OPAC9  at 0 range 24 .. 27;
      OPAC8  at 0 range 28 .. 31;
   end record;

   subtype AIPSTZ1_OPACR2_OPAC23_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC22_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC21_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC20_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC19_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC18_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC17_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR2_OPAC16_Field is HAL.UInt4;

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR2_Register is record
      --  Off-platform Peripheral Access Control 23
      OPAC23 : AIPSTZ1_OPACR2_OPAC23_Field := 16#4#;
      --  Off-platform Peripheral Access Control 22
      OPAC22 : AIPSTZ1_OPACR2_OPAC22_Field := 16#4#;
      --  Off-platform Peripheral Access Control 21
      OPAC21 : AIPSTZ1_OPACR2_OPAC21_Field := 16#4#;
      --  Off-platform Peripheral Access Control 20
      OPAC20 : AIPSTZ1_OPACR2_OPAC20_Field := 16#4#;
      --  Off-platform Peripheral Access Control 19
      OPAC19 : AIPSTZ1_OPACR2_OPAC19_Field := 16#4#;
      --  Off-platform Peripheral Access Control 18
      OPAC18 : AIPSTZ1_OPACR2_OPAC18_Field := 16#4#;
      --  Off-platform Peripheral Access Control 17
      OPAC17 : AIPSTZ1_OPACR2_OPAC17_Field := 16#4#;
      --  Off-platform Peripheral Access Control 16
      OPAC16 : AIPSTZ1_OPACR2_OPAC16_Field := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPSTZ1_OPACR2_Register use record
      OPAC23 at 0 range 0 .. 3;
      OPAC22 at 0 range 4 .. 7;
      OPAC21 at 0 range 8 .. 11;
      OPAC20 at 0 range 12 .. 15;
      OPAC19 at 0 range 16 .. 19;
      OPAC18 at 0 range 20 .. 23;
      OPAC17 at 0 range 24 .. 27;
      OPAC16 at 0 range 28 .. 31;
   end record;

   subtype AIPSTZ1_OPACR3_OPAC31_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC30_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC29_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC28_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC27_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC26_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC25_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR3_OPAC24_Field is HAL.UInt4;

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR3_Register is record
      --  Off-platform Peripheral Access Control 31
      OPAC31 : AIPSTZ1_OPACR3_OPAC31_Field := 16#4#;
      --  Off-platform Peripheral Access Control 30
      OPAC30 : AIPSTZ1_OPACR3_OPAC30_Field := 16#4#;
      --  Off-platform Peripheral Access Control 29
      OPAC29 : AIPSTZ1_OPACR3_OPAC29_Field := 16#4#;
      --  Off-platform Peripheral Access Control 28
      OPAC28 : AIPSTZ1_OPACR3_OPAC28_Field := 16#4#;
      --  Off-platform Peripheral Access Control 27
      OPAC27 : AIPSTZ1_OPACR3_OPAC27_Field := 16#4#;
      --  Off-platform Peripheral Access Control 26
      OPAC26 : AIPSTZ1_OPACR3_OPAC26_Field := 16#4#;
      --  Off-platform Peripheral Access Control 25
      OPAC25 : AIPSTZ1_OPACR3_OPAC25_Field := 16#4#;
      --  Off-platform Peripheral Access Control 24
      OPAC24 : AIPSTZ1_OPACR3_OPAC24_Field := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPSTZ1_OPACR3_Register use record
      OPAC31 at 0 range 0 .. 3;
      OPAC30 at 0 range 4 .. 7;
      OPAC29 at 0 range 8 .. 11;
      OPAC28 at 0 range 12 .. 15;
      OPAC27 at 0 range 16 .. 19;
      OPAC26 at 0 range 20 .. 23;
      OPAC25 at 0 range 24 .. 27;
      OPAC24 at 0 range 28 .. 31;
   end record;

   subtype AIPSTZ1_OPACR4_OPAC33_Field is HAL.UInt4;
   subtype AIPSTZ1_OPACR4_OPAC32_Field is HAL.UInt4;

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR4_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#444444#;
      --  Off-platform Peripheral Access Control 33
      OPAC33        : AIPSTZ1_OPACR4_OPAC33_Field := 16#4#;
      --  Off-platform Peripheral Access Control 32
      OPAC32        : AIPSTZ1_OPACR4_OPAC32_Field := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPSTZ1_OPACR4_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      OPAC33        at 0 range 24 .. 27;
      OPAC32        at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AIPSTZ Control Registers
   type AIPSTZ_Peripheral is record
      --  Master Priviledge Registers
      MPR    : aliased AIPSTZ1_MPR_Register;
      --  Off-Platform Peripheral Access Control Registers
      OPACR  : aliased AIPSTZ1_OPACR_Register;
      --  Off-Platform Peripheral Access Control Registers
      OPACR1 : aliased AIPSTZ1_OPACR1_Register;
      --  Off-Platform Peripheral Access Control Registers
      OPACR2 : aliased AIPSTZ1_OPACR2_Register;
      --  Off-Platform Peripheral Access Control Registers
      OPACR3 : aliased AIPSTZ1_OPACR3_Register;
      --  Off-Platform Peripheral Access Control Registers
      OPACR4 : aliased AIPSTZ1_OPACR4_Register;
   end record
     with Volatile;

   for AIPSTZ_Peripheral use record
      MPR    at 16#0# range 0 .. 31;
      OPACR  at 16#40# range 0 .. 31;
      OPACR1 at 16#44# range 0 .. 31;
      OPACR2 at 16#48# range 0 .. 31;
      OPACR3 at 16#4C# range 0 .. 31;
      OPACR4 at 16#50# range 0 .. 31;
   end record;

   --  AIPSTZ Control Registers
   AIPSTZ1_Periph : aliased AIPSTZ_Peripheral
     with Import, Address => System'To_Address (16#4007C000#);

   --  AIPSTZ Control Registers
   AIPSTZ2_Periph : aliased AIPSTZ_Peripheral
     with Import, Address => System'To_Address (16#4017C000#);

   --  AIPSTZ Control Registers
   AIPSTZ3_Periph : aliased AIPSTZ_Peripheral
     with Import, Address => System'To_Address (16#4027C000#);

   --  AIPSTZ Control Registers
   AIPSTZ4_Periph : aliased AIPSTZ_Peripheral
     with Import, Address => System'To_Address (16#4037C000#);

end NRF_SVD.AIPSTZ;
