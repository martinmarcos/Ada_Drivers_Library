--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54628.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.EEPROM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CMD_CMD_Field is HAL.UInt3;

   --  EEPROM command register
   type CMD_Register is record
      --  Command.
      CMD           : CMD_CMD_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CMD           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RWSTATE_RPHASE2_Field is HAL.UInt8;
   subtype RWSTATE_RPHASE1_Field is HAL.UInt8;

   --  EEPROM read wait state register
   type RWSTATE_Register is record
      --  Wait states 2 (minus 1 encoded).
      RPHASE2        : RWSTATE_RPHASE2_Field := 16#7#;
      --  Wait states 1 (minus 1 encoded).
      RPHASE1        : RWSTATE_RPHASE1_Field := 16#E#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RWSTATE_Register use record
      RPHASE2        at 0 range 0 .. 7;
      RPHASE1        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AUTOPROG_AUTOPROG_Field is HAL.UInt2;

   --  EEPROM auto programming register
   type AUTOPROG_Register is record
      --  Auto programming mode: 00 = auto programming off 01 = erase/program
      --  cycle is triggered after 1 word is written 10 = erase/program cycle
      --  is triggered after a write to AHB address ending with .
      AUTOPROG      : AUTOPROG_AUTOPROG_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUTOPROG_Register use record
      AUTOPROG      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype WSTATE_PHASE3_Field is HAL.UInt8;
   subtype WSTATE_PHASE2_Field is HAL.UInt8;
   subtype WSTATE_PHASE1_Field is HAL.UInt8;

   --  EEPROM wait state register
   type WSTATE_Register is record
      --  Wait states for phase 3 (minus 1 encoded).
      PHASE3         : WSTATE_PHASE3_Field := 16#2#;
      --  Wait states for phase 2 (minus 1 encoded).
      PHASE2         : WSTATE_PHASE2_Field := 16#8#;
      --  Wait states for phase 1 (minus 1 encoded).
      PHASE1         : WSTATE_PHASE1_Field := 16#4#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  Lock timing parameters for write, erase and program operation 0 =
      --  WSTATE and CLKDIV registers have R/W access 1 = WSTATE and CLKDIV
      --  registers have R only access.
      LCK_PARWEP     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WSTATE_Register use record
      PHASE3         at 0 range 0 .. 7;
      PHASE2         at 0 range 8 .. 15;
      PHASE1         at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      LCK_PARWEP     at 0 range 31 .. 31;
   end record;

   subtype CLKDIV_CLKDIV_Field is HAL.UInt16;

   --  EEPROM clock divider register
   type CLKDIV_Register is record
      --  Division factor (minus 1 encoded).
      CLKDIV         : CLKDIV_CLKDIV_Field := 16#63#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      CLKDIV         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EEPROM power-down register
   type PWRDWN_Register is record
      --  Power down mode bit.
      PWRDWN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRDWN_Register use record
      PWRDWN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  EEPROM interrupt enable clear
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Clear program operation finished interrupt enable bit for
      --  EEPROM.
      PROG_CLR_EN   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PROG_CLR_EN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EEPROM interrupt enable set
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Set program operation finished interrupt enable bit for
      --  EEPROM device 1.
      PROG_SET_EN   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PROG_SET_EN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EEPROM interrupt status
   type INTSTAT_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. EEPROM program operation finished interrupt status bit.
      END_OF_PROG   : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      END_OF_PROG   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EEPROM interrupt enable
   type INTEN_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. EEPROM program operation finished interrupt enable bit.
      EE_PROG_DONE  : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      EE_PROG_DONE  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EEPROM interrupt status clear
   type INTSTATCLR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Clear program operation finished interrupt status bit for
      --  EEPROM device.
      PROG_CLR_ST   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTATCLR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PROG_CLR_ST   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EEPROM interrupt status set
   type INTSTATSET_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Set program operation finished interrupt status bit for
      --  EEPROM device.
      PROG_SET_ST   : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTATSET_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PROG_SET_ST   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x EEPROM controller
   type EEPROM_Peripheral is record
      --  EEPROM command register
      CMD        : aliased CMD_Register;
      --  EEPROM read wait state register
      RWSTATE    : aliased RWSTATE_Register;
      --  EEPROM auto programming register
      AUTOPROG   : aliased AUTOPROG_Register;
      --  EEPROM wait state register
      WSTATE     : aliased WSTATE_Register;
      --  EEPROM clock divider register
      CLKDIV     : aliased CLKDIV_Register;
      --  EEPROM power-down register
      PWRDWN     : aliased PWRDWN_Register;
      --  EEPROM interrupt enable clear
      INTENCLR   : aliased INTENCLR_Register;
      --  EEPROM interrupt enable set
      INTENSET   : aliased INTENSET_Register;
      --  EEPROM interrupt status
      INTSTAT    : aliased INTSTAT_Register;
      --  EEPROM interrupt enable
      INTEN      : aliased INTEN_Register;
      --  EEPROM interrupt status clear
      INTSTATCLR : aliased INTSTATCLR_Register;
      --  EEPROM interrupt status set
      INTSTATSET : aliased INTSTATSET_Register;
   end record
     with Volatile;

   for EEPROM_Peripheral use record
      CMD        at 16#0# range 0 .. 31;
      RWSTATE    at 16#8# range 0 .. 31;
      AUTOPROG   at 16#C# range 0 .. 31;
      WSTATE     at 16#10# range 0 .. 31;
      CLKDIV     at 16#14# range 0 .. 31;
      PWRDWN     at 16#18# range 0 .. 31;
      INTENCLR   at 16#FD8# range 0 .. 31;
      INTENSET   at 16#FDC# range 0 .. 31;
      INTSTAT    at 16#FE0# range 0 .. 31;
      INTEN      at 16#FE4# range 0 .. 31;
      INTSTATCLR at 16#FE8# range 0 .. 31;
      INTSTATSET at 16#FEC# range 0 .. 31;
   end record;

   --  LPC54S60x/LPC5460x EEPROM controller
   EEPROM_Periph : aliased EEPROM_Peripheral
     with Import, Address => System'To_Address (16#40014000#);

end NRF_SVD.EEPROM;
