--  This spec has been automatically generated from ATSAMV70N19B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Channel Control Register (channel = 0)
   type CCR_Register is record
      --  Write-only. Counter Clock Enable Command
      CLKEN         : Boolean := False;
      --  Write-only. Counter Clock Disable Command
      CLKDIS        : Boolean := False;
      --  Write-only. Software Trigger Command
      SWTRG         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CLKEN         at 0 range 0 .. 0;
      CLKDIS        at 0 range 1 .. 1;
      SWTRG         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Selection
   type CMR0_TCCLKS_Field is
     (
      --  Clock selected: internal PCK6 clock signal (from PMC)
      Timer_Clock1,
      --  Clock selected: internal MCK/8 clock signal (from PMC)
      Timer_Clock2,
      --  Clock selected: internal MCK/32 clock signal (from PMC)
      Timer_Clock3,
      --  Clock selected: internal MCK/128 clock signal (from PMC)
      Timer_Clock4,
      --  Clock selected: internal SLCK clock signal (from PMC)
      Timer_Clock5,
      --  Clock selected: XC0
      Xc0,
      --  Clock selected: XC1
      Xc1,
      --  Clock selected: XC2
      Xc2)
     with Size => 3;
   for CMR0_TCCLKS_Field use
     (Timer_Clock1 => 0,
      Timer_Clock2 => 1,
      Timer_Clock3 => 2,
      Timer_Clock4 => 3,
      Timer_Clock5 => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Burst Signal Selection
   type CMR0_BURST_Field is
     (
      --  The clock is not gated by an external signal.
      None,
      --  XC0 is ANDed with the selected clock.
      Xc0,
      --  XC1 is ANDed with the selected clock.
      Xc1,
      --  XC2 is ANDed with the selected clock.
      Xc2)
     with Size => 2;
   for CMR0_BURST_Field use
     (None => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  External Trigger Edge Selection
   type CMR0_ETRGEDG_Field is
     (
      --  The clock is not gated by an external signal.
      None,
      --  Rising edge
      Rising,
      --  Falling edge
      Falling,
      --  Each edge
      Edge)
     with Size => 2;
   for CMR0_ETRGEDG_Field use
     (None => 0,
      Rising => 1,
      Falling => 2,
      Edge => 3);

   --  RA Loading Edge Selection
   type CMR0_LDRA_Field is
     (
      --  None
      None,
      --  Rising edge of TIOAx
      Rising,
      --  Falling edge of TIOAx
      Falling,
      --  Each edge of TIOAx
      Edge)
     with Size => 2;
   for CMR0_LDRA_Field use
     (None => 0,
      Rising => 1,
      Falling => 2,
      Edge => 3);

   --  RB Loading Edge Selection
   type CMR0_LDRB_Field is
     (
      --  None
      None,
      --  Rising edge of TIOAx
      Rising,
      --  Falling edge of TIOAx
      Falling,
      --  Each edge of TIOAx
      Edge)
     with Size => 2;
   for CMR0_LDRB_Field use
     (None => 0,
      Rising => 1,
      Falling => 2,
      Edge => 3);

   --  Loading Edge Subsampling Ratio
   type CMR0_SBSMPLR_Field is
     (
      --  Load a Capture Register each selected edge
      One,
      --  Load a Capture Register every 2 selected edges
      Half,
      --  Load a Capture Register every 4 selected edges
      Fourth,
      --  Load a Capture Register every 8 selected edges
      Eighth,
      --  Load a Capture Register every 16 selected edges
      Sixteenth)
     with Size => 3;
   for CMR0_SBSMPLR_Field use
     (One => 0,
      Half => 1,
      Fourth => 2,
      Eighth => 3,
      Sixteenth => 4);

   --  Channel Mode Register (channel = 0)
   type CMR_Register is record
      --  Clock Selection
      TCCLKS         : CMR0_TCCLKS_Field := SAM_SVD.TC.Timer_Clock1;
      --  Clock Invert
      CLKI           : Boolean := False;
      --  Burst Signal Selection
      BURST          : CMR0_BURST_Field := SAM_SVD.TC.None;
      --  Counter Clock Stopped with RB Loading
      LDBSTOP        : Boolean := False;
      --  Counter Clock Disable with RB Loading
      LDBDIS         : Boolean := False;
      --  External Trigger Edge Selection
      ETRGEDG        : CMR0_ETRGEDG_Field := SAM_SVD.TC.None;
      --  TIOAx or TIOBx External Trigger Selection
      ABETRG         : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  RC Compare Trigger Enable
      CPCTRG         : Boolean := False;
      --  Waveform Mode
      WAVE           : Boolean := False;
      --  RA Loading Edge Selection
      LDRA           : CMR0_LDRA_Field := SAM_SVD.TC.None;
      --  RB Loading Edge Selection
      LDRB           : CMR0_LDRB_Field := SAM_SVD.TC.None;
      --  Loading Edge Subsampling Ratio
      SBSMPLR        : CMR0_SBSMPLR_Field := SAM_SVD.TC.One;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      TCCLKS         at 0 range 0 .. 2;
      CLKI           at 0 range 3 .. 3;
      BURST          at 0 range 4 .. 5;
      LDBSTOP        at 0 range 6 .. 6;
      LDBDIS         at 0 range 7 .. 7;
      ETRGEDG        at 0 range 8 .. 9;
      ABETRG         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CPCTRG         at 0 range 14 .. 14;
      WAVE           at 0 range 15 .. 15;
      LDRA           at 0 range 16 .. 17;
      LDRB           at 0 range 18 .. 19;
      SBSMPLR        at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Clock Selection
   type CMR0_WAVEFORM_MODE_TCCLKS_Field is
     (
      --  Clock selected: internal PCK6 clock signal (from PMC)
      Timer_Clock1,
      --  Clock selected: internal MCK/8 clock signal (from PMC)
      Timer_Clock2,
      --  Clock selected: internal MCK/32 clock signal (from PMC)
      Timer_Clock3,
      --  Clock selected: internal MCK/128 clock signal (from PMC)
      Timer_Clock4,
      --  Clock selected: internal SLCK clock signal (from PMC)
      Timer_Clock5,
      --  Clock selected: XC0
      Xc0,
      --  Clock selected: XC1
      Xc1,
      --  Clock selected: XC2
      Xc2)
     with Size => 3;
   for CMR0_WAVEFORM_MODE_TCCLKS_Field use
     (Timer_Clock1 => 0,
      Timer_Clock2 => 1,
      Timer_Clock3 => 2,
      Timer_Clock4 => 3,
      Timer_Clock5 => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Burst Signal Selection
   type CMR0_WAVEFORM_MODE_BURST_Field is
     (
      --  The clock is not gated by an external signal.
      None,
      --  XC0 is ANDed with the selected clock.
      Xc0,
      --  XC1 is ANDed with the selected clock.
      Xc1,
      --  XC2 is ANDed with the selected clock.
      Xc2)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_BURST_Field use
     (None => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  External Event Edge Selection
   type CMR0_WAVEFORM_MODE_EEVTEDG_Field is
     (
      --  None
      None,
      --  Rising edge
      Rising,
      --  Falling edge
      Falling,
      --  Each edge
      Edge)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_EEVTEDG_Field use
     (None => 0,
      Rising => 1,
      Falling => 2,
      Edge => 3);

   --  External Event Selection
   type CMR0_WAVEFORM_MODE_EEVT_Field is
     (
      --  TIOB
      Tiob,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_EEVT_Field use
     (Tiob => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  Waveform Selection
   type CMR0_WAVEFORM_MODE_WAVSEL_Field is
     (
      --  UP mode without automatic trigger on RC Compare
      Up,
      --  UPDOWN mode without automatic trigger on RC Compare
      Updown,
      --  UP mode with automatic trigger on RC Compare
      Up_Rc,
      --  UPDOWN mode with automatic trigger on RC Compare
      Updown_Rc)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_WAVSEL_Field use
     (Up => 0,
      Updown => 1,
      Up_Rc => 2,
      Updown_Rc => 3);

   --  RA Compare Effect on TIOAx
   type CMR0_WAVEFORM_MODE_ACPA_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_ACPA_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOAx
   type CMR0_WAVEFORM_MODE_ACPC_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_ACPC_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOAx
   type CMR0_WAVEFORM_MODE_AEEVT_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_AEEVT_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOAx
   type CMR0_WAVEFORM_MODE_ASWTRG_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_ASWTRG_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RB Compare Effect on TIOBx
   type CMR0_WAVEFORM_MODE_BCPB_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_BCPB_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOBx
   type CMR0_WAVEFORM_MODE_BCPC_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_BCPC_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOBx
   type CMR0_WAVEFORM_MODE_BEEVT_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_BEEVT_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOBx
   type CMR0_WAVEFORM_MODE_BSWTRG_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR0_WAVEFORM_MODE_BSWTRG_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Channel Mode Register (channel = 0)
   type TC0_CMR0_WAVEFORM_MODE_Register is record
      --  Clock Selection
      TCCLKS  : CMR0_WAVEFORM_MODE_TCCLKS_Field := SAM_SVD.TC.Timer_Clock1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR0_WAVEFORM_MODE_BURST_Field := SAM_SVD.TC.None;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR0_WAVEFORM_MODE_EEVTEDG_Field := SAM_SVD.TC.None;
      --  External Event Selection
      EEVT    : CMR0_WAVEFORM_MODE_EEVT_Field := SAM_SVD.TC.Tiob;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR0_WAVEFORM_MODE_WAVSEL_Field := SAM_SVD.TC.Up;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOAx
      ACPA    : CMR0_WAVEFORM_MODE_ACPA_Field := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOAx
      ACPC    : CMR0_WAVEFORM_MODE_ACPC_Field := SAM_SVD.TC.None;
      --  External Event Effect on TIOAx
      AEEVT   : CMR0_WAVEFORM_MODE_AEEVT_Field := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOAx
      ASWTRG  : CMR0_WAVEFORM_MODE_ASWTRG_Field := SAM_SVD.TC.None;
      --  RB Compare Effect on TIOBx
      BCPB    : CMR0_WAVEFORM_MODE_BCPB_Field := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOBx
      BCPC    : CMR0_WAVEFORM_MODE_BCPC_Field := SAM_SVD.TC.None;
      --  External Event Effect on TIOBx
      BEEVT   : CMR0_WAVEFORM_MODE_BEEVT_Field := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOBx
      BSWTRG  : CMR0_WAVEFORM_MODE_BSWTRG_Field := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR0_WAVEFORM_MODE_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Stepper Motor Mode Register (channel = 0)
   type SMMR_Register is record
      --  Gray Count Enable
      GCEN          : Boolean := False;
      --  Down Count
      DOWN          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMMR_Register use record
      GCEN          at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Status Register (channel = 0)
   type SR_Register is record
      --  Read-only. Counter Overflow Status (cleared on read)
      COVFS          : Boolean;
      --  Read-only. Load Overrun Status (cleared on read)
      LOVRS          : Boolean;
      --  Read-only. RA Compare Status (cleared on read)
      CPAS           : Boolean;
      --  Read-only. RB Compare Status (cleared on read)
      CPBS           : Boolean;
      --  Read-only. RC Compare Status (cleared on read)
      CPCS           : Boolean;
      --  Read-only. RA Loading Status (cleared on read)
      LDRAS          : Boolean;
      --  Read-only. RB Loading Status (cleared on read)
      LDRBS          : Boolean;
      --  Read-only. External Trigger Status (cleared on read)
      ETRGS          : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Clock Enabling Status
      CLKSTA         : Boolean;
      --  Read-only. TIOAx Mirror
      MTIOA          : Boolean;
      --  Read-only. TIOBx Mirror
      MTIOB          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CLKSTA         at 0 range 16 .. 16;
      MTIOA          at 0 range 17 .. 17;
      MTIOB          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Interrupt Enable Register (channel = 0)
   type IER_Register is record
      --  Write-only. Counter Overflow
      COVFS         : Boolean := False;
      --  Write-only. Load Overrun
      LOVRS         : Boolean := False;
      --  Write-only. RA Compare
      CPAS          : Boolean := False;
      --  Write-only. RB Compare
      CPBS          : Boolean := False;
      --  Write-only. RC Compare
      CPCS          : Boolean := False;
      --  Write-only. RA Loading
      LDRAS         : Boolean := False;
      --  Write-only. RB Loading
      LDRBS         : Boolean := False;
      --  Write-only. External Trigger
      ETRGS         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Disable Register (channel = 0)
   type IDR_Register is record
      --  Write-only. Counter Overflow
      COVFS         : Boolean := False;
      --  Write-only. Load Overrun
      LOVRS         : Boolean := False;
      --  Write-only. RA Compare
      CPAS          : Boolean := False;
      --  Write-only. RB Compare
      CPBS          : Boolean := False;
      --  Write-only. RC Compare
      CPCS          : Boolean := False;
      --  Write-only. RA Loading
      LDRAS         : Boolean := False;
      --  Write-only. RB Loading
      LDRBS         : Boolean := False;
      --  Write-only. External Trigger
      ETRGS         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Mask Register (channel = 0)
   type IMR_Register is record
      --  Read-only. Counter Overflow
      COVFS         : Boolean;
      --  Read-only. Load Overrun
      LOVRS         : Boolean;
      --  Read-only. RA Compare
      CPAS          : Boolean;
      --  Read-only. RB Compare
      CPBS          : Boolean;
      --  Read-only. RC Compare
      CPCS          : Boolean;
      --  Read-only. RA Loading
      LDRAS         : Boolean;
      --  Read-only. RB Loading
      LDRBS         : Boolean;
      --  Read-only. External Trigger
      ETRGS         : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Trigger Source for Input A
   type EMR0_TRIGSRCA_Field is
     (
      --  The trigger/capture input A is driven by external pin TIOAx
      External_Tioax,
      --  The trigger/capture input A is driven internally by PWMx
      Pwmx)
     with Size => 2;
   for EMR0_TRIGSRCA_Field use
     (External_Tioax => 0,
      Pwmx => 1);

   --  Trigger Source for Input B
   type EMR0_TRIGSRCB_Field is
     (
      --  The trigger/capture input B is driven by external pin TIOBx
      External_Tiobx,
      --  For TC0 to TC10: The trigger/capture input B is driven internally by
      --  the comparator output (see Figure 7-16) of the PWMx.For TC11: The
      --  trigger/capture input B is driven internally by the GTSUCOMP signal
      --  of the Ethernet MAC (GMAC).
      Pwmx)
     with Size => 2;
   for EMR0_TRIGSRCB_Field use
     (External_Tiobx => 0,
      Pwmx => 1);

   --  Extended Mode Register (channel = 0)
   type EMR_Register is record
      --  Trigger Source for Input A
      TRIGSRCA      : EMR0_TRIGSRCA_Field := SAM_SVD.TC.External_Tioax;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Trigger Source for Input B
      TRIGSRCB      : EMR0_TRIGSRCB_Field := SAM_SVD.TC.External_Tiobx;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  No Divided Clock
      NODIVCLK      : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR_Register use record
      TRIGSRCA      at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TRIGSRCB      at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      NODIVCLK      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Clock Selection
   type CMR1_WAVEFORM_MODE_TCCLKS_Field is
     (
      --  Clock selected: internal PCK6 clock signal (from PMC)
      Timer_Clock1,
      --  Clock selected: internal MCK/8 clock signal (from PMC)
      Timer_Clock2,
      --  Clock selected: internal MCK/32 clock signal (from PMC)
      Timer_Clock3,
      --  Clock selected: internal MCK/128 clock signal (from PMC)
      Timer_Clock4,
      --  Clock selected: internal SLCK clock signal (from PMC)
      Timer_Clock5,
      --  Clock selected: XC0
      Xc0,
      --  Clock selected: XC1
      Xc1,
      --  Clock selected: XC2
      Xc2)
     with Size => 3;
   for CMR1_WAVEFORM_MODE_TCCLKS_Field use
     (Timer_Clock1 => 0,
      Timer_Clock2 => 1,
      Timer_Clock3 => 2,
      Timer_Clock4 => 3,
      Timer_Clock5 => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Burst Signal Selection
   type CMR1_WAVEFORM_MODE_BURST_Field is
     (
      --  The clock is not gated by an external signal.
      None,
      --  XC0 is ANDed with the selected clock.
      Xc0,
      --  XC1 is ANDed with the selected clock.
      Xc1,
      --  XC2 is ANDed with the selected clock.
      Xc2)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_BURST_Field use
     (None => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  External Event Edge Selection
   type CMR1_WAVEFORM_MODE_EEVTEDG_Field is
     (
      --  None
      None,
      --  Rising edge
      Rising,
      --  Falling edge
      Falling,
      --  Each edge
      Edge)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_EEVTEDG_Field use
     (None => 0,
      Rising => 1,
      Falling => 2,
      Edge => 3);

   --  External Event Selection
   type CMR1_WAVEFORM_MODE_EEVT_Field is
     (
      --  TIOB
      Tiob,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_EEVT_Field use
     (Tiob => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  Waveform Selection
   type CMR1_WAVEFORM_MODE_WAVSEL_Field is
     (
      --  UP mode without automatic trigger on RC Compare
      Up,
      --  UPDOWN mode without automatic trigger on RC Compare
      Updown,
      --  UP mode with automatic trigger on RC Compare
      Up_Rc,
      --  UPDOWN mode with automatic trigger on RC Compare
      Updown_Rc)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_WAVSEL_Field use
     (Up => 0,
      Updown => 1,
      Up_Rc => 2,
      Updown_Rc => 3);

   --  RA Compare Effect on TIOAx
   type CMR1_WAVEFORM_MODE_ACPA_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_ACPA_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOAx
   type CMR1_WAVEFORM_MODE_ACPC_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_ACPC_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOAx
   type CMR1_WAVEFORM_MODE_AEEVT_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_AEEVT_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOAx
   type CMR1_WAVEFORM_MODE_ASWTRG_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_ASWTRG_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RB Compare Effect on TIOBx
   type CMR1_WAVEFORM_MODE_BCPB_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_BCPB_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOBx
   type CMR1_WAVEFORM_MODE_BCPC_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_BCPC_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOBx
   type CMR1_WAVEFORM_MODE_BEEVT_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_BEEVT_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOBx
   type CMR1_WAVEFORM_MODE_BSWTRG_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR1_WAVEFORM_MODE_BSWTRG_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Channel Mode Register (channel = 1)
   type TC0_CMR1_WAVEFORM_MODE_Register is record
      --  Clock Selection
      TCCLKS  : CMR1_WAVEFORM_MODE_TCCLKS_Field := SAM_SVD.TC.Timer_Clock1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR1_WAVEFORM_MODE_BURST_Field := SAM_SVD.TC.None;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR1_WAVEFORM_MODE_EEVTEDG_Field := SAM_SVD.TC.None;
      --  External Event Selection
      EEVT    : CMR1_WAVEFORM_MODE_EEVT_Field := SAM_SVD.TC.Tiob;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR1_WAVEFORM_MODE_WAVSEL_Field := SAM_SVD.TC.Up;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOAx
      ACPA    : CMR1_WAVEFORM_MODE_ACPA_Field := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOAx
      ACPC    : CMR1_WAVEFORM_MODE_ACPC_Field := SAM_SVD.TC.None;
      --  External Event Effect on TIOAx
      AEEVT   : CMR1_WAVEFORM_MODE_AEEVT_Field := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOAx
      ASWTRG  : CMR1_WAVEFORM_MODE_ASWTRG_Field := SAM_SVD.TC.None;
      --  RB Compare Effect on TIOBx
      BCPB    : CMR1_WAVEFORM_MODE_BCPB_Field := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOBx
      BCPC    : CMR1_WAVEFORM_MODE_BCPC_Field := SAM_SVD.TC.None;
      --  External Event Effect on TIOBx
      BEEVT   : CMR1_WAVEFORM_MODE_BEEVT_Field := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOBx
      BSWTRG  : CMR1_WAVEFORM_MODE_BSWTRG_Field := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR1_WAVEFORM_MODE_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Clock Selection
   type CMR2_WAVEFORM_MODE_TCCLKS_Field is
     (
      --  Clock selected: internal PCK6 clock signal (from PMC)
      Timer_Clock1,
      --  Clock selected: internal MCK/8 clock signal (from PMC)
      Timer_Clock2,
      --  Clock selected: internal MCK/32 clock signal (from PMC)
      Timer_Clock3,
      --  Clock selected: internal MCK/128 clock signal (from PMC)
      Timer_Clock4,
      --  Clock selected: internal SLCK clock signal (from PMC)
      Timer_Clock5,
      --  Clock selected: XC0
      Xc0,
      --  Clock selected: XC1
      Xc1,
      --  Clock selected: XC2
      Xc2)
     with Size => 3;
   for CMR2_WAVEFORM_MODE_TCCLKS_Field use
     (Timer_Clock1 => 0,
      Timer_Clock2 => 1,
      Timer_Clock3 => 2,
      Timer_Clock4 => 3,
      Timer_Clock5 => 4,
      Xc0 => 5,
      Xc1 => 6,
      Xc2 => 7);

   --  Burst Signal Selection
   type CMR2_WAVEFORM_MODE_BURST_Field is
     (
      --  The clock is not gated by an external signal.
      None,
      --  XC0 is ANDed with the selected clock.
      Xc0,
      --  XC1 is ANDed with the selected clock.
      Xc1,
      --  XC2 is ANDed with the selected clock.
      Xc2)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_BURST_Field use
     (None => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  External Event Edge Selection
   type CMR2_WAVEFORM_MODE_EEVTEDG_Field is
     (
      --  None
      None,
      --  Rising edge
      Rising,
      --  Falling edge
      Falling,
      --  Each edge
      Edge)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_EEVTEDG_Field use
     (None => 0,
      Rising => 1,
      Falling => 2,
      Edge => 3);

   --  External Event Selection
   type CMR2_WAVEFORM_MODE_EEVT_Field is
     (
      --  TIOB
      Tiob,
      --  XC0
      Xc0,
      --  XC1
      Xc1,
      --  XC2
      Xc2)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_EEVT_Field use
     (Tiob => 0,
      Xc0 => 1,
      Xc1 => 2,
      Xc2 => 3);

   --  Waveform Selection
   type CMR2_WAVEFORM_MODE_WAVSEL_Field is
     (
      --  UP mode without automatic trigger on RC Compare
      Up,
      --  UPDOWN mode without automatic trigger on RC Compare
      Updown,
      --  UP mode with automatic trigger on RC Compare
      Up_Rc,
      --  UPDOWN mode with automatic trigger on RC Compare
      Updown_Rc)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_WAVSEL_Field use
     (Up => 0,
      Updown => 1,
      Up_Rc => 2,
      Updown_Rc => 3);

   --  RA Compare Effect on TIOAx
   type CMR2_WAVEFORM_MODE_ACPA_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_ACPA_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOAx
   type CMR2_WAVEFORM_MODE_ACPC_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_ACPC_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOAx
   type CMR2_WAVEFORM_MODE_AEEVT_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_AEEVT_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOAx
   type CMR2_WAVEFORM_MODE_ASWTRG_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_ASWTRG_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RB Compare Effect on TIOBx
   type CMR2_WAVEFORM_MODE_BCPB_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_BCPB_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  RC Compare Effect on TIOBx
   type CMR2_WAVEFORM_MODE_BCPC_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_BCPC_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  External Event Effect on TIOBx
   type CMR2_WAVEFORM_MODE_BEEVT_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_BEEVT_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Software Trigger Effect on TIOBx
   type CMR2_WAVEFORM_MODE_BSWTRG_Field is
     (
      --  None
      None,
      --  Set
      Set,
      --  Clear
      Clear,
      --  Toggle
      Toggle)
     with Size => 2;
   for CMR2_WAVEFORM_MODE_BSWTRG_Field use
     (None => 0,
      Set => 1,
      Clear => 2,
      Toggle => 3);

   --  Channel Mode Register (channel = 2)
   type TC0_CMR2_WAVEFORM_MODE_Register is record
      --  Clock Selection
      TCCLKS  : CMR2_WAVEFORM_MODE_TCCLKS_Field := SAM_SVD.TC.Timer_Clock1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR2_WAVEFORM_MODE_BURST_Field := SAM_SVD.TC.None;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR2_WAVEFORM_MODE_EEVTEDG_Field := SAM_SVD.TC.None;
      --  External Event Selection
      EEVT    : CMR2_WAVEFORM_MODE_EEVT_Field := SAM_SVD.TC.Tiob;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR2_WAVEFORM_MODE_WAVSEL_Field := SAM_SVD.TC.Up;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOAx
      ACPA    : CMR2_WAVEFORM_MODE_ACPA_Field := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOAx
      ACPC    : CMR2_WAVEFORM_MODE_ACPC_Field := SAM_SVD.TC.None;
      --  External Event Effect on TIOAx
      AEEVT   : CMR2_WAVEFORM_MODE_AEEVT_Field := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOAx
      ASWTRG  : CMR2_WAVEFORM_MODE_ASWTRG_Field := SAM_SVD.TC.None;
      --  RB Compare Effect on TIOBx
      BCPB    : CMR2_WAVEFORM_MODE_BCPB_Field := SAM_SVD.TC.None;
      --  RC Compare Effect on TIOBx
      BCPC    : CMR2_WAVEFORM_MODE_BCPC_Field := SAM_SVD.TC.None;
      --  External Event Effect on TIOBx
      BEEVT   : CMR2_WAVEFORM_MODE_BEEVT_Field := SAM_SVD.TC.None;
      --  Software Trigger Effect on TIOBx
      BSWTRG  : CMR2_WAVEFORM_MODE_BSWTRG_Field := SAM_SVD.TC.None;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR2_WAVEFORM_MODE_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Block Control Register
   type TC0_BCR_Register is record
      --  Write-only. Synchro Command
      SYNC          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_BCR_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  External Clock Signal 0 Selection
   type BMR_TC0XC0S_Field is
     (
      --  Signal connected to XC0: TCLK0
      Tclk0,
      --  Signal connected to XC0: TIOA1
      Tioa1,
      --  Signal connected to XC0: TIOA2
      Tioa2)
     with Size => 2;
   for BMR_TC0XC0S_Field use
     (Tclk0 => 0,
      Tioa1 => 2,
      Tioa2 => 3);

   --  External Clock Signal 1 Selection
   type BMR_TC1XC1S_Field is
     (
      --  Signal connected to XC1: TCLK1
      Tclk1,
      --  Signal connected to XC1: TIOA0
      Tioa0,
      --  Signal connected to XC1: TIOA2
      Tioa2)
     with Size => 2;
   for BMR_TC1XC1S_Field use
     (Tclk1 => 0,
      Tioa0 => 2,
      Tioa2 => 3);

   --  External Clock Signal 2 Selection
   type BMR_TC2XC2S_Field is
     (
      --  Signal connected to XC2: TCLK2
      Tclk2,
      --  Signal connected to XC2: TIOA0
      Tioa0,
      --  Signal connected to XC2: TIOA1
      Tioa1)
     with Size => 2;
   for BMR_TC2XC2S_Field use
     (Tclk2 => 0,
      Tioa0 => 2,
      Tioa1 => 3);

   subtype TC0_BMR_MAXFILT_Field is HAL.UInt6;

   --  Block Mode Register
   type TC0_BMR_Register is record
      --  External Clock Signal 0 Selection
      TC0XC0S        : BMR_TC0XC0S_Field := SAM_SVD.TC.Tclk0;
      --  External Clock Signal 1 Selection
      TC1XC1S        : BMR_TC1XC1S_Field := SAM_SVD.TC.Tclk1;
      --  External Clock Signal 2 Selection
      TC2XC2S        : BMR_TC2XC2S_Field := SAM_SVD.TC.Tclk2;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Quadrature Decoder Enabled
      QDEN           : Boolean := False;
      --  Position Enabled
      POSEN          : Boolean := False;
      --  Speed Enabled
      SPEEDEN        : Boolean := False;
      --  Quadrature Decoding Transparent
      QDTRANS        : Boolean := False;
      --  Edge on PHA Count Mode
      EDGPHA         : Boolean := False;
      --  Inverted PHA
      INVA           : Boolean := False;
      --  Inverted PHB
      INVB           : Boolean := False;
      --  Inverted Index
      INVIDX         : Boolean := False;
      --  Swap PHA and PHB
      SWAP           : Boolean := False;
      --  Index Pin is PHB Pin
      IDXPHB         : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Maximum Filter
      MAXFILT        : TC0_BMR_MAXFILT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_BMR_Register use record
      TC0XC0S        at 0 range 0 .. 1;
      TC1XC1S        at 0 range 2 .. 3;
      TC2XC2S        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      QDEN           at 0 range 8 .. 8;
      POSEN          at 0 range 9 .. 9;
      SPEEDEN        at 0 range 10 .. 10;
      QDTRANS        at 0 range 11 .. 11;
      EDGPHA         at 0 range 12 .. 12;
      INVA           at 0 range 13 .. 13;
      INVB           at 0 range 14 .. 14;
      INVIDX         at 0 range 15 .. 15;
      SWAP           at 0 range 16 .. 16;
      IDXPHB         at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      MAXFILT        at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  QDEC Interrupt Enable Register
   type TC0_QIER_Register is record
      --  Write-only. Index
      IDX           : Boolean := False;
      --  Write-only. Direction Change
      DIRCHG        : Boolean := False;
      --  Write-only. Quadrature Error
      QERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QIER_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Disable Register
   type TC0_QIDR_Register is record
      --  Write-only. Index
      IDX           : Boolean := False;
      --  Write-only. Direction Change
      DIRCHG        : Boolean := False;
      --  Write-only. Quadrature Error
      QERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QIDR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Mask Register
   type TC0_QIMR_Register is record
      --  Read-only. Index
      IDX           : Boolean;
      --  Read-only. Direction Change
      DIRCHG        : Boolean;
      --  Read-only. Quadrature Error
      QERR          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QIMR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Status Register
   type TC0_QISR_Register is record
      --  Read-only. Index
      IDX           : Boolean;
      --  Read-only. Direction Change
      DIRCHG        : Boolean;
      --  Read-only. Quadrature Error
      QERR          : Boolean;
      --  unspecified
      Reserved_3_7  : HAL.UInt5;
      --  Read-only. Direction
      DIR           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QISR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      DIR           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  TC0_FMR_ENCF array
   type TC0_FMR_ENCF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC0_FMR_ENCF
   type TC0_FMR_ENCF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENCF as a value
            Val : HAL.UInt2;
         when True =>
            --  ENCF as an array
            Arr : TC0_FMR_ENCF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC0_FMR_ENCF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault Mode Register
   type TC0_FMR_Register is record
      --  Enable Compare Fault Channel 0
      ENCF          : TC0_FMR_ENCF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_FMR_Register use record
      ENCF          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5523789);

   --  Write Protection Mode Register
   type TC0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype TC0_VER_VERSION_Field is HAL.UInt12;
   subtype TC0_VER_MFN_Field is HAL.UInt3;

   --  Version Register
   type TC0_VER_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : TC0_VER_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : TC0_VER_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_VER_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TC0_Disc is
     (
      Default,
      Waveform_Mode);

   --  Timer Counter 0
   type TC_Peripheral
     (Discriminent : TC0_Disc := Default)
   is record
      --  Channel Control Register (channel = 0)
      CCR0               : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 0)
      SMMR0              : aliased SMMR_Register;
      --  Register AB (channel = 0)
      RAB0               : aliased HAL.UInt32;
      --  Counter Value (channel = 0)
      CV0                : aliased HAL.UInt32;
      --  Register A (channel = 0)
      RA0                : aliased HAL.UInt32;
      --  Register B (channel = 0)
      RB0                : aliased HAL.UInt32;
      --  Register C (channel = 0)
      RC0                : aliased HAL.UInt32;
      --  Status Register (channel = 0)
      SR0                : aliased SR_Register;
      --  Interrupt Enable Register (channel = 0)
      IER0               : aliased IER_Register;
      --  Interrupt Disable Register (channel = 0)
      IDR0               : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 0)
      IMR0               : aliased IMR_Register;
      --  Extended Mode Register (channel = 0)
      EMR0               : aliased EMR_Register;
      --  Channel Control Register (channel = 1)
      CCR1               : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 1)
      SMMR1              : aliased SMMR_Register;
      --  Register AB (channel = 1)
      RAB1               : aliased HAL.UInt32;
      --  Counter Value (channel = 1)
      CV1                : aliased HAL.UInt32;
      --  Register A (channel = 1)
      RA1                : aliased HAL.UInt32;
      --  Register B (channel = 1)
      RB1                : aliased HAL.UInt32;
      --  Register C (channel = 1)
      RC1                : aliased HAL.UInt32;
      --  Status Register (channel = 1)
      SR1                : aliased SR_Register;
      --  Interrupt Enable Register (channel = 1)
      IER1               : aliased IER_Register;
      --  Interrupt Disable Register (channel = 1)
      IDR1               : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 1)
      IMR1               : aliased IMR_Register;
      --  Extended Mode Register (channel = 1)
      EMR1               : aliased EMR_Register;
      --  Channel Control Register (channel = 2)
      CCR2               : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 2)
      SMMR2              : aliased SMMR_Register;
      --  Register AB (channel = 2)
      RAB2               : aliased HAL.UInt32;
      --  Counter Value (channel = 2)
      CV2                : aliased HAL.UInt32;
      --  Register A (channel = 2)
      RA2                : aliased HAL.UInt32;
      --  Register B (channel = 2)
      RB2                : aliased HAL.UInt32;
      --  Register C (channel = 2)
      RC2                : aliased HAL.UInt32;
      --  Status Register (channel = 2)
      SR2                : aliased SR_Register;
      --  Interrupt Enable Register (channel = 2)
      IER2               : aliased IER_Register;
      --  Interrupt Disable Register (channel = 2)
      IDR2               : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 2)
      IMR2               : aliased IMR_Register;
      --  Extended Mode Register (channel = 2)
      EMR2               : aliased EMR_Register;
      --  Block Control Register
      BCR                : aliased TC0_BCR_Register;
      --  Block Mode Register
      BMR                : aliased TC0_BMR_Register;
      --  QDEC Interrupt Enable Register
      QIER               : aliased TC0_QIER_Register;
      --  QDEC Interrupt Disable Register
      QIDR               : aliased TC0_QIDR_Register;
      --  QDEC Interrupt Mask Register
      QIMR               : aliased TC0_QIMR_Register;
      --  QDEC Interrupt Status Register
      QISR               : aliased TC0_QISR_Register;
      --  Fault Mode Register
      FMR                : aliased TC0_FMR_Register;
      --  Write Protection Mode Register
      WPMR               : aliased TC0_WPMR_Register;
      --  Version Register
      VER                : aliased TC0_VER_Register;
      case Discriminent is
         when Default =>
            --  Channel Mode Register (channel = 0)
            CMR0 : aliased CMR_Register;
            --  Channel Mode Register (channel = 1)
            CMR1 : aliased CMR_Register;
            --  Channel Mode Register (channel = 2)
            CMR2 : aliased CMR_Register;
         when Waveform_Mode =>
            --  Channel Mode Register (channel = 0)
            CMR0_WAVEFORM_MODE : aliased TC0_CMR0_WAVEFORM_MODE_Register;
            --  Channel Mode Register (channel = 1)
            CMR1_WAVEFORM_MODE : aliased TC0_CMR1_WAVEFORM_MODE_Register;
            --  Channel Mode Register (channel = 2)
            CMR2_WAVEFORM_MODE : aliased TC0_CMR2_WAVEFORM_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC_Peripheral use record
      CCR0               at 16#0# range 0 .. 31;
      SMMR0              at 16#8# range 0 .. 31;
      RAB0               at 16#C# range 0 .. 31;
      CV0                at 16#10# range 0 .. 31;
      RA0                at 16#14# range 0 .. 31;
      RB0                at 16#18# range 0 .. 31;
      RC0                at 16#1C# range 0 .. 31;
      SR0                at 16#20# range 0 .. 31;
      IER0               at 16#24# range 0 .. 31;
      IDR0               at 16#28# range 0 .. 31;
      IMR0               at 16#2C# range 0 .. 31;
      EMR0               at 16#30# range 0 .. 31;
      CCR1               at 16#40# range 0 .. 31;
      SMMR1              at 16#48# range 0 .. 31;
      RAB1               at 16#4C# range 0 .. 31;
      CV1                at 16#50# range 0 .. 31;
      RA1                at 16#54# range 0 .. 31;
      RB1                at 16#58# range 0 .. 31;
      RC1                at 16#5C# range 0 .. 31;
      SR1                at 16#60# range 0 .. 31;
      IER1               at 16#64# range 0 .. 31;
      IDR1               at 16#68# range 0 .. 31;
      IMR1               at 16#6C# range 0 .. 31;
      EMR1               at 16#70# range 0 .. 31;
      CCR2               at 16#80# range 0 .. 31;
      SMMR2              at 16#88# range 0 .. 31;
      RAB2               at 16#8C# range 0 .. 31;
      CV2                at 16#90# range 0 .. 31;
      RA2                at 16#94# range 0 .. 31;
      RB2                at 16#98# range 0 .. 31;
      RC2                at 16#9C# range 0 .. 31;
      SR2                at 16#A0# range 0 .. 31;
      IER2               at 16#A4# range 0 .. 31;
      IDR2               at 16#A8# range 0 .. 31;
      IMR2               at 16#AC# range 0 .. 31;
      EMR2               at 16#B0# range 0 .. 31;
      BCR                at 16#C0# range 0 .. 31;
      BMR                at 16#C4# range 0 .. 31;
      QIER               at 16#C8# range 0 .. 31;
      QIDR               at 16#CC# range 0 .. 31;
      QIMR               at 16#D0# range 0 .. 31;
      QISR               at 16#D4# range 0 .. 31;
      FMR                at 16#D8# range 0 .. 31;
      WPMR               at 16#E4# range 0 .. 31;
      VER                at 16#FC# range 0 .. 31;
      CMR0               at 16#4# range 0 .. 31;
      CMR1               at 16#44# range 0 .. 31;
      CMR2               at 16#84# range 0 .. 31;
      CMR0_WAVEFORM_MODE at 16#4# range 0 .. 31;
      CMR1_WAVEFORM_MODE at 16#44# range 0 .. 31;
      CMR2_WAVEFORM_MODE at 16#84# range 0 .. 31;
   end record;

   --  Timer Counter 0
   TC0_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#4000C000#);

   --  Timer Counter 3
   TC3_Periph : aliased TC_Peripheral
     with Import, Address => System'To_Address (16#40054000#);

end SAM_SVD.TC;
