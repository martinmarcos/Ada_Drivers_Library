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

--  This spec has been automatically generated from MK27F15.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PORT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Pull Select
   type PCR0_PS_Field is
     (
      --  Internal pulldown resistor is enabled on the corresponding pin, if
      --  the corresponding PE field is set.
      PCR0_PS_Field_0,
      --  Internal pullup resistor is enabled on the corresponding pin, if the
      --  corresponding PE field is set.
      PCR0_PS_Field_1)
     with Size => 1;
   for PCR0_PS_Field use
     (PCR0_PS_Field_0 => 0,
      PCR0_PS_Field_1 => 1);

   --  Pull Enable
   type PCR0_PE_Field is
     (
      --  Internal pullup or pulldown resistor is not enabled on the
      --  corresponding pin.
      PCR0_PE_Field_0,
      --  Internal pullup or pulldown resistor is enabled on the corresponding
      --  pin, if the pin is configured as a digital input.
      PCR0_PE_Field_1)
     with Size => 1;
   for PCR0_PE_Field use
     (PCR0_PE_Field_0 => 0,
      PCR0_PE_Field_1 => 1);

   --  Slew Rate Enable
   type PCR0_SRE_Field is
     (
      --  Fast slew rate is configured on the corresponding pin, if the pin is
      --  configured as a digital output.
      PCR0_SRE_Field_0,
      --  Slow slew rate is configured on the corresponding pin, if the pin is
      --  configured as a digital output.
      PCR0_SRE_Field_1)
     with Size => 1;
   for PCR0_SRE_Field use
     (PCR0_SRE_Field_0 => 0,
      PCR0_SRE_Field_1 => 1);

   --  Passive Filter Enable
   type PCR0_PFE_Field is
     (
      --  Passive input filter is disabled on the corresponding pin.
      PCR0_PFE_Field_0,
      --  Passive input filter is enabled on the corresponding pin, if the pin
      --  is configured as a digital input. Refer to the device data sheet for
      --  filter characteristics.
      PCR0_PFE_Field_1)
     with Size => 1;
   for PCR0_PFE_Field use
     (PCR0_PFE_Field_0 => 0,
      PCR0_PFE_Field_1 => 1);

   --  Open Drain Enable
   type PCR0_ODE_Field is
     (
      --  Open drain output is disabled on the corresponding pin.
      PCR0_ODE_Field_0,
      --  Open drain output is enabled on the corresponding pin, if the pin is
      --  configured as a digital output.
      PCR0_ODE_Field_1)
     with Size => 1;
   for PCR0_ODE_Field use
     (PCR0_ODE_Field_0 => 0,
      PCR0_ODE_Field_1 => 1);

   --  Drive Strength Enable
   type PCR0_DSE_Field is
     (
      --  Low drive strength is configured on the corresponding pin, if pin is
      --  configured as a digital output.
      PCR0_DSE_Field_0,
      --  High drive strength is configured on the corresponding pin, if pin is
      --  configured as a digital output.
      PCR0_DSE_Field_1)
     with Size => 1;
   for PCR0_DSE_Field use
     (PCR0_DSE_Field_0 => 0,
      PCR0_DSE_Field_1 => 1);

   --  Pin Mux Control
   type PCR0_MUX_Field is
     (
      --  Pin disabled (Alternative 0) (analog).
      PCR0_MUX_Field_000,
      --  Alternative 1 (GPIO).
      PCR0_MUX_Field_001,
      --  Alternative 2 (chip-specific).
      PCR0_MUX_Field_010,
      --  Alternative 3 (chip-specific).
      PCR0_MUX_Field_011,
      --  Alternative 4 (chip-specific).
      PCR0_MUX_Field_100,
      --  Alternative 5 (chip-specific).
      PCR0_MUX_Field_101,
      --  Alternative 6 (chip-specific).
      PCR0_MUX_Field_110,
      --  Alternative 7 (chip-specific).
      PCR0_MUX_Field_111)
     with Size => 3;
   for PCR0_MUX_Field use
     (PCR0_MUX_Field_000 => 0,
      PCR0_MUX_Field_001 => 1,
      PCR0_MUX_Field_010 => 2,
      PCR0_MUX_Field_011 => 3,
      PCR0_MUX_Field_100 => 4,
      PCR0_MUX_Field_101 => 5,
      PCR0_MUX_Field_110 => 6,
      PCR0_MUX_Field_111 => 7);

   --  Lock Register
   type PCR0_LK_Field is
     (
      --  Pin Control Register fields [15:0] are not locked.
      PCR0_LK_Field_0,
      --  Pin Control Register fields [15:0] are locked and cannot be updated
      --  until the next system reset.
      PCR0_LK_Field_1)
     with Size => 1;
   for PCR0_LK_Field use
     (PCR0_LK_Field_0 => 0,
      PCR0_LK_Field_1 => 1);

   --  Interrupt Configuration
   type PCR0_IRQC_Field is
     (
      --  Interrupt Status Flag (ISF) is disabled.
      PCR0_IRQC_Field_0000,
      --  ISF flag and DMA request on rising edge.
      PCR0_IRQC_Field_0001,
      --  ISF flag and DMA request on falling edge.
      PCR0_IRQC_Field_0010,
      --  ISF flag and DMA request on either edge.
      PCR0_IRQC_Field_0011,
      --  ISF flag and Interrupt when logic 0.
      PCR0_IRQC_Field_1000,
      --  ISF flag and Interrupt on rising-edge.
      PCR0_IRQC_Field_1001,
      --  ISF flag and Interrupt on falling-edge.
      PCR0_IRQC_Field_1010,
      --  ISF flag and Interrupt on either edge.
      PCR0_IRQC_Field_1011,
      --  ISF flag and Interrupt when logic 1.
      PCR0_IRQC_Field_1100)
     with Size => 4;
   for PCR0_IRQC_Field use
     (PCR0_IRQC_Field_0000 => 0,
      PCR0_IRQC_Field_0001 => 1,
      PCR0_IRQC_Field_0010 => 2,
      PCR0_IRQC_Field_0011 => 3,
      PCR0_IRQC_Field_1000 => 8,
      PCR0_IRQC_Field_1001 => 9,
      PCR0_IRQC_Field_1010 => 10,
      PCR0_IRQC_Field_1011 => 11,
      PCR0_IRQC_Field_1100 => 12);

   --  Interrupt Status Flag
   type PCR0_ISF_Field is
     (
      --  Configured interrupt is not detected.
      PCR0_ISF_Field_0,
      --  Configured interrupt is detected. If the pin is configured to
      --  generate a DMA request, then the corresponding flag will be cleared
      --  automatically at the completion of the requested DMA transfer.
      --  Otherwise, the flag remains set until a logic 1 is written to the
      --  flag. If the pin is configured for a level sensitive interrupt and
      --  the pin remains asserted, then the flag is set again immediately
      --  after it is cleared.
      PCR0_ISF_Field_1)
     with Size => 1;
   for PCR0_ISF_Field use
     (PCR0_ISF_Field_0 => 0,
      PCR0_ISF_Field_1 => 1);

   --  Pin Control Register n
   type PCR_Register is record
      --  Pull Select
      PS             : PCR0_PS_Field := NRF_SVD.PORT.PCR0_PS_Field_0;
      --  Pull Enable
      PE             : PCR0_PE_Field := NRF_SVD.PORT.PCR0_PE_Field_1;
      --  Slew Rate Enable
      SRE            : PCR0_SRE_Field := NRF_SVD.PORT.PCR0_SRE_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Read-only. Passive Filter Enable
      PFE            : PCR0_PFE_Field := NRF_SVD.PORT.PCR0_PFE_Field_0;
      --  Open Drain Enable
      ODE            : PCR0_ODE_Field := NRF_SVD.PORT.PCR0_ODE_Field_0;
      --  Read-only. Drive Strength Enable
      DSE            : PCR0_DSE_Field := NRF_SVD.PORT.PCR0_DSE_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pin Mux Control
      MUX            : PCR0_MUX_Field := NRF_SVD.PORT.PCR0_MUX_Field_111;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Lock Register
      LK             : PCR0_LK_Field := NRF_SVD.PORT.PCR0_LK_Field_0;
      --  Interrupt Configuration
      IRQC           : PCR0_IRQC_Field := NRF_SVD.PORT.PCR0_IRQC_Field_0000;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Interrupt Status Flag
      ISF            : PCR0_ISF_Field := NRF_SVD.PORT.PCR0_ISF_Field_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      PS             at 0 range 0 .. 0;
      PE             at 0 range 1 .. 1;
      SRE            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PFE            at 0 range 4 .. 4;
      ODE            at 0 range 5 .. 5;
      DSE            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MUX            at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      LK             at 0 range 15 .. 15;
      IRQC           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ISF            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PORTA_GPCLR_GPWD_Field is HAL.UInt16;

   --  Global Pin Write Enable
   type GPCLR_GPWE_Field is
     (
      --  Corresponding Pin Control Register is not updated with the value in
      --  GPWD.
      GPCLR_GPWE_Field_0,
      --  Corresponding Pin Control Register is updated with the value in GPWD.
      GPCLR_GPWE_Field_1)
     with Size => 16;
   for GPCLR_GPWE_Field use
     (GPCLR_GPWE_Field_0 => 0,
      GPCLR_GPWE_Field_1 => 1);

   --  Global Pin Control Low Register
   type PORTA_GPCLR_Register is record
      --  Write-only. Global Pin Write Data
      GPWD : PORTA_GPCLR_GPWD_Field := 16#0#;
      --  Write-only. Global Pin Write Enable
      GPWE : GPCLR_GPWE_Field := NRF_SVD.PORT.GPCLR_GPWE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_GPCLR_Register use record
      GPWD at 0 range 0 .. 15;
      GPWE at 0 range 16 .. 31;
   end record;

   subtype PORTA_GPCHR_GPWD_Field is HAL.UInt16;

   --  Global Pin Write Enable
   type GPCHR_GPWE_Field is
     (
      --  Corresponding Pin Control Register is not updated with the value in
      --  GPWD.
      GPCHR_GPWE_Field_0,
      --  Corresponding Pin Control Register is updated with the value in GPWD.
      GPCHR_GPWE_Field_1)
     with Size => 16;
   for GPCHR_GPWE_Field use
     (GPCHR_GPWE_Field_0 => 0,
      GPCHR_GPWE_Field_1 => 1);

   --  Global Pin Control High Register
   type PORTA_GPCHR_Register is record
      --  Write-only. Global Pin Write Data
      GPWD : PORTA_GPCHR_GPWD_Field := 16#0#;
      --  Write-only. Global Pin Write Enable
      GPWE : GPCHR_GPWE_Field := NRF_SVD.PORT.GPCHR_GPWE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_GPCHR_Register use record
      GPWD at 0 range 0 .. 15;
      GPWE at 0 range 16 .. 31;
   end record;

   --  Clock Source
   type DFCR_CS_Field is
     (
      --  Digital filters are clocked by the bus clock.
      DFCR_CS_Field_0,
      --  Digital filters are clocked by the LPO clock.
      DFCR_CS_Field_1)
     with Size => 1;
   for DFCR_CS_Field use
     (DFCR_CS_Field_0 => 0,
      DFCR_CS_Field_1 => 1);

   --  Digital Filter Clock Register
   type PORTD_DFCR_Register is record
      --  Clock Source
      CS            : DFCR_CS_Field := NRF_SVD.PORT.DFCR_CS_Field_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTD_DFCR_Register use record
      CS            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PORTD_DFWR_FILT_Field is HAL.UInt5;

   --  Digital Filter Width Register
   type PORTD_DFWR_Register is record
      --  Filter Length
      FILT          : PORTD_DFWR_FILT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTD_DFWR_Register use record
      FILT          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pin Control and Interrupts
   type PORTA_Peripheral is record
      --  Pin Control Register n
      PCR0  : aliased PCR_Register;
      --  Pin Control Register n
      PCR1  : aliased PCR_Register;
      --  Pin Control Register n
      PCR2  : aliased PCR_Register;
      --  Pin Control Register n
      PCR3  : aliased PCR_Register;
      --  Pin Control Register n
      PCR4  : aliased PCR_Register;
      --  Pin Control Register n
      PCR5  : aliased PCR_Register;
      --  Pin Control Register n
      PCR6  : aliased PCR_Register;
      --  Pin Control Register n
      PCR7  : aliased PCR_Register;
      --  Pin Control Register n
      PCR8  : aliased PCR_Register;
      --  Pin Control Register n
      PCR9  : aliased PCR_Register;
      --  Pin Control Register n
      PCR10 : aliased PCR_Register;
      --  Pin Control Register n
      PCR11 : aliased PCR_Register;
      --  Pin Control Register n
      PCR12 : aliased PCR_Register;
      --  Pin Control Register n
      PCR13 : aliased PCR_Register;
      --  Pin Control Register n
      PCR14 : aliased PCR_Register;
      --  Pin Control Register n
      PCR15 : aliased PCR_Register;
      --  Pin Control Register n
      PCR16 : aliased PCR_Register;
      --  Pin Control Register n
      PCR17 : aliased PCR_Register;
      --  Pin Control Register n
      PCR18 : aliased PCR_Register;
      --  Pin Control Register n
      PCR19 : aliased PCR_Register;
      --  Pin Control Register n
      PCR20 : aliased PCR_Register;
      --  Pin Control Register n
      PCR21 : aliased PCR_Register;
      --  Pin Control Register n
      PCR22 : aliased PCR_Register;
      --  Pin Control Register n
      PCR23 : aliased PCR_Register;
      --  Pin Control Register n
      PCR24 : aliased PCR_Register;
      --  Pin Control Register n
      PCR25 : aliased PCR_Register;
      --  Pin Control Register n
      PCR26 : aliased PCR_Register;
      --  Pin Control Register n
      PCR27 : aliased PCR_Register;
      --  Pin Control Register n
      PCR28 : aliased PCR_Register;
      --  Pin Control Register n
      PCR29 : aliased PCR_Register;
      --  Pin Control Register n
      PCR30 : aliased PCR_Register;
      --  Pin Control Register n
      PCR31 : aliased PCR_Register;
      --  Global Pin Control Low Register
      GPCLR : aliased PORTA_GPCLR_Register;
      --  Global Pin Control High Register
      GPCHR : aliased PORTA_GPCHR_Register;
      --  Interrupt Status Flag Register
      ISFR  : aliased HAL.UInt32;
   end record
     with Volatile;

   for PORTA_Peripheral use record
      PCR0  at 16#0# range 0 .. 31;
      PCR1  at 16#4# range 0 .. 31;
      PCR2  at 16#8# range 0 .. 31;
      PCR3  at 16#C# range 0 .. 31;
      PCR4  at 16#10# range 0 .. 31;
      PCR5  at 16#14# range 0 .. 31;
      PCR6  at 16#18# range 0 .. 31;
      PCR7  at 16#1C# range 0 .. 31;
      PCR8  at 16#20# range 0 .. 31;
      PCR9  at 16#24# range 0 .. 31;
      PCR10 at 16#28# range 0 .. 31;
      PCR11 at 16#2C# range 0 .. 31;
      PCR12 at 16#30# range 0 .. 31;
      PCR13 at 16#34# range 0 .. 31;
      PCR14 at 16#38# range 0 .. 31;
      PCR15 at 16#3C# range 0 .. 31;
      PCR16 at 16#40# range 0 .. 31;
      PCR17 at 16#44# range 0 .. 31;
      PCR18 at 16#48# range 0 .. 31;
      PCR19 at 16#4C# range 0 .. 31;
      PCR20 at 16#50# range 0 .. 31;
      PCR21 at 16#54# range 0 .. 31;
      PCR22 at 16#58# range 0 .. 31;
      PCR23 at 16#5C# range 0 .. 31;
      PCR24 at 16#60# range 0 .. 31;
      PCR25 at 16#64# range 0 .. 31;
      PCR26 at 16#68# range 0 .. 31;
      PCR27 at 16#6C# range 0 .. 31;
      PCR28 at 16#70# range 0 .. 31;
      PCR29 at 16#74# range 0 .. 31;
      PCR30 at 16#78# range 0 .. 31;
      PCR31 at 16#7C# range 0 .. 31;
      GPCLR at 16#80# range 0 .. 31;
      GPCHR at 16#84# range 0 .. 31;
      ISFR  at 16#A0# range 0 .. 31;
   end record;

   --  Pin Control and Interrupts
   PORTA_Periph : aliased PORTA_Peripheral
     with Import, Address => System'To_Address (16#40049000#);

   --  Pin Control and Interrupts
   PORTB_Periph : aliased PORTA_Peripheral
     with Import, Address => System'To_Address (16#4004A000#);

   --  Pin Control and Interrupts
   PORTC_Periph : aliased PORTA_Peripheral
     with Import, Address => System'To_Address (16#4004B000#);

   --  Pin Control and Interrupts
   PORTE_Periph : aliased PORTA_Peripheral
     with Import, Address => System'To_Address (16#4004D000#);

   --  Pin Control and Interrupts
   type PORTD_Peripheral is record
      --  Pin Control Register n
      PCR0  : aliased PCR_Register;
      --  Pin Control Register n
      PCR1  : aliased PCR_Register;
      --  Pin Control Register n
      PCR2  : aliased PCR_Register;
      --  Pin Control Register n
      PCR3  : aliased PCR_Register;
      --  Pin Control Register n
      PCR4  : aliased PCR_Register;
      --  Pin Control Register n
      PCR5  : aliased PCR_Register;
      --  Pin Control Register n
      PCR6  : aliased PCR_Register;
      --  Pin Control Register n
      PCR7  : aliased PCR_Register;
      --  Pin Control Register n
      PCR8  : aliased PCR_Register;
      --  Pin Control Register n
      PCR9  : aliased PCR_Register;
      --  Pin Control Register n
      PCR10 : aliased PCR_Register;
      --  Pin Control Register n
      PCR11 : aliased PCR_Register;
      --  Pin Control Register n
      PCR12 : aliased PCR_Register;
      --  Pin Control Register n
      PCR13 : aliased PCR_Register;
      --  Pin Control Register n
      PCR14 : aliased PCR_Register;
      --  Pin Control Register n
      PCR15 : aliased PCR_Register;
      --  Pin Control Register n
      PCR16 : aliased PCR_Register;
      --  Pin Control Register n
      PCR17 : aliased PCR_Register;
      --  Pin Control Register n
      PCR18 : aliased PCR_Register;
      --  Pin Control Register n
      PCR19 : aliased PCR_Register;
      --  Pin Control Register n
      PCR20 : aliased PCR_Register;
      --  Pin Control Register n
      PCR21 : aliased PCR_Register;
      --  Pin Control Register n
      PCR22 : aliased PCR_Register;
      --  Pin Control Register n
      PCR23 : aliased PCR_Register;
      --  Pin Control Register n
      PCR24 : aliased PCR_Register;
      --  Pin Control Register n
      PCR25 : aliased PCR_Register;
      --  Pin Control Register n
      PCR26 : aliased PCR_Register;
      --  Pin Control Register n
      PCR27 : aliased PCR_Register;
      --  Pin Control Register n
      PCR28 : aliased PCR_Register;
      --  Pin Control Register n
      PCR29 : aliased PCR_Register;
      --  Pin Control Register n
      PCR30 : aliased PCR_Register;
      --  Pin Control Register n
      PCR31 : aliased PCR_Register;
      --  Global Pin Control Low Register
      GPCLR : aliased PORTA_GPCLR_Register;
      --  Global Pin Control High Register
      GPCHR : aliased PORTA_GPCHR_Register;
      --  Interrupt Status Flag Register
      ISFR  : aliased HAL.UInt32;
      --  Digital Filter Enable Register
      DFER  : aliased HAL.UInt32;
      --  Digital Filter Clock Register
      DFCR  : aliased PORTD_DFCR_Register;
      --  Digital Filter Width Register
      DFWR  : aliased PORTD_DFWR_Register;
   end record
     with Volatile;

   for PORTD_Peripheral use record
      PCR0  at 16#0# range 0 .. 31;
      PCR1  at 16#4# range 0 .. 31;
      PCR2  at 16#8# range 0 .. 31;
      PCR3  at 16#C# range 0 .. 31;
      PCR4  at 16#10# range 0 .. 31;
      PCR5  at 16#14# range 0 .. 31;
      PCR6  at 16#18# range 0 .. 31;
      PCR7  at 16#1C# range 0 .. 31;
      PCR8  at 16#20# range 0 .. 31;
      PCR9  at 16#24# range 0 .. 31;
      PCR10 at 16#28# range 0 .. 31;
      PCR11 at 16#2C# range 0 .. 31;
      PCR12 at 16#30# range 0 .. 31;
      PCR13 at 16#34# range 0 .. 31;
      PCR14 at 16#38# range 0 .. 31;
      PCR15 at 16#3C# range 0 .. 31;
      PCR16 at 16#40# range 0 .. 31;
      PCR17 at 16#44# range 0 .. 31;
      PCR18 at 16#48# range 0 .. 31;
      PCR19 at 16#4C# range 0 .. 31;
      PCR20 at 16#50# range 0 .. 31;
      PCR21 at 16#54# range 0 .. 31;
      PCR22 at 16#58# range 0 .. 31;
      PCR23 at 16#5C# range 0 .. 31;
      PCR24 at 16#60# range 0 .. 31;
      PCR25 at 16#64# range 0 .. 31;
      PCR26 at 16#68# range 0 .. 31;
      PCR27 at 16#6C# range 0 .. 31;
      PCR28 at 16#70# range 0 .. 31;
      PCR29 at 16#74# range 0 .. 31;
      PCR30 at 16#78# range 0 .. 31;
      PCR31 at 16#7C# range 0 .. 31;
      GPCLR at 16#80# range 0 .. 31;
      GPCHR at 16#84# range 0 .. 31;
      ISFR  at 16#A0# range 0 .. 31;
      DFER  at 16#C0# range 0 .. 31;
      DFCR  at 16#C4# range 0 .. 31;
      DFWR  at 16#C8# range 0 .. 31;
   end record;

   --  Pin Control and Interrupts
   PORTD_Periph : aliased PORTD_Peripheral
     with Import, Address => System'To_Address (16#4004C000#);

end NRF_SVD.PORT;
