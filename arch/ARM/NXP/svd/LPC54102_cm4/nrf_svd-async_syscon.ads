--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

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

   --  ASYNCPRESETCTRL_USART array
   type ASYNCPRESETCTRL_USART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ASYNCPRESETCTRL_USART
   type ASYNCPRESETCTRL_USART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART as a value
            Val : HAL.UInt4;
         when True =>
            --  USART as an array
            Arr : ASYNCPRESETCTRL_USART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ASYNCPRESETCTRL_USART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  ASYNCPRESETCTRL_I2C array
   type ASYNCPRESETCTRL_I2C_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ASYNCPRESETCTRL_I2C
   type ASYNCPRESETCTRL_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt3;
         when True =>
            --  I2C as an array
            Arr : ASYNCPRESETCTRL_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ASYNCPRESETCTRL_I2C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  ASYNCPRESETCTRL_SPI array
   type ASYNCPRESETCTRL_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ASYNCPRESETCTRL_SPI
   type ASYNCPRESETCTRL_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : ASYNCPRESETCTRL_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ASYNCPRESETCTRL_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ASYNCPRESETCTRL_CT32B array
   type ASYNCPRESETCTRL_CT32B_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ASYNCPRESETCTRL_CT32B
   type ASYNCPRESETCTRL_CT32B_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CT32B as a value
            Val : HAL.UInt2;
         when True =>
            --  CT32B as an array
            Arr : ASYNCPRESETCTRL_CT32B_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ASYNCPRESETCTRL_CT32B_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Async peripheral reset control
   type ASYNCPRESETCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  USART0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      USART          : ASYNCPRESETCTRL_USART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  I2C0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      I2C            : ASYNCPRESETCTRL_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  SPI0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      SPI            : ASYNCPRESETCTRL_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  CT32B 0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      CT32B          : ASYNCPRESETCTRL_CT32B_Field :=
                        (As_Array => False, Val => 16#0#);
      --  FRG reset control. 0 = Clear reset to this function. 1 = Assert reset
      --  to this function.
      FRG0           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCPRESETCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      USART          at 0 range 1 .. 4;
      I2C            at 0 range 5 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SPI            at 0 range 9 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      CT32B          at 0 range 13 .. 14;
      FRG0           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ASYNCAPBCLKCTRL_USART array
   type ASYNCAPBCLKCTRL_USART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for ASYNCAPBCLKCTRL_USART
   type ASYNCAPBCLKCTRL_USART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART as a value
            Val : HAL.UInt4;
         when True =>
            --  USART as an array
            Arr : ASYNCAPBCLKCTRL_USART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ASYNCAPBCLKCTRL_USART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  ASYNCAPBCLKCTRL_I2C array
   type ASYNCAPBCLKCTRL_I2C_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ASYNCAPBCLKCTRL_I2C
   type ASYNCAPBCLKCTRL_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt3;
         when True =>
            --  I2C as an array
            Arr : ASYNCAPBCLKCTRL_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ASYNCAPBCLKCTRL_I2C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  ASYNCAPBCLKCTRL_SPI array
   type ASYNCAPBCLKCTRL_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ASYNCAPBCLKCTRL_SPI
   type ASYNCAPBCLKCTRL_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : ASYNCAPBCLKCTRL_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ASYNCAPBCLKCTRL_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ASYNCAPBCLKCTRL_CT32B array
   type ASYNCAPBCLKCTRL_CT32B_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ASYNCAPBCLKCTRL_CT32B
   type ASYNCAPBCLKCTRL_CT32B_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CT32B as a value
            Val : HAL.UInt2;
         when True =>
            --  CT32B as an array
            Arr : ASYNCAPBCLKCTRL_CT32B_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ASYNCAPBCLKCTRL_CT32B_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Async peripheral clock control
   type ASYNCAPBCLKCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Controls the clock for USART0. 0 = Disable; 1 = Enable.
      USART          : ASYNCAPBCLKCTRL_USART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Controls the clock for I2C0. 0 = Disable; 1 = Enable.
      I2C            : ASYNCAPBCLKCTRL_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Controls the clock for SPI0. 0 = Disable; 1 = Enable.
      SPI            : ASYNCAPBCLKCTRL_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Controls the clock for CT32B0. 0 = Disable; 1 = Enable.
      CT32B          : ASYNCAPBCLKCTRL_CT32B_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Controls the clock for the Fractional Rate Generator used with the
      --  USARTs. 0 = Disable; 1 = Enable.
      FRG0           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCAPBCLKCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      USART          at 0 range 1 .. 4;
      I2C            at 0 range 5 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SPI            at 0 range 9 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      CT32B          at 0 range 13 .. 14;
      FRG0           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Clock source for asynchronous clock source selector A
   type ASYNCAPBCLKSELA_SEL_Field is
     (
      --  IRC Oscillator
      Irc_Oscillator,
      --  Watchdog oscillator
      Watchdog_Oscillator)
     with Size => 2;
   for ASYNCAPBCLKSELA_SEL_Field use
     (Irc_Oscillator => 0,
      Watchdog_Oscillator => 1);

   --  Async APB clock source select A
   type ASYNCAPBCLKSELA_Register is record
      --  Clock source for asynchronous clock source selector A
      SEL           : ASYNCAPBCLKSELA_SEL_Field :=
                       NRF_SVD.ASYNC_SYSCON.Irc_Oscillator;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCAPBCLKSELA_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clock source for asynchronous clock source selector B.
   type ASYNCAPBCLKSELB_SEL_Field is
     (
      --  Main clock
      Main_Clock,
      --  CLKIN
      Clkin,
      --  System PLL output.
      System_Pll_Output,
      --  ASYNCAPBCLKSELA. Clock selected by the ASYNCAPBCLKSELA register.
      Asyncapbclksela)
     with Size => 2;
   for ASYNCAPBCLKSELB_SEL_Field use
     (Main_Clock => 0,
      Clkin => 1,
      System_Pll_Output => 2,
      Asyncapbclksela => 3);

   --  Async APB clock source select B
   type ASYNCAPBCLKSELB_Register is record
      --  Clock source for asynchronous clock source selector B.
      SEL           : ASYNCAPBCLKSELB_SEL_Field :=
                       NRF_SVD.ASYNC_SYSCON.Main_Clock;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCAPBCLKSELB_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ASYNCCLKDIV_DIV_Field is HAL.UInt8;

   --  Async APB clock divider
   type ASYNCCLKDIV_Register is record
      --  Asynchronous APB clock divider value. 0: Clock disabled. 1: Divide by
      --  1. to 255: Divide by 255.
      DIV           : ASYNCCLKDIV_DIV_Field := 16#1#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FRGCTRL_DIV_Field is HAL.UInt8;
   subtype FRGCTRL_MULT_Field is HAL.UInt8;

   --  USART fractional rate generator control
   type FRGCTRL_Register is record
      --  Denominator of the fractional divider. DIV is equal to the programmed
      --  value +1. Always set to 0xFF to use with the fractional baud rate
      --  generator.
      DIV            : FRGCTRL_DIV_Field := 16#FF#;
      --  Numerator of the fractional divider. MULT is equal to the programmed
      --  value.
      MULT           : FRGCTRL_MULT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRGCTRL_Register use record
      DIV            at 0 range 0 .. 7;
      MULT           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5410x Asynchronous system configuration (ASYNC_SYSCON)
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
      --  Async APB clock source select B
      ASYNCAPBCLKSELB    : aliased ASYNCAPBCLKSELB_Register;
      --  Async APB clock divider
      ASYNCCLKDIV        : aliased ASYNCCLKDIV_Register;
      --  USART fractional rate generator control
      FRGCTRL            : aliased FRGCTRL_Register;
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
      ASYNCAPBCLKSELB    at 16#24# range 0 .. 31;
      ASYNCCLKDIV        at 16#28# range 0 .. 31;
      FRGCTRL            at 16#30# range 0 .. 31;
   end record;

   --  LPC5410x Asynchronous system configuration (ASYNC_SYSCON)
   ASYNC_SYSCON_Periph : aliased ASYNC_SYSCON_Peripheral
     with Import, Address => System'To_Address (16#40080000#);

end NRF_SVD.ASYNC_SYSCON;
