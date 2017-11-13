--  This spec has been automatically generated from STM32F407.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SAI1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SAI_ACR1_MODE_Field is HAL.UInt2;
   subtype SAI_ACR1_PRTCFG_Field is HAL.UInt2;
   subtype SAI_ACR1_DS_Field is HAL.UInt3;
   subtype SAI_ACR1_SYNCEN_Field is HAL.UInt2;
   subtype SAI_ACR1_MCKDIV_Field is HAL.UInt4;

   --  SAI AConfiguration register 1
   type SAI_ACR1_Register is record
      --  Audio block mode
      MODE           : SAI_ACR1_MODE_Field := 16#0#;
      --  Protocol configuration
      PRTCFG         : SAI_ACR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Data size
      DS             : SAI_ACR1_DS_Field := 16#2#;
      --  Least significant bit first
      LSBFIRST       : Boolean := False;
      --  Clock strobing edge
      CKSTR          : Boolean := False;
      --  Synchronization enable
      SYNCEN         : SAI_ACR1_SYNCEN_Field := 16#0#;
      --  Mono mode
      MONO           : Boolean := False;
      --  Output drive
      OUTDRIV        : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Audio block enable
      SAIAEN         : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  No divider
      NODIV          : Boolean := False;
      --  Master clock divider
      MCKDIV         : SAI_ACR1_MCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIAEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SAI_ACR2_FTH_Field is HAL.UInt3;
   subtype SAI_ACR2_MUTECNT_Field is HAL.UInt6;
   subtype SAI_ACR2_COMP_Field is HAL.UInt2;

   --  SAI AConfiguration register 2
   type SAI_ACR2_Register is record
      --  FIFO threshold
      FTH            : SAI_ACR2_FTH_Field := 16#0#;
      --  FIFO flush
      FFLUSH         : Boolean := False;
      --  Tristate management on data line
      TRIS           : Boolean := False;
      --  Mute
      MUTE           : Boolean := False;
      --  Mute value
      MUTEVAL        : Boolean := True;
      --  Mute counter
      MUTECNT        : SAI_ACR2_MUTECNT_Field := 16#0#;
      --  Complement bit
      CPL            : Boolean := False;
      --  Companding mode
      COMP           : SAI_ACR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECNT        at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SAI_AFRCR_FRL_Field is HAL.UInt8;
   subtype SAI_AFRCR_FSALL_Field is HAL.UInt7;

   --  SAI AFrame configuration register
   type SAI_AFRCR_Register is record
      --  Frame length
      FRL            : SAI_AFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length
      FSALL          : SAI_AFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. Frame synchronization definition
      FSDEF          : Boolean := False;
      --  Frame synchronization polarity
      FSPOL          : Boolean := False;
      --  Frame synchronization offset
      FSOFF          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_AFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_ASLOTR_FBOFF_Field is HAL.UInt5;
   subtype SAI_ASLOTR_SLOTSZ_Field is HAL.UInt2;
   subtype SAI_ASLOTR_NBSLOT_Field is HAL.UInt4;
   subtype SAI_ASLOTR_SLOTEN_Field is HAL.UInt16;

   --  SAI ASlot register
   type SAI_ASLOTR_Register is record
      --  First bit offset
      FBOFF          : SAI_ASLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Slot size
      SLOTSZ         : SAI_ASLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame
      NBSLOT         : SAI_ASLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Slot enable
      SLOTEN         : SAI_ASLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ASLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   --  SAI AInterrupt mask register2
   type SAI_AIM_Register is record
      --  Overrun/underrun interrupt enable
      OVRUDRIE      : Boolean := False;
      --  Mute detection interrupt enable
      MUTEDETIE     : Boolean := False;
      --  Wrong clock configuration interrupt enable
      WCKCFGIE      : Boolean := False;
      --  FIFO request interrupt enable
      FREQIE        : Boolean := False;
      --  Codec not ready interrupt enable
      CNRDYIE       : Boolean := False;
      --  Anticipated frame synchronization detection interrupt enable
      AFSDETIE      : Boolean := False;
      --  Late frame synchronization detection interrupt enable
      LFSDETIE      : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_AIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_ASR_FLTH_Field is HAL.UInt3;

   --  SAI AStatus register
   type SAI_ASR_Register is record
      --  Read-only. Overrun / underrun
      OVRUDR         : Boolean;
      --  Read-only. Mute detection
      MUTEDET        : Boolean;
      --  Read-only. Wrong clock configuration flag
      WCKCFG         : Boolean;
      --  Read-only. FIFO request
      FREQ           : Boolean;
      --  Read-only. Codec not ready
      CNRDY          : Boolean;
      --  Read-only. Anticipated frame synchronization detection
      AFSDET         : Boolean;
      --  Read-only. Late frame synchronization detection
      LFSDET         : Boolean;
      --  unspecified
      Reserved_7_15  : HAL.UInt9;
      --  Read-only. FIFO level threshold
      FLTH           : SAI_ASR_FLTH_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ASR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLTH           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  SAI AClear flag register
   type SAI_ACLRFR_Register is record
      --  Clear overrun / underrun
      COVRUDR       : Boolean := False;
      --  Mute detection flag
      CMUTEDET      : Boolean := False;
      --  Clear wrong clock configuration flag
      CWCKCFG       : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Clear codec not ready flag
      CCNRDY        : Boolean := False;
      --  Clear anticipated frame synchronization detection flag
      CAFSDET       : Boolean := False;
      --  Clear late frame synchronization detection flag
      CLFSDET       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_BCR1_MODE_Field is HAL.UInt2;
   subtype SAI_BCR1_PRTCFG_Field is HAL.UInt2;
   subtype SAI_BCR1_DS_Field is HAL.UInt3;
   subtype SAI_BCR1_SYNCEN_Field is HAL.UInt2;
   subtype SAI_BCR1_MCKDIV_Field is HAL.UInt4;

   --  SAI BConfiguration register 1
   type SAI_BCR1_Register is record
      --  Audio block mode
      MODE           : SAI_BCR1_MODE_Field := 16#0#;
      --  Protocol configuration
      PRTCFG         : SAI_BCR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Data size
      DS             : SAI_BCR1_DS_Field := 16#2#;
      --  Least significant bit first
      LSBFIRST       : Boolean := False;
      --  Clock strobing edge
      CKSTR          : Boolean := False;
      --  Synchronization enable
      SYNCEN         : SAI_BCR1_SYNCEN_Field := 16#0#;
      --  Mono mode
      MONO           : Boolean := False;
      --  Output drive
      OUTDRIV        : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Audio block enable
      SAIBEN         : Boolean := False;
      --  DMA enable
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  No divider
      NODIV          : Boolean := False;
      --  Master clock divider
      MCKDIV         : SAI_BCR1_MCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIBEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NODIV          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SAI_BCR2_FTH_Field is HAL.UInt3;
   subtype SAI_BCR2_MUTECNT_Field is HAL.UInt6;
   subtype SAI_BCR2_COMP_Field is HAL.UInt2;

   --  SAI BConfiguration register 2
   type SAI_BCR2_Register is record
      --  FIFO threshold
      FTH            : SAI_BCR2_FTH_Field := 16#0#;
      --  FIFO flush
      FFLUSH         : Boolean := False;
      --  Tristate management on data line
      TRIS           : Boolean := False;
      --  Mute
      MUTE           : Boolean := False;
      --  Mute value
      MUTEVAL        : Boolean := True;
      --  Mute counter
      MUTECNT        : SAI_BCR2_MUTECNT_Field := 16#0#;
      --  Complement bit
      CPL            : Boolean := False;
      --  Companding mode
      COMP           : SAI_BCR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECNT        at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SAI_BFRCR_FRL_Field is HAL.UInt8;
   subtype SAI_BFRCR_FSALL_Field is HAL.UInt7;

   --  SAI BFrame configuration register
   type SAI_BFRCR_Register is record
      --  Frame length
      FRL            : SAI_BFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length
      FSALL          : SAI_BFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. Frame synchronization definition
      FSDEF          : Boolean := False;
      --  Frame synchronization polarity
      FSPOL          : Boolean := False;
      --  Frame synchronization offset
      FSOFF          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_BSLOTR_FBOFF_Field is HAL.UInt5;
   subtype SAI_BSLOTR_SLOTSZ_Field is HAL.UInt2;
   subtype SAI_BSLOTR_NBSLOT_Field is HAL.UInt4;
   subtype SAI_BSLOTR_SLOTEN_Field is HAL.UInt16;

   --  SAI BSlot register
   type SAI_BSLOTR_Register is record
      --  First bit offset
      FBOFF          : SAI_BSLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Slot size
      SLOTSZ         : SAI_BSLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame
      NBSLOT         : SAI_BSLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Slot enable
      SLOTEN         : SAI_BSLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BSLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   --  SAI BInterrupt mask register2
   type SAI_BIM_Register is record
      --  Overrun/underrun interrupt enable
      OVRUDRIE      : Boolean := False;
      --  Mute detection interrupt enable
      MUTEDETIE     : Boolean := False;
      --  Wrong clock configuration interrupt enable
      WCKCFGIE      : Boolean := False;
      --  FIFO request interrupt enable
      FREQIE        : Boolean := False;
      --  Codec not ready interrupt enable
      CNRDYIE       : Boolean := False;
      --  Anticipated frame synchronization detection interrupt enable
      AFSDETIE      : Boolean := False;
      --  Late frame synchronization detection interrupt enable
      LFSDETIE      : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_BSR_FLTH_Field is HAL.UInt3;

   --  SAI BStatus register
   type SAI_BSR_Register is record
      --  Read-only. Overrun / underrun
      OVRUDR         : Boolean;
      --  Read-only. Mute detection
      MUTEDET        : Boolean;
      --  Read-only. Wrong clock configuration flag
      WCKCFG         : Boolean;
      --  Read-only. FIFO request
      FREQ           : Boolean;
      --  Read-only. Codec not ready
      CNRDY          : Boolean;
      --  Read-only. Anticipated frame synchronization detection
      AFSDET         : Boolean;
      --  Read-only. Late frame synchronization detection
      LFSDET         : Boolean;
      --  unspecified
      Reserved_7_15  : HAL.UInt9;
      --  Read-only. FIFO level threshold
      FLTH           : SAI_BSR_FLTH_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BSR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLTH           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  SAI BClear flag register
   type SAI_BCLRFR_Register is record
      --  Clear overrun / underrun
      COVRUDR       : Boolean := False;
      --  Mute detection flag
      CMUTEDET      : Boolean := False;
      --  Clear wrong clock configuration flag
      CWCKCFG       : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Clear codec not ready flag
      CCNRDY        : Boolean := False;
      --  Clear anticipated frame synchronization detection flag
      CAFSDET       : Boolean := False;
      --  Clear late frame synchronization detection flag
      CLFSDET       : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial audio interface
   type SAI1_Peripheral is record
      --  SAI AConfiguration register 1
      SAI_ACR1   : aliased SAI_ACR1_Register;
      --  SAI AConfiguration register 2
      SAI_ACR2   : aliased SAI_ACR2_Register;
      --  SAI AFrame configuration register
      SAI_AFRCR  : aliased SAI_AFRCR_Register;
      --  SAI ASlot register
      SAI_ASLOTR : aliased SAI_ASLOTR_Register;
      --  SAI AInterrupt mask register2
      SAI_AIM    : aliased SAI_AIM_Register;
      --  SAI AStatus register
      SAI_ASR    : aliased SAI_ASR_Register;
      --  SAI AClear flag register
      SAI_ACLRFR : aliased SAI_ACLRFR_Register;
      --  SAI AData register
      SAI_ADR    : aliased HAL.UInt32;
      --  SAI BConfiguration register 1
      SAI_BCR1   : aliased SAI_BCR1_Register;
      --  SAI BConfiguration register 2
      SAI_BCR2   : aliased SAI_BCR2_Register;
      --  SAI BFrame configuration register
      SAI_BFRCR  : aliased SAI_BFRCR_Register;
      --  SAI BSlot register
      SAI_BSLOTR : aliased SAI_BSLOTR_Register;
      --  SAI BInterrupt mask register2
      SAI_BIM    : aliased SAI_BIM_Register;
      --  SAI BStatus register
      SAI_BSR    : aliased SAI_BSR_Register;
      --  SAI BClear flag register
      SAI_BCLRFR : aliased SAI_BCLRFR_Register;
      --  SAI BData register
      SAI_BDR    : aliased HAL.UInt32;
   end record
     with Volatile;

   for SAI1_Peripheral use record
      SAI_ACR1   at 16#4# range 0 .. 31;
      SAI_ACR2   at 16#8# range 0 .. 31;
      SAI_AFRCR  at 16#C# range 0 .. 31;
      SAI_ASLOTR at 16#10# range 0 .. 31;
      SAI_AIM    at 16#14# range 0 .. 31;
      SAI_ASR    at 16#18# range 0 .. 31;
      SAI_ACLRFR at 16#1C# range 0 .. 31;
      SAI_ADR    at 16#20# range 0 .. 31;
      SAI_BCR1   at 16#24# range 0 .. 31;
      SAI_BCR2   at 16#28# range 0 .. 31;
      SAI_BFRCR  at 16#2C# range 0 .. 31;
      SAI_BSLOTR at 16#30# range 0 .. 31;
      SAI_BIM    at 16#34# range 0 .. 31;
      SAI_BSR    at 16#38# range 0 .. 31;
      SAI_BCLRFR at 16#3C# range 0 .. 31;
      SAI_BDR    at 16#40# range 0 .. 31;
   end record;

   --  Serial audio interface
   SAI1_Periph : aliased SAI1_Peripheral
     with Import, Address => System'To_Address (16#40015800#);

end STM32_SVD.SAI1;
