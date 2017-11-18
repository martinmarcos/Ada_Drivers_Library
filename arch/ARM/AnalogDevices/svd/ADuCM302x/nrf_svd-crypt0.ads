--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CRYPT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable Bit for Crypto Block
   type CFG_BLKEN_Field is
     (
      --  Enable Crypto Block
      Enable,
      --  Disable Crypto Block
      Disable)
     with Size => 1;
   for CFG_BLKEN_Field use
     (Enable => 0,
      Disable => 1);

   --  Enable DMA Channel Request for Input Buffer
   type CFG_INDMAEN_Field is
     (
      --  Disable DMA Requesting for Input Buffer
      Dma_Disable_Inbuf,
      --  Enable DMA Requesting for Input Buffer
      Dma_Enable_Inbuf)
     with Size => 1;
   for CFG_INDMAEN_Field use
     (Dma_Disable_Inbuf => 0,
      Dma_Enable_Inbuf => 1);

   --  Enable DMA Channel Request for Output Buffer
   type CFG_OUTDMAEN_Field is
     (
      --  Disable DMA Requesting for Output Buffer
      Dma_Disable_Outbuf,
      --  Enable DMA Requesting for Output Buffer
      Dma_Enable_Outbuf)
     with Size => 1;
   for CFG_OUTDMAEN_Field use
     (Dma_Disable_Outbuf => 0,
      Dma_Enable_Outbuf => 1);

   --  Select Key Length for AES Cipher
   type CFG_AESKEYLEN_Field is
     (
      --  Uses 128-bit long key
      Aeskeylen128,
      --  Uses 256-bit long key
      Aeskeylen256)
     with Size => 2;
   for CFG_AESKEYLEN_Field use
     (Aeskeylen128 => 0,
      Aeskeylen256 => 2);

   subtype CFG_RevID_Field is HAL.UInt4;

   --  Configuration Register
   type CFG_Register is record
      --  Enable Bit for Crypto Block
      BLKEN          : CFG_BLKEN_Field := NRF_SVD.CRYPT0.Enable;
      --  Encrypt or Decrypt
      ENCR           : Boolean := False;
      --  Enable DMA Channel Request for Input Buffer
      INDMAEN        : CFG_INDMAEN_Field := NRF_SVD.CRYPT0.Dma_Disable_Inbuf;
      --  Enable DMA Channel Request for Output Buffer
      OUTDMAEN       : CFG_OUTDMAEN_Field :=
                        NRF_SVD.CRYPT0.Dma_Disable_Outbuf;
      --  Write-only. Input Buffer Flush
      INFLUSH        : Boolean := False;
      --  Write-only. Output Buffer Flush
      OUTFLUSH       : Boolean := False;
      --  Byte Swap 32 Bit AES Input Data
      AES_BYTESWAP   : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Select Key Length for AES Cipher
      AESKEYLEN      : CFG_AESKEYLEN_Field := NRF_SVD.CRYPT0.Aeskeylen128;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Enable ECB Mode Operation
      ECBEN          : Boolean := False;
      --  Enable CTR Mode Operation
      CTREN          : Boolean := False;
      --  Enable CBC Mode Operation
      CBCEN          : Boolean := False;
      --  Enable CCM/CCM* Mode Operation
      CCMEN          : Boolean := False;
      --  Enable CMAC Mode Operation
      CMACEN         : Boolean := False;
      --  unspecified
      Reserved_21_24 : HAL.UInt4 := 16#0#;
      --  Enable SHA-256 Operation
      SHA256EN       : Boolean := False;
      --  Restarts SHA Computation
      SHAINIT        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Read-only. Rev ID for Crypto
      RevID          : CFG_RevID_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      BLKEN          at 0 range 0 .. 0;
      ENCR           at 0 range 1 .. 1;
      INDMAEN        at 0 range 2 .. 2;
      OUTDMAEN       at 0 range 3 .. 3;
      INFLUSH        at 0 range 4 .. 4;
      OUTFLUSH       at 0 range 5 .. 5;
      AES_BYTESWAP   at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      AESKEYLEN      at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      ECBEN          at 0 range 16 .. 16;
      CTREN          at 0 range 17 .. 17;
      CBCEN          at 0 range 18 .. 18;
      CCMEN          at 0 range 19 .. 19;
      CMACEN         at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      SHA256EN       at 0 range 25 .. 25;
      SHAINIT        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      RevID          at 0 range 28 .. 31;
   end record;

   subtype DATALEN_VALUE_Field is HAL.UInt20;

   --  Payload Data Length
   type DATALEN_Register is record
      --  Length of Payload Data
      VALUE          : DATALEN_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATALEN_Register use record
      VALUE          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PREFIXLEN_VALUE_Field is HAL.UInt16;

   --  Authentication Data Length
   type PREFIXLEN_Register is record
      --  Length of Associated Data
      VALUE          : PREFIXLEN_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PREFIXLEN_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Enable Register
   type INTEN_Register is record
      --  Enable Input Ready Interrupt
      INRDYEN       : Boolean := False;
      --  Enables the Output Ready Interrupt
      OUTRDYEN      : Boolean := False;
      --  Enable Input Overflow Interrupt
      INOVREN       : Boolean := False;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Enable SHA_Done Interrupt
      SHADONEN      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      INRDYEN       at 0 range 0 .. 0;
      OUTRDYEN      at 0 range 1 .. 1;
      INOVREN       at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      SHADONEN      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype STAT_INWORDS_Field is HAL.UInt3;
   subtype STAT_OUTWORDS_Field is HAL.UInt3;

   --  Status Register
   type STAT_Register is record
      --  Read-only. Input Buffer Status
      INRDY          : Boolean := True;
      --  Read-only. Output Data Ready
      OUTRDY         : Boolean := False;
      --  Overflow in the Input Buffer
      INOVR          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Read-only. SHA Computation Complete
      SHADONE        : Boolean := False;
      --  Read-only. SHA Busy. in Computation
      SHABUSY        : Boolean := False;
      --  Read-only. Number of Words in the Input Buffer
      INWORDS        : STAT_INWORDS_Field := 16#0#;
      --  Read-only. Number of Words in the Output Buffer
      OUTWORDS       : STAT_OUTWORDS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      INRDY          at 0 range 0 .. 0;
      OUTRDY         at 0 range 1 .. 1;
      INOVR          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SHADONE        at 0 range 5 .. 5;
      SHABUSY        at 0 range 6 .. 6;
      INWORDS        at 0 range 7 .. 9;
      OUTWORDS       at 0 range 10 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype CNTRINIT_VALUE_Field is HAL.UInt20;

   --  Counter Initialization Vector
   type CNTRINIT_Register is record
      --  Counter Initialization Value
      VALUE          : CNTRINIT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNTRINIT_Register use record
      VALUE          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SHA_LAST_WORD_O_Bits_Valid_Field is HAL.UInt5;

   --  SHA Last Word and Valid Bits Information
   type SHA_LAST_WORD_Register is record
      --  Last SHA Input Word
      O_Last_Word   : Boolean := False;
      --  Bits Valid in SHA Last Word Input
      O_Bits_Valid  : SHA_LAST_WORD_O_Bits_Valid_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_LAST_WORD_Register use record
      O_Last_Word   at 0 range 0 .. 0;
      O_Bits_Valid  at 0 range 1 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype CCM_NUM_VALID_BYTES_NUM_VALID_BYTES_Field is HAL.UInt4;

   --  NUM_VALID_BYTES
   type CCM_NUM_VALID_BYTES_Register is record
      --  Number of Valid Bytes in CCM Last Data
      NUM_VALID_BYTES : CCM_NUM_VALID_BYTES_NUM_VALID_BYTES_Field := 16#0#;
      --  unspecified
      Reserved_4_31   : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_NUM_VALID_BYTES_Register use record
      NUM_VALID_BYTES at 0 range 0 .. 3;
      Reserved_4_31   at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Register Map for the Crypto Block
   type CRYPT0_Peripheral is record
      --  Configuration Register
      CFG                 : aliased CFG_Register;
      --  Payload Data Length
      DATALEN             : aliased DATALEN_Register;
      --  Authentication Data Length
      PREFIXLEN           : aliased PREFIXLEN_Register;
      --  Interrupt Enable Register
      INTEN               : aliased INTEN_Register;
      --  Status Register
      STAT                : aliased STAT_Register;
      --  Input Buffer
      INBUF               : aliased HAL.UInt32;
      --  Output Buffer
      OUTBUF              : aliased HAL.UInt32;
      --  Nonce Bits [31:0]
      NONCE0              : aliased HAL.UInt32;
      --  Nonce Bits [63:32]
      NONCE1              : aliased HAL.UInt32;
      --  Nonce Bits [95:64]
      NONCE2              : aliased HAL.UInt32;
      --  Nonce Bits [127:96]
      NONCE3              : aliased HAL.UInt32;
      --  AES Key Bits [31:0]
      AESKEY0             : aliased HAL.UInt32;
      --  AES Key Bits [63:32]
      AESKEY1             : aliased HAL.UInt32;
      --  AES Key Bits [95:64]
      AESKEY2             : aliased HAL.UInt32;
      --  AES Key Bits [127:96]
      AESKEY3             : aliased HAL.UInt32;
      --  AES Key Bits [159:128]
      AESKEY4             : aliased HAL.UInt32;
      --  AES Key Bits [191:160]
      AESKEY5             : aliased HAL.UInt32;
      --  AES Key Bits [223:192]
      AESKEY6             : aliased HAL.UInt32;
      --  AES Key Bits [255:224]
      AESKEY7             : aliased HAL.UInt32;
      --  Counter Initialization Vector
      CNTRINIT            : aliased CNTRINIT_Register;
      --  SHA Bits [31:0]
      SHAH0               : aliased HAL.UInt32;
      --  SHA Bits [63:32]
      SHAH1               : aliased HAL.UInt32;
      --  SHA Bits [95:64]
      SHAH2               : aliased HAL.UInt32;
      --  SHA Bits [127:96]
      SHAH3               : aliased HAL.UInt32;
      --  SHA Bits [159:128]
      SHAH4               : aliased HAL.UInt32;
      --  SHA Bits [191:160]
      SHAH5               : aliased HAL.UInt32;
      --  SHA Bits [223:192]
      SHAH6               : aliased HAL.UInt32;
      --  SHA Bits [255:224]
      SHAH7               : aliased HAL.UInt32;
      --  SHA Last Word and Valid Bits Information
      SHA_LAST_WORD       : aliased SHA_LAST_WORD_Register;
      --  NUM_VALID_BYTES
      CCM_NUM_VALID_BYTES : aliased CCM_NUM_VALID_BYTES_Register;
   end record
     with Volatile;

   for CRYPT0_Peripheral use record
      CFG                 at 16#0# range 0 .. 31;
      DATALEN             at 16#4# range 0 .. 31;
      PREFIXLEN           at 16#8# range 0 .. 31;
      INTEN               at 16#C# range 0 .. 31;
      STAT                at 16#10# range 0 .. 31;
      INBUF               at 16#14# range 0 .. 31;
      OUTBUF              at 16#18# range 0 .. 31;
      NONCE0              at 16#1C# range 0 .. 31;
      NONCE1              at 16#20# range 0 .. 31;
      NONCE2              at 16#24# range 0 .. 31;
      NONCE3              at 16#28# range 0 .. 31;
      AESKEY0             at 16#2C# range 0 .. 31;
      AESKEY1             at 16#30# range 0 .. 31;
      AESKEY2             at 16#34# range 0 .. 31;
      AESKEY3             at 16#38# range 0 .. 31;
      AESKEY4             at 16#3C# range 0 .. 31;
      AESKEY5             at 16#40# range 0 .. 31;
      AESKEY6             at 16#44# range 0 .. 31;
      AESKEY7             at 16#48# range 0 .. 31;
      CNTRINIT            at 16#4C# range 0 .. 31;
      SHAH0               at 16#50# range 0 .. 31;
      SHAH1               at 16#54# range 0 .. 31;
      SHAH2               at 16#58# range 0 .. 31;
      SHAH3               at 16#5C# range 0 .. 31;
      SHAH4               at 16#60# range 0 .. 31;
      SHAH5               at 16#64# range 0 .. 31;
      SHAH6               at 16#68# range 0 .. 31;
      SHAH7               at 16#6C# range 0 .. 31;
      SHA_LAST_WORD       at 16#70# range 0 .. 31;
      CCM_NUM_VALID_BYTES at 16#74# range 0 .. 31;
   end record;

   --  Register Map for the Crypto Block
   CRYPT0_Periph : aliased CRYPT0_Peripheral
     with Import, Address => System'To_Address (16#40044000#);

end NRF_SVD.CRYPT0;
