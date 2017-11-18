--

--  This spec has been automatically generated from ADuCM4050.svd

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

   --  Key Length Key Wrap Unwrap
   type CFG_KUWKeyLen_Field is
     (
      --  Reset value for the field
      Cfg_Kuwkeylen_Field_Reset,
      --  The key size of KUW key is 128 bits
      Len128,
      --  The key size of KUW key is 256 bits
      Len256,
      --  The key size of KUW key is 512 bits
      Len512)
     with Size => 2;
   for CFG_KUWKeyLen_Field use
     (Cfg_Kuwkeylen_Field_Reset => 0,
      Len128 => 1,
      Len256 => 2,
      Len512 => 3);

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
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Select Key Length for AES Cipher
      AESKEYLEN      : CFG_AESKEYLEN_Field := NRF_SVD.CRYPT0.Aeskeylen128;
      --  Key Length Key Wrap Unwrap
      KUWKeyLen      : CFG_KUWKeyLen_Field := Cfg_Kuwkeylen_Field_Reset;
      --  Byteswap for AES Input
      AES_BYTESWAP   : Boolean := False;
      --  Enable Key Wrap
      SHA_BYTESWAP   : Boolean := False;
      --  Use Key Unwrap Before HMAC
      KEY_BYTESWAP   : Boolean := False;
      --  Enable PRKSTOR Commands
      PRKSTOREN      : Boolean := False;
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
      --  HMAC Enable
      HMACEN         : Boolean := False;
      --  unspecified
      Reserved_22_24 : HAL.UInt3 := 16#0#;
      --  Enable SHA-256 Operation
      SHA256EN       : Boolean := False;
      --  Restarts SHA Computation
      SHAINIT        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Read-only. Rev ID for Crypto
      RevID          : CFG_RevID_Field := 16#2#;
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
      Reserved_6_7   at 0 range 6 .. 7;
      AESKEYLEN      at 0 range 8 .. 9;
      KUWKeyLen      at 0 range 10 .. 11;
      AES_BYTESWAP   at 0 range 12 .. 12;
      SHA_BYTESWAP   at 0 range 13 .. 13;
      KEY_BYTESWAP   at 0 range 14 .. 14;
      PRKSTOREN      at 0 range 15 .. 15;
      ECBEN          at 0 range 16 .. 16;
      CTREN          at 0 range 17 .. 17;
      CBCEN          at 0 range 18 .. 18;
      CCMEN          at 0 range 19 .. 19;
      CMACEN         at 0 range 20 .. 20;
      HMACEN         at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
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
      INRDYEN        : Boolean := False;
      --  Enables the Output Ready Interrupt
      OUTRDYEN       : Boolean := False;
      --  Enable Input Overflow Interrupt
      INOVREN        : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Enable SHA_Done Interrupt
      SHADONEN       : Boolean := False;
      --  Interrupt Enable for HMAC Done
      HMACDONEEN     : Boolean := False;
      --  Status Bit for HMAC Message Input Ready
      HMACMSGRDYEN   : Boolean := False;
      --  PRKSTOR CMD DONE INTEN
      PRKSTRCMDONEEN : Boolean := False;
      --  unspecified
      Reserved_9_31  : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      INRDYEN        at 0 range 0 .. 0;
      OUTRDYEN       at 0 range 1 .. 1;
      INOVREN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SHADONEN       at 0 range 5 .. 5;
      HMACDONEEN     at 0 range 6 .. 6;
      HMACMSGRDYEN   at 0 range 7 .. 7;
      PRKSTRCMDONEEN at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   subtype STAT_INWORDS_Field is HAL.UInt3;
   subtype STAT_OUTWORDS_Field is HAL.UInt3;
   subtype STAT_PRKSTOR_RET_STATUS_Field is HAL.UInt2;
   subtype STAT_CMD_ISSUED_Field is HAL.UInt4;

   --  Status Register
   type STAT_Register is record
      --  Read-only. Input Buffer Status
      INRDY              : Boolean := True;
      --  Read-only. Output Data Ready
      OUTRDY             : Boolean := False;
      --  Overflow in the Input Buffer
      INOVR              : Boolean := False;
      --  unspecified
      Reserved_3_4       : HAL.UInt2 := 16#0#;
      --  SHA Computation Complete
      SHADONE            : Boolean := False;
      --  Read-only. SHA Busy. in Computation
      SHABUSY            : Boolean := False;
      --  Read-only. Number of Words in the Input Buffer
      INWORDS            : STAT_INWORDS_Field := 16#0#;
      --  Read-only. Number of Words in the Output Buffer
      OUTWORDS           : STAT_OUTWORDS_Field := 16#0#;
      --  Read-only. Status Bit Indicates HMAC Busy
      HMACBUSY           : Boolean := False;
      --  Status Bit Indicates HMAC Done
      HMACDONE           : Boolean := False;
      --  Status Bit Indicates HMAC is Message Ready
      HMACMSGRDY         : Boolean := False;
      --  unspecified
      Reserved_16_22     : HAL.UInt7 := 16#0#;
      --  Indicates Command Done for PrKStor
      PRKSTOR_CMD_DONE   : Boolean := False;
      --  Indicates Last Command Issued Failed
      PRKSTOR_CMD_FAIL   : Boolean := False;
      --  Read-only. ECC Errors in the PRKSTOR_RETRIEVE Command
      PRKSTOR_RET_STATUS : STAT_PRKSTOR_RET_STATUS_Field := 16#0#;
      --  Read-only. Last Command Issued to PrKStor
      CMD_ISSUED         : STAT_CMD_ISSUED_Field := 16#0#;
      --  Read-only. Indicates PrKSTOR is Busy
      PRKSTOR_BUSY       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      INRDY              at 0 range 0 .. 0;
      OUTRDY             at 0 range 1 .. 1;
      INOVR              at 0 range 2 .. 2;
      Reserved_3_4       at 0 range 3 .. 4;
      SHADONE            at 0 range 5 .. 5;
      SHABUSY            at 0 range 6 .. 6;
      INWORDS            at 0 range 7 .. 9;
      OUTWORDS           at 0 range 10 .. 12;
      HMACBUSY           at 0 range 13 .. 13;
      HMACDONE           at 0 range 14 .. 14;
      HMACMSGRDY         at 0 range 15 .. 15;
      Reserved_16_22     at 0 range 16 .. 22;
      PRKSTOR_CMD_DONE   at 0 range 23 .. 23;
      PRKSTOR_CMD_FAIL   at 0 range 24 .. 24;
      PRKSTOR_RET_STATUS at 0 range 25 .. 26;
      CMD_ISSUED         at 0 range 27 .. 30;
      PRKSTOR_BUSY       at 0 range 31 .. 31;
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

   subtype PRKSTORCFG_KEY_INDEX_Field is HAL.UInt7;
   subtype PRKSTORCFG_CMD_Field is HAL.UInt4;

   --  PRKSTOR Configuration
   type PRKSTORCFG_Register is record
      --  Index of Key in PRKSTOR
      KEY_INDEX      : PRKSTORCFG_KEY_INDEX_Field := 16#0#;
      --  Command Input for PRKSTOR
      CMD            : PRKSTORCFG_CMD_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRKSTORCFG_Register use record
      KEY_INDEX      at 0 range 0 .. 6;
      CMD            at 0 range 7 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
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
      --  PRKSTOR Configuration
      PRKSTORCFG          : aliased PRKSTORCFG_Register;
      --  Key Wrap Unwrap Register 0
      KUW0                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 1
      KUW1                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 2
      KUW2                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 3
      KUW3                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 4
      KUW4                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 5
      KUW5                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 6
      KUW6                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 7
      KUW7                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 8
      KUW8                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 9
      KUW9                : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 10
      KUW10               : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 11
      KUW11               : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 12
      KUW12               : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 13
      KUW13               : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 14
      KUW14               : aliased HAL.UInt32;
      --  Key Wrap Unwrap Register 15
      KUW15               : aliased HAL.UInt32;
      --  Key Wrap Unwrap Validation String [63:32]
      KUWValStr1          : aliased HAL.UInt32;
      --  Key Wrap Unwrap Validation String [31:0]
      KUWValStr2          : aliased HAL.UInt32;
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
      PRKSTORCFG          at 16#78# range 0 .. 31;
      KUW0                at 16#80# range 0 .. 31;
      KUW1                at 16#84# range 0 .. 31;
      KUW2                at 16#88# range 0 .. 31;
      KUW3                at 16#8C# range 0 .. 31;
      KUW4                at 16#90# range 0 .. 31;
      KUW5                at 16#94# range 0 .. 31;
      KUW6                at 16#98# range 0 .. 31;
      KUW7                at 16#9C# range 0 .. 31;
      KUW8                at 16#A0# range 0 .. 31;
      KUW9                at 16#A4# range 0 .. 31;
      KUW10               at 16#A8# range 0 .. 31;
      KUW11               at 16#AC# range 0 .. 31;
      KUW12               at 16#B0# range 0 .. 31;
      KUW13               at 16#B4# range 0 .. 31;
      KUW14               at 16#B8# range 0 .. 31;
      KUW15               at 16#BC# range 0 .. 31;
      KUWValStr1          at 16#C0# range 0 .. 31;
      KUWValStr2          at 16#C4# range 0 .. 31;
   end record;

   --  Register Map for the Crypto Block
   CRYPT0_Periph : aliased CRYPT0_Peripheral
     with Import, Address => System'To_Address (16#40044000#);

end NRF_SVD.CRYPT0;
