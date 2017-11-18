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

--  This spec has been automatically generated from MKV11Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  DMA channel multiplexor
package NRF_SVD.DMAMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMA Channel Source (Slot)
   type CHCFG_SOURCE_Field is
     (
      --  Disable
      CHCFG_SOURCE_Field_0,
      --  UART0_Receive_Complete
      CHCFG_SOURCE_Field_2,
      --  UART0_Transmit_Complete
      CHCFG_SOURCE_Field_3,
      --  UART1_Receive_Complete
      CHCFG_SOURCE_Field_4,
      --  UART1_Transmit_Complete
      CHCFG_SOURCE_Field_5,
      --  CAN0Rx
      CHCFG_SOURCE_Field_14,
      --  SPI0_Receive_Complete
      CHCFG_SOURCE_Field_16,
      --  SPI0_Transmit_Complete
      CHCFG_SOURCE_Field_17,
      --  I2C0_Transmission_Complete
      CHCFG_SOURCE_Field_22,
      --  FTM0_CH0_Event
      CHCFG_SOURCE_Field_24,
      --  FTM0_CH1_Event
      CHCFG_SOURCE_Field_25,
      --  FTM0_CH2_Event
      CHCFG_SOURCE_Field_26,
      --  FTM0_CH3_Event
      CHCFG_SOURCE_Field_27,
      --  FTM0_CH4_Event
      CHCFG_SOURCE_Field_28,
      --  FTM0_CH5_Event
      CHCFG_SOURCE_Field_29,
      --  FTM4_CH0_Event
      CHCFG_SOURCE_Field_30,
      --  FTM4_CH1_Event
      CHCFG_SOURCE_Field_31,
      --  FTM1_CH0_Event
      CHCFG_SOURCE_Field_32,
      --  FTM1_CH1_Event
      CHCFG_SOURCE_Field_33,
      --  FTM2_CH0_Event
      CHCFG_SOURCE_Field_34,
      --  FTM2_CH1_Event
      CHCFG_SOURCE_Field_35,
      --  FTM3_CH0_Event
      CHCFG_SOURCE_Field_36,
      --  FTM3_CH1_Event
      CHCFG_SOURCE_Field_37,
      --  FTM3_CH2_Event
      CHCFG_SOURCE_Field_38,
      --  FTM3_CH3_Event
      CHCFG_SOURCE_Field_39,
      --  ADC0_COCO
      CHCFG_SOURCE_Field_40,
      --  ADC1_COCO
      CHCFG_SOURCE_Field_41,
      --  CMP0_Output
      CHCFG_SOURCE_Field_42,
      --  CMP1_Output
      CHCFG_SOURCE_Field_43,
      --  DAC0_Buffer_Limit
      CHCFG_SOURCE_Field_45,
      --  PDB1_Programmable_Interrupt
      CHCFG_SOURCE_Field_47,
      --  PDB0_Programmable_Interrupt
      CHCFG_SOURCE_Field_48,
      --  PORTA_Rising_Falling_Edge
      CHCFG_SOURCE_Field_49,
      --  PORTB_Rising_Falling_Edge
      CHCFG_SOURCE_Field_50,
      --  PORTC_Rising_Falling_Edge
      CHCFG_SOURCE_Field_51,
      --  PORTD_Rising_Falling_Edge
      CHCFG_SOURCE_Field_52,
      --  PORTE_Rising_Falling_Edge
      CHCFG_SOURCE_Field_53,
      --  FTM3_CH4_Event
      CHCFG_SOURCE_Field_54,
      --  FTM3_CH5_Event
      CHCFG_SOURCE_Field_55,
      --  FTM5_CH0_Event
      CHCFG_SOURCE_Field_56,
      --  FTM5_CH1_Event
      CHCFG_SOURCE_Field_57,
      --  DMAMUX_Always_Enabled58
      CHCFG_SOURCE_Field_58,
      --  DMAMUX_Always_Enabled59
      CHCFG_SOURCE_Field_59,
      --  DMAMUX_Always_Enabled60
      CHCFG_SOURCE_Field_60,
      --  DMAMUX_Always_Enabled61
      CHCFG_SOURCE_Field_61,
      --  DMAMUX_Always_Enabled62
      CHCFG_SOURCE_Field_62,
      --  DMAMUX_Always_Enabled63
      CHCFG_SOURCE_Field_63)
     with Size => 6;
   for CHCFG_SOURCE_Field use
     (CHCFG_SOURCE_Field_0 => 0,
      CHCFG_SOURCE_Field_2 => 2,
      CHCFG_SOURCE_Field_3 => 3,
      CHCFG_SOURCE_Field_4 => 4,
      CHCFG_SOURCE_Field_5 => 5,
      CHCFG_SOURCE_Field_14 => 14,
      CHCFG_SOURCE_Field_16 => 16,
      CHCFG_SOURCE_Field_17 => 17,
      CHCFG_SOURCE_Field_22 => 22,
      CHCFG_SOURCE_Field_24 => 24,
      CHCFG_SOURCE_Field_25 => 25,
      CHCFG_SOURCE_Field_26 => 26,
      CHCFG_SOURCE_Field_27 => 27,
      CHCFG_SOURCE_Field_28 => 28,
      CHCFG_SOURCE_Field_29 => 29,
      CHCFG_SOURCE_Field_30 => 30,
      CHCFG_SOURCE_Field_31 => 31,
      CHCFG_SOURCE_Field_32 => 32,
      CHCFG_SOURCE_Field_33 => 33,
      CHCFG_SOURCE_Field_34 => 34,
      CHCFG_SOURCE_Field_35 => 35,
      CHCFG_SOURCE_Field_36 => 36,
      CHCFG_SOURCE_Field_37 => 37,
      CHCFG_SOURCE_Field_38 => 38,
      CHCFG_SOURCE_Field_39 => 39,
      CHCFG_SOURCE_Field_40 => 40,
      CHCFG_SOURCE_Field_41 => 41,
      CHCFG_SOURCE_Field_42 => 42,
      CHCFG_SOURCE_Field_43 => 43,
      CHCFG_SOURCE_Field_45 => 45,
      CHCFG_SOURCE_Field_47 => 47,
      CHCFG_SOURCE_Field_48 => 48,
      CHCFG_SOURCE_Field_49 => 49,
      CHCFG_SOURCE_Field_50 => 50,
      CHCFG_SOURCE_Field_51 => 51,
      CHCFG_SOURCE_Field_52 => 52,
      CHCFG_SOURCE_Field_53 => 53,
      CHCFG_SOURCE_Field_54 => 54,
      CHCFG_SOURCE_Field_55 => 55,
      CHCFG_SOURCE_Field_56 => 56,
      CHCFG_SOURCE_Field_57 => 57,
      CHCFG_SOURCE_Field_58 => 58,
      CHCFG_SOURCE_Field_59 => 59,
      CHCFG_SOURCE_Field_60 => 60,
      CHCFG_SOURCE_Field_61 => 61,
      CHCFG_SOURCE_Field_62 => 62,
      CHCFG_SOURCE_Field_63 => 63);

   --  DMA Channel Enable
   type CHCFG_ENBL_Field is
     (
      --  DMA channel is disabled. This mode is primarily used during
      --  configuration of the DMAMux. The DMA has separate channel
      --  enables/disables, which should be used to disable or reconfigure a
      --  DMA channel.
      CHCFG_ENBL_Field_0,
      --  DMA channel is enabled
      CHCFG_ENBL_Field_1)
     with Size => 1;
   for CHCFG_ENBL_Field use
     (CHCFG_ENBL_Field_0 => 0,
      CHCFG_ENBL_Field_1 => 1);

   --  Channel Configuration register
   type DMAMUX_CHCFG_Register is record
      --  DMA Channel Source (Slot)
      SOURCE       : CHCFG_SOURCE_Field :=
                      NRF_SVD.DMAMUX.CHCFG_SOURCE_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  DMA Channel Enable
      ENBL         : CHCFG_ENBL_Field := NRF_SVD.DMAMUX.CHCFG_ENBL_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DMAMUX_CHCFG_Register use record
      SOURCE       at 0 range 0 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      ENBL         at 0 range 7 .. 7;
   end record;

   --  Channel Configuration register
   type DMAMUX_CHCFG_Registers is array (0 .. 7) of DMAMUX_CHCFG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA channel multiplexor
   type DMAMUX_Peripheral is record
      --  Channel Configuration register
      CHCFG : aliased DMAMUX_CHCFG_Registers;
   end record
     with Volatile;

   for DMAMUX_Peripheral use record
      CHCFG at 0 range 0 .. 63;
   end record;

   --  DMA channel multiplexor
   DMAMUX_Periph : aliased DMAMUX_Peripheral
     with Import, Address => DMAMUX_Base;

end NRF_SVD.DMAMUX;
