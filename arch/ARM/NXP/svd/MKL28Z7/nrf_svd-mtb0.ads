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

--  Micro Trace Buffer
package NRF_SVD.MTB0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MTB0_POSITION_POINTER_Field is HAL.UInt29;

   --  MTB Position Register
   type MTB0_POSITION_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  WRAP
      WRAP         : Boolean := False;
      --  Trace Packet Address Pointer[28:0]
      POINTER      : MTB0_POSITION_POINTER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTB0_POSITION_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      WRAP         at 0 range 2 .. 2;
      POINTER      at 0 range 3 .. 31;
   end record;

   subtype MTB0_MASTER_MASK_Field is HAL.UInt5;

   --  MTB Master Register
   type MTB0_MASTER_Register is record
      --  Mask
      MASK           : MTB0_MASTER_MASK_Field := 16#0#;
      --  Trace Start Input Enable
      TSTARTEN       : Boolean := False;
      --  Trace Stop Input Enable
      TSTOPEN        : Boolean := False;
      --  Special Function Register Write Privilege
      SFRWPRIV       : Boolean := True;
      --  RAM Privilege
      RAMPRIV        : Boolean := False;
      --  Halt Request
      HALTREQ        : Boolean := False;
      --  unspecified
      Reserved_10_30 : HAL.UInt21 := 16#0#;
      --  Main Trace Enable
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTB0_MASTER_Register use record
      MASK           at 0 range 0 .. 4;
      TSTARTEN       at 0 range 5 .. 5;
      TSTOPEN        at 0 range 6 .. 6;
      SFRWPRIV       at 0 range 7 .. 7;
      RAMPRIV        at 0 range 8 .. 8;
      HALTREQ        at 0 range 9 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      EN             at 0 range 31 .. 31;
   end record;

   subtype MTB0_FLOW_WATERMARK_Field is HAL.UInt29;

   --  MTB Flow Register
   type MTB0_FLOW_Register is record
      --  AUTOSTOP
      AUTOSTOP     : Boolean := False;
      --  AUTOHALT
      AUTOHALT     : Boolean := False;
      --  unspecified
      Reserved_2_2 : HAL.Bit := 16#0#;
      --  WATERMARK[28:0]
      WATERMARK    : MTB0_FLOW_WATERMARK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTB0_FLOW_Register use record
      AUTOSTOP     at 0 range 0 .. 0;
      AUTOHALT     at 0 range 1 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      WATERMARK    at 0 range 3 .. 31;
   end record;

   --  MTB0_AUTHSTAT_BIT array
   type MTB0_AUTHSTAT_BIT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for MTB0_AUTHSTAT_BIT
   type MTB0_AUTHSTAT_BIT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BIT as a value
            Val : HAL.UInt4;
         when True =>
            --  BIT as an array
            Arr : MTB0_AUTHSTAT_BIT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MTB0_AUTHSTAT_BIT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Authentication Status Register
   type MTB0_AUTHSTAT_Register is record
      --  Read-only. Connected to DBGEN.
      BIT           : MTB0_AUTHSTAT_BIT_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTB0_AUTHSTAT_Register use record
      BIT           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Peripheral ID Register

   --  Peripheral ID Register
   type MTB0_PERIPHID_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  Component ID Register

   --  Component ID Register
   type MTB0_COMPID_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Micro Trace Buffer
   type MTB0_Peripheral is record
      --  MTB Position Register
      POSITION    : aliased MTB0_POSITION_Register;
      --  MTB Master Register
      MASTER      : aliased MTB0_MASTER_Register;
      --  MTB Flow Register
      FLOW        : aliased MTB0_FLOW_Register;
      --  MTB Base Register
      BASE        : aliased HAL.UInt32;
      --  Integration Mode Control Register
      MODECTRL    : aliased HAL.UInt32;
      --  Claim TAG Set Register
      TAGSET      : aliased HAL.UInt32;
      --  Claim TAG Clear Register
      TAGCLEAR    : aliased HAL.UInt32;
      --  Lock Access Register
      LOCKACCESS  : aliased HAL.UInt32;
      --  Lock Status Register
      LOCKSTAT    : aliased HAL.UInt32;
      --  Authentication Status Register
      AUTHSTAT    : aliased MTB0_AUTHSTAT_Register;
      --  Device Architecture Register
      DEVICEARCH  : aliased HAL.UInt32;
      --  Device Configuration Register
      DEVICECFG   : aliased HAL.UInt32;
      --  Device Type Identifier Register
      DEVICETYPID : aliased HAL.UInt32;
      --  Peripheral ID Register
      PERIPHID    : aliased MTB0_PERIPHID_Registers;
      --  Component ID Register
      COMPID      : aliased MTB0_COMPID_Registers;
   end record
     with Volatile;

   for MTB0_Peripheral use record
      POSITION    at 16#0# range 0 .. 31;
      MASTER      at 16#4# range 0 .. 31;
      FLOW        at 16#8# range 0 .. 31;
      BASE        at 16#C# range 0 .. 31;
      MODECTRL    at 16#F00# range 0 .. 31;
      TAGSET      at 16#FA0# range 0 .. 31;
      TAGCLEAR    at 16#FA4# range 0 .. 31;
      LOCKACCESS  at 16#FB0# range 0 .. 31;
      LOCKSTAT    at 16#FB4# range 0 .. 31;
      AUTHSTAT    at 16#FB8# range 0 .. 31;
      DEVICEARCH  at 16#FBC# range 0 .. 31;
      DEVICECFG   at 16#FC8# range 0 .. 31;
      DEVICETYPID at 16#FCC# range 0 .. 31;
      PERIPHID    at 16#FD0# range 0 .. 255;
      COMPID      at 16#FF0# range 0 .. 127;
   end record;

   --  Micro Trace Buffer
   MTB0_Periph : aliased MTB0_Peripheral
     with Import, Address => MTB0_Base;

end NRF_SVD.MTB0;
