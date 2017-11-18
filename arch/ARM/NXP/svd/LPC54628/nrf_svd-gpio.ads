--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54628.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------
   -- B cluster's Registers --
   ---------------------------

   --  Byte pin registers for all port 0 and 1 GPIO pins
   type B_B_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B_B_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port 0 and 1 GPIO pins
   type B_B_Registers is array (0 .. 31) of B_B_Register
     with Volatile;

   --  no description available
   type B_Cluster is record
      --  Byte pin registers for all port 0 and 1 GPIO pins
      B : aliased B_B_Registers;
   end record
     with Volatile, Size => 256;

   for B_Cluster use record
      B at 0 range 0 .. 255;
   end record;

   --  no description available
   type B_Clusters is array (0 .. 5) of B_Cluster;

   ---------------------------
   -- W cluster's Registers --
   ---------------------------

   --  Word pin registers for all port 0 and 1 GPIO pins

   --  Word pin registers for all port 0 and 1 GPIO pins
   type W_W_Registers is array (0 .. 31) of HAL.UInt32
     with Volatile;

   --  no description available
   type W_Cluster is record
      --  Word pin registers for all port 0 and 1 GPIO pins
      W : aliased W_W_Registers;
   end record
     with Volatile, Size => 1024;

   for W_Cluster use record
      W at 0 range 0 .. 1023;
   end record;

   --  no description available
   type W_Clusters is array (0 .. 5) of W_Cluster;

   --  Direction registers

   --  Direction registers
   type DIR_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Mask register

   --  Mask register
   type MASK_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Port pin register

   --  Port pin register
   type PIN_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Masked port register

   --  Masked port register
   type MPIN_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Write: Set register for port Read: output bits for port

   --  Write: Set register for port Read: output bits for port
   type SET_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Clear port

   --  Clear port
   type CLR_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Toggle port

   --  Toggle port
   type NOT_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   subtype DIRSET_DIRSETP_Field is HAL.UInt29;

   --  Set pin direction bits for port
   type DIRSET_Register is record
      --  Write-only. Set direction bits (bit 0 = PIOn_0, bit 1 = PIOn_1,
      --  etc.). Supported pins depends on the specific device and package. 0 =
      --  No operation. 1 = Set direction bit.
      DIRSETP        : DIRSET_DIRSETP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIRSET_Register use record
      DIRSETP        at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Set pin direction bits for port
   type DIRSET_Registers is array (0 .. 5) of DIRSET_Register
     with Volatile;

   subtype DIRCLR_DIRCLRP_Field is HAL.UInt29;

   --  Clear pin direction bits for port
   type DIRCLR_Register is record
      --  Write-only. Clear direction bits (bit 0 = PIOn_0, bit 1 = PIOn_1,
      --  etc.). Supported pins depends on the specific device and package. 0 =
      --  No operation. 1 = Clear direction bit.
      DIRCLRP        : DIRCLR_DIRCLRP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIRCLR_Register use record
      DIRCLRP        at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Clear pin direction bits for port
   type DIRCLR_Registers is array (0 .. 5) of DIRCLR_Register
     with Volatile;

   subtype DIRNOT_DIRNOTP_Field is HAL.UInt29;

   --  Toggle pin direction bits for port
   type DIRNOT_Register is record
      --  Write-only. Toggle direction bits (bit 0 = PIOn_0, bit 1 = PIOn_1,
      --  etc.). Supported pins depends on the specific device and package. 0 =
      --  no operation. 1 = Toggle direction bit.
      DIRNOTP        : DIRNOT_DIRNOTP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIRNOT_Register use record
      DIRNOTP        at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Toggle pin direction bits for port
   type DIRNOT_Registers is array (0 .. 5) of DIRNOT_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x General Purpose I/O (GPIO)
   type GPIO_Peripheral is record
      --  no description available
      B      : aliased B_Clusters;
      --  no description available
      W      : aliased W_Clusters;
      --  Direction registers
      DIR    : aliased DIR_Registers;
      --  Mask register
      MASK   : aliased MASK_Registers;
      --  Port pin register
      PIN    : aliased PIN_Registers;
      --  Masked port register
      MPIN   : aliased MPIN_Registers;
      --  Write: Set register for port Read: output bits for port
      SET    : aliased SET_Registers;
      --  Clear port
      CLR    : aliased CLR_Registers;
      --  Toggle port
      NOT_k  : aliased NOT_Registers;
      --  Set pin direction bits for port
      DIRSET : aliased DIRSET_Registers;
      --  Clear pin direction bits for port
      DIRCLR : aliased DIRCLR_Registers;
      --  Toggle pin direction bits for port
      DIRNOT : aliased DIRNOT_Registers;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      B      at 16#0# range 0 .. 1535;
      W      at 16#1000# range 0 .. 6143;
      DIR    at 16#2000# range 0 .. 191;
      MASK   at 16#2080# range 0 .. 191;
      PIN    at 16#2100# range 0 .. 191;
      MPIN   at 16#2180# range 0 .. 191;
      SET    at 16#2200# range 0 .. 191;
      CLR    at 16#2280# range 0 .. 191;
      NOT_k  at 16#2300# range 0 .. 191;
      DIRSET at 16#2380# range 0 .. 191;
      DIRCLR at 16#2400# range 0 .. 191;
      DIRNOT at 16#2480# range 0 .. 191;
   end record;

   --  LPC5411x General Purpose I/O (GPIO)
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#4008C000#);

end NRF_SVD.GPIO;
