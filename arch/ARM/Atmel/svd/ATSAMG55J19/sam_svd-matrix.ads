--  This spec has been automatically generated from ATSAMG55J19.svd

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
   type MATRIX_MCFG_ULBT_Field is
     (
      --  No predicted end of burst is generated and therefore INCR bursts
      --  coming from this master cannot be broken.
      Unlimited,
      --  The undefined length burst is treated as a succession of single
      --  access allowing rearbitration at each beat of the INCR burst.
      Single,
      --  The undefined length burst is split into a 4-beat bursts allowing
      --  rearbitration at each 4-beat burst end.
      MATRIX_MCFG_ULBT_Field_4_Beat,
      --  The undefined length burst is split into 8-beat bursts allowing
      --  rearbitration at each 8-beat burst end.
      MATRIX_MCFG_ULBT_Field_8_Beat,
      --  The undefined length burst is split into 16-beat bursts allowing
      --  rearbitration at each 16-beat burst end.
      MATRIX_MCFG_ULBT_Field_16_Beat)
     with Size => 3;
   for MATRIX_MCFG_ULBT_Field use
     (Unlimited => 0,
      Single => 1,
      MATRIX_MCFG_ULBT_Field_4_Beat => 2,
      MATRIX_MCFG_ULBT_Field_8_Beat => 3,
      MATRIX_MCFG_ULBT_Field_16_Beat => 4);

   --  Master Configuration Register
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX_MCFG_ULBT_Field := SAM_SVD.MATRIX.Unlimited;
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
   type MATRIX_MCFG_Registers is array (0 .. 2) of MATRIX_MCFG_Register
     with Volatile;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt8;

   --  Default Master Type
   type MATRIX_SCFG_DEFMSTR_TYPE_Field is
     (
      --  At the end of current slave access, if no other master request is
      --  pending, the slave is disconnected from all masters.This results in
      --  having a one cycle latency for the first access of a burst transfer
      --  or for a single access.
      No_Default,
      --  At the end of current slave access, if no other master request is
      --  pending, the slave stays connected to the last master having accessed
      --  it.This results in not having the one cycle latency when the last
      --  master tries to access the slave again.
      Last,
      --  At the end of the current slave access, if no other master request is
      --  pending, the slave connects to the fixed master the number that has
      --  been written in the FIXED_DEFMSTR field.This results in not having
      --  the one cycle latency when the fixed master tries to access the slave
      --  again.
      Fixed)
     with Size => 2;
   for MATRIX_SCFG_DEFMSTR_TYPE_Field use
     (No_Default => 0,
      Last => 1,
      Fixed => 2);

   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt3;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field :=
                        SAM_SVD.MATRIX.No_Default;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 3) of MATRIX_SCFG_Register
     with Volatile;

   subtype MATRIX_PRAS_M0PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M1PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M2PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_M3PR_Field is HAL.UInt2;

   --  Priority Register A for Slave 0
   type MATRIX_PRAS_Register is record
      --  Master 0 Priority
      M0PR           : MATRIX_PRAS_M0PR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : MATRIX_PRAS_M1PR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : MATRIX_PRAS_M2PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : MATRIX_PRAS_M3PR_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
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
      Reserved_14_31 at 0 range 14 .. 31;
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

   --  CCFG_SYSIO_SYSIO array
   type CCFG_SYSIO_SYSIO_Field_Array_1 is array (10 .. 12) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for CCFG_SYSIO_SYSIO
   type CCFG_SYSIO_SYSIO_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : HAL.UInt3;
         when True =>
            --  SYSIO as an array
            Arr : CCFG_SYSIO_SYSIO_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CCFG_SYSIO_SYSIO_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  System I/O Configuration Register
   type CCFG_SYSIO_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  PB4 or TDI Assignment
      SYSIO          : CCFG_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  PA21 or DM Assignment
      SYSIO_1        : CCFG_SYSIO_SYSIO_Field_1 :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_SYSIO_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      SYSIO          at 0 range 4 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      SYSIO_1        at 0 range 10 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Dynamic Clock Gating Register
   type CCFG_DYNCKG_Register is record
      --  MATRIX Dynamic Clock Gating
      MATCKG        : Boolean := True;
      --  Bridge Dynamic Clock Gating Enable
      BRIDCKG       : Boolean := True;
      --  EFC Dynamic Clock Gating Enable
      EFCCKG        : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_DYNCKG_Register use record
      MATCKG        at 0 range 0 .. 0;
      BRIDCKG       at 0 range 1 .. 1;
      EFCCKG        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  CCFG_I2SCLKSEL_CLKSEL array
   type CCFG_I2SCLKSEL_CLKSEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCFG_I2SCLKSEL_CLKSEL
   type CCFG_I2SCLKSEL_CLKSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLKSEL as a value
            Val : HAL.UInt2;
         when True =>
            --  CLKSEL as an array
            Arr : CCFG_I2SCLKSEL_CLKSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCFG_I2SCLKSEL_CLKSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S Clock Source Selection Register
   type CCFG_I2SCLKSEL_Register is record
      --  I2S0 Clock Source
      CLKSEL        : CCFG_I2SCLKSEL_CLKSEL_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_I2SCLKSEL_Register use record
      CLKSEL        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  USB Management Register
   type CCFG_USBMR_Register is record
      --  USB Mode Selection
      USBMODE       : Boolean := False;
      --  USB Transceiver Suspend Software Control
      USBHTSSC      : Boolean := False;
      --  USB Host Transceiver Suspend Control
      USBHTSC       : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_USBMR_Register use record
      USBMODE       at 0 range 0 .. 0;
      USBHTSSC      at 0 range 1 .. 1;
      USBHTSC       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write Protection Key
   type MATRIX_WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Matrix_Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit. Always reads as 0.
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

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX_Peripheral is record
      --  Master Configuration Register
      MATRIX_MCFG    : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      MATRIX_SCFG    : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      MATRIX_PRAS0   : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 1
      MATRIX_PRAS1   : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 2
      MATRIX_PRAS2   : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 3
      MATRIX_PRAS3   : aliased MATRIX_PRAS_Register;
      --  System I/O Configuration Register
      CCFG_SYSIO     : aliased CCFG_SYSIO_Register;
      --  Dynamic Clock Gating Register
      CCFG_DYNCKG    : aliased CCFG_DYNCKG_Register;
      --  I2S Clock Source Selection Register
      CCFG_I2SCLKSEL : aliased CCFG_I2SCLKSEL_Register;
      --  USB Management Register
      CCFG_USBMR     : aliased CCFG_USBMR_Register;
      --  Write Protection Mode Register
      MATRIX_WPMR    : aliased MATRIX_WPMR_Register;
      --  Write Protection Status Register
      MATRIX_WPSR    : aliased MATRIX_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MATRIX_MCFG    at 16#0# range 0 .. 95;
      MATRIX_SCFG    at 16#40# range 0 .. 127;
      MATRIX_PRAS0   at 16#80# range 0 .. 31;
      MATRIX_PRAS1   at 16#88# range 0 .. 31;
      MATRIX_PRAS2   at 16#90# range 0 .. 31;
      MATRIX_PRAS3   at 16#98# range 0 .. 31;
      CCFG_SYSIO     at 16#114# range 0 .. 31;
      CCFG_DYNCKG    at 16#118# range 0 .. 31;
      CCFG_I2SCLKSEL at 16#11C# range 0 .. 31;
      CCFG_USBMR     at 16#120# range 0 .. 31;
      MATRIX_WPMR    at 16#1E4# range 0 .. 31;
      MATRIX_WPSR    at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end SAM_SVD.MATRIX;
