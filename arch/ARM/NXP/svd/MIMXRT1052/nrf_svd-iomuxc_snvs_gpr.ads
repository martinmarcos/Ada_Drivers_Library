--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.IOMUXC_SNVS_GPR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IOMUXC_SNVS_GPR_GPR3_POR_PULL_TYPE_Field is HAL.UInt2;

   --  GPR3 General Purpose Register
   type IOMUXC_SNVS_GPR_GPR3_Register is record
      --  Set to enable LPSR mode.
      LPSR_MODE_ENABLE     : Boolean := False;
      --  DCDC captured status clear
      DCDC_STATUS_CAPT_CLR : Boolean := False;
      --  POR_B pad control
      POR_PULL_TYPE        : IOMUXC_SNVS_GPR_GPR3_POR_PULL_TYPE_Field :=
                              16#0#;
      --  unspecified
      Reserved_4_15        : HAL.UInt12 := 16#0#;
      --  Read-only. DCDC low battery detect
      DCDC_LOW_BAT         : Boolean := False;
      --  Read-only. DCDC over current alert
      DCDC_OVER_CUR        : Boolean := False;
      --  Read-only. DCDC over voltage alert
      DCDC_OVER_VOL        : Boolean := False;
      --  Read-only. DCDC status OK
      DCDC_STS_DC_OK       : Boolean := False;
      --  unspecified
      Reserved_20_31       : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUXC_SNVS_GPR_GPR3_Register use record
      LPSR_MODE_ENABLE     at 0 range 0 .. 0;
      DCDC_STATUS_CAPT_CLR at 0 range 1 .. 1;
      POR_PULL_TYPE        at 0 range 2 .. 3;
      Reserved_4_15        at 0 range 4 .. 15;
      DCDC_LOW_BAT         at 0 range 16 .. 16;
      DCDC_OVER_CUR        at 0 range 17 .. 17;
      DCDC_OVER_VOL        at 0 range 18 .. 18;
      DCDC_STS_DC_OK       at 0 range 19 .. 19;
      Reserved_20_31       at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IOMUXC
   type IOMUXC_SNVS_GPR_Peripheral is record
      --  GPR0 General Purpose Register
      GPR0 : aliased HAL.UInt32;
      --  GPR1 General Purpose Register
      GPR1 : aliased HAL.UInt32;
      --  GPR2 General Purpose Register
      GPR2 : aliased HAL.UInt32;
      --  GPR3 General Purpose Register
      GPR3 : aliased IOMUXC_SNVS_GPR_GPR3_Register;
   end record
     with Volatile;

   for IOMUXC_SNVS_GPR_Peripheral use record
      GPR0 at 16#0# range 0 .. 31;
      GPR1 at 16#4# range 0 .. 31;
      GPR2 at 16#8# range 0 .. 31;
      GPR3 at 16#C# range 0 .. 31;
   end record;

   --  IOMUXC
   IOMUXC_SNVS_GPR_Periph : aliased IOMUXC_SNVS_GPR_Peripheral
     with Import, Address => System'To_Address (16#400A4000#);

end NRF_SVD.IOMUXC_SNVS_GPR;
