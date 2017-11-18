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

--  This spec has been automatically generated from MKV42F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Reset Control Module
package NRF_SVD.RCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Low Leakage Wakeup Reset
   type SRS0_WAKEUP_Field is
     (
      --  Reset not caused by LLWU module wakeup source
      SRS0_WAKEUP_Field_0,
      --  Reset caused by LLWU module wakeup source
      SRS0_WAKEUP_Field_1)
     with Size => 1;
   for SRS0_WAKEUP_Field use
     (SRS0_WAKEUP_Field_0 => 0,
      SRS0_WAKEUP_Field_1 => 1);

   --  Low-Voltage Detect Reset
   type SRS0_LVD_Field is
     (
      --  Reset not caused by LVD trip or POR
      SRS0_LVD_Field_0,
      --  Reset caused by LVD trip or POR
      SRS0_LVD_Field_1)
     with Size => 1;
   for SRS0_LVD_Field use
     (SRS0_LVD_Field_0 => 0,
      SRS0_LVD_Field_1 => 1);

   --  Loss-of-Clock Reset
   type SRS0_LOC_Field is
     (
      --  Reset not caused by a loss of external clock.
      SRS0_LOC_Field_0,
      --  Reset caused by a loss of external clock.
      SRS0_LOC_Field_1)
     with Size => 1;
   for SRS0_LOC_Field use
     (SRS0_LOC_Field_0 => 0,
      SRS0_LOC_Field_1 => 1);

   --  Loss-of-Lock Reset
   type SRS0_LOL_Field is
     (
      --  Reset not caused by a loss of lock in the PLL
      SRS0_LOL_Field_0,
      --  Reset caused by a loss of lock in the PLL
      SRS0_LOL_Field_1)
     with Size => 1;
   for SRS0_LOL_Field use
     (SRS0_LOL_Field_0 => 0,
      SRS0_LOL_Field_1 => 1);

   --  Watchdog
   type SRS0_WDOG_Field is
     (
      --  Reset not caused by watchdog timeout
      SRS0_WDOG_Field_0,
      --  Reset caused by watchdog timeout
      SRS0_WDOG_Field_1)
     with Size => 1;
   for SRS0_WDOG_Field use
     (SRS0_WDOG_Field_0 => 0,
      SRS0_WDOG_Field_1 => 1);

   --  External Reset Pin
   type SRS0_PIN_Field is
     (
      --  Reset not caused by external reset pin
      SRS0_PIN_Field_0,
      --  Reset caused by external reset pin
      SRS0_PIN_Field_1)
     with Size => 1;
   for SRS0_PIN_Field use
     (SRS0_PIN_Field_0 => 0,
      SRS0_PIN_Field_1 => 1);

   --  Power-On Reset
   type SRS0_POR_Field is
     (
      --  Reset not caused by POR
      SRS0_POR_Field_0,
      --  Reset caused by POR
      SRS0_POR_Field_1)
     with Size => 1;
   for SRS0_POR_Field use
     (SRS0_POR_Field_0 => 0,
      SRS0_POR_Field_1 => 1);

   --  System Reset Status Register 0
   type RCM_SRS0_Register is record
      --  Read-only. Low Leakage Wakeup Reset
      WAKEUP       : SRS0_WAKEUP_Field;
      --  Read-only. Low-Voltage Detect Reset
      LVD          : SRS0_LVD_Field;
      --  Read-only. Loss-of-Clock Reset
      LOC          : SRS0_LOC_Field;
      --  Read-only. Loss-of-Lock Reset
      LOL          : SRS0_LOL_Field;
      --  unspecified
      Reserved_4_4 : HAL.Bit;
      --  Read-only. Watchdog
      WDOG         : SRS0_WDOG_Field;
      --  Read-only. External Reset Pin
      PIN          : SRS0_PIN_Field;
      --  Read-only. Power-On Reset
      POR          : SRS0_POR_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RCM_SRS0_Register use record
      WAKEUP       at 0 range 0 .. 0;
      LVD          at 0 range 1 .. 1;
      LOC          at 0 range 2 .. 2;
      LOL          at 0 range 3 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      WDOG         at 0 range 5 .. 5;
      PIN          at 0 range 6 .. 6;
      POR          at 0 range 7 .. 7;
   end record;

   --  Core Lockup
   type SRS1_LOCKUP_Field is
     (
      --  Reset not caused by core LOCKUP event
      SRS1_LOCKUP_Field_0,
      --  Reset caused by core LOCKUP event
      SRS1_LOCKUP_Field_1)
     with Size => 1;
   for SRS1_LOCKUP_Field use
     (SRS1_LOCKUP_Field_0 => 0,
      SRS1_LOCKUP_Field_1 => 1);

   --  Software
   type SRS1_SW_Field is
     (
      --  Reset not caused by software setting of SYSRESETREQ bit
      SRS1_SW_Field_0,
      --  Reset caused by software setting of SYSRESETREQ bit
      SRS1_SW_Field_1)
     with Size => 1;
   for SRS1_SW_Field use
     (SRS1_SW_Field_0 => 0,
      SRS1_SW_Field_1 => 1);

   --  MDM-AP System Reset Request
   type SRS1_MDM_AP_Field is
     (
      --  Reset not caused by host debugger system setting of the System Reset
      --  Request bit
      SRS1_MDM_AP_Field_0,
      --  Reset caused by host debugger system setting of the System Reset
      --  Request bit
      SRS1_MDM_AP_Field_1)
     with Size => 1;
   for SRS1_MDM_AP_Field use
     (SRS1_MDM_AP_Field_0 => 0,
      SRS1_MDM_AP_Field_1 => 1);

   --  Stop Mode Acknowledge Error Reset
   type SRS1_SACKERR_Field is
     (
      --  Reset not caused by peripheral failure to acknowledge attempt to
      --  enter stop mode
      SRS1_SACKERR_Field_0,
      --  Reset caused by peripheral failure to acknowledge attempt to enter
      --  stop mode
      SRS1_SACKERR_Field_1)
     with Size => 1;
   for SRS1_SACKERR_Field use
     (SRS1_SACKERR_Field_0 => 0,
      SRS1_SACKERR_Field_1 => 1);

   --  System Reset Status Register 1
   type RCM_SRS1_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit;
      --  Read-only. Core Lockup
      LOCKUP       : SRS1_LOCKUP_Field;
      --  Read-only. Software
      SW           : SRS1_SW_Field;
      --  Read-only. MDM-AP System Reset Request
      MDM_AP       : SRS1_MDM_AP_Field;
      --  unspecified
      Reserved_4_4 : HAL.Bit;
      --  Read-only. Stop Mode Acknowledge Error Reset
      SACKERR      : SRS1_SACKERR_Field;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RCM_SRS1_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      LOCKUP       at 0 range 1 .. 1;
      SW           at 0 range 2 .. 2;
      MDM_AP       at 0 range 3 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      SACKERR      at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Reset Pin Filter Select in Run and Wait Modes
   type RPFC_RSTFLTSRW_Field is
     (
      --  All filtering disabled
      RPFC_RSTFLTSRW_Field_00,
      --  Bus clock filter enabled for normal operation
      RPFC_RSTFLTSRW_Field_01,
      --  LPO clock filter enabled for normal operation
      RPFC_RSTFLTSRW_Field_10)
     with Size => 2;
   for RPFC_RSTFLTSRW_Field use
     (RPFC_RSTFLTSRW_Field_00 => 0,
      RPFC_RSTFLTSRW_Field_01 => 1,
      RPFC_RSTFLTSRW_Field_10 => 2);

   --  Reset Pin Filter Select in Stop Mode
   type RPFC_RSTFLTSS_Field is
     (
      --  All filtering disabled
      RPFC_RSTFLTSS_Field_0,
      --  LPO clock filter enabled
      RPFC_RSTFLTSS_Field_1)
     with Size => 1;
   for RPFC_RSTFLTSS_Field use
     (RPFC_RSTFLTSS_Field_0 => 0,
      RPFC_RSTFLTSS_Field_1 => 1);

   --  Reset Pin Filter Control register
   type RCM_RPFC_Register is record
      --  Reset Pin Filter Select in Run and Wait Modes
      RSTFLTSRW    : RPFC_RSTFLTSRW_Field :=
                      NRF_SVD.RCM.RPFC_RSTFLTSRW_Field_00;
      --  Reset Pin Filter Select in Stop Mode
      RSTFLTSS     : RPFC_RSTFLTSS_Field := NRF_SVD.RCM.RPFC_RSTFLTSS_Field_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RCM_RPFC_Register use record
      RSTFLTSRW    at 0 range 0 .. 1;
      RSTFLTSS     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Reset Pin Filter Bus Clock Select
   type RPFW_RSTFLTSEL_Field is
     (
      --  Bus clock filter count is 1
      RPFW_RSTFLTSEL_Field_00000,
      --  Bus clock filter count is 2
      RPFW_RSTFLTSEL_Field_00001,
      --  Bus clock filter count is 3
      RPFW_RSTFLTSEL_Field_00010,
      --  Bus clock filter count is 4
      RPFW_RSTFLTSEL_Field_00011,
      --  Bus clock filter count is 5
      RPFW_RSTFLTSEL_Field_00100,
      --  Bus clock filter count is 6
      RPFW_RSTFLTSEL_Field_00101,
      --  Bus clock filter count is 7
      RPFW_RSTFLTSEL_Field_00110,
      --  Bus clock filter count is 8
      RPFW_RSTFLTSEL_Field_00111,
      --  Bus clock filter count is 9
      RPFW_RSTFLTSEL_Field_01000,
      --  Bus clock filter count is 10
      RPFW_RSTFLTSEL_Field_01001,
      --  Bus clock filter count is 11
      RPFW_RSTFLTSEL_Field_01010,
      --  Bus clock filter count is 12
      RPFW_RSTFLTSEL_Field_01011,
      --  Bus clock filter count is 13
      RPFW_RSTFLTSEL_Field_01100,
      --  Bus clock filter count is 14
      RPFW_RSTFLTSEL_Field_01101,
      --  Bus clock filter count is 15
      RPFW_RSTFLTSEL_Field_01110,
      --  Bus clock filter count is 16
      RPFW_RSTFLTSEL_Field_01111,
      --  Bus clock filter count is 17
      RPFW_RSTFLTSEL_Field_10000,
      --  Bus clock filter count is 18
      RPFW_RSTFLTSEL_Field_10001,
      --  Bus clock filter count is 19
      RPFW_RSTFLTSEL_Field_10010,
      --  Bus clock filter count is 20
      RPFW_RSTFLTSEL_Field_10011,
      --  Bus clock filter count is 21
      RPFW_RSTFLTSEL_Field_10100,
      --  Bus clock filter count is 22
      RPFW_RSTFLTSEL_Field_10101,
      --  Bus clock filter count is 23
      RPFW_RSTFLTSEL_Field_10110,
      --  Bus clock filter count is 24
      RPFW_RSTFLTSEL_Field_10111,
      --  Bus clock filter count is 25
      RPFW_RSTFLTSEL_Field_11000,
      --  Bus clock filter count is 26
      RPFW_RSTFLTSEL_Field_11001,
      --  Bus clock filter count is 27
      RPFW_RSTFLTSEL_Field_11010,
      --  Bus clock filter count is 28
      RPFW_RSTFLTSEL_Field_11011,
      --  Bus clock filter count is 29
      RPFW_RSTFLTSEL_Field_11100,
      --  Bus clock filter count is 30
      RPFW_RSTFLTSEL_Field_11101,
      --  Bus clock filter count is 31
      RPFW_RSTFLTSEL_Field_11110,
      --  Bus clock filter count is 32
      RPFW_RSTFLTSEL_Field_11111)
     with Size => 5;
   for RPFW_RSTFLTSEL_Field use
     (RPFW_RSTFLTSEL_Field_00000 => 0,
      RPFW_RSTFLTSEL_Field_00001 => 1,
      RPFW_RSTFLTSEL_Field_00010 => 2,
      RPFW_RSTFLTSEL_Field_00011 => 3,
      RPFW_RSTFLTSEL_Field_00100 => 4,
      RPFW_RSTFLTSEL_Field_00101 => 5,
      RPFW_RSTFLTSEL_Field_00110 => 6,
      RPFW_RSTFLTSEL_Field_00111 => 7,
      RPFW_RSTFLTSEL_Field_01000 => 8,
      RPFW_RSTFLTSEL_Field_01001 => 9,
      RPFW_RSTFLTSEL_Field_01010 => 10,
      RPFW_RSTFLTSEL_Field_01011 => 11,
      RPFW_RSTFLTSEL_Field_01100 => 12,
      RPFW_RSTFLTSEL_Field_01101 => 13,
      RPFW_RSTFLTSEL_Field_01110 => 14,
      RPFW_RSTFLTSEL_Field_01111 => 15,
      RPFW_RSTFLTSEL_Field_10000 => 16,
      RPFW_RSTFLTSEL_Field_10001 => 17,
      RPFW_RSTFLTSEL_Field_10010 => 18,
      RPFW_RSTFLTSEL_Field_10011 => 19,
      RPFW_RSTFLTSEL_Field_10100 => 20,
      RPFW_RSTFLTSEL_Field_10101 => 21,
      RPFW_RSTFLTSEL_Field_10110 => 22,
      RPFW_RSTFLTSEL_Field_10111 => 23,
      RPFW_RSTFLTSEL_Field_11000 => 24,
      RPFW_RSTFLTSEL_Field_11001 => 25,
      RPFW_RSTFLTSEL_Field_11010 => 26,
      RPFW_RSTFLTSEL_Field_11011 => 27,
      RPFW_RSTFLTSEL_Field_11100 => 28,
      RPFW_RSTFLTSEL_Field_11101 => 29,
      RPFW_RSTFLTSEL_Field_11110 => 30,
      RPFW_RSTFLTSEL_Field_11111 => 31);

   --  Reset Pin Filter Width register
   type RCM_RPFW_Register is record
      --  Reset Pin Filter Bus Clock Select
      RSTFLTSEL    : RPFW_RSTFLTSEL_Field :=
                      NRF_SVD.RCM.RPFW_RSTFLTSEL_Field_00000;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RCM_RPFW_Register use record
      RSTFLTSEL    at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Sticky Low Leakage Wakeup Reset
   type SSRS0_SWAKEUP_Field is
     (
      --  Reset not caused by LLWU module wakeup source
      SSRS0_SWAKEUP_Field_0,
      --  Reset caused by LLWU module wakeup source
      SSRS0_SWAKEUP_Field_1)
     with Size => 1;
   for SSRS0_SWAKEUP_Field use
     (SSRS0_SWAKEUP_Field_0 => 0,
      SSRS0_SWAKEUP_Field_1 => 1);

   --  Sticky Low-Voltage Detect Reset
   type SSRS0_SLVD_Field is
     (
      --  Reset not caused by LVD trip or POR
      SSRS0_SLVD_Field_0,
      --  Reset caused by LVD trip or POR
      SSRS0_SLVD_Field_1)
     with Size => 1;
   for SSRS0_SLVD_Field use
     (SSRS0_SLVD_Field_0 => 0,
      SSRS0_SLVD_Field_1 => 1);

   --  Sticky Loss-of-Clock Reset
   type SSRS0_SLOC_Field is
     (
      --  Reset not caused by a loss of external clock.
      SSRS0_SLOC_Field_0,
      --  Reset caused by a loss of external clock.
      SSRS0_SLOC_Field_1)
     with Size => 1;
   for SSRS0_SLOC_Field use
     (SSRS0_SLOC_Field_0 => 0,
      SSRS0_SLOC_Field_1 => 1);

   --  Sticky Loss-of-Lock Reset
   type SSRS0_SLOL_Field is
     (
      --  Reset not caused by a loss of lock in the PLL
      SSRS0_SLOL_Field_0,
      --  Reset caused by a loss of lock in the PLL
      SSRS0_SLOL_Field_1)
     with Size => 1;
   for SSRS0_SLOL_Field use
     (SSRS0_SLOL_Field_0 => 0,
      SSRS0_SLOL_Field_1 => 1);

   --  Sticky Watchdog
   type SSRS0_SWDOG_Field is
     (
      --  Reset not caused by watchdog timeout
      SSRS0_SWDOG_Field_0,
      --  Reset caused by watchdog timeout
      SSRS0_SWDOG_Field_1)
     with Size => 1;
   for SSRS0_SWDOG_Field use
     (SSRS0_SWDOG_Field_0 => 0,
      SSRS0_SWDOG_Field_1 => 1);

   --  Sticky External Reset Pin
   type SSRS0_SPIN_Field is
     (
      --  Reset not caused by external reset pin
      SSRS0_SPIN_Field_0,
      --  Reset caused by external reset pin
      SSRS0_SPIN_Field_1)
     with Size => 1;
   for SSRS0_SPIN_Field use
     (SSRS0_SPIN_Field_0 => 0,
      SSRS0_SPIN_Field_1 => 1);

   --  Sticky Power-On Reset
   type SSRS0_SPOR_Field is
     (
      --  Reset not caused by POR
      SSRS0_SPOR_Field_0,
      --  Reset caused by POR
      SSRS0_SPOR_Field_1)
     with Size => 1;
   for SSRS0_SPOR_Field use
     (SSRS0_SPOR_Field_0 => 0,
      SSRS0_SPOR_Field_1 => 1);

   --  Sticky System Reset Status Register 0
   type RCM_SSRS0_Register is record
      --  Sticky Low Leakage Wakeup Reset
      SWAKEUP      : SSRS0_SWAKEUP_Field := NRF_SVD.RCM.SSRS0_SWAKEUP_Field_0;
      --  Sticky Low-Voltage Detect Reset
      SLVD         : SSRS0_SLVD_Field := NRF_SVD.RCM.SSRS0_SLVD_Field_1;
      --  Sticky Loss-of-Clock Reset
      SLOC         : SSRS0_SLOC_Field := NRF_SVD.RCM.SSRS0_SLOC_Field_0;
      --  Sticky Loss-of-Lock Reset
      SLOL         : SSRS0_SLOL_Field := NRF_SVD.RCM.SSRS0_SLOL_Field_0;
      --  unspecified
      Reserved_4_4 : HAL.Bit := 16#0#;
      --  Sticky Watchdog
      SWDOG        : SSRS0_SWDOG_Field := NRF_SVD.RCM.SSRS0_SWDOG_Field_0;
      --  Sticky External Reset Pin
      SPIN         : SSRS0_SPIN_Field := NRF_SVD.RCM.SSRS0_SPIN_Field_0;
      --  Sticky Power-On Reset
      SPOR         : SSRS0_SPOR_Field := NRF_SVD.RCM.SSRS0_SPOR_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RCM_SSRS0_Register use record
      SWAKEUP      at 0 range 0 .. 0;
      SLVD         at 0 range 1 .. 1;
      SLOC         at 0 range 2 .. 2;
      SLOL         at 0 range 3 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      SWDOG        at 0 range 5 .. 5;
      SPIN         at 0 range 6 .. 6;
      SPOR         at 0 range 7 .. 7;
   end record;

   --  Sticky Core Lockup
   type SSRS1_SLOCKUP_Field is
     (
      --  Reset not caused by core LOCKUP event
      SSRS1_SLOCKUP_Field_0,
      --  Reset caused by core LOCKUP event
      SSRS1_SLOCKUP_Field_1)
     with Size => 1;
   for SSRS1_SLOCKUP_Field use
     (SSRS1_SLOCKUP_Field_0 => 0,
      SSRS1_SLOCKUP_Field_1 => 1);

   --  Sticky Software
   type SSRS1_SSW_Field is
     (
      --  Reset not caused by software setting of SYSRESETREQ bit
      SSRS1_SSW_Field_0,
      --  Reset caused by software setting of SYSRESETREQ bit
      SSRS1_SSW_Field_1)
     with Size => 1;
   for SSRS1_SSW_Field use
     (SSRS1_SSW_Field_0 => 0,
      SSRS1_SSW_Field_1 => 1);

   --  Sticky MDM-AP System Reset Request
   type SSRS1_SMDM_AP_Field is
     (
      --  Reset not caused by host debugger system setting of the System Reset
      --  Request bit
      SSRS1_SMDM_AP_Field_0,
      --  Reset caused by host debugger system setting of the System Reset
      --  Request bit
      SSRS1_SMDM_AP_Field_1)
     with Size => 1;
   for SSRS1_SMDM_AP_Field use
     (SSRS1_SMDM_AP_Field_0 => 0,
      SSRS1_SMDM_AP_Field_1 => 1);

   --  Sticky Stop Mode Acknowledge Error Reset
   type SSRS1_SSACKERR_Field is
     (
      --  Reset not caused by peripheral failure to acknowledge attempt to
      --  enter stop mode
      SSRS1_SSACKERR_Field_0,
      --  Reset caused by peripheral failure to acknowledge attempt to enter
      --  stop mode
      SSRS1_SSACKERR_Field_1)
     with Size => 1;
   for SSRS1_SSACKERR_Field use
     (SSRS1_SSACKERR_Field_0 => 0,
      SSRS1_SSACKERR_Field_1 => 1);

   --  Sticky System Reset Status Register 1
   type RCM_SSRS1_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Sticky Core Lockup
      SLOCKUP      : SSRS1_SLOCKUP_Field := NRF_SVD.RCM.SSRS1_SLOCKUP_Field_0;
      --  Sticky Software
      SSW          : SSRS1_SSW_Field := NRF_SVD.RCM.SSRS1_SSW_Field_0;
      --  Sticky MDM-AP System Reset Request
      SMDM_AP      : SSRS1_SMDM_AP_Field := NRF_SVD.RCM.SSRS1_SMDM_AP_Field_0;
      --  unspecified
      Reserved_4_4 : HAL.Bit := 16#0#;
      --  Sticky Stop Mode Acknowledge Error Reset
      SSACKERR     : SSRS1_SSACKERR_Field :=
                      NRF_SVD.RCM.SSRS1_SSACKERR_Field_0;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RCM_SSRS1_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      SLOCKUP      at 0 range 1 .. 1;
      SSW          at 0 range 2 .. 2;
      SMDM_AP      at 0 range 3 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      SSACKERR     at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Control Module
   type RCM_Peripheral is record
      --  System Reset Status Register 0
      SRS0  : aliased RCM_SRS0_Register;
      --  System Reset Status Register 1
      SRS1  : aliased RCM_SRS1_Register;
      --  Reset Pin Filter Control register
      RPFC  : aliased RCM_RPFC_Register;
      --  Reset Pin Filter Width register
      RPFW  : aliased RCM_RPFW_Register;
      --  Sticky System Reset Status Register 0
      SSRS0 : aliased RCM_SSRS0_Register;
      --  Sticky System Reset Status Register 1
      SSRS1 : aliased RCM_SSRS1_Register;
   end record
     with Volatile;

   for RCM_Peripheral use record
      SRS0  at 16#0# range 0 .. 7;
      SRS1  at 16#1# range 0 .. 7;
      RPFC  at 16#4# range 0 .. 7;
      RPFW  at 16#5# range 0 .. 7;
      SSRS0 at 16#8# range 0 .. 7;
      SSRS1 at 16#9# range 0 .. 7;
   end record;

   --  Reset Control Module
   RCM_Periph : aliased RCM_Peripheral
     with Import, Address => RCM_Base;

end NRF_SVD.RCM;
