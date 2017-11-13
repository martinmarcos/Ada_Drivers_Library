--  This spec has been automatically generated from ATSAM4C32E_0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.MATRIX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MATRIX0_MCFG_ULBT_Field is HAL.UInt3;

   --  Master Configuration Register
   type MATRIX0_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX0_MCFG_ULBT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register
   type MATRIX0_MCFG_Registers is array (0 .. 7) of MATRIX0_MCFG_Register
     with Volatile;

   subtype MATRIX0_SCFG_SLOT_CYCLE_Field is HAL.UInt9;
   subtype MATRIX0_SCFG_DEFMSTR_TYPE_Field is HAL.UInt2;
   subtype MATRIX0_SCFG_FIXED_DEFMSTR_Field is HAL.UInt4;

   --  Slave Configuration Register
   type MATRIX0_SCFG_Register is record
      --  Maximum Bus Grant Duration for Masters
      SLOT_CYCLE     : MATRIX0_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX0_SCFG_DEFMSTR_TYPE_Field := 16#0#;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX0_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX0_SCFG_Registers is array (0 .. 8) of MATRIX0_SCFG_Register
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
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Master 5 Priority
      M5PR           : PRAS_M5PR_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master 6 Priority
      M6PR           : PRAS_M6PR_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Master 7 Priority
      M7PR           : PRAS_M7PR_Field := 16#0#;
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

   --  MATRIX0_SYSIO_SYSIO array
   type MATRIX0_SYSIO_SYSIO_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for MATRIX0_SYSIO_SYSIO
   type MATRIX0_SYSIO_SYSIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : HAL.UInt4;
         when True =>
            --  SYSIO as an array
            Arr : MATRIX0_SYSIO_SYSIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MATRIX0_SYSIO_SYSIO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  MATRIX0_SYSIO_SYSIO array
   type MATRIX0_SYSIO_SYSIO_Field_Array_1 is array (9 .. 11) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for MATRIX0_SYSIO_SYSIO
   type MATRIX0_SYSIO_SYSIO_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : HAL.UInt3;
         when True =>
            --  SYSIO as an array
            Arr : MATRIX0_SYSIO_SYSIO_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for MATRIX0_SYSIO_SYSIO_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  System I/O Configuration Register
   type MATRIX0_SYSIO_Register is record
      --  PB0 or TDI Assignment
      SYSIO          : MATRIX0_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  PC9 or ERASE Assignment
      SYSIO_1        : MATRIX0_SYSIO_SYSIO_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_SYSIO_Register use record
      SYSIO          at 0 range 0 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      SYSIO_1        at 0 range 9 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MATRIX0_SMCNFCS_SMC_NFCS array
   type MATRIX0_SMCNFCS_SMC_NFCS_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for MATRIX0_SMCNFCS_SMC_NFCS
   type MATRIX0_SMCNFCS_SMC_NFCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMC_NFCS as a value
            Val : HAL.UInt4;
         when True =>
            --  SMC_NFCS as an array
            Arr : MATRIX0_SMCNFCS_SMC_NFCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MATRIX0_SMCNFCS_SMC_NFCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SMC Nand Flash Chip Select Configuration Register
   type MATRIX0_SMCNFCS_Register is record
      --  SMC NAND Flash Chip Select 0 Assignment
      SMC_NFCS      : MATRIX0_SMCNFCS_SMC_NFCS_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  SMC Selection for EBI pins
      SMC_SEL       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_SMCNFCS_Register use record
      SMC_NFCS      at 0 range 0 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      SMC_SEL       at 0 range 31 .. 31;
   end record;

   --  Core Debug Configuration Register
   type MATRIX0_CORE_DEBUG_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      CROSS_TRG1    : Boolean := False;
      CROSS_TRG0    : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_CORE_DEBUG_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CROSS_TRG1    at 0 range 1 .. 1;
      CROSS_TRG0    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write Protect Key
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
      Passwd => 5062996);

   --  Write Protection Mode Register
   type MATRIX0_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype MATRIX0_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type MATRIX0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : MATRIX0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix 0
   type MATRIX_Peripheral is record
      --  Master Configuration Register
      MCFG       : aliased MATRIX0_MCFG_Registers;
      --  Slave Configuration Register
      SCFG       : aliased MATRIX0_SCFG_Registers;
      --  Priority Register A for Slave 0
      PRAS0      : aliased PRAS_Register;
      --  Priority Register A for Slave 1
      PRAS1      : aliased PRAS_Register;
      --  Priority Register A for Slave 2
      PRAS2      : aliased PRAS_Register;
      --  Priority Register A for Slave 3
      PRAS3      : aliased PRAS_Register;
      --  Priority Register A for Slave 4
      PRAS4      : aliased PRAS_Register;
      --  Priority Register A for Slave 5
      PRAS5      : aliased PRAS_Register;
      --  Priority Register A for Slave 6
      PRAS6      : aliased PRAS_Register;
      --  Priority Register A for Slave 7
      PRAS7      : aliased PRAS_Register;
      --  Priority Register A for Slave 8
      PRAS8      : aliased PRAS_Register;
      --  System I/O Configuration Register
      SYSIO      : aliased MATRIX0_SYSIO_Register;
      --  SMC Nand Flash Chip Select Configuration Register
      SMCNFCS    : aliased MATRIX0_SMCNFCS_Register;
      --  Core Debug Configuration Register
      CORE_DEBUG : aliased MATRIX0_CORE_DEBUG_Register;
      --  Write Protection Mode Register
      WPMR       : aliased MATRIX0_WPMR_Register;
      --  Write Protection Status Register
      WPSR       : aliased MATRIX0_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MCFG       at 16#0# range 0 .. 255;
      SCFG       at 16#40# range 0 .. 287;
      PRAS0      at 16#80# range 0 .. 31;
      PRAS1      at 16#88# range 0 .. 31;
      PRAS2      at 16#90# range 0 .. 31;
      PRAS3      at 16#98# range 0 .. 31;
      PRAS4      at 16#A0# range 0 .. 31;
      PRAS5      at 16#A8# range 0 .. 31;
      PRAS6      at 16#B0# range 0 .. 31;
      PRAS7      at 16#B8# range 0 .. 31;
      PRAS8      at 16#BC# range 0 .. 31;
      SYSIO      at 16#114# range 0 .. 31;
      SMCNFCS    at 16#11C# range 0 .. 31;
      CORE_DEBUG at 16#128# range 0 .. 31;
      WPMR       at 16#1E4# range 0 .. 31;
      WPSR       at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix 0
   MATRIX0_Periph : aliased MATRIX_Peripheral
     with Import, Address => System'To_Address (16#400E0200#);

   --  AHB Bus Matrix 1
   MATRIX1_Periph : aliased MATRIX_Peripheral
     with Import, Address => System'To_Address (16#48010000#);

end SAM_SVD.MATRIX;
