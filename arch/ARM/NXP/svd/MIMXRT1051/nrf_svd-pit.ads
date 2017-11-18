--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PIT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Freeze
   type MCR_FRZ_Field is
     (
      --  Timers continue to run in Debug mode.
      Frz_0,
      --  Timers are stopped in Debug mode.
      Frz_1)
     with Size => 1;
   for MCR_FRZ_Field use
     (Frz_0 => 0,
      Frz_1 => 1);

   --  Module Disable - (PIT section)
   type MCR_MDIS_Field is
     (
      --  Clock for standard PIT timers is enabled.
      Mdis_0,
      --  Clock for standard PIT timers is disabled.
      Mdis_1)
     with Size => 1;
   for MCR_MDIS_Field use
     (Mdis_0 => 0,
      Mdis_1 => 1);

   --  PIT Module Control Register
   type MCR_Register is record
      --  Freeze
      FRZ           : MCR_FRZ_Field := NRF_SVD.PIT.Frz_0;
      --  Module Disable - (PIT section)
      MDIS          : MCR_MDIS_Field := NRF_SVD.PIT.Mdis_1;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      FRZ           at 0 range 0 .. 0;
      MDIS          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -------------------------------
   -- TIMER cluster's Registers --
   -------------------------------

   --  Timer Enable
   type TCTRL_TEN_Field is
     (
      --  Timer n is disabled.
      Ten_0,
      --  Timer n is enabled.
      Ten_1)
     with Size => 1;
   for TCTRL_TEN_Field use
     (Ten_0 => 0,
      Ten_1 => 1);

   --  Timer Interrupt Enable
   type TCTRL_TIE_Field is
     (
      --  Interrupt requests from Timer n are disabled.
      Tie_0,
      --  Interrupt will be requested whenever TIF is set.
      Tie_1)
     with Size => 1;
   for TCTRL_TIE_Field use
     (Tie_0 => 0,
      Tie_1 => 1);

   --  Chain Mode
   type TCTRL_CHN_Field is
     (
      --  Timer is not chained.
      Chn_0,
      --  Timer is chained to previous timer. For example, for Channel 2, if
      --  this field is set, Timer 2 is chained to Timer 1.
      Chn_1)
     with Size => 1;
   for TCTRL_CHN_Field use
     (Chn_0 => 0,
      Chn_1 => 1);

   --  Timer Control Register
   type TCTRL_TIMER_Register is record
      --  Timer Enable
      TEN           : TCTRL_TEN_Field := NRF_SVD.PIT.Ten_0;
      --  Timer Interrupt Enable
      TIE           : TCTRL_TIE_Field := NRF_SVD.PIT.Tie_0;
      --  Chain Mode
      CHN           : TCTRL_CHN_Field := NRF_SVD.PIT.Chn_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCTRL_TIMER_Register use record
      TEN           at 0 range 0 .. 0;
      TIE           at 0 range 1 .. 1;
      CHN           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Timer Interrupt Flag
   type TFLG_TIF_Field is
     (
      --  Timeout has not yet occurred.
      Tif_0,
      --  Timeout has occurred.
      Tif_1)
     with Size => 1;
   for TFLG_TIF_Field use
     (Tif_0 => 0,
      Tif_1 => 1);

   --  Timer Flag Register
   type TFLG_TIMER_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Timer Interrupt Flag
      TIF           : TFLG_TIF_Field := NRF_SVD.PIT.Tif_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFLG_TIMER_Register use record
      TIF           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  no description available
   type TIMER_Cluster is record
      --  Timer Load Value Register
      LDVAL : aliased HAL.UInt32;
      --  Current Timer Value Register
      CVAL  : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL : aliased TCTRL_TIMER_Register;
      --  Timer Flag Register
      TFLG  : aliased TFLG_TIMER_Register;
   end record
     with Volatile, Size => 128;

   for TIMER_Cluster use record
      LDVAL at 16#0# range 0 .. 31;
      CVAL  at 16#4# range 0 .. 31;
      TCTRL at 16#8# range 0 .. 31;
      TFLG  at 16#C# range 0 .. 31;
   end record;

   --  no description available
   type TIMER_Clusters is array (0 .. 3) of TIMER_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  PIT
   type PIT_Peripheral is record
      --  PIT Module Control Register
      MCR     : aliased MCR_Register;
      --  PIT Upper Lifetime Timer Register
      LTMR64H : aliased HAL.UInt32;
      --  PIT Lower Lifetime Timer Register
      LTMR64L : aliased HAL.UInt32;
      --  no description available
      TIMER   : aliased TIMER_Clusters;
   end record
     with Volatile;

   for PIT_Peripheral use record
      MCR     at 16#0# range 0 .. 31;
      LTMR64H at 16#E0# range 0 .. 31;
      LTMR64L at 16#E4# range 0 .. 31;
      TIMER   at 16#100# range 0 .. 511;
   end record;

   --  PIT
   PIT_Periph : aliased PIT_Peripheral
     with Import, Address => System'To_Address (16#40084000#);

end NRF_SVD.PIT;
