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

--  This spec has been automatically generated from MK21DA5.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Nested Vectored Interrupt Controller
package NRF_SVD.NVIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype NVICSTIR_INTID_Field is HAL.UInt9;

   --  Software Trigger Interrupt Register
   type NVICSTIR_Register is record
      --  Interrupt ID of the interrupt to trigger, in the range 0-239. For
      --  example, a value of 0x03 specifies interrupt IRQ3.
      INTID         : NVICSTIR_INTID_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICSTIR_Register use record
      INTID         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Nested Vectored Interrupt Controller
   type NVIC_Peripheral is record
      --  Interrupt Set Enable Register n
      NVICISER0 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER1 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER2 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER3 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER0 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER1 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER2 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER3 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR0 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR1 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR2 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR3 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR0 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR1 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR2 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR3 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR0 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR1 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR2 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR3 : aliased HAL.UInt32;
      --  Interrupt Priority Register 0
      NVICIP0   : aliased HAL.UInt8;
      --  Interrupt Priority Register 1
      NVICIP1   : aliased HAL.UInt8;
      --  Interrupt Priority Register 2
      NVICIP2   : aliased HAL.UInt8;
      --  Interrupt Priority Register 3
      NVICIP3   : aliased HAL.UInt8;
      --  Interrupt Priority Register 4
      NVICIP4   : aliased HAL.UInt8;
      --  Interrupt Priority Register 5
      NVICIP5   : aliased HAL.UInt8;
      --  Interrupt Priority Register 6
      NVICIP6   : aliased HAL.UInt8;
      --  Interrupt Priority Register 7
      NVICIP7   : aliased HAL.UInt8;
      --  Interrupt Priority Register 8
      NVICIP8   : aliased HAL.UInt8;
      --  Interrupt Priority Register 9
      NVICIP9   : aliased HAL.UInt8;
      --  Interrupt Priority Register 10
      NVICIP10  : aliased HAL.UInt8;
      --  Interrupt Priority Register 11
      NVICIP11  : aliased HAL.UInt8;
      --  Interrupt Priority Register 12
      NVICIP12  : aliased HAL.UInt8;
      --  Interrupt Priority Register 13
      NVICIP13  : aliased HAL.UInt8;
      --  Interrupt Priority Register 14
      NVICIP14  : aliased HAL.UInt8;
      --  Interrupt Priority Register 15
      NVICIP15  : aliased HAL.UInt8;
      --  Interrupt Priority Register 16
      NVICIP16  : aliased HAL.UInt8;
      --  Interrupt Priority Register 17
      NVICIP17  : aliased HAL.UInt8;
      --  Interrupt Priority Register 18
      NVICIP18  : aliased HAL.UInt8;
      --  Interrupt Priority Register 19
      NVICIP19  : aliased HAL.UInt8;
      --  Interrupt Priority Register 20
      NVICIP20  : aliased HAL.UInt8;
      --  Interrupt Priority Register 21
      NVICIP21  : aliased HAL.UInt8;
      --  Interrupt Priority Register 22
      NVICIP22  : aliased HAL.UInt8;
      --  Interrupt Priority Register 23
      NVICIP23  : aliased HAL.UInt8;
      --  Interrupt Priority Register 24
      NVICIP24  : aliased HAL.UInt8;
      --  Interrupt Priority Register 25
      NVICIP25  : aliased HAL.UInt8;
      --  Interrupt Priority Register 26
      NVICIP26  : aliased HAL.UInt8;
      --  Interrupt Priority Register 27
      NVICIP27  : aliased HAL.UInt8;
      --  Interrupt Priority Register 28
      NVICIP28  : aliased HAL.UInt8;
      --  Interrupt Priority Register 29
      NVICIP29  : aliased HAL.UInt8;
      --  Interrupt Priority Register 30
      NVICIP30  : aliased HAL.UInt8;
      --  Interrupt Priority Register 31
      NVICIP31  : aliased HAL.UInt8;
      --  Interrupt Priority Register 32
      NVICIP32  : aliased HAL.UInt8;
      --  Interrupt Priority Register 33
      NVICIP33  : aliased HAL.UInt8;
      --  Interrupt Priority Register 34
      NVICIP34  : aliased HAL.UInt8;
      --  Interrupt Priority Register 35
      NVICIP35  : aliased HAL.UInt8;
      --  Interrupt Priority Register 36
      NVICIP36  : aliased HAL.UInt8;
      --  Interrupt Priority Register 37
      NVICIP37  : aliased HAL.UInt8;
      --  Interrupt Priority Register 38
      NVICIP38  : aliased HAL.UInt8;
      --  Interrupt Priority Register 39
      NVICIP39  : aliased HAL.UInt8;
      --  Interrupt Priority Register 40
      NVICIP40  : aliased HAL.UInt8;
      --  Interrupt Priority Register 41
      NVICIP41  : aliased HAL.UInt8;
      --  Interrupt Priority Register 42
      NVICIP42  : aliased HAL.UInt8;
      --  Interrupt Priority Register 43
      NVICIP43  : aliased HAL.UInt8;
      --  Interrupt Priority Register 44
      NVICIP44  : aliased HAL.UInt8;
      --  Interrupt Priority Register 45
      NVICIP45  : aliased HAL.UInt8;
      --  Interrupt Priority Register 46
      NVICIP46  : aliased HAL.UInt8;
      --  Interrupt Priority Register 47
      NVICIP47  : aliased HAL.UInt8;
      --  Interrupt Priority Register 48
      NVICIP48  : aliased HAL.UInt8;
      --  Interrupt Priority Register 49
      NVICIP49  : aliased HAL.UInt8;
      --  Interrupt Priority Register 50
      NVICIP50  : aliased HAL.UInt8;
      --  Interrupt Priority Register 51
      NVICIP51  : aliased HAL.UInt8;
      --  Interrupt Priority Register 52
      NVICIP52  : aliased HAL.UInt8;
      --  Interrupt Priority Register 53
      NVICIP53  : aliased HAL.UInt8;
      --  Interrupt Priority Register 54
      NVICIP54  : aliased HAL.UInt8;
      --  Interrupt Priority Register 55
      NVICIP55  : aliased HAL.UInt8;
      --  Interrupt Priority Register 56
      NVICIP56  : aliased HAL.UInt8;
      --  Interrupt Priority Register 57
      NVICIP57  : aliased HAL.UInt8;
      --  Interrupt Priority Register 58
      NVICIP58  : aliased HAL.UInt8;
      --  Interrupt Priority Register 59
      NVICIP59  : aliased HAL.UInt8;
      --  Interrupt Priority Register 60
      NVICIP60  : aliased HAL.UInt8;
      --  Interrupt Priority Register 61
      NVICIP61  : aliased HAL.UInt8;
      --  Interrupt Priority Register 62
      NVICIP62  : aliased HAL.UInt8;
      --  Interrupt Priority Register 63
      NVICIP63  : aliased HAL.UInt8;
      --  Interrupt Priority Register 64
      NVICIP64  : aliased HAL.UInt8;
      --  Software Trigger Interrupt Register
      NVICSTIR  : aliased NVICSTIR_Register;
   end record
     with Volatile;

   for NVIC_Peripheral use record
      NVICISER0 at 16#0# range 0 .. 31;
      NVICISER1 at 16#4# range 0 .. 31;
      NVICISER2 at 16#8# range 0 .. 31;
      NVICISER3 at 16#C# range 0 .. 31;
      NVICICER0 at 16#80# range 0 .. 31;
      NVICICER1 at 16#84# range 0 .. 31;
      NVICICER2 at 16#88# range 0 .. 31;
      NVICICER3 at 16#8C# range 0 .. 31;
      NVICISPR0 at 16#100# range 0 .. 31;
      NVICISPR1 at 16#104# range 0 .. 31;
      NVICISPR2 at 16#108# range 0 .. 31;
      NVICISPR3 at 16#10C# range 0 .. 31;
      NVICICPR0 at 16#180# range 0 .. 31;
      NVICICPR1 at 16#184# range 0 .. 31;
      NVICICPR2 at 16#188# range 0 .. 31;
      NVICICPR3 at 16#18C# range 0 .. 31;
      NVICIABR0 at 16#200# range 0 .. 31;
      NVICIABR1 at 16#204# range 0 .. 31;
      NVICIABR2 at 16#208# range 0 .. 31;
      NVICIABR3 at 16#20C# range 0 .. 31;
      NVICIP0   at 16#300# range 0 .. 7;
      NVICIP1   at 16#301# range 0 .. 7;
      NVICIP2   at 16#302# range 0 .. 7;
      NVICIP3   at 16#303# range 0 .. 7;
      NVICIP4   at 16#304# range 0 .. 7;
      NVICIP5   at 16#305# range 0 .. 7;
      NVICIP6   at 16#306# range 0 .. 7;
      NVICIP7   at 16#307# range 0 .. 7;
      NVICIP8   at 16#308# range 0 .. 7;
      NVICIP9   at 16#309# range 0 .. 7;
      NVICIP10  at 16#30A# range 0 .. 7;
      NVICIP11  at 16#30B# range 0 .. 7;
      NVICIP12  at 16#30C# range 0 .. 7;
      NVICIP13  at 16#30D# range 0 .. 7;
      NVICIP14  at 16#30E# range 0 .. 7;
      NVICIP15  at 16#30F# range 0 .. 7;
      NVICIP16  at 16#310# range 0 .. 7;
      NVICIP17  at 16#311# range 0 .. 7;
      NVICIP18  at 16#312# range 0 .. 7;
      NVICIP19  at 16#313# range 0 .. 7;
      NVICIP20  at 16#314# range 0 .. 7;
      NVICIP21  at 16#315# range 0 .. 7;
      NVICIP22  at 16#316# range 0 .. 7;
      NVICIP23  at 16#317# range 0 .. 7;
      NVICIP24  at 16#318# range 0 .. 7;
      NVICIP25  at 16#319# range 0 .. 7;
      NVICIP26  at 16#31A# range 0 .. 7;
      NVICIP27  at 16#31B# range 0 .. 7;
      NVICIP28  at 16#31C# range 0 .. 7;
      NVICIP29  at 16#31D# range 0 .. 7;
      NVICIP30  at 16#31E# range 0 .. 7;
      NVICIP31  at 16#31F# range 0 .. 7;
      NVICIP32  at 16#320# range 0 .. 7;
      NVICIP33  at 16#321# range 0 .. 7;
      NVICIP34  at 16#322# range 0 .. 7;
      NVICIP35  at 16#323# range 0 .. 7;
      NVICIP36  at 16#324# range 0 .. 7;
      NVICIP37  at 16#325# range 0 .. 7;
      NVICIP38  at 16#326# range 0 .. 7;
      NVICIP39  at 16#327# range 0 .. 7;
      NVICIP40  at 16#328# range 0 .. 7;
      NVICIP41  at 16#329# range 0 .. 7;
      NVICIP42  at 16#32A# range 0 .. 7;
      NVICIP43  at 16#32B# range 0 .. 7;
      NVICIP44  at 16#32C# range 0 .. 7;
      NVICIP45  at 16#32D# range 0 .. 7;
      NVICIP46  at 16#32E# range 0 .. 7;
      NVICIP47  at 16#32F# range 0 .. 7;
      NVICIP48  at 16#330# range 0 .. 7;
      NVICIP49  at 16#331# range 0 .. 7;
      NVICIP50  at 16#332# range 0 .. 7;
      NVICIP51  at 16#333# range 0 .. 7;
      NVICIP52  at 16#334# range 0 .. 7;
      NVICIP53  at 16#335# range 0 .. 7;
      NVICIP54  at 16#336# range 0 .. 7;
      NVICIP55  at 16#337# range 0 .. 7;
      NVICIP56  at 16#338# range 0 .. 7;
      NVICIP57  at 16#339# range 0 .. 7;
      NVICIP58  at 16#33A# range 0 .. 7;
      NVICIP59  at 16#33B# range 0 .. 7;
      NVICIP60  at 16#33C# range 0 .. 7;
      NVICIP61  at 16#33D# range 0 .. 7;
      NVICIP62  at 16#33E# range 0 .. 7;
      NVICIP63  at 16#33F# range 0 .. 7;
      NVICIP64  at 16#340# range 0 .. 7;
      NVICSTIR  at 16#E00# range 0 .. 31;
   end record;

   --  Nested Vectored Interrupt Controller
   NVIC_Periph : aliased NVIC_Peripheral
     with Import, Address => NVIC_Base;

end NRF_SVD.NVIC;
