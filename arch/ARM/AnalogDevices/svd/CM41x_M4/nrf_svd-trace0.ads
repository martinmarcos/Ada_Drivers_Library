--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TRACE0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Supported Sync Port Sizes Register.
   type SSPSR_Register is record
      --  Read-only. 1-bit port size support
      One           : Boolean;
      --  Read-only. 2-bit port size support
      Two           : Boolean;
      --  Read-only. 3-bit port size support
      Three         : Boolean;
      --  Read-only. 4-bit port size support
      Four          : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSPSR_Register use record
      One           at 0 range 0 .. 0;
      Two           at 0 range 1 .. 1;
      Three         at 0 range 2 .. 2;
      Four          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Current Sync Port Size Register.
   type CSPSR_Register is record
      --  1-bit port enable
      One           : Boolean := True;
      --  2-bit port enable
      Two           : Boolean := False;
      --  3-bit port enable
      Three         : Boolean := False;
      --  4-bit port enable
      Four          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSPSR_Register use record
      One           at 0 range 0 .. 0;
      Two           at 0 range 1 .. 1;
      Three         at 0 range 2 .. 2;
      Four          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ACPR_PRESCALER_Field is HAL.UInt13;

   --  Async Clock Prescaler Register.
   type ACPR_Register is record
      --  Divisor for TRACECLKIN is Prescaler + 1.
      PRESCALER      : ACPR_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACPR_Register use record
      PRESCALER      at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype SPPR_PROTOCOL_Field is HAL.UInt2;

   --  Selected Pin Protocol Register.
   type SPPR_Register is record
      --  Trace output protocol
      PROTOCOL      : SPPR_PROTOCOL_Field := 16#1#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPPR_Register use record
      PROTOCOL      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Formatter and Flush Status Register.
   type FFSR_Register is record
      --  Read-only. This bit always reads as zero
      FlInProg      : Boolean;
      --  Read-only. This bit always reads as zero
      FtStopped     : Boolean;
      --  Read-only. This bit always reads as zero
      TCPresent     : Boolean;
      --  Read-only. Formatter cannot be stopped
      FtNonStop     : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FFSR_Register use record
      FlInProg      at 0 range 0 .. 0;
      FtStopped     at 0 range 1 .. 1;
      TCPresent     at 0 range 2 .. 2;
      FtNonStop     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Formatter and Flush Control Register.
   type FFCR_Register is record
      --  Enable Formatting.
      EnFTC          : Boolean := False;
      --  Continuous Formatting, no TRACECTL.
      EnFCont        : Boolean := True;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Generate flush using the FLUSHIN interface.
      FOnFlln        : Boolean := False;
      --  Generate flush using Trigger event.
      FOnTrig        : Boolean := False;
      --  Manually generate a flush of the system.
      FOnMan         : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Indicate a trigger on TRIGIN being asserted.
      TrigIN         : Boolean := True;
      --  Indicate a trigger on a Trigger Event.
      TrigEVT        : Boolean := False;
      --  Indicates a trigger on Flush completion.
      TrigFI         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Stop the formatter after a flush completes.
      StopFI         : Boolean := False;
      --  Stop the formatter after a Trigger Event is observed.
      StopTrig       : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FFCR_Register use record
      EnFTC          at 0 range 0 .. 0;
      EnFCont        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FOnFlln        at 0 range 4 .. 4;
      FOnTrig        at 0 range 5 .. 5;
      FOnMan         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TrigIN         at 0 range 8 .. 8;
      TrigEVT        at 0 range 9 .. 9;
      TrigFI         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      StopFI         at 0 range 12 .. 12;
      StopTrig       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Integration Register: TRIGGER.
   type TRIGGER_Register is record
      --  Read-only. Enables the TRIGGER input
      TRIGGER_input_value : Boolean;
      --  unspecified
      Reserved_1_31       : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIGGER_Register use record
      TRIGGER_input_value at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   subtype FIFO_data_0_FIFO1_data_0_Field is HAL.UInt8;
   subtype FIFO_data_0_FIFO1_data_1_Field is HAL.UInt8;
   subtype FIFO_data_0_FIFO1_data_2_Field is HAL.UInt8;
   subtype FIFO_data_0_Write_point_1_Field is HAL.UInt2;
   subtype FIFO_data_0_Write_point_2_Field is HAL.UInt2;

   --  Integration register: FIFO data 0.
   type FIFO_data_0_Register is record
      --  Read-only. Fifo1 Data 0
      FIFO1_data_0   : FIFO_data_0_FIFO1_data_0_Field;
      --  Read-only. Fifo1 Data 1
      FIFO1_data_1   : FIFO_data_0_FIFO1_data_1_Field;
      --  Read-only. Fifo1 Data 2
      FIFO1_data_2   : FIFO_data_0_FIFO1_data_2_Field;
      --  Read-only. Write Point 1
      Write_point_1  : FIFO_data_0_Write_point_1_Field;
      --  Read-only. Value
      ATVALID1S      : Boolean;
      --  Read-only. Write Point 2
      Write_point_2  : FIFO_data_0_Write_point_2_Field;
      --  Read-only. Value
      ATVALID2S      : Boolean;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_data_0_Register use record
      FIFO1_data_0   at 0 range 0 .. 7;
      FIFO1_data_1   at 0 range 8 .. 15;
      FIFO1_data_2   at 0 range 16 .. 23;
      Write_point_1  at 0 range 24 .. 25;
      ATVALID1S      at 0 range 26 .. 26;
      Write_point_2  at 0 range 27 .. 28;
      ATVALID2S      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Integration Register: ITATBCTR2.
   type ITATBCTR2_Register is record
      --  Read-only. Atready1 Atready2
      ATREADY1_ATREADY2 : Boolean;
      --  unspecified
      Reserved_1_31     : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITATBCTR2_Register use record
      ATREADY1_ATREADY2 at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Integration Register: ITATBCTR0.
   type ITATBCTR0_Register is record
      --  Read-only. Atvalid1 Atvalid2
      ATVALID1_ATVALID2 : Boolean;
      --  unspecified
      Reserved_1_31     : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITATBCTR0_Register use record
      ATVALID1_ATVALID2 at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype FIFO_data_1_FIFO2_data_0_Field is HAL.UInt8;
   subtype FIFO_data_1_FIFO2_data_1_Field is HAL.UInt8;
   subtype FIFO_data_1_FIFO2_data_2_Field is HAL.UInt8;
   subtype FIFO_data_1_Write_point_1_Field is HAL.UInt2;
   subtype FIFO_data_1_Write_point_2_Field is HAL.UInt2;

   --  Integration register: FIFO data 1.
   type FIFO_data_1_Register is record
      --  Read-only. Fifo2 Data 0
      FIFO2_data_0   : FIFO_data_1_FIFO2_data_0_Field;
      --  Read-only. Fifo2 Data 1
      FIFO2_data_1   : FIFO_data_1_FIFO2_data_1_Field;
      --  Read-only. Fifo2 Data 2
      FIFO2_data_2   : FIFO_data_1_FIFO2_data_2_Field;
      --  Read-only. Write Point 1
      Write_point_1  : FIFO_data_1_Write_point_1_Field;
      --  Read-only. Value
      ATVALID1S      : Boolean;
      --  Read-only. Write Point 2
      Write_point_2  : FIFO_data_1_Write_point_2_Field;
      --  Read-only. Value
      ATVALID2S      : Boolean;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_data_1_Register use record
      FIFO2_data_0   at 0 range 0 .. 7;
      FIFO2_data_1   at 0 range 8 .. 15;
      FIFO2_data_2   at 0 range 16 .. 23;
      Write_point_1  at 0 range 24 .. 25;
      ATVALID1S      at 0 range 26 .. 26;
      Write_point_2  at 0 range 27 .. 28;
      ATVALID2S      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Integration Mode Control Register.
   type ITCTRL_Register is record
      --  Enables integration test mode
      Integration_test_mode : Boolean := False;
      --  Enables FIFO test mode
      FIFO_test_mode        : Boolean := False;
      --  unspecified
      Reserved_2_31         : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITCTRL_Register use record
      Integration_test_mode at 0 range 0 .. 0;
      FIFO_test_mode        at 0 range 1 .. 1;
      Reserved_2_31         at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Trace Port Interface Unit
   type TRACE0_Peripheral is record
      --  Supported Sync Port Sizes Register.
      SSPSR       : aliased SSPSR_Register;
      --  Current Sync Port Size Register.
      CSPSR       : aliased CSPSR_Register;
      --  Async Clock Prescaler Register.
      ACPR        : aliased ACPR_Register;
      --  Selected Pin Protocol Register.
      SPPR        : aliased SPPR_Register;
      --  Formatter and Flush Status Register.
      FFSR        : aliased FFSR_Register;
      --  Formatter and Flush Control Register.
      FFCR        : aliased FFCR_Register;
      --  Formatter Synchronization Counter Register.
      FSCR        : aliased HAL.UInt32;
      --  Integration Register: TRIGGER.
      TRIGGER     : aliased TRIGGER_Register;
      --  Integration register: FIFO data 0.
      FIFO_data_0 : aliased FIFO_data_0_Register;
      --  Integration Register: ITATBCTR2.
      ITATBCTR2   : aliased ITATBCTR2_Register;
      --  Integration Register: ITATBCTR0.
      ITATBCTR0   : aliased ITATBCTR0_Register;
      --  Integration register: FIFO data 1.
      FIFO_data_1 : aliased FIFO_data_1_Register;
      --  Integration Mode Control Register.
      ITCTRL      : aliased ITCTRL_Register;
      --  Claim tag set register.
      CLAIMSET    : aliased HAL.UInt32;
      --  Claim tag clear register.
      CLAIMCLR    : aliased HAL.UInt32;
      --  Device ID register.
      DEVID       : aliased HAL.UInt32;
      --  Peripheral identification register (PID4).
      PID4        : aliased HAL.UInt32;
      --  Peripheral identification register (PID5).
      PID5        : aliased HAL.UInt32;
      --  Peripheral identification register (PID6).
      PID6        : aliased HAL.UInt32;
      --  Peripheral identification register (PID7).
      PID7        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 7:0 (PID0).
      PID0        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 15:8 (PID1).
      PID1        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 23:16 (PID2).
      PID2        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 31:24 (PID3).
      PID3        : aliased HAL.UInt32;
      --  Component identification register Bits 7:0 (CID0).
      CID0        : aliased HAL.UInt32;
      --  Component identification register Bits 15:8 (CID1).
      CID1        : aliased HAL.UInt32;
      --  Component identification register Bits 23:16 (CID2).
      CID2        : aliased HAL.UInt32;
      --  Component identification register Bits 31:24 (CID3).
      CID3        : aliased HAL.UInt32;
   end record
     with Volatile;

   for TRACE0_Peripheral use record
      SSPSR       at 16#0# range 0 .. 31;
      CSPSR       at 16#4# range 0 .. 31;
      ACPR        at 16#10# range 0 .. 31;
      SPPR        at 16#F0# range 0 .. 31;
      FFSR        at 16#300# range 0 .. 31;
      FFCR        at 16#304# range 0 .. 31;
      FSCR        at 16#308# range 0 .. 31;
      TRIGGER     at 16#EE8# range 0 .. 31;
      FIFO_data_0 at 16#EEC# range 0 .. 31;
      ITATBCTR2   at 16#EF0# range 0 .. 31;
      ITATBCTR0   at 16#EF8# range 0 .. 31;
      FIFO_data_1 at 16#EFC# range 0 .. 31;
      ITCTRL      at 16#F00# range 0 .. 31;
      CLAIMSET    at 16#FA0# range 0 .. 31;
      CLAIMCLR    at 16#FA4# range 0 .. 31;
      DEVID       at 16#FC8# range 0 .. 31;
      PID4        at 16#FD0# range 0 .. 31;
      PID5        at 16#FD4# range 0 .. 31;
      PID6        at 16#FD8# range 0 .. 31;
      PID7        at 16#FDC# range 0 .. 31;
      PID0        at 16#FE0# range 0 .. 31;
      PID1        at 16#FE4# range 0 .. 31;
      PID2        at 16#FE8# range 0 .. 31;
      PID3        at 16#FEC# range 0 .. 31;
      CID0        at 16#FF0# range 0 .. 31;
      CID1        at 16#FF4# range 0 .. 31;
      CID2        at 16#FF8# range 0 .. 31;
      CID3        at 16#FFC# range 0 .. 31;
   end record;

   --  Trace Port Interface Unit
   TRACE0_Periph : aliased TRACE0_Peripheral
     with Import, Address => System'To_Address (16#E0040000#);

end NRF_SVD.TRACE0;
