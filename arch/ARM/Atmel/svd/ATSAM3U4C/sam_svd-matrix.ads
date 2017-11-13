--  This spec has been automatically generated from ATSAM3U4C.svd

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
   type MATRIX_MCFG_Registers is array (0 .. 4) of MATRIX_MCFG_Register
     with Volatile;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt8;
   subtype MATRIX_SCFG_DEFMSTR_TYPE_Field is HAL.UInt2;
   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt3;
   subtype MATRIX_SCFG_ARBT_Field is HAL.UInt2;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field := 16#0#;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Arbitration Type
      ARBT           : MATRIX_SCFG_ARBT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ARBT           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 9) of MATRIX_SCFG_Register
     with Volatile;

   subtype PRAS_M0PR_Field is HAL.UInt2;
   subtype PRAS_M1PR_Field is HAL.UInt2;
   subtype PRAS_M2PR_Field is HAL.UInt2;
   subtype PRAS_M3PR_Field is HAL.UInt2;
   subtype PRAS_M4PR_Field is HAL.UInt2;

   --  Priority Register A for Slave 0
   type PRAS_Register is record
      --  Master 0 Priority
      M0PR           : PRAS_M0PR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : PRAS_M1PR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : PRAS_M2PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : PRAS_M3PR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Master 4 Priority
      M4PR           : PRAS_M4PR_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
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
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  MATRIX_MRCR_RCB array
   type MATRIX_MRCR_RCB_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for MATRIX_MRCR_RCB
   type MATRIX_MRCR_RCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCB as a value
            Val : HAL.UInt5;
         when True =>
            --  RCB as an array
            Arr : MATRIX_MRCR_RCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for MATRIX_MRCR_RCB_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Master Remap Control Register
   type MATRIX_MRCR_Register is record
      --  Remap Command Bit for AHB Master 0
      RCB           : MATRIX_MRCR_RCB_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MRCR_Register use record
      RCB           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype MATRIX_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protect ENable
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
      MCFG  : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      SCFG  : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      PRAS0 : aliased PRAS_Register;
      --  Priority Register A for Slave 1
      PRAS1 : aliased PRAS_Register;
      --  Priority Register A for Slave 2
      PRAS2 : aliased PRAS_Register;
      --  Priority Register A for Slave 3
      PRAS3 : aliased PRAS_Register;
      --  Priority Register A for Slave 4
      PRAS4 : aliased PRAS_Register;
      --  Priority Register A for Slave 5
      PRAS5 : aliased PRAS_Register;
      --  Priority Register A for Slave 6
      PRAS6 : aliased PRAS_Register;
      --  Priority Register A for Slave 7
      PRAS7 : aliased PRAS_Register;
      --  Priority Register A for Slave 8
      PRAS8 : aliased PRAS_Register;
      --  Priority Register A for Slave 9
      PRAS9 : aliased PRAS_Register;
      --  Master Remap Control Register
      MRCR  : aliased MATRIX_MRCR_Register;
      --  Write Protect Mode Register
      WPMR  : aliased MATRIX_WPMR_Register;
      --  Write Protect Status Register
      WPSR  : aliased MATRIX_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MCFG  at 16#0# range 0 .. 159;
      SCFG  at 16#40# range 0 .. 319;
      PRAS0 at 16#80# range 0 .. 31;
      PRAS1 at 16#88# range 0 .. 31;
      PRAS2 at 16#90# range 0 .. 31;
      PRAS3 at 16#98# range 0 .. 31;
      PRAS4 at 16#A0# range 0 .. 31;
      PRAS5 at 16#A8# range 0 .. 31;
      PRAS6 at 16#B0# range 0 .. 31;
      PRAS7 at 16#B8# range 0 .. 31;
      PRAS8 at 16#C0# range 0 .. 31;
      PRAS9 at 16#C8# range 0 .. 31;
      MRCR  at 16#100# range 0 .. 31;
      WPMR  at 16#1E4# range 0 .. 31;
      WPSR  at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end SAM_SVD.MATRIX;
