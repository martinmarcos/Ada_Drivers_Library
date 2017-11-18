--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RTC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR0_MOD60ALM_Field is HAL.UInt6;

   --  RTC Control 0
   type CR0_Register is record
      --  Global Enable for the RTC
      CNTEN         : Boolean := False;
      --  Enable the RTC Alarm (Absolute) Operation
      ALMEN         : Boolean := False;
      --  Enable ALMINT Sourced Alarm Interrupts to the CPU
      ALMINTEN      : Boolean := True;
      --  Enable RTC Digital Trimming
      TRMEN         : Boolean := False;
      --  Enable RTC Modulo-60 Counting of Time Past a Modulo-60 Boundary
      MOD60ALMEN    : Boolean := False;
      --  Periodic, Modulo-60 Alarm Time in Prescaled RTC Time Units Beyond a
      --  Modulo-60 Boundary
      MOD60ALM      : CR0_MOD60ALM_Field := 16#1E#;
      --  Enable Periodic Modulo-60 RTC Alarm Sourced Interrupts to the CPU
      MOD60ALMINTEN : Boolean := False;
      --  Enable ISOINT Sourced Interrupts to the CPU When Isolation of the RTC
      --  Power Domain is Activated and Subsequently De-activated
      ISOINTEN      : Boolean := False;
      --  Enable Write Pending Error Sourced Interrupts to the CPU When an RTC
      --  Register-write Pending Error Occurs
      WPNDERRINTEN  : Boolean := False;
      --  Enable Write Synchronization Sourced Interrupts to the CPU
      WSYNCINTEN    : Boolean := False;
      --  Enable Write Pending Sourced Interrupts to the CPU
      WPNDINTEN     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR0_Register use record
      CNTEN         at 0 range 0 .. 0;
      ALMEN         at 0 range 1 .. 1;
      ALMINTEN      at 0 range 2 .. 2;
      TRMEN         at 0 range 3 .. 3;
      MOD60ALMEN    at 0 range 4 .. 4;
      MOD60ALM      at 0 range 5 .. 10;
      MOD60ALMINTEN at 0 range 11 .. 11;
      ISOINTEN      at 0 range 12 .. 12;
      WPNDERRINTEN  at 0 range 13 .. 13;
      WSYNCINTEN    at 0 range 14 .. 14;
      WPNDINTEN     at 0 range 15 .. 15;
   end record;

   --  SR0_WSYNCCNT array
   type SR0_WSYNCCNT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SR0_WSYNCCNT
   type SR0_WSYNCCNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WSYNCCNT as a value
            Val : HAL.UInt2;
         when True =>
            --  WSYNCCNT as an array
            Arr : SR0_WSYNCCNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR0_WSYNCCNT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SR0_WSYNCALM array
   type SR0_WSYNCALM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SR0_WSYNCALM
   type SR0_WSYNCALM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WSYNCALM as a value
            Val : HAL.UInt2;
         when True =>
            --  WSYNCALM as an array
            Arr : SR0_WSYNCALM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR0_WSYNCALM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RTC Status 0
   type SR0_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Alarm Interrupt Source
      ALMINT         : Boolean := False;
      --  Modulo-60 RTC Alarm Interrupt Source
      MOD60ALMINT    : Boolean := False;
      --  RTC Power-Domain Isolation Interrupt Source
      ISOINT         : Boolean := False;
      --  Write Pending Error Interrupt Source
      WPNDERRINT     : Boolean := False;
      --  Write Synchronisation Interrupt
      WSYNCINT       : Boolean := False;
      --  Write Pending Interrupt
      WPNDINT        : Boolean := False;
      --  Read-only. Synchronisation Status of Posted Writes to CR0
      WSYNCCR0       : Boolean := True;
      --  Read-only. Synchronisation Status of Posted Writes to SR0
      WSYNCSR0       : Boolean := True;
      --  Read-only. Synchronisation Status of Posted Writes to CNT0
      WSYNCCNT       : SR0_WSYNCCNT_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Read-only. Synchronisation Status of Posted Writes to ALM0
      WSYNCALM       : SR0_WSYNCALM_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Read-only. Synchronisation Status of Posted Writes to TRM
      WSYNCTRM       : Boolean := True;
      --  Read-only. Visibility of 32kHz Sourced Registers
      ISOENB         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR0_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ALMINT         at 0 range 1 .. 1;
      MOD60ALMINT    at 0 range 2 .. 2;
      ISOINT         at 0 range 3 .. 3;
      WPNDERRINT     at 0 range 4 .. 4;
      WSYNCINT       at 0 range 5 .. 5;
      WPNDINT        at 0 range 6 .. 6;
      WSYNCCR0       at 0 range 7 .. 7;
      WSYNCSR0       at 0 range 8 .. 8;
      WSYNCCNT       at 0 range 9 .. 10;
      WSYNCALM       at 0 range 11 .. 12;
      WSYNCTRM       at 0 range 13 .. 13;
      ISOENB         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  SR1_WPNDCNT array
   type SR1_WPNDCNT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SR1_WPNDCNT
   type SR1_WPNDCNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPNDCNT as a value
            Val : HAL.UInt2;
         when True =>
            --  WPNDCNT as an array
            Arr : SR1_WPNDCNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR1_WPNDCNT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SR1_WPNDALM array
   type SR1_WPNDALM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SR1_WPNDALM
   type SR1_WPNDALM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPNDALM as a value
            Val : HAL.UInt2;
         when True =>
            --  WPNDALM as an array
            Arr : SR1_WPNDALM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR1_WPNDALM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RTC Status 1
   type SR1_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7;
      --  Read-only. Pending Status of Posted Writes to CR0
      WPNDCR0        : Boolean;
      --  Read-only. Pending Status of Posted Clearances of Interrupt Sources
      --  in SR0
      WPNDSR0        : Boolean;
      --  Read-only. Pending Status of Posted Writes to CNT0
      WPNDCNT        : SR1_WPNDCNT_Field;
      --  Read-only. Pending Status of Posted Writes to ALM0
      WPNDALM        : SR1_WPNDALM_Field;
      --  Read-only. Pending Status of Posted Writes to TRM
      WPNDTRM        : Boolean;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      WPNDCR0        at 0 range 7 .. 7;
      WPNDSR0        at 0 range 8 .. 8;
      WPNDCNT        at 0 range 9 .. 10;
      WPNDALM        at 0 range 11 .. 12;
      WPNDTRM        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype TRM_VALUE_Field is HAL.UInt3;
   subtype TRM_IVL_Field is HAL.UInt2;
   subtype TRM_IVL2EXPMIN_Field is HAL.UInt4;

   --  RTC Trim
   type TRM_Register is record
      --  Trim Value in Prescaled RTC Time Units to Be Added or Subtracted from
      --  the RTC Count at the End of a Periodic Interval Selected by
      --  TRM:TRMIVL
      VALUE          : TRM_VALUE_Field := 16#0#;
      --  Trim Polarity
      ADD            : Boolean := True;
      --  Trim Interval in Prescaled RTC Time Units
      IVL            : TRM_IVL_Field := 16#1#;
      --  Minimum Power-of-two Interval of Prescaled RTC Time Units Which
      --  TRM:TRMIVL TRMIVL Can Select
      IVL2EXPMIN     : TRM_IVL2EXPMIN_Field := 16#E#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TRM_Register use record
      VALUE          at 0 range 0 .. 2;
      ADD            at 0 range 3 .. 3;
      IVL            at 0 range 4 .. 5;
      IVL2EXPMIN     at 0 range 6 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   subtype CR1_PRESCALE2EXP_Field is HAL.UInt4;

   --  RTC Control 1
   type CR1_Register is record
      --  Enable for the RTC Count Interrupt Source
      CNTINTEN          : Boolean := False;
      --  Enable for the Prescaled, Modulo-1 Interrupt Source, in SR2:RTCPSINT
      PSINTEN           : Boolean := False;
      --  Enable for the RTC Trim Interrupt Source, in SR2:RTCTRMINT
      TRMINTEN          : Boolean := False;
      --  Enable for the RTC Count Roll-Over Interrupt Source, in
      --  SR2:RTCCNTROLLINT
      CNTROLLINTEN      : Boolean := False;
      --  Enable for the RTC Modulo-60 Count Roll-Over Interrupt Source
      CNTMOD60ROLLINTEN : Boolean := False;
      --  Prescale Power of 2 Division Factor for the RTC Base Clock
      PRESCALE2EXP      : CR1_PRESCALE2EXP_Field := 16#F#;
      --  unspecified
      Reserved_9_15     : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      CNTINTEN          at 0 range 0 .. 0;
      PSINTEN           at 0 range 1 .. 1;
      TRMINTEN          at 0 range 2 .. 2;
      CNTROLLINTEN      at 0 range 3 .. 3;
      CNTMOD60ROLLINTEN at 0 range 4 .. 4;
      PRESCALE2EXP      at 0 range 5 .. 8;
      Reserved_9_15     at 0 range 9 .. 15;
   end record;

   --  RTC Status 2
   type SR2_Register is record
      --  RTC Count Interrupt Source
      CNTINT          : Boolean := False;
      --  RTC Prescaled, Modulo-1 Boundary Interrupt Source
      PSINT           : Boolean := False;
      --  RTC Trim Interrupt Source
      TRMINT          : Boolean := False;
      --  RTC Count Roll-Over Interrupt Source
      CNTROLLINT      : Boolean := False;
      --  RTC Modulo-60 Count Roll-Over Interrupt Source
      CNTMOD60ROLLINT : Boolean := False;
      --  Read-only. RTC Count Roll-Over
      CNTROLL         : Boolean := False;
      --  Read-only. RTC Count Modulo-60 Roll-Over
      CNTMOD60ROLL    : Boolean := False;
      --  Read-only. Mirror of MOD:RTCTRMBDY
      TRMBDYMIR       : Boolean := False;
      --  unspecified
      Reserved_8_11   : HAL.UInt4 := 16#0#;
      --  Read-only. Pending Status of Posted Writes to CR1
      WPNDCR1MIR      : Boolean := False;
      --  Read-only. Pending Status of Posted Writes to ALM2
      WPNDALM2MIR     : Boolean := False;
      --  Read-only. Synchronization Status of Posted Writes to CR1
      WSYNCCR1MIR     : Boolean := True;
      --  Read-only. Synchronization Status of Posted Writes to ALM2
      WSYNCALM2MIR    : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      CNTINT          at 0 range 0 .. 0;
      PSINT           at 0 range 1 .. 1;
      TRMINT          at 0 range 2 .. 2;
      CNTROLLINT      at 0 range 3 .. 3;
      CNTMOD60ROLLINT at 0 range 4 .. 4;
      CNTROLL         at 0 range 5 .. 5;
      CNTMOD60ROLL    at 0 range 6 .. 6;
      TRMBDYMIR       at 0 range 7 .. 7;
      Reserved_8_11   at 0 range 8 .. 11;
      WPNDCR1MIR      at 0 range 12 .. 12;
      WPNDALM2MIR     at 0 range 13 .. 13;
      WSYNCCR1MIR     at 0 range 14 .. 14;
      WSYNCALM2MIR    at 0 range 15 .. 15;
   end record;

   subtype SNAP2_VALUE_Field is HAL.UInt15;

   --  RTC Snapshot 2
   type SNAP2_Register is record
      --  Read-only. Part of the 47-bit Input Capture Channel 0 Containing a
      --  Sticky Snapshot of CNT2
      VALUE          : SNAP2_VALUE_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SNAP2_Register use record
      VALUE          at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype MOD_CNTMOD60_Field is HAL.UInt6;
   subtype MOD_INCR_Field is HAL.UInt4;
   subtype MOD_CNT0_4TOZERO_Field is HAL.UInt5;

   --  RTC Modulo
   type MOD_Register is record
      --  Read-only. Modulo-60 Value of the RTC Count: CNT1 and CNT0
      CNTMOD60     : MOD_CNTMOD60_Field;
      --  Read-only. Most Recent Increment Value Added to the RTC Count in CNT1
      --  and CNT0
      INCR         : MOD_INCR_Field;
      --  Read-only. Trim Boundary Indicator
      TRMBDY       : Boolean;
      --  Read-only. Mirror of CNT0[4:0]
      CNT0_4TOZERO : MOD_CNT0_4TOZERO_Field;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MOD_Register use record
      CNTMOD60     at 0 range 0 .. 5;
      INCR         at 0 range 6 .. 9;
      TRMBDY       at 0 range 10 .. 10;
      CNT0_4TOZERO at 0 range 11 .. 15;
   end record;

   subtype CNT2_VALUE_Field is HAL.UInt15;

   --  RTC Count 2
   type CNT2_Register is record
      --  Read-only. Fractional Bits of the RTC Real-Time Count
      VALUE          : CNT2_VALUE_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CNT2_Register use record
      VALUE          at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype ALM2_VALUE_Field is HAL.UInt15;

   --  RTC Alarm 2
   type ALM2_Register is record
      --  Fractional Bits of the Alarm Target Time
      VALUE          : ALM2_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ALM2_Register use record
      VALUE          at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  RTC Status 3
   type SR3_Register is record
      --  Sticky Interrupt Source for the RTC Input Capture Channel 0
      IC0IRQ         : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Sticky Interrupt Source for the RTC Input Capture Channel 2
      IC2IRQ         : Boolean := False;
      --  Sticky Interrupt Source for the RTC Input Capture Channel 3
      IC3IRQ         : Boolean := False;
      --  Sticky Interrupt Source for the RTC Input Capture Channel 4
      IC4IRQ         : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 1 Falling Edge
      SS1FEIRQ       : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 2 Falling Edge
      SS2FEIRQ       : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 3 Falling Edge
      SS3FEIRQ       : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 4 Falling Edge
      SS4FEIRQ       : Boolean := False;
      --  Sticky Interrupt Source for SensorStrobe Channel 1
      SS1IRQ         : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 2
      SS2IRQ         : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 3
      SS3IRQ         : Boolean := False;
      --  Sticky Interrupt Source for the SensorStrobe Channel 4
      SS4IRQ         : Boolean := False;
      --  Read-only. Read-only Mirror of the SR0:ALMINT Interrupt Source
      ALMINTMIR      : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR3_Register use record
      IC0IRQ         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IC2IRQ         at 0 range 2 .. 2;
      IC3IRQ         at 0 range 3 .. 3;
      IC4IRQ         at 0 range 4 .. 4;
      SS1FEIRQ       at 0 range 5 .. 5;
      SS2FEIRQ       at 0 range 6 .. 6;
      SS3FEIRQ       at 0 range 7 .. 7;
      SS4FEIRQ       at 0 range 8 .. 8;
      SS1IRQ         at 0 range 9 .. 9;
      SS2IRQ         at 0 range 10 .. 10;
      SS3IRQ         at 0 range 11 .. 11;
      SS4IRQ         at 0 range 12 .. 12;
      ALMINTMIR      at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  RTC Control 2 for Configuring Input Capture Channels
   type CR2IC_Register is record
      --  Enable for the RTC Input Capture Channel 0
      IC0EN          : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Enable for the RTC Input Capture Channel 2
      IC2EN          : Boolean := False;
      --  Enable for the RTC Input Capture Channel 3
      IC3EN          : Boolean := False;
      --  Enable for the RTC Input Capture Channel 4
      IC4EN          : Boolean := False;
      --  Polarity of the Active-Going Capture Edge for the RTC Input Capture
      --  Channel 0
      IC0LH          : Boolean := True;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Polarity of the Active-going Capture Edge for the Input Capture
      --  Channel 2
      IC2LH          : Boolean := True;
      --  Polarity of the Active-going Capture Edge for the Input Capture
      --  Channel 3
      IC3LH          : Boolean := True;
      --  Polarity of the Active-going Capture Edge for the Input Capture
      --  Channel 4
      IC4LH          : Boolean := True;
      --  Interrupt Enable for the RTC Input Capture Channel 0
      IC0IRQEN       : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Interrupt Enable for the RTC Input Capture Channel 2
      IC2IRQEN       : Boolean := False;
      --  Interrupt Enable for the RTC Input Capture Channel 3
      IC3IRQEN       : Boolean := False;
      --  Interrupt Enable for the RTC Input Capture Channel 4
      IC4IRQEN       : Boolean := False;
      --  Enable Overwrite of Unread Snapshots for All Input Capture Channels
      ICOWUSEN       : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR2IC_Register use record
      IC0EN          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IC2EN          at 0 range 2 .. 2;
      IC3EN          at 0 range 3 .. 3;
      IC4EN          at 0 range 4 .. 4;
      IC0LH          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      IC2LH          at 0 range 7 .. 7;
      IC3LH          at 0 range 8 .. 8;
      IC4LH          at 0 range 9 .. 9;
      IC0IRQEN       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      IC2IRQEN       at 0 range 12 .. 12;
      IC3IRQEN       at 0 range 13 .. 13;
      IC4IRQEN       at 0 range 14 .. 14;
      ICOWUSEN       at 0 range 15 .. 15;
   end record;

   --  RTC Control 3 for Configuring SensorStrobe Channel
   type CR3SS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable for SensorStrobe Channel 1
      SS1EN          : Boolean := False;
      --  Enable for the SensorStrobe Channel 2
      SS2EN          : Boolean := False;
      --  Enable for the SensorStrobe Channel 3
      SS3EN          : Boolean := False;
      --  Enable for the SensorStrobe Channel 4
      SS4EN          : Boolean := False;
      --  Falling Edge Interrupt Enable for the SensorStrobe Channel 1
      SS1FEIRQEN     : Boolean := False;
      --  Falling Edge Interrupt Enable for the SensorStrobe Channel 2
      SS2FEIRQEN     : Boolean := False;
      --  Falling Edge Interrupt Enable for the SensorStrobe Channel 3
      SS3FEIRQEN     : Boolean := False;
      --  Falling Edge Interrupt Enable for the SensorStrobe Channel 4
      SS4FEIRQEN     : Boolean := False;
      --  Interrupt Enable for SensorStrobe Channel 1
      SS1IRQEN       : Boolean := False;
      --  Posedge EdgeInterrupt Enable for the SensorStrobe Channel 2
      SS2IRQEN       : Boolean := False;
      --  Posedge EdgeInterrupt Enable for the SensorStrobe Channel 3
      SS3IRQEN       : Boolean := False;
      --  Posedge EdgeInterrupt Enable for the SensorStrobe Channel 4
      SS4IRQEN       : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR3SS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SS1EN          at 0 range 1 .. 1;
      SS2EN          at 0 range 2 .. 2;
      SS3EN          at 0 range 3 .. 3;
      SS4EN          at 0 range 4 .. 4;
      SS1FEIRQEN     at 0 range 5 .. 5;
      SS2FEIRQEN     at 0 range 6 .. 6;
      SS3FEIRQEN     at 0 range 7 .. 7;
      SS4FEIRQEN     at 0 range 8 .. 8;
      SS1IRQEN       at 0 range 9 .. 9;
      SS2IRQEN       at 0 range 10 .. 10;
      SS3IRQEN       at 0 range 11 .. 11;
      SS4IRQEN       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Enable for Thermometer-Code Masking of the SensorStrobe Channel 1
   type CR4SS_SS1MSKEN_Field is
     (
      --  Do not apply a mask to SensorStrobe Channel 1 Register
      No_Msk,
      --  Apply thermometer decoded mask
      Therm_Msk)
     with Size => 1;
   for CR4SS_SS1MSKEN_Field use
     (No_Msk => 0,
      Therm_Msk => 1);

   --  RTC Control 4 for Configuring SensorStrobe Channel
   type CR4SS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable for Thermometer-Code Masking of the SensorStrobe Channel 1
      SS1MSKEN       : CR4SS_SS1MSKEN_Field := NRF_SVD.RTC0.No_Msk;
      --  Enable for Thermometer-Code Masking of the SensorStrobe Channel 2
      SS2MSKEN       : Boolean := False;
      --  Enable for Thermometer-Code Masking of the SensorStrobe Channel 3
      SS3MSKEN       : Boolean := False;
      --  Enable for Thermometer-Code Masking of the SensorStrobe Channel 4
      SS4MSKEN       : Boolean := False;
      --  SensorSTrobe Channel 1 Polarity Control
      SS1POL         : Boolean := False;
      --  SensorStrobe Channel 2 Polarity Control
      SS2POL         : Boolean := False;
      --  SensorStrobe Channel 3 Polarity Control
      SS3POL         : Boolean := False;
      --  SensorStrobe Channel 4 Polarity Control
      SS4POL         : Boolean := False;
      --  Enable for Fine Control on SensorStrobe Channel 1 Period and Duty
      --  Cycle
      SS1ARLEN       : Boolean := False;
      --  Enable for Fine Control on SensorStrobe Channel 2 Period and Duty
      --  Cycle
      SS2ARLEN       : Boolean := False;
      --  Enable for Fine Control on SensorStrobe Channel 3 Period and Duty
      --  Cycle
      SS3ARLEN       : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR4SS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SS1MSKEN       at 0 range 1 .. 1;
      SS2MSKEN       at 0 range 2 .. 2;
      SS3MSKEN       at 0 range 3 .. 3;
      SS4MSKEN       at 0 range 4 .. 4;
      SS1POL         at 0 range 5 .. 5;
      SS2POL         at 0 range 6 .. 6;
      SS3POL         at 0 range 7 .. 7;
      SS4POL         at 0 range 8 .. 8;
      SS1ARLEN       at 0 range 9 .. 9;
      SS2ARLEN       at 0 range 10 .. 10;
      SS3ARLEN       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype SSMSK_SS1MSK_Field is HAL.UInt4;
   subtype SSMSK_SS2MSK_Field is HAL.UInt4;
   subtype SSMSK_SS3MSK_Field is HAL.UInt4;
   subtype SSMSK_SS4MSK_Field is HAL.UInt4;

   --  RTC Mask for SensorStrobe Channel
   type SSMSK_Register is record
      --  Concatenation of Thermometer-Encoded Masks for the 16-bit
      --  SensorStrobe Channels
      SS1MSK : SSMSK_SS1MSK_Field := 16#0#;
      --  SensorStrobe Channel 2 Period Control
      SS2MSK : SSMSK_SS2MSK_Field := 16#0#;
      --  SensorStrobe Channel 3 Period Control
      SS3MSK : SSMSK_SS3MSK_Field := 16#0#;
      --  SensorStrobe Channel 4 Period Control
      SS4MSK : SSMSK_SS4MSK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SSMSK_Register use record
      SS1MSK at 0 range 0 .. 3;
      SS2MSK at 0 range 4 .. 7;
      SS3MSK at 0 range 8 .. 11;
      SS4MSK at 0 range 12 .. 15;
   end record;

   --  SR4_WSYNCSS array
   type SR4_WSYNCSS_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SR4_WSYNCSS
   type SR4_WSYNCSS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WSYNCSS as a value
            Val : HAL.UInt4;
         when True =>
            --  WSYNCSS as an array
            Arr : SR4_WSYNCSS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SR4_WSYNCSS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SR4_RSYNCIC array
   type SR4_RSYNCIC_Field_Array is array (2 .. 4) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for SR4_RSYNCIC
   type SR4_RSYNCIC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RSYNCIC as a value
            Val : HAL.UInt3;
         when True =>
            --  RSYNCIC as an array
            Arr : SR4_RSYNCIC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SR4_RSYNCIC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RTC Status 4
   type SR4_Register is record
      --  Read-only. Synchronisation Status of Posted Writes to SR3
      WSYNCSR3       : Boolean;
      --  Read-only. Synchronization Status of Posted Writes to RTC Control 2
      --  for Configuring Input Capture Channels Register
      WSYNCCR2IC     : Boolean;
      --  Read-only. Synchronization Status of Posted Writes to RTC Control 3
      --  for Configuring SensorStrobe Channel Register
      WSYNCCR3SS     : Boolean;
      --  Read-only. Synchronization Status of Posted Writes to RTC Control 4
      --  for Configuring SensorStrobe Channel Register
      WSYNCCR4SS     : Boolean;
      --  Read-only. Synchronization Status of Posted Writes to Masks for
      --  SensorStrobe Channel Register
      WSYNCSSMSK     : Boolean;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. Synchronization Status of Posted Writes to SensorStrobe
      --  Channel 1
      WSYNCSS        : SR4_WSYNCSS_Field;
      --  Read-only. Synchronization Status of Posted Reads of RTC Input
      --  Channel 0
      RSYNCIC0       : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Synchronization Status of Posted Reads of RTC Input
      --  Channel 2
      RSYNCIC        : SR4_RSYNCIC_Field;
      --  Read-only. Synchronization Status of Posted Reads Writes to Mask for
      --  SensorStrobe Channels on Time Control Register
      WSYNCSSMSKOT   : Boolean;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR4_Register use record
      WSYNCSR3       at 0 range 0 .. 0;
      WSYNCCR2IC     at 0 range 1 .. 1;
      WSYNCCR3SS     at 0 range 2 .. 2;
      WSYNCCR4SS     at 0 range 3 .. 3;
      WSYNCSSMSK     at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      WSYNCSS        at 0 range 6 .. 9;
      RSYNCIC0       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RSYNCIC        at 0 range 12 .. 14;
      WSYNCSSMSKOT   at 0 range 15 .. 15;
   end record;

   --  SR5_WPENDSS array
   type SR5_WPENDSS_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SR5_WPENDSS
   type SR5_WPENDSS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPENDSS as a value
            Val : HAL.UInt4;
         when True =>
            --  WPENDSS as an array
            Arr : SR5_WPENDSS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SR5_WPENDSS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SR5_RPENDIC array
   type SR5_RPENDIC_Field_Array is array (2 .. 4) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for SR5_RPENDIC
   type SR5_RPENDIC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPENDIC as a value
            Val : HAL.UInt3;
         when True =>
            --  RPENDIC as an array
            Arr : SR5_RPENDIC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SR5_RPENDIC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  RTC Status 5
   type SR5_Register is record
      --  Read-only. Pending Status of Posted Clearances of Interrupt Sources
      --  in RTC Status 3 Register
      WPENDSR3       : Boolean;
      --  Read-only. Pending Status of Posted Writes to RTC Control 2 for
      --  Configuring Input Capture Channels Register
      WPENDCR2IC     : Boolean;
      --  Read-only. Pending Status of Posted Writes to RTC Control 3 for
      --  Configuring SensorStrobe Channel Register
      WPENDCR3SS     : Boolean;
      --  Read-only. Pending Status of Posted Writes to RTC Control 4 for
      --  Configuring SensorStrobe Channel Register
      WPENDCR4SS     : Boolean;
      --  Read-only. Pending Status of Posted Writes to RTC Masks for
      --  SensorStrobe Channel Register
      WPENDSSMSK     : Boolean;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. Pending Status of Posted Writes to SensorStrobe Channel 1
      WPENDSS        : SR5_WPENDSS_Field;
      --  Read-only. Pending Status of Posted Reads of Input Capture Channel 0
      RPENDIC0       : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Pending Status of Posted Reads of IC2
      RPENDIC        : SR5_RPENDIC_Field;
      --  Read-only. Pending Status of Posted Writes to RTC Masks for
      --  SensorStrobe Channel Register
      WPENDSSMSKOT   : Boolean;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR5_Register use record
      WPENDSR3       at 0 range 0 .. 0;
      WPENDCR2IC     at 0 range 1 .. 1;
      WPENDCR3SS     at 0 range 2 .. 2;
      WPENDCR4SS     at 0 range 3 .. 3;
      WPENDSSMSK     at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      WPENDSS        at 0 range 6 .. 9;
      RPENDIC0       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RPENDIC        at 0 range 12 .. 14;
      WPENDSSMSKOT   at 0 range 15 .. 15;
   end record;

   subtype SR6_FRZCNTPTR_Field is HAL.UInt2;

   --  RTC Status 6
   type SR6_Register is record
      --  Read-only. Sticky Unread Status of the Input Capture Channel 0
      IC0UNR         : Boolean;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only. Sticky Unread Status of the Input Capture Channel 2
      IC2UNR         : Boolean;
      --  Read-only. Sticky Unread Status of the Input Capture Channel 3
      IC3UNR         : Boolean;
      --  Read-only. Sticky Unread Status of the Input Capture Channel 4
      IC4UNR         : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Confirmation That RTC Snapshot 0, 1, 2 Registers Reflect
      --  the Value of Input-Capture Channel RTC Input Capture Channel 0
      IC0SNAP        : Boolean;
      --  Read-only. Pointer for the Triple-Read Sequence of FRZCNT
      FRZCNTPTR      : SR6_FRZCNTPTR_Field;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR6_Register use record
      IC0UNR         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IC2UNR         at 0 range 2 .. 2;
      IC3UNR         at 0 range 3 .. 3;
      IC4UNR         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      IC0SNAP        at 0 range 8 .. 8;
      FRZCNTPTR      at 0 range 9 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype SSMSKOT_SS1MSKOT_Field is HAL.UInt4;
   subtype SSMSKOT_SS2MSKOT_Field is HAL.UInt4;
   subtype SSMSKOT_SS3MSKOT_Field is HAL.UInt4;
   subtype SSMSKOT_SS4MSKOT_Field is HAL.UInt4;

   --  RTC Masks for SensorStrobe Channels on Time Control
   type SSMSKOT_Register is record
      --  Concatenation of Thermometer-encoded Masks for the 16-bit
      --  SensorStrobe Channels
      SS1MSKOT : SSMSKOT_SS1MSKOT_Field := 16#0#;
      --  SensorStrobe Channel 2 on Time Control
      SS2MSKOT : SSMSKOT_SS2MSKOT_Field := 16#0#;
      --  SensorStrobe Channel 3 on Time Control
      SS3MSKOT : SSMSKOT_SS3MSKOT_Field := 16#0#;
      --  SensorStrobe Channel 4 on Time Control
      SS4MSKOT : SSMSKOT_SS4MSKOT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SSMSKOT_Register use record
      SS1MSKOT at 0 range 0 .. 3;
      SS2MSKOT at 0 range 4 .. 7;
      SS3MSKOT at 0 range 8 .. 11;
      SS4MSKOT at 0 range 12 .. 15;
   end record;

   subtype CR5SSS_SS1SMPEN_Field is HAL.UInt3;
   subtype CR5SSS_SS2SMPEN_Field is HAL.UInt3;
   subtype CR5SSS_SS3SMPEN_Field is HAL.UInt3;

   --  RTC Control 5 for Configuring SensorStrobe Channel GPIO Sampling
   type CR5SSS_Register is record
      --  GPIO Input Sample Enable for SensorStrobe Channel 1
      SS1SMPEN        : CR5SSS_SS1SMPEN_Field := 16#0#;
      --  Sample Activity Interrupt Enable for SensorStrobe Channel 1
      SS1SMPMTCHIRQEN : Boolean := False;
      --  GPIO Input Sample Enable for SensorStrobe Channel 2
      SS2SMPEN        : CR5SSS_SS2SMPEN_Field := 16#0#;
      --  Sample Activity Interrupt Enable for SensorStrobe Channel 2
      SS2SMPMTCHIRQEN : Boolean := False;
      --  GPIO Input Sample Enable for SensorStrobe Channel 3
      SS3SMPEN        : CR5SSS_SS3SMPEN_Field := 16#0#;
      --  Sample Activity Interrupt Enable for SensorStrobe Channel 3
      SS3SMPMTCHIRQEN : Boolean := False;
      --  unspecified
      Reserved_12_15  : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR5SSS_Register use record
      SS1SMPEN        at 0 range 0 .. 2;
      SS1SMPMTCHIRQEN at 0 range 3 .. 3;
      SS2SMPEN        at 0 range 4 .. 6;
      SS2SMPMTCHIRQEN at 0 range 7 .. 7;
      SS3SMPEN        at 0 range 8 .. 10;
      SS3SMPMTCHIRQEN at 0 range 11 .. 11;
      Reserved_12_15  at 0 range 12 .. 15;
   end record;

   --  GPIO Sample Around Falling Edge of SensorStrobe Channel 1
   type CR6SSS_SS1SMPONFE_Field is
     (
      --  No sampling of input around falling edge
      Ss1Nofes,
      --  Input sampled one clock cycle before falling edge of the SensorStrobe
      --  channel 1
      Ss1Bfes,
      --  Input sampled at falling edge of the SensorStrobe channel 1
      Ss1Fes,
      --  Input sampled one clock cycle after falling edge of the SensorStrobe
      --  channel 1
      Ss1Afes)
     with Size => 2;
   for CR6SSS_SS1SMPONFE_Field use
     (Ss1Nofes => 0,
      Ss1Bfes => 1,
      Ss1Fes => 2,
      Ss1Afes => 3);

   --  GPIO Sample Around Rising Edge of SensorStrobe Channel 1
   type CR6SSS_SS1SMPONRE_Field is
     (
      --  No sampling of input around rising edge
      Ss1Nores,
      --  Input sampled one clock cycle before rising edge of the SensorStrobe
      --  channel 1
      Ss1Bres,
      --  Input sampled at rising edge of the SensorStrobe channel 1
      Ss1Res,
      --  Input sampled one clock cycle after rising edge of the SensorStrobe
      --  channel 1
      Ss1Ares)
     with Size => 2;
   for CR6SSS_SS1SMPONRE_Field use
     (Ss1Nores => 0,
      Ss1Bres => 1,
      Ss1Res => 2,
      Ss1Ares => 3);

   --  GPIO Sample Around Falling Edge of SensorStrobe Channel 2
   type CR6SSS_SS2SMPONFE_Field is
     (
      --  No sampling of input around falling edge
      Ss2Nofes,
      --  Input sampled one clock cycle before falling edge of the SensorStrobe
      --  channel 2
      Ss2Bfes,
      --  Input sampled at falling edge of the SensorStrobe channel 2
      Ss2Fes,
      --  Input sampled one clock cycle after falling edge of the SensorStrobe
      --  channel 2
      Ss2Afes)
     with Size => 2;
   for CR6SSS_SS2SMPONFE_Field use
     (Ss2Nofes => 0,
      Ss2Bfes => 1,
      Ss2Fes => 2,
      Ss2Afes => 3);

   --  GPIO Sample Around Rising Edge of SensorStrobe Channel 2
   type CR6SSS_SS2SMPONRE_Field is
     (
      --  No sampling of input around rising edge
      Ss2Nores,
      --  Input sampled one clock cycle before rising edge of the SensorStrobe
      --  channel 2
      Ss2Bres,
      --  Input sampled at rising edge of the SensorStrobe channel 2
      Ss2Res,
      --  Input sampled one clock cycle after rising edge of the SensorStrobe
      --  channel 2
      Ss2Ares)
     with Size => 2;
   for CR6SSS_SS2SMPONRE_Field use
     (Ss2Nores => 0,
      Ss2Bres => 1,
      Ss2Res => 2,
      Ss2Ares => 3);

   --  GPIO Sample Around Falling Edge of SensorStrobe Channel 3
   type CR6SSS_SS3SMPONFE_Field is
     (
      --  No sampling of input around falling edge
      Ss3Nofes,
      --  Input sampled one clock cycle before falling edge of the SensorStrobe
      --  channel 3
      Ss3Bfes,
      --  Input sampled at falling edge of the SensorStrobe channel 3
      Ss3Fes,
      --  Input sampled one clock cycle after falling edge of the SensorStrobe
      --  channel 3
      Ss3Afes)
     with Size => 2;
   for CR6SSS_SS3SMPONFE_Field use
     (Ss3Nofes => 0,
      Ss3Bfes => 1,
      Ss3Fes => 2,
      Ss3Afes => 3);

   --  GPIO Sample Around Rising Edge of SensorStrobe Channel 3
   type CR6SSS_SS3SMPONRE_Field is
     (
      --  No sampling of input around rising edge
      Ss3Nores,
      --  Input sampled one clock cycle before rising edge of the SensorStrobe
      --  channel 3
      Ss3Bres,
      --  Input sampled at rising edge of the SensorStrobe channel 3
      Ss3Res,
      --  Input sampled one clock cycle after rising edge of the SensorStrobe
      --  channel 3
      Ss3Ares)
     with Size => 2;
   for CR6SSS_SS3SMPONRE_Field use
     (Ss3Nores => 0,
      Ss3Bres => 1,
      Ss3Res => 2,
      Ss3Ares => 3);

   --  RTC Control 6 for Configuring SensorStrobe Channel GPIO Sampling Edge
   type CR6SSS_Register is record
      --  GPIO Sample Around Falling Edge of SensorStrobe Channel 1
      SS1SMPONFE     : CR6SSS_SS1SMPONFE_Field := NRF_SVD.RTC0.Ss1Nofes;
      --  GPIO Sample Around Rising Edge of SensorStrobe Channel 1
      SS1SMPONRE     : CR6SSS_SS1SMPONRE_Field := NRF_SVD.RTC0.Ss1Nores;
      --  GPIO Sample Around Falling Edge of SensorStrobe Channel 2
      SS2SMPONFE     : CR6SSS_SS2SMPONFE_Field := NRF_SVD.RTC0.Ss2Nofes;
      --  GPIO Sample Around Rising Edge of SensorStrobe Channel 2
      SS2SMPONRE     : CR6SSS_SS2SMPONRE_Field := NRF_SVD.RTC0.Ss2Nores;
      --  GPIO Sample Around Falling Edge of SensorStrobe Channel 3
      SS3SMPONFE     : CR6SSS_SS3SMPONFE_Field := NRF_SVD.RTC0.Ss3Nofes;
      --  GPIO Sample Around Rising Edge of SensorStrobe Channel 3
      SS3SMPONRE     : CR6SSS_SS3SMPONRE_Field := NRF_SVD.RTC0.Ss3Nores;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR6SSS_Register use record
      SS1SMPONFE     at 0 range 0 .. 1;
      SS1SMPONRE     at 0 range 2 .. 3;
      SS2SMPONFE     at 0 range 4 .. 5;
      SS2SMPONRE     at 0 range 6 .. 7;
      SS3SMPONFE     at 0 range 8 .. 9;
      SS3SMPONRE     at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype CR7SSS_SS1SMPEXP_Field is HAL.UInt3;

   --  Sample Activity Selection for SensorStrobe Channel 1
   type CR7SSS_SS1SMPPTRN_Field is
     (
      --  Current GPIO sample is not same as previous sample
      Ss1Smpchng,
      --  Current GPIO sample is same as previous sample
      Ss1Smpsame,
      --  Current GPIO sample is same as expected sample
      Ss1Smpmtch,
      --  Current GPIO sample is not same as expected sample
      Ss1Smpnomtch)
     with Size => 2;
   for CR7SSS_SS1SMPPTRN_Field use
     (Ss1Smpchng => 0,
      Ss1Smpsame => 1,
      Ss1Smpmtch => 2,
      Ss1Smpnomtch => 3);

   subtype CR7SSS_SS2SMPEXP_Field is HAL.UInt3;

   --  Sample Activity Selection for SensorStrobe Channel 2
   type CR7SSS_SS2SMPPTRN_Field is
     (
      --  Current GPIO sample is not same as previous sample
      Ss2Smpchng,
      --  Current GPIO sample is same as previous sample
      Ss2Smpsame,
      --  Current GPIO sample is same as expected sample
      Ss2Smpmtch,
      --  Current GPIO sample is not same as expected sample
      Ss2Smpnomtch)
     with Size => 2;
   for CR7SSS_SS2SMPPTRN_Field use
     (Ss2Smpchng => 0,
      Ss2Smpsame => 1,
      Ss2Smpmtch => 2,
      Ss2Smpnomtch => 3);

   subtype CR7SSS_SS3SMPEXP_Field is HAL.UInt3;

   --  Sample Activity Selection for SensorStrobe Channel 3
   type CR7SSS_SS3SMPPTRN_Field is
     (
      --  Current GPIO sample is not same as previous sample
      Ss3Smpchng,
      --  Current GPIO sample is same as previous sample
      Ss3Smpsame,
      --  Current GPIO sample is same as expected sample
      Ss3Smpmtch,
      --  Current GPIO sample is not same as expected sample
      Ss3Smpnomtch)
     with Size => 2;
   for CR7SSS_SS3SMPPTRN_Field use
     (Ss3Smpchng => 0,
      Ss3Smpsame => 1,
      Ss3Smpmtch => 2,
      Ss3Smpnomtch => 3);

   --  RTC Control 7 for Configuring SensorStrobe Channel GPIO Sampling
   --  Activity
   type CR7SSS_Register is record
      --  Expected GPIO Sample for SensorStrobe Channel 1
      SS1SMPEXP      : CR7SSS_SS1SMPEXP_Field := 16#0#;
      --  Sample Activity Selection for SensorStrobe Channel 1
      SS1SMPPTRN     : CR7SSS_SS1SMPPTRN_Field := NRF_SVD.RTC0.Ss1Smpchng;
      --  Expected GPIO Sample for SensorStrobe Channel 2
      SS2SMPEXP      : CR7SSS_SS2SMPEXP_Field := 16#0#;
      --  Sample Activity Selection for SensorStrobe Channel 2
      SS2SMPPTRN     : CR7SSS_SS2SMPPTRN_Field := NRF_SVD.RTC0.Ss2Smpchng;
      --  Expected GPIO Sample for SensorStrobe Channel 3
      SS3SMPEXP      : CR7SSS_SS3SMPEXP_Field := 16#0#;
      --  Sample Activity Selection for SensorStrobe Channel 3
      SS3SMPPTRN     : CR7SSS_SS3SMPPTRN_Field := NRF_SVD.RTC0.Ss3Smpchng;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CR7SSS_Register use record
      SS1SMPEXP      at 0 range 0 .. 2;
      SS1SMPPTRN     at 0 range 3 .. 4;
      SS2SMPEXP      at 0 range 5 .. 7;
      SS2SMPPTRN     at 0 range 8 .. 9;
      SS3SMPEXP      at 0 range 10 .. 12;
      SS3SMPPTRN     at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype SR7_SS1SMP_Field is HAL.UInt3;
   subtype SR7_SS2SMP_Field is HAL.UInt3;
   subtype SR7_SS3SMP_Field is HAL.UInt3;

   --  RTC Status 7
   type SR7_Register is record
      --  Read-only. Latest GPIO Sample for SensorStrobe Channel 1
      SS1SMP        : SR7_SS1SMP_Field := 16#0#;
      --  Sticky Status of GPIO Sample Pattern Match for SensorStrobe Channel 1
      SS1SMPMTCHIRQ : Boolean := False;
      --  Read-only. Latest GPIO Sample for SensorStrobe Channel 2
      SS2SMP        : SR7_SS2SMP_Field := 16#0#;
      --  Sticky Status of GPIO Sample Pattern Match for SensorStrobe Channel 2
      SS2SMPMTCHIRQ : Boolean := False;
      --  Read-only. Latest GPIO Sample for SensorStrobe Channel 3
      SS3SMP        : SR7_SS3SMP_Field := 16#0#;
      --  Sticky Status of GPIO Sample Pattern Match for SensorStrobe Channel 3
      SS3SMPMTCHIRQ : Boolean := False;
      --  Read-only. Output Value for SensorStrobe Channel 1
      SS1OUT        : Boolean := False;
      --  Read-only. Output Value for SensorStrobe Channel 2
      SS2OUT        : Boolean := False;
      --  Read-only. Output Value for SensorStrobe Channel 3
      SS3OUT        : Boolean := False;
      --  Read-only. Output Value for SensorStrobe Channel 4
      SS4OUT        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR7_Register use record
      SS1SMP        at 0 range 0 .. 2;
      SS1SMPMTCHIRQ at 0 range 3 .. 3;
      SS2SMP        at 0 range 4 .. 6;
      SS2SMPMTCHIRQ at 0 range 7 .. 7;
      SS3SMP        at 0 range 8 .. 10;
      SS3SMPMTCHIRQ at 0 range 11 .. 11;
      SS1OUT        at 0 range 12 .. 12;
      SS2OUT        at 0 range 13 .. 13;
      SS3OUT        at 0 range 14 .. 14;
      SS4OUT        at 0 range 15 .. 15;
   end record;

   --  SR8_WSYNCGPMUX array
   type SR8_WSYNCGPMUX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SR8_WSYNCGPMUX
   type SR8_WSYNCGPMUX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WSYNCGPMUX as a value
            Val : HAL.UInt2;
         when True =>
            --  WSYNCGPMUX as an array
            Arr : SR8_WSYNCGPMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR8_WSYNCGPMUX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RTC Status 8
   type SR8_Register is record
      --  Read-only. Synchronisation Status of Posted Writes to SensorStrobe
      --  Channel 1 Low Duration Register
      WSYNCSS1LOWDUR  : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to SensorStrobe
      --  Channel 2 Low Duration Register
      WSYNCSS2LOWDUR  : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to SensorStrobe
      --  Channel 3 Low Duration Register
      WSYNCSS3LOWDUR  : Boolean;
      --  unspecified
      Reserved_3_3    : HAL.Bit;
      --  Read-only. Synchronisation Status of Posted Writes to SensorStrobe
      --  Channel 1 High Duration Register
      WSYNCSS1HIGHDUR : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to SensorStrobe
      --  Channel 2 High Duration Register
      WSYNCSS2HIGHDUR : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to SensorStrobe
      --  Channel 3 High Duration Register
      WSYNCSS3HIGHDUR : Boolean;
      --  unspecified
      Reserved_7_7    : HAL.Bit;
      --  Read-only. Synchronisation Status of Posted Writes to Control 5 for
      --  Configuring SensorStrobe Channel Register
      WSYNCCR5SSS     : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to Control 6 for
      --  Configuring SensorStrobe Channel Register
      WSYNCCR6SSS     : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to Control 7 for
      --  Configuring SensorStrobe Channel Register
      WSYNCCR7SSS     : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to Status 7
      --  Register
      WSYNCSR7        : Boolean;
      --  Read-only. Synchronisation Status of Posted Writes to GPIO Pin Mux
      --  Control Register 0
      WSYNCGPMUX      : SR8_WSYNCGPMUX_Field;
      --  unspecified
      Reserved_14_15  : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR8_Register use record
      WSYNCSS1LOWDUR  at 0 range 0 .. 0;
      WSYNCSS2LOWDUR  at 0 range 1 .. 1;
      WSYNCSS3LOWDUR  at 0 range 2 .. 2;
      Reserved_3_3    at 0 range 3 .. 3;
      WSYNCSS1HIGHDUR at 0 range 4 .. 4;
      WSYNCSS2HIGHDUR at 0 range 5 .. 5;
      WSYNCSS3HIGHDUR at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      WSYNCCR5SSS     at 0 range 8 .. 8;
      WSYNCCR6SSS     at 0 range 9 .. 9;
      WSYNCCR7SSS     at 0 range 10 .. 10;
      WSYNCSR7        at 0 range 11 .. 11;
      WSYNCGPMUX      at 0 range 12 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
   end record;

   --  SR9_WPENDGPMUX array
   type SR9_WPENDGPMUX_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SR9_WPENDGPMUX
   type SR9_WPENDGPMUX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPENDGPMUX as a value
            Val : HAL.UInt2;
         when True =>
            --  WPENDGPMUX as an array
            Arr : SR9_WPENDGPMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SR9_WPENDGPMUX_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RTC Status 9
   type SR9_Register is record
      --  Read-only. Pending Status of Posted Writes to SensortStrobe Channel 1
      --  Low Duration Register
      WPENDSS1LOWDUR  : Boolean;
      --  Read-only. Pending Status of Posted Writes to SensortStrobe Channel 2
      --  Low Duration Register
      WPENDSS2LOWDUR  : Boolean;
      --  Read-only. Pending Status of Posted Writes to SensortStrobe Channel 3
      --  Low Duration Register
      WPENDSS3LOWDUR  : Boolean;
      --  unspecified
      Reserved_3_3    : HAL.Bit;
      --  Read-only. Pending Status of Posted Writes to SensortStrobe Channel 1
      --  High Duration Register
      WPENDSS1HIGHDUR : Boolean;
      --  Read-only. Pending Status of Posted Writes to SensortStrobe Channel 2
      --  High Duration Register
      WPENDSS2HIGHDUR : Boolean;
      --  Read-only. Pending Status of Posted Writes to SensortStrobe Channel 3
      --  High Duration Register
      WPENDSS3HIGHDUR : Boolean;
      --  unspecified
      Reserved_7_7    : HAL.Bit;
      --  Read-only. Pending Status of Posted Writes to Control 5 for
      --  Configuring SensorStrobe Channel Register
      WPENDCR5SSS     : Boolean;
      --  Read-only. Pending Status of Posted Writes to Control 6 for
      --  Configuring SensorStrobe Channel Register
      WPENDCR6SSS     : Boolean;
      --  Read-only. Pending Status of Posted Writes to Control 7 for
      --  Configuring SensorStrobe Channel Register
      WPENDCR7SSS     : Boolean;
      --  Read-only. Pending Status of Posted Writes to SR7
      WPENDSR7        : Boolean;
      --  Read-only. Pending Status of Posted Writes to GPMUX0
      WPENDGPMUX      : SR9_WPENDGPMUX_Field;
      --  unspecified
      Reserved_14_15  : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SR9_Register use record
      WPENDSS1LOWDUR  at 0 range 0 .. 0;
      WPENDSS2LOWDUR  at 0 range 1 .. 1;
      WPENDSS3LOWDUR  at 0 range 2 .. 2;
      Reserved_3_3    at 0 range 3 .. 3;
      WPENDSS1HIGHDUR at 0 range 4 .. 4;
      WPENDSS2HIGHDUR at 0 range 5 .. 5;
      WPENDSS3HIGHDUR at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      WPENDCR5SSS     at 0 range 8 .. 8;
      WPENDCR6SSS     at 0 range 9 .. 9;
      WPENDCR7SSS     at 0 range 10 .. 10;
      WPENDSR7        at 0 range 11 .. 11;
      WPENDGPMUX      at 0 range 12 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
   end record;

   subtype GPMUX0_SS1GPIN0SEL_Field is HAL.UInt3;
   subtype GPMUX0_SS1GPIN1SEL_Field is HAL.UInt3;
   subtype GPMUX0_SS1GPIN2SEL_Field is HAL.UInt3;
   subtype GPMUX0_SS2GPIN0SEL_Field is HAL.UInt3;
   subtype GPMUX0_SS2GPIN1SEL_Field is HAL.UInt3;

   --  RTC GPIO Pin Mux Control Register 0
   type GPMUX0_Register is record
      --  GPIO Mux Selection for SensorStrobe Channel 1 Input0
      SS1GPIN0SEL    : GPMUX0_SS1GPIN0SEL_Field := 16#0#;
      --  GPIO Mux Selection for SensorStrobe Channel 1 Input 1
      SS1GPIN1SEL    : GPMUX0_SS1GPIN1SEL_Field := 16#1#;
      --  GPIO Mux Selection for SensorStrobe Channel 1 Input 2
      SS1GPIN2SEL    : GPMUX0_SS1GPIN2SEL_Field := 16#2#;
      --  GPIO Mux Selection for SensorStrobe Channel 2 Input 0
      SS2GPIN0SEL    : GPMUX0_SS2GPIN0SEL_Field := 16#3#;
      --  GPIO Mux Selection for SensorStrobe Channel 2 Input 1
      SS2GPIN1SEL    : GPMUX0_SS2GPIN1SEL_Field := 16#4#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for GPMUX0_Register use record
      SS1GPIN0SEL    at 0 range 0 .. 2;
      SS1GPIN1SEL    at 0 range 3 .. 5;
      SS1GPIN2SEL    at 0 range 6 .. 8;
      SS2GPIN0SEL    at 0 range 9 .. 11;
      SS2GPIN1SEL    at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype GPMUX1_SS2GPIN2SEL_Field is HAL.UInt3;
   subtype GPMUX1_SS3GPIN0SEL_Field is HAL.UInt3;
   subtype GPMUX1_SS3GPIN1SEL_Field is HAL.UInt3;
   subtype GPMUX1_SS3GPIN2SEL_Field is HAL.UInt3;

   --  RTC GPIO Pin Mux Control Register 1
   type GPMUX1_Register is record
      --  GPIO Mux Selection for SensorStrobe Channel 2 Input 2
      SS2GPIN2SEL    : GPMUX1_SS2GPIN2SEL_Field := 16#5#;
      --  GPIO Mux Selection for SensorStrobe Channel 3 Input 0
      SS3GPIN0SEL    : GPMUX1_SS3GPIN0SEL_Field := 16#6#;
      --  GPIO Mux Selection for SensorStrobe Channel 3 Input 1
      SS3GPIN1SEL    : GPMUX1_SS3GPIN1SEL_Field := 16#7#;
      --  GPIO Mux Selection for SensorStrobe Channel 3 Input 2
      SS3GPIN2SEL    : GPMUX1_SS3GPIN2SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Differential SensorStrobe Out Option for SensorStrobe Channel 1
      SS1DIFFOUT     : Boolean := False;
      --  Differential SensorStrobe Out Option for SensorStrobe Channel 3
      SS3DIFFOUT     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for GPMUX1_Register use record
      SS2GPIN2SEL    at 0 range 0 .. 2;
      SS3GPIN0SEL    at 0 range 3 .. 5;
      SS3GPIN1SEL    at 0 range 6 .. 8;
      SS3GPIN2SEL    at 0 range 9 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SS1DIFFOUT     at 0 range 14 .. 14;
      SS3DIFFOUT     at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-Time Clock
   type RTC0_Peripheral is record
      --  RTC Control 0
      CR0        : aliased CR0_Register;
      --  RTC Status 0
      SR0        : aliased SR0_Register;
      --  RTC Status 1
      SR1        : aliased SR1_Register;
      --  RTC Count 0
      CNT0       : aliased HAL.UInt16;
      --  RTC Count 1
      CNT1       : aliased HAL.UInt16;
      --  RTC Alarm 0
      ALM0       : aliased HAL.UInt16;
      --  RTC Alarm 1
      ALM1       : aliased HAL.UInt16;
      --  RTC Trim
      TRM        : aliased TRM_Register;
      --  RTC Gateway
      GWY        : aliased HAL.UInt16;
      --  RTC Control 1
      CR1        : aliased CR1_Register;
      --  RTC Status 2
      SR2        : aliased SR2_Register;
      --  RTC Snapshot 0
      SNAP0      : aliased HAL.UInt16;
      --  RTC Snapshot 1
      SNAP1      : aliased HAL.UInt16;
      --  RTC Snapshot 2
      SNAP2      : aliased SNAP2_Register;
      --  RTC Modulo
      MOD_k      : aliased MOD_Register;
      --  RTC Count 2
      CNT2       : aliased CNT2_Register;
      --  RTC Alarm 2
      ALM2       : aliased ALM2_Register;
      --  RTC Status 3
      SR3        : aliased SR3_Register;
      --  RTC Control 2 for Configuring Input Capture Channels
      CR2IC      : aliased CR2IC_Register;
      --  RTC Control 3 for Configuring SensorStrobe Channel
      CR3SS      : aliased CR3SS_Register;
      --  RTC Control 4 for Configuring SensorStrobe Channel
      CR4SS      : aliased CR4SS_Register;
      --  RTC Mask for SensorStrobe Channel
      SSMSK      : aliased SSMSK_Register;
      --  RTC Input Capture Channel 2
      IC2        : aliased HAL.UInt16;
      --  RTC Input Capture Channel 3
      IC3        : aliased HAL.UInt16;
      --  RTC Input Capture Channel 4
      IC4        : aliased HAL.UInt16;
      --  RTC SensorStrobe Channel 1
      SS1        : aliased HAL.UInt16;
      --  RTC SensorStrobe Channel 2
      SS2        : aliased HAL.UInt16;
      --  RTC SensorStrobe Channel 3
      SS3        : aliased HAL.UInt16;
      --  RTC SensorStrobe Channel 4
      SS4        : aliased HAL.UInt16;
      --  RTC Status 4
      SR4        : aliased SR4_Register;
      --  RTC Status 5
      SR5        : aliased SR5_Register;
      --  RTC Status 6
      SR6        : aliased SR6_Register;
      --  RTC SensorStrobe Channel 1 Target
      SS1TGT     : aliased HAL.UInt16;
      --  RTC Freeze Count
      FRZCNT     : aliased HAL.UInt16;
      --  RTC SensorStrobe Channel 2 Target
      SS2TGT     : aliased HAL.UInt16;
      --  RTC SensorStrobe Channel 3 Target
      SS3TGT     : aliased HAL.UInt16;
      --  RTC Auto-Reload Low Duration for SensorStrobe Channel 1
      SS1LOWDUR  : aliased HAL.UInt16;
      --  RTC Auto-Reload Low Duration for SensorStrobe Channel 2
      SS2LOWDUR  : aliased HAL.UInt16;
      --  RTC Auto-Reload Low Duration for SensorStrobe Channel 3
      SS3LOWDUR  : aliased HAL.UInt16;
      --  RTC Auto-Reload High Duration for SensorStrobe Channel 1
      SS1HIGHDUR : aliased HAL.UInt16;
      --  RTC Auto-Reload High Duration for SensorStrobe Channel 2
      SS2HIGHDUR : aliased HAL.UInt16;
      --  RTC Auto-Reload High Duration for SensorStrobe Channel 3
      SS3HIGHDUR : aliased HAL.UInt16;
      --  RTC Masks for SensorStrobe Channels on Time Control
      SSMSKOT    : aliased SSMSKOT_Register;
      --  RTC Control 5 for Configuring SensorStrobe Channel GPIO Sampling
      CR5SSS     : aliased CR5SSS_Register;
      --  RTC Control 6 for Configuring SensorStrobe Channel GPIO Sampling Edge
      CR6SSS     : aliased CR6SSS_Register;
      --  RTC Control 7 for Configuring SensorStrobe Channel GPIO Sampling
      --  Activity
      CR7SSS     : aliased CR7SSS_Register;
      --  RTC Status 7
      SR7        : aliased SR7_Register;
      --  RTC Status 8
      SR8        : aliased SR8_Register;
      --  RTC Status 9
      SR9        : aliased SR9_Register;
      --  RTC GPIO Pin Mux Control Register 0
      GPMUX0     : aliased GPMUX0_Register;
      --  RTC GPIO Pin Mux Control Register 1
      GPMUX1     : aliased GPMUX1_Register;
   end record
     with Volatile;

   for RTC0_Peripheral use record
      CR0        at 16#0# range 0 .. 15;
      SR0        at 16#4# range 0 .. 15;
      SR1        at 16#8# range 0 .. 15;
      CNT0       at 16#C# range 0 .. 15;
      CNT1       at 16#10# range 0 .. 15;
      ALM0       at 16#14# range 0 .. 15;
      ALM1       at 16#18# range 0 .. 15;
      TRM        at 16#1C# range 0 .. 15;
      GWY        at 16#20# range 0 .. 15;
      CR1        at 16#28# range 0 .. 15;
      SR2        at 16#2C# range 0 .. 15;
      SNAP0      at 16#30# range 0 .. 15;
      SNAP1      at 16#34# range 0 .. 15;
      SNAP2      at 16#38# range 0 .. 15;
      MOD_k      at 16#3C# range 0 .. 15;
      CNT2       at 16#40# range 0 .. 15;
      ALM2       at 16#44# range 0 .. 15;
      SR3        at 16#48# range 0 .. 15;
      CR2IC      at 16#4C# range 0 .. 15;
      CR3SS      at 16#50# range 0 .. 15;
      CR4SS      at 16#54# range 0 .. 15;
      SSMSK      at 16#58# range 0 .. 15;
      IC2        at 16#64# range 0 .. 15;
      IC3        at 16#68# range 0 .. 15;
      IC4        at 16#6C# range 0 .. 15;
      SS1        at 16#70# range 0 .. 15;
      SS2        at 16#74# range 0 .. 15;
      SS3        at 16#78# range 0 .. 15;
      SS4        at 16#7C# range 0 .. 15;
      SR4        at 16#80# range 0 .. 15;
      SR5        at 16#84# range 0 .. 15;
      SR6        at 16#88# range 0 .. 15;
      SS1TGT     at 16#8C# range 0 .. 15;
      FRZCNT     at 16#90# range 0 .. 15;
      SS2TGT     at 16#94# range 0 .. 15;
      SS3TGT     at 16#98# range 0 .. 15;
      SS1LOWDUR  at 16#A0# range 0 .. 15;
      SS2LOWDUR  at 16#A4# range 0 .. 15;
      SS3LOWDUR  at 16#A8# range 0 .. 15;
      SS1HIGHDUR at 16#B0# range 0 .. 15;
      SS2HIGHDUR at 16#B4# range 0 .. 15;
      SS3HIGHDUR at 16#B8# range 0 .. 15;
      SSMSKOT    at 16#C0# range 0 .. 15;
      CR5SSS     at 16#C4# range 0 .. 15;
      CR6SSS     at 16#C8# range 0 .. 15;
      CR7SSS     at 16#CC# range 0 .. 15;
      SR7        at 16#D0# range 0 .. 15;
      SR8        at 16#D4# range 0 .. 15;
      SR9        at 16#D8# range 0 .. 15;
      GPMUX0     at 16#E0# range 0 .. 15;
      GPMUX1     at 16#E4# range 0 .. 15;
   end record;

   --  Real-Time Clock
   RTC0_Periph : aliased RTC0_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

   --  Real-Time Clock
   RTC1_Periph : aliased RTC0_Peripheral
     with Import, Address => System'To_Address (16#40001400#);

end NRF_SVD.RTC0;
