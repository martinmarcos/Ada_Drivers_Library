--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

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

   --  Master 5 Priviledge, Buffer, Read, Write Control.
   type MPR_MPROT5_Field is
     (
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0000,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1000,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0001,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1001,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0010,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1010,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0011,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1011,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0100,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1100,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0101,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1101,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0110,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1110,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0111,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1111)
     with Size => 4;
   for MPR_MPROT5_Field use
     (Mpl0000 => 0,
      Mpl1000 => 1,
      Mpl0001 => 2,
      Mpl1001 => 3,
      Mpl0010 => 4,
      Mpl1010 => 5,
      Mpl0011 => 6,
      Mpl1011 => 7,
      Mpl0100 => 8,
      Mpl1100 => 9,
      Mpl0101 => 10,
      Mpl1101 => 11,
      Mpl0110 => 12,
      Mpl1110 => 13,
      Mpl0111 => 14,
      Mpl1111 => 15);

   --  Master 3 Priviledge, Buffer, Read, Write Control.
   type MPR_MPROT3_Field is
     (
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0000,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1000,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0001,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1001,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0010,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1010,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0011,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1011,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0100,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1100,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0101,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1101,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0110,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1110,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0111,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1111)
     with Size => 4;
   for MPR_MPROT3_Field use
     (Mpl0000 => 0,
      Mpl1000 => 1,
      Mpl0001 => 2,
      Mpl1001 => 3,
      Mpl0010 => 4,
      Mpl1010 => 5,
      Mpl0011 => 6,
      Mpl1011 => 7,
      Mpl0100 => 8,
      Mpl1100 => 9,
      Mpl0101 => 10,
      Mpl1101 => 11,
      Mpl0110 => 12,
      Mpl1110 => 13,
      Mpl0111 => 14,
      Mpl1111 => 15);

   --  Master 2 Priviledge, Buffer, Read, Write Control
   type MPR_MPROT2_Field is
     (
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0000,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1000,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0001,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1001,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0010,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1010,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0011,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1011,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0100,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1100,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0101,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1101,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0110,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1110,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0111,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1111)
     with Size => 4;
   for MPR_MPROT2_Field use
     (Mpl0000 => 0,
      Mpl1000 => 1,
      Mpl0001 => 2,
      Mpl1001 => 3,
      Mpl0010 => 4,
      Mpl1010 => 5,
      Mpl0011 => 6,
      Mpl1011 => 7,
      Mpl0100 => 8,
      Mpl1100 => 9,
      Mpl0101 => 10,
      Mpl1101 => 11,
      Mpl0110 => 12,
      Mpl1110 => 13,
      Mpl0111 => 14,
      Mpl1111 => 15);

   --  Master 1 Priviledge, Buffer, Read, Write Control
   type MPR_MPROT1_Field is
     (
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0000,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1000,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0001,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1001,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0010,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1010,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0011,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1011,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0100,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1100,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0101,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1101,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0110,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1110,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0111,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1111)
     with Size => 4;
   for MPR_MPROT1_Field use
     (Mpl0000 => 0,
      Mpl1000 => 1,
      Mpl0001 => 2,
      Mpl1001 => 3,
      Mpl0010 => 4,
      Mpl1010 => 5,
      Mpl0011 => 6,
      Mpl1011 => 7,
      Mpl0100 => 8,
      Mpl1100 => 9,
      Mpl0101 => 10,
      Mpl1101 => 11,
      Mpl0110 => 12,
      Mpl1110 => 13,
      Mpl0111 => 14,
      Mpl1111 => 15);

   --  Master 0 Priviledge, Buffer, Read, Write Control
   type MPR_MPROT0_Field is
     (
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0000,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1000,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0001,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1001,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0010,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1010,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0011,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1011,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0100,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1100,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0101,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1101,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0110,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1110,
      --  Accesses from this master are forced to user-mode
      --  (ips_supervisor_access is forced to zero) regardless of the hprot[1]
      --  access attribute.
      Mpl0111,
      --  Accesses from this master are not forced to user-mode. The hprot[1]
      --  access attribute is used directly to determine ips_supervisor_access.
      Mpl1111)
     with Size => 4;
   for MPR_MPROT0_Field use
     (Mpl0000 => 0,
      Mpl1000 => 1,
      Mpl0001 => 2,
      Mpl1001 => 3,
      Mpl0010 => 4,
      Mpl1010 => 5,
      Mpl0011 => 6,
      Mpl1011 => 7,
      Mpl0100 => 8,
      Mpl1100 => 9,
      Mpl0101 => 10,
      Mpl1101 => 11,
      Mpl0110 => 12,
      Mpl1110 => 13,
      Mpl0111 => 14,
      Mpl1111 => 15);

   --  Master Priviledge Registers
   type AIPSTZ1_MPR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Master 5 Priviledge, Buffer, Read, Write Control.
      MPROT5         : MPR_MPROT5_Field := NRF_SVD.AIPSTZ.Mpl0000;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Master 3 Priviledge, Buffer, Read, Write Control.
      MPROT3         : MPR_MPROT3_Field := NRF_SVD.AIPSTZ.Mpl0000;
      --  Master 2 Priviledge, Buffer, Read, Write Control
      MPROT2         : MPR_MPROT2_Field := NRF_SVD.AIPSTZ.Mpl0000;
      --  Master 1 Priviledge, Buffer, Read, Write Control
      MPROT1         : MPR_MPROT1_Field := NRF_SVD.AIPSTZ.Mpl1011;
      --  Master 0 Priviledge, Buffer, Read, Write Control
      MPROT0         : MPR_MPROT0_Field := NRF_SVD.AIPSTZ.Mpl1011;
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

   --  Off-platform Peripheral Access Control 7
   type OPACR_OPAC7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC7_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 6
   type OPACR_OPAC6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC6_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 5
   type OPACR_OPAC5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC5_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 4
   type OPACR_OPAC4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC4_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 3
   type OPACR_OPAC3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC3_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 2
   type OPACR_OPAC2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC2_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 1
   type OPACR_OPAC1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC1_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 0
   type OPACR_OPAC0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR_OPAC0_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR_Register is record
      --  Off-platform Peripheral Access Control 7
      OPAC7 : OPACR_OPAC7_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 6
      OPAC6 : OPACR_OPAC6_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 5
      OPAC5 : OPACR_OPAC5_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 4
      OPAC4 : OPACR_OPAC4_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 3
      OPAC3 : OPACR_OPAC3_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 2
      OPAC2 : OPACR_OPAC2_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 1
      OPAC1 : OPACR_OPAC1_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 0
      OPAC0 : OPACR_OPAC0_Field := NRF_SVD.AIPSTZ.Tp0010;
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

   --  Off-platform Peripheral Access Control 15
   type OPACR1_OPAC15_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC15_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 14
   type OPACR1_OPAC14_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC14_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 13
   type OPACR1_OPAC13_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC13_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 12
   type OPACR1_OPAC12_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC12_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 11
   type OPACR1_OPAC11_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC11_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 10
   type OPACR1_OPAC10_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC10_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 9
   type OPACR1_OPAC9_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC9_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 8
   type OPACR1_OPAC8_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR1_OPAC8_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR1_Register is record
      --  Off-platform Peripheral Access Control 15
      OPAC15 : OPACR1_OPAC15_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 14
      OPAC14 : OPACR1_OPAC14_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 13
      OPAC13 : OPACR1_OPAC13_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 12
      OPAC12 : OPACR1_OPAC12_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 11
      OPAC11 : OPACR1_OPAC11_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 10
      OPAC10 : OPACR1_OPAC10_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 9
      OPAC9  : OPACR1_OPAC9_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 8
      OPAC8  : OPACR1_OPAC8_Field := NRF_SVD.AIPSTZ.Tp0010;
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

   --  Off-platform Peripheral Access Control 23
   type OPACR2_OPAC23_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC23_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 22
   type OPACR2_OPAC22_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC22_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 21
   type OPACR2_OPAC21_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC21_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 20
   type OPACR2_OPAC20_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC20_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 19
   type OPACR2_OPAC19_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC19_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 18
   type OPACR2_OPAC18_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC18_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 17
   type OPACR2_OPAC17_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC17_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 16
   type OPACR2_OPAC16_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR2_OPAC16_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR2_Register is record
      --  Off-platform Peripheral Access Control 23
      OPAC23 : OPACR2_OPAC23_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 22
      OPAC22 : OPACR2_OPAC22_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 21
      OPAC21 : OPACR2_OPAC21_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 20
      OPAC20 : OPACR2_OPAC20_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 19
      OPAC19 : OPACR2_OPAC19_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 18
      OPAC18 : OPACR2_OPAC18_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 17
      OPAC17 : OPACR2_OPAC17_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 16
      OPAC16 : OPACR2_OPAC16_Field := NRF_SVD.AIPSTZ.Tp0010;
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

   --  Off-platform Peripheral Access Control 31
   type OPACR3_OPAC31_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC31_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 30
   type OPACR3_OPAC30_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC30_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 29
   type OPACR3_OPAC29_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC29_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 28
   type OPACR3_OPAC28_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC28_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 27
   type OPACR3_OPAC27_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC27_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 26
   type OPACR3_OPAC26_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC26_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 25
   type OPACR3_OPAC25_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC25_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 24
   type OPACR3_OPAC24_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR3_OPAC24_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR3_Register is record
      --  Off-platform Peripheral Access Control 31
      OPAC31 : OPACR3_OPAC31_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 30
      OPAC30 : OPACR3_OPAC30_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 29
      OPAC29 : OPACR3_OPAC29_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 28
      OPAC28 : OPACR3_OPAC28_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 27
      OPAC27 : OPACR3_OPAC27_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 26
      OPAC26 : OPACR3_OPAC26_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 25
      OPAC25 : OPACR3_OPAC25_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 24
      OPAC24 : OPACR3_OPAC24_Field := NRF_SVD.AIPSTZ.Tp0010;
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

   --  Off-platform Peripheral Access Control 33
   type OPACR4_OPAC33_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR4_OPAC33_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-platform Peripheral Access Control 32
   type OPACR4_OPAC32_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0000,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1000,
      --  Accesses from an untrusted master are allowed.
      Tp0001,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1001,
      --  Accesses from an untrusted master are allowed.
      Tp0010,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1010,
      --  Accesses from an untrusted master are allowed.
      Tp0011,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1011,
      --  Accesses from an untrusted master are allowed.
      Tp0100,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1100,
      --  Accesses from an untrusted master are allowed.
      Tp0101,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1101,
      --  Accesses from an untrusted master are allowed.
      Tp0110,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1110,
      --  Accesses from an untrusted master are allowed.
      Tp0111,
      --  Accesses from an untrusted master are not allowed. If an access is
      --  attempted by an untrusted master, the access is terminated with an
      --  error response and no peripheral access is initiated on the IPS bus.
      Tp1111)
     with Size => 4;
   for OPACR4_OPAC32_Field use
     (Tp0000 => 0,
      Tp1000 => 1,
      Tp0001 => 2,
      Tp1001 => 3,
      Tp0010 => 4,
      Tp1010 => 5,
      Tp0011 => 6,
      Tp1011 => 7,
      Tp0100 => 8,
      Tp1100 => 9,
      Tp0101 => 10,
      Tp1101 => 11,
      Tp0110 => 12,
      Tp1110 => 13,
      Tp0111 => 14,
      Tp1111 => 15);

   --  Off-Platform Peripheral Access Control Registers
   type AIPSTZ1_OPACR4_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#444444#;
      --  Off-platform Peripheral Access Control 33
      OPAC33        : OPACR4_OPAC33_Field := NRF_SVD.AIPSTZ.Tp0010;
      --  Off-platform Peripheral Access Control 32
      OPAC32        : OPACR4_OPAC32_Field := NRF_SVD.AIPSTZ.Tp0010;
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
