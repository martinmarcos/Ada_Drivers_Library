--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Low Voltage Detect Reset Enable
   type LVDSC1_LVDRE_Field is
     (
      --  No system resets on low voltage detect events.
      Lvdre_0,
      --  If the supply voltage falls below VLVD, a system reset will be
      --  generated.
      Lvdre_1)
     with Size => 1;
   for LVDSC1_LVDRE_Field use
     (Lvdre_0 => 0,
      Lvdre_1 => 1);

   --  Low Voltage Detect Interrupt Enable
   type LVDSC1_LVDIE_Field is
     (
      --  Hardware interrupt disabled (use polling)
      Lvdie_0,
      --  Request a hardware interrupt when LVDF = 1
      Lvdie_1)
     with Size => 1;
   for LVDSC1_LVDIE_Field use
     (Lvdie_0 => 0,
      Lvdie_1 => 1);

   --  Low Voltage Detect Flag
   type LVDSC1_LVDF_Field is
     (
      --  Low-voltage event not detected
      Lvdf_0,
      --  Low-voltage event detected
      Lvdf_1)
     with Size => 1;
   for LVDSC1_LVDF_Field use
     (Lvdf_0 => 0,
      Lvdf_1 => 1);

   --  Low Voltage Detect Status and Control 1 Register
   type PMC_LVDSC1_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Low Voltage Detect Reset Enable
      LVDRE        : LVDSC1_LVDRE_Field := NRF_SVD.PMC.Lvdre_0;
      --  Low Voltage Detect Interrupt Enable
      LVDIE        : LVDSC1_LVDIE_Field := NRF_SVD.PMC.Lvdie_0;
      --  Write-only. Low Voltage Detect Acknowledge
      LVDACK       : Boolean := False;
      --  Read-only. Low Voltage Detect Flag
      LVDF         : LVDSC1_LVDF_Field := NRF_SVD.PMC.Lvdf_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMC_LVDSC1_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      LVDRE        at 0 range 4 .. 4;
      LVDIE        at 0 range 5 .. 5;
      LVDACK       at 0 range 6 .. 6;
      LVDF         at 0 range 7 .. 7;
   end record;

   --  Low-Voltage Warning Interrupt Enable
   type LVDSC2_LVWIE_Field is
     (
      --  Hardware interrupt disabled (use polling)
      Lvwie_0,
      --  Request a hardware interrupt when LVWF=1
      Lvwie_1)
     with Size => 1;
   for LVDSC2_LVWIE_Field use
     (Lvwie_0 => 0,
      Lvwie_1 => 1);

   --  Low-Voltage Warning Flag
   type LVDSC2_LVWF_Field is
     (
      --  Low-voltage warning event not detected
      Lvwf_0,
      --  Low-voltage warning event detected
      Lvwf_1)
     with Size => 1;
   for LVDSC2_LVWF_Field use
     (Lvwf_0 => 0,
      Lvwf_1 => 1);

   --  Low Voltage Detect Status and Control 2 Register
   type PMC_LVDSC2_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Low-Voltage Warning Interrupt Enable
      LVWIE        : LVDSC2_LVWIE_Field := NRF_SVD.PMC.Lvwie_0;
      --  Write-only. Low-Voltage Warning Acknowledge
      LVWACK       : Boolean := False;
      --  Read-only. Low-Voltage Warning Flag
      LVWF         : LVDSC2_LVWF_Field := NRF_SVD.PMC.Lvwf_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMC_LVDSC2_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      LVWIE        at 0 range 5 .. 5;
      LVWACK       at 0 range 6 .. 6;
      LVWF         at 0 range 7 .. 7;
   end record;

   --  Bias Enable Bit
   type REGSC_BIASEN_Field is
     (
      --  Biasing disabled, core logic can run in full performance
      Biasen_0,
      --  Biasing enabled, core logic is slower and there are restrictions in
      --  allowed system clock speed (see Data Sheet for details)
      Biasen_1)
     with Size => 1;
   for REGSC_BIASEN_Field use
     (Biasen_0 => 0,
      Biasen_1 => 1);

   --  Clock Bias Disable Bit
   type REGSC_CLKBIASDIS_Field is
     (
      --  No effect
      Clkbiasdis_0,
      --  In STOP or VLPS mode the bias currents and reference voltages for the
      --  following clock modules are disabled: SIRC, FIRC, PLL. (if available
      --  on device)
      Clkbiasdis_1)
     with Size => 1;
   for REGSC_CLKBIASDIS_Field use
     (Clkbiasdis_0 => 0,
      Clkbiasdis_1 => 1);

   --  Regulator in Full Performance Mode Status Bit
   type REGSC_REGFPM_Field is
     (
      --  Regulator is in low power mode or transition to/from
      Regfpm_0,
      --  Regulator is in full performance mode
      Regfpm_1)
     with Size => 1;
   for REGSC_REGFPM_Field use
     (Regfpm_0 => 0,
      Regfpm_1 => 1);

   --  LPO Status Bit
   type REGSC_LPOSTAT_Field is
     (
      --  Low power oscillator in low phase
      Lpostat_0,
      --  Low power oscillator in high phase
      Lpostat_1)
     with Size => 1;
   for REGSC_LPOSTAT_Field use
     (Lpostat_0 => 0,
      Lpostat_1 => 1);

   --  LPO Disable Bit
   type REGSC_LPODIS_Field is
     (
      --  Low power oscillator enabled
      Lpodis_0,
      --  Low power oscillator disabled
      Lpodis_1)
     with Size => 1;
   for REGSC_LPODIS_Field use
     (Lpodis_0 => 0,
      Lpodis_1 => 1);

   --  Regulator Status and Control Register
   type PMC_REGSC_Register is record
      --  Bias Enable Bit
      BIASEN       : REGSC_BIASEN_Field := NRF_SVD.PMC.Biasen_0;
      --  Clock Bias Disable Bit
      CLKBIASDIS   : REGSC_CLKBIASDIS_Field := NRF_SVD.PMC.Clkbiasdis_0;
      --  Read-only. Regulator in Full Performance Mode Status Bit
      REGFPM       : REGSC_REGFPM_Field := NRF_SVD.PMC.Regfpm_1;
      --  unspecified
      Reserved_3_5 : HAL.UInt3 := 16#0#;
      --  Read-only. LPO Status Bit
      LPOSTAT      : REGSC_LPOSTAT_Field := NRF_SVD.PMC.Lpostat_0;
      --  LPO Disable Bit
      LPODIS       : REGSC_LPODIS_Field := NRF_SVD.PMC.Lpodis_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMC_REGSC_Register use record
      BIASEN       at 0 range 0 .. 0;
      CLKBIASDIS   at 0 range 1 .. 1;
      REGFPM       at 0 range 2 .. 2;
      Reserved_3_5 at 0 range 3 .. 5;
      LPOSTAT      at 0 range 6 .. 6;
      LPODIS       at 0 range 7 .. 7;
   end record;

   subtype PMC_LPOTRIM_LPOTRIM_Field is HAL.UInt5;

   --  Low Power Oscillator Trim Register
   type PMC_LPOTRIM_Register is record
      --  LPO trimming bits
      LPOTRIM      : PMC_LPOTRIM_LPOTRIM_Field := 16#0#;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for PMC_LPOTRIM_Register use record
      LPOTRIM      at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PMC
   type PMC_Peripheral is record
      --  Low Voltage Detect Status and Control 1 Register
      LVDSC1  : aliased PMC_LVDSC1_Register;
      --  Low Voltage Detect Status and Control 2 Register
      LVDSC2  : aliased PMC_LVDSC2_Register;
      --  Regulator Status and Control Register
      REGSC   : aliased PMC_REGSC_Register;
      --  Low Power Oscillator Trim Register
      LPOTRIM : aliased PMC_LPOTRIM_Register;
   end record
     with Volatile;

   for PMC_Peripheral use record
      LVDSC1  at 16#0# range 0 .. 7;
      LVDSC2  at 16#1# range 0 .. 7;
      REGSC   at 16#2# range 0 .. 7;
      LPOTRIM at 16#4# range 0 .. 7;
   end record;

   --  PMC
   PMC_Periph : aliased PMC_Peripheral
     with Import, Address => System'To_Address (16#4007D000#);

end NRF_SVD.PMC;
