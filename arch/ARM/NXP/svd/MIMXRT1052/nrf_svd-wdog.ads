--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.WDOG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  WDZST
   type WCR_WDZST_Field is
     (
      --  Continue timer operation (Default).
      Wdzst_0,
      --  Suspend the watchdog timer.
      Wdzst_1)
     with Size => 1;
   for WCR_WDZST_Field use
     (Wdzst_0 => 0,
      Wdzst_1 => 1);

   --  WDBG
   type WCR_WDBG_Field is
     (
      --  Continue WDOG timer operation (Default).
      Wdbg_0,
      --  Suspend the watchdog timer.
      Wdbg_1)
     with Size => 1;
   for WCR_WDBG_Field use
     (Wdbg_0 => 0,
      Wdbg_1 => 1);

   --  WDE
   type WCR_WDE_Field is
     (
      --  Disable the Watchdog (Default).
      Wde_0,
      --  Enable the Watchdog.
      Wde_1)
     with Size => 1;
   for WCR_WDE_Field use
     (Wde_0 => 0,
      Wde_1 => 1);

   --  WDT
   type WCR_WDT_Field is
     (
      --  no description available
      Wdt_0,
      --  no description available
      Wdt_1)
     with Size => 1;
   for WCR_WDT_Field use
     (Wdt_0 => 0,
      Wdt_1 => 1);

   --  SRS
   type WCR_SRS_Field is
     (
      --  Assert system reset signal.
      Srs_0,
      --  No effect on the system (Default).
      Srs_1)
     with Size => 1;
   for WCR_SRS_Field use
     (Srs_0 => 0,
      Srs_1 => 1);

   --  WDA
   type WCR_WDA_Field is
     (
      --  no description available
      Wda_0,
      --  No effect on system (Default).
      Wda_1)
     with Size => 1;
   for WCR_WDA_Field use
     (Wda_0 => 0,
      Wda_1 => 1);

   --  software reset extension, an option way to generate software reset
   type WCR_SRE_Field is
     (
      --  using original way to generate software reset (default)
      Sre_0,
      --  using new way to generate software reset.
      Sre_1)
     with Size => 1;
   for WCR_SRE_Field use
     (Sre_0 => 0,
      Sre_1 => 1);

   --  WDW
   type WCR_WDW_Field is
     (
      --  Continue WDOG timer operation (Default).
      Wdw_0,
      --  Suspend WDOG timer operation.
      Wdw_1)
     with Size => 1;
   for WCR_WDW_Field use
     (Wdw_0 => 0,
      Wdw_1 => 1);

   --  WT
   type WCR_WT_Field is
     (
      --  - 0.5 Seconds (Default).
      Wt_0,
      --  - 1.0 Seconds.
      Wt_1,
      --  - 1.5 Seconds.
      Wt_2,
      --  - 2.0 Seconds.
      Wt_3,
      --  - 128 Seconds.
      Wt_255)
     with Size => 8;
   for WCR_WT_Field use
     (Wt_0 => 0,
      Wt_1 => 1,
      Wt_2 => 2,
      Wt_3 => 3,
      Wt_255 => 255);

   --  Watchdog Control Register
   type WCR_Register is record
      --  WDZST
      WDZST : WCR_WDZST_Field := NRF_SVD.WDOG.Wdzst_0;
      --  WDBG
      WDBG  : WCR_WDBG_Field := NRF_SVD.WDOG.Wdbg_0;
      --  WDE
      WDE   : WCR_WDE_Field := NRF_SVD.WDOG.Wde_0;
      --  WDT
      WDT   : WCR_WDT_Field := NRF_SVD.WDOG.Wdt_0;
      --  SRS
      SRS   : WCR_SRS_Field := NRF_SVD.WDOG.Srs_1;
      --  WDA
      WDA   : WCR_WDA_Field := NRF_SVD.WDOG.Wda_1;
      --  software reset extension, an option way to generate software reset
      SRE   : WCR_SRE_Field := NRF_SVD.WDOG.Sre_0;
      --  WDW
      WDW   : WCR_WDW_Field := NRF_SVD.WDOG.Wdw_0;
      --  WT
      WT    : WCR_WT_Field := NRF_SVD.WDOG.Wt_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for WCR_Register use record
      WDZST at 0 range 0 .. 0;
      WDBG  at 0 range 1 .. 1;
      WDE   at 0 range 2 .. 2;
      WDT   at 0 range 3 .. 3;
      SRS   at 0 range 4 .. 4;
      WDA   at 0 range 5 .. 5;
      SRE   at 0 range 6 .. 6;
      WDW   at 0 range 7 .. 7;
      WT    at 0 range 8 .. 15;
   end record;

   --  SFTW
   type WRSR_SFTW_Field is
     (
      --  Reset is not the result of a software reset.
      Sftw_0,
      --  Reset is the result of a software reset.
      Sftw_1)
     with Size => 1;
   for WRSR_SFTW_Field use
     (Sftw_0 => 0,
      Sftw_1 => 1);

   --  TOUT
   type WRSR_TOUT_Field is
     (
      --  Reset is not the result of a WDOG timeout.
      Tout_0,
      --  Reset is the result of a WDOG timeout.
      Tout_1)
     with Size => 1;
   for WRSR_TOUT_Field use
     (Tout_0 => 0,
      Tout_1 => 1);

   --  POR
   type WRSR_POR_Field is
     (
      --  Reset is not the result of a power on reset.
      Por_0,
      --  Reset is the result of a power on reset.
      Por_1)
     with Size => 1;
   for WRSR_POR_Field use
     (Por_0 => 0,
      Por_1 => 1);

   --  Watchdog Reset Status Register
   type WRSR_Register is record
      --  Read-only. SFTW
      SFTW          : WRSR_SFTW_Field;
      --  Read-only. TOUT
      TOUT          : WRSR_TOUT_Field;
      --  unspecified
      Reserved_2_3  : HAL.UInt2;
      --  Read-only. POR
      POR           : WRSR_POR_Field;
      --  unspecified
      Reserved_5_15 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for WRSR_Register use record
      SFTW          at 0 range 0 .. 0;
      TOUT          at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      POR           at 0 range 4 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   --  WICT
   type WICR_WICT_Field is
     (
      --  WICT[7:0] = Time duration between interrupt and time-out is 0
      --  seconds.
      Wict_0,
      --  WICT[7:0] = Time duration between interrupt and time-out is 0.5
      --  seconds.
      Wict_1,
      --  WICT[7:0] = Time duration between interrupt and time-out is 2 seconds
      --  (Default).
      Wict_4,
      --  WICT[7:0] = Time duration between interrupt and time-out is 127.5
      --  seconds.
      Wict_255)
     with Size => 8;
   for WICR_WICT_Field use
     (Wict_0 => 0,
      Wict_1 => 1,
      Wict_4 => 4,
      Wict_255 => 255);

   --  WTIS
   type WICR_WTIS_Field is
     (
      --  No interrupt has occurred (Default).
      Wtis_0,
      --  Interrupt has occurred
      Wtis_1)
     with Size => 1;
   for WICR_WTIS_Field use
     (Wtis_0 => 0,
      Wtis_1 => 1);

   --  WIE
   type WICR_WIE_Field is
     (
      --  Disable Interrupt (Default).
      Wie_0,
      --  Enable Interrupt.
      Wie_1)
     with Size => 1;
   for WICR_WIE_Field use
     (Wie_0 => 0,
      Wie_1 => 1);

   --  Watchdog Interrupt Control Register
   type WICR_Register is record
      --  WICT
      WICT          : WICR_WICT_Field := NRF_SVD.WDOG.Wict_4;
      --  unspecified
      Reserved_8_13 : HAL.UInt6 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. WTIS
      WTIS          : WICR_WTIS_Field := NRF_SVD.WDOG.Wtis_0;
      --  WIE
      WIE           : WICR_WIE_Field := NRF_SVD.WDOG.Wie_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for WICR_Register use record
      WICT          at 0 range 0 .. 7;
      Reserved_8_13 at 0 range 8 .. 13;
      WTIS          at 0 range 14 .. 14;
      WIE           at 0 range 15 .. 15;
   end record;

   --  PDE
   type WMCR_PDE_Field is
     (
      --  Power Down Counter of WDOG is disabled.
      Pde_0,
      --  Power Down Counter of WDOG is enabled (Default).
      Pde_1)
     with Size => 1;
   for WMCR_PDE_Field use
     (Pde_0 => 0,
      Pde_1 => 1);

   --  Watchdog Miscellaneous Control Register
   type WMCR_Register is record
      --  PDE
      PDE           : WMCR_PDE_Field := NRF_SVD.WDOG.Pde_1;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for WMCR_Register use record
      PDE           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WDOG
   type WDOG_Peripheral is record
      --  Watchdog Control Register
      WCR  : aliased WCR_Register;
      --  Watchdog Service Register
      WSR  : aliased HAL.UInt16;
      --  Watchdog Reset Status Register
      WRSR : aliased WRSR_Register;
      --  Watchdog Interrupt Control Register
      WICR : aliased WICR_Register;
      --  Watchdog Miscellaneous Control Register
      WMCR : aliased WMCR_Register;
   end record
     with Volatile;

   for WDOG_Peripheral use record
      WCR  at 16#0# range 0 .. 15;
      WSR  at 16#2# range 0 .. 15;
      WRSR at 16#4# range 0 .. 15;
      WICR at 16#6# range 0 .. 15;
      WMCR at 16#8# range 0 .. 15;
   end record;

   --  WDOG
   WDOG1_Periph : aliased WDOG_Peripheral
     with Import, Address => System'To_Address (16#400B8000#);

   --  WDOG
   WDOG2_Periph : aliased WDOG_Peripheral
     with Import, Address => System'To_Address (16#400D0000#);

end NRF_SVD.WDOG;
