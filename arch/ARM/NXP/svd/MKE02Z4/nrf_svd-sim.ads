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

--  This spec has been automatically generated from MKE02Z4.xml

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
      --  KEx2 sub-family
      SRSID_SUBFAMID_Field_0010)
     with Size => 4;
   for SRSID_SUBFAMID_Field use
     (SRSID_SUBFAMID_Field_0010 => 2);

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
   type SOPT_NMIE_Field is
     (
      --  PTB4/FTM2_CH4/SPI0_MISO/NMI/ACMP1_IN2 pin functions as PTB4,
      --  FTM2_CH4, SPI0_MISO, or ACMP1_IN2.
      SOPT_NMIE_Field_0,
      --  PTB4/FTM2_CH4/SPI0_MISO/NMI/ACMP1_IN2 pin functions as NMI.
      SOPT_NMIE_Field_1)
     with Size => 1;
   for SOPT_NMIE_Field use
     (SOPT_NMIE_Field_0 => 0,
      SOPT_NMIE_Field_1 => 1);

   --  RESET Pin Enable
   type SOPT_RSTPE_Field is
     (
      --  PTA5/IRQ/FTM0_CLK/RESET pin functions as PTA5, IRQ, or FTM0_CLK.
      SOPT_RSTPE_Field_0,
      --  PTA5/IRQ/FTM0_CLK/RESET pin functions as RESET.
      SOPT_RSTPE_Field_1)
     with Size => 1;
   for SOPT_RSTPE_Field use
     (SOPT_RSTPE_Field_0 => 0,
      SOPT_RSTPE_Field_1 => 1);

   --  Single Wire Debug Port Pin Enable
   type SOPT_SWDE_Field is
     (
      --  PTA4/ACMP0_OUT/SWD_DIO as PTA4 or ACMP0_OUT function,
      --  PTC4/RTCO/FTM1_CH0/ACMP0_IN2/SWD_CLK as PTC4, RTCO, FTM1_CH0, or
      --  ACMP0_IN2 function.
      SOPT_SWDE_Field_0,
      --  PTA4/ACMP0_OUT/SWD_DIO as SWD_DIO function,
      --  PTC4/RTCO/FTM1CH0/ACMP0_IN2/SWD_CLK as SWD_CLK function.
      SOPT_SWDE_Field_1)
     with Size => 1;
   for SOPT_SWDE_Field use
     (SOPT_SWDE_Field_0 => 0,
      SOPT_SWDE_Field_1 => 1);

   --  ADC Hardware Trigger Source
   type SOPT_ADHWT_Field is
     (
      --  RTC overflow as the ADC hardware trigger
      SOPT_ADHWT_Field_00,
      --  PIT overflow as the ADC hardware trigger
      SOPT_ADHWT_Field_01,
      --  FTM2 init trigger with 8-bit programmable delay
      SOPT_ADHWT_Field_10,
      --  FTM2 match trigger with 8-bit programmable delay
      SOPT_ADHWT_Field_11)
     with Size => 2;
   for SOPT_ADHWT_Field use
     (SOPT_ADHWT_Field_00 => 0,
      SOPT_ADHWT_Field_01 => 1,
      SOPT_ADHWT_Field_10 => 2,
      SOPT_ADHWT_Field_11 => 3);

   --  Real-Time Counter Capture
   type SOPT_RTCC_Field is
     (
      --  RTC overflow is not connected to FTM1 input channel 1.
      SOPT_RTCC_Field_0,
      --  RTC overflow is connected to FTM1 input channel 1.
      SOPT_RTCC_Field_1)
     with Size => 1;
   for SOPT_RTCC_Field use
     (SOPT_RTCC_Field_0 => 0,
      SOPT_RTCC_Field_1 => 1);

   --  Analog Comparator to Input Capture Enable
   type SOPT_ACIC_Field is
     (
      --  ACMP0 output is not connected to FTM1 input channel 0.
      SOPT_ACIC_Field_0,
      --  ACMP0 output is connected to FTM1 input channel 0.
      SOPT_ACIC_Field_1)
     with Size => 1;
   for SOPT_ACIC_Field use
     (SOPT_ACIC_Field_0 => 0,
      SOPT_ACIC_Field_1 => 1);

   --  UART0_RX Capture Select
   type SOPT_RXDCE_Field is
     (
      --  UART0_RX input signal is connected to the UART0 module only.
      SOPT_RXDCE_Field_0,
      --  UART0_RX input signal is connected to the UART0 module and FTM0
      --  channel 1.
      SOPT_RXDCE_Field_1)
     with Size => 1;
   for SOPT_RXDCE_Field use
     (SOPT_RXDCE_Field_0 => 0,
      SOPT_RXDCE_Field_1 => 1);

   --  UART0_RX Filter Select
   type SOPT_RXDFE_Field is
     (
      --  UART0_RX input signal is connected to UART0 module directly.
      SOPT_RXDFE_Field_0,
      --  UART0_RX input signal is filtered by ACMP, then injected to UART0.
      SOPT_RXDFE_Field_1)
     with Size => 1;
   for SOPT_RXDFE_Field use
     (SOPT_RXDFE_Field_0 => 0,
      SOPT_RXDFE_Field_1 => 1);

   --  FTM2 Synchronization Select
   type SOPT_FTMSYNC_Field is
     (
      --  No synchronization triggered.
      SOPT_FTMSYNC_Field_0,
      --  Generates a PWM synchronization trigger to the FTM2 modules.
      SOPT_FTMSYNC_Field_1)
     with Size => 1;
   for SOPT_FTMSYNC_Field use
     (SOPT_FTMSYNC_Field_0 => 0,
      SOPT_FTMSYNC_Field_1 => 1);

   --  UART0_TX Modulation Select
   type SOPT_TXDME_Field is
     (
      --  UART0_TX output is connected to pinout directly.
      SOPT_TXDME_Field_0,
      --  UART0_TX output is modulated by FTM0 channel 0 before mapped to
      --  pinout.
      SOPT_TXDME_Field_1)
     with Size => 1;
   for SOPT_TXDME_Field use
     (SOPT_TXDME_Field_0 => 0,
      SOPT_TXDME_Field_1 => 1);

   --  BUS Clock Output select
   type SOPT_BUSREF_Field is
     (
      --  Bus
      SOPT_BUSREF_Field_000,
      --  Bus divided by 2
      SOPT_BUSREF_Field_001,
      --  Bus divided by 4
      SOPT_BUSREF_Field_010,
      --  Bus divided by 8
      SOPT_BUSREF_Field_011,
      --  Bus divided by 16
      SOPT_BUSREF_Field_100,
      --  Bus divided by 32
      SOPT_BUSREF_Field_101,
      --  Bus divided by 64
      SOPT_BUSREF_Field_110,
      --  Bus divided by 128
      SOPT_BUSREF_Field_111)
     with Size => 3;
   for SOPT_BUSREF_Field use
     (SOPT_BUSREF_Field_000 => 0,
      SOPT_BUSREF_Field_001 => 1,
      SOPT_BUSREF_Field_010 => 2,
      SOPT_BUSREF_Field_011 => 3,
      SOPT_BUSREF_Field_100 => 4,
      SOPT_BUSREF_Field_101 => 5,
      SOPT_BUSREF_Field_110 => 6,
      SOPT_BUSREF_Field_111 => 7);

   --  Bus Clock Output Enable
   type SOPT_CLKOE_Field is
     (
      --  Bus clock output is disabled on PTH2.
      SOPT_CLKOE_Field_0,
      --  Bus clock output is enabled on PTH2.
      SOPT_CLKOE_Field_1)
     with Size => 1;
   for SOPT_CLKOE_Field use
     (SOPT_CLKOE_Field_0 => 0,
      SOPT_CLKOE_Field_1 => 1);

   --  FTM2 Trigger Delay Active
   type SOPT_DLYACT_Field is
     (
      --  The delay is inactive.
      SOPT_DLYACT_Field_0,
      --  The delay is active.
      SOPT_DLYACT_Field_1)
     with Size => 1;
   for SOPT_DLYACT_Field use
     (SOPT_DLYACT_Field_0 => 0,
      SOPT_DLYACT_Field_1 => 1);

   subtype SIM_SOPT_DELAY_Field is HAL.UInt8;

   --  System Options Register
   type SIM_SOPT_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  NMI Pin Enable
      NMIE           : SOPT_NMIE_Field := NRF_SVD.SIM.SOPT_NMIE_Field_1;
      --  RESET Pin Enable
      RSTPE          : SOPT_RSTPE_Field := NRF_SVD.SIM.SOPT_RSTPE_Field_1;
      --  Single Wire Debug Port Pin Enable
      SWDE           : SOPT_SWDE_Field := NRF_SVD.SIM.SOPT_SWDE_Field_1;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  ADC Hardware Trigger Source
      ADHWT          : SOPT_ADHWT_Field := NRF_SVD.SIM.SOPT_ADHWT_Field_00;
      --  Real-Time Counter Capture
      RTCC           : SOPT_RTCC_Field := NRF_SVD.SIM.SOPT_RTCC_Field_0;
      --  Analog Comparator to Input Capture Enable
      ACIC           : SOPT_ACIC_Field := NRF_SVD.SIM.SOPT_ACIC_Field_0;
      --  UART0_RX Capture Select
      RXDCE          : SOPT_RXDCE_Field := NRF_SVD.SIM.SOPT_RXDCE_Field_0;
      --  UART0_RX Filter Select
      RXDFE          : SOPT_RXDFE_Field := NRF_SVD.SIM.SOPT_RXDFE_Field_0;
      --  Write-only. FTM2 Synchronization Select
      FTMSYNC        : SOPT_FTMSYNC_Field := NRF_SVD.SIM.SOPT_FTMSYNC_Field_0;
      --  UART0_TX Modulation Select
      TXDME          : SOPT_TXDME_Field := NRF_SVD.SIM.SOPT_TXDME_Field_0;
      --  BUS Clock Output select
      BUSREF         : SOPT_BUSREF_Field := NRF_SVD.SIM.SOPT_BUSREF_Field_000;
      --  Bus Clock Output Enable
      CLKOE          : SOPT_CLKOE_Field := NRF_SVD.SIM.SOPT_CLKOE_Field_0;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Read-only. FTM2 Trigger Delay Active
      DLYACT         : SOPT_DLYACT_Field := NRF_SVD.SIM.SOPT_DLYACT_Field_0;
      --  FTM2 Trigger Delay
      DELAY_k        : SIM_SOPT_DELAY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_SOPT_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      NMIE           at 0 range 1 .. 1;
      RSTPE          at 0 range 2 .. 2;
      SWDE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADHWT          at 0 range 8 .. 9;
      RTCC           at 0 range 10 .. 10;
      ACIC           at 0 range 11 .. 11;
      RXDCE          at 0 range 12 .. 12;
      RXDFE          at 0 range 13 .. 13;
      FTMSYNC        at 0 range 14 .. 14;
      TXDME          at 0 range 15 .. 15;
      BUSREF         at 0 range 16 .. 18;
      CLKOE          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      DLYACT         at 0 range 23 .. 23;
      DELAY_k        at 0 range 24 .. 31;
   end record;

   --  RTCO Pin Select
   type PINSEL_RTCPS_Field is
     (
      --  RTCO is mapped on PTC4.
      PINSEL_RTCPS_Field_0,
      --  RTCO is mapped on PTC5.
      PINSEL_RTCPS_Field_1)
     with Size => 1;
   for PINSEL_RTCPS_Field use
     (PINSEL_RTCPS_Field_0 => 0,
      PINSEL_RTCPS_Field_1 => 1);

   --  I2C0 Port Pin Select
   type PINSEL_I2C0PS_Field is
     (
      --  I2C0_SCL and I2C0_SDA are mapped on PTA3 and PTA2, respectively.
      PINSEL_I2C0PS_Field_0,
      --  I2C0_SCL and I2C0_SDA are mapped on PTB7 and PTB6, respectively.
      PINSEL_I2C0PS_Field_1)
     with Size => 1;
   for PINSEL_I2C0PS_Field use
     (PINSEL_I2C0PS_Field_0 => 0,
      PINSEL_I2C0PS_Field_1 => 1);

   --  SPI0 Pin Select
   type PINSEL_SPI0PS_Field is
     (
      --  SPI0_SCK, SPI0_MOSI, SPI0_MISO, and SPI0_PCS0 are mapped on PTB2,
      --  PTB3, PTB4, and PTB5.
      PINSEL_SPI0PS_Field_0,
      --  SPI0_SCK, SPI0_MOSI, SPI0_MISO, and SPI0_PCS0 are mapped on PTE0,
      --  PTE1, PTE2, and PTE3.
      PINSEL_SPI0PS_Field_1)
     with Size => 1;
   for PINSEL_SPI0PS_Field use
     (PINSEL_SPI0PS_Field_0 => 0,
      PINSEL_SPI0PS_Field_1 => 1);

   --  UART0 Pin Select
   type PINSEL_UART0PS_Field is
     (
      --  UART0_RX and UART0_TX are mapped on PTB0 and PTB1.
      PINSEL_UART0PS_Field_0,
      --  UART0_RX and UART0_TX are mapped on PTA2 and PTA3.
      PINSEL_UART0PS_Field_1)
     with Size => 1;
   for PINSEL_UART0PS_Field use
     (PINSEL_UART0PS_Field_0 => 0,
      PINSEL_UART0PS_Field_1 => 1);

   --  FTM0_CH0 Port Pin Select
   type PINSEL_FTM0PS0_Field is
     (
      --  FTM0_CH0 channels are mapped on PTA0.
      PINSEL_FTM0PS0_Field_0,
      --  FTM0_CH0 channels are mapped on PTB2.
      PINSEL_FTM0PS0_Field_1)
     with Size => 1;
   for PINSEL_FTM0PS0_Field use
     (PINSEL_FTM0PS0_Field_0 => 0,
      PINSEL_FTM0PS0_Field_1 => 1);

   --  FTM0_CH1 Port Pin Select
   type PINSEL_FTM0PS1_Field is
     (
      --  FTM0_CH1 channels are mapped on PTA1.
      PINSEL_FTM0PS1_Field_0,
      --  FTM0_CH1 channels are mapped on PTB3.
      PINSEL_FTM0PS1_Field_1)
     with Size => 1;
   for PINSEL_FTM0PS1_Field use
     (PINSEL_FTM0PS1_Field_0 => 0,
      PINSEL_FTM0PS1_Field_1 => 1);

   --  FTM1_CH0 Port Pin Select
   type PINSEL_FTM1PS0_Field is
     (
      --  FTM1_CH0 channels are mapped on PTC4.
      PINSEL_FTM1PS0_Field_0,
      --  FTM1_CH0 channels are mapped on PTH2.
      PINSEL_FTM1PS0_Field_1)
     with Size => 1;
   for PINSEL_FTM1PS0_Field use
     (PINSEL_FTM1PS0_Field_0 => 0,
      PINSEL_FTM1PS0_Field_1 => 1);

   --  FTM1_CH1 Port Pin Select
   type PINSEL_FTM1PS1_Field is
     (
      --  FTM1_CH1 channels are mapped on PTC5.
      PINSEL_FTM1PS1_Field_0,
      --  FTM1_CH1 channels are mapped on PTE7.
      PINSEL_FTM1PS1_Field_1)
     with Size => 1;
   for PINSEL_FTM1PS1_Field use
     (PINSEL_FTM1PS1_Field_0 => 0,
      PINSEL_FTM1PS1_Field_1 => 1);

   --  FTM2_CH0 Port Pin Select
   type PINSEL_FTM2PS0_Field is
     (
      --  FTM2_CH0 channels are mapped on PTC0.
      PINSEL_FTM2PS0_Field_0,
      --  FTM2_CH0 channels are mapped on PTH0.
      PINSEL_FTM2PS0_Field_1)
     with Size => 1;
   for PINSEL_FTM2PS0_Field use
     (PINSEL_FTM2PS0_Field_0 => 0,
      PINSEL_FTM2PS0_Field_1 => 1);

   --  FTM2_CH1 Port Pin Select
   type PINSEL_FTM2PS1_Field is
     (
      --  FTM2_CH1 channels are mapped on PTC1.
      PINSEL_FTM2PS1_Field_0,
      --  FTM2_CH1 channels are mapped on PTH1.
      PINSEL_FTM2PS1_Field_1)
     with Size => 1;
   for PINSEL_FTM2PS1_Field use
     (PINSEL_FTM2PS1_Field_0 => 0,
      PINSEL_FTM2PS1_Field_1 => 1);

   --  FTM2_CH2 Port Pin Select
   type PINSEL_FTM2PS2_Field is
     (
      --  FTM2_CH2 channels are mapped on PTC2.
      PINSEL_FTM2PS2_Field_0,
      --  FTM2_CH2 channels are mapped on PTD0.
      PINSEL_FTM2PS2_Field_1)
     with Size => 1;
   for PINSEL_FTM2PS2_Field use
     (PINSEL_FTM2PS2_Field_0 => 0,
      PINSEL_FTM2PS2_Field_1 => 1);

   --  FTM2_CH3 Port Pin Select
   type PINSEL_FTM2PS3_Field is
     (
      --  FTM2_CH3 channels are mapped on PTC3.
      PINSEL_FTM2PS3_Field_0,
      --  FTM2_CH3 channels are mapped on PTD1.
      PINSEL_FTM2PS3_Field_1)
     with Size => 1;
   for PINSEL_FTM2PS3_Field use
     (PINSEL_FTM2PS3_Field_0 => 0,
      PINSEL_FTM2PS3_Field_1 => 1);

   --  Pin Selection Register
   type SIM_PINSEL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  RTCO Pin Select
      RTCPS          : PINSEL_RTCPS_Field := NRF_SVD.SIM.PINSEL_RTCPS_Field_0;
      --  I2C0 Port Pin Select
      I2C0PS         : PINSEL_I2C0PS_Field :=
                        NRF_SVD.SIM.PINSEL_I2C0PS_Field_0;
      --  SPI0 Pin Select
      SPI0PS         : PINSEL_SPI0PS_Field :=
                        NRF_SVD.SIM.PINSEL_SPI0PS_Field_0;
      --  UART0 Pin Select
      UART0PS        : PINSEL_UART0PS_Field :=
                        NRF_SVD.SIM.PINSEL_UART0PS_Field_0;
      --  FTM0_CH0 Port Pin Select
      FTM0PS0        : PINSEL_FTM0PS0_Field :=
                        NRF_SVD.SIM.PINSEL_FTM0PS0_Field_0;
      --  FTM0_CH1 Port Pin Select
      FTM0PS1        : PINSEL_FTM0PS1_Field :=
                        NRF_SVD.SIM.PINSEL_FTM0PS1_Field_0;
      --  FTM1_CH0 Port Pin Select
      FTM1PS0        : PINSEL_FTM1PS0_Field :=
                        NRF_SVD.SIM.PINSEL_FTM1PS0_Field_0;
      --  FTM1_CH1 Port Pin Select
      FTM1PS1        : PINSEL_FTM1PS1_Field :=
                        NRF_SVD.SIM.PINSEL_FTM1PS1_Field_0;
      --  FTM2_CH0 Port Pin Select
      FTM2PS0        : PINSEL_FTM2PS0_Field :=
                        NRF_SVD.SIM.PINSEL_FTM2PS0_Field_0;
      --  FTM2_CH1 Port Pin Select
      FTM2PS1        : PINSEL_FTM2PS1_Field :=
                        NRF_SVD.SIM.PINSEL_FTM2PS1_Field_0;
      --  FTM2_CH2 Port Pin Select
      FTM2PS2        : PINSEL_FTM2PS2_Field :=
                        NRF_SVD.SIM.PINSEL_FTM2PS2_Field_0;
      --  FTM2_CH3 Port Pin Select
      FTM2PS3        : PINSEL_FTM2PS3_Field :=
                        NRF_SVD.SIM.PINSEL_FTM2PS3_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_PINSEL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RTCPS          at 0 range 4 .. 4;
      I2C0PS         at 0 range 5 .. 5;
      SPI0PS         at 0 range 6 .. 6;
      UART0PS        at 0 range 7 .. 7;
      FTM0PS0        at 0 range 8 .. 8;
      FTM0PS1        at 0 range 9 .. 9;
      FTM1PS0        at 0 range 10 .. 10;
      FTM1PS1        at 0 range 11 .. 11;
      FTM2PS0        at 0 range 12 .. 12;
      FTM2PS1        at 0 range 13 .. 13;
      FTM2PS2        at 0 range 14 .. 14;
      FTM2PS3        at 0 range 15 .. 15;
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

   --  I2C Clock Gate Control
   type SCGC_I2C_Field is
     (
      --  Bus clock to the IIC module is disabled.
      SCGC_I2C_Field_0,
      --  Bus clock to the IIC module is enabled.
      SCGC_I2C_Field_1)
     with Size => 1;
   for SCGC_I2C_Field use
     (SCGC_I2C_Field_0 => 0,
      SCGC_I2C_Field_1 => 1);

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
      Reserved_2_4   : HAL.UInt3 := 16#0#;
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
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  I2C Clock Gate Control
      I2C            : SCGC_I2C_Field := NRF_SVD.SIM.SCGC_I2C_Field_0;
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
      Reserved_2_4   at 0 range 2 .. 4;
      FTM0           at 0 range 5 .. 5;
      FTM1           at 0 range 6 .. 6;
      FTM2           at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      CRC            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      FLASH          at 0 range 12 .. 12;
      SWD            at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      I2C            at 0 range 17 .. 17;
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

   --  BUS Clock Divider
   type BUSDIV_BUSDIV_Field is
     (
      --  Bus clock is same as ICSOUTCLK.
      BUSDIV_BUSDIV_Field_0,
      --  Bus clock is ICSOUTCLK divided by 2.
      BUSDIV_BUSDIV_Field_1)
     with Size => 1;
   for BUSDIV_BUSDIV_Field use
     (BUSDIV_BUSDIV_Field_0 => 0,
      BUSDIV_BUSDIV_Field_1 => 1);

   --  BUS Clock Divider Register
   type SIM_BUSDIV_Register is record
      --  BUS Clock Divider
      BUSDIV        : BUSDIV_BUSDIV_Field :=
                       NRF_SVD.SIM.BUSDIV_BUSDIV_Field_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIM_BUSDIV_Register use record
      BUSDIV        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Integration Module
   type SIM_Peripheral is record
      --  System Reset Status and ID Register
      SRSID  : aliased SIM_SRSID_Register;
      --  System Options Register
      SOPT   : aliased SIM_SOPT_Register;
      --  Pin Selection Register
      PINSEL : aliased SIM_PINSEL_Register;
      --  System Clock Gating Control Register
      SCGC   : aliased SIM_SCGC_Register;
      --  Universally Unique Identifier Low Register
      UUIDL  : aliased HAL.UInt32;
      --  Universally Unique Identifier High Register
      UUIDH  : aliased HAL.UInt32;
      --  BUS Clock Divider Register
      BUSDIV : aliased SIM_BUSDIV_Register;
   end record
     with Volatile;

   for SIM_Peripheral use record
      SRSID  at 16#0# range 0 .. 31;
      SOPT   at 16#4# range 0 .. 31;
      PINSEL at 16#8# range 0 .. 31;
      SCGC   at 16#C# range 0 .. 31;
      UUIDL  at 16#10# range 0 .. 31;
      UUIDH  at 16#14# range 0 .. 31;
      BUSDIV at 16#18# range 0 .. 31;
   end record;

   --  System Integration Module
   SIM_Periph : aliased SIM_Peripheral
     with Import, Address => SIM_Base;

end NRF_SVD.SIM;
