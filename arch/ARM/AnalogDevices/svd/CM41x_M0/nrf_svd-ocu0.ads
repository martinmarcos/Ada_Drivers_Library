--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.OCU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register
   type CTL_Register is record
      --  Start a freq. measurement cycle
      MEASURE       : Boolean := False;
      --  Enable continous freq. monitoring
      AUTO_EN       : Boolean := False;
      --  Freq. fault enable
      FREQ_FAULT_EN : Boolean := False;
      --  Clkin monitor fault status enable
      CMON_FAULT_EN : Boolean := False;
      --  LFO monitor fault enable
      LMON_FAULT_EN : Boolean := False;
      --  Asynchronous fault output enable
      DEAD_CLOCK_EN : Boolean := False;
      --  Disable the external LFO oscillator
      LFO_OSC_DIS   : Boolean := False;
      --  unspecified
      Reserved_7_29 : HAL.UInt23 := 16#0#;
      --  Enable OCU Functional Test Mode
      TEST          : Boolean := False;
      --  Enable LOCK function
      LOCK          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      MEASURE       at 0 range 0 .. 0;
      AUTO_EN       at 0 range 1 .. 1;
      FREQ_FAULT_EN at 0 range 2 .. 2;
      CMON_FAULT_EN at 0 range 3 .. 3;
      LMON_FAULT_EN at 0 range 4 .. 4;
      DEAD_CLOCK_EN at 0 range 5 .. 5;
      LFO_OSC_DIS   at 0 range 6 .. 6;
      Reserved_7_29 at 0 range 7 .. 29;
      TEST          at 0 range 30 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Status register
   type STAT_Register is record
      --  Freq. fault status
      FREQ_FAULT    : Boolean := False;
      --  LFO monitor fault status
      LMON_FAULT    : Boolean := False;
      --  Clkin monitor fault status
      CMON_FAULT    : Boolean := False;
      --  Freq. measurement overflow status
      OVERFLOW      : Boolean := False;
      --  Read-only. Freq. measurement in progress
      BUSY          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      FREQ_FAULT    at 0 range 0 .. 0;
      LMON_FAULT    at 0 range 1 .. 1;
      CMON_FAULT    at 0 range 2 .. 2;
      OVERFLOW      at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Oscillator Counter Unit
   type OCU0_Peripheral is record
      --  Control register
      CTL     : aliased CTL_Register;
      --  Status register
      STAT    : aliased STAT_Register;
      --  Freq. measured count register
      CLKCNT  : aliased HAL.UInt32;
      --  Freq measurement reference count register
      REFCNT  : aliased HAL.UInt32;
      --  Min. limit register
      MINCNT  : aliased HAL.UInt32;
      --  Max. limit register
      MAXCNT  : aliased HAL.UInt32;
      --  LFO monitor reference count
      LMONCNT : aliased HAL.UInt32;
      --  Clkin monitor reference count
      CMONCNT : aliased HAL.UInt32;
   end record
     with Volatile;

   for OCU0_Peripheral use record
      CTL     at 16#0# range 0 .. 31;
      STAT    at 16#4# range 0 .. 31;
      CLKCNT  at 16#8# range 0 .. 31;
      REFCNT  at 16#C# range 0 .. 31;
      MINCNT  at 16#10# range 0 .. 31;
      MAXCNT  at 16#14# range 0 .. 31;
      LMONCNT at 16#18# range 0 .. 31;
      CMONCNT at 16#1C# range 0 .. 31;
   end record;

   --  Oscillator Counter Unit
   OCU0_Periph : aliased OCU0_Peripheral
     with Import, Address => System'To_Address (16#40015000#);

end NRF_SVD.OCU0;
