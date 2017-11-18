--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  NVM Unit
package NRF_SVD.NVM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Busy
   type NVMSTATUS_BUSY_Field is
     (
      --  The NVM is not busy. Memory reads from the cell array and register
      --  write accesses are possible.
      VALUE1,
      --  The NVM is busy. Memory reads and register write accesses are not
      --  possible.
      VALUE2)
     with Size => 1;
   for NVMSTATUS_BUSY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sleep Mode
   type NVMSTATUS_SLEEP_Field is
     (
      --  NVM not in sleep mode, and no sleep or wake up procedure in progress.
      VALUE1,
      --  NVM in sleep mode, or busy due to a sleep or wake up procedure.
      VALUE2)
     with Size => 1;
   for NVMSTATUS_SLEEP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Verify Error
   type NVMSTATUS_VERR_Field is
     (
      --  No fail bit.
      VALUE1,
      --  One fail bit in one data block.
      VALUE2,
      --  Two fail bits in two different data blocks.
      VALUE3,
      --  Two or more fail bits in one data block, or three or more fail bits
      --  overall.
      VALUE4)
     with Size => 2;
   for NVMSTATUS_VERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  ECC1 Read
   type NVMSTATUS_ECC1READ_Field is
     (
      --  No ECC single bit failure occurred.
      VALUE1,
      --  At least one ECC single bit failure was detected and corrected.
      VALUE2)
     with Size => 1;
   for NVMSTATUS_ECC1READ_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ECC2 Read
   type NVMSTATUS_ECC2READ_Field is
     (
      --  No ECC two bit failure during memory read operations.
      VALUE1,
      --  At least one ECC two bit failure was detected.
      VALUE2)
     with Size => 1;
   for NVMSTATUS_ECC2READ_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Write Protocol Error
   type NVMSTATUS_WRPERR_Field is
     (
      --  No write protocol failure occurred.
      VALUE1,
      --  At least one write protocol failure was detected.
      VALUE2)
     with Size => 1;
   for NVMSTATUS_WRPERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  NVM Status Register
   type NVMSTATUS_Register is record
      --  Read-only. Busy
      BUSY          : NVMSTATUS_BUSY_Field;
      --  Read-only. Sleep Mode
      SLEEP         : NVMSTATUS_SLEEP_Field;
      --  Read-only. Verify Error
      VERR          : NVMSTATUS_VERR_Field;
      --  Read-only. ECC1 Read
      ECC1READ      : NVMSTATUS_ECC1READ_Field;
      --  Read-only. ECC2 Read
      ECC2READ      : NVMSTATUS_ECC2READ_Field;
      --  Read-only. Write Protocol Error
      WRPERR        : NVMSTATUS_WRPERR_Field;
      --  unspecified
      Reserved_7_15 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for NVMSTATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      SLEEP         at 0 range 1 .. 1;
      VERR          at 0 range 2 .. 3;
      ECC1READ      at 0 range 4 .. 4;
      ECC2READ      at 0 range 5 .. 5;
      WRPERR        at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   --  ACTION: [VERIFY, ONE_SHOT, OPTYPE]
   type NVMPROG_ACTION_Field is
     (
      --  Idle state, no action triggered. Writing 0x00 exits current mode.
      VALUE1,
      --  Start one-shot write operation with automatic verify.
      VALUE2,
      --  Start continuous write operation with automatic verify of every
      --  write.
      VALUE4,
      --  Start one-shot write operation without verify.
      VALUE3,
      --  Start one-shot page erase operation.
      VALUE6,
      --  Start continuous write operation without verify.
      VALUE5,
      --  Start continuous page erase operation.
      VALUE7,
      --  Start one-shot verify-only: Written data is compared to array
      --  content.
      VALUE8,
      --  Start continuous verify-only: Written data is compared to array
      --  content.
      VALUE9)
     with Size => 8;
   for NVMPROG_ACTION_Field use
     (VALUE1 => 0,
      VALUE2 => 81,
      VALUE4 => 97,
      VALUE3 => 145,
      VALUE6 => 146,
      VALUE5 => 161,
      VALUE7 => 162,
      VALUE8 => 208,
      VALUE9 => 224);

   --  Reset Verify Error
   type NVMPROG_RSTVERR_Field is
     (
      --  No action.
      VALUE1,
      --  Reset of .VERR.
      VALUE2)
     with Size => 1;
   for NVMPROG_RSTVERR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Reset ECC
   type NVMPROG_RSTECC_Field is
     (
      --  No action.
      VALUE1,
      --  Reset of .ECCxREAD and NVMSTATUS.WRPERR.
      VALUE2)
     with Size => 1;
   for NVMPROG_RSTECC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  NVM Programming Control Register
   type NVMPROG_Register is record
      --  ACTION: [VERIFY, ONE_SHOT, OPTYPE]
      ACTION         : NVMPROG_ACTION_Field := NRF_SVD.NVM.VALUE1;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Reset Verify Error
      RSTVERR        : NVMPROG_RSTVERR_Field := NRF_SVD.NVM.VALUE1;
      --  Reset ECC
      RSTECC         : NVMPROG_RSTECC_Field := NRF_SVD.NVM.VALUE1;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for NVMPROG_Register use record
      ACTION         at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      RSTVERR        at 0 range 12 .. 12;
      RSTECC         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Hardread Level
   type NVMCONF_HRLEV_Field is
     (
      --  Normal read
      VALUE1,
      --  Hardread written
      VALUE2,
      --  Hardread erased
      VALUE3)
     with Size => 2;
   for NVMCONF_HRLEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   subtype NVMCONF_SECPROT_Field is HAL.UInt8;

   --  Number of fixed Wait States
   type NVMCONF_WS_Field is
     (
      --  0 fixed wait states.
      VALUE1,
      --  1 fixed wait state.
      VALUE2)
     with Size => 1;
   for NVMCONF_WS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Interrupt On
   type NVMCONF_INT_ON_Field is
     (
      --  No NVM ready interrupts are generated.
      VALUE1,
      --  NVM ready interrupts are generated.
      VALUE2)
     with Size => 1;
   for NVMCONF_INT_ON_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  NVM On
   type NVMCONF_NVM_ON_Field is
     (
      --  NVM is switched to or stays in sleep mode.
      VALUE1,
      --  NVM is switched to or stays in normal mode.
      VALUE2)
     with Size => 1;
   for NVMCONF_NVM_ON_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  NVM Configuration Register
   type NVMCONF_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Hardread Level
      HRLEV          : NVMCONF_HRLEV_Field := NRF_SVD.NVM.VALUE1;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Sector Protection
      SECPROT        : NVMCONF_SECPROT_Field := 16#0#;
      --  Number of fixed Wait States
      WS             : NVMCONF_WS_Field := NRF_SVD.NVM.VALUE2;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Interrupt On
      INT_ON         : NVMCONF_INT_ON_Field := NRF_SVD.NVM.VALUE1;
      --  NVM On
      NVM_ON         : NVMCONF_NVM_ON_Field := NRF_SVD.NVM.VALUE2;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for NVMCONF_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      HRLEV          at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SECPROT        at 0 range 4 .. 11;
      WS             at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      INT_ON         at 0 range 14 .. 14;
      NVM_ON         at 0 range 15 .. 15;
   end record;

   --  Wait States Scheme
   type CONFIG1_FIXWS_Field is
     (
      --  adaptive wait states.
      Const_0,
      --  fixed wait states.
      Const_1)
     with Size => 1;
   for CONFIG1_FIXWS_Field use
     (Const_0 => 0,
      Const_1 => 1);

   --  Configuration 1 Register
   type CONFIG1_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Wait States Scheme
      FIXWS          : CONFIG1_FIXWS_Field := NRF_SVD.NVM.Const_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CONFIG1_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      FIXWS          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  NVM Unit
   type NVM_Peripheral is record
      --  NVM Status Register
      NVMSTATUS : aliased NVMSTATUS_Register;
      --  NVM Programming Control Register
      NVMPROG   : aliased NVMPROG_Register;
      --  NVM Configuration Register
      NVMCONF   : aliased NVMCONF_Register;
      --  Configuration 1 Register
      CONFIG1   : aliased CONFIG1_Register;
   end record
     with Volatile;

   for NVM_Peripheral use record
      NVMSTATUS at 16#0# range 0 .. 15;
      NVMPROG   at 16#4# range 0 .. 15;
      NVMCONF   at 16#8# range 0 .. 15;
      CONFIG1   at 16#48# range 0 .. 15;
   end record;

   --  NVM Unit
   NVM_Periph : aliased NVM_Peripheral
     with Import, Address => NVM_Base;

end NRF_SVD.NVM;
