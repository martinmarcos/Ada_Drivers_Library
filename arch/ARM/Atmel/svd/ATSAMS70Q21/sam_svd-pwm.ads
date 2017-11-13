--  This spec has been automatically generated from ATSAMS70Q21.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CLKA Divide Factor
   type CLK_DIVA_Field is
     (
      --  CLKA clock is turned off
      Clka_Poff,
      --  CLKA clock is clock selected by PREA
      Prea)
     with Size => 8;
   for CLK_DIVA_Field use
     (Clka_Poff => 0,
      Prea => 1);

   --  CLKA Source Clock Selection
   type CLK_PREA_Field is
     (
      --  Peripheral clock
      Clk,
      --  Peripheral clock/2
      Clk_Div2,
      --  Peripheral clock/4
      Clk_Div4,
      --  Peripheral clock/8
      Clk_Div8,
      --  Peripheral clock/16
      Clk_Div16,
      --  Peripheral clock/32
      Clk_Div32,
      --  Peripheral clock/64
      Clk_Div64,
      --  Peripheral clock/128
      Clk_Div128,
      --  Peripheral clock/256
      Clk_Div256,
      --  Peripheral clock/512
      Clk_Div512,
      --  Peripheral clock/1024
      Clk_Div1024)
     with Size => 4;
   for CLK_PREA_Field use
     (Clk => 0,
      Clk_Div2 => 1,
      Clk_Div4 => 2,
      Clk_Div8 => 3,
      Clk_Div16 => 4,
      Clk_Div32 => 5,
      Clk_Div64 => 6,
      Clk_Div128 => 7,
      Clk_Div256 => 8,
      Clk_Div512 => 9,
      Clk_Div1024 => 10);

   --  CLKB Divide Factor
   type CLK_DIVB_Field is
     (
      --  CLKB clock is turned off
      Clkb_Poff,
      --  CLKB clock is clock selected by PREB
      Preb)
     with Size => 8;
   for CLK_DIVB_Field use
     (Clkb_Poff => 0,
      Preb => 1);

   --  CLKB Source Clock Selection
   type CLK_PREB_Field is
     (
      --  Peripheral clock
      Clk,
      --  Peripheral clock/2
      Clk_Div2,
      --  Peripheral clock/4
      Clk_Div4,
      --  Peripheral clock/8
      Clk_Div8,
      --  Peripheral clock/16
      Clk_Div16,
      --  Peripheral clock/32
      Clk_Div32,
      --  Peripheral clock/64
      Clk_Div64,
      --  Peripheral clock/128
      Clk_Div128,
      --  Peripheral clock/256
      Clk_Div256,
      --  Peripheral clock/512
      Clk_Div512,
      --  Peripheral clock/1024
      Clk_Div1024)
     with Size => 4;
   for CLK_PREB_Field use
     (Clk => 0,
      Clk_Div2 => 1,
      Clk_Div4 => 2,
      Clk_Div8 => 3,
      Clk_Div16 => 4,
      Clk_Div32 => 5,
      Clk_Div64 => 6,
      Clk_Div128 => 7,
      Clk_Div256 => 8,
      Clk_Div512 => 9,
      Clk_Div1024 => 10);

   --  PWM Clock Register
   type PWM0_CLK_Register is record
      --  CLKA Divide Factor
      DIVA           : CLK_DIVA_Field := SAM_SVD.PWM.Clka_Poff;
      --  CLKA Source Clock Selection
      PREA           : CLK_PREA_Field := SAM_SVD.PWM.Clk;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  CLKB Divide Factor
      DIVB           : CLK_DIVB_Field := SAM_SVD.PWM.Clkb_Poff;
      --  CLKB Source Clock Selection
      PREB           : CLK_PREB_Field := SAM_SVD.PWM.Clk;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_CLK_Register use record
      DIVA           at 0 range 0 .. 7;
      PREA           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DIVB           at 0 range 16 .. 23;
      PREB           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PWM0_ENA_CHID array
   type PWM0_ENA_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_ENA_CHID
   type PWM0_ENA_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_ENA_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_ENA_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Enable Register
   type PWM0_ENA_Register is record
      --  Write-only. Channel ID
      CHID          : PWM0_ENA_CHID_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_ENA_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM0_DIS_CHID array
   type PWM0_DIS_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_DIS_CHID
   type PWM0_DIS_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_DIS_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_DIS_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Disable Register
   type PWM0_DIS_Register is record
      --  Write-only. Channel ID
      CHID          : PWM0_DIS_CHID_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_DIS_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM0_SR_CHID array
   type PWM0_SR_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_SR_CHID
   type PWM0_SR_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_SR_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_SR_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Status Register
   type PWM0_SR_Register is record
      --  Read-only. Channel ID
      CHID          : PWM0_SR_CHID_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SR_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM0_IER1_CHID array
   type PWM0_IER1_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_IER1_CHID
   type PWM0_IER1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_IER1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_IER1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_IER1_FCHID array
   type PWM0_IER1_FCHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_IER1_FCHID
   type PWM0_IER1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : HAL.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM0_IER1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_IER1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Enable Register 1
   type PWM0_IER1_Register is record
      --  Write-only. Counter Event on Channel 0 Interrupt Enable
      CHID           : PWM0_IER1_CHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Fault Protection Trigger on Channel 0 Interrupt Enable
      FCHID          : PWM0_IER1_FCHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_IER1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_IDR1_CHID array
   type PWM0_IDR1_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_IDR1_CHID
   type PWM0_IDR1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_IDR1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_IDR1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_IDR1_FCHID array
   type PWM0_IDR1_FCHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_IDR1_FCHID
   type PWM0_IDR1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : HAL.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM0_IDR1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_IDR1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Disable Register 1
   type PWM0_IDR1_Register is record
      --  Write-only. Counter Event on Channel 0 Interrupt Disable
      CHID           : PWM0_IDR1_CHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Fault Protection Trigger on Channel 0 Interrupt Disable
      FCHID          : PWM0_IDR1_FCHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_IDR1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_IMR1_CHID array
   type PWM0_IMR1_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_IMR1_CHID
   type PWM0_IMR1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_IMR1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_IMR1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_IMR1_FCHID array
   type PWM0_IMR1_FCHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_IMR1_FCHID
   type PWM0_IMR1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : HAL.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM0_IMR1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_IMR1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Mask Register 1
   type PWM0_IMR1_Register is record
      --  Read-only. Counter Event on Channel 0 Interrupt Mask
      CHID           : PWM0_IMR1_CHID_Field;
      --  unspecified
      Reserved_4_15  : HAL.UInt12;
      --  Read-only. Fault Protection Trigger on Channel 0 Interrupt Mask
      FCHID          : PWM0_IMR1_FCHID_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_IMR1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_ISR1_CHID array
   type PWM0_ISR1_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_ISR1_CHID
   type PWM0_ISR1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM0_ISR1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_ISR1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_ISR1_FCHID array
   type PWM0_ISR1_FCHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_ISR1_FCHID
   type PWM0_ISR1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : HAL.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM0_ISR1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_ISR1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Status Register 1
   type PWM0_ISR1_Register is record
      --  Read-only. Counter Event on Channel 0
      CHID           : PWM0_ISR1_CHID_Field;
      --  unspecified
      Reserved_4_15  : HAL.UInt12;
      --  Read-only. Fault Protection Trigger on Channel 0
      FCHID          : PWM0_ISR1_FCHID_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_ISR1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_SCM_SYNC array
   type PWM0_SCM_SYNC_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_SCM_SYNC
   type PWM0_SCM_SYNC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYNC as a value
            Val : HAL.UInt4;
         when True =>
            --  SYNC as an array
            Arr : PWM0_SCM_SYNC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_SCM_SYNC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Synchronous Channels Update Mode
   type SCM_UPDM_Field is
     (
      --  Manual write of double buffer registers and manual update of
      --  synchronous channels
      Mode0,
      --  Manual write of double buffer registers and automatic update of
      --  synchronous channels
      Mode1,
      --  Automatic write of duty-cycle update registers by the DMA Controller
      --  and automatic update of synchronous channels
      Mode2)
     with Size => 2;
   for SCM_UPDM_Field use
     (Mode0 => 0,
      Mode1 => 1,
      Mode2 => 2);

   subtype PWM0_SCM_PTRCS_Field is HAL.UInt3;

   --  PWM Sync Channels Mode Register
   type PWM0_SCM_Register is record
      --  Synchronous Channel 0
      SYNC           : PWM0_SCM_SYNC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Synchronous Channels Update Mode
      UPDM           : SCM_UPDM_Field := SAM_SVD.PWM.Mode0;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  DMA Controller Transfer Request Mode
      PTRM           : Boolean := False;
      --  DMA Controller Transfer Request Comparison Selection
      PTRCS          : PWM0_SCM_PTRCS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SCM_Register use record
      SYNC           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      UPDM           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      PTRM           at 0 range 20 .. 20;
      PTRCS          at 0 range 21 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM0_DMAR_DMADUTY_Field is HAL.UInt24;

   --  PWM DMA Register
   type PWM0_DMAR_Register is record
      --  Write-only. Duty-Cycle Holding Register for DMA Access
      DMADUTY        : PWM0_DMAR_DMADUTY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_DMAR_Register use record
      DMADUTY        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM Sync Channels Update Control Register
   type PWM0_SCUC_Register is record
      --  Synchronous Channels Update Unlock
      UPDULOCK      : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SCUC_Register use record
      UPDULOCK      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PWM0_SCUP_UPR_Field is HAL.UInt4;
   subtype PWM0_SCUP_UPRCNT_Field is HAL.UInt4;

   --  PWM Sync Channels Update Period Register
   type PWM0_SCUP_Register is record
      --  Update Period
      UPR           : PWM0_SCUP_UPR_Field := 16#0#;
      --  Update Period Counter
      UPRCNT        : PWM0_SCUP_UPRCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SCUP_Register use record
      UPR           at 0 range 0 .. 3;
      UPRCNT        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PWM0_SCUPUPD_UPRUPD_Field is HAL.UInt4;

   --  PWM Sync Channels Update Period Update Register
   type PWM0_SCUPUPD_Register is record
      --  Write-only. Update Period Update
      UPRUPD        : PWM0_SCUPUPD_UPRUPD_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SCUPUPD_Register use record
      UPRUPD        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM0_IER2_CMPM array
   type PWM0_IER2_CMPM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_IER2_CMPM
   type PWM0_IER2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPM as an array
            Arr : PWM0_IER2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_IER2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM0_IER2_CMPU array
   type PWM0_IER2_CMPU_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_IER2_CMPU
   type PWM0_IER2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPU as an array
            Arr : PWM0_IER2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_IER2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Enable Register 2
   type PWM0_IER2_Register is record
      --  Write-only. Write Ready for Synchronous Channels Update Interrupt
      --  Enable
      WRDY           : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Write-only. Synchronous Channels Update Underrun Error Interrupt
      --  Enable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Comparison 0 Match Interrupt Enable
      CMPM           : PWM0_IER2_CMPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Comparison 0 Update Interrupt Enable
      CMPU           : PWM0_IER2_CMPU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_IER2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM0_IDR2_CMPM array
   type PWM0_IDR2_CMPM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_IDR2_CMPM
   type PWM0_IDR2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPM as an array
            Arr : PWM0_IDR2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_IDR2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM0_IDR2_CMPU array
   type PWM0_IDR2_CMPU_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_IDR2_CMPU
   type PWM0_IDR2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPU as an array
            Arr : PWM0_IDR2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_IDR2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Disable Register 2
   type PWM0_IDR2_Register is record
      --  Write-only. Write Ready for Synchronous Channels Update Interrupt
      --  Disable
      WRDY           : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Write-only. Synchronous Channels Update Underrun Error Interrupt
      --  Disable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Comparison 0 Match Interrupt Disable
      CMPM           : PWM0_IDR2_CMPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Comparison 0 Update Interrupt Disable
      CMPU           : PWM0_IDR2_CMPU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_IDR2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM0_IMR2_CMPM array
   type PWM0_IMR2_CMPM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_IMR2_CMPM
   type PWM0_IMR2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPM as an array
            Arr : PWM0_IMR2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_IMR2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM0_IMR2_CMPU array
   type PWM0_IMR2_CMPU_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_IMR2_CMPU
   type PWM0_IMR2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPU as an array
            Arr : PWM0_IMR2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_IMR2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Mask Register 2
   type PWM0_IMR2_Register is record
      --  Read-only. Write Ready for Synchronous Channels Update Interrupt Mask
      WRDY           : Boolean;
      --  unspecified
      Reserved_1_2   : HAL.UInt2;
      --  Read-only. Synchronous Channels Update Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Comparison 0 Match Interrupt Mask
      CMPM           : PWM0_IMR2_CMPM_Field;
      --  Read-only. Comparison 0 Update Interrupt Mask
      CMPU           : PWM0_IMR2_CMPU_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_IMR2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM0_ISR2_CMPM array
   type PWM0_ISR2_CMPM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_ISR2_CMPM
   type PWM0_ISR2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPM as an array
            Arr : PWM0_ISR2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_ISR2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM0_ISR2_CMPU array
   type PWM0_ISR2_CMPU_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_ISR2_CMPU
   type PWM0_ISR2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : HAL.UInt8;
         when True =>
            --  CMPU as an array
            Arr : PWM0_ISR2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_ISR2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Status Register 2
   type PWM0_ISR2_Register is record
      --  Read-only. Write Ready for Synchronous Channels Update
      WRDY           : Boolean;
      --  unspecified
      Reserved_1_2   : HAL.UInt2;
      --  Read-only. Synchronous Channels Update Underrun Error
      UNRE           : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Comparison 0 Match
      CMPM           : PWM0_ISR2_CMPM_Field;
      --  Read-only. Comparison 0 Update
      CMPU           : PWM0_ISR2_CMPU_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_ISR2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM0_OOV_OOVH array
   type PWM0_OOV_OOVH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OOV_OOVH
   type PWM0_OOV_OOVH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OOVH as a value
            Val : HAL.UInt4;
         when True =>
            --  OOVH as an array
            Arr : PWM0_OOV_OOVH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OOV_OOVH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_OOV_OOVL array
   type PWM0_OOV_OOVL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OOV_OOVL
   type PWM0_OOV_OOVL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OOVL as a value
            Val : HAL.UInt4;
         when True =>
            --  OOVL as an array
            Arr : PWM0_OOV_OOVL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OOV_OOVL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Override Value Register
   type PWM0_OOV_Register is record
      --  Output Override Value for PWMH output of the channel 0
      OOVH           : PWM0_OOV_OOVH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Output Override Value for PWML output of the channel 0
      OOVL           : PWM0_OOV_OOVL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_OOV_Register use record
      OOVH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OOVL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_OS_OSH array
   type PWM0_OS_OSH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OS_OSH
   type PWM0_OS_OSH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSH as a value
            Val : HAL.UInt4;
         when True =>
            --  OSH as an array
            Arr : PWM0_OS_OSH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OS_OSH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_OS_OSL array
   type PWM0_OS_OSL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OS_OSL
   type PWM0_OS_OSL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSL as a value
            Val : HAL.UInt4;
         when True =>
            --  OSL as an array
            Arr : PWM0_OS_OSL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OS_OSL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Register
   type PWM0_OS_Register is record
      --  Output Selection for PWMH output of the channel 0
      OSH            : PWM0_OS_OSH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Output Selection for PWML output of the channel 0
      OSL            : PWM0_OS_OSL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_OS_Register use record
      OSH            at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSL            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_OSS_OSSH array
   type PWM0_OSS_OSSH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSS_OSSH
   type PWM0_OSS_OSSH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSH as a value
            Val : HAL.UInt4;
         when True =>
            --  OSSH as an array
            Arr : PWM0_OSS_OSSH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSS_OSSH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_OSS_OSSL array
   type PWM0_OSS_OSSL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSS_OSSL
   type PWM0_OSS_OSSL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSL as a value
            Val : HAL.UInt4;
         when True =>
            --  OSSL as an array
            Arr : PWM0_OSS_OSSL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSS_OSSL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Set Register
   type PWM0_OSS_Register is record
      --  Write-only. Output Selection Set for PWMH output of the channel 0
      OSSH           : PWM0_OSS_OSSH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Output Selection Set for PWML output of the channel 0
      OSSL           : PWM0_OSS_OSSL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_OSS_Register use record
      OSSH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSSL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_OSC_OSCH array
   type PWM0_OSC_OSCH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSC_OSCH
   type PWM0_OSC_OSCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCH as a value
            Val : HAL.UInt4;
         when True =>
            --  OSCH as an array
            Arr : PWM0_OSC_OSCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSC_OSCH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_OSC_OSCL array
   type PWM0_OSC_OSCL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSC_OSCL
   type PWM0_OSC_OSCL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCL as a value
            Val : HAL.UInt4;
         when True =>
            --  OSCL as an array
            Arr : PWM0_OSC_OSCL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSC_OSCL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Clear Register
   type PWM0_OSC_Register is record
      --  Write-only. Output Selection Clear for PWMH output of the channel 0
      OSCH           : PWM0_OSC_OSCH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Output Selection Clear for PWML output of the channel 0
      OSCL           : PWM0_OSC_OSCL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_OSC_Register use record
      OSCH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSCL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_OSSUPD_OSSUPH array
   type PWM0_OSSUPD_OSSUPH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSSUPD_OSSUPH
   type PWM0_OSSUPD_OSSUPH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSUPH as a value
            Val : HAL.UInt4;
         when True =>
            --  OSSUPH as an array
            Arr : PWM0_OSSUPD_OSSUPH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSSUPD_OSSUPH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_OSSUPD_OSSUPL array
   type PWM0_OSSUPD_OSSUPL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSSUPD_OSSUPL
   type PWM0_OSSUPD_OSSUPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSUPL as a value
            Val : HAL.UInt4;
         when True =>
            --  OSSUPL as an array
            Arr : PWM0_OSSUPD_OSSUPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSSUPD_OSSUPL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Set Update Register
   type PWM0_OSSUPD_Register is record
      --  Write-only. Output Selection Set for PWMH output of the channel 0
      OSSUPH         : PWM0_OSSUPD_OSSUPH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Output Selection Set for PWML output of the channel 0
      OSSUPL         : PWM0_OSSUPD_OSSUPL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_OSSUPD_Register use record
      OSSUPH         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSSUPL         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_OSCUPD_OSCUPH array
   type PWM0_OSCUPD_OSCUPH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSCUPD_OSCUPH
   type PWM0_OSCUPD_OSCUPH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCUPH as a value
            Val : HAL.UInt4;
         when True =>
            --  OSCUPH as an array
            Arr : PWM0_OSCUPD_OSCUPH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSCUPD_OSCUPH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_OSCUPD_OSCUPL array
   type PWM0_OSCUPD_OSCUPL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_OSCUPD_OSCUPL
   type PWM0_OSCUPD_OSCUPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCUPL as a value
            Val : HAL.UInt4;
         when True =>
            --  OSCUPL as an array
            Arr : PWM0_OSCUPD_OSCUPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_OSCUPD_OSCUPL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Clear Update Register
   type PWM0_OSCUPD_Register is record
      --  Write-only. Output Selection Clear for PWMH output of the channel 0
      OSCUPH         : PWM0_OSCUPD_OSCUPH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Output Selection Clear for PWML output of the channel 0
      OSCUPL         : PWM0_OSCUPD_OSCUPL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_OSCUPD_Register use record
      OSCUPH         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSCUPL         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PWM0_FMR_FPOL_Field is HAL.UInt8;
   subtype PWM0_FMR_FMOD_Field is HAL.UInt8;
   subtype PWM0_FMR_FFIL_Field is HAL.UInt8;

   --  PWM Fault Mode Register
   type PWM0_FMR_Register is record
      --  Fault Polarity
      FPOL           : PWM0_FMR_FPOL_Field := 16#0#;
      --  Fault Activation Mode
      FMOD           : PWM0_FMR_FMOD_Field := 16#0#;
      --  Fault Filtering
      FFIL           : PWM0_FMR_FFIL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_FMR_Register use record
      FPOL           at 0 range 0 .. 7;
      FMOD           at 0 range 8 .. 15;
      FFIL           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM0_FSR_FIV_Field is HAL.UInt8;
   subtype PWM0_FSR_FS_Field is HAL.UInt8;

   --  PWM Fault Status Register
   type PWM0_FSR_Register is record
      --  Read-only. Fault Input Value
      FIV            : PWM0_FSR_FIV_Field;
      --  Read-only. Fault Status
      FS             : PWM0_FSR_FS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_FSR_Register use record
      FIV            at 0 range 0 .. 7;
      FS             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PWM0_FCR_FCLR_Field is HAL.UInt8;

   --  PWM Fault Clear Register
   type PWM0_FCR_Register is record
      --  Write-only. Fault Clear
      FCLR          : PWM0_FCR_FCLR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_FCR_Register use record
      FCLR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWM0_FPV1_FPVH array
   type PWM0_FPV1_FPVH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_FPV1_FPVH
   type PWM0_FPV1_FPVH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPVH as a value
            Val : HAL.UInt4;
         when True =>
            --  FPVH as an array
            Arr : PWM0_FPV1_FPVH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_FPV1_FPVH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_FPV1_FPVL array
   type PWM0_FPV1_FPVL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_FPV1_FPVL
   type PWM0_FPV1_FPVL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPVL as a value
            Val : HAL.UInt4;
         when True =>
            --  FPVL as an array
            Arr : PWM0_FPV1_FPVL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_FPV1_FPVL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Fault Protection Value Register 1
   type PWM0_FPV1_Register is record
      --  Fault Protection Value for PWMH output on channel 0
      FPVH           : PWM0_FPV1_FPVH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Fault Protection Value for PWML output on channel 0
      FPVL           : PWM0_FPV1_FPVL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_FPV1_Register use record
      FPVH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FPVL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM0_FPE_FPE array element
   subtype PWM0_FPE_FPE_Element is HAL.UInt8;

   --  PWM0_FPE_FPE array
   type PWM0_FPE_FPE_Field_Array is array (0 .. 3) of PWM0_FPE_FPE_Element
     with Component_Size => 8, Size => 32;

   --  PWM Fault Protection Enable Register
   type PWM0_FPE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPE as a value
            Val : HAL.UInt32;
         when True =>
            --  FPE as an array
            Arr : PWM0_FPE_FPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PWM0_FPE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PWM0_ELMR_CSEL array
   type PWM0_ELMR_CSEL_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM0_ELMR_CSEL
   type PWM0_ELMR_CSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CSEL as a value
            Val : HAL.UInt8;
         when True =>
            --  CSEL as an array
            Arr : PWM0_ELMR_CSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM0_ELMR_CSEL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Event Line 0 Mode Register
   type PWM0_ELMR_Register is record
      --  Comparison 0 Selection
      CSEL          : PWM0_ELMR_CSEL_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_ELMR_Register use record
      CSEL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWM Event Line 0 Mode Register
   type PWM0_ELMR_Registers is array (0 .. 1) of PWM0_ELMR_Register
     with Volatile;

   subtype PWM0_SSPR_SPRD_Field is HAL.UInt24;

   --  PWM Spread Spectrum Register
   type PWM0_SSPR_Register is record
      --  Spread Spectrum Limit Value
      SPRD           : PWM0_SSPR_SPRD_Field := 16#0#;
      --  Spread Spectrum Counter Mode
      SPRDM          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SSPR_Register use record
      SPRD           at 0 range 0 .. 23;
      SPRDM          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PWM0_SSPUP_SPRDUP_Field is HAL.UInt24;

   --  PWM Spread Spectrum Update Register
   type PWM0_SSPUP_Register is record
      --  Write-only. Spread Spectrum Limit Value Update
      SPRDUP         : PWM0_SSPUP_SPRDUP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SSPUP_Register use record
      SPRDUP         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM0_SMMR_GCEN array
   type PWM0_SMMR_GCEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWM0_SMMR_GCEN
   type PWM0_SMMR_GCEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GCEN as a value
            Val : HAL.UInt2;
         when True =>
            --  GCEN as an array
            Arr : PWM0_SMMR_GCEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWM0_SMMR_GCEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWM0_SMMR_DOWN array
   type PWM0_SMMR_DOWN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWM0_SMMR_DOWN
   type PWM0_SMMR_DOWN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DOWN as a value
            Val : HAL.UInt2;
         when True =>
            --  DOWN as an array
            Arr : PWM0_SMMR_DOWN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWM0_SMMR_DOWN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWM Stepper Motor Mode Register
   type PWM0_SMMR_Register is record
      --  Gray Count ENable
      GCEN           : PWM0_SMMR_GCEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  DOWN Count
      DOWN           : PWM0_SMMR_DOWN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_SMMR_Register use record
      GCEN           at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      DOWN           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  PWM0_FPV2_FPZH array
   type PWM0_FPV2_FPZH_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_FPV2_FPZH
   type PWM0_FPV2_FPZH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPZH as a value
            Val : HAL.UInt4;
         when True =>
            --  FPZH as an array
            Arr : PWM0_FPV2_FPZH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_FPV2_FPZH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM0_FPV2_FPZL array
   type PWM0_FPV2_FPZL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM0_FPV2_FPZL
   type PWM0_FPV2_FPZL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPZL as a value
            Val : HAL.UInt4;
         when True =>
            --  FPZL as an array
            Arr : PWM0_FPV2_FPZL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM0_FPV2_FPZL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Fault Protection Value 2 Register
   type PWM0_FPV2_Register is record
      --  Fault Protection to Hi-Z for PWMH output on channel 0
      FPZH           : PWM0_FPV2_FPZH_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#3#;
      --  Fault Protection to Hi-Z for PWML output on channel 0
      FPZL           : PWM0_FPV2_FPZL_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_FPV2_Register use record
      FPZH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FPZL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Write Protection Command
   type WPCR_WPCMD_Field is
     (
      --  Disables the software write protection of the register groups of
      --  which the bit WPRGx is at '1'.
      Disable_Sw_Prot,
      --  Enables the software write protection of the register groups of which
      --  the bit WPRGx is at '1'.
      Enable_Sw_Prot,
      --  Enables the hardware write protection of the register groups of which
      --  the bit WPRGx is at '1'. Only a hardware reset of the PWM controller
      --  can disable the hardware write protection. Moreover, to meet security
      --  requirements, the PIO lines associated with the PWM can not be
      --  configured through the PIO interface.
      Enable_Hw_Prot)
     with Size => 2;
   for WPCR_WPCMD_Field use
     (Disable_Sw_Prot => 0,
      Enable_Sw_Prot => 1,
      Enable_Hw_Prot => 2);

   --  PWM0_WPCR_WPRG array
   type PWM0_WPCR_WPRG_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWM0_WPCR_WPRG
   type PWM0_WPCR_WPRG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPRG as a value
            Val : HAL.UInt6;
         when True =>
            --  WPRG as an array
            Arr : PWM0_WPCR_WPRG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWM0_WPCR_WPRG_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Write Protection Key
   type WPCR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpcr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPCMD field.Always reads as 0
      Passwd)
     with Size => 24;
   for WPCR_WPKEY_Field use
     (Wpcr_Wpkey_Field_Reset => 0,
      Passwd => 5265229);

   --  PWM Write Protection Control Register
   type PWM0_WPCR_Register is record
      --  Write-only. Write Protection Command
      WPCMD : WPCR_WPCMD_Field := SAM_SVD.PWM.Disable_Sw_Prot;
      --  Write-only. Write Protection Register Group 0
      WPRG  : PWM0_WPCR_WPRG_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Write Protection Key
      WPKEY : WPCR_WPKEY_Field := Wpcr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_WPCR_Register use record
      WPCMD at 0 range 0 .. 1;
      WPRG  at 0 range 2 .. 7;
      WPKEY at 0 range 8 .. 31;
   end record;

   --  PWM0_WPSR_WPSWS array
   type PWM0_WPSR_WPSWS_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWM0_WPSR_WPSWS
   type PWM0_WPSR_WPSWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPSWS as a value
            Val : HAL.UInt6;
         when True =>
            --  WPSWS as an array
            Arr : PWM0_WPSR_WPSWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWM0_WPSR_WPSWS_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  PWM0_WPSR_WPHWS array
   type PWM0_WPSR_WPHWS_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWM0_WPSR_WPHWS
   type PWM0_WPSR_WPHWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPHWS as a value
            Val : HAL.UInt6;
         when True =>
            --  WPHWS as an array
            Arr : PWM0_WPSR_WPHWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWM0_WPSR_WPHWS_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype PWM0_WPSR_WPVSRC_Field is HAL.UInt16;

   --  PWM Write Protection Status Register
   type PWM0_WPSR_Register is record
      --  Read-only. Write Protect SW Status
      WPSWS          : PWM0_WPSR_WPSWS_Field;
      --  unspecified
      Reserved_6_6   : HAL.Bit;
      --  Read-only. Write Protect Violation Status
      WPVS           : Boolean;
      --  Read-only. Write Protect HW Status
      WPHWS          : PWM0_WPSR_WPHWS_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : PWM0_WPSR_WPVSRC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM0_WPSR_Register use record
      WPSWS          at 0 range 0 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      WPVS           at 0 range 7 .. 7;
      WPHWS          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WPVSRC         at 0 range 16 .. 31;
   end record;

   subtype CMPV_CV_Field is HAL.UInt24;

   --  PWM Comparison 0 Value Register
   type CMPV_Register is record
      --  Comparison x Value
      CV             : CMPV_CV_Field := 16#0#;
      --  Comparison x Value Mode
      CVM            : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPV_Register use record
      CV             at 0 range 0 .. 23;
      CVM            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CMPVUPD_CVUPD_Field is HAL.UInt24;

   --  PWM Comparison 0 Value Update Register
   type CMPVUPD_Register is record
      --  Write-only. Comparison x Value Update
      CVUPD          : CMPVUPD_CVUPD_Field := 16#0#;
      --  Write-only. Comparison x Value Mode Update
      CVMUPD         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPVUPD_Register use record
      CVUPD          at 0 range 0 .. 23;
      CVMUPD         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CMPM_CTR_Field is HAL.UInt4;
   subtype CMPM_CPR_Field is HAL.UInt4;
   subtype CMPM_CPRCNT_Field is HAL.UInt4;
   subtype CMPM_CUPR_Field is HAL.UInt4;
   subtype CMPM_CUPRCNT_Field is HAL.UInt4;

   --  PWM Comparison 0 Mode Register
   type CMPM_Register is record
      --  Comparison x Enable
      CEN            : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Comparison x Trigger
      CTR            : CMPM_CTR_Field := 16#0#;
      --  Comparison x Period
      CPR            : CMPM_CPR_Field := 16#0#;
      --  Comparison x Period Counter
      CPRCNT         : CMPM_CPRCNT_Field := 16#0#;
      --  Comparison x Update Period
      CUPR           : CMPM_CUPR_Field := 16#0#;
      --  Comparison x Update Period Counter
      CUPRCNT        : CMPM_CUPRCNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPM_Register use record
      CEN            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CTR            at 0 range 4 .. 7;
      CPR            at 0 range 8 .. 11;
      CPRCNT         at 0 range 12 .. 15;
      CUPR           at 0 range 16 .. 19;
      CUPRCNT        at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMPMUPD_CTRUPD_Field is HAL.UInt4;
   subtype CMPMUPD_CPRUPD_Field is HAL.UInt4;
   subtype CMPMUPD_CUPRUPD_Field is HAL.UInt4;

   --  PWM Comparison 0 Mode Update Register
   type CMPMUPD_Register is record
      --  Write-only. Comparison x Enable Update
      CENUPD         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Write-only. Comparison x Trigger Update
      CTRUPD         : CMPMUPD_CTRUPD_Field := 16#0#;
      --  Write-only. Comparison x Period Update
      CPRUPD         : CMPMUPD_CPRUPD_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Comparison x Update Period Update
      CUPRUPD        : CMPMUPD_CUPRUPD_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPMUPD_Register use record
      CENUPD         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CTRUPD         at 0 range 4 .. 7;
      CPRUPD         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      CUPRUPD        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel Pre-scaler
   type CMR0_CPRE_Field is
     (
      --  Peripheral clock
      Mck,
      --  Peripheral clock/2
      Mck_Div_2,
      --  Peripheral clock/4
      Mck_Div_4,
      --  Peripheral clock/8
      Mck_Div_8,
      --  Peripheral clock/16
      Mck_Div_16,
      --  Peripheral clock/32
      Mck_Div_32,
      --  Peripheral clock/64
      Mck_Div_64,
      --  Peripheral clock/128
      Mck_Div_128,
      --  Peripheral clock/256
      Mck_Div_256,
      --  Peripheral clock/512
      Mck_Div_512,
      --  Peripheral clock/1024
      Mck_Div_1024,
      --  Clock A
      Clka,
      --  Clock B
      Clkb)
     with Size => 4;
   for CMR0_CPRE_Field use
     (Mck => 0,
      Mck_Div_2 => 1,
      Mck_Div_4 => 2,
      Mck_Div_8 => 3,
      Mck_Div_16 => 4,
      Mck_Div_32 => 5,
      Mck_Div_64 => 6,
      Mck_Div_128 => 7,
      Mck_Div_256 => 8,
      Mck_Div_512 => 9,
      Mck_Div_1024 => 10,
      Clka => 11,
      Clkb => 12);

   --  PWM Channel Mode Register (ch_num = 0)
   type CMR_Register is record
      --  Channel Pre-scaler
      CPRE           : CMR0_CPRE_Field := SAM_SVD.PWM.Mck;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Channel Alignment
      CALG           : Boolean := False;
      --  Channel Polarity
      CPOL           : Boolean := False;
      --  Counter Event Selection
      CES            : Boolean := False;
      --  Update Selection
      UPDS           : Boolean := False;
      --  Disabled Polarity Inverted
      DPOLI          : Boolean := False;
      --  Timer Counter Trigger Selection
      TCTS           : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Dead-Time Generator Enable
      DTE            : Boolean := False;
      --  Dead-Time PWMHx Output Inverted
      DTHI           : Boolean := False;
      --  Dead-Time PWMLx Output Inverted
      DTLI           : Boolean := False;
      --  Push-Pull Mode
      PPM            : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      CPRE           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CALG           at 0 range 8 .. 8;
      CPOL           at 0 range 9 .. 9;
      CES            at 0 range 10 .. 10;
      UPDS           at 0 range 11 .. 11;
      DPOLI          at 0 range 12 .. 12;
      TCTS           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTE            at 0 range 16 .. 16;
      DTHI           at 0 range 17 .. 17;
      DTLI           at 0 range 18 .. 18;
      PPM            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CDTY_CDTY_Field is HAL.UInt24;

   --  PWM Channel Duty Cycle Register (ch_num = 0)
   type CDTY_Register is record
      --  Channel Duty-Cycle
      CDTY           : CDTY_CDTY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDTY_Register use record
      CDTY           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CDTYUPD_CDTYUPD_Field is HAL.UInt24;

   --  PWM Channel Duty Cycle Update Register (ch_num = 0)
   type CDTYUPD_Register is record
      --  Write-only. Channel Duty-Cycle Update
      CDTYUPD        : CDTYUPD_CDTYUPD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDTYUPD_Register use record
      CDTYUPD        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CPRD_CPRD_Field is HAL.UInt24;

   --  PWM Channel Period Register (ch_num = 0)
   type CPRD_Register is record
      --  Channel Period
      CPRD           : CPRD_CPRD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPRD_Register use record
      CPRD           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CPRDUPD_CPRDUPD_Field is HAL.UInt24;

   --  PWM Channel Period Update Register (ch_num = 0)
   type CPRDUPD_Register is record
      --  Write-only. Channel Period Update
      CPRDUPD        : CPRDUPD_CPRDUPD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPRDUPD_Register use record
      CPRDUPD        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CCNT_CNT_Field is HAL.UInt24;

   --  PWM Channel Counter Register (ch_num = 0)
   type CCNT_Register is record
      --  Read-only. Channel Counter Register
      CNT            : CCNT_CNT_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCNT_Register use record
      CNT            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DT_DTH_Field is HAL.UInt16;
   subtype DT_DTL_Field is HAL.UInt16;

   --  PWM Channel Dead Time Register (ch_num = 0)
   type DT_Register is record
      --  Dead-Time Value for PWMHx Output
      DTH : DT_DTH_Field := 16#0#;
      --  Dead-Time Value for PWMLx Output
      DTL : DT_DTL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DT_Register use record
      DTH at 0 range 0 .. 15;
      DTL at 0 range 16 .. 31;
   end record;

   subtype DTUPD_DTHUPD_Field is HAL.UInt16;
   subtype DTUPD_DTLUPD_Field is HAL.UInt16;

   --  PWM Channel Dead Time Update Register (ch_num = 0)
   type DTUPD_Register is record
      --  Write-only. Dead-Time Value Update for PWMHx Output
      DTHUPD : DTUPD_DTHUPD_Field := 16#0#;
      --  Write-only. Dead-Time Value Update for PWMLx Output
      DTLUPD : DTUPD_DTLUPD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTUPD_Register use record
      DTHUPD at 0 range 0 .. 15;
      DTLUPD at 0 range 16 .. 31;
   end record;

   --  PWM Channel Mode Update Register (ch_num = 0)
   type CMUPD_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Write-only. Channel Polarity Update
      CPOLUP         : Boolean := False;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  Write-only. Channel Polarity Inversion Update
      CPOLINVUP      : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMUPD_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      CPOLUP         at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      CPOLINVUP      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETRG_MAXCNT_Field is HAL.UInt24;

   --  External Trigger Mode
   type ETRG1_TRGMODE_Field is
     (
      --  External trigger is not enabled.
      Off,
      --  External PWM Reset Mode
      Mode1,
      --  External PWM Start Mode
      Mode2,
      --  Cycle-by-cycle Duty Mode
      Mode3)
     with Size => 2;
   for ETRG1_TRGMODE_Field use
     (Off => 0,
      Mode1 => 1,
      Mode2 => 2,
      Mode3 => 3);

   --  Edge Selection
   type ETRG1_TRGEDGE_Field is
     (
      --  TRGMODE = 1: TRGINx event detection on falling edge.TRGMODE = 2, 3:
      --  TRGINx active level is 0
      Falling_Zero,
      --  TRGMODE = 1: TRGINx event detection on rising edge.TRGMODE = 2, 3:
      --  TRGINx active level is 1
      Rising_One)
     with Size => 1;
   for ETRG1_TRGEDGE_Field use
     (Falling_Zero => 0,
      Rising_One => 1);

   --  PWM External Trigger Register (trg_num = 1)
   type ETRG_Register is record
      --  Maximum Counter value
      MAXCNT         : ETRG_MAXCNT_Field := 16#0#;
      --  External Trigger Mode
      TRGMODE        : ETRG1_TRGMODE_Field := SAM_SVD.PWM.Off;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Edge Selection
      TRGEDGE        : ETRG1_TRGEDGE_Field := SAM_SVD.PWM.Falling_Zero;
      --  Filtered input
      TRGFILT        : Boolean := False;
      --  Trigger Source
      TRGSRC         : Boolean := False;
      --  Recoverable Fault Enable
      RFEN           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETRG_Register use record
      MAXCNT         at 0 range 0 .. 23;
      TRGMODE        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      TRGEDGE        at 0 range 28 .. 28;
      TRGFILT        at 0 range 29 .. 29;
      TRGSRC         at 0 range 30 .. 30;
      RFEN           at 0 range 31 .. 31;
   end record;

   subtype LEBR_LEBDELAY_Field is HAL.UInt7;

   --  PWM Leading-Edge Blanking Register (trg_num = 1)
   type LEBR_Register is record
      --  Leading-Edge Blanking Delay for TRGINx
      LEBDELAY       : LEBR_LEBDELAY_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  PWML Falling Edge Enable
      PWMLFEN        : Boolean := False;
      --  PWML Rising Edge Enable
      PWMLREN        : Boolean := False;
      --  PWMH Falling Edge Enable
      PWMHFEN        : Boolean := False;
      --  PWMH Rising Edge Enable
      PWMHREN        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEBR_Register use record
      LEBDELAY       at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      PWMLFEN        at 0 range 16 .. 16;
      PWMLREN        at 0 range 17 .. 17;
      PWMHFEN        at 0 range 18 .. 18;
      PWMHREN        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Width Modulation Controller 0
   type PWM_Peripheral is record
      --  PWM Clock Register
      CLK      : aliased PWM0_CLK_Register;
      --  PWM Enable Register
      ENA      : aliased PWM0_ENA_Register;
      --  PWM Disable Register
      DIS      : aliased PWM0_DIS_Register;
      --  PWM Status Register
      SR       : aliased PWM0_SR_Register;
      --  PWM Interrupt Enable Register 1
      IER1     : aliased PWM0_IER1_Register;
      --  PWM Interrupt Disable Register 1
      IDR1     : aliased PWM0_IDR1_Register;
      --  PWM Interrupt Mask Register 1
      IMR1     : aliased PWM0_IMR1_Register;
      --  PWM Interrupt Status Register 1
      ISR1     : aliased PWM0_ISR1_Register;
      --  PWM Sync Channels Mode Register
      SCM      : aliased PWM0_SCM_Register;
      --  PWM DMA Register
      DMAR     : aliased PWM0_DMAR_Register;
      --  PWM Sync Channels Update Control Register
      SCUC     : aliased PWM0_SCUC_Register;
      --  PWM Sync Channels Update Period Register
      SCUP     : aliased PWM0_SCUP_Register;
      --  PWM Sync Channels Update Period Update Register
      SCUPUPD  : aliased PWM0_SCUPUPD_Register;
      --  PWM Interrupt Enable Register 2
      IER2     : aliased PWM0_IER2_Register;
      --  PWM Interrupt Disable Register 2
      IDR2     : aliased PWM0_IDR2_Register;
      --  PWM Interrupt Mask Register 2
      IMR2     : aliased PWM0_IMR2_Register;
      --  PWM Interrupt Status Register 2
      ISR2     : aliased PWM0_ISR2_Register;
      --  PWM Output Override Value Register
      OOV      : aliased PWM0_OOV_Register;
      --  PWM Output Selection Register
      OS       : aliased PWM0_OS_Register;
      --  PWM Output Selection Set Register
      OSS      : aliased PWM0_OSS_Register;
      --  PWM Output Selection Clear Register
      OSC      : aliased PWM0_OSC_Register;
      --  PWM Output Selection Set Update Register
      OSSUPD   : aliased PWM0_OSSUPD_Register;
      --  PWM Output Selection Clear Update Register
      OSCUPD   : aliased PWM0_OSCUPD_Register;
      --  PWM Fault Mode Register
      FMR      : aliased PWM0_FMR_Register;
      --  PWM Fault Status Register
      FSR      : aliased PWM0_FSR_Register;
      --  PWM Fault Clear Register
      FCR      : aliased PWM0_FCR_Register;
      --  PWM Fault Protection Value Register 1
      FPV1     : aliased PWM0_FPV1_Register;
      --  PWM Fault Protection Enable Register
      FPE      : aliased PWM0_FPE_Register;
      --  PWM Event Line 0 Mode Register
      ELMR     : aliased PWM0_ELMR_Registers;
      --  PWM Spread Spectrum Register
      SSPR     : aliased PWM0_SSPR_Register;
      --  PWM Spread Spectrum Update Register
      SSPUP    : aliased PWM0_SSPUP_Register;
      --  PWM Stepper Motor Mode Register
      SMMR     : aliased PWM0_SMMR_Register;
      --  PWM Fault Protection Value 2 Register
      FPV2     : aliased PWM0_FPV2_Register;
      --  PWM Write Protection Control Register
      WPCR     : aliased PWM0_WPCR_Register;
      --  PWM Write Protection Status Register
      WPSR     : aliased PWM0_WPSR_Register;
      --  PWM Comparison 0 Value Register
      CMPV0    : aliased CMPV_Register;
      --  PWM Comparison 0 Value Update Register
      CMPVUPD0 : aliased CMPVUPD_Register;
      --  PWM Comparison 0 Mode Register
      CMPM0    : aliased CMPM_Register;
      --  PWM Comparison 0 Mode Update Register
      CMPMUPD0 : aliased CMPMUPD_Register;
      --  PWM Comparison 1 Value Register
      CMPV1    : aliased CMPV_Register;
      --  PWM Comparison 1 Value Update Register
      CMPVUPD1 : aliased CMPVUPD_Register;
      --  PWM Comparison 1 Mode Register
      CMPM1    : aliased CMPM_Register;
      --  PWM Comparison 1 Mode Update Register
      CMPMUPD1 : aliased CMPMUPD_Register;
      --  PWM Comparison 2 Value Register
      CMPV2    : aliased CMPV_Register;
      --  PWM Comparison 2 Value Update Register
      CMPVUPD2 : aliased CMPVUPD_Register;
      --  PWM Comparison 2 Mode Register
      CMPM2    : aliased CMPM_Register;
      --  PWM Comparison 2 Mode Update Register
      CMPMUPD2 : aliased CMPMUPD_Register;
      --  PWM Comparison 3 Value Register
      CMPV3    : aliased CMPV_Register;
      --  PWM Comparison 3 Value Update Register
      CMPVUPD3 : aliased CMPVUPD_Register;
      --  PWM Comparison 3 Mode Register
      CMPM3    : aliased CMPM_Register;
      --  PWM Comparison 3 Mode Update Register
      CMPMUPD3 : aliased CMPMUPD_Register;
      --  PWM Comparison 4 Value Register
      CMPV4    : aliased CMPV_Register;
      --  PWM Comparison 4 Value Update Register
      CMPVUPD4 : aliased CMPVUPD_Register;
      --  PWM Comparison 4 Mode Register
      CMPM4    : aliased CMPM_Register;
      --  PWM Comparison 4 Mode Update Register
      CMPMUPD4 : aliased CMPMUPD_Register;
      --  PWM Comparison 5 Value Register
      CMPV5    : aliased CMPV_Register;
      --  PWM Comparison 5 Value Update Register
      CMPVUPD5 : aliased CMPVUPD_Register;
      --  PWM Comparison 5 Mode Register
      CMPM5    : aliased CMPM_Register;
      --  PWM Comparison 5 Mode Update Register
      CMPMUPD5 : aliased CMPMUPD_Register;
      --  PWM Comparison 6 Value Register
      CMPV6    : aliased CMPV_Register;
      --  PWM Comparison 6 Value Update Register
      CMPVUPD6 : aliased CMPVUPD_Register;
      --  PWM Comparison 6 Mode Register
      CMPM6    : aliased CMPM_Register;
      --  PWM Comparison 6 Mode Update Register
      CMPMUPD6 : aliased CMPMUPD_Register;
      --  PWM Comparison 7 Value Register
      CMPV7    : aliased CMPV_Register;
      --  PWM Comparison 7 Value Update Register
      CMPVUPD7 : aliased CMPVUPD_Register;
      --  PWM Comparison 7 Mode Register
      CMPM7    : aliased CMPM_Register;
      --  PWM Comparison 7 Mode Update Register
      CMPMUPD7 : aliased CMPMUPD_Register;
      --  PWM Channel Mode Register (ch_num = 0)
      CMR0     : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 0)
      CDTY0    : aliased CDTY_Register;
      --  PWM Channel Duty Cycle Update Register (ch_num = 0)
      CDTYUPD0 : aliased CDTYUPD_Register;
      --  PWM Channel Period Register (ch_num = 0)
      CPRD0    : aliased CPRD_Register;
      --  PWM Channel Period Update Register (ch_num = 0)
      CPRDUPD0 : aliased CPRDUPD_Register;
      --  PWM Channel Counter Register (ch_num = 0)
      CCNT0    : aliased CCNT_Register;
      --  PWM Channel Dead Time Register (ch_num = 0)
      DT0      : aliased DT_Register;
      --  PWM Channel Dead Time Update Register (ch_num = 0)
      DTUPD0   : aliased DTUPD_Register;
      --  PWM Channel Mode Register (ch_num = 1)
      CMR1     : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 1)
      CDTY1    : aliased CDTY_Register;
      --  PWM Channel Duty Cycle Update Register (ch_num = 1)
      CDTYUPD1 : aliased CDTYUPD_Register;
      --  PWM Channel Period Register (ch_num = 1)
      CPRD1    : aliased CPRD_Register;
      --  PWM Channel Period Update Register (ch_num = 1)
      CPRDUPD1 : aliased CPRDUPD_Register;
      --  PWM Channel Counter Register (ch_num = 1)
      CCNT1    : aliased CCNT_Register;
      --  PWM Channel Dead Time Register (ch_num = 1)
      DT1      : aliased DT_Register;
      --  PWM Channel Dead Time Update Register (ch_num = 1)
      DTUPD1   : aliased DTUPD_Register;
      --  PWM Channel Mode Register (ch_num = 2)
      CMR2     : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 2)
      CDTY2    : aliased CDTY_Register;
      --  PWM Channel Duty Cycle Update Register (ch_num = 2)
      CDTYUPD2 : aliased CDTYUPD_Register;
      --  PWM Channel Period Register (ch_num = 2)
      CPRD2    : aliased CPRD_Register;
      --  PWM Channel Period Update Register (ch_num = 2)
      CPRDUPD2 : aliased CPRDUPD_Register;
      --  PWM Channel Counter Register (ch_num = 2)
      CCNT2    : aliased CCNT_Register;
      --  PWM Channel Dead Time Register (ch_num = 2)
      DT2      : aliased DT_Register;
      --  PWM Channel Dead Time Update Register (ch_num = 2)
      DTUPD2   : aliased DTUPD_Register;
      --  PWM Channel Mode Register (ch_num = 3)
      CMR3     : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 3)
      CDTY3    : aliased CDTY_Register;
      --  PWM Channel Duty Cycle Update Register (ch_num = 3)
      CDTYUPD3 : aliased CDTYUPD_Register;
      --  PWM Channel Period Register (ch_num = 3)
      CPRD3    : aliased CPRD_Register;
      --  PWM Channel Period Update Register (ch_num = 3)
      CPRDUPD3 : aliased CPRDUPD_Register;
      --  PWM Channel Counter Register (ch_num = 3)
      CCNT3    : aliased CCNT_Register;
      --  PWM Channel Dead Time Register (ch_num = 3)
      DT3      : aliased DT_Register;
      --  PWM Channel Dead Time Update Register (ch_num = 3)
      DTUPD3   : aliased DTUPD_Register;
      --  PWM Channel Mode Update Register (ch_num = 0)
      CMUPD0   : aliased CMUPD_Register;
      --  PWM Channel Mode Update Register (ch_num = 1)
      CMUPD1   : aliased CMUPD_Register;
      --  PWM External Trigger Register (trg_num = 1)
      ETRG1    : aliased ETRG_Register;
      --  PWM Leading-Edge Blanking Register (trg_num = 1)
      LEBR1    : aliased LEBR_Register;
      --  PWM Channel Mode Update Register (ch_num = 2)
      CMUPD2   : aliased CMUPD_Register;
      --  PWM External Trigger Register (trg_num = 2)
      ETRG2    : aliased ETRG_Register;
      --  PWM Leading-Edge Blanking Register (trg_num = 2)
      LEBR2    : aliased LEBR_Register;
      --  PWM Channel Mode Update Register (ch_num = 3)
      CMUPD3   : aliased CMUPD_Register;
   end record
     with Volatile;

   for PWM_Peripheral use record
      CLK      at 16#0# range 0 .. 31;
      ENA      at 16#4# range 0 .. 31;
      DIS      at 16#8# range 0 .. 31;
      SR       at 16#C# range 0 .. 31;
      IER1     at 16#10# range 0 .. 31;
      IDR1     at 16#14# range 0 .. 31;
      IMR1     at 16#18# range 0 .. 31;
      ISR1     at 16#1C# range 0 .. 31;
      SCM      at 16#20# range 0 .. 31;
      DMAR     at 16#24# range 0 .. 31;
      SCUC     at 16#28# range 0 .. 31;
      SCUP     at 16#2C# range 0 .. 31;
      SCUPUPD  at 16#30# range 0 .. 31;
      IER2     at 16#34# range 0 .. 31;
      IDR2     at 16#38# range 0 .. 31;
      IMR2     at 16#3C# range 0 .. 31;
      ISR2     at 16#40# range 0 .. 31;
      OOV      at 16#44# range 0 .. 31;
      OS       at 16#48# range 0 .. 31;
      OSS      at 16#4C# range 0 .. 31;
      OSC      at 16#50# range 0 .. 31;
      OSSUPD   at 16#54# range 0 .. 31;
      OSCUPD   at 16#58# range 0 .. 31;
      FMR      at 16#5C# range 0 .. 31;
      FSR      at 16#60# range 0 .. 31;
      FCR      at 16#64# range 0 .. 31;
      FPV1     at 16#68# range 0 .. 31;
      FPE      at 16#6C# range 0 .. 31;
      ELMR     at 16#7C# range 0 .. 63;
      SSPR     at 16#A0# range 0 .. 31;
      SSPUP    at 16#A4# range 0 .. 31;
      SMMR     at 16#B0# range 0 .. 31;
      FPV2     at 16#C0# range 0 .. 31;
      WPCR     at 16#E4# range 0 .. 31;
      WPSR     at 16#E8# range 0 .. 31;
      CMPV0    at 16#130# range 0 .. 31;
      CMPVUPD0 at 16#134# range 0 .. 31;
      CMPM0    at 16#138# range 0 .. 31;
      CMPMUPD0 at 16#13C# range 0 .. 31;
      CMPV1    at 16#140# range 0 .. 31;
      CMPVUPD1 at 16#144# range 0 .. 31;
      CMPM1    at 16#148# range 0 .. 31;
      CMPMUPD1 at 16#14C# range 0 .. 31;
      CMPV2    at 16#150# range 0 .. 31;
      CMPVUPD2 at 16#154# range 0 .. 31;
      CMPM2    at 16#158# range 0 .. 31;
      CMPMUPD2 at 16#15C# range 0 .. 31;
      CMPV3    at 16#160# range 0 .. 31;
      CMPVUPD3 at 16#164# range 0 .. 31;
      CMPM3    at 16#168# range 0 .. 31;
      CMPMUPD3 at 16#16C# range 0 .. 31;
      CMPV4    at 16#170# range 0 .. 31;
      CMPVUPD4 at 16#174# range 0 .. 31;
      CMPM4    at 16#178# range 0 .. 31;
      CMPMUPD4 at 16#17C# range 0 .. 31;
      CMPV5    at 16#180# range 0 .. 31;
      CMPVUPD5 at 16#184# range 0 .. 31;
      CMPM5    at 16#188# range 0 .. 31;
      CMPMUPD5 at 16#18C# range 0 .. 31;
      CMPV6    at 16#190# range 0 .. 31;
      CMPVUPD6 at 16#194# range 0 .. 31;
      CMPM6    at 16#198# range 0 .. 31;
      CMPMUPD6 at 16#19C# range 0 .. 31;
      CMPV7    at 16#1A0# range 0 .. 31;
      CMPVUPD7 at 16#1A4# range 0 .. 31;
      CMPM7    at 16#1A8# range 0 .. 31;
      CMPMUPD7 at 16#1AC# range 0 .. 31;
      CMR0     at 16#200# range 0 .. 31;
      CDTY0    at 16#204# range 0 .. 31;
      CDTYUPD0 at 16#208# range 0 .. 31;
      CPRD0    at 16#20C# range 0 .. 31;
      CPRDUPD0 at 16#210# range 0 .. 31;
      CCNT0    at 16#214# range 0 .. 31;
      DT0      at 16#218# range 0 .. 31;
      DTUPD0   at 16#21C# range 0 .. 31;
      CMR1     at 16#220# range 0 .. 31;
      CDTY1    at 16#224# range 0 .. 31;
      CDTYUPD1 at 16#228# range 0 .. 31;
      CPRD1    at 16#22C# range 0 .. 31;
      CPRDUPD1 at 16#230# range 0 .. 31;
      CCNT1    at 16#234# range 0 .. 31;
      DT1      at 16#238# range 0 .. 31;
      DTUPD1   at 16#23C# range 0 .. 31;
      CMR2     at 16#240# range 0 .. 31;
      CDTY2    at 16#244# range 0 .. 31;
      CDTYUPD2 at 16#248# range 0 .. 31;
      CPRD2    at 16#24C# range 0 .. 31;
      CPRDUPD2 at 16#250# range 0 .. 31;
      CCNT2    at 16#254# range 0 .. 31;
      DT2      at 16#258# range 0 .. 31;
      DTUPD2   at 16#25C# range 0 .. 31;
      CMR3     at 16#260# range 0 .. 31;
      CDTY3    at 16#264# range 0 .. 31;
      CDTYUPD3 at 16#268# range 0 .. 31;
      CPRD3    at 16#26C# range 0 .. 31;
      CPRDUPD3 at 16#270# range 0 .. 31;
      CCNT3    at 16#274# range 0 .. 31;
      DT3      at 16#278# range 0 .. 31;
      DTUPD3   at 16#27C# range 0 .. 31;
      CMUPD0   at 16#400# range 0 .. 31;
      CMUPD1   at 16#420# range 0 .. 31;
      ETRG1    at 16#42C# range 0 .. 31;
      LEBR1    at 16#430# range 0 .. 31;
      CMUPD2   at 16#440# range 0 .. 31;
      ETRG2    at 16#44C# range 0 .. 31;
      LEBR2    at 16#450# range 0 .. 31;
      CMUPD3   at 16#460# range 0 .. 31;
   end record;

   --  Pulse Width Modulation Controller 0
   PWM0_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#40020000#);

   --  Pulse Width Modulation Controller 1
   PWM1_Periph : aliased PWM_Peripheral
     with Import, Address => System'To_Address (16#4005C000#);

end SAM_SVD.PWM;
