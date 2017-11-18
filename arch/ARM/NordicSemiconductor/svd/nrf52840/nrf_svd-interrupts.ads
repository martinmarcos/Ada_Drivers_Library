--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52840.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   POWER_CLOCK                                  : constant := 0;
   RADIO                                        : constant := 1;
   UARTE0_UART0                                 : constant := 2;
   SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0            : constant := 3;
   SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1            : constant := 4;
   NFCT                                         : constant := 5;
   GPIOTE                                       : constant := 6;
   SAADC                                        : constant := 7;
   TIMER0                                       : constant := 8;
   TIMER1                                       : constant := 9;
   TIMER2                                       : constant := 10;
   RTC0                                         : constant := 11;
   TEMP                                         : constant := 12;
   RNG                                          : constant := 13;
   ECB                                          : constant := 14;
   CCM_AAR                                      : constant := 15;
   WDT                                          : constant := 16;
   RTC1                                         : constant := 17;
   QDEC                                         : constant := 18;
   COMP_LPCOMP                                  : constant := 19;
   SWI0_EGU0                                    : constant := 20;
   SWI1_EGU1                                    : constant := 21;
   SWI2_EGU2                                    : constant := 22;
   SWI3_EGU3                                    : constant := 23;
   SWI4_EGU4                                    : constant := 24;
   SWI5_EGU5                                    : constant := 25;
   TIMER3                                       : constant := 26;
   TIMER4                                       : constant := 27;
   PWM0                                         : constant := 28;
   PDM                                          : constant := 29;
   MWU                                          : constant := 32;
   PWM1                                         : constant := 33;
   PWM2                                         : constant := 34;
   SPIM2_SPIS2_SPI2                             : constant := 35;
   RTC2                                         : constant := 36;
   I2S                                          : constant := 37;
   FPU                                          : constant := 38;
   USBD                                         : constant := 39;
   UARTE1                                       : constant := 40;
   QSPI                                         : constant := 41;
   CRYPTOCELL                                   : constant := 42;
   PWM3                                         : constant := 45;
   SPIM3                                        : constant := 47;

end NRF_SVD.Interrupts;
