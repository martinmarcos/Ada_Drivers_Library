--  This spec has been automatically generated from ATSAMV70Q20.svd

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

   --  Undefined Length Burst Type
   type MATRIX_MCFG0_ULBT_Field is
     (
      --  Unlimited Length Burst-No predicted end of burst is generated,
      --  therefore INCR bursts coming from this master can only be broken if
      --  the Slave Slot Cycle Limit is reached. If the Slot Cycle Limit is not
      --  reached, the burst is normally completed by the master, at the
      --  latest, on the next AHB 1-Kbyte address boundary, allowing up to
      --  256-beat word bursts or 128-beat double-word bursts.This value should
      --  not be used in the very particular case of a master capable of
      --  performing back-to-back undefined length bursts on a single slave,
      --  since this could indefinitely freeze the slave arbitration and thus
      --  prevent another master from accessing this slave.
      Unltd_Length,
      --  Single Access-The undefined length burst is treated as a succession
      --  of single accesses, allowing re-arbitration at each beat of the INCR
      --  burst or bursts sequence.
      Single_Access,
      --  4-beat Burst-The undefined length burst or bursts sequence is split
      --  into 4-beat bursts or less, allowing re-arbitration every 4 beats.
      MATRIX_MCFG0_ULBT_Field_4Beat_Burst,
      --  8-beat Burst-The undefined length burst or bursts sequence is split
      --  into 8-beat bursts or less, allowing re-arbitration every 8 beats.
      MATRIX_MCFG0_ULBT_Field_8Beat_Burst,
      --  16-beat Burst-The undefined length burst or bursts sequence is split
      --  into 16-beat bursts or less, allowing re-arbitration every 16 beats.
      MATRIX_MCFG0_ULBT_Field_16Beat_Burst,
      --  32-beat Burst -The undefined length burst or bursts sequence is split
      --  into 32-beat bursts or less, allowing re-arbitration every 32 beats.
      MATRIX_MCFG0_ULBT_Field_32Beat_Burst,
      --  64-beat Burst-The undefined length burst or bursts sequence is split
      --  into 64-beat bursts or less, allowing re-arbitration every 64 beats.
      MATRIX_MCFG0_ULBT_Field_64Beat_Burst,
      --  128-beat Burst-The undefined length burst or bursts sequence is split
      --  into 128-beat bursts or less, allowing re-arbitration every 128
      --  beats.
      MATRIX_MCFG0_ULBT_Field_128Beat_Burst)
     with Size => 3;
   for MATRIX_MCFG0_ULBT_Field use
     (Unltd_Length => 0,
      Single_Access => 1,
      MATRIX_MCFG0_ULBT_Field_4Beat_Burst => 2,
      MATRIX_MCFG0_ULBT_Field_8Beat_Burst => 3,
      MATRIX_MCFG0_ULBT_Field_16Beat_Burst => 4,
      MATRIX_MCFG0_ULBT_Field_32Beat_Burst => 5,
      MATRIX_MCFG0_ULBT_Field_64Beat_Burst => 6,
      MATRIX_MCFG0_ULBT_Field_128Beat_Burst => 7);

   --  Master Configuration Register 0
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX_MCFG0_ULBT_Field := SAM_SVD.MATRIX.Single_Access;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt9;

   --  Default Master Type
   type MATRIX_SCFG_DEFMSTR_TYPE_Field is
     (
      --  No Default Master-At the end of the current slave access, if no other
      --  master request is pending, the slave is disconnected from all
      --  masters.This results in a one clock cycle latency for the first
      --  access of a burst transfer or for a single access.
      None,
      --  Last Default Master-At the end of the current slave access, if no
      --  other master request is pending, the slave stays connected to the
      --  last master having accessed it.This results in not having one clock
      --  cycle latency when the last master tries to access the slave again.
      Last,
      --  Fixed Default Master-At the end of the current slave access, if no
      --  other master request is pending, the slave connects to the fixed
      --  master the number that has been written in the FIXED_DEFMSTR
      --  field.This results in not having one clock cycle latency when the
      --  fixed master tries to access the slave again.
      Fixed)
     with Size => 2;
   for MATRIX_SCFG_DEFMSTR_TYPE_Field use
     (None => 0,
      Last => 1,
      Fixed => 2);

   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt4;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Bus Grant Duration for Masters
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field := SAM_SVD.MATRIX.None;
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
   type MATRIX_SCFG_Registers is array (0 .. 8) of MATRIX_SCFG_Register
     with Volatile;

   subtype MATRIX_PRAS_M0PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M1PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M2PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M3PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M4PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M5PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M6PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M7PR_Field is HAL.UInt2;

   --  Priority Register A for Slave 0
   type MATRIX_PRAS_Register is record
      --  Master 0 Priority
      M0PR           : MATRIX_PRAS_M0PR_Field := 16#2#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : MATRIX_PRAS_M1PR_Field := 16#2#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : MATRIX_PRAS_M2PR_Field := 16#2#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : MATRIX_PRAS_M3PR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Master 4 Priority
      M4PR           : MATRIX_PRAS_M4PR_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Master 5 Priority
      M5PR           : MATRIX_PRAS_M5PR_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master 6 Priority
      M6PR           : MATRIX_PRAS_M6PR_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Master 7 Priority
      M7PR           : MATRIX_PRAS_M7PR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRAS_Register use record
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

   subtype MATRIX_PRBS_M8PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_M10PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_M11PR_Field is HAL.UInt2;

   --  Priority Register B for Slave 0
   type MATRIX_PRBS_Register is record
      --  Master 8 Priority
      M8PR           : MATRIX_PRBS_M8PR_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Master 10 Priority
      M10PR          : MATRIX_PRBS_M10PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 11 Priority
      M11PR          : MATRIX_PRBS_M11PR_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRBS_Register use record
      M8PR           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      M10PR          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M11PR          at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  MATRIX_MRCR_RCB array
   type MATRIX_MRCR_RCB_Field_Array is array (0 .. 8) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for MATRIX_MRCR_RCB
   type MATRIX_MRCR_RCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCB as a value
            Val : HAL.UInt9;
         when True =>
            --  RCB as an array
            Arr : MATRIX_MRCR_RCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for MATRIX_MRCR_RCB_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  MATRIX_MRCR_RCB array
   type MATRIX_MRCR_RCB_Field_Array_1 is array (10 .. 11) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MATRIX_MRCR_RCB
   type MATRIX_MRCR_RCB_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCB as a value
            Val : HAL.UInt2;
         when True =>
            --  RCB as an array
            Arr : MATRIX_MRCR_RCB_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MATRIX_MRCR_RCB_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Master Remap Control Register
   type MATRIX_MRCR_Register is record
      --  Remap Command Bit for Master 0
      RCB            : MATRIX_MRCR_RCB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Remap Command Bit for Master 10
      RCB_1          : MATRIX_MRCR_RCB_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MRCR_Register use record
      RCB            at 0 range 0 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      RCB_1          at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CCFG_CAN0_CAN0DMABA_Field is HAL.UInt16;

   --  CAN0 Configuration Register
   type CCFG_CAN0_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#19D#;
      --  CAN0 DMA Base Address
      CAN0DMABA     : CCFG_CAN0_CAN0DMABA_Field := 16#2040#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_CAN0_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      CAN0DMABA     at 0 range 16 .. 31;
   end record;

   --  CCFG_SYSIO_SYSIO array
   type CCFG_SYSIO_SYSIO_Field_Array is array (4 .. 7) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CCFG_SYSIO_SYSIO
   type CCFG_SYSIO_SYSIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : HAL.UInt4;
         when True =>
            --  SYSIO as an array
            Arr : CCFG_SYSIO_SYSIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CCFG_SYSIO_SYSIO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CCFG_SYSIO_CAN1DMABA_Field is HAL.UInt16;

   --  System I/O and CAN1 Configuration Register
   type CCFG_SYSIO_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  PB4 or TDI Assignment
      SYSIO          : CCFG_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  PB12 or ERASE Assignment
      SYSIO12        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  CAN1 DMA Base Address
      CAN1DMABA      : CCFG_SYSIO_CAN1DMABA_Field := 16#2040#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_SYSIO_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      SYSIO          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SYSIO12        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CAN1DMABA      at 0 range 16 .. 31;
   end record;

   --  CCFG_SMCNFCS_SMC_NFCS array
   type CCFG_SMCNFCS_SMC_NFCS_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CCFG_SMCNFCS_SMC_NFCS
   type CCFG_SMCNFCS_SMC_NFCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMC_NFCS as a value
            Val : HAL.UInt4;
         when True =>
            --  SMC_NFCS as an array
            Arr : CCFG_SMCNFCS_SMC_NFCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CCFG_SMCNFCS_SMC_NFCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SMC NAND Flash Chip Select Configuration Register
   type CCFG_SMCNFCS_Register is record
      --  SMC NAND Flash Chip Select 0 Assignment
      SMC_NFCS      : CCFG_SMCNFCS_SMC_NFCS_Field :=
                       (As_Array => False, Val => 16#0#);
      --  SDRAM Enable
      SDRAMEN       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_SMCNFCS_Register use record
      SMC_NFCS      at 0 range 0 .. 3;
      SDRAMEN       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Write Protection Key
   type MATRIX_WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Matrix_Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for MATRIX_WPMR_WPKEY_Field use
     (Matrix_Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5062996);

   --  Write Protection Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : MATRIX_WPMR_WPKEY_Field := Matrix_Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype MATRIX_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type MATRIX_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
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

   subtype MATRIX_VERSION_VERSION_Field is HAL.UInt12;
   subtype MATRIX_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type MATRIX_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : MATRIX_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : MATRIX_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX_Peripheral is record
      --  Master Configuration Register 0
      MATRIX_MCFG0   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 1
      MATRIX_MCFG1   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 2
      MATRIX_MCFG2   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 3
      MATRIX_MCFG3   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 4
      MATRIX_MCFG4   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 5
      MATRIX_MCFG5   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 6
      MATRIX_MCFG6   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 7
      MATRIX_MCFG7   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 8
      MATRIX_MCFG8   : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 10
      MATRIX_MCFG10  : aliased MATRIX_MCFG_Register;
      --  Master Configuration Register 11
      MATRIX_MCFG11  : aliased MATRIX_MCFG_Register;
      --  Slave Configuration Register
      MATRIX_SCFG    : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      MATRIX_PRAS0   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 0
      MATRIX_PRBS0   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 1
      MATRIX_PRAS1   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 1
      MATRIX_PRBS1   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 2
      MATRIX_PRAS2   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 2
      MATRIX_PRBS2   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 3
      MATRIX_PRAS3   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 3
      MATRIX_PRBS3   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 4
      MATRIX_PRAS4   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 4
      MATRIX_PRBS4   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 5
      MATRIX_PRAS5   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 5
      MATRIX_PRBS5   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 6
      MATRIX_PRAS6   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 6
      MATRIX_PRBS6   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 7
      MATRIX_PRAS7   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 7
      MATRIX_PRBS7   : aliased MATRIX_PRBS_Register;
      --  Priority Register A for Slave 8
      MATRIX_PRAS8   : aliased MATRIX_PRAS_Register;
      --  Priority Register B for Slave 8
      MATRIX_PRBS8   : aliased MATRIX_PRBS_Register;
      --  Master Remap Control Register
      MATRIX_MRCR    : aliased MATRIX_MRCR_Register;
      --  CAN0 Configuration Register
      CCFG_CAN0      : aliased CCFG_CAN0_Register;
      --  System I/O and CAN1 Configuration Register
      CCFG_SYSIO     : aliased CCFG_SYSIO_Register;
      --  SMC NAND Flash Chip Select Configuration Register
      CCFG_SMCNFCS   : aliased CCFG_SMCNFCS_Register;
      --  Write Protection Mode Register
      MATRIX_WPMR    : aliased MATRIX_WPMR_Register;
      --  Write Protection Status Register
      MATRIX_WPSR    : aliased MATRIX_WPSR_Register;
      --  Version Register
      MATRIX_VERSION : aliased MATRIX_VERSION_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MATRIX_MCFG0   at 16#0# range 0 .. 31;
      MATRIX_MCFG1   at 16#4# range 0 .. 31;
      MATRIX_MCFG2   at 16#8# range 0 .. 31;
      MATRIX_MCFG3   at 16#C# range 0 .. 31;
      MATRIX_MCFG4   at 16#10# range 0 .. 31;
      MATRIX_MCFG5   at 16#14# range 0 .. 31;
      MATRIX_MCFG6   at 16#18# range 0 .. 31;
      MATRIX_MCFG7   at 16#1C# range 0 .. 31;
      MATRIX_MCFG8   at 16#20# range 0 .. 31;
      MATRIX_MCFG10  at 16#28# range 0 .. 31;
      MATRIX_MCFG11  at 16#2C# range 0 .. 31;
      MATRIX_SCFG    at 16#40# range 0 .. 287;
      MATRIX_PRAS0   at 16#80# range 0 .. 31;
      MATRIX_PRBS0   at 16#84# range 0 .. 31;
      MATRIX_PRAS1   at 16#88# range 0 .. 31;
      MATRIX_PRBS1   at 16#8C# range 0 .. 31;
      MATRIX_PRAS2   at 16#90# range 0 .. 31;
      MATRIX_PRBS2   at 16#94# range 0 .. 31;
      MATRIX_PRAS3   at 16#98# range 0 .. 31;
      MATRIX_PRBS3   at 16#9C# range 0 .. 31;
      MATRIX_PRAS4   at 16#A0# range 0 .. 31;
      MATRIX_PRBS4   at 16#A4# range 0 .. 31;
      MATRIX_PRAS5   at 16#A8# range 0 .. 31;
      MATRIX_PRBS5   at 16#AC# range 0 .. 31;
      MATRIX_PRAS6   at 16#B0# range 0 .. 31;
      MATRIX_PRBS6   at 16#B4# range 0 .. 31;
      MATRIX_PRAS7   at 16#B8# range 0 .. 31;
      MATRIX_PRBS7   at 16#BC# range 0 .. 31;
      MATRIX_PRAS8   at 16#C0# range 0 .. 31;
      MATRIX_PRBS8   at 16#C4# range 0 .. 31;
      MATRIX_MRCR    at 16#100# range 0 .. 31;
      CCFG_CAN0      at 16#110# range 0 .. 31;
      CCFG_SYSIO     at 16#114# range 0 .. 31;
      CCFG_SMCNFCS   at 16#124# range 0 .. 31;
      MATRIX_WPMR    at 16#1E4# range 0 .. 31;
      MATRIX_WPSR    at 16#1E8# range 0 .. 31;
      MATRIX_VERSION at 16#1FC# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end SAM_SVD.MATRIX;
