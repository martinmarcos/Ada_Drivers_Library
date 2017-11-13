--  This spec has been automatically generated from ATSAM4E16CB.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Advanced Encryption Standard
package SAM_SVD.AES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type AES_CR_Register is record
      --  Write-only. Start Processing
      START         : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_CR_Register use record
      START         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      SWRST         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Dual Input Buffer
   type MR_DUALBUFF_Field is
     (
      --  AES_IDATARx cannot be written during processing of previous block.
      Inactive,
      --  AES_IDATARx can be written during processing of previous block when
      --  SMOD = 0x2. It speeds up the overall runtime of large files.
      Active)
     with Size => 1;
   for MR_DUALBUFF_Field use
     (Inactive => 0,
      Active => 1);

   subtype AES_MR_PROCDLY_Field is HAL.UInt4;

   --  Start Mode
   type MR_SMOD_Field is
     (
      --  Manual Mode
      Manual_Start,
      --  Auto Mode
      Auto_Start,
      --  AES_IDATAR0 access only Auto Mode
      Idatar0_Start)
     with Size => 2;
   for MR_SMOD_Field use
     (Manual_Start => 0,
      Auto_Start => 1,
      Idatar0_Start => 2);

   --  Key Size
   type MR_KEYSIZE_Field is
     (
      --  AES Key Size is 128 bits
      Aes128,
      --  AES Key Size is 192 bits
      Aes192,
      --  AES Key Size is 256 bits
      Aes256)
     with Size => 2;
   for MR_KEYSIZE_Field use
     (Aes128 => 0,
      Aes192 => 1,
      Aes256 => 2);

   --  Operation Mode
   type MR_OPMOD_Field is
     (
      --  ECB: Electronic Code Book mode
      Ecb,
      --  CBC: Cipher Block Chaining mode
      Cbc,
      --  OFB: Output Feedback mode
      Ofb,
      --  CFB: Cipher Feedback mode
      Cfb,
      --  CTR: Counter mode (16-bit internal counter)
      Ctr)
     with Size => 3;
   for MR_OPMOD_Field use
     (Ecb => 0,
      Cbc => 1,
      Ofb => 2,
      Cfb => 3,
      Ctr => 4);

   --  Cipher Feedback Data Size
   type MR_CFBS_Field is
     (
      --  128-bit
      Size_128Bit,
      --  64-bit
      Size_64Bit,
      --  32-bit
      Size_32Bit,
      --  16-bit
      Size_16Bit,
      --  8-bit
      Size_8Bit)
     with Size => 3;
   for MR_CFBS_Field use
     (Size_128Bit => 0,
      Size_64Bit => 1,
      Size_32Bit => 2,
      Size_16Bit => 3,
      Size_8Bit => 4);

   --  Key
   type MR_CKEY_Field is
     (
      --  Reset value for the field
      Mr_Ckey_Field_Reset,
      --  This field must be written with 0xE the first time that AES_MR is
      --  programmed. For subsequent programming of the AES_MR, any value can
      --  be written, including that of 0xE.Always reads as 0.
      Passwd)
     with Size => 4;
   for MR_CKEY_Field use
     (Mr_Ckey_Field_Reset => 0,
      Passwd => 14);

   --  Mode Register
   type AES_MR_Register is record
      --  Processing Mode
      CIPHER         : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Dual Input Buffer
      DUALBUFF       : MR_DUALBUFF_Field := SAM_SVD.AES.Inactive;
      --  Processing Delay
      PROCDLY        : AES_MR_PROCDLY_Field := 16#0#;
      --  Start Mode
      SMOD           : MR_SMOD_Field := SAM_SVD.AES.Manual_Start;
      --  Key Size
      KEYSIZE        : MR_KEYSIZE_Field := SAM_SVD.AES.Aes128;
      --  Operation Mode
      OPMOD          : MR_OPMOD_Field := SAM_SVD.AES.Ecb;
      --  Last Output Data Mode
      LOD            : Boolean := False;
      --  Cipher Feedback Data Size
      CFBS           : MR_CFBS_Field := SAM_SVD.AES.Size_128Bit;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Key
      CKEY           : MR_CKEY_Field := Mr_Ckey_Field_Reset;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_MR_Register use record
      CIPHER         at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DUALBUFF       at 0 range 3 .. 3;
      PROCDLY        at 0 range 4 .. 7;
      SMOD           at 0 range 8 .. 9;
      KEYSIZE        at 0 range 10 .. 11;
      OPMOD          at 0 range 12 .. 14;
      LOD            at 0 range 15 .. 15;
      CFBS           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CKEY           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt Enable Register
   type AES_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Write-only. Unspecified Register Access Detection Interrupt Enable
      URAD          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IER_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      URAD          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Interrupt Disable Register
   type AES_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Write-only. Unspecified Register Access Detection Interrupt Disable
      URAD          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IDR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      URAD          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Interrupt Mask Register
   type AES_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_7  : HAL.UInt7;
      --  Read-only. Unspecified Register Access Detection Interrupt Mask
      URAD          : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IMR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      URAD          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Unspecified Register Access
   type ISR_URAT_Field is
     (
      --  Input Data Register written during the data processing when SMOD =
      --  0x2 mode.
      Idr_Wr_Processing,
      --  Output Data Register read during the data processing.
      Odr_Rd_Processing,
      --  Mode Register written during the data processing.
      Mr_Wr_Processing,
      --  Output Data Register read during the sub-keys generation.
      Odr_Rd_Subkgen,
      --  Mode Register written during the sub-keys generation.
      Mr_Wr_Subkgen,
      --  Write-only register read access.
      Wor_Rd_Access)
     with Size => 4;
   for ISR_URAT_Field use
     (Idr_Wr_Processing => 0,
      Odr_Rd_Processing => 1,
      Mr_Wr_Processing => 2,
      Odr_Rd_Subkgen => 3,
      Mr_Wr_Subkgen => 4,
      Wor_Rd_Access => 5);

   --  Interrupt Status Register
   type AES_ISR_Register is record
      --  Read-only. Data Ready
      DATRDY         : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Unspecified Register Access Detection Status
      URAD           : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. Unspecified Register Access
      URAT           : ISR_URAT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_ISR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      URAT           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Key Word Register

   --  Key Word Register
   type AES_KEYWR_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  Input Data Register

   --  Input Data Register
   type AES_IDATAR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Output Data Register

   --  Output Data Register
   type AES_ODATAR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Initialization Vector Register

   --  Initialization Vector Register
   type AES_IVR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced Encryption Standard
   type AES_Peripheral is record
      --  Control Register
      CR     : aliased AES_CR_Register;
      --  Mode Register
      MR     : aliased AES_MR_Register;
      --  Interrupt Enable Register
      IER    : aliased AES_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased AES_IDR_Register;
      --  Interrupt Mask Register
      IMR    : aliased AES_IMR_Register;
      --  Interrupt Status Register
      ISR    : aliased AES_ISR_Register;
      --  Key Word Register
      KEYWR  : aliased AES_KEYWR_Registers;
      --  Input Data Register
      IDATAR : aliased AES_IDATAR_Registers;
      --  Output Data Register
      ODATAR : aliased AES_ODATAR_Registers;
      --  Initialization Vector Register
      IVR    : aliased AES_IVR_Registers;
   end record
     with Volatile;

   for AES_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      MR     at 16#4# range 0 .. 31;
      IER    at 16#10# range 0 .. 31;
      IDR    at 16#14# range 0 .. 31;
      IMR    at 16#18# range 0 .. 31;
      ISR    at 16#1C# range 0 .. 31;
      KEYWR  at 16#20# range 0 .. 255;
      IDATAR at 16#40# range 0 .. 127;
      ODATAR at 16#50# range 0 .. 127;
      IVR    at 16#60# range 0 .. 127;
   end record;

   --  Advanced Encryption Standard
   AES_Periph : aliased AES_Peripheral
     with Import, Address => AES_Base;

end SAM_SVD.AES;
