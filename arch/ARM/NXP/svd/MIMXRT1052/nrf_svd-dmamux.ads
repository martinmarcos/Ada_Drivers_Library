--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DMAMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CHCFG_SOURCE_Field is HAL.UInt7;

   --  DMA Channel Always Enable
   type CHCFG_A_ON_Field is
     (
      --  DMA Channel Always ON function is disabled
      A_On_0,
      --  DMA Channel Always ON function is enabled
      A_On_1)
     with Size => 1;
   for CHCFG_A_ON_Field use
     (A_On_0 => 0,
      A_On_1 => 1);

   --  DMA Channel Trigger Enable
   type CHCFG_TRIG_Field is
     (
      --  Triggering is disabled. If triggering is disabled and ENBL is set,
      --  the DMA Channel will simply route the specified source to the DMA
      --  channel. (Normal mode)
      Trig_0,
      --  Triggering is enabled. If triggering is enabled and ENBL is set, the
      --  DMA_CH_MUX is in Periodic Trigger mode.
      Trig_1)
     with Size => 1;
   for CHCFG_TRIG_Field use
     (Trig_0 => 0,
      Trig_1 => 1);

   --  DMA Mux Channel Enable
   type CHCFG_ENBL_Field is
     (
      --  DMA Mux channel is disabled
      Enbl_0,
      --  DMA Mux channel is enabled
      Enbl_1)
     with Size => 1;
   for CHCFG_ENBL_Field use
     (Enbl_0 => 0,
      Enbl_1 => 1);

   --  Channel 0 Configuration Register
   type CHCFG_Register is record
      --  DMA Channel Source (Slot Number)
      SOURCE        : CHCFG_SOURCE_Field := 16#0#;
      --  unspecified
      Reserved_7_28 : HAL.UInt22 := 16#0#;
      --  DMA Channel Always Enable
      A_ON          : CHCFG_A_ON_Field := NRF_SVD.DMAMUX.A_On_0;
      --  DMA Channel Trigger Enable
      TRIG          : CHCFG_TRIG_Field := NRF_SVD.DMAMUX.Trig_0;
      --  DMA Mux Channel Enable
      ENBL          : CHCFG_ENBL_Field := NRF_SVD.DMAMUX.Enbl_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCFG_Register use record
      SOURCE        at 0 range 0 .. 6;
      Reserved_7_28 at 0 range 7 .. 28;
      A_ON          at 0 range 29 .. 29;
      TRIG          at 0 range 30 .. 30;
      ENBL          at 0 range 31 .. 31;
   end record;

   --  Channel 0 Configuration Register
   type CHCFG_Registers is array (0 .. 31) of CHCFG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA_CH_MUX
   type DMAMUX_Peripheral is record
      --  Channel 0 Configuration Register
      CHCFG : aliased CHCFG_Registers;
   end record
     with Volatile;

   for DMAMUX_Peripheral use record
      CHCFG at 0 range 0 .. 1023;
   end record;

   --  DMA_CH_MUX
   DMAMUX_Periph : aliased DMAMUX_Peripheral
     with Import, Address => System'To_Address (16#400EC000#);

end NRF_SVD.DMAMUX;
