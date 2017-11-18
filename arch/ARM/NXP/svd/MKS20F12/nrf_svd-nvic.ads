--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKS20F12.xml

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

   subtype NVIC_STIR_INTID_Field is HAL.UInt9;

   --  Software Trigger Interrupt Register
   type NVIC_STIR_Register is record
      --  Interrupt ID of the interrupt to trigger, in the range 0-239. For
      --  example, a value of 0x03 specifies interrupt IRQ3.
      INTID         : NVIC_STIR_INTID_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_STIR_Register use record
      INTID         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Nested Vectored Interrupt Controller
   type NVIC_Peripheral is record
      --  Interrupt Set Enable Register n
      NVIC_ISER0 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVIC_ISER1 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVIC_ISER2 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVIC_ISER3 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVIC_ICER0 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVIC_ICER1 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVIC_ICER2 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVIC_ICER3 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVIC_ISPR0 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVIC_ISPR1 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVIC_ISPR2 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVIC_ISPR3 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVIC_ICPR0 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVIC_ICPR1 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVIC_ICPR2 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVIC_ICPR3 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVIC_IABR0 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVIC_IABR1 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVIC_IABR2 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVIC_IABR3 : aliased HAL.UInt32;
      --  Interrupt Priority Register n
      NVIC_IP0   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP1   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP2   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP3   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP4   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP5   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP6   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP7   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP8   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP9   : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP10  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP11  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP12  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP13  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP14  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP15  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP16  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP17  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP18  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP19  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP20  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP21  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP22  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP23  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP24  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP25  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP26  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP27  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP28  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP29  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP30  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP31  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP32  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP33  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP34  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP35  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP36  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP37  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP38  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP39  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP40  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP41  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP42  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP43  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP44  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP45  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP46  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP47  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP48  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP49  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP50  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP51  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP52  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP53  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP54  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP55  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP56  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP57  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP58  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP59  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP60  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP61  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP62  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP63  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP64  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP65  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP66  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP67  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP68  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP69  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP70  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP71  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP72  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP73  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP74  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP75  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP76  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP77  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP78  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP79  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP80  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP81  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP82  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP83  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP84  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP85  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP86  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP87  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP88  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP89  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP90  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP91  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP92  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP93  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP94  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP95  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP96  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP97  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP98  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP99  : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP100 : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP101 : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP102 : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP103 : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP104 : aliased HAL.UInt8;
      --  Interrupt Priority Register n
      NVIC_IP105 : aliased HAL.UInt8;
      --  Software Trigger Interrupt Register
      NVIC_STIR  : aliased NVIC_STIR_Register;
   end record
     with Volatile;

   for NVIC_Peripheral use record
      NVIC_ISER0 at 16#0# range 0 .. 31;
      NVIC_ISER1 at 16#4# range 0 .. 31;
      NVIC_ISER2 at 16#8# range 0 .. 31;
      NVIC_ISER3 at 16#C# range 0 .. 31;
      NVIC_ICER0 at 16#80# range 0 .. 31;
      NVIC_ICER1 at 16#84# range 0 .. 31;
      NVIC_ICER2 at 16#88# range 0 .. 31;
      NVIC_ICER3 at 16#8C# range 0 .. 31;
      NVIC_ISPR0 at 16#100# range 0 .. 31;
      NVIC_ISPR1 at 16#104# range 0 .. 31;
      NVIC_ISPR2 at 16#108# range 0 .. 31;
      NVIC_ISPR3 at 16#10C# range 0 .. 31;
      NVIC_ICPR0 at 16#180# range 0 .. 31;
      NVIC_ICPR1 at 16#184# range 0 .. 31;
      NVIC_ICPR2 at 16#188# range 0 .. 31;
      NVIC_ICPR3 at 16#18C# range 0 .. 31;
      NVIC_IABR0 at 16#200# range 0 .. 31;
      NVIC_IABR1 at 16#204# range 0 .. 31;
      NVIC_IABR2 at 16#208# range 0 .. 31;
      NVIC_IABR3 at 16#20C# range 0 .. 31;
      NVIC_IP0   at 16#300# range 0 .. 7;
      NVIC_IP1   at 16#301# range 0 .. 7;
      NVIC_IP2   at 16#302# range 0 .. 7;
      NVIC_IP3   at 16#303# range 0 .. 7;
      NVIC_IP4   at 16#304# range 0 .. 7;
      NVIC_IP5   at 16#305# range 0 .. 7;
      NVIC_IP6   at 16#306# range 0 .. 7;
      NVIC_IP7   at 16#307# range 0 .. 7;
      NVIC_IP8   at 16#308# range 0 .. 7;
      NVIC_IP9   at 16#309# range 0 .. 7;
      NVIC_IP10  at 16#30A# range 0 .. 7;
      NVIC_IP11  at 16#30B# range 0 .. 7;
      NVIC_IP12  at 16#30C# range 0 .. 7;
      NVIC_IP13  at 16#30D# range 0 .. 7;
      NVIC_IP14  at 16#30E# range 0 .. 7;
      NVIC_IP15  at 16#30F# range 0 .. 7;
      NVIC_IP16  at 16#310# range 0 .. 7;
      NVIC_IP17  at 16#311# range 0 .. 7;
      NVIC_IP18  at 16#312# range 0 .. 7;
      NVIC_IP19  at 16#313# range 0 .. 7;
      NVIC_IP20  at 16#314# range 0 .. 7;
      NVIC_IP21  at 16#315# range 0 .. 7;
      NVIC_IP22  at 16#316# range 0 .. 7;
      NVIC_IP23  at 16#317# range 0 .. 7;
      NVIC_IP24  at 16#318# range 0 .. 7;
      NVIC_IP25  at 16#319# range 0 .. 7;
      NVIC_IP26  at 16#31A# range 0 .. 7;
      NVIC_IP27  at 16#31B# range 0 .. 7;
      NVIC_IP28  at 16#31C# range 0 .. 7;
      NVIC_IP29  at 16#31D# range 0 .. 7;
      NVIC_IP30  at 16#31E# range 0 .. 7;
      NVIC_IP31  at 16#31F# range 0 .. 7;
      NVIC_IP32  at 16#320# range 0 .. 7;
      NVIC_IP33  at 16#321# range 0 .. 7;
      NVIC_IP34  at 16#322# range 0 .. 7;
      NVIC_IP35  at 16#323# range 0 .. 7;
      NVIC_IP36  at 16#324# range 0 .. 7;
      NVIC_IP37  at 16#325# range 0 .. 7;
      NVIC_IP38  at 16#326# range 0 .. 7;
      NVIC_IP39  at 16#327# range 0 .. 7;
      NVIC_IP40  at 16#328# range 0 .. 7;
      NVIC_IP41  at 16#329# range 0 .. 7;
      NVIC_IP42  at 16#32A# range 0 .. 7;
      NVIC_IP43  at 16#32B# range 0 .. 7;
      NVIC_IP44  at 16#32C# range 0 .. 7;
      NVIC_IP45  at 16#32D# range 0 .. 7;
      NVIC_IP46  at 16#32E# range 0 .. 7;
      NVIC_IP47  at 16#32F# range 0 .. 7;
      NVIC_IP48  at 16#330# range 0 .. 7;
      NVIC_IP49  at 16#331# range 0 .. 7;
      NVIC_IP50  at 16#332# range 0 .. 7;
      NVIC_IP51  at 16#333# range 0 .. 7;
      NVIC_IP52  at 16#334# range 0 .. 7;
      NVIC_IP53  at 16#335# range 0 .. 7;
      NVIC_IP54  at 16#336# range 0 .. 7;
      NVIC_IP55  at 16#337# range 0 .. 7;
      NVIC_IP56  at 16#338# range 0 .. 7;
      NVIC_IP57  at 16#339# range 0 .. 7;
      NVIC_IP58  at 16#33A# range 0 .. 7;
      NVIC_IP59  at 16#33B# range 0 .. 7;
      NVIC_IP60  at 16#33C# range 0 .. 7;
      NVIC_IP61  at 16#33D# range 0 .. 7;
      NVIC_IP62  at 16#33E# range 0 .. 7;
      NVIC_IP63  at 16#33F# range 0 .. 7;
      NVIC_IP64  at 16#340# range 0 .. 7;
      NVIC_IP65  at 16#341# range 0 .. 7;
      NVIC_IP66  at 16#342# range 0 .. 7;
      NVIC_IP67  at 16#343# range 0 .. 7;
      NVIC_IP68  at 16#344# range 0 .. 7;
      NVIC_IP69  at 16#345# range 0 .. 7;
      NVIC_IP70  at 16#346# range 0 .. 7;
      NVIC_IP71  at 16#347# range 0 .. 7;
      NVIC_IP72  at 16#348# range 0 .. 7;
      NVIC_IP73  at 16#349# range 0 .. 7;
      NVIC_IP74  at 16#34A# range 0 .. 7;
      NVIC_IP75  at 16#34B# range 0 .. 7;
      NVIC_IP76  at 16#34C# range 0 .. 7;
      NVIC_IP77  at 16#34D# range 0 .. 7;
      NVIC_IP78  at 16#34E# range 0 .. 7;
      NVIC_IP79  at 16#34F# range 0 .. 7;
      NVIC_IP80  at 16#350# range 0 .. 7;
      NVIC_IP81  at 16#351# range 0 .. 7;
      NVIC_IP82  at 16#352# range 0 .. 7;
      NVIC_IP83  at 16#353# range 0 .. 7;
      NVIC_IP84  at 16#354# range 0 .. 7;
      NVIC_IP85  at 16#355# range 0 .. 7;
      NVIC_IP86  at 16#356# range 0 .. 7;
      NVIC_IP87  at 16#357# range 0 .. 7;
      NVIC_IP88  at 16#358# range 0 .. 7;
      NVIC_IP89  at 16#359# range 0 .. 7;
      NVIC_IP90  at 16#35A# range 0 .. 7;
      NVIC_IP91  at 16#35B# range 0 .. 7;
      NVIC_IP92  at 16#35C# range 0 .. 7;
      NVIC_IP93  at 16#35D# range 0 .. 7;
      NVIC_IP94  at 16#35E# range 0 .. 7;
      NVIC_IP95  at 16#35F# range 0 .. 7;
      NVIC_IP96  at 16#360# range 0 .. 7;
      NVIC_IP97  at 16#361# range 0 .. 7;
      NVIC_IP98  at 16#362# range 0 .. 7;
      NVIC_IP99  at 16#363# range 0 .. 7;
      NVIC_IP100 at 16#364# range 0 .. 7;
      NVIC_IP101 at 16#365# range 0 .. 7;
      NVIC_IP102 at 16#366# range 0 .. 7;
      NVIC_IP103 at 16#367# range 0 .. 7;
      NVIC_IP104 at 16#368# range 0 .. 7;
      NVIC_IP105 at 16#369# range 0 .. 7;
      NVIC_STIR  at 16#E00# range 0 .. 31;
   end record;

   --  Nested Vectored Interrupt Controller
   NVIC_Periph : aliased NVIC_Peripheral
     with Import, Address => NVIC_Base;

end NRF_SVD.NVIC;
