--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54608.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ASYNC_SYSCON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ASYNCPRESETCTRL_CTIMER array
   type ASYNCPRESETCTRL_CTIMER_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ASYNCPRESETCTRL_CTIMER
   type ASYNCPRESETCTRL_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : ASYNCPRESETCTRL_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ASYNCPRESETCTRL_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Async peripheral reset control
   type ASYNCPRESETCTRL_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13 := 16#0#;
      --  Standard counter/timer CTIMER3 reset control. 0 = Clear reset to this
      --  function. 1 = Assert reset to this function.
      CTIMER         : ASYNCPRESETCTRL_CTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCPRESETCTRL_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      CTIMER         at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  ASYNCAPBCLKCTRL_CTIMER array
   type ASYNCAPBCLKCTRL_CTIMER_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ASYNCAPBCLKCTRL_CTIMER
   type ASYNCAPBCLKCTRL_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : ASYNCAPBCLKCTRL_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ASYNCAPBCLKCTRL_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Async peripheral clock control
   type ASYNCAPBCLKCTRL_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13 := 16#0#;
      --  Controls the clock for CTIMER3. 0 = Disable; 1 = Enable.
      CTIMER         : ASYNCAPBCLKCTRL_CTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCAPBCLKCTRL_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      CTIMER         at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Clock source for asynchronous clock source selector A
   type ASYNCAPBCLKSELA_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  Audio PLL clock.(AUDPLL_BYPASS)
      Audio_Pll_Clock,
      --  fc6 fclk (fc6_fclk)
      Fc6_Fclk)
     with Size => 2;
   for ASYNCAPBCLKSELA_SEL_Field use
     (Main_Clock => 0,
      Fro_12_Mhz => 1,
      Audio_Pll_Clock => 2,
      Fc6_Fclk => 3);

   --  Async APB clock source select A
   type ASYNCAPBCLKSELA_Register is record
      --  Clock source for asynchronous clock source selector A
      SEL           : ASYNCAPBCLKSELA_SEL_Field :=
                       NRF_SVD.ASYNC_SYSCON.Main_Clock;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCAPBCLKSELA_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x Asynchronous system configuration (ASYNC_SYSCON)
   type ASYNC_SYSCON_Peripheral is record
      --  Async peripheral reset control
      ASYNCPRESETCTRL    : aliased ASYNCPRESETCTRL_Register;
      --  Set bits in ASYNCPRESETCTRL
      ASYNCPRESETCTRLSET : aliased HAL.UInt32;
      --  Clear bits in ASYNCPRESETCTRL
      ASYNCPRESETCTRLCLR : aliased HAL.UInt32;
      --  Async peripheral clock control
      ASYNCAPBCLKCTRL    : aliased ASYNCAPBCLKCTRL_Register;
      --  Set bits in ASYNCAPBCLKCTRL
      ASYNCAPBCLKCTRLSET : aliased HAL.UInt32;
      --  Clear bits in ASYNCAPBCLKCTRL
      ASYNCAPBCLKCTRLCLR : aliased HAL.UInt32;
      --  Async APB clock source select A
      ASYNCAPBCLKSELA    : aliased ASYNCAPBCLKSELA_Register;
   end record
     with Volatile;

   for ASYNC_SYSCON_Peripheral use record
      ASYNCPRESETCTRL    at 16#0# range 0 .. 31;
      ASYNCPRESETCTRLSET at 16#4# range 0 .. 31;
      ASYNCPRESETCTRLCLR at 16#8# range 0 .. 31;
      ASYNCAPBCLKCTRL    at 16#10# range 0 .. 31;
      ASYNCAPBCLKCTRLSET at 16#14# range 0 .. 31;
      ASYNCAPBCLKCTRLCLR at 16#18# range 0 .. 31;
      ASYNCAPBCLKSELA    at 16#20# range 0 .. 31;
   end record;

   --  LPC5411x Asynchronous system configuration (ASYNC_SYSCON)
   ASYNC_SYSCON_Periph : aliased ASYNC_SYSCON_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

end NRF_SVD.ASYNC_SYSCON;
