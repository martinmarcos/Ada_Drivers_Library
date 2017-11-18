--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  PDM Audio
package NRF_SVD.PDM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Data Streaming Control.
   type PCFG_PDMCORE_Field is
     (
      --  Disable Data Streaming. value.
      Dis,
      --  Enable Data Streaming. value.
      En)
     with Size => 1;
   for PCFG_PDMCORE_Field use
     (Dis => 0,
      En => 1);

   --  Soft mute control.
   type PCFG_SOFTMUTE_Field is
     (
      --  Disable Soft Mute. value.
      Dis,
      --  Enable Soft Mute. value.
      En)
     with Size => 1;
   for PCFG_SOFTMUTE_Field use
     (Dis => 0,
      En => 1);

   subtype PCFG_CYCLES_Field is HAL.UInt3;
   subtype PCFG_HPCUTOFF_Field is HAL.UInt4;

   --  High pass filter control.
   type PCFG_ADCHPD_Field is
     (
      --  Disable high pass filter. value.
      Dis,
      --  Enable high pass filter. value.
      En)
     with Size => 1;
   for PCFG_ADCHPD_Field use
     (Dis => 0,
      En => 1);

   subtype PCFG_SINCRATE_Field is HAL.UInt7;

   --  PDM_CLK frequency divisor.
   type PCFG_MCLKDIV_Field is
     (
      --  Divide input clock by 1 value.
      Mckdiv1,
      --  Divide input clock by 2 value.
      Mckdiv2,
      --  Divide input clock by 3 value.
      Mckdiv3,
      --  Divide input clock by 4 value.
      Mckdiv4)
     with Size => 2;
   for PCFG_MCLKDIV_Field use
     (Mckdiv1 => 0,
      Mckdiv2 => 1,
      Mckdiv3 => 2,
      Mckdiv4 => 3);

   --  Left channel PGA gain.
   type PCFG_PGALEFT_Field is
     (
      --  0.0 db gain. value.
      PCFG_PGALEFT_Field_0Db,
      --  1.5 db gain. value.
      P15Db,
      --  3.0 db gain. value.
      P30Db,
      --  4.5 db gain. value.
      P45Db,
      --  6.0 db gain. value.
      P60Db,
      --  7.5 db gain. value.
      P75Db,
      --  9.0 db gain. value.
      P90Db,
      --  10.5 db gain. value.
      P105Db,
      --  -12.0 db gain. value.
      M120Db,
      --  -10.5 db gain. value.
      M105Db,
      --  -9.0 db gain. value.
      M90Db,
      --  -7.5 db gain. value.
      M75Db,
      --  -6.0 db gain. value.
      M60Db,
      --  -4.5 db gain. value.
      M45Db,
      --  -3.0 db gain. value.
      M300Db,
      --  -1.5 db gain. value.
      M15Db)
     with Size => 4;
   for PCFG_PGALEFT_Field use
     (PCFG_PGALEFT_Field_0Db => 0,
      P15Db => 1,
      P30Db => 2,
      P45Db => 3,
      P60Db => 4,
      P75Db => 5,
      P90Db => 6,
      P105Db => 7,
      M120Db => 8,
      M105Db => 9,
      M90Db => 10,
      M75Db => 11,
      M60Db => 12,
      M45Db => 13,
      M300Db => 14,
      M15Db => 15);

   --  Right channel PGA gain.
   type PCFG_PGARIGHT_Field is
     (
      --  0.0 db gain. value.
      PCFG_PGARIGHT_Field_0Db,
      --  1.5 db gain. value.
      P15Db,
      --  3.0 db gain. value.
      P30Db,
      --  4.5 db gain. value.
      P45Db,
      --  6.0 db gain. value.
      P60Db,
      --  7.5 db gain. value.
      P75Db,
      --  9.0 db gain. value.
      P90Db,
      --  10.5 db gain. value.
      P105Db,
      --  -12.0 db gain. value.
      M120Db,
      --  -10.5 db gain. value.
      M105Db,
      --  -9.0 db gain. value.
      M90Db,
      --  -7.5 db gain. value.
      M75Db,
      --  -6.0 db gain. value.
      M60Db,
      --  -4.5 db gain. value.
      M45Db,
      --  -3.0 db gain. value.
      M300Db,
      --  -1.5 db gain. value.
      M15Db)
     with Size => 4;
   for PCFG_PGARIGHT_Field use
     (PCFG_PGARIGHT_Field_0Db => 0,
      P15Db => 1,
      P30Db => 2,
      P45Db => 3,
      P60Db => 4,
      P75Db => 5,
      P90Db => 6,
      P105Db => 7,
      M120Db => 8,
      M105Db => 9,
      M90Db => 10,
      M75Db => 11,
      M60Db => 12,
      M45Db => 13,
      M300Db => 14,
      M15Db => 15);

   --  Left/right channel swap.
   type PCFG_LRSWAP_Field is
     (
      --  No channel swapping (IFO Read LEFT_RIGHT). value.
      Noswap,
      --  Swap left and right channels (FIFO Read RIGHT_LEFT). value.
      En)
     with Size => 1;
   for PCFG_LRSWAP_Field use
     (Noswap => 0,
      En => 1);

   --  PDM Configuration Register
   type PCFG_Register is record
      --  Data Streaming Control.
      PDMCORE        : PCFG_PDMCORE_Field := NRF_SVD.PDM.En;
      --  Soft mute control.
      SOFTMUTE       : PCFG_SOFTMUTE_Field := NRF_SVD.PDM.Dis;
      --  Number of clocks during gain-setting changes.
      CYCLES         : PCFG_CYCLES_Field := 16#1#;
      --  High pass filter coefficients.
      HPCUTOFF       : PCFG_HPCUTOFF_Field := 16#B#;
      --  High pass filter control.
      ADCHPD         : PCFG_ADCHPD_Field := NRF_SVD.PDM.En;
      --  SINC decimation rate.
      SINCRATE       : PCFG_SINCRATE_Field := 16#30#;
      --  PDM_CLK frequency divisor.
      MCLKDIV        : PCFG_MCLKDIV_Field := NRF_SVD.PDM.Mckdiv1;
      --  unspecified
      Reserved_19_22 : HAL.UInt4 := 16#0#;
      --  Left channel PGA gain.
      PGALEFT        : PCFG_PGALEFT_Field :=
                        NRF_SVD.PDM.PCFG_PGALEFT_Field_0Db;
      --  Right channel PGA gain.
      PGARIGHT       : PCFG_PGARIGHT_Field :=
                        NRF_SVD.PDM.PCFG_PGARIGHT_Field_0Db;
      --  Left/right channel swap.
      LRSWAP         : PCFG_LRSWAP_Field := NRF_SVD.PDM.Noswap;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCFG_Register use record
      PDMCORE        at 0 range 0 .. 0;
      SOFTMUTE       at 0 range 1 .. 1;
      CYCLES         at 0 range 2 .. 4;
      HPCUTOFF       at 0 range 5 .. 8;
      ADCHPD         at 0 range 9 .. 9;
      SINCRATE       at 0 range 10 .. 16;
      MCLKDIV        at 0 range 17 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      PGALEFT        at 0 range 23 .. 26;
      PGARIGHT       at 0 range 27 .. 30;
      LRSWAP         at 0 range 31 .. 31;
   end record;

   --  Set PCM channels.
   type VCFG_CHSET_Field is
     (
      --  Channel disabled. value.
      Dis,
      --  Mono left channel. value.
      Left,
      --  Mono right channel. value.
      Right,
      --  Stereo channels. value.
      Stereo)
     with Size => 2;
   for VCFG_CHSET_Field use
     (Dis => 0,
      Left => 1,
      Right => 2,
      Stereo => 3);

   --  PCM data packing enable.
   type VCFG_PCMPACK_Field is
     (
      --  Disable PCM packing. value.
      Dis,
      --  Enable PCM packing. value.
      En)
     with Size => 1;
   for VCFG_PCMPACK_Field use
     (Dis => 0,
      En => 1);

   --  Select PDM input clock source.
   type VCFG_SELAP_Field is
     (
      --  Clock source from internal clock generator. value.
      Internal,
      --  Clock source from I2S BCLK. value.
      I2S)
     with Size => 1;
   for VCFG_SELAP_Field use
     (Internal => 0,
      I2S => 1);

   --  PDM clock sampling delay.
   type VCFG_DMICKDEL_Field is
     (
      --  No delay. value.
      VCFG_DMICKDEL_Field_0Cyc,
      --  1 cycle delay. value.
      VCFG_DMICKDEL_Field_1Cyc)
     with Size => 1;
   for VCFG_DMICKDEL_Field use
     (VCFG_DMICKDEL_Field_0Cyc => 0,
      VCFG_DMICKDEL_Field_1Cyc => 1);

   --  I2S BCLK input inversion.
   type VCFG_BCLKINV_Field is
     (
      --  BCLK inverted. value.
      Inv,
      --  BCLK not inverted. value.
      Norm)
     with Size => 1;
   for VCFG_BCLKINV_Field use
     (Inv => 0,
      Norm => 1);

   --  I2S interface enable.
   type VCFG_I2SMODE_Field is
     (
      --  Disable I2S interface. value.
      Dis,
      --  Enable I2S interface. value.
      En)
     with Size => 1;
   for VCFG_I2SMODE_Field use
     (Dis => 0,
      En => 1);

   --  Enable the serial clock.
   type VCFG_PDMCLK_Field is
     (
      --  Disable serial clock. value.
      Dis,
      --  Enable serial clock. value.
      En)
     with Size => 1;
   for VCFG_PDMCLK_Field use
     (Dis => 0,
      En => 1);

   --  Select the PDM input clock.
   type VCFG_PDMCLKSEL_Field is
     (
      --  Static value. value.
      Disable,
      --  PDM clock is 12 MHz. value.
      VCFG_PDMCLKSEL_Field_12Mhz,
      --  PDM clock is 6 MHz. value.
      VCFG_PDMCLKSEL_Field_6Mhz,
      --  PDM clock is 3 MHz. value.
      VCFG_PDMCLKSEL_Field_3Mhz,
      --  PDM clock is 1.5 MHz. value.
      VCFG_PDMCLKSEL_Field_1_5Mhz,
      --  PDM clock is 750 KHz. value.
      VCFG_PDMCLKSEL_Field_750Khz,
      --  PDM clock is 375 KHz. value.
      VCFG_PDMCLKSEL_Field_375Khz,
      --  PDM clock is 187.5 KHz. value.
      VCFG_PDMCLKSEL_Field_187Khz)
     with Size => 3;
   for VCFG_PDMCLKSEL_Field use
     (Disable => 0,
      VCFG_PDMCLKSEL_Field_12Mhz => 1,
      VCFG_PDMCLKSEL_Field_6Mhz => 2,
      VCFG_PDMCLKSEL_Field_3Mhz => 3,
      VCFG_PDMCLKSEL_Field_1_5Mhz => 4,
      VCFG_PDMCLKSEL_Field_750Khz => 5,
      VCFG_PDMCLKSEL_Field_375Khz => 6,
      VCFG_PDMCLKSEL_Field_187Khz => 7);

   --  Reset the IP core.
   type VCFG_RSTB_Field is
     (
      --  Reset the core. value.
      Reset,
      --  Enable the core. value.
      Norm)
     with Size => 1;
   for VCFG_RSTB_Field use
     (Reset => 0,
      Norm => 1);

   --  Enable the IO clock.
   type VCFG_IOCLKEN_Field is
     (
      --  Disable FIFO read. value.
      Dis,
      --  Enable FIFO read. value.
      En)
     with Size => 1;
   for VCFG_IOCLKEN_Field use
     (Dis => 0,
      En => 1);

   --  Voice Configuration Register
   type VCFG_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Set PCM channels.
      CHSET          : VCFG_CHSET_Field := NRF_SVD.PDM.Left;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  PCM data packing enable.
      PCMPACK        : VCFG_PCMPACK_Field := NRF_SVD.PDM.Dis;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Select PDM input clock source.
      SELAP          : VCFG_SELAP_Field := NRF_SVD.PDM.Internal;
      --  PDM clock sampling delay.
      DMICKDEL       : VCFG_DMICKDEL_Field :=
                        NRF_SVD.PDM.VCFG_DMICKDEL_Field_0Cyc;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  I2S BCLK input inversion.
      BCLKINV        : VCFG_BCLKINV_Field := NRF_SVD.PDM.Inv;
      --  I2S interface enable.
      I2SMODE        : VCFG_I2SMODE_Field := NRF_SVD.PDM.Dis;
      --  unspecified
      Reserved_21_25 : HAL.UInt5 := 16#0#;
      --  Enable the serial clock.
      PDMCLK         : VCFG_PDMCLK_Field := NRF_SVD.PDM.Dis;
      --  Select the PDM input clock.
      PDMCLKSEL      : VCFG_PDMCLKSEL_Field := NRF_SVD.PDM.Disable;
      --  Reset the IP core.
      RSTB           : VCFG_RSTB_Field := NRF_SVD.PDM.Reset;
      --  Enable the IO clock.
      IOCLKEN        : VCFG_IOCLKEN_Field := NRF_SVD.PDM.Dis;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VCFG_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      CHSET          at 0 range 3 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PCMPACK        at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      SELAP          at 0 range 16 .. 16;
      DMICKDEL       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      BCLKINV        at 0 range 19 .. 19;
      I2SMODE        at 0 range 20 .. 20;
      Reserved_21_25 at 0 range 21 .. 25;
      PDMCLK         at 0 range 26 .. 26;
      PDMCLKSEL      at 0 range 27 .. 29;
      RSTB           at 0 range 30 .. 30;
      IOCLKEN        at 0 range 31 .. 31;
   end record;

   subtype FR_FIFOCNT_Field is HAL.UInt9;

   --  Voice Status Register
   type FR_Register is record
      --  Valid 32-bit entries currently in the FIFO.
      FIFOCNT       : FR_FIFOCNT_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FR_Register use record
      FIFOCNT       at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  FIFO Flush
   type FLUSH_Register is record
      --  FIFO FLUSH.
      FIFOFLUSH     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLUSH_Register use record
      FIFOFLUSH     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype FTHR_FIFOTHR_Field is HAL.UInt8;

   --  FIFO Threshold
   type FTHR_Register is record
      --  FIFO interrupt threshold.
      FIFOTHR       : FTHR_FIFOTHR_Field := 16#C0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTHR_Register use record
      FIFOTHR       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  IO Master Interrupts: Enable
   type INTEN_Register is record
      --  This is the FIFO threshold interrupt.
      THR           : Boolean := False;
      --  This is the FIFO overflow interrupt.
      OVF           : Boolean := False;
      --  This is the FIFO underflow interrupt.
      UNDFL         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      THR           at 0 range 0 .. 0;
      OVF           at 0 range 1 .. 1;
      UNDFL         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  IO Master Interrupts: Status
   type INTSTAT_Register is record
      --  This is the FIFO threshold interrupt.
      THR           : Boolean := False;
      --  This is the FIFO overflow interrupt.
      OVF           : Boolean := False;
      --  This is the FIFO underflow interrupt.
      UNDFL         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      THR           at 0 range 0 .. 0;
      OVF           at 0 range 1 .. 1;
      UNDFL         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  IO Master Interrupts: Clear
   type INTCLR_Register is record
      --  This is the FIFO threshold interrupt.
      THR           : Boolean := False;
      --  This is the FIFO overflow interrupt.
      OVF           : Boolean := False;
      --  This is the FIFO underflow interrupt.
      UNDFL         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      THR           at 0 range 0 .. 0;
      OVF           at 0 range 1 .. 1;
      UNDFL         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  IO Master Interrupts: Set
   type INTSET_Register is record
      --  This is the FIFO threshold interrupt.
      THR           : Boolean := False;
      --  This is the FIFO overflow interrupt.
      OVF           : Boolean := False;
      --  This is the FIFO underflow interrupt.
      UNDFL         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      THR           at 0 range 0 .. 0;
      OVF           at 0 range 1 .. 1;
      UNDFL         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PDM Audio
   type PDM_Peripheral is record
      --  PDM Configuration Register
      PCFG    : aliased PCFG_Register;
      --  Voice Configuration Register
      VCFG    : aliased VCFG_Register;
      --  Voice Status Register
      FR      : aliased FR_Register;
      --  FIFO Read
      FRD     : aliased HAL.UInt32;
      --  FIFO Flush
      FLUSH   : aliased FLUSH_Register;
      --  FIFO Threshold
      FTHR    : aliased FTHR_Register;
      --  IO Master Interrupts: Enable
      INTEN   : aliased INTEN_Register;
      --  IO Master Interrupts: Status
      INTSTAT : aliased INTSTAT_Register;
      --  IO Master Interrupts: Clear
      INTCLR  : aliased INTCLR_Register;
      --  IO Master Interrupts: Set
      INTSET  : aliased INTSET_Register;
   end record
     with Volatile;

   for PDM_Peripheral use record
      PCFG    at 16#0# range 0 .. 31;
      VCFG    at 16#4# range 0 .. 31;
      FR      at 16#8# range 0 .. 31;
      FRD     at 16#C# range 0 .. 31;
      FLUSH   at 16#10# range 0 .. 31;
      FTHR    at 16#14# range 0 .. 31;
      INTEN   at 16#200# range 0 .. 31;
      INTSTAT at 16#204# range 0 .. 31;
      INTCLR  at 16#208# range 0 .. 31;
      INTSET  at 16#20C# range 0 .. 31;
   end record;

   --  PDM Audio
   PDM_Periph : aliased PDM_Peripheral
     with Import, Address => PDM_Base;

end NRF_SVD.PDM;
