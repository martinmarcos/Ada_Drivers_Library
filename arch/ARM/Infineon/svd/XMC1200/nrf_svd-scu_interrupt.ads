--  This spec has been automatically generated from XMC1200.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Control Unit
package NRF_SVD.SCU_INTERRUPT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SRRAW_RTC_ATIM array
   type SRRAW_RTC_ATIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRRAW_RTC_ATIM
   type SRRAW_RTC_ATIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_ATIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_ATIM as an array
            Arr : SRRAW_RTC_ATIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRRAW_RTC_ATIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SRRAW_RTC_TIM array
   type SRRAW_RTC_TIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRRAW_RTC_TIM
   type SRRAW_RTC_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_TIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_TIM as an array
            Arr : SRRAW_RTC_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRRAW_RTC_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SCU Raw Service Request Status
   type SRRAW_Register is record
      --  Read-only. WDT pre-warning Event Status Before Masking
      PRWARN         : Boolean;
      --  Read-only. RTC Raw Periodic Event Status Before Masking
      PI             : Boolean;
      --  Read-only. RTC Raw Alarm Event Status Before Masking
      AI             : Boolean;
      --  Read-only. VDDP pre-warning Event Status Before Masking
      VDDPI          : Boolean;
      --  Read-only. Analog Comparator 0 Event Status Before Masking
      ACMP0I         : Boolean;
      --  Read-only. Analog Comparator 1 Event Status Before Masking
      ACMP1I         : Boolean;
      --  Read-only. Analog Comparator 2 Event Status Before Masking
      ACMP2I         : Boolean;
      --  Read-only. VDROP Event Status Before Masking
      VDROPI         : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC0I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC1I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC2I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC3I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC4I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC5I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC6I          : Boolean;
      --  Read-only. Out of Range Comparator X Event Status Before Masking
      ORC7I          : Boolean;
      --  Read-only. Loss of Clock Event Status Before Masking
      LOCI           : Boolean;
      --  Read-only. 16kbytes SRAM Parity Error Event Status Before Masking
      PESRAMI        : Boolean;
      --  Read-only. USIC0 SRAM Parity Error Event Status Before Masking
      PEU0I          : Boolean;
      --  Read-only. Flash Double Bit ECC Event Status Before Masking
      FLECC2I        : Boolean;
      --  Read-only. Flash Operation Complete Event Status Before Masking
      FLCMPLTI       : Boolean;
      --  Read-only. VCLIP Event Status Before Masking
      VCLIPI         : Boolean;
      --  Read-only. Standby Clock Failure Event Status Before Masking
      SBYCLKFI       : Boolean;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. RTC CTR Mirror Register Update Status Before Masking
      RTC_CTR        : Boolean;
      --  Read-only. RTC ATIM0 Mirror Register Update Status Before Masking
      RTC_ATIM       : SRRAW_RTC_ATIM_Field;
      --  Read-only. RTC TIM0 Mirror Register Update Before Masking
      RTC_TIM        : SRRAW_RTC_TIM_Field;
      --  Read-only. TSE Measurement Done Event Status Before Masking
      TSE_DONE       : Boolean;
      --  Read-only. TSE Compare High Temperature Event Status Before Masking
      TSE_HIGH       : Boolean;
      --  Read-only. TSE Compare Low Temperature Event Status Before Masking
      TSE_LOW        : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRRAW_Register use record
      PRWARN         at 0 range 0 .. 0;
      PI             at 0 range 1 .. 1;
      AI             at 0 range 2 .. 2;
      VDDPI          at 0 range 3 .. 3;
      ACMP0I         at 0 range 4 .. 4;
      ACMP1I         at 0 range 5 .. 5;
      ACMP2I         at 0 range 6 .. 6;
      VDROPI         at 0 range 7 .. 7;
      ORC0I          at 0 range 8 .. 8;
      ORC1I          at 0 range 9 .. 9;
      ORC2I          at 0 range 10 .. 10;
      ORC3I          at 0 range 11 .. 11;
      ORC4I          at 0 range 12 .. 12;
      ORC5I          at 0 range 13 .. 13;
      ORC6I          at 0 range 14 .. 14;
      ORC7I          at 0 range 15 .. 15;
      LOCI           at 0 range 16 .. 16;
      PESRAMI        at 0 range 17 .. 17;
      PEU0I          at 0 range 18 .. 18;
      FLECC2I        at 0 range 19 .. 19;
      FLCMPLTI       at 0 range 20 .. 20;
      VCLIPI         at 0 range 21 .. 21;
      SBYCLKFI       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RTC_CTR        at 0 range 24 .. 24;
      RTC_ATIM       at 0 range 25 .. 26;
      RTC_TIM        at 0 range 27 .. 28;
      TSE_DONE       at 0 range 29 .. 29;
      TSE_HIGH       at 0 range 30 .. 30;
      TSE_LOW        at 0 range 31 .. 31;
   end record;

   --  SRMSK_RTC_ATIM array
   type SRMSK_RTC_ATIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRMSK_RTC_ATIM
   type SRMSK_RTC_ATIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_ATIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_ATIM as an array
            Arr : SRMSK_RTC_ATIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRMSK_RTC_ATIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SRMSK_RTC_TIM array
   type SRMSK_RTC_TIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRMSK_RTC_TIM
   type SRMSK_RTC_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_TIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_TIM as an array
            Arr : SRMSK_RTC_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRMSK_RTC_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SCU Service Request Mask
   type SRMSK_Register is record
      --  WDT pre-warning Interrupt Mask
      PRWARN         : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  VDDP pre-warning Interrupt Mask
      VDDPI          : Boolean := False;
      --  Analog Comparator 0 Interrupt Mask
      ACMP0I         : Boolean := False;
      --  Analog Comparator 1 Interrupt Mask
      ACMP1I         : Boolean := False;
      --  Analog Comparator 2 Interrupt Mask
      ACMP2I         : Boolean := False;
      --  VDROP Interrupt Mask
      VDROPI         : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC0I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC1I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC2I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC3I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC4I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC5I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC6I          : Boolean := False;
      --  Out of Range Comparator X Interrupt Mask
      ORC7I          : Boolean := False;
      --  Loss of Clock Interrupt Mask
      LOCI           : Boolean := False;
      --  16kbytes SRAM Parity Error Interrupt Mask
      PESRAMI        : Boolean := False;
      --  USIC0 SRAM Parity Error Interrupt Mask
      PEU0I          : Boolean := False;
      --  Flash Double Bit ECC Interrupt Mask
      FLECC2I        : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  VCLIP Interrupt Mask
      VCLIPI         : Boolean := False;
      --  Standby Clock Failure Interrupt Mask
      SBYCLKFI       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  RTC CTR Mirror Register Update Mask
      RTC_CTR        : Boolean := False;
      --  RTC ATIM0 Mirror Register Update Mask
      RTC_ATIM       : SRMSK_RTC_ATIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  RTC TIM0 Mirror Register Update Mask
      RTC_TIM        : SRMSK_RTC_TIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  TSE Measurement Done Interrupt Mask
      TSE_DONE       : Boolean := False;
      --  TSE Compare High Temperature Interrupt Mask
      TSE_HIGH       : Boolean := False;
      --  TSE Compare Low Temperature Interrupt Mask
      TSE_LOW        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRMSK_Register use record
      PRWARN         at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      VDDPI          at 0 range 3 .. 3;
      ACMP0I         at 0 range 4 .. 4;
      ACMP1I         at 0 range 5 .. 5;
      ACMP2I         at 0 range 6 .. 6;
      VDROPI         at 0 range 7 .. 7;
      ORC0I          at 0 range 8 .. 8;
      ORC1I          at 0 range 9 .. 9;
      ORC2I          at 0 range 10 .. 10;
      ORC3I          at 0 range 11 .. 11;
      ORC4I          at 0 range 12 .. 12;
      ORC5I          at 0 range 13 .. 13;
      ORC6I          at 0 range 14 .. 14;
      ORC7I          at 0 range 15 .. 15;
      LOCI           at 0 range 16 .. 16;
      PESRAMI        at 0 range 17 .. 17;
      PEU0I          at 0 range 18 .. 18;
      FLECC2I        at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      VCLIPI         at 0 range 21 .. 21;
      SBYCLKFI       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RTC_CTR        at 0 range 24 .. 24;
      RTC_ATIM       at 0 range 25 .. 26;
      RTC_TIM        at 0 range 27 .. 28;
      TSE_DONE       at 0 range 29 .. 29;
      TSE_HIGH       at 0 range 30 .. 30;
      TSE_LOW        at 0 range 31 .. 31;
   end record;

   --  SRCLR_RTC_ATIM array
   type SRCLR_RTC_ATIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRCLR_RTC_ATIM
   type SRCLR_RTC_ATIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_ATIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_ATIM as an array
            Arr : SRCLR_RTC_ATIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRCLR_RTC_ATIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SRCLR_RTC_TIM array
   type SRCLR_RTC_TIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRCLR_RTC_TIM
   type SRCLR_RTC_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_TIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_TIM as an array
            Arr : SRCLR_RTC_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRCLR_RTC_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SCU Service Request Clear
   type SRCLR_Register is record
      --  Write-only. WDT pre-warning Interrupt Clear
      PRWARN         : Boolean := False;
      --  Write-only. RTC Periodic Interrupt Clear
      PI             : Boolean := False;
      --  Write-only. RTC Alarm Interrupt Clear
      AI             : Boolean := False;
      --  Write-only. VDDP pre-warning Interrupt Clear
      VDDPI          : Boolean := False;
      --  Write-only. Analog Comparator 0 Interrupt Clear
      ACMP0I         : Boolean := False;
      --  Write-only. Analog Comparator 1 Interrupt Clear
      ACMP1I         : Boolean := False;
      --  Write-only. Analog Comparator 2 Interrupt Clear
      ACMP2I         : Boolean := False;
      --  Write-only. VDROP Interrupt Clear
      VDROPI         : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC0I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC1I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC2I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC3I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC4I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC5I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC6I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Clear
      ORC7I          : Boolean := False;
      --  Write-only. Loss of Clock Interrupt Clear
      LOCI           : Boolean := False;
      --  Write-only. 16kbytes SRAM Parity Error Interrupt Clear
      PESRAMI        : Boolean := False;
      --  Write-only. USIC0 SRAM Parity Error Interrupt Clear
      PEU0I          : Boolean := False;
      --  Write-only. Flash Double Bit ECC Interrupt Clear
      FLECC2I        : Boolean := False;
      --  Write-only. Flash Operation Complete Interrupt Clear
      FLCMPLTI       : Boolean := False;
      --  Write-only. VCLIP Interrupt Clear
      VCLIPI         : Boolean := False;
      --  Write-only. Standby Clock Failure Interrupt Clear
      SBYCLKFI       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write-only. RTC CTR Mirror Register Update Clear
      RTC_CTR        : Boolean := False;
      --  Write-only. RTC ATIM0 Mirror Register Update Clear
      RTC_ATIM       : SRCLR_RTC_ATIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. RTC TIM0 Mirror Register Update Clear
      RTC_TIM        : SRCLR_RTC_TIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. TSE Measurement Done Interrupt Clear
      TSE_DONE       : Boolean := False;
      --  Write-only. TSE Compare High Temperature Interrupt Clear
      TSE_HIGH       : Boolean := False;
      --  Write-only. TSE Compare Low Temperature Interrupt Clear
      TSE_LOW        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRCLR_Register use record
      PRWARN         at 0 range 0 .. 0;
      PI             at 0 range 1 .. 1;
      AI             at 0 range 2 .. 2;
      VDDPI          at 0 range 3 .. 3;
      ACMP0I         at 0 range 4 .. 4;
      ACMP1I         at 0 range 5 .. 5;
      ACMP2I         at 0 range 6 .. 6;
      VDROPI         at 0 range 7 .. 7;
      ORC0I          at 0 range 8 .. 8;
      ORC1I          at 0 range 9 .. 9;
      ORC2I          at 0 range 10 .. 10;
      ORC3I          at 0 range 11 .. 11;
      ORC4I          at 0 range 12 .. 12;
      ORC5I          at 0 range 13 .. 13;
      ORC6I          at 0 range 14 .. 14;
      ORC7I          at 0 range 15 .. 15;
      LOCI           at 0 range 16 .. 16;
      PESRAMI        at 0 range 17 .. 17;
      PEU0I          at 0 range 18 .. 18;
      FLECC2I        at 0 range 19 .. 19;
      FLCMPLTI       at 0 range 20 .. 20;
      VCLIPI         at 0 range 21 .. 21;
      SBYCLKFI       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RTC_CTR        at 0 range 24 .. 24;
      RTC_ATIM       at 0 range 25 .. 26;
      RTC_TIM        at 0 range 27 .. 28;
      TSE_DONE       at 0 range 29 .. 29;
      TSE_HIGH       at 0 range 30 .. 30;
      TSE_LOW        at 0 range 31 .. 31;
   end record;

   --  SRSET_RTC_ATIM array
   type SRSET_RTC_ATIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRSET_RTC_ATIM
   type SRSET_RTC_ATIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_ATIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_ATIM as an array
            Arr : SRSET_RTC_ATIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRSET_RTC_ATIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SRSET_RTC_TIM array
   type SRSET_RTC_TIM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRSET_RTC_TIM
   type SRSET_RTC_TIM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTC_TIM as a value
            Val : HAL.UInt2;
         when True =>
            --  RTC_TIM as an array
            Arr : SRSET_RTC_TIM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRSET_RTC_TIM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SCU Service Request Set
   type SRSET_Register is record
      --  Write-only. WDT pre-warning Interrupt Set
      PRWARN         : Boolean := False;
      --  Write-only. RTC Periodic Interrupt Set
      PI             : Boolean := False;
      --  Write-only. RTC Alarm Interrupt Set
      AI             : Boolean := False;
      --  Write-only. VDDP pre-warning Interrupt Set
      VDDPI          : Boolean := False;
      --  Write-only. Analog Comparator 0 Interrupt Set
      ACMP0I         : Boolean := False;
      --  Write-only. Analog Comparator 1 Interrupt Set
      ACMP1I         : Boolean := False;
      --  Write-only. Analog Comparator 2 Interrupt Set
      ACMP2I         : Boolean := False;
      --  Write-only. VDROP Interrupt Set
      VDROPI         : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC0I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC1I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC2I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC3I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC4I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC5I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC6I          : Boolean := False;
      --  Write-only. Out of Range Comparator X Interrupt Set
      ORC7I          : Boolean := False;
      --  Write-only. Loss of Clock Interrupt Set
      LOCI           : Boolean := False;
      --  Write-only. 16kbytes SRAM Parity Error Interrupt Set
      PESRAMI        : Boolean := False;
      --  Write-only. USIC0 SRAM Parity Error Interrupt Set
      PEU0I          : Boolean := False;
      --  Write-only. Flash Double Bit ECC Interrupt Set
      FLECC2I        : Boolean := False;
      --  Write-only. Flash Operation Complete Interrupt Set
      FLCMPLTI       : Boolean := False;
      --  Write-only. VCLIP Interrupt Set
      VCLIPI         : Boolean := False;
      --  Write-only. Standby Clock Failure Interrupt Set
      SBYCLKFI       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write-only. RTC CTR Mirror Register Update Set
      RTC_CTR        : Boolean := False;
      --  Write-only. RTC ATIM0 Mirror Register Update Set
      RTC_ATIM       : SRSET_RTC_ATIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. RTC TIM0 Mirror Register Update Set
      RTC_TIM        : SRSET_RTC_TIM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. TSE Measurement Done Interrupt Set
      TSE_DONE       : Boolean := False;
      --  Write-only. TSE Compare High Temperature Interrupt Set
      TSE_HIGH       : Boolean := False;
      --  Write-only. TSE Compare Low Temperature Interrupt Set
      TSE_LOW        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRSET_Register use record
      PRWARN         at 0 range 0 .. 0;
      PI             at 0 range 1 .. 1;
      AI             at 0 range 2 .. 2;
      VDDPI          at 0 range 3 .. 3;
      ACMP0I         at 0 range 4 .. 4;
      ACMP1I         at 0 range 5 .. 5;
      ACMP2I         at 0 range 6 .. 6;
      VDROPI         at 0 range 7 .. 7;
      ORC0I          at 0 range 8 .. 8;
      ORC1I          at 0 range 9 .. 9;
      ORC2I          at 0 range 10 .. 10;
      ORC3I          at 0 range 11 .. 11;
      ORC4I          at 0 range 12 .. 12;
      ORC5I          at 0 range 13 .. 13;
      ORC6I          at 0 range 14 .. 14;
      ORC7I          at 0 range 15 .. 15;
      LOCI           at 0 range 16 .. 16;
      PESRAMI        at 0 range 17 .. 17;
      PEU0I          at 0 range 18 .. 18;
      FLECC2I        at 0 range 19 .. 19;
      FLCMPLTI       at 0 range 20 .. 20;
      VCLIPI         at 0 range 21 .. 21;
      SBYCLKFI       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RTC_CTR        at 0 range 24 .. 24;
      RTC_ATIM       at 0 range 25 .. 26;
      RTC_TIM        at 0 range 27 .. 28;
      TSE_DONE       at 0 range 29 .. 29;
      TSE_HIGH       at 0 range 30 .. 30;
      TSE_LOW        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type SCU_INTERRUPT_Peripheral is record
      --  SCU Raw Service Request Status
      SRRAW : aliased SRRAW_Register;
      --  SCU Service Request Mask
      SRMSK : aliased SRMSK_Register;
      --  SCU Service Request Clear
      SRCLR : aliased SRCLR_Register;
      --  SCU Service Request Set
      SRSET : aliased SRSET_Register;
   end record
     with Volatile;

   for SCU_INTERRUPT_Peripheral use record
      SRRAW at 16#0# range 0 .. 31;
      SRMSK at 16#4# range 0 .. 31;
      SRCLR at 16#8# range 0 .. 31;
      SRSET at 16#C# range 0 .. 31;
   end record;

   --  System Control Unit
   SCU_INTERRUPT_Periph : aliased SCU_INTERRUPT_Peripheral
     with Import, Address => SCU_INTERRUPT_Base;

end NRF_SVD.SCU_INTERRUPT;
