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

--  This spec has been automatically generated from nrf51.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   POWER_CLOCK            : constant := 0;
   RADIO                  : constant := 1;
   UART0                  : constant := 2;
   SPI0_TWI0              : constant := 3;
   SPI1_TWI1              : constant := 4;
   GPIOTE                 : constant := 6;
   ADC                    : constant := 7;
   TIMER0                 : constant := 8;
   TIMER1                 : constant := 9;
   TIMER2                 : constant := 10;
   RTC0                   : constant := 11;
   TEMP                   : constant := 12;
   RNG                    : constant := 13;
   ECB                    : constant := 14;
   CCM_AAR                : constant := 15;
   WDT                    : constant := 16;
   RTC1                   : constant := 17;
   QDEC                   : constant := 18;
   LPCOMP                 : constant := 19;
   SWI0                   : constant := 20;
   SWI1                   : constant := 21;
   SWI2                   : constant := 22;
   SWI3                   : constant := 23;
   SWI4                   : constant := 24;
   SWI5                   : constant := 25;

end NRF_SVD.Interrupts;
