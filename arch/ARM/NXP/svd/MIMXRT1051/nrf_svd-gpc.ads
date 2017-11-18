--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  MEGA domain power down request
   type CNTR_MEGA_PDN_REQ_Field is
     (
      --  No Request
      Mega_Pdn_Req_0,
      --  Request power down sequence
      Mega_Pdn_Req_1)
     with Size => 1;
   for CNTR_MEGA_PDN_REQ_Field use
     (Mega_Pdn_Req_0 => 0,
      Mega_Pdn_Req_1 => 1);

   --  MEGA domain power up request
   type CNTR_MEGA_PUP_REQ_Field is
     (
      --  No Request
      Mega_Pup_Req_0,
      --  Request power up sequence
      Mega_Pup_Req_1)
     with Size => 1;
   for CNTR_MEGA_PUP_REQ_Field use
     (Mega_Pup_Req_0 => 0,
      Mega_Pup_Req_1 => 1);

   --  FlexRAM PDRAM0 Power Gate Enable
   type CNTR_PDRAM0_PGE_Field is
     (
      --  FlexRAM PDRAM0 domain (bank1-7) will keep power on even if CPU core
      --  is power down.
      Pdram0_Pge_0,
      --  FlexRAM PDRAM0 domain (bank1-7) will be power down once when CPU core
      --  is power down.
      Pdram0_Pge_1)
     with Size => 1;
   for CNTR_PDRAM0_PGE_Field use
     (Pdram0_Pge_0 => 0,
      Pdram0_Pge_1 => 1);

   --  GPC Interface control register
   type GPC_CNTR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  MEGA domain power down request
      MEGA_PDN_REQ   : CNTR_MEGA_PDN_REQ_Field := NRF_SVD.GPC.Mega_Pdn_Req_0;
      --  MEGA domain power up request
      MEGA_PUP_REQ   : CNTR_MEGA_PUP_REQ_Field := NRF_SVD.GPC.Mega_Pup_Req_0;
      --  unspecified
      Reserved_4_21  : HAL.UInt18 := 16#12000#;
      --  FlexRAM PDRAM0 Power Gate Enable
      PDRAM0_PGE     : CNTR_PDRAM0_PGE_Field := NRF_SVD.GPC.Pdram0_Pge_1;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPC_CNTR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      MEGA_PDN_REQ   at 0 range 2 .. 2;
      MEGA_PUP_REQ   at 0 range 3 .. 3;
      Reserved_4_21  at 0 range 4 .. 21;
      PDRAM0_PGE     at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPC
   type GPC_Peripheral is record
      --  GPC Interface control register
      CNTR : aliased GPC_CNTR_Register;
      --  IRQ masking register 1
      IMR1 : aliased HAL.UInt32;
      --  IRQ masking register 2
      IMR2 : aliased HAL.UInt32;
      --  IRQ masking register 3
      IMR3 : aliased HAL.UInt32;
      --  IRQ masking register 4
      IMR4 : aliased HAL.UInt32;
      --  IRQ status resister 1
      ISR1 : aliased HAL.UInt32;
      --  IRQ status resister 2
      ISR2 : aliased HAL.UInt32;
      --  IRQ status resister 3
      ISR3 : aliased HAL.UInt32;
      --  IRQ status resister 4
      ISR4 : aliased HAL.UInt32;
      --  IRQ masking register 5
      IMR5 : aliased HAL.UInt32;
      --  IRQ status resister 5
      ISR5 : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPC_Peripheral use record
      CNTR at 16#0# range 0 .. 31;
      IMR1 at 16#8# range 0 .. 31;
      IMR2 at 16#C# range 0 .. 31;
      IMR3 at 16#10# range 0 .. 31;
      IMR4 at 16#14# range 0 .. 31;
      ISR1 at 16#18# range 0 .. 31;
      ISR2 at 16#1C# range 0 .. 31;
      ISR3 at 16#20# range 0 .. 31;
      ISR4 at 16#24# range 0 .. 31;
      IMR5 at 16#34# range 0 .. 31;
      ISR5 at 16#38# range 0 .. 31;
   end record;

   --  GPC
   GPC_Periph : aliased GPC_Peripheral
     with Import, Address => System'To_Address (16#400F4000#);

end NRF_SVD.GPC;
