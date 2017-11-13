--  This spec has been automatically generated from ATSAM4E8C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  AHB Bus Matrix
package SAM_SVD.MATRIX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MATRIX_MCFG_ULBT_Field is HAL.UInt3;

   --  Master Configuration Register
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX_MCFG_ULBT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register
   type MATRIX_MCFG_Registers is array (0 .. 15) of MATRIX_MCFG_Register
     with Volatile;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt9;
   subtype MATRIX_SCFG_DEFMSTR_TYPE_Field is HAL.UInt2;
   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt4;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Bus Grant Duration for Masters
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field := 16#0#;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 15) of MATRIX_SCFG_Register
     with Volatile;

   subtype PRAS_M0PR_Field is HAL.UInt2;
   subtype PRAS_M1PR_Field is HAL.UInt2;
   subtype PRAS_M2PR_Field is HAL.UInt2;
   subtype PRAS_M3PR_Field is HAL.UInt2;
   subtype PRAS_M4PR_Field is HAL.UInt2;
   subtype PRAS_M5PR_Field is HAL.UInt2;
   subtype PRAS_M6PR_Field is HAL.UInt2;
   subtype PRAS_M7PR_Field is HAL.UInt2;

   --  Priority Register A for Slave 0
   type PRAS_Register is record
      --  Master 0 Priority
      M0PR           : PRAS_M0PR_Field := 16#3#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : PRAS_M1PR_Field := 16#3#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : PRAS_M2PR_Field := 16#3#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : PRAS_M3PR_Field := 16#3#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Master 4 Priority
      M4PR           : PRAS_M4PR_Field := 16#3#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Master 5 Priority
      M5PR           : PRAS_M5PR_Field := 16#3#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master 6 Priority
      M6PR           : PRAS_M6PR_Field := 16#3#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Master 7 Priority
      M7PR           : PRAS_M7PR_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRAS_Register use record
      M0PR           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      M1PR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      M2PR           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M3PR           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      M4PR           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      M5PR           at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      M6PR           at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M7PR           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PRBS_M8PR_Field is HAL.UInt2;
   subtype PRBS_M9PR_Field is HAL.UInt2;
   subtype PRBS_M10PR_Field is HAL.UInt2;
   subtype PRBS_M11PR_Field is HAL.UInt2;
   subtype PRBS_M12PR_Field is HAL.UInt2;
   subtype PRBS_M13PR_Field is HAL.UInt2;
   subtype PRBS_M14PR_Field is HAL.UInt2;
   subtype PRBS_M15PR_Field is HAL.UInt2;

   --  Priority Register B for Slave 0
   type PRBS_Register is record
      --  Master 8 Priority
      M8PR           : PRBS_M8PR_Field := 16#3#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 9 Priority
      M9PR           : PRBS_M9PR_Field := 16#3#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 10 Priority
      M10PR          : PRBS_M10PR_Field := 16#3#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 11 Priority
      M11PR          : PRBS_M11PR_Field := 16#3#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Master 12 Priority
      M12PR          : PRBS_M12PR_Field := 16#3#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Master 13 Priority
      M13PR          : PRBS_M13PR_Field := 16#3#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master 14 Priority
      M14PR          : PRBS_M14PR_Field := 16#3#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Master 15 Priority
      M15PR          : PRBS_M15PR_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRBS_Register use record
      M8PR           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      M9PR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      M10PR          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M11PR          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      M12PR          at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      M13PR          at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      M14PR          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M15PR          at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  MATRIX_MRCR_RCB array
   type MATRIX_MRCR_RCB_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for MATRIX_MRCR_RCB
   type MATRIX_MRCR_RCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCB as a value
            Val : HAL.UInt16;
         when True =>
            --  RCB as an array
            Arr : MATRIX_MRCR_RCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MATRIX_MRCR_RCB_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Master Remap Control Register
   type MATRIX_MRCR_Register is record
      RCB            : MATRIX_MRCR_RCB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MRCR_Register use record
      RCB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Special Function Register

   --  Special Function Register
   type MATRIX_SFR_Registers is array (0 .. 15) of HAL.UInt32
     with Volatile;

   subtype MATRIX_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect KEY (Write-only)
      WPKEY        : MATRIX_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype MATRIX_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protect Status Register
   type MATRIX_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : MATRIX_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX_Peripheral is record
      --  Master Configuration Register
      MCFG   : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      SCFG   : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      PRAS0  : aliased PRAS_Register;
      --  Priority Register B for Slave 0
      PRBS0  : aliased PRBS_Register;
      --  Priority Register A for Slave 1
      PRAS1  : aliased PRAS_Register;
      --  Priority Register B for Slave 1
      PRBS1  : aliased PRBS_Register;
      --  Priority Register A for Slave 2
      PRAS2  : aliased PRAS_Register;
      --  Priority Register B for Slave 2
      PRBS2  : aliased PRBS_Register;
      --  Priority Register A for Slave 3
      PRAS3  : aliased PRAS_Register;
      --  Priority Register B for Slave 3
      PRBS3  : aliased PRBS_Register;
      --  Priority Register A for Slave 4
      PRAS4  : aliased PRAS_Register;
      --  Priority Register B for Slave 4
      PRBS4  : aliased PRBS_Register;
      --  Priority Register A for Slave 5
      PRAS5  : aliased PRAS_Register;
      --  Priority Register B for Slave 5
      PRBS5  : aliased PRBS_Register;
      --  Priority Register A for Slave 6
      PRAS6  : aliased PRAS_Register;
      --  Priority Register B for Slave 6
      PRBS6  : aliased PRBS_Register;
      --  Priority Register A for Slave 7
      PRAS7  : aliased PRAS_Register;
      --  Priority Register B for Slave 7
      PRBS7  : aliased PRBS_Register;
      --  Priority Register A for Slave 8
      PRAS8  : aliased PRAS_Register;
      --  Priority Register B for Slave 8
      PRBS8  : aliased PRBS_Register;
      --  Priority Register A for Slave 9
      PRAS9  : aliased PRAS_Register;
      --  Priority Register B for Slave 9
      PRBS9  : aliased PRBS_Register;
      --  Priority Register A for Slave 10
      PRAS10 : aliased PRAS_Register;
      --  Priority Register B for Slave 10
      PRBS10 : aliased PRBS_Register;
      --  Priority Register A for Slave 11
      PRAS11 : aliased PRAS_Register;
      --  Priority Register B for Slave 11
      PRBS11 : aliased PRBS_Register;
      --  Priority Register A for Slave 12
      PRAS12 : aliased PRAS_Register;
      --  Priority Register B for Slave 12
      PRBS12 : aliased PRBS_Register;
      --  Priority Register A for Slave 13
      PRAS13 : aliased PRAS_Register;
      --  Priority Register B for Slave 13
      PRBS13 : aliased PRBS_Register;
      --  Priority Register A for Slave 14
      PRAS14 : aliased PRAS_Register;
      --  Priority Register B for Slave 14
      PRBS14 : aliased PRBS_Register;
      --  Priority Register A for Slave 15
      PRAS15 : aliased PRAS_Register;
      --  Priority Register B for Slave 15
      PRBS15 : aliased PRBS_Register;
      --  Master Remap Control Register
      MRCR   : aliased MATRIX_MRCR_Register;
      --  Special Function Register
      SFR    : aliased MATRIX_SFR_Registers;
      --  Write Protect Mode Register
      WPMR   : aliased MATRIX_WPMR_Register;
      --  Write Protect Status Register
      WPSR   : aliased MATRIX_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MCFG   at 16#0# range 0 .. 511;
      SCFG   at 16#40# range 0 .. 511;
      PRAS0  at 16#80# range 0 .. 31;
      PRBS0  at 16#84# range 0 .. 31;
      PRAS1  at 16#88# range 0 .. 31;
      PRBS1  at 16#8C# range 0 .. 31;
      PRAS2  at 16#90# range 0 .. 31;
      PRBS2  at 16#94# range 0 .. 31;
      PRAS3  at 16#98# range 0 .. 31;
      PRBS3  at 16#9C# range 0 .. 31;
      PRAS4  at 16#A0# range 0 .. 31;
      PRBS4  at 16#A4# range 0 .. 31;
      PRAS5  at 16#A8# range 0 .. 31;
      PRBS5  at 16#AC# range 0 .. 31;
      PRAS6  at 16#B0# range 0 .. 31;
      PRBS6  at 16#B4# range 0 .. 31;
      PRAS7  at 16#B8# range 0 .. 31;
      PRBS7  at 16#BC# range 0 .. 31;
      PRAS8  at 16#C0# range 0 .. 31;
      PRBS8  at 16#C4# range 0 .. 31;
      PRAS9  at 16#C8# range 0 .. 31;
      PRBS9  at 16#CC# range 0 .. 31;
      PRAS10 at 16#D0# range 0 .. 31;
      PRBS10 at 16#D4# range 0 .. 31;
      PRAS11 at 16#D8# range 0 .. 31;
      PRBS11 at 16#DC# range 0 .. 31;
      PRAS12 at 16#E0# range 0 .. 31;
      PRBS12 at 16#E4# range 0 .. 31;
      PRAS13 at 16#E8# range 0 .. 31;
      PRBS13 at 16#EC# range 0 .. 31;
      PRAS14 at 16#F0# range 0 .. 31;
      PRBS14 at 16#F4# range 0 .. 31;
      PRAS15 at 16#F8# range 0 .. 31;
      PRBS15 at 16#FC# range 0 .. 31;
      MRCR   at 16#100# range 0 .. 31;
      SFR    at 16#110# range 0 .. 511;
      WPMR   at 16#1E4# range 0 .. 31;
      WPSR   at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end SAM_SVD.MATRIX;
