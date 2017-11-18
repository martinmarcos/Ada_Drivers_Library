--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.BEEP0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CFG_SEQREPEAT_Field is HAL.UInt8;

   --  Beeper Configuration
   type CFG_Register is record
      --  Beeper Sequence Repeat Value
      SEQREPEAT     : CFG_SEQREPEAT_Field := 16#0#;
      --  Write-only. Beeper Enable
      EN            : Boolean := False;
      --  unspecified
      Reserved_9_9  : HAL.Bit := 16#0#;
      --  Tone A Start IRQ
      ASTARTIRQ     : Boolean := False;
      --  Tone A End IRQ
      AENDIRQ       : Boolean := False;
      --  Tone B Start IRQ
      BSTARTIRQ     : Boolean := False;
      --  Tone B End IRQ
      BENDIRQ       : Boolean := False;
      --  Sequence 1 Cycle from End IRQ
      SEQNEARENDIRQ : Boolean := False;
      --  Sequence End IRQ
      SEQATENDIRQ   : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      SEQREPEAT     at 0 range 0 .. 7;
      EN            at 0 range 8 .. 8;
      Reserved_9_9  at 0 range 9 .. 9;
      ASTARTIRQ     at 0 range 10 .. 10;
      AENDIRQ       at 0 range 11 .. 11;
      BSTARTIRQ     at 0 range 12 .. 12;
      BENDIRQ       at 0 range 13 .. 13;
      SEQNEARENDIRQ at 0 range 14 .. 14;
      SEQATENDIRQ   at 0 range 15 .. 15;
   end record;

   subtype STAT_SEQREMAIN_Field is HAL.UInt8;

   --  Beeper Status
   type STAT_Register is record
      --  Read-only. Remaining Tone-pair Iterations to Play in Sequence Mode
      SEQREMAIN    : STAT_SEQREMAIN_Field := 16#0#;
      --  Read-only. Beeper is Busy
      BUSY         : Boolean := False;
      --  unspecified
      Reserved_9_9 : HAL.Bit := 16#0#;
      --  Tone A Has Started
      ASTARTED     : Boolean := False;
      --  Tone A Has Ended
      AENDED       : Boolean := False;
      --  Tone B Has Started
      BSTARTED     : Boolean := False;
      --  Tone B Has Ended
      BENDED       : Boolean := False;
      --  Sequencer Last Tone-pair Has Started
      SEQNEAREND   : Boolean := False;
      --  Sequencer Has Ended
      SEQENDED     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      SEQREMAIN    at 0 range 0 .. 7;
      BUSY         at 0 range 8 .. 8;
      Reserved_9_9 at 0 range 9 .. 9;
      ASTARTED     at 0 range 10 .. 10;
      AENDED       at 0 range 11 .. 11;
      BSTARTED     at 0 range 12 .. 12;
      BENDED       at 0 range 13 .. 13;
      SEQNEAREND   at 0 range 14 .. 14;
      SEQENDED     at 0 range 15 .. 15;
   end record;

   subtype TONEA_DUR_Field is HAL.UInt8;
   subtype TONEA_FREQ_Field is HAL.UInt7;

   --  Tone A Data
   type TONEA_Register is record
      --  Tone Duration
      DUR  : TONEA_DUR_Field := 16#1#;
      --  Tone Frequency
      FREQ : TONEA_FREQ_Field := 16#0#;
      --  Output Disable
      DIS  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TONEA_Register use record
      DUR  at 0 range 0 .. 7;
      FREQ at 0 range 8 .. 14;
      DIS  at 0 range 15 .. 15;
   end record;

   subtype TONEB_DUR_Field is HAL.UInt8;
   subtype TONEB_FREQ_Field is HAL.UInt7;

   --  Tone B Data
   type TONEB_Register is record
      --  Tone Duration
      DUR  : TONEB_DUR_Field := 16#1#;
      --  Tone Frequency
      FREQ : TONEB_FREQ_Field := 16#0#;
      --  Output Disable
      DIS  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TONEB_Register use record
      DUR  at 0 range 0 .. 7;
      FREQ at 0 range 8 .. 14;
      DIS  at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Beeper Driver
   type BEEP0_Peripheral is record
      --  Beeper Configuration
      CFG   : aliased CFG_Register;
      --  Beeper Status
      STAT  : aliased STAT_Register;
      --  Tone A Data
      TONEA : aliased TONEA_Register;
      --  Tone B Data
      TONEB : aliased TONEB_Register;
   end record
     with Volatile;

   for BEEP0_Peripheral use record
      CFG   at 16#0# range 0 .. 15;
      STAT  at 16#4# range 0 .. 15;
      TONEA at 16#8# range 0 .. 15;
      TONEB at 16#C# range 0 .. 15;
   end record;

   --  Beeper Driver
   BEEP0_Periph : aliased BEEP0_Peripheral
     with Import, Address => System'To_Address (16#40005C00#);

end NRF_SVD.BEEP0;
