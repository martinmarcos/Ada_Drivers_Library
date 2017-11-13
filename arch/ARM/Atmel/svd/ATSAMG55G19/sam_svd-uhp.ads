--  This spec has been automatically generated from ATSAMG55G19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  USB Host Port
package SAM_SVD.UHP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype UHP_HCREVISION_REV_Field is HAL.UInt8;

   --  OHCI Revision Number Register
   type UHP_HCREVISION_Register is record
      --  Read-only. OHCI revision number
      REV           : UHP_HCREVISION_REV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCREVISION_Register use record
      REV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UHP_HCCONTROL_CBSR_Field is HAL.UInt2;
   subtype UHP_HCCONTROL_HCFS_Field is HAL.UInt2;

   --  HC Operating Mode Register
   type UHP_HCCONTROL_Register is record
      --  Control/bulk service ratio
      CBSR           : UHP_HCCONTROL_CBSR_Field := 16#0#;
      --  Periodic list enable
      PLE            : Boolean := False;
      --  Isochronous enable
      IE             : Boolean := False;
      --  Control list enable
      CLE            : Boolean := False;
      --  Bulk list enable
      BLE            : Boolean := False;
      --  Host controller functional state
      HCFS           : UHP_HCCONTROL_HCFS_Field := 16#0#;
      --  Interrupt routing
      IR             : Boolean := False;
      --  Remote wake-up connected
      RWC            : Boolean := False;
      --  Remote wake-up enable
      RWE            : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCCONTROL_Register use record
      CBSR           at 0 range 0 .. 1;
      PLE            at 0 range 2 .. 2;
      IE             at 0 range 3 .. 3;
      CLE            at 0 range 4 .. 4;
      BLE            at 0 range 5 .. 5;
      HCFS           at 0 range 6 .. 7;
      IR             at 0 range 8 .. 8;
      RWC            at 0 range 9 .. 9;
      RWE            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype UHP_HCCOMMANDSTATUS_SOC_Field is HAL.UInt2;

   --  HC Command and Status Register
   type UHP_HCCOMMANDSTATUS_Register is record
      --  Host controller reset (read/write)
      HCR            : Boolean := False;
      --  Control list filled (read/write)
      CLF            : Boolean := False;
      --  Bulk list filled (read/write)
      BLF            : Boolean := False;
      --  Ownership change request (read/write)
      OCR            : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Scheduling overrun count (read-only)
      SOC            : UHP_HCCOMMANDSTATUS_SOC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCCOMMANDSTATUS_Register use record
      HCR            at 0 range 0 .. 0;
      CLF            at 0 range 1 .. 1;
      BLF            at 0 range 2 .. 2;
      OCR            at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOC            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  HC Interrupt and Status Register
   type UHP_HCINTERRUPTSTATUS_Register is record
      --  Scheduling overrun (read/write, write '1' to clear)
      SO             : Boolean := False;
      --  Write done head (read/write, write '1' to clear)
      WDH            : Boolean := False;
      --  Start of frame (read/write, write '1' to clear)
      SF             : Boolean := False;
      --  Resume detected (read/write, write '1' to clear)
      RD             : Boolean := False;
      --  Unrecoverable error (read/write, write '1' to clear)
      UE             : Boolean := False;
      --  Frame number overflow (read/write, write '1' to clear)
      FNO            : Boolean := False;
      --  Root hub status change (read/write, write '1' to clear)
      RHSC           : Boolean := False;
      --  unspecified
      Reserved_7_29  : HAL.UInt23 := 16#0#;
      --  Ownership change (read-only)
      OC             : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCINTERRUPTSTATUS_Register use record
      SO             at 0 range 0 .. 0;
      WDH            at 0 range 1 .. 1;
      SF             at 0 range 2 .. 2;
      RD             at 0 range 3 .. 3;
      UE             at 0 range 4 .. 4;
      FNO            at 0 range 5 .. 5;
      RHSC           at 0 range 6 .. 6;
      Reserved_7_29  at 0 range 7 .. 29;
      OC             at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  HC Interrupt Enable Register
   type UHP_HCINTERRUPTENABLE_Register is record
      --  Scheduling overrun (read/write, write '1' to set)
      SO            : Boolean := False;
      --  Write done head (read/write, write '1' to set)
      WDH           : Boolean := False;
      --  Start of frame (read/write, write '1' to set)
      SF            : Boolean := False;
      --  Resume detected (read/write, write '1' to set)
      RD            : Boolean := False;
      --  Unrecoverable error (read/write, write '1' to set)
      UE            : Boolean := False;
      --  Frame number overflow (read/write, write '1' to set)
      FNO           : Boolean := False;
      --  Root hub status change (read/write, write '1' to set)
      RHSC          : Boolean := False;
      --  unspecified
      Reserved_7_29 : HAL.UInt23 := 16#0#;
      --  Ownership change (read-only)
      OC            : Boolean := False;
      --  Master interrupt enable (read/write, write '1' to set)
      MIE           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCINTERRUPTENABLE_Register use record
      SO            at 0 range 0 .. 0;
      WDH           at 0 range 1 .. 1;
      SF            at 0 range 2 .. 2;
      RD            at 0 range 3 .. 3;
      UE            at 0 range 4 .. 4;
      FNO           at 0 range 5 .. 5;
      RHSC          at 0 range 6 .. 6;
      Reserved_7_29 at 0 range 7 .. 29;
      OC            at 0 range 30 .. 30;
      MIE           at 0 range 31 .. 31;
   end record;

   --  HC Interrupt Disable Register
   type UHP_HCINTERRUPTDISABLE_Register is record
      --  Scheduling overrun (read/write)
      SO            : Boolean := False;
      --  Write done head (read/write)
      WDH           : Boolean := False;
      --  Start of frame (read/write)
      SF            : Boolean := False;
      --  Resume detected (read/write)
      RD            : Boolean := False;
      --  Unrecoverable error (read/write)
      UE            : Boolean := False;
      --  Frame number overflow (read/write)
      FNO           : Boolean := False;
      --  Root hub status change (read/write)
      RHSC          : Boolean := False;
      --  unspecified
      Reserved_7_29 : HAL.UInt23 := 16#0#;
      --  Ownership change (read-only)
      OC            : Boolean := False;
      --  Master interrupt enable (read/write)
      MIE           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCINTERRUPTDISABLE_Register use record
      SO            at 0 range 0 .. 0;
      WDH           at 0 range 1 .. 1;
      SF            at 0 range 2 .. 2;
      RD            at 0 range 3 .. 3;
      UE            at 0 range 4 .. 4;
      FNO           at 0 range 5 .. 5;
      RHSC          at 0 range 6 .. 6;
      Reserved_7_29 at 0 range 7 .. 29;
      OC            at 0 range 30 .. 30;
      MIE           at 0 range 31 .. 31;
   end record;

   subtype UHP_HCHCCA_HCCA_Field is HAL.UInt24;

   --  HC HCCA Address Register
   type UHP_HCHCCA_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8 := 16#0#;
      --  Physical address of the beginning of the HCCA
      HCCA         : UHP_HCHCCA_HCCA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCHCCA_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      HCCA         at 0 range 8 .. 31;
   end record;

   subtype UHP_HCPERIODCURRENTED_PCED_Field is HAL.UInt28;

   --  HC Current Periodic Register
   type UHP_HCPERIODCURRENTED_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4;
      --  Read-only. Physical address of the current ED on the periodic ED list
      PCED         : UHP_HCPERIODCURRENTED_PCED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCPERIODCURRENTED_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PCED         at 0 range 4 .. 31;
   end record;

   subtype UHP_HCCONTROLHEADED_CHED_Field is HAL.UInt28;

   --  HC Head Control Register
   type UHP_HCCONTROLHEADED_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Physical address of the head ED on the control ED list
      CHED         : UHP_HCCONTROLHEADED_CHED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCCONTROLHEADED_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      CHED         at 0 range 4 .. 31;
   end record;

   subtype UHP_HCCONTROLCURRENTED_CCED_Field is HAL.UInt28;

   --  HC Current Control Register
   type UHP_HCCONTROLCURRENTED_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Physical address of the current ED on the control ED list
      CCED         : UHP_HCCONTROLCURRENTED_CCED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCCONTROLCURRENTED_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      CCED         at 0 range 4 .. 31;
   end record;

   subtype UHP_HCBULKHEADED_BHED_Field is HAL.UInt28;

   --  HC Head Bulk Register
   type UHP_HCBULKHEADED_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Physical address of the head ED on the bulk ED list
      BHED         : UHP_HCBULKHEADED_BHED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCBULKHEADED_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      BHED         at 0 range 4 .. 31;
   end record;

   subtype UHP_HCBULKCURRENTED_BCED_Field is HAL.UInt28;

   --  HC Current Bulk Register
   type UHP_HCBULKCURRENTED_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Physical address of the current ED on the bulk ED list
      BCED         : UHP_HCBULKCURRENTED_BCED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCBULKCURRENTED_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      BCED         at 0 range 4 .. 31;
   end record;

   subtype UHP_HCDONEHEAD_DH_Field is HAL.UInt28;

   --  HC Head Done Register
   type UHP_HCDONEHEAD_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4;
      --  Read-only. Physical address of the last TD that has added to the done
      --  queue
      DH           : UHP_HCDONEHEAD_DH_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCDONEHEAD_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      DH           at 0 range 4 .. 31;
   end record;

   subtype UHP_HCFMINTERVAL_FRAMEINTERVAL_Field is HAL.UInt14;
   subtype UHP_HCFMINTERVAL_FSMPS_Field is HAL.UInt15;

   --  HC Frame Interval Register
   type UHP_HCFMINTERVAL_Register is record
      --  Frame interval
      FRAMEINTERVAL  : UHP_HCFMINTERVAL_FRAMEINTERVAL_Field := 16#2EDF#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Largest data packet
      FSMPS          : UHP_HCFMINTERVAL_FSMPS_Field := 16#0#;
      --  Frame interval toggle
      FIT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCFMINTERVAL_Register use record
      FRAMEINTERVAL  at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FSMPS          at 0 range 16 .. 30;
      FIT            at 0 range 31 .. 31;
   end record;

   subtype UHP_HCFMREMAINING_FR_Field is HAL.UInt14;

   --  HC Frame Remaining Register
   type UHP_HCFMREMAINING_Register is record
      --  Read-only. Frame remaining
      FR             : UHP_HCFMREMAINING_FR_Field;
      --  unspecified
      Reserved_14_30 : HAL.UInt17;
      --  Read-only. Frame remaining toggle
      FRT            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCFMREMAINING_Register use record
      FR             at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      FRT            at 0 range 31 .. 31;
   end record;

   subtype UHP_HCFMNUMBER_FN_Field is HAL.UInt16;

   --  HC Frame Number Register
   type UHP_HCFMNUMBER_Register is record
      --  Read-only. Frame number
      FN             : UHP_HCFMNUMBER_FN_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCFMNUMBER_Register use record
      FN             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UHP_HCPERIODICSTART_PS_Field is HAL.UInt14;

   --  HC Periodic Start Register
   type UHP_HCPERIODICSTART_Register is record
      --  Periodic start
      PS             : UHP_HCPERIODICSTART_PS_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCPERIODICSTART_Register use record
      PS             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype UHP_HCLSTHRESHOLD_LST_Field is HAL.UInt14;

   --  HC Low-Speed Threshold Register
   type UHP_HCLSTHRESHOLD_Register is record
      --  Low-speed threshold
      LST            : UHP_HCLSTHRESHOLD_LST_Field := 16#628#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCLSTHRESHOLD_Register use record
      LST            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype UHP_HCRHDESCRIPTORA_NDP_Field is HAL.UInt8;
   subtype UHP_HCRHDESCRIPTORA_POTPG_Field is HAL.UInt8;

   --  HC Root Hub A Register
   type UHP_HCRHDESCRIPTORA_Register is record
      --  Number of downstream ports (read-only)
      NDP            : UHP_HCRHDESCRIPTORA_NDP_Field := 16#3#;
      --  Power switching mode (read/write)
      PSM            : Boolean := False;
      --  No power switching (read/write)
      NPS            : Boolean := True;
      --  Device type (read-only)
      DT             : Boolean := False;
      --  Overcurrent protection mode (read/write)
      OCPM           : Boolean := False;
      --  No overcurrent protection (read/write)
      NOCP           : Boolean := True;
      --  unspecified
      Reserved_13_23 : HAL.UInt11 := 16#0#;
      --  Power-on to power-good time (read/write)
      POTPG          : UHP_HCRHDESCRIPTORA_POTPG_Field := 16#A#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCRHDESCRIPTORA_Register use record
      NDP            at 0 range 0 .. 7;
      PSM            at 0 range 8 .. 8;
      NPS            at 0 range 9 .. 9;
      DT             at 0 range 10 .. 10;
      OCPM           at 0 range 11 .. 11;
      NOCP           at 0 range 12 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      POTPG          at 0 range 24 .. 31;
   end record;

   --  UHP_HCRHDESCRIPTORB_DR array
   type UHP_HCRHDESCRIPTORB_DR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for UHP_HCRHDESCRIPTORB_DR
   type UHP_HCRHDESCRIPTORB_DR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DR as a value
            Val : HAL.UInt16;
         when True =>
            --  DR as an array
            Arr : UHP_HCRHDESCRIPTORB_DR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for UHP_HCRHDESCRIPTORB_DR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  UHP_HCRHDESCRIPTORB_PPCM array
   type UHP_HCRHDESCRIPTORB_PPCM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for UHP_HCRHDESCRIPTORB_PPCM
   type UHP_HCRHDESCRIPTORB_PPCM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPCM as a value
            Val : HAL.UInt16;
         when True =>
            --  PPCM as an array
            Arr : UHP_HCRHDESCRIPTORB_PPCM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for UHP_HCRHDESCRIPTORB_PPCM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HC Root Hub B Register
   type UHP_HCRHDESCRIPTORB_Register is record
      DR   : UHP_HCRHDESCRIPTORB_DR_Field :=
              (As_Array => False, Val => 16#0#);
      PPCM : UHP_HCRHDESCRIPTORB_PPCM_Field :=
              (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCRHDESCRIPTORB_Register use record
      DR   at 0 range 0 .. 15;
      PPCM at 0 range 16 .. 31;
   end record;

   --  HC Root Hub Status Register
   type UHP_HCRHSTATUS_Register is record
      --  Local power status (read/write)
      LPS            : Boolean := False;
      --  Overcurrent indicator (read-only)
      OCI            : Boolean := False;
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  Device remote wake-up enable (read/write)
      DRWE           : Boolean := False;
      --  Local power status change (read/write)
      LPSC           : Boolean := False;
      --  Overcurrent indication change (read/write)
      OCIC           : Boolean := False;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Clear remote wake-up enable (read/write)
      CRWE           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCRHSTATUS_Register use record
      LPS            at 0 range 0 .. 0;
      OCI            at 0 range 1 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      DRWE           at 0 range 15 .. 15;
      LPSC           at 0 range 16 .. 16;
      OCIC           at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      CRWE           at 0 range 31 .. 31;
   end record;

   --  HC Port 1 Status and Control Register
   type UHP_HCRHPORTSTATUS_Register is record
      CCS_CPE        : Boolean := False;
      PES_SPE        : Boolean := False;
      PSS_SPS        : Boolean := False;
      POCI_CSS       : Boolean := False;
      PRS_SPR        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      PPS_SPP        : Boolean := False;
      LSDA_CPP       : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Port 1 connect status change (read/write, write '1' to clear)
      CSC            : Boolean := False;
      --  Port 1 enable status change (read/write, write '1' to clear)
      PESC           : Boolean := False;
      --  Port 1 suspend status change (read/write, write '1' to clear)
      PSSC           : Boolean := False;
      --  Port 1 overcurrent indicator change (read/write)
      OCIC           : Boolean := False;
      --  Port 1 reset status change (read/write, write '1' to clear)
      PRSC           : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHP_HCRHPORTSTATUS_Register use record
      CCS_CPE        at 0 range 0 .. 0;
      PES_SPE        at 0 range 1 .. 1;
      PSS_SPS        at 0 range 2 .. 2;
      POCI_CSS       at 0 range 3 .. 3;
      PRS_SPR        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PPS_SPP        at 0 range 8 .. 8;
      LSDA_CPP       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CSC            at 0 range 16 .. 16;
      PESC           at 0 range 17 .. 17;
      PSSC           at 0 range 18 .. 18;
      OCIC           at 0 range 19 .. 19;
      PRSC           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  HC Port 1 Status and Control Register
   type UHP_HCRHPORTSTATUS_Registers is array (0 .. 1)
     of UHP_HCRHPORTSTATUS_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  USB Host Port
   type UHP_Peripheral is record
      --  OHCI Revision Number Register
      HCREVISION         : aliased UHP_HCREVISION_Register;
      --  HC Operating Mode Register
      HCCONTROL          : aliased UHP_HCCONTROL_Register;
      --  HC Command and Status Register
      HCCOMMANDSTATUS    : aliased UHP_HCCOMMANDSTATUS_Register;
      --  HC Interrupt and Status Register
      HCINTERRUPTSTATUS  : aliased UHP_HCINTERRUPTSTATUS_Register;
      --  HC Interrupt Enable Register
      HCINTERRUPTENABLE  : aliased UHP_HCINTERRUPTENABLE_Register;
      --  HC Interrupt Disable Register
      HCINTERRUPTDISABLE : aliased UHP_HCINTERRUPTDISABLE_Register;
      --  HC HCCA Address Register
      HCHCCA             : aliased UHP_HCHCCA_Register;
      --  HC Current Periodic Register
      HCPERIODCURRENTED  : aliased UHP_HCPERIODCURRENTED_Register;
      --  HC Head Control Register
      HCCONTROLHEADED    : aliased UHP_HCCONTROLHEADED_Register;
      --  HC Current Control Register
      HCCONTROLCURRENTED : aliased UHP_HCCONTROLCURRENTED_Register;
      --  HC Head Bulk Register
      HCBULKHEADED       : aliased UHP_HCBULKHEADED_Register;
      --  HC Current Bulk Register
      HCBULKCURRENTED    : aliased UHP_HCBULKCURRENTED_Register;
      --  HC Head Done Register
      HCDONEHEAD         : aliased UHP_HCDONEHEAD_Register;
      --  HC Frame Interval Register
      HCFMINTERVAL       : aliased UHP_HCFMINTERVAL_Register;
      --  HC Frame Remaining Register
      HCFMREMAINING      : aliased UHP_HCFMREMAINING_Register;
      --  HC Frame Number Register
      HCFMNUMBER         : aliased UHP_HCFMNUMBER_Register;
      --  HC Periodic Start Register
      HCPERIODICSTART    : aliased UHP_HCPERIODICSTART_Register;
      --  HC Low-Speed Threshold Register
      HCLSTHRESHOLD      : aliased UHP_HCLSTHRESHOLD_Register;
      --  HC Root Hub A Register
      HCRHDESCRIPTORA    : aliased UHP_HCRHDESCRIPTORA_Register;
      --  HC Root Hub B Register
      HCRHDESCRIPTORB    : aliased UHP_HCRHDESCRIPTORB_Register;
      --  HC Root Hub Status Register
      HCRHSTATUS         : aliased UHP_HCRHSTATUS_Register;
      --  HC Port 1 Status and Control Register
      HCRHPORTSTATUS     : aliased UHP_HCRHPORTSTATUS_Registers;
   end record
     with Volatile;

   for UHP_Peripheral use record
      HCREVISION         at 16#0# range 0 .. 31;
      HCCONTROL          at 16#4# range 0 .. 31;
      HCCOMMANDSTATUS    at 16#8# range 0 .. 31;
      HCINTERRUPTSTATUS  at 16#C# range 0 .. 31;
      HCINTERRUPTENABLE  at 16#10# range 0 .. 31;
      HCINTERRUPTDISABLE at 16#14# range 0 .. 31;
      HCHCCA             at 16#18# range 0 .. 31;
      HCPERIODCURRENTED  at 16#1C# range 0 .. 31;
      HCCONTROLHEADED    at 16#20# range 0 .. 31;
      HCCONTROLCURRENTED at 16#24# range 0 .. 31;
      HCBULKHEADED       at 16#28# range 0 .. 31;
      HCBULKCURRENTED    at 16#2C# range 0 .. 31;
      HCDONEHEAD         at 16#30# range 0 .. 31;
      HCFMINTERVAL       at 16#34# range 0 .. 31;
      HCFMREMAINING      at 16#38# range 0 .. 31;
      HCFMNUMBER         at 16#3C# range 0 .. 31;
      HCPERIODICSTART    at 16#40# range 0 .. 31;
      HCLSTHRESHOLD      at 16#44# range 0 .. 31;
      HCRHDESCRIPTORA    at 16#48# range 0 .. 31;
      HCRHDESCRIPTORB    at 16#4C# range 0 .. 31;
      HCRHSTATUS         at 16#50# range 0 .. 31;
      HCRHPORTSTATUS     at 16#54# range 0 .. 63;
   end record;

   --  USB Host Port
   UHP_Periph : aliased UHP_Peripheral
     with Import, Address => UHP_Base;

end SAM_SVD.UHP;
