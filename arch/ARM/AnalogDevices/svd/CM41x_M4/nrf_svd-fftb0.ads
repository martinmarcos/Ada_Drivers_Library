--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FFTB0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Triggering Mode
   type CTL_TRIGMODE_Field is
     (
      --  Manual Triggering
      Manual,
      --  Auto Triggering
      Auto,
      --  Triggered One Shot (TRIG_ONE)
      Trig_One,
      --  Triggered Continuous (TRIG_CONT)
      Trig_Cont)
     with Size => 2;
   for CTL_TRIGMODE_Field use
     (Manual => 0,
      Auto => 1,
      Trig_One => 2,
      Trig_Cont => 3);

   --  Channel Enables
   type CTL_CHEN_Field is
     (
      --  Channel 0 is enabled
      Ch0,
      --  Channel 0 and 1 are enabled
      Ch1,
      --  Channel 0, 1 and 2 are enabled
      Ch2,
      --  Channel 0, 1, 2 and 3 are enabled
      Ch3)
     with Size => 2;
   for CTL_CHEN_Field use
     (Ch0 => 0,
      Ch1 => 1,
      Ch2 => 2,
      Ch3 => 3);

   --  Averaging Select
   type CTL_AVG_Field is
     (
      --  Spectrum averaging is disabled.
      No_Avg,
      --  Average the spectrum of 2 input vectors.
      Avg_2,
      --  Average the spectrum of 4 input vectors.
      Avg_4,
      --  Average the spectrum of 8 input vectors.
      Avg_8,
      --  Average the spectrum of 16 input vectors.
      Avg_16)
     with Size => 3;
   for CTL_AVG_Field use
     (No_Avg => 0,
      Avg_2 => 1,
      Avg_4 => 2,
      Avg_8 => 3,
      Avg_16 => 4);

   --  FFT Size
   type CTL_SZ_Field is
     (
      --  The size of the input vector is 32 points.
      Fftsz_32,
      --  The size of the input vector is 64 points.
      Fftsz_64,
      --  The size of the input vector is 128 points.
      Fftsz_128,
      --  The size of the input vector is 256 points.
      Fftsz_256,
      --  The size of the input vector is 512 points.
      Fftsz_512)
     with Size => 4;
   for CTL_SZ_Field use
     (Fftsz_32 => 5,
      Fftsz_64 => 6,
      Fftsz_128 => 7,
      Fftsz_256 => 8,
      Fftsz_512 => 9);

   --  FFTB Control Register
   type CTL_Register is record
      --  FFT Enable
      EN             : Boolean := False;
      --  FFT Start
      START          : Boolean := False;
      --  FFT Stop
      STOP           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trigger Select Mask
      TRIGSEL        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Triggering Mode
      TRIGMODE       : CTL_TRIGMODE_Field := NRF_SVD.FFTB0.Manual;
      --  Channel Enables
      CHEN           : CTL_CHEN_Field := NRF_SVD.FFTB0.Ch0;
      --  Averaging Select
      AVG            : CTL_AVG_Field := NRF_SVD.FFTB0.No_Avg;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Windowing Enable
      WND            : Boolean := False;
      --  Compare enable
      CMP            : Boolean := False;
      --  DMA Output Enable
      DMAOUT         : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  FFT Size
      SZ             : CTL_SZ_Field := NRF_SVD.FFTB0.Fftsz_32;
      --  Done Interrupt Enable
      DONEIRQ        : Boolean := False;
      --  Channel Done Interrupt Enable
      CHDONEIRQ      : Boolean := False;
      --  Limit Interrupt Enable
      LIMIRQ         : Boolean := False;
      --  Data Parity Error Interrupt Enable
      DPEIRQ         : Boolean := False;
      --  Setup Parity Error Interrupt Enable
      SPEIRQ         : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Enable Parity Test Mode
      PETST          : Boolean := False;
      --  Lock Enable
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN             at 0 range 0 .. 0;
      START          at 0 range 1 .. 1;
      STOP           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TRIGSEL        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIGMODE       at 0 range 8 .. 9;
      CHEN           at 0 range 10 .. 11;
      AVG            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WND            at 0 range 16 .. 16;
      CMP            at 0 range 17 .. 17;
      DMAOUT         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SZ             at 0 range 20 .. 23;
      DONEIRQ        at 0 range 24 .. 24;
      CHDONEIRQ      at 0 range 25 .. 25;
      LIMIRQ         at 0 range 26 .. 26;
      DPEIRQ         at 0 range 27 .. 27;
      SPEIRQ         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      PETST          at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype STAT_AVGPND_Field is HAL.UInt4;

   --  Active Channel
   type STAT_ACTCH_Field is
     (
      --  Channel 0 active
      Chact_0,
      --  Channel 1 active
      Chact_1,
      --  Channel 2 active
      Chact_2,
      --  Channel 3 active
      Chact_3)
     with Size => 2;
   for STAT_ACTCH_Field use
     (Chact_0 => 0,
      Chact_1 => 1,
      Chact_2 => 2,
      Chact_3 => 3);

   --  FFTB Status Register
   type STAT_Register is record
      --  Read-only. Active Status
      ACT            : Boolean := False;
      --  Read-only. Input Capture Pending
      IPND           : Boolean := False;
      --  Read-only. Spectrum Calculation Pending
      SPND           : Boolean := False;
      --  Read-only. DMA Output Pending
      OPND           : Boolean := False;
      --  FFT done
      DONE           : Boolean := False;
      --  Channel Done
      CHDONE         : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. Averaging Pending
      AVGPND         : STAT_AVGPND_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Data Parity Error
      DPERR          : Boolean := False;
      --  Setup Parity Error
      SPERR          : Boolean := False;
      --  Limit Error
      LIMERR         : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read-only. Active Channel
      ACTCH          : STAT_ACTCH_Field := NRF_SVD.FFTB0.Chact_0;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      ACT            at 0 range 0 .. 0;
      IPND           at 0 range 1 .. 1;
      SPND           at 0 range 2 .. 2;
      OPND           at 0 range 3 .. 3;
      DONE           at 0 range 4 .. 4;
      CHDONE         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AVGPND         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DPERR          at 0 range 16 .. 16;
      SPERR          at 0 range 17 .. 17;
      LIMERR         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ACTCH          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FMTCTL_FLDSZ_Field is HAL.UInt4;
   subtype FMTCTL_IMSB_Field is HAL.UInt4;
   subtype FMTCTL_OMSB_Field is HAL.UInt4;

   --  Format Converter Control Register
   type FMTCTL_Register is record
      --  Format Converter Enable
      EN             : Boolean := False;
      --  Unpack Input Stream
      UNPK           : Boolean := False;
      --  Signed Input
      SGN            : Boolean := False;
      --  Saturation Enable
      SAT            : Boolean := False;
      --  Field Size
      FLDSZ          : FMTCTL_FLDSZ_Field := 16#F#;
      --  Input MSB
      IMSB           : FMTCTL_IMSB_Field := 16#F#;
      --  Output MSB
      OMSB           : FMTCTL_OMSB_Field := 16#F#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Format Converter Lock Enable
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMTCTL_Register use record
      EN             at 0 range 0 .. 0;
      UNPK           at 0 range 1 .. 1;
      SGN            at 0 range 2 .. 2;
      SAT            at 0 range 3 .. 3;
      FLDSZ          at 0 range 4 .. 7;
      IMSB           at 0 range 8 .. 11;
      OMSB           at 0 range 12 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype INOFST_VALUE_Field is HAL.UInt16;

   --  Input Offset Register
   type INOFST_Register is record
      --  Input Offset
      VALUE          : INOFST_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INOFST_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype COMB_LEN_Field is HAL.UInt9;

   --  FFTB Input Comb Filter Control Register
   type COMB_Register is record
      --  Comb Filter Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Comb Filter Sign
      SGN            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Comb Filter Length
      LEN            : COMB_LEN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Comb Filter Lock Enable
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMB_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      SGN            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      LEN            at 0 range 8 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype DMABASE_ADDR_Field is HAL.UInt30;

   --  DMA Output Base Address Register
   type DMABASE_Register is record
      --  DMA Address Lock Enable
      LOCK         : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  DMA output base address
      ADDR         : DMABASE_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMABASE_Register use record
      LOCK         at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   --  Magnitude Pin Select Registers

   --  Magnitude Pin Select Registers
   type MAGSEL_Registers is array (0 .. 8) of HAL.UInt32
     with Volatile;

   --  Limit Status Registers

   --  Limit Status Registers
   type LIMSTAT_Registers is array (0 .. 8) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  FFTB register map.
   type FFTB0_Peripheral is record
      --  FFTB Control Register
      CTL     : aliased CTL_Register;
      --  FFTB Status Register
      STAT    : aliased STAT_Register;
      --  Format Converter Control Register
      FMTCTL  : aliased FMTCTL_Register;
      --  Input Offset Register
      INOFST  : aliased INOFST_Register;
      --  FFTB Input Comb Filter Control Register
      COMB    : aliased COMB_Register;
      --  DMA Output Base Address Register
      DMABASE : aliased DMABASE_Register;
      --  DMA Output Write Address Register
      DMAWR   : aliased HAL.UInt32;
      --  Magnitude Pin Select Registers
      MAGSEL  : aliased MAGSEL_Registers;
      --  Limit Status Registers
      LIMSTAT : aliased LIMSTAT_Registers;
      --  Maximum Magnitude Register
      MAXMAG  : aliased HAL.UInt32;
      --  Minimum Magnitude Register
      MINMAG  : aliased HAL.UInt32;
   end record
     with Volatile;

   for FFTB0_Peripheral use record
      CTL     at 16#0# range 0 .. 31;
      STAT    at 16#4# range 0 .. 31;
      FMTCTL  at 16#8# range 0 .. 31;
      INOFST  at 16#C# range 0 .. 31;
      COMB    at 16#10# range 0 .. 31;
      DMABASE at 16#14# range 0 .. 31;
      DMAWR   at 16#18# range 0 .. 31;
      MAGSEL  at 16#20# range 0 .. 287;
      LIMSTAT at 16#70# range 0 .. 287;
      MAXMAG  at 16#C0# range 0 .. 31;
      MINMAG  at 16#C4# range 0 .. 31;
   end record;

   --  FFTB register map.
   FFTB0_Periph : aliased FFTB0_Peripheral
     with Import, Address => System'To_Address (16#40048000#);

end NRF_SVD.FFTB0;
