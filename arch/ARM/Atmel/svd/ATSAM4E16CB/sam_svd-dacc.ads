--  This spec has been automatically generated from ATSAM4E16CB.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Digital-to-Analog Converter Controller
package SAM_SVD.DACC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type DACC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Trigger Enable
   type MR_TRGEN_Field is
     (
      --  External trigger mode disabled. DACC in free-running mode.
      Dis,
      --  External trigger mode enabled.
      En)
     with Size => 1;
   for MR_TRGEN_Field use
     (Dis => 0,
      En => 1);

   --  Trigger Selection
   type MR_TRGSEL_Field is
     (
      --  External trigger
      Trgsel0,
      --  TIO Output of the Timer Counter Channel 0
      Trgsel1,
      --  TIO Output of the Timer Counter Channel 1
      Trgsel2,
      --  TIO Output of the Timer Counter Channel 2
      Trgsel3,
      --  PWM Event Line 0
      Trgsel4,
      --  PWM Event Line 1
      Trgsel5)
     with Size => 3;
   for MR_TRGSEL_Field use
     (Trgsel0 => 0,
      Trgsel1 => 1,
      Trgsel2 => 2,
      Trgsel3 => 3,
      Trgsel4 => 4,
      Trgsel5 => 5);

   --  Word Transfer
   type MR_WORD_Field is
     (
      --  Half-word transfer
      Half,
      --  Word transfer
      Word)
     with Size => 1;
   for MR_WORD_Field use
     (Half => 0,
      Word => 1);

   --  User Channel Selection
   type MR_USER_SEL_Field is
     (
      --  Channel 0
      Channel0,
      --  Channel 1
      Channel1)
     with Size => 2;
   for MR_USER_SEL_Field use
     (Channel0 => 0,
      Channel1 => 1);

   --  Tag Selection Mode
   type MR_TAG_Field is
     (
      --  Tag selection mode disabled. Using USER_SEL to select the channel for
      --  the conversion.
      Dis,
      --  Tag selection mode enabled
      En)
     with Size => 1;
   for MR_TAG_Field use
     (Dis => 0,
      En => 1);

   --  Maximum Speed Mode
   type MR_MAXS_Field is
     (
      --  Normal mode
      Normal,
      --  Maximum speed mode enabled
      Maximum)
     with Size => 1;
   for MR_MAXS_Field use
     (Normal => 0,
      Maximum => 1);

   --  Clock Divider
   type MR_CLKDIV_Field is
     (
      --  DAC clock is peripheral clock divided by 2
      Div_2,
      --  DAC clock is peripheral clock divided by 4 (to be used when
      --  peripheral clock frequency is above 100 MHz)
      Div_4)
     with Size => 1;
   for MR_CLKDIV_Field use
     (Div_2 => 0,
      Div_4 => 1);

   --  Startup Time Selection
   type MR_STARTUP_Field is
     (
      --  0 periods of peripheral clock
      MR_STARTUP_Field_0,
      --  8 periods of peripheral clock
      MR_STARTUP_Field_8,
      --  16 periods of peripheral clock
      MR_STARTUP_Field_16,
      --  24 periods of peripheral clock
      MR_STARTUP_Field_24,
      --  64 periods of peripheral clock
      MR_STARTUP_Field_64,
      --  80 periods of peripheral clock
      MR_STARTUP_Field_80,
      --  96 periods of peripheral clock
      MR_STARTUP_Field_96,
      --  112 periods of peripheral clock
      MR_STARTUP_Field_112,
      --  512 periods of peripheral clock
      MR_STARTUP_Field_512,
      --  576 periods of peripheral clock
      MR_STARTUP_Field_576,
      --  640 periods of peripheral clock
      MR_STARTUP_Field_640,
      --  704 periods of peripheral clock
      MR_STARTUP_Field_704,
      --  768 periods of peripheral clock
      MR_STARTUP_Field_768,
      --  832 periods of peripheral clock
      MR_STARTUP_Field_832,
      --  896 periods of peripheral clock
      MR_STARTUP_Field_896,
      --  960 periods of peripheral clock
      MR_STARTUP_Field_960,
      --  1024 periods of peripheral clock
      MR_STARTUP_Field_1024,
      --  1088 periods of peripheral clock
      MR_STARTUP_Field_1088,
      --  1152 periods of peripheral clock
      MR_STARTUP_Field_1152,
      --  1216 periods of peripheral clock
      MR_STARTUP_Field_1216,
      --  1280 periods of peripheral clock
      MR_STARTUP_Field_1280,
      --  1344 periods of peripheral clock
      MR_STARTUP_Field_1344,
      --  1408 periods of peripheral clock
      MR_STARTUP_Field_1408,
      --  1472 periods of peripheral clock
      MR_STARTUP_Field_1472,
      --  1536 periods of peripheral clock
      MR_STARTUP_Field_1536,
      --  1600 periods of peripheral clock
      MR_STARTUP_Field_1600,
      --  1664 periods of peripheral clock
      MR_STARTUP_Field_1664,
      --  1728 periods of peripheral clock
      MR_STARTUP_Field_1728,
      --  1792 periods of peripheral clock
      MR_STARTUP_Field_1792,
      --  1856 periods of peripheral clock
      MR_STARTUP_Field_1856,
      --  1920 periods of peripheral clock
      MR_STARTUP_Field_1920,
      --  1984 periods of peripheral clock
      MR_STARTUP_Field_1984,
      --  2048 periods of peripheral clock
      MR_STARTUP_Field_2048,
      --  2112 periods of peripheral clock
      MR_STARTUP_Field_2112,
      --  2176 periods of peripheral clock
      MR_STARTUP_Field_2176,
      --  2240 periods of peripheral clock
      MR_STARTUP_Field_2240,
      --  2304 periods of peripheral clock
      MR_STARTUP_Field_2304,
      --  2368 periods of peripheral clock
      MR_STARTUP_Field_2368,
      --  2432 periods of peripheral clock
      MR_STARTUP_Field_2432,
      --  2496 periods of peripheral clock
      MR_STARTUP_Field_2496,
      --  2560 periods of peripheral clock
      MR_STARTUP_Field_2560,
      --  2624 periods of peripheral clock
      MR_STARTUP_Field_2624,
      --  2688 periods of peripheral clock
      MR_STARTUP_Field_2688,
      --  2752 periods of peripheral clock
      MR_STARTUP_Field_2752,
      --  2816 periods of peripheral clock
      MR_STARTUP_Field_2816,
      --  2880 periods of peripheral clock
      MR_STARTUP_Field_2880,
      --  2944 periods of peripheral clock
      MR_STARTUP_Field_2944,
      --  3008 periods of peripheral clock
      MR_STARTUP_Field_3008,
      --  3072 periods of peripheral clock
      MR_STARTUP_Field_3072,
      --  3136 periods of peripheral clock
      MR_STARTUP_Field_3136,
      --  3200 periods of peripheral clock
      MR_STARTUP_Field_3200,
      --  3264 periods of peripheral clock
      MR_STARTUP_Field_3264,
      --  3328 periods of peripheral clock
      MR_STARTUP_Field_3328,
      --  3392 periods of peripheral clock
      MR_STARTUP_Field_3392,
      --  3456 periods of peripheral clock
      MR_STARTUP_Field_3456,
      --  3520 periods of peripheral clock
      MR_STARTUP_Field_3520,
      --  3584 periods of peripheral clock
      MR_STARTUP_Field_3584,
      --  3648 periods of peripheral clock
      MR_STARTUP_Field_3648,
      --  3712 periods of peripheral clock
      MR_STARTUP_Field_3712,
      --  3776 periods of peripheral clock
      MR_STARTUP_Field_3776,
      --  3840 periods of peripheral clock
      MR_STARTUP_Field_3840,
      --  3904 periods of peripheral clock
      MR_STARTUP_Field_3904,
      --  3968 periods of peripheral clock
      MR_STARTUP_Field_3968,
      --  4032 periods of peripheral clock
      MR_STARTUP_Field_4032)
     with Size => 6;
   for MR_STARTUP_Field use
     (MR_STARTUP_Field_0 => 0,
      MR_STARTUP_Field_8 => 1,
      MR_STARTUP_Field_16 => 2,
      MR_STARTUP_Field_24 => 3,
      MR_STARTUP_Field_64 => 4,
      MR_STARTUP_Field_80 => 5,
      MR_STARTUP_Field_96 => 6,
      MR_STARTUP_Field_112 => 7,
      MR_STARTUP_Field_512 => 8,
      MR_STARTUP_Field_576 => 9,
      MR_STARTUP_Field_640 => 10,
      MR_STARTUP_Field_704 => 11,
      MR_STARTUP_Field_768 => 12,
      MR_STARTUP_Field_832 => 13,
      MR_STARTUP_Field_896 => 14,
      MR_STARTUP_Field_960 => 15,
      MR_STARTUP_Field_1024 => 16,
      MR_STARTUP_Field_1088 => 17,
      MR_STARTUP_Field_1152 => 18,
      MR_STARTUP_Field_1216 => 19,
      MR_STARTUP_Field_1280 => 20,
      MR_STARTUP_Field_1344 => 21,
      MR_STARTUP_Field_1408 => 22,
      MR_STARTUP_Field_1472 => 23,
      MR_STARTUP_Field_1536 => 24,
      MR_STARTUP_Field_1600 => 25,
      MR_STARTUP_Field_1664 => 26,
      MR_STARTUP_Field_1728 => 27,
      MR_STARTUP_Field_1792 => 28,
      MR_STARTUP_Field_1856 => 29,
      MR_STARTUP_Field_1920 => 30,
      MR_STARTUP_Field_1984 => 31,
      MR_STARTUP_Field_2048 => 32,
      MR_STARTUP_Field_2112 => 33,
      MR_STARTUP_Field_2176 => 34,
      MR_STARTUP_Field_2240 => 35,
      MR_STARTUP_Field_2304 => 36,
      MR_STARTUP_Field_2368 => 37,
      MR_STARTUP_Field_2432 => 38,
      MR_STARTUP_Field_2496 => 39,
      MR_STARTUP_Field_2560 => 40,
      MR_STARTUP_Field_2624 => 41,
      MR_STARTUP_Field_2688 => 42,
      MR_STARTUP_Field_2752 => 43,
      MR_STARTUP_Field_2816 => 44,
      MR_STARTUP_Field_2880 => 45,
      MR_STARTUP_Field_2944 => 46,
      MR_STARTUP_Field_3008 => 47,
      MR_STARTUP_Field_3072 => 48,
      MR_STARTUP_Field_3136 => 49,
      MR_STARTUP_Field_3200 => 50,
      MR_STARTUP_Field_3264 => 51,
      MR_STARTUP_Field_3328 => 52,
      MR_STARTUP_Field_3392 => 53,
      MR_STARTUP_Field_3456 => 54,
      MR_STARTUP_Field_3520 => 55,
      MR_STARTUP_Field_3584 => 56,
      MR_STARTUP_Field_3648 => 57,
      MR_STARTUP_Field_3712 => 58,
      MR_STARTUP_Field_3776 => 59,
      MR_STARTUP_Field_3840 => 60,
      MR_STARTUP_Field_3904 => 61,
      MR_STARTUP_Field_3968 => 62,
      MR_STARTUP_Field_4032 => 63);

   --  Mode Register
   type DACC_MR_Register is record
      --  Trigger Enable
      TRGEN          : MR_TRGEN_Field := SAM_SVD.DACC.Dis;
      --  Trigger Selection
      TRGSEL         : MR_TRGSEL_Field := SAM_SVD.DACC.Trgsel0;
      --  Word Transfer
      WORD           : MR_WORD_Field := SAM_SVD.DACC.Half;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Must Be Set to 1
      ONE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  User Channel Selection
      USER_SEL       : MR_USER_SEL_Field := SAM_SVD.DACC.Channel0;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Tag Selection Mode
      TAG            : MR_TAG_Field := SAM_SVD.DACC.Dis;
      --  Maximum Speed Mode
      MAXS           : MR_MAXS_Field := SAM_SVD.DACC.Normal;
      --  Clock Divider
      CLKDIV         : MR_CLKDIV_Field := SAM_SVD.DACC.Div_2;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Startup Time Selection
      STARTUP        : MR_STARTUP_Field := SAM_SVD.DACC.MR_STARTUP_Field_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      WORD           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ONE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      USER_SEL       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      TAG            at 0 range 20 .. 20;
      MAXS           at 0 range 21 .. 21;
      CLKDIV         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      STARTUP        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  DACC_CHER_CH array
   type DACC_CHER_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DACC_CHER_CH
   type DACC_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt2;
         when True =>
            --  CH as an array
            Arr : DACC_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DACC_CHER_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Enable Register
   type DACC_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH            : DACC_CHER_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CHER_Register use record
      CH            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DACC_CHDR_CH array
   type DACC_CHDR_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DACC_CHDR_CH
   type DACC_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt2;
         when True =>
            --  CH as an array
            Arr : DACC_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DACC_CHDR_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Disable Register
   type DACC_CHDR_Register is record
      --  Write-only. Channel 0 Disable
      CH            : DACC_CHDR_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CHDR_Register use record
      CH            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DACC_CHSR_CH array
   type DACC_CHSR_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DACC_CHSR_CH
   type DACC_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt2;
         when True =>
            --  CH as an array
            Arr : DACC_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DACC_CHSR_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Status Register
   type DACC_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH            : DACC_CHSR_CH_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CHSR_Register use record
      CH            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Enable Register
   type DACC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : Boolean := False;
      --  Write-only. End of Conversion Interrupt Enable
      EOC           : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IER_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Disable Register
   type DACC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable.
      TXRDY         : Boolean := False;
      --  Write-only. End of Conversion Interrupt Disable
      EOC           : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IDR_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Mask Register
   type DACC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : Boolean;
      --  Read-only. End of Conversion Interrupt Mask
      EOC           : Boolean;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX         : Boolean;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IMR_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Status Register
   type DACC_ISR_Register is record
      --  Read-only. Transmit Ready Interrupt Flag
      TXRDY         : Boolean;
      --  Read-only. End of Conversion Interrupt Flag
      EOC           : Boolean;
      --  Read-only. End of DMA Interrupt Flag
      ENDTX         : Boolean;
      --  Read-only. Transmit Buffer Empty
      TXBUFE        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ISR_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DACC_ACR_IBCTLCH array element
   subtype DACC_ACR_IBCTLCH_Element is HAL.UInt2;

   --  DACC_ACR_IBCTLCH array
   type DACC_ACR_IBCTLCH_Field_Array is array (0 .. 1)
     of DACC_ACR_IBCTLCH_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for DACC_ACR_IBCTLCH
   type DACC_ACR_IBCTLCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IBCTLCH as a value
            Val : HAL.UInt4;
         when True =>
            --  IBCTLCH as an array
            Arr : DACC_ACR_IBCTLCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for DACC_ACR_IBCTLCH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype DACC_ACR_IBCTLDACCORE_Field is HAL.UInt2;

   --  Analog Current Register
   type DACC_ACR_Register is record
      --  Analog Output Current Control
      IBCTLCH        : DACC_ACR_IBCTLCH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Bias Current Control for DAC Core
      IBCTLDACCORE   : DACC_ACR_IBCTLDACCORE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ACR_Register use record
      IBCTLCH        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IBCTLDACCORE   at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Write Protection Key
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
      Passwd => 4473155);

   --  Write Protection Mode Register
   type DACC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype DACC_WPSR_WPVSRC_Field is HAL.UInt8;

   --  Write Protection Status Register
   type DACC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : DACC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_TCR_TXCTR_Field is HAL.UInt16;

   --  Transmit Counter Register
   type DACC_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : DACC_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_TNCR_TXNCTR_Field is HAL.UInt16;

   --  Transmit Next Counter Register
   type DACC_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : DACC_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type DACC_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type DACC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-Analog Converter Controller
   type DACC_Peripheral is record
      --  Control Register
      CR   : aliased DACC_CR_Register;
      --  Mode Register
      MR   : aliased DACC_MR_Register;
      --  Channel Enable Register
      CHER : aliased DACC_CHER_Register;
      --  Channel Disable Register
      CHDR : aliased DACC_CHDR_Register;
      --  Channel Status Register
      CHSR : aliased DACC_CHSR_Register;
      --  Conversion Data Register
      CDR  : aliased HAL.UInt32;
      --  Interrupt Enable Register
      IER  : aliased DACC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased DACC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased DACC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased DACC_ISR_Register;
      --  Analog Current Register
      ACR  : aliased DACC_ACR_Register;
      --  Write Protection Mode Register
      WPMR : aliased DACC_WPMR_Register;
      --  Write Protection Status Register
      WPSR : aliased DACC_WPSR_Register;
      --  Transmit Pointer Register
      TPR  : aliased HAL.UInt32;
      --  Transmit Counter Register
      TCR  : aliased DACC_TCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased HAL.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased DACC_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased DACC_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased DACC_PTSR_Register;
   end record
     with Volatile;

   for DACC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      CHER at 16#10# range 0 .. 31;
      CHDR at 16#14# range 0 .. 31;
      CHSR at 16#18# range 0 .. 31;
      CDR  at 16#20# range 0 .. 31;
      IER  at 16#24# range 0 .. 31;
      IDR  at 16#28# range 0 .. 31;
      IMR  at 16#2C# range 0 .. 31;
      ISR  at 16#30# range 0 .. 31;
      ACR  at 16#94# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Digital-to-Analog Converter Controller
   DACC_Periph : aliased DACC_Peripheral
     with Import, Address => DACC_Base;

end SAM_SVD.DACC;
