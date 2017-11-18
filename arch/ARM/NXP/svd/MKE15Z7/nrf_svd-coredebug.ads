--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.COREDEBUG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Halting debug enable bit. If a debugger writes to DHCSR to change the
   --  value of this bit from 0 to 1, it must also write 0 to the C_MASKINTS
   --  bit, otherwise behavior is UNPREDICTABLE.This bit can only be set to 1
   --  from the DAP, it cannot be set to 1 under software control.This bit is 0
   --  after a Power-on reset.
   type DHCSR_Read_C_DEBUGEN_Field is
     (
      --  Disabled
      C_Debugen_0,
      --  Enabled
      C_Debugen_1)
     with Size => 1;
   for DHCSR_Read_C_DEBUGEN_Field use
     (C_Debugen_0 => 0,
      C_Debugen_1 => 1);

   --  Processor halt bit. This bit is UNKNOWN after a Power-on reset.
   type DHCSR_Read_C_HALT_Field is
     (
      --  No effect.
      C_Halt_0,
      --  Halt the processor.
      C_Halt_1)
     with Size => 1;
   for DHCSR_Read_C_HALT_Field use
     (C_Halt_0 => 0,
      C_Halt_1 => 1);

   --  Processor step bit.This bit is UNKNOWN after a Power-on reset.
   type DHCSR_Read_C_STEP_Field is
     (
      --  No effect.
      C_Step_0,
      --  Step the processor.
      C_Step_1)
     with Size => 1;
   for DHCSR_Read_C_STEP_Field use
     (C_Step_0 => 0,
      C_Step_1 => 1);

   --  C_MASKINTS bit. When debug is enabled, the debugger can write to this
   --  bit to mask PendSV, SysTick and external configurable interrupts. The
   --  effect of any attempt to change the value of this bit is UNPREDICTABLE
   --  unless both:- before the write to DHCSR, the value of the C_HALT bit is
   --  1.- the write to the DHCSR that changes the C_MASKINTS bit also writes 1
   --  to the C_HALT bit.This means that a single write to DHCSR cannot set the
   --  C_HALT to 0 and change the value of the C_MASKINTS bit.The bit does not
   --  affect NMI. When DHCSR.C_DEBUGEN is set to 0, the value of this bit is
   --  UNKNOWN.This bit is UNKNOWN after a Power-on reset.
   type DHCSR_Read_C_MASKINTS_Field is
     (
      --  Do not mask.
      C_Maskints_0,
      --  Mask PenSV, SysTick and external configurable interrupts.
      C_Maskints_1)
     with Size => 1;
   for DHCSR_Read_C_MASKINTS_Field use
     (C_Maskints_0 => 0,
      C_Maskints_1 => 1);

   --  S_REGRDY bit. A handshake flag for transfers through the DCRDR:- Writing
   --  to DCRSR clears the bit to 0.- Completion of the DCRDR transfer then
   --  sets the bit to 1.This bit is valid only when the processor is in Debug
   --  state, otherwise the bit is UNKNOWN.
   type DHCSR_Read_S_REGRDY_Field is
     (
      --  There has been a write to the DCRDR, but the transfer is not
      --  complete.
      S_Regrdy_0,
      --  The transfer to or from the DCRDR is complete.
      S_Regrdy_1)
     with Size => 1;
   for DHCSR_Read_S_REGRDY_Field use
     (S_Regrdy_0 => 0,
      S_Regrdy_1 => 1);

   --  S_HALT bit. Indicates whether the processor is in Debug state.
   type DHCSR_Read_S_HALT_Field is
     (
      --  Not in Debug state.
      S_Halt_0,
      --  In Debug state.
      S_Halt_1)
     with Size => 1;
   for DHCSR_Read_S_HALT_Field use
     (S_Halt_0 => 0,
      S_Halt_1 => 1);

   --  S_SLEEP bit. Indicates whether the processor is sleeping.The debugger
   --  must set the C_HALT bit to 1 to gain control, or wait for an interrupt
   --  or other wakeup event to wakeup the system.
   type DHCSR_Read_S_SLEEP_Field is
     (
      --  Not sleeping.
      S_Sleep_0,
      --  Sleeping.
      S_Sleep_1)
     with Size => 1;
   for DHCSR_Read_S_SLEEP_Field use
     (S_Sleep_0 => 0,
      S_Sleep_1 => 1);

   --  S_LOCKUP bit. Indicates whether the processor is locked up because of an
   --  unrecoverable exception.This bit can only be read as 1 by a remote
   --  debugger, using the DAP. The value of 1 indicates that the processor is
   --  running but locked up.The bit clears to 0 when the processor enters
   --  Debug state.
   type DHCSR_Read_S_LOCKUP_Field is
     (
      --  Not locked up
      S_Lockup_0,
      --  Locked up
      S_Lockup_1)
     with Size => 1;
   for DHCSR_Read_S_LOCKUP_Field use
     (S_Lockup_0 => 0,
      S_Lockup_1 => 1);

   --  S_RETIRE_ST bit. Indicates whether the processor has completed the
   --  execution of an instruction since the last read of DHCSR.This is a
   --  sticky bit, that clears to 0 on a read of DHCSR.A debugger can check
   --  this bit to determine if the processor is stalled on a load, store or
   --  fetch access.This bit is UNKNOWN after a Power-on or Local reset, but
   --  then is set to 1 as soon as the processor executes and retires an
   --  instruction.
   type DHCSR_Read_S_RETIRE_ST_Field is
     (
      --  No instruction retired since last DHCSR read.
      S_Retire_St_0,
      --  At least one instruction retired since last DHCSR read.
      S_Retire_St_1)
     with Size => 1;
   for DHCSR_Read_S_RETIRE_ST_Field use
     (S_Retire_St_0 => 0,
      S_Retire_St_1 => 1);

   --  S_RESET_ST bit. Indicates whether the processor has been reset since the
   --  last read of DHCSR.This is a sticky bit, that clears to 0 on a read of
   --  DHCSR.
   type DHCSR_Read_S_RESET_ST_Field is
     (
      --  No reset since last DHCSR read.
      S_Reset_St_0,
      --  At least one reset since last DHCSR read.
      S_Reset_St_1)
     with Size => 1;
   for DHCSR_Read_S_RESET_ST_Field use
     (S_Reset_St_0 => 0,
      S_Reset_St_1 => 1);

   --  Debug Halting Control and Status Register
   type DHCSR_Read_Register is record
      --  Halting debug enable bit. If a debugger writes to DHCSR to change the
      --  value of this bit from 0 to 1, it must also write 0 to the C_MASKINTS
      --  bit, otherwise behavior is UNPREDICTABLE.This bit can only be set to
      --  1 from the DAP, it cannot be set to 1 under software control.This bit
      --  is 0 after a Power-on reset.
      C_DEBUGEN      : DHCSR_Read_C_DEBUGEN_Field :=
                        NRF_SVD.COREDEBUG.C_Debugen_0;
      --  Processor halt bit. This bit is UNKNOWN after a Power-on reset.
      C_HALT         : DHCSR_Read_C_HALT_Field := NRF_SVD.COREDEBUG.C_Halt_0;
      --  Processor step bit.This bit is UNKNOWN after a Power-on reset.
      C_STEP         : DHCSR_Read_C_STEP_Field := NRF_SVD.COREDEBUG.C_Step_0;
      --  C_MASKINTS bit. When debug is enabled, the debugger can write to this
      --  bit to mask PendSV, SysTick and external configurable interrupts. The
      --  effect of any attempt to change the value of this bit is
      --  UNPREDICTABLE unless both:- before the write to DHCSR, the value of
      --  the C_HALT bit is 1.- the write to the DHCSR that changes the
      --  C_MASKINTS bit also writes 1 to the C_HALT bit.This means that a
      --  single write to DHCSR cannot set the C_HALT to 0 and change the value
      --  of the C_MASKINTS bit.The bit does not affect NMI. When
      --  DHCSR.C_DEBUGEN is set to 0, the value of this bit is UNKNOWN.This
      --  bit is UNKNOWN after a Power-on reset.
      C_MASKINTS     : DHCSR_Read_C_MASKINTS_Field :=
                        NRF_SVD.COREDEBUG.C_Maskints_0;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Read-only. S_REGRDY bit. A handshake flag for transfers through the
      --  DCRDR:- Writing to DCRSR clears the bit to 0.- Completion of the
      --  DCRDR transfer then sets the bit to 1.This bit is valid only when the
      --  processor is in Debug state, otherwise the bit is UNKNOWN.
      S_REGRDY       : DHCSR_Read_S_REGRDY_Field :=
                        NRF_SVD.COREDEBUG.S_Regrdy_0;
      --  Read-only. S_HALT bit. Indicates whether the processor is in Debug
      --  state.
      S_HALT         : DHCSR_Read_S_HALT_Field := NRF_SVD.COREDEBUG.S_Halt_0;
      --  Read-only. S_SLEEP bit. Indicates whether the processor is
      --  sleeping.The debugger must set the C_HALT bit to 1 to gain control,
      --  or wait for an interrupt or other wakeup event to wakeup the system.
      S_SLEEP        : DHCSR_Read_S_SLEEP_Field :=
                        NRF_SVD.COREDEBUG.S_Sleep_0;
      --  Read-only. S_LOCKUP bit. Indicates whether the processor is locked up
      --  because of an unrecoverable exception.This bit can only be read as 1
      --  by a remote debugger, using the DAP. The value of 1 indicates that
      --  the processor is running but locked up.The bit clears to 0 when the
      --  processor enters Debug state.
      S_LOCKUP       : DHCSR_Read_S_LOCKUP_Field :=
                        NRF_SVD.COREDEBUG.S_Lockup_0;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Read-only. S_RETIRE_ST bit. Indicates whether the processor has
      --  completed the execution of an instruction since the last read of
      --  DHCSR.This is a sticky bit, that clears to 0 on a read of DHCSR.A
      --  debugger can check this bit to determine if the processor is stalled
      --  on a load, store or fetch access.This bit is UNKNOWN after a Power-on
      --  or Local reset, but then is set to 1 as soon as the processor
      --  executes and retires an instruction.
      S_RETIRE_ST    : DHCSR_Read_S_RETIRE_ST_Field :=
                        NRF_SVD.COREDEBUG.S_Retire_St_0;
      --  Read-only. S_RESET_ST bit. Indicates whether the processor has been
      --  reset since the last read of DHCSR.This is a sticky bit, that clears
      --  to 0 on a read of DHCSR.
      S_RESET_ST     : DHCSR_Read_S_RESET_ST_Field :=
                        NRF_SVD.COREDEBUG.S_Reset_St_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHCSR_Read_Register use record
      C_DEBUGEN      at 0 range 0 .. 0;
      C_HALT         at 0 range 1 .. 1;
      C_STEP         at 0 range 2 .. 2;
      C_MASKINTS     at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      S_REGRDY       at 0 range 16 .. 16;
      S_HALT         at 0 range 17 .. 17;
      S_SLEEP        at 0 range 18 .. 18;
      S_LOCKUP       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      S_RETIRE_ST    at 0 range 24 .. 24;
      S_RESET_ST     at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Halting debug enable bit. If a debugger writes to DHCSR to change the
   --  value of this bit from 0 to 1, it must also write 0 to the C_MASKINTS
   --  bit, otherwise behavior is UNPREDICTABLE.This bit can only be set to 1
   --  from the DAP, it cannot be set to 1 under software control.This bit is 0
   --  after a Power-on reset.
   type DHCSR_Write_C_DEBUGEN_Field is
     (
      --  Disabled
      C_Debugen_0,
      --  Enabled
      C_Debugen_1)
     with Size => 1;
   for DHCSR_Write_C_DEBUGEN_Field use
     (C_Debugen_0 => 0,
      C_Debugen_1 => 1);

   --  Processor halt bit. This bit is UNKNOWN after a Power-on reset.
   type DHCSR_Write_C_HALT_Field is
     (
      --  No effect.
      C_Halt_0,
      --  Halt the processor.
      C_Halt_1)
     with Size => 1;
   for DHCSR_Write_C_HALT_Field use
     (C_Halt_0 => 0,
      C_Halt_1 => 1);

   --  Processor step bit.This bit is UNKNOWN after a Power-on reset.
   type DHCSR_Write_C_STEP_Field is
     (
      --  No effect.
      C_Step_0,
      --  Step the processor.
      C_Step_1)
     with Size => 1;
   for DHCSR_Write_C_STEP_Field use
     (C_Step_0 => 0,
      C_Step_1 => 1);

   --  C_MASKINTS bit. When debug is enabled, the debugger can write to this
   --  bit to mask PendSV, SysTick and external configurable interrupts. The
   --  effect of any attempt to change the value of this bit is UNPREDICTABLE
   --  unless both:- before the write to DHCSR, the value of the C_HALT bit is
   --  1.- the write to the DHCSR that changes the C_MASKINTS bit also writes 1
   --  to the C_HALT bit.This means that a single write to DHCSR cannot set the
   --  C_HALT to 0 and change the value of the C_MASKINTS bit.The bit does not
   --  affect NMI. When DHCSR.C_DEBUGEN is set to 0, the value of this bit is
   --  UNKNOWN.This bit is UNKNOWN after a Power-on reset.
   type DHCSR_Write_C_MASKINTS_Field is
     (
      --  Do not mask.
      C_Maskints_0,
      --  Mask PenSV, SysTick and external configurable interrupts.
      C_Maskints_1)
     with Size => 1;
   for DHCSR_Write_C_MASKINTS_Field use
     (C_Maskints_0 => 0,
      C_Maskints_1 => 1);

   subtype DHCSR_Write_DBGKEY_Field is HAL.UInt16;

   --  Debug Halting Control and Status Register
   type DHCSR_Write_Register is record
      --  Halting debug enable bit. If a debugger writes to DHCSR to change the
      --  value of this bit from 0 to 1, it must also write 0 to the C_MASKINTS
      --  bit, otherwise behavior is UNPREDICTABLE.This bit can only be set to
      --  1 from the DAP, it cannot be set to 1 under software control.This bit
      --  is 0 after a Power-on reset.
      C_DEBUGEN     : DHCSR_Write_C_DEBUGEN_Field :=
                       NRF_SVD.COREDEBUG.C_Debugen_0;
      --  Processor halt bit. This bit is UNKNOWN after a Power-on reset.
      C_HALT        : DHCSR_Write_C_HALT_Field := NRF_SVD.COREDEBUG.C_Halt_0;
      --  Processor step bit.This bit is UNKNOWN after a Power-on reset.
      C_STEP        : DHCSR_Write_C_STEP_Field := NRF_SVD.COREDEBUG.C_Step_0;
      --  C_MASKINTS bit. When debug is enabled, the debugger can write to this
      --  bit to mask PendSV, SysTick and external configurable interrupts. The
      --  effect of any attempt to change the value of this bit is
      --  UNPREDICTABLE unless both:- before the write to DHCSR, the value of
      --  the C_HALT bit is 1.- the write to the DHCSR that changes the
      --  C_MASKINTS bit also writes 1 to the C_HALT bit.This means that a
      --  single write to DHCSR cannot set the C_HALT to 0 and change the value
      --  of the C_MASKINTS bit.The bit does not affect NMI. When
      --  DHCSR.C_DEBUGEN is set to 0, the value of this bit is UNKNOWN.This
      --  bit is UNKNOWN after a Power-on reset.
      C_MASKINTS    : DHCSR_Write_C_MASKINTS_Field :=
                       NRF_SVD.COREDEBUG.C_Maskints_0;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
      --  Write-only. Debug key:Software must write 0xA05F to this field to
      --  enable write accesses to bits [15:0], otherwise the processor ignores
      --  the write access.
      DBGKEY        : DHCSR_Write_DBGKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHCSR_Write_Register use record
      C_DEBUGEN     at 0 range 0 .. 0;
      C_HALT        at 0 range 1 .. 1;
      C_STEP        at 0 range 2 .. 2;
      C_MASKINTS    at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      DBGKEY        at 0 range 16 .. 31;
   end record;

   subtype DCRSR_REGSEL_Field is HAL.UInt5;

   --  REGWnR bit. Specifies the access type for the transfer.
   type DCRSR_REGWnR_Field is
     (
      --  Read
      Regwnr_0,
      --  Write
      Regwnr_1)
     with Size => 1;
   for DCRSR_REGWnR_Field use
     (Regwnr_0 => 0,
      Regwnr_1 => 1);

   --  Debug Core Register Selector Register
   type DCRSR_Register is record
      --  Write-only. REGSEL bits. Specifies the ARM core register,
      --  special-purpose register, or Floating-point extension register, to
      --  transfer.
      REGSEL         : DCRSR_REGSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Write-only. REGWnR bit. Specifies the access type for the transfer.
      REGWnR         : DCRSR_REGWnR_Field := NRF_SVD.COREDEBUG.Regwnr_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCRSR_Register use record
      REGSEL         at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      REGWnR         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  VC_CORERESET bit. Enable Reset Vector Catch. This causes a Local reset
   --  to halt a running system.If DHCSR.C_DEBUGEN is set to 0, the processor
   --  ignores the value of this bit.
   type DEMCR_VC_CORERESET_Field is
     (
      --  Reset Vector Catch disabled.
      Vc_Corereset_0,
      --  Reset Vector Catch enabled.
      Vc_Corereset_1)
     with Size => 1;
   for DEMCR_VC_CORERESET_Field use
     (Vc_Corereset_0 => 0,
      Vc_Corereset_1 => 1);

   --  VC_HARDERR bit. Enable halting debug trap on a HardFault exception.If
   --  DHCSR.C_DEBUGEN is set to 0, the processor ignores the value of this
   --  bit.
   type DEMCR_VC_HARDERR_Field is
     (
      --  Halting debug trap disabled.
      Vc_Harderr_0,
      --  Halting debug trap enabled.
      Vc_Harderr_1)
     with Size => 1;
   for DEMCR_VC_HARDERR_Field use
     (Vc_Harderr_0 => 0,
      Vc_Harderr_1 => 1);

   --  DWTENA bit. Global enable for all features configured and controlled by
   --  the DWT unit.
   type DEMCR_DWTENA_Field is
     (
      --  DWT disabled.
      Dwtena_0,
      --  DWT enabled.
      Dwtena_1)
     with Size => 1;
   for DEMCR_DWTENA_Field use
     (Dwtena_0 => 0,
      Dwtena_1 => 1);

   --  Debug Exception and Monitor Control Register
   type DEMCR_Register is record
      --  VC_CORERESET bit. Enable Reset Vector Catch. This causes a Local
      --  reset to halt a running system.If DHCSR.C_DEBUGEN is set to 0, the
      --  processor ignores the value of this bit.
      VC_CORERESET   : DEMCR_VC_CORERESET_Field :=
                        NRF_SVD.COREDEBUG.Vc_Corereset_0;
      --  unspecified
      Reserved_1_9   : HAL.UInt9 := 16#0#;
      --  VC_HARDERR bit. Enable halting debug trap on a HardFault exception.If
      --  DHCSR.C_DEBUGEN is set to 0, the processor ignores the value of this
      --  bit.
      VC_HARDERR     : DEMCR_VC_HARDERR_Field :=
                        NRF_SVD.COREDEBUG.Vc_Harderr_0;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  DWTENA bit. Global enable for all features configured and controlled
      --  by the DWT unit.
      DWTENA         : DEMCR_DWTENA_Field := NRF_SVD.COREDEBUG.Dwtena_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEMCR_Register use record
      VC_CORERESET   at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      VC_HARDERR     at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      DWTENA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type CoreDebug_Disc is
     (
      Read,
      Write);

   --  Core Debug Registers
   type CoreDebug_Peripheral
     (Discriminent : CoreDebug_Disc := Read)
   is record
      --  Debug Core Register Selector Register
      DCRSR       : aliased DCRSR_Register;
      --  Debug Core Register Data Register
      DCRDR       : aliased HAL.UInt32;
      --  Debug Exception and Monitor Control Register
      DEMCR       : aliased DEMCR_Register;
      case Discriminent is
         when Read =>
            --  Debug Halting Control and Status Register
            DHCSR_Read : aliased DHCSR_Read_Register;
         when Write =>
            --  Debug Halting Control and Status Register
            DHCSR_Write : aliased DHCSR_Write_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for CoreDebug_Peripheral use record
      DCRSR       at 16#4# range 0 .. 31;
      DCRDR       at 16#8# range 0 .. 31;
      DEMCR       at 16#C# range 0 .. 31;
      DHCSR_Read  at 16#0# range 0 .. 31;
      DHCSR_Write at 16#0# range 0 .. 31;
   end record;

   --  Core Debug Registers
   CoreDebug_Periph : aliased CoreDebug_Peripheral
     with Import, Address => System'To_Address (16#E000EDF0#);

end NRF_SVD.COREDEBUG;
