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

--  This spec has been automatically generated from MKE04Z1284.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Integration Module
package NRF_SVD.SIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Low Voltage Detect
   type SRSID_LVD_Field is
     (
      --  Reset is not caused by LVD trip or POR.
      SRSID_LVD_Field_0,
      --  Reset is caused by LVD trip or POR.
      SRSID_LVD_Field_1)
     with Size => 1;
   for SRSID_LVD_Field use
     (SRSID_LVD_Field_0 => 0,
      SRSID_LVD_Field_1 => 1);

   --  Internal Clock Source Module Reset
   type SRSID_LOC_Field is
     (
      --  Reset is not caused by the ICS module.
      SRSID_LOC_Field_0,
      --  Reset is caused by the ICS module.
      SRSID_LOC_Field_1)
     with Size => 1;
   for SRSID_LOC_Field use
     (SRSID_LOC_Field_0 => 0,
      SRSID_LOC_Field_1 => 1);

   --  Watchdog (WDOG)
   type SRSID_WDOG_Field is
     (
      --  Reset is not caused by WDOG timeout.
      SRSID_WDOG_Field_0,
      --  Reset is caused by WDOG timeout.
      SRSID_WDOG_Field_1)
     with Size => 1;
   for SRSID_WDOG_Field use
     (SRSID_WDOG_Field_0 => 0,
      SRSID_WDOG_Field_1 => 1);

   --  External Reset Pin
   type SRSID_PIN_Field is
     (
      --  Reset is not caused by external reset pin.
      SRSID_PIN_Field_0,
      --  Reset came from external reset pin.
      SRSID_PIN_Field_1)
     with Size => 1;
   for SRSID_PIN_Field use
     (SRSID_PIN_Field_0 => 0,
      SRSID_PIN_Field_1 => 1);

   --  Power-On Reset
   type SRSID_POR_Field is
     (
      --  Reset not caused by POR.
      SRSID_POR_Field_0,
      --  POR caused reset.
      SRSID_POR_Field_1)
     with Size => 1;
   for SRSID_POR_Field use
     (SRSID_POR_Field_0 => 0,
      SRSID_POR_Field_1 => 1);

   --  Core Lockup
   type SRSID_LOCKUP_Field is
     (
      --  Reset is not caused by core LOCKUP event.
      SRSID_LOCKUP_Field_0,
      --  Reset is caused by core LOCKUP event.
      SRSID_LOCKUP_Field_1)
     with Size => 1;
   for SRSID_LOCKUP_Field use
     (SRSID_LOCKUP_Field_0 => 0,
      SRSID_LOCKUP_Field_1 => 1);

   --  Software
   type SRSID_SW_Field is
     (
      --  Reset is not caused by software setting of SYSRESETREQ bit.
      SRSID_SW_Field_0,
      --  Reset caused by software setting of SYSRESETREQ bit
      SRSID_SW_Field_1)
     with Size => 1;
   for SRSID_SW_Field use
     (SRSID_SW_Field_0 => 0,
      SRSID_SW_Field_1 => 1);

   --  MDM-AP System Reset Request
   type SRSID_MDMAP_Field is
     (
      --  Reset is not caused by host debugger system setting of the System
      --  Reset Request bit.
      SRSID_MDMAP_Field_0,
      --  Reset is caused by host debugger system setting of the System Reset
      --  Request bit.
      SRSID_MDMAP_Field_1)
     with Size => 1;
   for SRSID_MDMAP_Field use
     (SRSID_MDMAP_Field_0 => 0,
      SRSID_MDMAP_Field_1 => 1);

   --  Stop Mode Acknowledge Error Reset
   type SRSID_SACKERR_Field is
     (
      --  Reset is not caused by peripheral failure to acknowledge attempt to
      --  enter Stop mode.
      SRSID_SACKERR_Field_0,
      --  Reset is caused by peripheral failure to acknowledge attempt to enter
      --  Stop mode.
      SRSID_SACKERR_Field_1)
     with Size => 1;
   for SRSID_SACKERR_Field use
     (SRSID_SACKERR_Field_0 => 0,
      SRSID_SACKERR_Field_1 => 1);

   --  Device Pin ID
   type SRSID_PINID_Field is
     (
      --  8-pin
      SRSID_PINID_Field_0000,
      --  16-pin
      SRSID_PINID_Field_0001,
      --  20-pin
      SRSID_PINID_Field_0010,
      --  24-pin
      SRSID_PINID_Field_0011,
      --  32-pin
      SRSID_PINID_Field_0100,
      --  44-pin
      SRSID_PINID_Field_0101,
      --  48-pin
      SRSID_PINID_Field_0110,
      --  64-pin
      SRSID_PINID_Field_0111,
      --  80-pin
      SRSID_PINID_Field_1000,
      --  100-pin
      SRSID_PINID_Field_1010)
     with Size => 4;
   for SRSID_PINID_Field use
     (SRSID_PINID_Field_0000 => 0,
      SRSID_PINID_Field_0001 => 1,
      SRSID_PINID_Field_0010 => 2,
      SRSID_PINID_Field_0011 => 3,
      SRSID_PINID_Field_0100 => 4,
      SRSID_PINID_Field_0101 => 5,
      SRSID_PINID_Field_0110 => 6,
      SRSID_PINID_Field_0111 => 7,
      SRSID_PINID_Field_1000 => 8,
      SRSID_PINID_Field_1010 => 10);

   subtype SIM_SRSID_RevID_Field is HAL.UInt4;

   --  Kinetis sub-family ID
   type SRSID_SUBFAMID_Field is
     (
      --  KEx4 sub-family
      SRSID_SUBFAMID_Field_0100,
      --  KEx6 sub-family
      SRSID_SUBFAMID_Field_0110)
     with Size => 4;
   for SRSID_SUBFAMID_Field use
     (SRSID_SUBFAMID_Field_0100 => 4,
      SRSID_SUBFAMID_Field_0110 => 6);

   --  Kinetis family ID
   type SRSID_FAMID_Field is
     (
      --  KE0x family.
      SRSID_FAMID_Field_0000)
     with Size => 4;
   for SRSID_FAMID_Field use
     (SRSID_FAMID_Field_0000 => 0);

   --  System Reset Status and ID Register
   type SIM_SRSID_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Low Voltage Detect
      LVD            : SRSID_LVD_Field;
      --  Read-only. Internal Clock Source Module Reset
      LOC            : SRSID_LOC_Field;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Watchdog (WDOG)
      WDOG           : SRSID_WDOG_Field;
      --  Read-only. External Reset Pin
      PIN            : SRSID_PIN_Field;
      --  Read-only. Power-On Reset
      POR            : SRSID_POR_Field;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Core Lockup
      LOCKUP         : SRSID_LOCKUP_Field;
      --  Read-only. Software
      SW             : SRSID_SW_Field;
      --  Read-only. MDM-AP System Reset Request
      MDMAP          : SRSID_MDMAP_Field;
      --  unspecified
      Reserved_12_12 : HAL.Bit;
      --  Read-only. Stop Mode Acknowledge Error Reset
      SACKERR        : SRSID_SACKERR_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Device Pin ID
      PINID          : SRSID_PINID_Field;
      --  Read-only. Device Revision Number
      RevID          : SIM_SRSID_RevID_Field;
      --  Read-only. Kinetis sub-family ID
      SUBFAMID       : SRSID_SUBFAMID_Field;
      --  Read-only. Kinetis family ID
      FAMID          : SRSID_FAMID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SRSID_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LVD            at 0 range 1 .. 1;
      LOC            at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      WDOG           at 0 range 5 .. 5;
      PIN            at 0 range 6 .. 6;
      POR            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LOCKUP         at 0 range 9 .. 9;
      SW             at 0 range 10 .. 10;
      MDMAP          at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      SACKERR        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PINID          at 0 range 16 .. 19;
      RevID          at 0 range 20 .. 23;
      SUBFAMID       at 0 range 24 .. 27;
      FAMID          at 0 range 28 .. 31;
   end record;

   --  NMI Pin Enable
   type SOPT0_NMIE_Field is
     (
      --  PTB4/KBI0_P12/FTM2_CH4/SPI0_MISO/ACMP1_IN2/NMI pin functions as PTB4,
      --  KBI0_P12, FTM2_CH4, SPI0_MISO or ACMP1_IN2.
      SOPT0_NMIE_Field_0,
      --  PTB4/KBI0_P12/FTM2_CH4/SPI0_MISO/ACMP1_IN2/NMI pin functions as NMI.
      SOPT0_NMIE_Field_1)
     with Size => 1;
   for SOPT0_NMIE_Field use
     (SOPT0_NMIE_Field_0 => 0,
      SOPT0_NMIE_Field_1 => 1);

   --  RESET Pin Enable
   type SOPT0_RSTPE_Field is
     (
      --  PTA5/KBI0_P5/IRQ/TCLK0/RESET pin functions as PTA5/KBI0_P5/IRQ/TCLK0.
      SOPT0_RSTPE_Field_0,
      --  PTA5/KBI0_P5/IRQ/TCLK0/RESET pin functions as RESET.
      SOPT0_RSTPE_Field_1)
     with Size => 1;
   for SOPT0_RSTPE_Field use
     (SOPT0_RSTPE_Field_0 => 0,
      SOPT0_RSTPE_Field_1 => 1);

   --  Single Wire Debug Port Pin Enable
   type SOPT0_SWDE_Field is
     (
      --  PTA4/KBI0_P4/ACMP0_OUT/SWD_DIO as PTA4 or ACMP0_OUT function,
      --  PTC4/KBI0_P20/RTC_CLKOUT/FTM1_CH0/ACMP0_IN2/SWD_CLK as PTC4,
      --  KBI0_P20, RTC_CLKOUT, FTM1_CH0, OR ACMP0_IN2 function.
      SOPT0_SWDE_Field_0,
      --  PTA4/KBI0_P4/ACMP0_OUT/SWD_DIO as SWD_DIO function,
      --  PTC4/KBI0_P20/RTC_CLKOUT/FTM1_CH0/ACMP0_IN2/SWD_CLK as SWD_CLK
      --  function.
      SOPT0_SWDE_Field_1)
     with Size => 1;
   for SOPT0_SWDE_Field use
     (SOPT0_SWDE_Field_0 => 0,
      SOPT0_SWDE_Field_1 => 1);

   --  ACMP Trigger FTM2 selection
   type SOPT0_ACTRG_Field is
     (
      --  ACMP0 out
      SOPT0_ACTRG_Field_0,
      --  ACMP1 out
      SOPT0_ACTRG_Field_1)
     with Size => 1;
   for SOPT0_ACTRG_Field use
     (SOPT0_ACTRG_Field_0 => 0,
      SOPT0_ACTRG_Field_1 => 1);

   --  UART0 RxD Filter Select
   type SOPT0_RXDFE_Field is
     (
      --  RXD0 input signal is connected to UART0 module directly.
      SOPT0_RXDFE_Field_00,
      --  RXD0 input signal is filtered by ACMP0, then injected to UART0.
      SOPT0_RXDFE_Field_01,
      --  RXD0 input signal is filtered by ACMP1, then injected to UART0.
      SOPT0_RXDFE_Field_10)
     with Size => 2;
   for SOPT0_RXDFE_Field use
     (SOPT0_RXDFE_Field_00 => 0,
      SOPT0_RXDFE_Field_01 => 1,
      SOPT0_RXDFE_Field_10 => 2);

   --  Real-Time Counter Capture
   type SOPT0_RTCC_Field is
     (
      --  RTC overflow is not connected to FTM1 input channel 1.
      SOPT0_RTCC_Field_0,
      --  RTC overflow is connected to FTM1 input channel 1.
      SOPT0_RTCC_Field_1)
     with Size => 1;
   for SOPT0_RTCC_Field use
     (SOPT0_RTCC_Field_0 => 0,
      SOPT0_RTCC_Field_1 => 1);

   --  Analog Comparator to Input Capture Enable
   type SOPT0_ACIC_Field is
     (
      --  ACMP0 output is not connected to FTM1 input channel 0.
      SOPT0_ACIC_Field_0,
      --  ACMP0 output is connected to FTM1 input channel 0.
      SOPT0_ACIC_Field_1)
     with Size => 1;
   for SOPT0_ACIC_Field use
     (SOPT0_ACIC_Field_0 => 0,
      SOPT0_ACIC_Field_1 => 1);

   --  UART0_RX Capture Select
   type SOPT0_RXDCE_Field is
     (
      --  UART0_RX input signal is connected to the UART0 module only.
      SOPT0_RXDCE_Field_0,
      --  UART0_RX input signal is connected to the UART0 module and FTM0
      --  channel 1.
      SOPT0_RXDCE_Field_1)
     with Size => 1;
   for SOPT0_RXDCE_Field use
     (SOPT0_RXDCE_Field_0 => 0,
      SOPT0_RXDCE_Field_1 => 1);

   --  FTM2 Synchronization Select
   type SOPT0_FTMSYNC_Field is
     (
      --  No synchronization triggered.
      SOPT0_FTMSYNC_Field_0,
      --  Generates a PWM synchronization trigger to the FTM2 modules.
      SOPT0_FTMSYNC_Field_1)
     with Size => 1;
   for SOPT0_FTMSYNC_Field use
     (SOPT0_FTMSYNC_Field_0 => 0,
      SOPT0_FTMSYNC_Field_1 => 1);

   --  UART0_TX Modulation Select
   type SOPT0_TXDME_Field is
     (
      --  UART0_TX output is connected to pinout directly.
      SOPT0_TXDME_Field_0,
      --  UART0_TX output is modulated by FTM0 channel 0 before mapped to
      --  pinout.
      SOPT0_TXDME_Field_1)
     with Size => 1;
   for SOPT0_TXDME_Field use
     (SOPT0_TXDME_Field_0 => 0,
      SOPT0_TXDME_Field_1 => 1);

   --  BUS Clock Output select
   type SOPT0_BUSREF_Field is
     (
      --  Bus
      SOPT0_BUSREF_Field_000,
      --  Bus divided by 2
      SOPT0_BUSREF_Field_001,
      --  Bus divided by 4
      SOPT0_BUSREF_Field_010,
      --  Bus divided by 8
      SOPT0_BUSREF_Field_011,
      --  Bus divided by 16
      SOPT0_BUSREF_Field_100,
      --  Bus divided by 32
      SOPT0_BUSREF_Field_101,
      --  Bus divided by 64
      SOPT0_BUSREF_Field_110,
      --  Bus divided by 128
      SOPT0_BUSREF_Field_111)
     with Size => 3;
   for SOPT0_BUSREF_Field use
     (SOPT0_BUSREF_Field_000 => 0,
      SOPT0_BUSREF_Field_001 => 1,
      SOPT0_BUSREF_Field_010 => 2,
      SOPT0_BUSREF_Field_011 => 3,
      SOPT0_BUSREF_Field_100 => 4,
      SOPT0_BUSREF_Field_101 => 5,
      SOPT0_BUSREF_Field_110 => 6,
      SOPT0_BUSREF_Field_111 => 7);

   --  Bus Clock Output Enable
   type SOPT0_CLKOE_Field is
     (
      --  Bus clock output is disabled on PTH2.
      SOPT0_CLKOE_Field_0,
      --  Bus clock output is enabled on PTH2.
      SOPT0_CLKOE_Field_1)
     with Size => 1;
   for SOPT0_CLKOE_Field use
     (SOPT0_CLKOE_Field_0 => 0,
      SOPT0_CLKOE_Field_1 => 1);

   --  ADC Hardware Trigger Source
   type SOPT0_ADHWT_Field is
     (
      --  RTC overflow as the ADC hardware trigger
      SOPT0_ADHWT_Field_000,
      --  FTM0 as the ADC hardware trigger
      SOPT0_ADHWT_Field_001,
      --  FTM2 init trigger with 8-bit programmable counter delay
      SOPT0_ADHWT_Field_010,
      --  FTM2 match trigger with 8-bit programmable counter delay
      SOPT0_ADHWT_Field_011,
      --  PIT channel0 overflow as the ADC hardware trigger
      SOPT0_ADHWT_Field_100,
      --  PIT channel1 overflow as the ADC hardware trigger
      SOPT0_ADHWT_Field_101,
      --  ACMP0 out as the ADC hardware trigger.
      SOPT0_ADHWT_Field_110,
      --  ACMP1 out as the ADC hardware trigger
      SOPT0_ADHWT_Field_111)
     with Size => 3;
   for SOPT0_ADHWT_Field use
     (SOPT0_ADHWT_Field_000 => 0,
      SOPT0_ADHWT_Field_001 => 1,
      SOPT0_ADHWT_Field_010 => 2,
      SOPT0_ADHWT_Field_011 => 3,
      SOPT0_ADHWT_Field_100 => 4,
      SOPT0_ADHWT_Field_101 => 5,
      SOPT0_ADHWT_Field_110 => 6,
      SOPT0_ADHWT_Field_111 => 7);

   --  FTM2 Trigger Delay Active
   type SOPT0_DLYACT_Field is
     (
      --  The delay is inactive.
      SOPT0_DLYACT_Field_0,
      --  The delay is active.
      SOPT0_DLYACT_Field_1)
     with Size => 1;
   for SOPT0_DLYACT_Field use
     (SOPT0_DLYACT_Field_0 => 0,
      SOPT0_DLYACT_Field_1 => 1);

   subtype SIM_SOPT0_DELAY_Field is HAL.UInt8;

   --  System Options Register 0
   type SIM_SOPT0_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  NMI Pin Enable
      NMIE           : SOPT0_NMIE_Field := NRF_SVD.SIM.SOPT0_NMIE_Field_1;
      --  RESET Pin Enable
      RSTPE          : SOPT0_RSTPE_Field := NRF_SVD.SIM.SOPT0_RSTPE_Field_1;
      --  Single Wire Debug Port Pin Enable
      SWDE           : SOPT0_SWDE_Field := NRF_SVD.SIM.SOPT0_SWDE_Field_1;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  ACMP Trigger FTM2 selection
      ACTRG          : SOPT0_ACTRG_Field := NRF_SVD.SIM.SOPT0_ACTRG_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  UART0 RxD Filter Select
      RXDFE          : SOPT0_RXDFE_Field := NRF_SVD.SIM.SOPT0_RXDFE_Field_00;
      --  Real-Time Counter Capture
      RTCC           : SOPT0_RTCC_Field := NRF_SVD.SIM.SOPT0_RTCC_Field_0;
      --  Analog Comparator to Input Capture Enable
      ACIC           : SOPT0_ACIC_Field := NRF_SVD.SIM.SOPT0_ACIC_Field_0;
      --  UART0_RX Capture Select
      RXDCE          : SOPT0_RXDCE_Field := NRF_SVD.SIM.SOPT0_RXDCE_Field_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FTM2 Synchronization Select
      FTMSYNC        : SOPT0_FTMSYNC_Field :=
                        NRF_SVD.SIM.SOPT0_FTMSYNC_Field_0;
      --  UART0_TX Modulation Select
      TXDME          : SOPT0_TXDME_Field := NRF_SVD.SIM.SOPT0_TXDME_Field_0;
      --  BUS Clock Output select
      BUSREF         : SOPT0_BUSREF_Field :=
                        NRF_SVD.SIM.SOPT0_BUSREF_Field_000;
      --  Bus Clock Output Enable
      CLKOE          : SOPT0_CLKOE_Field := NRF_SVD.SIM.SOPT0_CLKOE_Field_0;
      --  ADC Hardware Trigger Source
      ADHWT          : SOPT0_ADHWT_Field := NRF_SVD.SIM.SOPT0_ADHWT_Field_000;
      --  Read-only. FTM2 Trigger Delay Active
      DLYACT         : SOPT0_DLYACT_Field := NRF_SVD.SIM.SOPT0_DLYACT_Field_0;
      --  FTM2 Trigger Delay
      DELAY_k        : SIM_SOPT0_DELAY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT0_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      NMIE           at 0 range 1 .. 1;
      RSTPE          at 0 range 2 .. 2;
      SWDE           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      ACTRG          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RXDFE          at 0 range 8 .. 9;
      RTCC           at 0 range 10 .. 10;
      ACIC           at 0 range 11 .. 11;
      RXDCE          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FTMSYNC        at 0 range 14 .. 14;
      TXDME          at 0 range 15 .. 15;
      BUSREF         at 0 range 16 .. 18;
      CLKOE          at 0 range 19 .. 19;
      ADHWT          at 0 range 20 .. 22;
      DLYACT         at 0 range 23 .. 23;
      DELAY_k        at 0 range 24 .. 31;
   end record;

   --  I2C0 4-Wire Interface Enable
   type SOPT1_I2C04WEN_Field is
     (
      --  I2C0 4-wire interface configuration is disabled.
      SOPT1_I2C04WEN_Field_0,
      --  I2C0 4-wire interface configuration is enabled.
      SOPT1_I2C04WEN_Field_1)
     with Size => 1;
   for SOPT1_I2C04WEN_Field use
     (SOPT1_I2C04WEN_Field_0 => 0,
      SOPT1_I2C04WEN_Field_1 => 1);

   --  I2C0 Output Invert
   type SOPT1_I2C0OINV_Field is
     (
      --  Under I2C0 4-wire interface configuration, SDA_OUT and SCL_OUT are
      --  not inverted before output
      SOPT1_I2C0OINV_Field_0,
      --  Under I2C0 4-wire interface configuration, SDA_OUT and SCL_OUT are
      --  inverted before output
      SOPT1_I2C0OINV_Field_1)
     with Size => 1;
   for SOPT1_I2C0OINV_Field use
     (SOPT1_I2C0OINV_Field_0 => 0,
      SOPT1_I2C0OINV_Field_1 => 1);

   --  PWT ACMP_OUT select
   type SOPT1_ACPWTS_Field is
     (
      --  ACMP1_OUT is connectted to PWTIN2.
      SOPT1_ACPWTS_Field_0,
      --  ACMP0_OUT is connectted to PWTIN2.
      SOPT1_ACPWTS_Field_1)
     with Size => 1;
   for SOPT1_ACPWTS_Field use
     (SOPT1_ACPWTS_Field_0 => 0,
      SOPT1_ACPWTS_Field_1 => 1);

   --  PWT UART RX select
   type SOPT1_UARTPWTS_Field is
     (
      --  UART0 RX is connectted to PWTIN3.
      SOPT1_UARTPWTS_Field_00,
      --  UART1 RX is connectted to PWTIN3.
      SOPT1_UARTPWTS_Field_01,
      --  UART2 RX is connectted to PWTIN3.
      SOPT1_UARTPWTS_Field_10)
     with Size => 2;
   for SOPT1_UARTPWTS_Field use
     (SOPT1_UARTPWTS_Field_00 => 0,
      SOPT1_UARTPWTS_Field_01 => 1,
      SOPT1_UARTPWTS_Field_10 => 2);

   --  System Options Register
   type SIM_SOPT1_Register is record
      --  I2C0 4-Wire Interface Enable
      I2C04WEN      : SOPT1_I2C04WEN_Field :=
                       NRF_SVD.SIM.SOPT1_I2C04WEN_Field_0;
      --  I2C0 Output Invert
      I2C0OINV      : SOPT1_I2C0OINV_Field :=
                       NRF_SVD.SIM.SOPT1_I2C0OINV_Field_0;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  PWT ACMP_OUT select
      ACPWTS        : SOPT1_ACPWTS_Field := NRF_SVD.SIM.SOPT1_ACPWTS_Field_0;
      --  PWT UART RX select
      UARTPWTS      : SOPT1_UARTPWTS_Field :=
                       NRF_SVD.SIM.SOPT1_UARTPWTS_Field_00;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT1_Register use record
      I2C04WEN      at 0 range 0 .. 0;
      I2C0OINV      at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      ACPWTS        at 0 range 3 .. 3;
      UARTPWTS      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  IRQ Port Pin Select
   type PINSEL0_IRQPS_Field is
     (
      --  IRQ is mapped on PTA5.
      PINSEL0_IRQPS_Field_000,
      --  IRQ is mapped on PTI0.
      PINSEL0_IRQPS_Field_001,
      --  IRQ is mapped on PTI1.
      PINSEL0_IRQPS_Field_010,
      --  IRQ is mapped on PTI2.
      PINSEL0_IRQPS_Field_011,
      --  IRQ is mapped on PTI3.
      PINSEL0_IRQPS_Field_100,
      --  IRQ is mapped on PTI4.
      PINSEL0_IRQPS_Field_101,
      --  IRQ is mapped on PTI5.
      PINSEL0_IRQPS_Field_110,
      --  IRQ is mapped on PTI6.
      PINSEL0_IRQPS_Field_111)
     with Size => 3;
   for PINSEL0_IRQPS_Field use
     (PINSEL0_IRQPS_Field_000 => 0,
      PINSEL0_IRQPS_Field_001 => 1,
      PINSEL0_IRQPS_Field_010 => 2,
      PINSEL0_IRQPS_Field_011 => 3,
      PINSEL0_IRQPS_Field_100 => 4,
      PINSEL0_IRQPS_Field_101 => 5,
      PINSEL0_IRQPS_Field_110 => 6,
      PINSEL0_IRQPS_Field_111 => 7);

   --  RTCO Pin Select
   type PINSEL0_RTCPS_Field is
     (
      --  RTCO is mapped on PTC4.
      PINSEL0_RTCPS_Field_0,
      --  RTCO is mapped on PTC5.
      PINSEL0_RTCPS_Field_1)
     with Size => 1;
   for PINSEL0_RTCPS_Field use
     (PINSEL0_RTCPS_Field_0 => 0,
      PINSEL0_RTCPS_Field_1 => 1);

   --  I2C0 Port Pin Select
   type PINSEL0_I2C0PS_Field is
     (
      --  I2C0_SCL and I2C0_SDA are mapped on PTA3 and PTA2, respectively.
      PINSEL0_I2C0PS_Field_0,
      --  I2C0_SCL and I2C0_SDA are mapped on PTB7 and PTB6, respectively.
      PINSEL0_I2C0PS_Field_1)
     with Size => 1;
   for PINSEL0_I2C0PS_Field use
     (PINSEL0_I2C0PS_Field_0 => 0,
      PINSEL0_I2C0PS_Field_1 => 1);

   --  SPI0 Pin Select
   type PINSEL0_SPI0PS_Field is
     (
      --  SPI0_SCK, SPI0_MOSI, SPI0_MISO, and SPI0_PCS are mapped on PTB2,
      --  PTB3, PTB4, and PTB5.
      PINSEL0_SPI0PS_Field_0,
      --  SPI0_SCK, SPI0_MOSI, SPI0_MISO, and SPI0_PCS are mapped on PTE0,
      --  PTE1, PTE2, and PTE3.
      PINSEL0_SPI0PS_Field_1)
     with Size => 1;
   for PINSEL0_SPI0PS_Field use
     (PINSEL0_SPI0PS_Field_0 => 0,
      PINSEL0_SPI0PS_Field_1 => 1);

   --  UART0 Pin Select
   type PINSEL0_UART0PS_Field is
     (
      --  UART0_RX and UART0_TX are mapped on PTB0 and PTB1.
      PINSEL0_UART0PS_Field_0,
      --  UART0_RX and UART0_TX are mapped on PTA2 and PTA3.
      PINSEL0_UART0PS_Field_1)
     with Size => 1;
   for PINSEL0_UART0PS_Field use
     (PINSEL0_UART0PS_Field_0 => 0,
      PINSEL0_UART0PS_Field_1 => 1);

   --  FTM0_CH0 Port Pin Select
   type PINSEL0_FTM0PS0_Field is
     (
      --  FTM0_CH0 channels are mapped on PTA0.
      PINSEL0_FTM0PS0_Field_0,
      --  FTM0_CH0 channels are mapped on PTB2.
      PINSEL0_FTM0PS0_Field_1)
     with Size => 1;
   for PINSEL0_FTM0PS0_Field use
     (PINSEL0_FTM0PS0_Field_0 => 0,
      PINSEL0_FTM0PS0_Field_1 => 1);

   --  FTM0_CH1 Port Pin Select
   type PINSEL0_FTM0PS1_Field is
     (
      --  FTM0_CH1 channels are mapped on PTA1.
      PINSEL0_FTM0PS1_Field_0,
      --  FTM0_CH1 channels are mapped on PTB3.
      PINSEL0_FTM0PS1_Field_1)
     with Size => 1;
   for PINSEL0_FTM0PS1_Field use
     (PINSEL0_FTM0PS1_Field_0 => 0,
      PINSEL0_FTM0PS1_Field_1 => 1);

   --  FTM1_CH0 Port Pin Select
   type PINSEL0_FTM1PS0_Field is
     (
      --  FTM1_CH0 channels are mapped on PTC4.
      PINSEL0_FTM1PS0_Field_0,
      --  FTM1_CH0 channels are mapped on PTH2.
      PINSEL0_FTM1PS0_Field_1)
     with Size => 1;
   for PINSEL0_FTM1PS0_Field use
     (PINSEL0_FTM1PS0_Field_0 => 0,
      PINSEL0_FTM1PS0_Field_1 => 1);

   --  FTM1_CH1 Port Pin Select
   type PINSEL0_FTM1PS1_Field is
     (
      --  FTM1_CH1 channels are mapped on PTC5.
      PINSEL0_FTM1PS1_Field_0,
      --  FTM1_CH1 channels are mapped on PTE7.
      PINSEL0_FTM1PS1_Field_1)
     with Size => 1;
   for PINSEL0_FTM1PS1_Field use
     (PINSEL0_FTM1PS1_Field_0 => 0,
      PINSEL0_FTM1PS1_Field_1 => 1);

   --  FTM0 TCLK Pin Select
   type PINSEL0_FTM0CLKPS_Field is
     (
      --  Selects TCLK0 for FTM0 module..
      PINSEL0_FTM0CLKPS_Field_00,
      --  Selects TCLK1 for FTM0 module.
      PINSEL0_FTM0CLKPS_Field_01,
      --  Selects TCLK2 for FTM0 module.
      PINSEL0_FTM0CLKPS_Field_10)
     with Size => 2;
   for PINSEL0_FTM0CLKPS_Field use
     (PINSEL0_FTM0CLKPS_Field_00 => 0,
      PINSEL0_FTM0CLKPS_Field_01 => 1,
      PINSEL0_FTM0CLKPS_Field_10 => 2);

   --  FTM1 TCLK Pin Select
   type PINSEL0_FTM1CLKPS_Field is
     (
      --  Selects TCLK0 for FTM1 module..
      PINSEL0_FTM1CLKPS_Field_00,
      --  Selects TCLK1 for FTM1 module.
      PINSEL0_FTM1CLKPS_Field_01,
      --  Selects TCLK2 for FTM1 module.
      PINSEL0_FTM1CLKPS_Field_10)
     with Size => 2;
   for PINSEL0_FTM1CLKPS_Field use
     (PINSEL0_FTM1CLKPS_Field_00 => 0,
      PINSEL0_FTM1CLKPS_Field_01 => 1,
      PINSEL0_FTM1CLKPS_Field_10 => 2);

   --  FTM2 TCLK Pin Select
   type PINSEL0_FTM2CLKPS_Field is
     (
      --  Selects TCLK0 for FTM2 module..
      PINSEL0_FTM2CLKPS_Field_00,
      --  Selects TCLK1 for FTM2 module.
      PINSEL0_FTM2CLKPS_Field_01,
      --  Selects TCLK2 for FTM2 module.
      PINSEL0_FTM2CLKPS_Field_10)
     with Size => 2;
   for PINSEL0_FTM2CLKPS_Field use
     (PINSEL0_FTM2CLKPS_Field_00 => 0,
      PINSEL0_FTM2CLKPS_Field_01 => 1,
      PINSEL0_FTM2CLKPS_Field_10 => 2);

   --  PWT TCLK Pin Select
   type PINSEL0_PWTCLKPS_Field is
     (
      --  Selects TCLK0 for PWT module.
      PINSEL0_PWTCLKPS_Field_00,
      --  Selects TCLK1 for PWT module.
      PINSEL0_PWTCLKPS_Field_01,
      --  Selects TCLK2 for PWT module.
      PINSEL0_PWTCLKPS_Field_10)
     with Size => 2;
   for PINSEL0_PWTCLKPS_Field use
     (PINSEL0_PWTCLKPS_Field_00 => 0,
      PINSEL0_PWTCLKPS_Field_01 => 1,
      PINSEL0_PWTCLKPS_Field_10 => 2);

   --  Pin Selection Register 0
   type SIM_PINSEL0_Register is record
      --  IRQ Port Pin Select
      IRQPS          : PINSEL0_IRQPS_Field :=
                        NRF_SVD.SIM.PINSEL0_IRQPS_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  RTCO Pin Select
      RTCPS          : PINSEL0_RTCPS_Field :=
                        NRF_SVD.SIM.PINSEL0_RTCPS_Field_0;
      --  I2C0 Port Pin Select
      I2C0PS         : PINSEL0_I2C0PS_Field :=
                        NRF_SVD.SIM.PINSEL0_I2C0PS_Field_0;
      --  SPI0 Pin Select
      SPI0PS         : PINSEL0_SPI0PS_Field :=
                        NRF_SVD.SIM.PINSEL0_SPI0PS_Field_0;
      --  UART0 Pin Select
      UART0PS        : PINSEL0_UART0PS_Field :=
                        NRF_SVD.SIM.PINSEL0_UART0PS_Field_0;
      --  FTM0_CH0 Port Pin Select
      FTM0PS0        : PINSEL0_FTM0PS0_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM0PS0_Field_0;
      --  FTM0_CH1 Port Pin Select
      FTM0PS1        : PINSEL0_FTM0PS1_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM0PS1_Field_0;
      --  FTM1_CH0 Port Pin Select
      FTM1PS0        : PINSEL0_FTM1PS0_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM1PS0_Field_0;
      --  FTM1_CH1 Port Pin Select
      FTM1PS1        : PINSEL0_FTM1PS1_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM1PS1_Field_0;
      --  unspecified
      Reserved_12_23 : HAL.UInt12 := 16#0#;
      --  FTM0 TCLK Pin Select
      FTM0CLKPS      : PINSEL0_FTM0CLKPS_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM0CLKPS_Field_00;
      --  FTM1 TCLK Pin Select
      FTM1CLKPS      : PINSEL0_FTM1CLKPS_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM1CLKPS_Field_00;
      --  FTM2 TCLK Pin Select
      FTM2CLKPS      : PINSEL0_FTM2CLKPS_Field :=
                        NRF_SVD.SIM.PINSEL0_FTM2CLKPS_Field_00;
      --  PWT TCLK Pin Select
      PWTCLKPS       : PINSEL0_PWTCLKPS_Field :=
                        NRF_SVD.SIM.PINSEL0_PWTCLKPS_Field_00;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_PINSEL0_Register use record
      IRQPS          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RTCPS          at 0 range 4 .. 4;
      I2C0PS         at 0 range 5 .. 5;
      SPI0PS         at 0 range 6 .. 6;
      UART0PS        at 0 range 7 .. 7;
      FTM0PS0        at 0 range 8 .. 8;
      FTM0PS1        at 0 range 9 .. 9;
      FTM1PS0        at 0 range 10 .. 10;
      FTM1PS1        at 0 range 11 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      FTM0CLKPS      at 0 range 24 .. 25;
      FTM1CLKPS      at 0 range 26 .. 27;
      FTM2CLKPS      at 0 range 28 .. 29;
      PWTCLKPS       at 0 range 30 .. 31;
   end record;

   --  FTM2 Channel 0 Pin Select
   type PINSEL1_FTM2PS0_Field is
     (
      --  FTM2 CH0 mapped on PTC0.
      PINSEL1_FTM2PS0_Field_00,
      --  FTM2 CH0 mapped on PTH0.
      PINSEL1_FTM2PS0_Field_01,
      --  FTM2 CH0 mapped on PTF0.
      PINSEL1_FTM2PS0_Field_10)
     with Size => 2;
   for PINSEL1_FTM2PS0_Field use
     (PINSEL1_FTM2PS0_Field_00 => 0,
      PINSEL1_FTM2PS0_Field_01 => 1,
      PINSEL1_FTM2PS0_Field_10 => 2);

   --  FTM2 Channel 1 Pin Select
   type PINSEL1_FTM2PS1_Field is
     (
      --  FTM2 CH1 mapped on PTC1.
      PINSEL1_FTM2PS1_Field_00,
      --  FTM2 CH1 mapped on PTH1.
      PINSEL1_FTM2PS1_Field_01,
      --  FTM2 CH1 mapped on PTF1.
      PINSEL1_FTM2PS1_Field_10)
     with Size => 2;
   for PINSEL1_FTM2PS1_Field use
     (PINSEL1_FTM2PS1_Field_00 => 0,
      PINSEL1_FTM2PS1_Field_01 => 1,
      PINSEL1_FTM2PS1_Field_10 => 2);

   --  FTM2 Channel 2 Pin Select
   type PINSEL1_FTM2PS2_Field is
     (
      --  FTM2 CH2 mapped on PTC2.
      PINSEL1_FTM2PS2_Field_00,
      --  FTM2 CH2 mapped on PTD0.
      PINSEL1_FTM2PS2_Field_01,
      --  FTM2 CH2 mapped on PTG4.
      PINSEL1_FTM2PS2_Field_10)
     with Size => 2;
   for PINSEL1_FTM2PS2_Field use
     (PINSEL1_FTM2PS2_Field_00 => 0,
      PINSEL1_FTM2PS2_Field_01 => 1,
      PINSEL1_FTM2PS2_Field_10 => 2);

   --  FTM2 Channel 3 Pin Select
   type PINSEL1_FTM2PS3_Field is
     (
      --  FTM2 CH3 mapped on PTC3.
      PINSEL1_FTM2PS3_Field_00,
      --  FTM2 CH3 mapped on PTD1.
      PINSEL1_FTM2PS3_Field_01,
      --  FTM2 CH3 mapped on PTG5.
      PINSEL1_FTM2PS3_Field_10)
     with Size => 2;
   for PINSEL1_FTM2PS3_Field use
     (PINSEL1_FTM2PS3_Field_00 => 0,
      PINSEL1_FTM2PS3_Field_01 => 1,
      PINSEL1_FTM2PS3_Field_10 => 2);

   --  FTM2 Channel4 Pin Select
   type PINSEL1_FTM2PS4_Field is
     (
      --  FTM2 CH4 mapped on PTB4.
      PINSEL1_FTM2PS4_Field_0,
      --  FTM2 CH4 mapped on PTG6.
      PINSEL1_FTM2PS4_Field_1)
     with Size => 1;
   for PINSEL1_FTM2PS4_Field use
     (PINSEL1_FTM2PS4_Field_0 => 0,
      PINSEL1_FTM2PS4_Field_1 => 1);

   --  FTM2 Channel 5 Pin Select
   type PINSEL1_FTM2PS5_Field is
     (
      --  FTM2 CH5 mapped on PTB5.
      PINSEL1_FTM2PS5_Field_0,
      --  FTM2 CH5 mapped on PTG7.
      PINSEL1_FTM2PS5_Field_1)
     with Size => 1;
   for PINSEL1_FTM2PS5_Field use
     (PINSEL1_FTM2PS5_Field_0 => 0,
      PINSEL1_FTM2PS5_Field_1 => 1);

   --  I2C1 Pin Select
   type PINSEL1_I2C1PS_Field is
     (
      --  I2C1_SCL on PTE1, I2C1_SDA on PTE0.
      PINSEL1_I2C1PS_Field_0,
      --  I2C1_SCL on PTH4, I2C1_SDA on PTH3.
      PINSEL1_I2C1PS_Field_1)
     with Size => 1;
   for PINSEL1_I2C1PS_Field use
     (PINSEL1_I2C1PS_Field_0 => 0,
      PINSEL1_I2C1PS_Field_1 => 1);

   --  SPI1 Pin Select
   type PINSEL1_SPI1PS_Field is
     (
      --  SPI1_SCK, SPI1_MOSI, SPI1_MISO, and SPI1_PCS are mapped on PTD0,
      --  PTD1, PTD2, and PTD3.
      PINSEL1_SPI1PS_Field_0,
      --  SPI1_SCK, SPI1_MOSI, SPI1_MISO, and SPI1_PCS are mapped on PTG4,
      --  PTG5, PTG6, and PTG7.
      PINSEL1_SPI1PS_Field_1)
     with Size => 1;
   for PINSEL1_SPI1PS_Field use
     (PINSEL1_SPI1PS_Field_0 => 0,
      PINSEL1_SPI1PS_Field_1 => 1);

   --  UART1 Pin Select
   type PINSEL1_UART1PS_Field is
     (
      --  UART1_TX on PTC7, UART1_RX on PTC6.
      PINSEL1_UART1PS_Field_0,
      --  UART1_TX on PTF3, UART1_RX on PTF2.
      PINSEL1_UART1PS_Field_1)
     with Size => 1;
   for PINSEL1_UART1PS_Field use
     (PINSEL1_UART1PS_Field_0 => 0,
      PINSEL1_UART1PS_Field_1 => 1);

   --  UART2 Pin Select
   type PINSEL1_UART2PS_Field is
     (
      --  UART2_TX on PTD7, UART2_RX on PTD6.
      PINSEL1_UART2PS_Field_0,
      --  UART2_TX on PTI1, UART2_RX on PTI0.
      PINSEL1_UART2PS_Field_1)
     with Size => 1;
   for PINSEL1_UART2PS_Field use
     (PINSEL1_UART2PS_Field_0 => 0,
      PINSEL1_UART2PS_Field_1 => 1);

   --  PWTIN0 Pin Select
   type PINSEL1_PWTIN0PS_Field is
     (
      --  PWTIN0 on PTD5.
      PINSEL1_PWTIN0PS_Field_0,
      --  PWTIN0 on PTE2.
      PINSEL1_PWTIN0PS_Field_1)
     with Size => 1;
   for PINSEL1_PWTIN0PS_Field use
     (PINSEL1_PWTIN0PS_Field_0 => 0,
      PINSEL1_PWTIN0PS_Field_1 => 1);

   --  PWTIN1 Pin Select
   type PINSEL1_PWTIN1PS_Field is
     (
      --  PWTIN1 on PTB0.
      PINSEL1_PWTIN1PS_Field_0,
      --  PWTIN1 on PTH7.
      PINSEL1_PWTIN1PS_Field_1)
     with Size => 1;
   for PINSEL1_PWTIN1PS_Field use
     (PINSEL1_PWTIN1PS_Field_0 => 0,
      PINSEL1_PWTIN1PS_Field_1 => 1);

   --  Pin Selection Register 1
   type SIM_PINSEL1_Register is record
      --  FTM2 Channel 0 Pin Select
      FTM2PS0        : PINSEL1_FTM2PS0_Field :=
                        NRF_SVD.SIM.PINSEL1_FTM2PS0_Field_00;
      --  FTM2 Channel 1 Pin Select
      FTM2PS1        : PINSEL1_FTM2PS1_Field :=
                        NRF_SVD.SIM.PINSEL1_FTM2PS1_Field_00;
      --  FTM2 Channel 2 Pin Select
      FTM2PS2        : PINSEL1_FTM2PS2_Field :=
                        NRF_SVD.SIM.PINSEL1_FTM2PS2_Field_00;
      --  FTM2 Channel 3 Pin Select
      FTM2PS3        : PINSEL1_FTM2PS3_Field :=
                        NRF_SVD.SIM.PINSEL1_FTM2PS3_Field_00;
      --  FTM2 Channel4 Pin Select
      FTM2PS4        : PINSEL1_FTM2PS4_Field :=
                        NRF_SVD.SIM.PINSEL1_FTM2PS4_Field_0;
      --  FTM2 Channel 5 Pin Select
      FTM2PS5        : PINSEL1_FTM2PS5_Field :=
                        NRF_SVD.SIM.PINSEL1_FTM2PS5_Field_0;
      --  I2C1 Pin Select
      I2C1PS         : PINSEL1_I2C1PS_Field :=
                        NRF_SVD.SIM.PINSEL1_I2C1PS_Field_0;
      --  SPI1 Pin Select
      SPI1PS         : PINSEL1_SPI1PS_Field :=
                        NRF_SVD.SIM.PINSEL1_SPI1PS_Field_0;
      --  UART1 Pin Select
      UART1PS        : PINSEL1_UART1PS_Field :=
                        NRF_SVD.SIM.PINSEL1_UART1PS_Field_0;
      --  UART2 Pin Select
      UART2PS        : PINSEL1_UART2PS_Field :=
                        NRF_SVD.SIM.PINSEL1_UART2PS_Field_0;
      --  PWTIN0 Pin Select
      PWTIN0PS       : PINSEL1_PWTIN0PS_Field :=
                        NRF_SVD.SIM.PINSEL1_PWTIN0PS_Field_0;
      --  PWTIN1 Pin Select
      PWTIN1PS       : PINSEL1_PWTIN1PS_Field :=
                        NRF_SVD.SIM.PINSEL1_PWTIN1PS_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_PINSEL1_Register use record
      FTM2PS0        at 0 range 0 .. 1;
      FTM2PS1        at 0 range 2 .. 3;
      FTM2PS2        at 0 range 4 .. 5;
      FTM2PS3        at 0 range 6 .. 7;
      FTM2PS4        at 0 range 8 .. 8;
      FTM2PS5        at 0 range 9 .. 9;
      I2C1PS         at 0 range 10 .. 10;
      SPI1PS         at 0 range 11 .. 11;
      UART1PS        at 0 range 12 .. 12;
      UART2PS        at 0 range 13 .. 13;
      PWTIN0PS       at 0 range 14 .. 14;
      PWTIN1PS       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC Clock Gate Control
   type SCGC_RTC_Field is
     (
      --  Bus clock to the RTC module is disabled.
      SCGC_RTC_Field_0,
      --  Bus clock to the RTC module is enabled.
      SCGC_RTC_Field_1)
     with Size => 1;
   for SCGC_RTC_Field use
     (SCGC_RTC_Field_0 => 0,
      SCGC_RTC_Field_1 => 1);

   --  PIT Clock Gate Control
   type SCGC_PIT_Field is
     (
      --  Bus clock to the PIT module is disabled.
      SCGC_PIT_Field_0,
      --  Bus clock to the PIT module is enabled.
      SCGC_PIT_Field_1)
     with Size => 1;
   for SCGC_PIT_Field use
     (SCGC_PIT_Field_0 => 0,
      SCGC_PIT_Field_1 => 1);

   --  PWT Clock Gate Control
   type SCGC_PWT_Field is
     (
      --  Timer clock to the PWT module is disabled.
      SCGC_PWT_Field_0,
      --  Timer clock to the PWT module is enabled.
      SCGC_PWT_Field_1)
     with Size => 1;
   for SCGC_PWT_Field use
     (SCGC_PWT_Field_0 => 0,
      SCGC_PWT_Field_1 => 1);

   --  FTM0 Clock Gate Control
   type SCGC_FTM0_Field is
     (
      --  Bus clock to the FTM0 module is disabled.
      SCGC_FTM0_Field_0,
      --  Bus clock to the FTM0 module is enabled.
      SCGC_FTM0_Field_1)
     with Size => 1;
   for SCGC_FTM0_Field use
     (SCGC_FTM0_Field_0 => 0,
      SCGC_FTM0_Field_1 => 1);

   --  FTM1 Clock Gate Control
   type SCGC_FTM1_Field is
     (
      --  Bus clock to the FTM1 module is disabled.
      SCGC_FTM1_Field_0,
      --  Bus clock to the FTM1 module is enabled.
      SCGC_FTM1_Field_1)
     with Size => 1;
   for SCGC_FTM1_Field use
     (SCGC_FTM1_Field_0 => 0,
      SCGC_FTM1_Field_1 => 1);

   --  FTM2 Clock Gate Control
   type SCGC_FTM2_Field is
     (
      --  Bus clock to the FTM2 module is disabled.
      SCGC_FTM2_Field_0,
      --  Bus clock to the FTM2 module is enabled.
      SCGC_FTM2_Field_1)
     with Size => 1;
   for SCGC_FTM2_Field use
     (SCGC_FTM2_Field_0 => 0,
      SCGC_FTM2_Field_1 => 1);

   --  CRC Clock Gate Control
   type SCGC_CRC_Field is
     (
      --  Bus clock to the CRC module is disabled.
      SCGC_CRC_Field_0,
      --  Bus clock to the CRC module is enabled.
      SCGC_CRC_Field_1)
     with Size => 1;
   for SCGC_CRC_Field use
     (SCGC_CRC_Field_0 => 0,
      SCGC_CRC_Field_1 => 1);

   --  Flash Clock Gate Control
   type SCGC_FLASH_Field is
     (
      --  Bus clock to the flash module is disabled.
      SCGC_FLASH_Field_0,
      --  Bus clock to the flash module is enabled.
      SCGC_FLASH_Field_1)
     with Size => 1;
   for SCGC_FLASH_Field use
     (SCGC_FLASH_Field_0 => 0,
      SCGC_FLASH_Field_1 => 1);

   --  SWD (single wire debugger) Clock Gate Control
   type SCGC_SWD_Field is
     (
      --  Bus clock to the SWD module is disabled.
      SCGC_SWD_Field_0,
      --  Bus clock to the SWD module is enabled.
      SCGC_SWD_Field_1)
     with Size => 1;
   for SCGC_SWD_Field use
     (SCGC_SWD_Field_0 => 0,
      SCGC_SWD_Field_1 => 1);

   --  I2C0 Clock Gate Control
   type SCGC_I2C0_Field is
     (
      --  Bus clock to the I2C0 module is disabled.
      SCGC_I2C0_Field_0,
      --  Bus clock to the I2C0 module is enabled.
      SCGC_I2C0_Field_1)
     with Size => 1;
   for SCGC_I2C0_Field use
     (SCGC_I2C0_Field_0 => 0,
      SCGC_I2C0_Field_1 => 1);

   --  I2C1 Clock Gate Control
   type SCGC_I2C1_Field is
     (
      --  Bus clock to the I2C1 module is disabled.
      SCGC_I2C1_Field_0,
      --  Bus clock to the I2C1 module is enabled.
      SCGC_I2C1_Field_1)
     with Size => 1;
   for SCGC_I2C1_Field use
     (SCGC_I2C1_Field_0 => 0,
      SCGC_I2C1_Field_1 => 1);

   --  SPI0 Clock Gate Control
   type SCGC_SPI0_Field is
     (
      --  Bus clock to the SPI0 module is disabled.
      SCGC_SPI0_Field_0,
      --  Bus clock to the SPI0 module is enabled.
      SCGC_SPI0_Field_1)
     with Size => 1;
   for SCGC_SPI0_Field use
     (SCGC_SPI0_Field_0 => 0,
      SCGC_SPI0_Field_1 => 1);

   --  SPI1 Clock Gate Control
   type SCGC_SPI1_Field is
     (
      --  Bus clock to the SPI1 module is disabled.
      SCGC_SPI1_Field_0,
      --  Bus clock to the SPI1 module is enabled.
      SCGC_SPI1_Field_1)
     with Size => 1;
   for SCGC_SPI1_Field use
     (SCGC_SPI1_Field_0 => 0,
      SCGC_SPI1_Field_1 => 1);

   --  UART0 Clock Gate Control
   type SCGC_UART0_Field is
     (
      --  Bus clock to the UART0 module is disabled.
      SCGC_UART0_Field_0,
      --  Bus clock to the UART0 module is enabled.
      SCGC_UART0_Field_1)
     with Size => 1;
   for SCGC_UART0_Field use
     (SCGC_UART0_Field_0 => 0,
      SCGC_UART0_Field_1 => 1);

   --  UART1 Clock Gate Control
   type SCGC_UART1_Field is
     (
      --  Bus clock to the UART1 module is disabled.
      SCGC_UART1_Field_0,
      --  Bus clock to the UART1 module is enabled.
      SCGC_UART1_Field_1)
     with Size => 1;
   for SCGC_UART1_Field use
     (SCGC_UART1_Field_0 => 0,
      SCGC_UART1_Field_1 => 1);

   --  UART2 Clock Gate Control
   type SCGC_UART2_Field is
     (
      --  Bus clock to the UART2 module is disabled.
      SCGC_UART2_Field_0,
      --  Bus clock to the UART2 module is enabled.
      SCGC_UART2_Field_1)
     with Size => 1;
   for SCGC_UART2_Field use
     (SCGC_UART2_Field_0 => 0,
      SCGC_UART2_Field_1 => 1);

   --  KBI0 Clock Gate Control
   type SCGC_KBI0_Field is
     (
      --  Bus clock to the KBI0 module is disabled.
      SCGC_KBI0_Field_0,
      --  Bus clock to the KBI0 module is enabled.
      SCGC_KBI0_Field_1)
     with Size => 1;
   for SCGC_KBI0_Field use
     (SCGC_KBI0_Field_0 => 0,
      SCGC_KBI0_Field_1 => 1);

   --  KBI1 Clock Gate Control
   type SCGC_KBI1_Field is
     (
      --  Bus clock to the KBI1 module is disabled.
      SCGC_KBI1_Field_0,
      --  Bus clock to the KBI1 module is enabled.
      SCGC_KBI1_Field_1)
     with Size => 1;
   for SCGC_KBI1_Field use
     (SCGC_KBI1_Field_0 => 0,
      SCGC_KBI1_Field_1 => 1);

   --  IRQ Clock Gate Control
   type SCGC_IRQ_Field is
     (
      --  Bus clock to the IRQ module is disabled.
      SCGC_IRQ_Field_0,
      --  Bus clock to the IRQ module is enabled.
      SCGC_IRQ_Field_1)
     with Size => 1;
   for SCGC_IRQ_Field use
     (SCGC_IRQ_Field_0 => 0,
      SCGC_IRQ_Field_1 => 1);

   --  ADC Clock Gate Control
   type SCGC_ADC_Field is
     (
      --  Bus clock to the ADC module is disabled.
      SCGC_ADC_Field_0,
      --  Bus clock to the ADC module is enabled.
      SCGC_ADC_Field_1)
     with Size => 1;
   for SCGC_ADC_Field use
     (SCGC_ADC_Field_0 => 0,
      SCGC_ADC_Field_1 => 1);

   --  ACMP0 Clock Gate Control
   type SCGC_ACMP0_Field is
     (
      --  Bus clock to the ACMP0 module is disabled.
      SCGC_ACMP0_Field_0,
      --  Bus clock to the ACMP0 module is enabled.
      SCGC_ACMP0_Field_1)
     with Size => 1;
   for SCGC_ACMP0_Field use
     (SCGC_ACMP0_Field_0 => 0,
      SCGC_ACMP0_Field_1 => 1);

   --  ACMP1 Clock Gate Control
   type SCGC_ACMP1_Field is
     (
      --  Bus clock to the ACMP1 module is disabled.
      SCGC_ACMP1_Field_0,
      --  Bus clock to the ACMP1 module is enabled.
      SCGC_ACMP1_Field_1)
     with Size => 1;
   for SCGC_ACMP1_Field use
     (SCGC_ACMP1_Field_0 => 0,
      SCGC_ACMP1_Field_1 => 1);

   --  System Clock Gating Control Register
   type SIM_SCGC_Register is record
      --  RTC Clock Gate Control
      RTC            : SCGC_RTC_Field := NRF_SVD.SIM.SCGC_RTC_Field_0;
      --  PIT Clock Gate Control
      PIT            : SCGC_PIT_Field := NRF_SVD.SIM.SCGC_PIT_Field_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  PWT Clock Gate Control
      PWT            : SCGC_PWT_Field := NRF_SVD.SIM.SCGC_PWT_Field_0;
      --  FTM0 Clock Gate Control
      FTM0           : SCGC_FTM0_Field := NRF_SVD.SIM.SCGC_FTM0_Field_0;
      --  FTM1 Clock Gate Control
      FTM1           : SCGC_FTM1_Field := NRF_SVD.SIM.SCGC_FTM1_Field_0;
      --  FTM2 Clock Gate Control
      FTM2           : SCGC_FTM2_Field := NRF_SVD.SIM.SCGC_FTM2_Field_0;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  CRC Clock Gate Control
      CRC            : SCGC_CRC_Field := NRF_SVD.SIM.SCGC_CRC_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Flash Clock Gate Control
      FLASH          : SCGC_FLASH_Field := NRF_SVD.SIM.SCGC_FLASH_Field_1;
      --  SWD (single wire debugger) Clock Gate Control
      SWD            : SCGC_SWD_Field := NRF_SVD.SIM.SCGC_SWD_Field_1;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  I2C0 Clock Gate Control
      I2C0           : SCGC_I2C0_Field := NRF_SVD.SIM.SCGC_I2C0_Field_0;
      --  I2C1 Clock Gate Control
      I2C1           : SCGC_I2C1_Field := NRF_SVD.SIM.SCGC_I2C1_Field_0;
      --  SPI0 Clock Gate Control
      SPI0           : SCGC_SPI0_Field := NRF_SVD.SIM.SCGC_SPI0_Field_0;
      --  SPI1 Clock Gate Control
      SPI1           : SCGC_SPI1_Field := NRF_SVD.SIM.SCGC_SPI1_Field_0;
      --  UART0 Clock Gate Control
      UART0          : SCGC_UART0_Field := NRF_SVD.SIM.SCGC_UART0_Field_0;
      --  UART1 Clock Gate Control
      UART1          : SCGC_UART1_Field := NRF_SVD.SIM.SCGC_UART1_Field_0;
      --  UART2 Clock Gate Control
      UART2          : SCGC_UART2_Field := NRF_SVD.SIM.SCGC_UART2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  KBI0 Clock Gate Control
      KBI0           : SCGC_KBI0_Field := NRF_SVD.SIM.SCGC_KBI0_Field_0;
      --  KBI1 Clock Gate Control
      KBI1           : SCGC_KBI1_Field := NRF_SVD.SIM.SCGC_KBI1_Field_0;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  IRQ Clock Gate Control
      IRQ            : SCGC_IRQ_Field := NRF_SVD.SIM.SCGC_IRQ_Field_0;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  ADC Clock Gate Control
      ADC            : SCGC_ADC_Field := NRF_SVD.SIM.SCGC_ADC_Field_0;
      --  ACMP0 Clock Gate Control
      ACMP0          : SCGC_ACMP0_Field := NRF_SVD.SIM.SCGC_ACMP0_Field_0;
      --  ACMP1 Clock Gate Control
      ACMP1          : SCGC_ACMP1_Field := NRF_SVD.SIM.SCGC_ACMP1_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SCGC_Register use record
      RTC            at 0 range 0 .. 0;
      PIT            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PWT            at 0 range 4 .. 4;
      FTM0           at 0 range 5 .. 5;
      FTM1           at 0 range 6 .. 6;
      FTM2           at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      CRC            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      FLASH          at 0 range 12 .. 12;
      SWD            at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      I2C0           at 0 range 16 .. 16;
      I2C1           at 0 range 17 .. 17;
      SPI0           at 0 range 18 .. 18;
      SPI1           at 0 range 19 .. 19;
      UART0          at 0 range 20 .. 20;
      UART1          at 0 range 21 .. 21;
      UART2          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      KBI0           at 0 range 24 .. 24;
      KBI1           at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      IRQ            at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ADC            at 0 range 29 .. 29;
      ACMP0          at 0 range 30 .. 30;
      ACMP1          at 0 range 31 .. 31;
   end record;

   subtype SIM_UUIDMH_ID_Field is HAL.UInt16;

   --  Universally Unique Identifier Middle High Register
   type SIM_UUIDMH_Register is record
      --  Read-only. Universally Unique Identifier
      ID             : SIM_UUIDMH_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_UUIDMH_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Clock 3 output divider value
   type CLKDIV_OUTDIV3_Field is
     (
      --  Same as ICSOUTCLK.
      CLKDIV_OUTDIV3_Field_0,
      --  ICSOUTCLK divides by 2.
      CLKDIV_OUTDIV3_Field_1)
     with Size => 1;
   for CLKDIV_OUTDIV3_Field use
     (CLKDIV_OUTDIV3_Field_0 => 0,
      CLKDIV_OUTDIV3_Field_1 => 1);

   --  Clock 2 output divider value
   type CLKDIV_OUTDIV2_Field is
     (
      --  Not divided from divider1.
      CLKDIV_OUTDIV2_Field_0,
      --  Divide by 2 from divider1.
      CLKDIV_OUTDIV2_Field_1)
     with Size => 1;
   for CLKDIV_OUTDIV2_Field use
     (CLKDIV_OUTDIV2_Field_0 => 0,
      CLKDIV_OUTDIV2_Field_1 => 1);

   --  Clock 1 output divider value
   type CLKDIV_OUTDIV1_Field is
     (
      --  Same as ICSOUTCLK.
      CLKDIV_OUTDIV1_Field_00,
      --  ICSOUTCLK divides by 2.
      CLKDIV_OUTDIV1_Field_01,
      --  ICSOUTCLK divides by 3.
      CLKDIV_OUTDIV1_Field_10,
      --  ICSOUTCLK divides by 4.
      CLKDIV_OUTDIV1_Field_11)
     with Size => 2;
   for CLKDIV_OUTDIV1_Field use
     (CLKDIV_OUTDIV1_Field_00 => 0,
      CLKDIV_OUTDIV1_Field_01 => 1,
      CLKDIV_OUTDIV1_Field_10 => 2,
      CLKDIV_OUTDIV1_Field_11 => 3);

   --  Clock Divider Register
   type SIM_CLKDIV_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  Clock 3 output divider value
      OUTDIV3        : CLKDIV_OUTDIV3_Field :=
                        NRF_SVD.SIM.CLKDIV_OUTDIV3_Field_0;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Clock 2 output divider value
      OUTDIV2        : CLKDIV_OUTDIV2_Field :=
                        NRF_SVD.SIM.CLKDIV_OUTDIV2_Field_0;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Clock 1 output divider value
      OUTDIV1        : CLKDIV_OUTDIV1_Field :=
                        NRF_SVD.SIM.CLKDIV_OUTDIV1_Field_00;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_CLKDIV_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      OUTDIV3        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      OUTDIV2        at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      OUTDIV1        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  System Reset Status and ID Register
      SRSID   : aliased SIM_SRSID_Register;
      --  System Options Register 0
      SOPT0   : aliased SIM_SOPT0_Register;
      --  System Options Register
      SOPT1   : aliased SIM_SOPT1_Register;
      --  Pin Selection Register 0
      PINSEL0 : aliased SIM_PINSEL0_Register;
      --  Pin Selection Register 1
      PINSEL1 : aliased SIM_PINSEL1_Register;
      --  System Clock Gating Control Register
      SCGC    : aliased SIM_SCGC_Register;
      --  Universally Unique Identifier Low Register
      UUIDL   : aliased HAL.UInt32;
      --  Universally Unique Identifier Middle Low Register
      UUIDML  : aliased HAL.UInt32;
      --  Universally Unique Identifier Middle High Register
      UUIDMH  : aliased SIM_UUIDMH_Register;
      --  Clock Divider Register
      CLKDIV  : aliased SIM_CLKDIV_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SRSID   at 16#0# range 0 .. 31;
      SOPT0   at 16#4# range 0 .. 31;
      SOPT1   at 16#8# range 0 .. 31;
      PINSEL0 at 16#C# range 0 .. 31;
      PINSEL1 at 16#10# range 0 .. 31;
      SCGC    at 16#14# range 0 .. 31;
      UUIDL   at 16#18# range 0 .. 31;
      UUIDML  at 16#1C# range 0 .. 31;
      UUIDMH  at 16#20# range 0 .. 31;
      CLKDIV  at 16#24# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
