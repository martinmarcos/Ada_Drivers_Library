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

--  This spec has been automatically generated from MKE06Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Power management
package NRF_SVD.PMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Bandgap Buffer Enable
   type SPMSC1_BGBE_Field is
     (
      --  Bandgap buffer is disabled.
      SPMSC1_BGBE_Field_0,
      --  Bandgap buffer is enabled.
      SPMSC1_BGBE_Field_1)
     with Size => 1;
   for SPMSC1_BGBE_Field use
     (SPMSC1_BGBE_Field_0 => 0,
      SPMSC1_BGBE_Field_1 => 1);

   --  Low-Voltage Detect Enable
   type SPMSC1_LVDE_Field is
     (
      --  LVD logic is disabled.
      SPMSC1_LVDE_Field_0,
      --  LVD logic is enabled.
      SPMSC1_LVDE_Field_1)
     with Size => 1;
   for SPMSC1_LVDE_Field use
     (SPMSC1_LVDE_Field_0 => 0,
      SPMSC1_LVDE_Field_1 => 1);

   --  Low-Voltage Detect Stop Enable
   type SPMSC1_LVDSE_Field is
     (
      --  Low-voltage detect is disabled during Stop mode.
      SPMSC1_LVDSE_Field_0,
      --  Low-voltage detect is enabled during Stop mode.
      SPMSC1_LVDSE_Field_1)
     with Size => 1;
   for SPMSC1_LVDSE_Field use
     (SPMSC1_LVDSE_Field_0 => 0,
      SPMSC1_LVDSE_Field_1 => 1);

   --  Low-Voltage Detect Reset Enable
   type SPMSC1_LVDRE_Field is
     (
      --  LVD events do not generate hardware resets.
      SPMSC1_LVDRE_Field_0,
      --  Forces an MCU reset when an enabled low-voltage detect event occurs.
      SPMSC1_LVDRE_Field_1)
     with Size => 1;
   for SPMSC1_LVDRE_Field use
     (SPMSC1_LVDRE_Field_0 => 0,
      SPMSC1_LVDRE_Field_1 => 1);

   --  Low-Voltage Warning Interrupt Enable
   type SPMSC1_LVWIE_Field is
     (
      --  Hardware interrupt is disabled (use polling).
      SPMSC1_LVWIE_Field_0,
      --  Requests a hardware interrupt when LVWF = 1.
      SPMSC1_LVWIE_Field_1)
     with Size => 1;
   for SPMSC1_LVWIE_Field use
     (SPMSC1_LVWIE_Field_0 => 0,
      SPMSC1_LVWIE_Field_1 => 1);

   --  Low-Voltage Warning Flag
   type SPMSC1_LVWF_Field is
     (
      --  Low-voltage warning is not present.
      SPMSC1_LVWF_Field_0,
      --  Low-voltage warning is present or was present.
      SPMSC1_LVWF_Field_1)
     with Size => 1;
   for SPMSC1_LVWF_Field use
     (SPMSC1_LVWF_Field_0 => 0,
      SPMSC1_LVWF_Field_1 => 1);

   --  System Power Management Status and Control 1 Register
   type PMC_SPMSC1_Register is record
      --  Bandgap Buffer Enable
      BGBE         : SPMSC1_BGBE_Field := NRF_SVD.PMC.SPMSC1_BGBE_Field_0;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Low-Voltage Detect Enable
      LVDE         : SPMSC1_LVDE_Field := NRF_SVD.PMC.SPMSC1_LVDE_Field_1;
      --  Low-Voltage Detect Stop Enable
      LVDSE        : SPMSC1_LVDSE_Field := NRF_SVD.PMC.SPMSC1_LVDSE_Field_1;
      --  Low-Voltage Detect Reset Enable
      LVDRE        : SPMSC1_LVDRE_Field := NRF_SVD.PMC.SPMSC1_LVDRE_Field_1;
      --  Low-Voltage Warning Interrupt Enable
      LVWIE        : SPMSC1_LVWIE_Field := NRF_SVD.PMC.SPMSC1_LVWIE_Field_0;
      --  Write-only. Low-Voltage Warning Acknowledge
      LVWACK       : Boolean := False;
      --  Read-only. Low-Voltage Warning Flag
      LVWF         : SPMSC1_LVWF_Field := NRF_SVD.PMC.SPMSC1_LVWF_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMC_SPMSC1_Register use record
      BGBE         at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      LVDE         at 0 range 2 .. 2;
      LVDSE        at 0 range 3 .. 3;
      LVDRE        at 0 range 4 .. 4;
      LVWIE        at 0 range 5 .. 5;
      LVWACK       at 0 range 6 .. 6;
      LVWF         at 0 range 7 .. 7;
   end record;

   --  Low-Voltage Warning Voltage Select
   type SPMSC2_LVWV_Field is
     (
      --  Low trip point is selected (VLVW = VLVW1).
      SPMSC2_LVWV_Field_00,
      --  Middle 1 trip point is selected (VLVW = VLVW2).
      SPMSC2_LVWV_Field_01,
      --  Middle 2 trip point is selected (VLVW = VLVW3).
      SPMSC2_LVWV_Field_10,
      --  High trip point is selected (VLVW = VLVW4).
      SPMSC2_LVWV_Field_11)
     with Size => 2;
   for SPMSC2_LVWV_Field use
     (SPMSC2_LVWV_Field_00 => 0,
      SPMSC2_LVWV_Field_01 => 1,
      SPMSC2_LVWV_Field_10 => 2,
      SPMSC2_LVWV_Field_11 => 3);

   --  Low-Voltage Detect Voltage Select
   type SPMSC2_LVDV_Field is
     (
      --  Low trip point is selected (VLVD = VLVDL).
      SPMSC2_LVDV_Field_0,
      --  High trip point is selected (VLVD = VLVDH).
      SPMSC2_LVDV_Field_1)
     with Size => 1;
   for SPMSC2_LVDV_Field use
     (SPMSC2_LVDV_Field_0 => 0,
      SPMSC2_LVDV_Field_1 => 1);

   --  System Power Management Status and Control 2 Register
   type PMC_SPMSC2_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Low-Voltage Warning Voltage Select
      LVWV         : SPMSC2_LVWV_Field := NRF_SVD.PMC.SPMSC2_LVWV_Field_00;
      --  Low-Voltage Detect Voltage Select
      LVDV         : SPMSC2_LVDV_Field := NRF_SVD.PMC.SPMSC2_LVDV_Field_0;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMC_SPMSC2_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      LVWV         at 0 range 4 .. 5;
      LVDV         at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power management
   type PMC_Peripheral is record
      --  System Power Management Status and Control 1 Register
      SPMSC1 : aliased PMC_SPMSC1_Register;
      --  System Power Management Status and Control 2 Register
      SPMSC2 : aliased PMC_SPMSC2_Register;
   end record
     with Volatile;

   for PMC_Peripheral use record
      SPMSC1 at 16#0# range 0 .. 7;
      SPMSC2 at 16#1# range 0 .. 7;
   end record;

   --  Power management
   PMC_Periph : aliased PMC_Peripheral
     with Import, Address => PMC_Base;

end NRF_SVD.PMC;
