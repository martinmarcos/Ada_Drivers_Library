--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAMDA1G15A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.NVMCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Command
   type CTRLA_CMDSelect is
     (
      --  Reset value for the field
      Ctrla_Cmdselect_Reset,
      --  Erase Row - Erases the row addressed by the ADDR register.
      Er,
      --  Write Page - Writes the contents of the page buffer to the page
      --  addressed by the ADDR register.
      Wp,
      --  Erase Auxiliary Row - Erases the auxiliary row addressed by the ADDR
      --  register. This command can be given only when the security bit is not
      --  set and only to the user configuration row.
      Ear,
      --  Write Auxiliary Page - Writes the contents of the page buffer to the
      --  page addressed by the ADDR register. This command can be given only
      --  when the security bit is not set and only to the user configuration
      --  row.
      Wap,
      --  Security Flow Command
      Sf,
      --  Write lockbits
      Wl,
      --  RWW EEPROM area Erase Row - Erases the row addressed by the ADDR
      --  register.
      Rwweeer,
      --  RWW EEPROM Write Page - Writes the contents of the page buffer to the
      --  page addressed by the ADDR register.
      Rwweewp,
      --  Lock Region - Locks the region containing the address location in the
      --  ADDR register.
      Lr,
      --  Unlock Region - Unlocks the region containing the address location in
      --  the ADDR register.
      Ur,
      --  Sets the power reduction mode.
      Sprm,
      --  Clears the power reduction mode.
      Cprm,
      --  Page Buffer Clear - Clears the page buffer.
      Pbc,
      --  Set Security Bit - Sets the security bit by writing 0x00 to the first
      --  byte in the lockbit row.
      Ssb,
      --  Invalidate all cache lines.
      Invall)
     with Size => 7;
   for CTRLA_CMDSelect use
     (Ctrla_Cmdselect_Reset => 0,
      Er => 2,
      Wp => 4,
      Ear => 5,
      Wap => 6,
      Sf => 10,
      Wl => 15,
      Rwweeer => 26,
      Rwweewp => 28,
      Lr => 64,
      Ur => 65,
      Sprm => 66,
      Cprm => 67,
      Pbc => 68,
      Ssb => 69,
      Invall => 70);

   --  Command Execution
   type CTRLA_CMDEXSelect is
     (
      --  Reset value for the field
      Ctrla_Cmdexselect_Reset,
      --  Execution Key
      Key)
     with Size => 8;
   for CTRLA_CMDEXSelect use
     (Ctrla_Cmdexselect_Reset => 0,
      Key => 165);

   --  Control A
   type NVMCTRL_CTRLA_Register is record
      --  Command
      CMD          : CTRLA_CMDSelect := Ctrla_Cmdselect_Reset;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
      --  Command Execution
      CMDEX        : CTRLA_CMDEXSelect := Ctrla_Cmdexselect_Reset;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for NVMCTRL_CTRLA_Register use record
      CMD          at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      CMDEX        at 0 range 8 .. 15;
   end record;

   --  NVM Read Wait States
   type CTRLB_RWSSelect is
     (
      --  Single Auto Wait State
      Single,
      --  Half Auto Wait State
      Half,
      --  Dual Auto Wait State
      Dual)
     with Size => 4;
   for CTRLB_RWSSelect use
     (Single => 0,
      Half => 1,
      Dual => 2);

   --  Power Reduction Mode during Sleep
   type CTRLB_SLEEPPRMSelect is
     (
      --  NVM block enters low-power mode when entering sleep.NVM block exits
      --  low-power mode upon first access.
      Wakeonaccess,
      --  NVM block enters low-power mode when entering sleep.NVM block exits
      --  low-power mode when exiting sleep.
      Wakeupinstant,
      --  Auto power reduction disabled.
      Disabled)
     with Size => 2;
   for CTRLB_SLEEPPRMSelect use
     (Wakeonaccess => 0,
      Wakeupinstant => 1,
      Disabled => 3);

   --  NVMCTRL Read Mode
   type CTRLB_READMODESelect is
     (
      --  The NVM Controller (cache system) does not insert wait states on a
      --  cache miss. Gives the best system performance.
      No_Miss_Penalty,
      --  Reduces power consumption of the cache system, but inserts a wait
      --  state each time there is a cache miss. This mode may not be relevant
      --  if CPU performance is required, as the application will be stalled
      --  and may lead to increase run time.
      Low_Power,
      --  The cache system ensures that a cache hit or miss takes the same
      --  amount of time, determined by the number of programmed flash wait
      --  states. This mode can be used for real-time applications that require
      --  deterministic execution timings.
      Deterministic)
     with Size => 2;
   for CTRLB_READMODESelect use
     (No_Miss_Penalty => 0,
      Low_Power => 1,
      Deterministic => 2);

   --  Control B
   type NVMCTRL_CTRLB_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  NVM Read Wait States
      RWS            : CTRLB_RWSSelect := SAM_SVD.NVMCTRL.Single;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Manual Write
      MANW           : Boolean := False;
      --  Power Reduction Mode during Sleep
      SLEEPPRM       : CTRLB_SLEEPPRMSelect := SAM_SVD.NVMCTRL.Wakeonaccess;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  NVMCTRL Read Mode
      READMODE       : CTRLB_READMODESelect :=
                        SAM_SVD.NVMCTRL.No_Miss_Penalty;
      --  Cache Disable
      CACHEDIS       : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVMCTRL_CTRLB_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RWS            at 0 range 1 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      MANW           at 0 range 7 .. 7;
      SLEEPPRM       at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      READMODE       at 0 range 16 .. 17;
      CACHEDIS       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype NVMCTRL_PARAM_NVMP_Field is HAL.UInt16;

   --  Page Size
   type PARAM_PSZSelect is
     (
      --  8 bytes
      PARAM_PSZSelect_8,
      --  16 bytes
      PARAM_PSZSelect_16,
      --  32 bytes
      PARAM_PSZSelect_32,
      --  64 bytes
      PARAM_PSZSelect_64,
      --  128 bytes
      PARAM_PSZSelect_128,
      --  256 bytes
      PARAM_PSZSelect_256,
      --  512 bytes
      PARAM_PSZSelect_512,
      --  1024 bytes
      PARAM_PSZSelect_1024)
     with Size => 3;
   for PARAM_PSZSelect use
     (PARAM_PSZSelect_8 => 0,
      PARAM_PSZSelect_16 => 1,
      PARAM_PSZSelect_32 => 2,
      PARAM_PSZSelect_64 => 3,
      PARAM_PSZSelect_128 => 4,
      PARAM_PSZSelect_256 => 5,
      PARAM_PSZSelect_512 => 6,
      PARAM_PSZSelect_1024 => 7);

   subtype NVMCTRL_PARAM_RWWEEP_Field is HAL.UInt12;

   --  NVM Parameter
   type NVMCTRL_PARAM_Register is record
      --  Read-only. NVM Pages
      NVMP           : NVMCTRL_PARAM_NVMP_Field;
      --  Read-only. Page Size
      PSZ            : PARAM_PSZSelect;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. RWW EEPROM Pages
      RWWEEP         : NVMCTRL_PARAM_RWWEEP_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVMCTRL_PARAM_Register use record
      NVMP           at 0 range 0 .. 15;
      PSZ            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RWWEEP         at 0 range 20 .. 31;
   end record;

   --  Interrupt Enable Clear
   type NVMCTRL_INTENCLR_Register is record
      --  NVM Ready Interrupt Enable
      READY        : Boolean := False;
      --  Error Interrupt Enable
      ERROR        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVMCTRL_INTENCLR_Register use record
      READY        at 0 range 0 .. 0;
      ERROR        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Enable Set
   type NVMCTRL_INTENSET_Register is record
      --  NVM Ready Interrupt Enable
      READY        : Boolean := False;
      --  Error Interrupt Enable
      ERROR        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVMCTRL_INTENSET_Register use record
      READY        at 0 range 0 .. 0;
      ERROR        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type NVMCTRL_INTFLAG_Register is record
      --  NVM Ready
      READY        : Boolean := False;
      --  Error
      ERROR        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVMCTRL_INTFLAG_Register use record
      READY        at 0 range 0 .. 0;
      ERROR        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Status
   type NVMCTRL_STATUS_Register is record
      --  Read-only. Power Reduction Mode
      PRM           : Boolean := False;
      --  NVM Page Buffer Active Loading
      LOAD          : Boolean := False;
      --  Programming Error Status
      PROGE         : Boolean := False;
      --  Lock Error Status
      LOCKE         : Boolean := False;
      --  NVM Error
      NVME          : Boolean := False;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Read-only. Security Bit Status
      SB            : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for NVMCTRL_STATUS_Register use record
      PRM           at 0 range 0 .. 0;
      LOAD          at 0 range 1 .. 1;
      PROGE         at 0 range 2 .. 2;
      LOCKE         at 0 range 3 .. 3;
      NVME          at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      SB            at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype NVMCTRL_ADDR_ADDR_Field is HAL.UInt22;

   --  Address
   type NVMCTRL_ADDR_Register is record
      --  NVM Address
      ADDR           : NVMCTRL_ADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVMCTRL_ADDR_Register use record
      ADDR           at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Non-Volatile Memory Controller
   type NVMCTRL_Peripheral is record
      --  Control A
      CTRLA    : aliased NVMCTRL_CTRLA_Register;
      --  Control B
      CTRLB    : aliased NVMCTRL_CTRLB_Register;
      --  NVM Parameter
      PARAM    : aliased NVMCTRL_PARAM_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased NVMCTRL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased NVMCTRL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased NVMCTRL_INTFLAG_Register;
      --  Status
      STATUS   : aliased NVMCTRL_STATUS_Register;
      --  Address
      ADDR     : aliased NVMCTRL_ADDR_Register;
      --  Lock Section
      LOCK     : aliased HAL.UInt16;
   end record
     with Volatile;

   for NVMCTRL_Peripheral use record
      CTRLA    at 16#0# range 0 .. 15;
      CTRLB    at 16#4# range 0 .. 31;
      PARAM    at 16#8# range 0 .. 31;
      INTENCLR at 16#C# range 0 .. 7;
      INTENSET at 16#10# range 0 .. 7;
      INTFLAG  at 16#14# range 0 .. 7;
      STATUS   at 16#18# range 0 .. 15;
      ADDR     at 16#1C# range 0 .. 31;
      LOCK     at 16#20# range 0 .. 15;
   end record;

   --  Non-Volatile Memory Controller
   NVMCTRL_Periph : aliased NVMCTRL_Peripheral
     with Import, Address => System'To_Address (16#41004000#);

end SAM_SVD.NVMCTRL;
