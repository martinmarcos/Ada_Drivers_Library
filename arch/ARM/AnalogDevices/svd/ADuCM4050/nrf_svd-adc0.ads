--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  To select Vref as 1.25 V or 2.5 V
   type CFG_VREFSEL_Field is
     (
      --  Vref = 2.5 V
      V_2P5,
      --  Vref = 1.25 V
      V_1P25)
     with Size => 1;
   for CFG_VREFSEL_Field use
     (V_2P5 => 0,
      V_1P25 => 1);

   --  To enable internal reference buffer
   type CFG_REFBUFEN_Field is
     (
      --  External reference is used
      Ext_Ref,
      --  Reference buffer is enabled
      Buf_Ref)
     with Size => 1;
   for CFG_REFBUFEN_Field use
     (Ext_Ref => 0,
      Buf_Ref => 1);

   --  ADC Configuration
   type CFG_Register is record
      --  Powering up ADC
      PWRUP          : Boolean := False;
      --  To select Vref as 1.25 V or 2.5 V
      VREFSEL        : CFG_VREFSEL_Field := NRF_SVD.ADC0.V_2P5;
      --  To enable internal reference buffer
      REFBUFEN       : CFG_REFBUFEN_Field := NRF_SVD.ADC0.Ext_Ref;
      --  VRef VBAT
      VREFVBAT       : Boolean := False;
      --  To enable ADC subsystem
      EN             : Boolean := False;
      --  To start a new offset calibration cycle
      STARTCAL       : Boolean := False;
      --  Resets internal buffers and registers when high
      RST            : Boolean := False;
      --  To enable additional 50 uA sink current capability @1.25 V, 100 uA
      --  current capability @2.5 V
      SINKEN         : Boolean := False;
      --  To power up temperature sensor
      TMPEN          : Boolean := False;
      --  For fast switchover of Vref from 2.5 V to 1.25 V
      FAST_DISCH     : Boolean := False;
      --  VRef VBAT delayed
      VREFVBAT_DEL   : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      PWRUP          at 0 range 0 .. 0;
      VREFSEL        at 0 range 1 .. 1;
      REFBUFEN       at 0 range 2 .. 2;
      VREFVBAT       at 0 range 3 .. 3;
      EN             at 0 range 4 .. 4;
      STARTCAL       at 0 range 5 .. 5;
      RST            at 0 range 6 .. 6;
      SINKEN         at 0 range 7 .. 7;
      TMPEN          at 0 range 8 .. 8;
      FAST_DISCH     at 0 range 9 .. 9;
      VREFVBAT_DEL   at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype PWRUP_WAIT_Field is HAL.UInt11;

   --  ADC Power-up Time
   type PWRUP_Register is record
      --  Program this count to generate 20us wait time with respect to the
      --  PCLK frequency
      WAIT           : PWRUP_WAIT_Field := 16#41C#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for PWRUP_Register use record
      WAIT           at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype CAL_WORD_VALUE_Field is HAL.UInt7;

   --  Calibration Word
   type CAL_WORD_Register is record
      --  Offset calibration word
      VALUE         : CAL_WORD_VALUE_Field := 16#40#;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CAL_WORD_Register use record
      VALUE         at 0 range 0 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype CNV_CFG_SEL_Field is HAL.UInt8;

   --  CNV_CFG_TMP array
   type CNV_CFG_TMP_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CNV_CFG_TMP
   type CNV_CFG_TMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TMP as a value
            Val : HAL.UInt2;
         when True =>
            --  TMP as an array
            Arr : CNV_CFG_TMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CNV_CFG_TMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ADC Conversion Configuration
   type CNV_CFG_Register is record
      --  To select channel(s) to convert
      SEL            : CNV_CFG_SEL_Field := 16#0#;
      --  Enable Battery Monitoring
      BAT            : Boolean := False;
      --  To select temperature measurement 1
      TMP            : CNV_CFG_TMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Enable Auto Mode
      AUTOMODE       : Boolean := False;
      --  Enable DMA Channel
      DMAEN          : Boolean := False;
      --  Set to start single conversion
      SINGLE         : Boolean := False;
      --  Set to start multiple conversions
      MULTI          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CNV_CFG_Register use record
      SEL            at 0 range 0 .. 7;
      BAT            at 0 range 8 .. 8;
      TMP            at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      AUTOMODE       at 0 range 12 .. 12;
      DMAEN          at 0 range 13 .. 13;
      SINGLE         at 0 range 14 .. 14;
      MULTI          at 0 range 15 .. 15;
   end record;

   subtype CNV_TIME_SAMPTIME_Field is HAL.UInt8;
   subtype CNV_TIME_DLY_Field is HAL.UInt8;

   --  ADC Conversion Time
   type CNV_TIME_Register is record
      --  Number of clock cycles (ACLK) required for sampling
      SAMPTIME : CNV_TIME_SAMPTIME_Field := 16#0#;
      --  Delay between two consecutive conversions in terms of number of ACLK
      --  cycles
      DLY      : CNV_TIME_DLY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CNV_TIME_Register use record
      SAMPTIME at 0 range 0 .. 7;
      DLY      at 0 range 8 .. 15;
   end record;

   subtype AVG_CFG_FACTOR_Field is HAL.UInt8;

   --  Averaging Configuration
   type AVG_CFG_Register is record
      --  Program averaging factor for averaging enabled channels (1-256)
      FACTOR        : AVG_CFG_FACTOR_Field := 16#8#;
      --  unspecified
      Reserved_8_13 : HAL.UInt6 := 16#0#;
      --  Enable oversampling
      OS            : Boolean := True;
      --  To enable averaging on Channels enabled in enable register
      EN            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for AVG_CFG_Register use record
      FACTOR        at 0 range 0 .. 7;
      Reserved_8_13 at 0 range 8 .. 13;
      OS            at 0 range 14 .. 14;
      EN            at 0 range 15 .. 15;
   end record;

   --  Interrupt Enable
   type IRQ_EN_Register is record
      --  Set it to enable interrupt after conversion is done
      CNVDONE        : Boolean := False;
      --  unspecified
      Reserved_1_9   : HAL.UInt9 := 16#0#;
      --  Set it to enable interrupt for calibration done
      CALDONE        : Boolean := False;
      --  Set to enable interrupt in case of overflow
      OVF            : Boolean := False;
      --  Enable Interrupt on Crossing Lower or Higher Limit
      ALERT          : Boolean := False;
      --  Set to enable interrupt when ADC is ready to convert
      RDY            : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for IRQ_EN_Register use record
      CNVDONE        at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      CALDONE        at 0 range 10 .. 10;
      OVF            at 0 range 11 .. 11;
      ALERT          at 0 range 12 .. 12;
      RDY            at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  STAT_DONE array
   type STAT_DONE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for STAT_DONE
   type STAT_DONE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DONE as a value
            Val : HAL.UInt8;
         when True =>
            --  DONE as an array
            Arr : STAT_DONE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for STAT_DONE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC Status
   type STAT_Register is record
      --  Indicates conversion done on Channel 0
      DONE           : STAT_DONE_Field := (As_Array => False, Val => 16#0#);
      --  Indicates conversion done for battery monitoring
      BATDONE        : Boolean := False;
      --  Indicates conversion is done for temperature sensing
      TMPDONE        : Boolean := False;
      --  Indicates conversion is done for temperature sensing 2
      TMP2DONE       : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Indicates calibration is done
      CALDONE        : Boolean := False;
      --  Indicates ADC is ready to start converting, when using external
      --  reference buffer
      RDY            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      DONE           at 0 range 0 .. 7;
      BATDONE        at 0 range 8 .. 8;
      TMPDONE        at 0 range 9 .. 9;
      TMP2DONE       at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CALDONE        at 0 range 14 .. 14;
      RDY            at 0 range 15 .. 15;
   end record;

   --  OVF_CH array
   type OVF_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for OVF_CH
   type OVF_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : OVF_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for OVF_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  OVF_TMP array
   type OVF_TMP_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for OVF_TMP
   type OVF_TMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TMP as a value
            Val : HAL.UInt2;
         when True =>
            --  TMP as an array
            Arr : OVF_TMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for OVF_TMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Overflow of Output Registers
   type OVF_Register is record
      --  Indicates overflow in channel 0 output register
      CH             : OVF_CH_Field := (As_Array => False, Val => 16#0#);
      --  Indicates overflow in battery monitoring output register
      BAT            : Boolean := False;
      --  Indicates overflow in temperature output register
      TMP            : OVF_TMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for OVF_Register use record
      CH             at 0 range 0 .. 7;
      BAT            at 0 range 8 .. 8;
      TMP            at 0 range 9 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  Alert Indication
   type ALERT_Register is record
      --  Channel 0 High alert status
      HI0           : Boolean := False;
      --  Channel 0 Low alert status
      LO0           : Boolean := False;
      --  Channel 1 High alert status
      HI1           : Boolean := False;
      --  Channel 1 Low alert status
      LO1           : Boolean := False;
      --  Channel 2 High alert status
      HI2           : Boolean := False;
      --  Channel 2 Low alert status
      LO2           : Boolean := False;
      --  Channel 3 High alert status
      HI3           : Boolean := False;
      --  Channel 3 Low alert status
      LO3           : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ALERT_Register use record
      HI0           at 0 range 0 .. 0;
      LO0           at 0 range 1 .. 1;
      HI1           at 0 range 2 .. 2;
      LO1           at 0 range 3 .. 3;
      HI2           at 0 range 4 .. 4;
      LO2           at 0 range 5 .. 5;
      HI3           at 0 range 6 .. 6;
      LO3           at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype LIM0_LO_VALUE_Field is HAL.UInt12;

   --  Channel 0 Low Limit
   type LIM0_LO_Register is record
      --  Low limit value for channel 0
      VALUE          : LIM0_LO_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable low limit comparison on Channel 0
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM0_LO_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype LIM0_HI_VALUE_Field is HAL.UInt12;

   --  Channel 0 High Limit
   type LIM0_HI_Register is record
      --  High limit value for channel 0
      VALUE          : LIM0_HI_VALUE_Field := 16#FFF#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable high limit comparison on Channel 0
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM0_HI_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype HYS_VALUE_Field is HAL.UInt9;
   subtype HYS_MONCYC_Field is HAL.UInt3;

   --  Channel 0 Hysteresis
   type HYS_Register is record
      --  Hysteresis value for Channel 0
      VALUE         : HYS_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_9_11 : HAL.UInt3 := 16#0#;
      --  Program number of conversion cycles to monitor channel 0 before
      --  raising alert
      MONCYC        : HYS_MONCYC_Field := 16#0#;
      --  To enable hysteresis for comparison on Channel 0
      EN            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HYS_Register use record
      VALUE         at 0 range 0 .. 8;
      Reserved_9_11 at 0 range 9 .. 11;
      MONCYC        at 0 range 12 .. 14;
      EN            at 0 range 15 .. 15;
   end record;

   subtype LIM1_LO_VALUE_Field is HAL.UInt12;

   --  Channel 1 Low Limit
   type LIM1_LO_Register is record
      --  Low limit value for channel 1
      VALUE          : LIM1_LO_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable low limit comparison on Channel 1
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM1_LO_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype LIM1_HI_VALUE_Field is HAL.UInt12;

   --  Channel 1 High Limit
   type LIM1_HI_Register is record
      --  High limit value for channel 1
      VALUE          : LIM1_HI_VALUE_Field := 16#FFF#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable high limit comparison on Channel 1
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM1_HI_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype LIM2_LO_VALUE_Field is HAL.UInt12;

   --  Channel 2 Low Limit
   type LIM2_LO_Register is record
      --  Low limit value for channel 2
      VALUE          : LIM2_LO_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable low limit comparison on Channel 2
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM2_LO_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype LIM2_HI_VALUE_Field is HAL.UInt12;

   --  Channel 2 High Limit
   type LIM2_HI_Register is record
      --  High limit value for channel 2
      VALUE          : LIM2_HI_VALUE_Field := 16#FFF#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable high limit comparison on Channel 2
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM2_HI_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype LIM3_LO_VALUE_Field is HAL.UInt12;

   --  Channel 3 Low Limit
   type LIM3_LO_Register is record
      --  Low limit value for channel 3
      VALUE          : LIM3_LO_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable low limit comparison on Channel 3
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM3_LO_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   subtype LIM3_HI_VALUE_Field is HAL.UInt12;

   --  Channel 3 High Limit
   type LIM3_HI_Register is record
      --  High limit value for channel 3
      VALUE          : LIM3_HI_VALUE_Field := 16#FFF#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  To enable high limit comparison on Channel 3
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for LIM3_HI_Register use record
      VALUE          at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EN             at 0 range 15 .. 15;
   end record;

   --  Reference Buffer Low Power Mode
   type CFG1_Register is record
      --  Enable low power mode for reference buffer
      RBUFLP        : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#200#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CFG1_Register use record
      RBUFLP        at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital Controller for ADC
   type ADC0_Peripheral is record
      --  ADC Configuration
      CFG      : aliased CFG_Register;
      --  ADC Power-up Time
      PWRUP    : aliased PWRUP_Register;
      --  Calibration Word
      CAL_WORD : aliased CAL_WORD_Register;
      --  ADC Conversion Configuration
      CNV_CFG  : aliased CNV_CFG_Register;
      --  ADC Conversion Time
      CNV_TIME : aliased CNV_TIME_Register;
      --  Averaging Configuration
      AVG_CFG  : aliased AVG_CFG_Register;
      --  Interrupt Enable
      IRQ_EN   : aliased IRQ_EN_Register;
      --  ADC Status
      STAT     : aliased STAT_Register;
      --  Overflow of Output Registers
      OVF      : aliased OVF_Register;
      --  Alert Indication
      ALERT    : aliased ALERT_Register;
      --  Conversion Result Channel 0
      CH0_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 1
      CH1_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 2
      CH2_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 3
      CH3_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 4
      CH4_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 5
      CH5_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 6
      CH6_OUT  : aliased HAL.UInt16;
      --  Conversion Result Channel 7
      CH7_OUT  : aliased HAL.UInt16;
      --  Battery Monitoring Result
      BAT_OUT  : aliased HAL.UInt16;
      --  Temperature Result
      TMP_OUT  : aliased HAL.UInt16;
      --  Temperature Result 2
      TMP2_OUT : aliased HAL.UInt16;
      --  DMA Output Register
      DMA_OUT  : aliased HAL.UInt16;
      --  Channel 0 Low Limit
      LIM0_LO  : aliased LIM0_LO_Register;
      --  Channel 0 High Limit
      LIM0_HI  : aliased LIM0_HI_Register;
      --  Channel 0 Hysteresis
      HYS0     : aliased HYS_Register;
      --  Channel 1 Low Limit
      LIM1_LO  : aliased LIM1_LO_Register;
      --  Channel 1 High Limit
      LIM1_HI  : aliased LIM1_HI_Register;
      --  Channel 1 Hysteresis
      HYS1     : aliased HYS_Register;
      --  Channel 2 Low Limit
      LIM2_LO  : aliased LIM2_LO_Register;
      --  Channel 2 High Limit
      LIM2_HI  : aliased LIM2_HI_Register;
      --  Channel 2 Hysteresis
      HYS2     : aliased HYS_Register;
      --  Channel 3 Low Limit
      LIM3_LO  : aliased LIM3_LO_Register;
      --  Channel 3 High Limit
      LIM3_HI  : aliased LIM3_HI_Register;
      --  Channel 3 Hysteresis
      HYS3     : aliased HYS_Register;
      --  Reference Buffer Low Power Mode
      CFG1     : aliased CFG1_Register;
   end record
     with Volatile;

   for ADC0_Peripheral use record
      CFG      at 16#0# range 0 .. 15;
      PWRUP    at 16#4# range 0 .. 15;
      CAL_WORD at 16#8# range 0 .. 15;
      CNV_CFG  at 16#C# range 0 .. 15;
      CNV_TIME at 16#10# range 0 .. 15;
      AVG_CFG  at 16#14# range 0 .. 15;
      IRQ_EN   at 16#20# range 0 .. 15;
      STAT     at 16#24# range 0 .. 15;
      OVF      at 16#28# range 0 .. 15;
      ALERT    at 16#2C# range 0 .. 15;
      CH0_OUT  at 16#30# range 0 .. 15;
      CH1_OUT  at 16#34# range 0 .. 15;
      CH2_OUT  at 16#38# range 0 .. 15;
      CH3_OUT  at 16#3C# range 0 .. 15;
      CH4_OUT  at 16#40# range 0 .. 15;
      CH5_OUT  at 16#44# range 0 .. 15;
      CH6_OUT  at 16#48# range 0 .. 15;
      CH7_OUT  at 16#4C# range 0 .. 15;
      BAT_OUT  at 16#50# range 0 .. 15;
      TMP_OUT  at 16#54# range 0 .. 15;
      TMP2_OUT at 16#58# range 0 .. 15;
      DMA_OUT  at 16#5C# range 0 .. 15;
      LIM0_LO  at 16#60# range 0 .. 15;
      LIM0_HI  at 16#64# range 0 .. 15;
      HYS0     at 16#68# range 0 .. 15;
      LIM1_LO  at 16#70# range 0 .. 15;
      LIM1_HI  at 16#74# range 0 .. 15;
      HYS1     at 16#78# range 0 .. 15;
      LIM2_LO  at 16#80# range 0 .. 15;
      LIM2_HI  at 16#84# range 0 .. 15;
      HYS2     at 16#88# range 0 .. 15;
      LIM3_LO  at 16#90# range 0 .. 15;
      LIM3_HI  at 16#94# range 0 .. 15;
      HYS3     at 16#98# range 0 .. 15;
      CFG1     at 16#C0# range 0 .. 15;
   end record;

   --  Digital Controller for ADC
   ADC0_Periph : aliased ADC0_Peripheral
     with Import, Address => System'To_Address (16#40007000#);

end NRF_SVD.ADC0;
