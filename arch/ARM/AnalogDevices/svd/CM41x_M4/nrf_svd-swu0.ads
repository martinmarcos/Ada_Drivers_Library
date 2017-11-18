--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SWU0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Global Control Register
   type GCTL_Register is record
      --  Global Enable
      EN            : Boolean := False;
      --  Global Reset
      RST           : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCTL_Register use record
      EN            at 0 range 0 .. 0;
      RST           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  GSTAT_MTCH array
   type GSTAT_MTCH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GSTAT_MTCH
   type GSTAT_MTCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MTCH as a value
            Val : HAL.UInt4;
         when True =>
            --  MTCH as an array
            Arr : GSTAT_MTCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GSTAT_MTCH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  GSTAT_INT array
   type GSTAT_INT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for GSTAT_INT
   type GSTAT_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : HAL.UInt4;
         when True =>
            --  INT as an array
            Arr : GSTAT_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for GSTAT_INT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Global Status Register
   type GSTAT_Register is record
      --  Group 0 Match
      MTCH           : GSTAT_MTCH_Field := (As_Array => False, Val => 16#0#);
      --  Group 0 Interrupt Status
      INT            : GSTAT_INT_Field := (As_Array => False, Val => 16#0#);
      --  Group 0 Bandwidth Below Minimum Target
      UNDRBW0        : Boolean := False;
      --  Group 0 Bandwidth Above Maximum Target
      OVRBW0         : Boolean := False;
      --  Group 1 Bandwidth Below Minimum Target
      UNDRBW1        : Boolean := False;
      --  Group 1 Bandwidth Above Maximum Target
      OVRBW1         : Boolean := False;
      --  Group 2 Bandwidth Below Minimum Target
      UNDRBW2        : Boolean := False;
      --  Group 2 Bandwidth Above Maximum Target
      OVRBW2         : Boolean := False;
      --  Group 3 Bandwidth Below Minimum Target
      UNDRBW3        : Boolean := False;
      --  Group 3 Bandwidth Above Maximum Target
      OVRBW3         : Boolean := False;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  Address Error Status
      ADDRERR        : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GSTAT_Register use record
      MTCH           at 0 range 0 .. 3;
      INT            at 0 range 4 .. 7;
      UNDRBW0        at 0 range 8 .. 8;
      OVRBW0         at 0 range 9 .. 9;
      UNDRBW1        at 0 range 10 .. 10;
      OVRBW1         at 0 range 11 .. 11;
      UNDRBW2        at 0 range 12 .. 12;
      OVRBW2         at 0 range 13 .. 13;
      UNDRBW3        at 0 range 14 .. 14;
      OVRBW3         at 0 range 15 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      ADDRERR        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   subtype CTL_WB_ACMPM_Field is HAL.UInt2;

   --  Control Register n
   type CTL_WB_Register is record
      --  Enable Watchpoint
      EN             : Boolean := False;
      --  Transaction Direction for Match
      DIR            : Boolean := False;
      --  Address Comparison Mode
      ACMPM          : CTL_WB_ACMPM_Field := 16#0#;
      --  ID Comparison Enable
      IDCMPEN        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Count Enable
      CNTEN          : Boolean := False;
      --  Count Repeat Enable
      CNTRPTEN       : Boolean := False;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  Interrupt Enable
      INTEN          : Boolean := False;
      --  Trigger Enable
      TRGEN          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Bandwidth Mode Enable
      BWEN           : Boolean := False;
      --  Increment Bandwidth Count by Burst Length
      BLENINC        : Boolean := False;
      --  Action for Bandwidth Below Minimum
      MINACT         : Boolean := False;
      --  Action for Bandwidth Above Maximum
      MAXACT         : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_WB_Register use record
      EN             at 0 range 0 .. 0;
      DIR            at 0 range 1 .. 1;
      ACMPM          at 0 range 2 .. 3;
      IDCMPEN        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CNTEN          at 0 range 8 .. 8;
      CNTRPTEN       at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      INTEN          at 0 range 13 .. 13;
      TRGEN          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      BWEN           at 0 range 16 .. 16;
      BLENINC        at 0 range 17 .. 17;
      MINACT         at 0 range 18 .. 18;
      MAXACT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ID_WB_ID_Field is HAL.UInt16;
   subtype ID_WB_IDMASK_Field is HAL.UInt16;

   --  ID Register n
   type ID_WB_Register is record
      --  Identity
      ID     : ID_WB_ID_Field := 16#0#;
      --  Identity Mask (for Or with ID)
      IDMASK : ID_WB_IDMASK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_WB_Register use record
      ID     at 0 range 0 .. 15;
      IDMASK at 0 range 16 .. 31;
   end record;

   subtype CNT_WB_COUNT_Field is HAL.UInt16;

   --  Count Register n
   type CNT_WB_Register is record
      --  Count
      COUNT          : CNT_WB_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_WB_Register use record
      COUNT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TARG_WB_BWMIN_Field is HAL.UInt16;
   subtype TARG_WB_BWMAX_Field is HAL.UInt16;

   --  Target Register n
   type TARG_WB_Register is record
      --  Minimum Bandwidth Target
      BWMIN : TARG_WB_BWMIN_Field := 16#0#;
      --  Maximum Bandwidth Target
      BWMAX : TARG_WB_BWMAX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TARG_WB_Register use record
      BWMIN at 0 range 0 .. 15;
      BWMAX at 0 range 16 .. 31;
   end record;

   --  HIST_WB_BWHIST array element
   subtype HIST_WB_BWHIST_Element is HAL.UInt16;

   --  HIST_WB_BWHIST array
   type HIST_WB_BWHIST_Field_Array is array (0 .. 1)
     of HIST_WB_BWHIST_Element
     with Component_Size => 16, Size => 32;

   --  Bandwidth History Register n
   type HIST_WB_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BWHIST as a value
            Val : HAL.UInt32;
         when True =>
            --  BWHIST as an array
            Arr : HIST_WB_BWHIST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HIST_WB_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype CUR_WB_CURCNT_Field is HAL.UInt16;
   subtype CUR_WB_CURBW_Field is HAL.UInt16;

   --  Current Register n
   type CUR_WB_Register is record
      --  Read-only. Current Count
      CURCNT : CUR_WB_CURCNT_Field;
      --  Read-only. Current Bandwidth
      CURBW  : CUR_WB_CURBW_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CUR_WB_Register use record
      CURCNT at 0 range 0 .. 15;
      CURBW  at 0 range 16 .. 31;
   end record;

   --  WB block
   type WB_Cluster is record
      --  Control Register n
      CTL  : aliased CTL_WB_Register;
      --  Lower Address Register n
      LA   : aliased HAL.UInt32;
      --  Upper Address Register n
      UA   : aliased HAL.UInt32;
      --  ID Register n
      ID   : aliased ID_WB_Register;
      --  Count Register n
      CNT  : aliased CNT_WB_Register;
      --  Target Register n
      TARG : aliased TARG_WB_Register;
      --  Bandwidth History Register n
      HIST : aliased HIST_WB_Register;
      --  Current Register n
      CUR  : aliased CUR_WB_Register;
   end record
     with Volatile, Size => 256;

   for WB_Cluster use record
      CTL  at 16#0# range 0 .. 31;
      LA   at 16#4# range 0 .. 31;
      UA   at 16#8# range 0 .. 31;
      ID   at 16#C# range 0 .. 31;
      CNT  at 16#10# range 0 .. 31;
      TARG at 16#14# range 0 .. 31;
      HIST at 16#18# range 0 .. 31;
      CUR  at 16#1C# range 0 .. 31;
   end record;

   --  WB block
   type WB_Clusters is array (0 .. 3) of WB_Cluster;

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   ----------------------------
   -- WB cluster's Registers --
   ----------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  System Watchpoint Unit
   type SWU0_Peripheral is record
      --  Global Control Register
      GCTL  : aliased GCTL_Register;
      --  Global Status Register
      GSTAT : aliased GSTAT_Register;
      --  WB block
      WB    : aliased WB_Clusters;
   end record
     with Volatile;

   for SWU0_Peripheral use record
      GCTL  at 16#0# range 0 .. 31;
      GSTAT at 16#4# range 0 .. 31;
      WB    at 16#10# range 0 .. 1023;
   end record;

   --  System Watchpoint Unit
   SWU0_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#410F0000#);

   --  System Watchpoint Unit
   SWU1_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#410F1000#);

   --  System Watchpoint Unit
   SWU2_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#400F0000#);

   --  System Watchpoint Unit
   SWU3_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#400F1000#);

   --  System Watchpoint Unit
   SWU4_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#400F2000#);

   --  System Watchpoint Unit
   SWU5_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#400F3000#);

   --  System Watchpoint Unit
   SWU6_Periph : aliased SWU0_Peripheral
     with Import, Address => System'To_Address (16#400F4000#);

end NRF_SVD.SWU0;
