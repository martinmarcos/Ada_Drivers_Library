--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DCP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Per-channel interrupt enable bit
   type CTRL_CHANNEL_INTERRUPT_ENABLE_Field is
     (
      --  Reset value for the field
      Ctrl_Channel_Interrupt_Enable_Field_Reset,
      --  CH0
      Ch0,
      --  CH1
      Ch1,
      --  CH2
      Ch2,
      --  CH3
      Ch3)
     with Size => 8;
   for CTRL_CHANNEL_INTERRUPT_ENABLE_Field use
     (Ctrl_Channel_Interrupt_Enable_Field_Reset => 0,
      Ch0 => 1,
      Ch1 => 2,
      Ch2 => 4,
      Ch3 => 8);

   --  Indicates whether the SHA1/SHA2 functions are present.
   type CTRL_PRESENT_SHA_Field is
     (
      --  Absent
      Absent,
      --  Present
      Present)
     with Size => 1;
   for CTRL_PRESENT_SHA_Field use
     (Absent => 0,
      Present => 1);

   --  Indicates whether the crypto (cipher/hash) functions are present.
   type CTRL_PRESENT_CRYPTO_Field is
     (
      --  Absent
      Absent,
      --  Present
      Present)
     with Size => 1;
   for CTRL_PRESENT_CRYPTO_Field use
     (Absent => 0,
      Present => 1);

   --  DCP control register 0
   type DCP_CTRL_Register is record
      --  Per-channel interrupt enable bit
      CHANNEL_INTERRUPT_ENABLE : CTRL_CHANNEL_INTERRUPT_ENABLE_Field :=
                                  Ctrl_Channel_Interrupt_Enable_Field_Reset;
      --  unspecified
      Reserved_8_20            : HAL.UInt13 := 16#0#;
      --  Enable automatic context switching for the channels
      ENABLE_CONTEXT_SWITCHING : Boolean := False;
      --  The software must set this bit to enable the caching of contexts
      --  between the operations
      ENABLE_CONTEXT_CACHING   : Boolean := False;
      --  The software must set this bit to enable the ragged writes to the
      --  unaligned buffers to be gathered between multiple write operations
      GATHER_RESIDUAL_WRITES   : Boolean := True;
      --  unspecified
      Reserved_24_27           : HAL.UInt4 := 16#0#;
      --  Read-only. Indicates whether the SHA1/SHA2 functions are present.
      PRESENT_SHA              : CTRL_PRESENT_SHA_Field :=
                                  NRF_SVD.DCP.Present;
      --  Read-only. Indicates whether the crypto (cipher/hash) functions are
      --  present.
      PRESENT_CRYPTO           : CTRL_PRESENT_CRYPTO_Field :=
                                  NRF_SVD.DCP.Present;
      --  This bit must be set to zero for a normal operation
      CLKGATE                  : Boolean := True;
      --  Set this bit to zero to enable a normal DCP operation
      SFTRST                   : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CTRL_Register use record
      CHANNEL_INTERRUPT_ENABLE at 0 range 0 .. 7;
      Reserved_8_20            at 0 range 8 .. 20;
      ENABLE_CONTEXT_SWITCHING at 0 range 21 .. 21;
      ENABLE_CONTEXT_CACHING   at 0 range 22 .. 22;
      GATHER_RESIDUAL_WRITES   at 0 range 23 .. 23;
      Reserved_24_27           at 0 range 24 .. 27;
      PRESENT_SHA              at 0 range 28 .. 28;
      PRESENT_CRYPTO           at 0 range 29 .. 29;
      CLKGATE                  at 0 range 30 .. 30;
      SFTRST                   at 0 range 31 .. 31;
   end record;

   subtype DCP_STAT_IRQ_Field is HAL.UInt4;

   --  Indicates which channels are ready to proceed with a transfer (the
   --  active channel is also included)
   type STAT_READY_CHANNELS_Field is
     (
      --  Reset value for the field
      Stat_Ready_Channels_Field_Reset,
      --  CH0
      Ch0,
      --  CH1
      Ch1,
      --  CH2
      Ch2,
      --  CH3
      Ch3)
     with Size => 8;
   for STAT_READY_CHANNELS_Field use
     (Stat_Ready_Channels_Field_Reset => 0,
      Ch0 => 1,
      Ch1 => 2,
      Ch2 => 4,
      Ch3 => 8);

   --  Current (active) channel (encoded)
   type STAT_CUR_CHANNEL_Field is
     (
      --  None
      None,
      --  CH0
      Ch0,
      --  CH1
      Ch1,
      --  CH2
      Ch2,
      --  CH3
      Ch3)
     with Size => 4;
   for STAT_CUR_CHANNEL_Field use
     (None => 0,
      Ch0 => 1,
      Ch1 => 2,
      Ch2 => 3,
      Ch3 => 4);

   --  DCP status register
   type DCP_STAT_Register is record
      --  Indicates which channels have pending interrupt requests
      IRQ            : DCP_STAT_IRQ_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Read-only. Indicates which channels are ready to proceed with a
      --  transfer (the active channel is also included)
      READY_CHANNELS : STAT_READY_CHANNELS_Field :=
                        Stat_Ready_Channels_Field_Reset;
      --  Read-only. Current (active) channel (encoded)
      CUR_CHANNEL    : STAT_CUR_CHANNEL_Field := NRF_SVD.DCP.None;
      --  Read-only. When set, it indicates that the OTP key is shifted from
      --  the fuse block and is ready for use.
      OTP_KEY_READY  : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_STAT_Register use record
      IRQ            at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      READY_CHANNELS at 0 range 16 .. 23;
      CUR_CHANNEL    at 0 range 24 .. 27;
      OTP_KEY_READY  at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Setting a bit in this field enables the DMA channel associated with it
   type CHANNELCTRL_ENABLE_CHANNEL_Field is
     (
      --  Reset value for the field
      Channelctrl_Enable_Channel_Field_Reset,
      --  CH0
      Ch0,
      --  CH1
      Ch1,
      --  CH2
      Ch2,
      --  CH3
      Ch3)
     with Size => 8;
   for CHANNELCTRL_ENABLE_CHANNEL_Field use
     (Channelctrl_Enable_Channel_Field_Reset => 0,
      Ch0 => 1,
      Ch1 => 2,
      Ch2 => 4,
      Ch3 => 8);

   --  Setting a bit in this field causes the corresponding channel to have
   --  high-priority arbitration
   type CHANNELCTRL_HIGH_PRIORITY_CHANNEL_Field is
     (
      --  Reset value for the field
      Channelctrl_High_Priority_Channel_Field_Reset,
      --  CH0
      Ch0,
      --  CH1
      Ch1,
      --  CH2
      Ch2,
      --  CH3
      Ch3)
     with Size => 8;
   for CHANNELCTRL_HIGH_PRIORITY_CHANNEL_Field use
     (Channelctrl_High_Priority_Channel_Field_Reset => 0,
      Ch0 => 1,
      Ch1 => 2,
      Ch2 => 4,
      Ch3 => 8);

   --  DCP channel control register
   type DCP_CHANNELCTRL_Register is record
      --  Setting a bit in this field enables the DMA channel associated with
      --  it
      ENABLE_CHANNEL        : CHANNELCTRL_ENABLE_CHANNEL_Field :=
                               Channelctrl_Enable_Channel_Field_Reset;
      --  Setting a bit in this field causes the corresponding channel to have
      --  high-priority arbitration
      HIGH_PRIORITY_CHANNEL : CHANNELCTRL_HIGH_PRIORITY_CHANNEL_Field :=
                               Channelctrl_High_Priority_Channel_Field_Reset;
      --  Indicates that the interrupt for channel 0 must be merged with the
      --  other interrupts on the shared dcp_irq interrupt
      CH0_IRQ_MERGED        : Boolean := False;
      --  unspecified
      Reserved_17_31        : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CHANNELCTRL_Register use record
      ENABLE_CHANNEL        at 0 range 0 .. 7;
      HIGH_PRIORITY_CHANNEL at 0 range 8 .. 15;
      CH0_IRQ_MERGED        at 0 range 16 .. 16;
      Reserved_17_31        at 0 range 17 .. 31;
   end record;

   subtype DCP_CAPABILITY0_NUM_KEYS_Field is HAL.UInt8;
   subtype DCP_CAPABILITY0_NUM_CHANNELS_Field is HAL.UInt4;

   --  DCP capability 0 register
   type DCP_CAPABILITY0_Register is record
      --  Read-only. Encoded value indicating the number of key-storage
      --  locations implemented in the design
      NUM_KEYS           : DCP_CAPABILITY0_NUM_KEYS_Field := 16#4#;
      --  Read-only. Encoded value indicating the number of channels
      --  implemented in the design
      NUM_CHANNELS       : DCP_CAPABILITY0_NUM_CHANNELS_Field := 16#4#;
      --  unspecified
      Reserved_12_28     : HAL.UInt17 := 16#0#;
      --  Write to a 1 to disable the per-device unique key
      DISABLE_UNIQUE_KEY : Boolean := False;
      --  unspecified
      Reserved_30_30     : HAL.Bit := 16#0#;
      --  Write to 1 to disable the decryption
      DISABLE_DECRYPT    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CAPABILITY0_Register use record
      NUM_KEYS           at 0 range 0 .. 7;
      NUM_CHANNELS       at 0 range 8 .. 11;
      Reserved_12_28     at 0 range 12 .. 28;
      DISABLE_UNIQUE_KEY at 0 range 29 .. 29;
      Reserved_30_30     at 0 range 30 .. 30;
      DISABLE_DECRYPT    at 0 range 31 .. 31;
   end record;

   --  One-hot field indicating which cipher algorithms are available
   type CAPABILITY1_CIPHER_ALGORITHMS_Field is
     (
      --  AES128
      Aes128)
     with Size => 16;
   for CAPABILITY1_CIPHER_ALGORITHMS_Field use
     (Aes128 => 1);

   --  One-hot field indicating which hashing features are implemented in the
   --  hardware
   type CAPABILITY1_HASH_ALGORITHMS_Field is
     (
      --  SHA1
      Sha1,
      --  CRC32
      Crc32,
      --  SHA256
      Sha256)
     with Size => 16;
   for CAPABILITY1_HASH_ALGORITHMS_Field use
     (Sha1 => 1,
      Crc32 => 2,
      Sha256 => 4);

   --  DCP capability 1 register
   type DCP_CAPABILITY1_Register is record
      --  Read-only. One-hot field indicating which cipher algorithms are
      --  available
      CIPHER_ALGORITHMS : CAPABILITY1_CIPHER_ALGORITHMS_Field;
      --  Read-only. One-hot field indicating which hashing features are
      --  implemented in the hardware
      HASH_ALGORITHMS   : CAPABILITY1_HASH_ALGORITHMS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CAPABILITY1_Register use record
      CIPHER_ALGORITHMS at 0 range 0 .. 15;
      HASH_ALGORITHMS   at 0 range 16 .. 31;
   end record;

   subtype DCP_KEY_SUBWORD_Field is HAL.UInt2;
   subtype DCP_KEY_INDEX_Field is HAL.UInt2;

   --  DCP key index
   type DCP_KEY_Register is record
      --  Key subword pointer
      SUBWORD       : DCP_KEY_SUBWORD_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Key index pointer. The valid indices are 0-[number_keys].
      INDEX         : DCP_KEY_INDEX_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_KEY_Register use record
      SUBWORD       at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      INDEX         at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  When the cipher block is enabled, this bit indicates whether the
   --  operation is encryption or decryption
   type PACKET1_CIPHER_ENCRYPT_Field is
     (
      --  DECRYPT
      Decrypt,
      --  ENCRYPT
      Encrypt)
     with Size => 1;
   for PACKET1_CIPHER_ENCRYPT_Field use
     (Decrypt => 0,
      Encrypt => 1);

   --  When the hashing is enabled, this bit controls whether the input or
   --  output data is hashed.
   type PACKET1_HASH_OUTPUT_Field is
     (
      --  INPUT
      Input,
      --  OUTPUT
      Output)
     with Size => 1;
   for PACKET1_HASH_OUTPUT_Field use
     (Input => 0,
      Output => 1);

   subtype DCP_PACKET1_TAG_Field is HAL.UInt8;

   --  DCP work packet 1 status register
   type DCP_PACKET1_Register is record
      --  Read-only. Reflects whether the channel must issue an interrupt upon
      --  the completion of the packet.
      INTERRUPT        : Boolean;
      --  Read-only. Reflects whether the channel's semaphore must be
      --  decremented at the end of the current operation
      DECR_SEMAPHORE   : Boolean;
      --  Read-only. Reflects whether the next command pointer register must be
      --  loaded into the channel's current descriptor pointer
      CHAIN            : Boolean;
      --  Read-only. Reflects whether the next packet's address is located
      --  following this packet's payload.
      CHAIN_CONTIGUOUS : Boolean;
      --  Read-only. Reflects whether the selected hashing function should be
      --  enabled for this operation.
      ENABLE_MEMCOPY   : Boolean;
      --  Read-only. Reflects whether the selected cipher function must be
      --  enabled for this operation.
      ENABLE_CIPHER    : Boolean;
      --  Read-only. Reflects whether the selected hashing function must be
      --  enabled for this operation.
      ENABLE_HASH      : Boolean;
      --  Read-only. Reflects whether the DCP must perform a blit operation
      ENABLE_BLIT      : Boolean;
      --  Read-only. When the cipher block is enabled, this bit indicates
      --  whether the operation is encryption or decryption
      CIPHER_ENCRYPT   : PACKET1_CIPHER_ENCRYPT_Field;
      --  Read-only. Reflects whether the cipher block must load the
      --  initialization vector from the payload for this operation
      CIPHER_INIT      : Boolean;
      --  Read-only. Reflects whether a hardware-based key must be used
      OTP_KEY          : Boolean;
      --  Read-only. When set, it indicates the payload contains the key
      PAYLOAD_KEY      : Boolean;
      --  Read-only. Reflects whether the current hashing block is the initial
      --  block in the hashing operation, so the hash registers must be
      --  initialized before the operation
      HASH_INIT        : Boolean;
      --  Read-only. Reflects whether the current hashing block is the final
      --  block in the hashing operation, so the hash padding must be applied
      --  by the hardware
      HASH_TERM        : Boolean;
      --  Read-only. Reflects whether the calculated hash value must be
      --  compared to the hash provided in the payload.
      CHECK_HASH       : Boolean;
      --  Read-only. When the hashing is enabled, this bit controls whether the
      --  input or output data is hashed.
      HASH_OUTPUT      : PACKET1_HASH_OUTPUT_Field;
      --  Read-only. When this bit is set (MEMCOPY and BLIT modes only), the
      --  DCP simply fills the destination buffer with the value found in the
      --  source address field
      CONSTANT_FILL    : Boolean;
      --  Read-only. This bit is used to test the channel semaphore transition
      --  to 0. FOR TEST USE ONLY!
      TEST_SEMA_IRQ    : Boolean;
      --  Read-only. Reflects whether the DCP engine swaps the key bytes
      --  (big-endian key).
      KEY_BYTESWAP     : Boolean;
      --  Read-only. Reflects whether the DCP engine swaps the key words
      --  (big-endian key).
      KEY_WORDSWAP     : Boolean;
      --  Read-only. Reflects whether the DCP engine byteswaps the input data
      --  (big-endian data).
      INPUT_BYTESWAP   : Boolean;
      --  Read-only. Reflects whether the DCP engine wordswaps the input data
      --  (big-endian data).
      INPUT_WORDSWAP   : Boolean;
      --  Read-only. Reflects whether the DCP engine byteswaps the output data
      --  (big-endian data).
      OUTPUT_BYTESWAP  : Boolean;
      --  Read-only. Reflects whether the DCP engine wordswaps the output data
      --  (big-endian data).
      OUTPUT_WORDSWAP  : Boolean;
      --  Read-only. Packet Tag
      TAG              : DCP_PACKET1_TAG_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_PACKET1_Register use record
      INTERRUPT        at 0 range 0 .. 0;
      DECR_SEMAPHORE   at 0 range 1 .. 1;
      CHAIN            at 0 range 2 .. 2;
      CHAIN_CONTIGUOUS at 0 range 3 .. 3;
      ENABLE_MEMCOPY   at 0 range 4 .. 4;
      ENABLE_CIPHER    at 0 range 5 .. 5;
      ENABLE_HASH      at 0 range 6 .. 6;
      ENABLE_BLIT      at 0 range 7 .. 7;
      CIPHER_ENCRYPT   at 0 range 8 .. 8;
      CIPHER_INIT      at 0 range 9 .. 9;
      OTP_KEY          at 0 range 10 .. 10;
      PAYLOAD_KEY      at 0 range 11 .. 11;
      HASH_INIT        at 0 range 12 .. 12;
      HASH_TERM        at 0 range 13 .. 13;
      CHECK_HASH       at 0 range 14 .. 14;
      HASH_OUTPUT      at 0 range 15 .. 15;
      CONSTANT_FILL    at 0 range 16 .. 16;
      TEST_SEMA_IRQ    at 0 range 17 .. 17;
      KEY_BYTESWAP     at 0 range 18 .. 18;
      KEY_WORDSWAP     at 0 range 19 .. 19;
      INPUT_BYTESWAP   at 0 range 20 .. 20;
      INPUT_WORDSWAP   at 0 range 21 .. 21;
      OUTPUT_BYTESWAP  at 0 range 22 .. 22;
      OUTPUT_WORDSWAP  at 0 range 23 .. 23;
      TAG              at 0 range 24 .. 31;
   end record;

   --  Cipher selection field
   type PACKET2_CIPHER_SELECT_Field is
     (
      --  AES128
      Aes128)
     with Size => 4;
   for PACKET2_CIPHER_SELECT_Field use
     (Aes128 => 0);

   --  Cipher mode selection field. Reflects the mode of operation for the
   --  cipher operations.
   type PACKET2_CIPHER_MODE_Field is
     (
      --  ECB
      Ecb,
      --  CBC
      Cbc)
     with Size => 4;
   for PACKET2_CIPHER_MODE_Field use
     (Ecb => 0,
      Cbc => 1);

   --  Key selection field
   type PACKET2_KEY_SELECT_Field is
     (
      --  KEY0
      Key0,
      --  KEY1
      Key1,
      --  KEY2
      Key2,
      --  KEY3
      Key3,
      --  UNIQUE_KEY
      Unique_Key,
      --  OTP_KEY
      Otp_Key)
     with Size => 8;
   for PACKET2_KEY_SELECT_Field use
     (Key0 => 0,
      Key1 => 1,
      Key2 => 2,
      Key3 => 3,
      Unique_Key => 254,
      Otp_Key => 255);

   --  Hash Selection Field
   type PACKET2_HASH_SELECT_Field is
     (
      --  SHA1
      Sha1,
      --  CRC32
      Crc32,
      --  SHA256
      Sha256)
     with Size => 4;
   for PACKET2_HASH_SELECT_Field use
     (Sha1 => 0,
      Crc32 => 1,
      Sha256 => 2);

   subtype DCP_PACKET2_CIPHER_CFG_Field is HAL.UInt8;

   --  DCP work packet 2 status register
   type DCP_PACKET2_Register is record
      --  Read-only. Cipher selection field
      CIPHER_SELECT  : PACKET2_CIPHER_SELECT_Field;
      --  Read-only. Cipher mode selection field. Reflects the mode of
      --  operation for the cipher operations.
      CIPHER_MODE    : PACKET2_CIPHER_MODE_Field;
      --  Read-only. Key selection field
      KEY_SELECT     : PACKET2_KEY_SELECT_Field;
      --  Read-only. Hash Selection Field
      HASH_SELECT    : PACKET2_HASH_SELECT_Field;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. Cipher configuration bits. Optional configuration bits are
      --  required for the ciphers.
      CIPHER_CFG     : DCP_PACKET2_CIPHER_CFG_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_PACKET2_Register use record
      CIPHER_SELECT  at 0 range 0 .. 3;
      CIPHER_MODE    at 0 range 4 .. 7;
      KEY_SELECT     at 0 range 8 .. 15;
      HASH_SELECT    at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CIPHER_CFG     at 0 range 24 .. 31;
   end record;

   subtype DCP_CH0SEMA_INCREMENT_Field is HAL.UInt8;
   subtype DCP_CH0SEMA_VALUE_Field is HAL.UInt8;

   --  DCP channel 0 semaphore register
   type DCP_CH0SEMA_Register is record
      --  The value written to this field is added to the semaphore count in an
      --  atomic way such that the simultaneous software adds and DCP hardware
      --  substracts happening on the same clock are protected
      INCREMENT      : DCP_CH0SEMA_INCREMENT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. This read-only field shows the current (instantaneous)
      --  value of the semaphore counter.
      VALUE          : DCP_CH0SEMA_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH0SEMA_Register use record
      INCREMENT      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      VALUE          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Indicates the additional error codes for some of the error conditions
   type CH0STAT_ERROR_CODE_Field is
     (
      --  Reset value for the field
      Ch0Stat_Error_Code_Field_Reset,
      --  Error signalled because the next pointer is 0x00000000
      Next_Chain_Is_0,
      --  Error signalled because the semaphore is non-zero and neither chain
      --  bit is set
      No_Chain,
      --  Error signalled because an error is reported reading/writing the
      --  context buffer
      Context_Error,
      --  Error signalled because an error is reported reading/writing the
      --  payload
      Payload_Error,
      --  Error signalled because the control packet specifies an invalid mode
      --  select (for instance, blit + hash)
      Invalid_Mode)
     with Size => 8;
   for CH0STAT_ERROR_CODE_Field use
     (Ch0Stat_Error_Code_Field_Reset => 0,
      Next_Chain_Is_0 => 1,
      No_Chain => 2,
      Context_Error => 3,
      Payload_Error => 4,
      Invalid_Mode => 5);

   subtype DCP_CH0STAT_TAG_Field is HAL.UInt8;

   --  DCP channel 0 status register
   type DCP_CH0STAT_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  This bit indicates that a hashing check operation mismatched for the
      --  control packets that enable the HASH_CHECK bit
      HASH_MISMATCH   : Boolean := False;
      --  This bit indicates that the hardware detected an invalid programming
      --  configuration (such as a buffer length that is not a multiple of the
      --  natural data size for the operation)
      ERROR_SETUP     : Boolean := False;
      --  This bit indicates that a bus error occurred when reading the packet
      --  or payload, or when writing the status back to the packet payload
      ERROR_PACKET    : Boolean := False;
      --  This bit indicates that a bus error occurred when reading from the
      --  source buffer
      ERROR_SRC       : Boolean := False;
      --  This bit indicates that a bus error occurred when storing to the
      --  destination buffer
      ERROR_DST       : Boolean := False;
      --  This bit indicates that a page fault occurred while converting a
      --  virtual address to a physical address
      ERROR_PAGEFAULT : Boolean := False;
      --  unspecified
      Reserved_7_15   : HAL.UInt9 := 16#0#;
      --  Indicates the additional error codes for some of the error conditions
      ERROR_CODE      : CH0STAT_ERROR_CODE_Field :=
                         Ch0Stat_Error_Code_Field_Reset;
      --  Read-only. Indicates the tag from the last completed packet in the
      --  command structure
      TAG             : DCP_CH0STAT_TAG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH0STAT_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      HASH_MISMATCH   at 0 range 1 .. 1;
      ERROR_SETUP     at 0 range 2 .. 2;
      ERROR_PACKET    at 0 range 3 .. 3;
      ERROR_SRC       at 0 range 4 .. 4;
      ERROR_DST       at 0 range 5 .. 5;
      ERROR_PAGEFAULT at 0 range 6 .. 6;
      Reserved_7_15   at 0 range 7 .. 15;
      ERROR_CODE      at 0 range 16 .. 23;
      TAG             at 0 range 24 .. 31;
   end record;

   subtype DCP_CH0OPTS_RECOVERY_TIMER_Field is HAL.UInt16;

   --  DCP channel 0 options register
   type DCP_CH0OPTS_Register is record
      --  This field indicates the recovery time for the channel
      RECOVERY_TIMER : DCP_CH0OPTS_RECOVERY_TIMER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH0OPTS_Register use record
      RECOVERY_TIMER at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCP_CH1SEMA_INCREMENT_Field is HAL.UInt8;
   subtype DCP_CH1SEMA_VALUE_Field is HAL.UInt8;

   --  DCP channel 1 semaphore register
   type DCP_CH1SEMA_Register is record
      --  The value written to this field is added to the semaphore count in an
      --  atomic way, such that the simultaneous software adds and the DCP
      --  hardware substracts happening on the same clock are protected
      INCREMENT      : DCP_CH1SEMA_INCREMENT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. This read-only field shows the current (instantaneous)
      --  value of the semaphore counter.
      VALUE          : DCP_CH1SEMA_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH1SEMA_Register use record
      INCREMENT      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      VALUE          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Indicates the additional error codes for some of the error conditions.
   type CH1STAT_ERROR_CODE_Field is
     (
      --  Reset value for the field
      Ch1Stat_Error_Code_Field_Reset,
      --  Error is signalled because the next pointer is 0x00000000.
      Next_Chain_Is_0,
      --  Error is signalled because the semaphore is of a non-zero value and
      --  neither of the chain bits is set.
      No_Chain,
      --  Error is signalled because an error was reported when reading/writing
      --  the context buffer.
      Context_Error,
      --  Error is signalled because an error was reported when reading/writing
      --  the payload.
      Payload_Error,
      --  Error is signalled because the control packet specifies an invalid
      --  mode select (for example, blit + hash).
      Invalid_Mode)
     with Size => 8;
   for CH1STAT_ERROR_CODE_Field use
     (Ch1Stat_Error_Code_Field_Reset => 0,
      Next_Chain_Is_0 => 1,
      No_Chain => 2,
      Context_Error => 3,
      Payload_Error => 4,
      Invalid_Mode => 5);

   subtype DCP_CH1STAT_TAG_Field is HAL.UInt8;

   --  DCP channel 1 status register
   type DCP_CH1STAT_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  This bit indicates that a hashing check operation is mismatched for
      --  the control packets that enable the HASH_CHECK bit
      HASH_MISMATCH   : Boolean := False;
      --  This bit indicates that the hardware detected an invalid programming
      --  configuration (such as a buffer length that is not a multiple of the
      --  natural data size for the operation)
      ERROR_SETUP     : Boolean := False;
      --  This bit indicates that a bus error occurred when reading the packet
      --  or payload, or when writing the status back to the packet paylaod
      ERROR_PACKET    : Boolean := False;
      --  This bit indicates that a bus error occurred when reading from the
      --  source buffer
      ERROR_SRC       : Boolean := False;
      --  This bit indicates that a bus error occurred when storing to the
      --  destination buffer
      ERROR_DST       : Boolean := False;
      --  This bit indicates that a page fault occurred while converting a
      --  virtual address to a physical address
      ERROR_PAGEFAULT : Boolean := False;
      --  unspecified
      Reserved_7_15   : HAL.UInt9 := 16#0#;
      --  Indicates the additional error codes for some of the error
      --  conditions.
      ERROR_CODE      : CH1STAT_ERROR_CODE_Field :=
                         Ch1Stat_Error_Code_Field_Reset;
      --  Read-only. Indicates the tag from the last completed packet in the
      --  command structure.
      TAG             : DCP_CH1STAT_TAG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH1STAT_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      HASH_MISMATCH   at 0 range 1 .. 1;
      ERROR_SETUP     at 0 range 2 .. 2;
      ERROR_PACKET    at 0 range 3 .. 3;
      ERROR_SRC       at 0 range 4 .. 4;
      ERROR_DST       at 0 range 5 .. 5;
      ERROR_PAGEFAULT at 0 range 6 .. 6;
      Reserved_7_15   at 0 range 7 .. 15;
      ERROR_CODE      at 0 range 16 .. 23;
      TAG             at 0 range 24 .. 31;
   end record;

   subtype DCP_CH1OPTS_RECOVERY_TIMER_Field is HAL.UInt16;

   --  DCP channel 1 options register
   type DCP_CH1OPTS_Register is record
      --  This field indicates the recovery time for the channel
      RECOVERY_TIMER : DCP_CH1OPTS_RECOVERY_TIMER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH1OPTS_Register use record
      RECOVERY_TIMER at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCP_CH2SEMA_INCREMENT_Field is HAL.UInt8;
   subtype DCP_CH2SEMA_VALUE_Field is HAL.UInt8;

   --  DCP channel 2 semaphore register
   type DCP_CH2SEMA_Register is record
      --  The value written to this field is added to the semaphore count in an
      --  atomic way, such that the simultaneous software adds and DCP hardware
      --  substracts happening on the same clock are protected
      INCREMENT      : DCP_CH2SEMA_INCREMENT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. This read-only field shows the current (instantaneous)
      --  value of the semaphore counter.
      VALUE          : DCP_CH2SEMA_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH2SEMA_Register use record
      INCREMENT      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      VALUE          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Indicates additional error codes for some of the error conditions.
   type CH2STAT_ERROR_CODE_Field is
     (
      --  Reset value for the field
      Ch2Stat_Error_Code_Field_Reset,
      --  Error is signalled because the next pointer is 0x00000000.
      Next_Chain_Is_0,
      --  Error is signalled because the semaphore is of a non-zero value and
      --  neither of the chain bits is set.
      No_Chain,
      --  Error is signalled because an error was reported while
      --  reading/writing the context buffer.
      Context_Error,
      --  Error is signalled because an error was reported while
      --  reading/writing the payload.
      Payload_Error,
      --  Error is signalled because the control packet specifies an invalid
      --  mode select (for instance, blit + hash).
      Invalid_Mode)
     with Size => 8;
   for CH2STAT_ERROR_CODE_Field use
     (Ch2Stat_Error_Code_Field_Reset => 0,
      Next_Chain_Is_0 => 1,
      No_Chain => 2,
      Context_Error => 3,
      Payload_Error => 4,
      Invalid_Mode => 5);

   subtype DCP_CH2STAT_TAG_Field is HAL.UInt8;

   --  DCP channel 2 status register
   type DCP_CH2STAT_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  This bit indicates that a hashing check operation is mismatched for
      --  the control packets that enable the HASH_CHECK bit
      HASH_MISMATCH   : Boolean := False;
      --  This bit indicates that the hardware detected an invalid programming
      --  configuration (such as a buffer length that is not a multiple of the
      --  natural data size for the operation)
      ERROR_SETUP     : Boolean := False;
      --  This bit indicates that a bus error occurred when reading the packet
      --  or payload, or when writing the status back to the packet paylaod
      ERROR_PACKET    : Boolean := False;
      --  This bit indicates that a bus error occurred when reading from the
      --  source buffer
      ERROR_SRC       : Boolean := False;
      --  This bit indicates that a bus error occurred when storing to the
      --  destination buffer
      ERROR_DST       : Boolean := False;
      --  This bit indicates that a page fault occurred while converting a
      --  virtual address to a physical address
      ERROR_PAGEFAULT : Boolean := False;
      --  unspecified
      Reserved_7_15   : HAL.UInt9 := 16#0#;
      --  Indicates additional error codes for some of the error conditions.
      ERROR_CODE      : CH2STAT_ERROR_CODE_Field :=
                         Ch2Stat_Error_Code_Field_Reset;
      --  Read-only. Indicates the tag from the last completed packet in the
      --  command structure.
      TAG             : DCP_CH2STAT_TAG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH2STAT_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      HASH_MISMATCH   at 0 range 1 .. 1;
      ERROR_SETUP     at 0 range 2 .. 2;
      ERROR_PACKET    at 0 range 3 .. 3;
      ERROR_SRC       at 0 range 4 .. 4;
      ERROR_DST       at 0 range 5 .. 5;
      ERROR_PAGEFAULT at 0 range 6 .. 6;
      Reserved_7_15   at 0 range 7 .. 15;
      ERROR_CODE      at 0 range 16 .. 23;
      TAG             at 0 range 24 .. 31;
   end record;

   subtype DCP_CH2OPTS_RECOVERY_TIMER_Field is HAL.UInt16;

   --  DCP channel 2 options register
   type DCP_CH2OPTS_Register is record
      --  This field indicates the recovery time for the channel
      RECOVERY_TIMER : DCP_CH2OPTS_RECOVERY_TIMER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH2OPTS_Register use record
      RECOVERY_TIMER at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCP_CH3SEMA_INCREMENT_Field is HAL.UInt8;
   subtype DCP_CH3SEMA_VALUE_Field is HAL.UInt8;

   --  DCP channel 3 semaphore register
   type DCP_CH3SEMA_Register is record
      --  The value written to this field is added to the semaphore count in an
      --  atomic way, such that the simultaneous software adds and DCP hardware
      --  substracts happening on the same clock are protected
      INCREMENT      : DCP_CH3SEMA_INCREMENT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. This read-only field shows the current (instantaneous)
      --  value of the semaphore counter.
      VALUE          : DCP_CH3SEMA_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH3SEMA_Register use record
      INCREMENT      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      VALUE          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Indicates additional error codes for some of the error conditions.
   type CH3STAT_ERROR_CODE_Field is
     (
      --  Reset value for the field
      Ch3Stat_Error_Code_Field_Reset,
      --  Error is signalled because the next pointer is 0x00000000.
      Next_Chain_Is_0,
      --  Error is signalled because the semaphore is of a non-zero value and
      --  neither of the chain bits is set.
      No_Chain,
      --  Error is signalled because an error was reported while
      --  reading/writing the context buffer.
      Context_Error,
      --  Error is signalled because an error was reported while
      --  reading/writing the payload.
      Payload_Error,
      --  Error is signalled because the control packet specifies an invalid
      --  mode select (for example, blit + hash).
      Invalid_Mode)
     with Size => 8;
   for CH3STAT_ERROR_CODE_Field use
     (Ch3Stat_Error_Code_Field_Reset => 0,
      Next_Chain_Is_0 => 1,
      No_Chain => 2,
      Context_Error => 3,
      Payload_Error => 4,
      Invalid_Mode => 5);

   subtype DCP_CH3STAT_TAG_Field is HAL.UInt8;

   --  DCP channel 3 status register
   type DCP_CH3STAT_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  This bit indicates that a hashing check operation is mismatched for
      --  the control packets that enable the HASH_CHECK bit
      HASH_MISMATCH   : Boolean := False;
      --  This bit indicates that the hardware detected an invalid programming
      --  configuration (such as a buffer length that is not a multiple of the
      --  natural data size for the operation)
      ERROR_SETUP     : Boolean := False;
      --  This bit indicates that a bus error occurred when reading the packet
      --  or payload or when writing the status back to the packet paylaod
      ERROR_PACKET    : Boolean := False;
      --  This bit indicates that a bus error occurred when reading from the
      --  source buffer
      ERROR_SRC       : Boolean := False;
      --  This bit indicates that a bus error occurred when storing to the
      --  destination buffer
      ERROR_DST       : Boolean := False;
      --  This bit indicates that a page fault occurred while converting a
      --  virtual address to a physical address
      ERROR_PAGEFAULT : Boolean := False;
      --  unspecified
      Reserved_7_15   : HAL.UInt9 := 16#0#;
      --  Indicates additional error codes for some of the error conditions.
      ERROR_CODE      : CH3STAT_ERROR_CODE_Field :=
                         Ch3Stat_Error_Code_Field_Reset;
      --  Read-only. Indicates the tag from the last completed packet in the
      --  command structure.
      TAG             : DCP_CH3STAT_TAG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH3STAT_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      HASH_MISMATCH   at 0 range 1 .. 1;
      ERROR_SETUP     at 0 range 2 .. 2;
      ERROR_PACKET    at 0 range 3 .. 3;
      ERROR_SRC       at 0 range 4 .. 4;
      ERROR_DST       at 0 range 5 .. 5;
      ERROR_PAGEFAULT at 0 range 6 .. 6;
      Reserved_7_15   at 0 range 7 .. 15;
      ERROR_CODE      at 0 range 16 .. 23;
      TAG             at 0 range 24 .. 31;
   end record;

   subtype DCP_CH3OPTS_RECOVERY_TIMER_Field is HAL.UInt16;

   --  DCP channel 3 options register
   type DCP_CH3OPTS_Register is record
      --  This field indicates the recovery time for the channel
      RECOVERY_TIMER : DCP_CH3OPTS_RECOVERY_TIMER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_CH3OPTS_Register use record
      RECOVERY_TIMER at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Selects a value to read via the debug data register.
   type DBGSELECT_INDEX_Field is
     (
      --  Reset value for the field
      Dbgselect_Index_Field_Reset,
      --  CONTROL
      Control,
      --  OTPKEY0
      Otpkey0,
      --  OTPKEY1
      Otpkey1,
      --  OTPKEY2
      Otpkey2,
      --  OTPKEY3
      Otpkey3)
     with Size => 8;
   for DBGSELECT_INDEX_Field use
     (Dbgselect_Index_Field_Reset => 0,
      Control => 1,
      Otpkey0 => 16,
      Otpkey1 => 17,
      Otpkey2 => 18,
      Otpkey3 => 19);

   --  DCP debug select register
   type DCP_DBGSELECT_Register is record
      --  Selects a value to read via the debug data register.
      INDEX         : DBGSELECT_INDEX_Field := Dbgselect_Index_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_DBGSELECT_Register use record
      INDEX         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCP_PAGETABLE_BASE_Field is HAL.UInt30;

   --  DCP page table register
   type DCP_PAGETABLE_Register is record
      --  Page table enable control
      ENABLE : Boolean := False;
      --  Page table flush control. To flush the TLB, write this bit to 1 and
      --  then back to 0.
      FLUSH  : Boolean := False;
      --  Page table base address
      BASE   : DCP_PAGETABLE_BASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_PAGETABLE_Register use record
      ENABLE at 0 range 0 .. 0;
      FLUSH  at 0 range 1 .. 1;
      BASE   at 0 range 2 .. 31;
   end record;

   subtype DCP_VERSION_STEP_Field is HAL.UInt16;
   subtype DCP_VERSION_MINOR_Field is HAL.UInt8;
   subtype DCP_VERSION_MAJOR_Field is HAL.UInt8;

   --  DCP version register
   type DCP_VERSION_Register is record
      --  Read-only. Fixed read-only value reflecting the stepping of the
      --  version of the design implementation.
      STEP  : DCP_VERSION_STEP_Field;
      --  Read-only. Fixed read-only value reflecting the MINOR version of the
      --  design implementation.
      MINOR : DCP_VERSION_MINOR_Field;
      --  Read-only. Fixed read-only value reflecting the MAJOR version of the
      --  design implementation.
      MAJOR : DCP_VERSION_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCP_VERSION_Register use record
      STEP  at 0 range 0 .. 15;
      MINOR at 0 range 16 .. 23;
      MAJOR at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DCP register reference index
   type DCP_Peripheral is record
      --  DCP control register 0
      CTRL        : aliased DCP_CTRL_Register;
      --  DCP status register
      STAT        : aliased DCP_STAT_Register;
      --  DCP channel control register
      CHANNELCTRL : aliased DCP_CHANNELCTRL_Register;
      --  DCP capability 0 register
      CAPABILITY0 : aliased DCP_CAPABILITY0_Register;
      --  DCP capability 1 register
      CAPABILITY1 : aliased DCP_CAPABILITY1_Register;
      --  DCP context buffer pointer
      CONTEXT     : aliased HAL.UInt32;
      --  DCP key index
      KEY         : aliased DCP_KEY_Register;
      --  DCP key data
      KEYDATA     : aliased HAL.UInt32;
      --  DCP work packet 0 status register
      PACKET0     : aliased HAL.UInt32;
      --  DCP work packet 1 status register
      PACKET1     : aliased DCP_PACKET1_Register;
      --  DCP work packet 2 status register
      PACKET2     : aliased DCP_PACKET2_Register;
      --  DCP work packet 3 status register
      PACKET3     : aliased HAL.UInt32;
      --  DCP work packet 4 status register
      PACKET4     : aliased HAL.UInt32;
      --  DCP work packet 5 status register
      PACKET5     : aliased HAL.UInt32;
      --  DCP work packet 6 status register
      PACKET6     : aliased HAL.UInt32;
      --  DCP channel 0 command pointer address register
      CH0CMDPTR   : aliased HAL.UInt32;
      --  DCP channel 0 semaphore register
      CH0SEMA     : aliased DCP_CH0SEMA_Register;
      --  DCP channel 0 status register
      CH0STAT     : aliased DCP_CH0STAT_Register;
      --  DCP channel 0 options register
      CH0OPTS     : aliased DCP_CH0OPTS_Register;
      --  DCP channel 1 command pointer address register
      CH1CMDPTR   : aliased HAL.UInt32;
      --  DCP channel 1 semaphore register
      CH1SEMA     : aliased DCP_CH1SEMA_Register;
      --  DCP channel 1 status register
      CH1STAT     : aliased DCP_CH1STAT_Register;
      --  DCP channel 1 options register
      CH1OPTS     : aliased DCP_CH1OPTS_Register;
      --  DCP channel 2 command pointer address register
      CH2CMDPTR   : aliased HAL.UInt32;
      --  DCP channel 2 semaphore register
      CH2SEMA     : aliased DCP_CH2SEMA_Register;
      --  DCP channel 2 status register
      CH2STAT     : aliased DCP_CH2STAT_Register;
      --  DCP channel 2 options register
      CH2OPTS     : aliased DCP_CH2OPTS_Register;
      --  DCP channel 3 command pointer address register
      CH3CMDPTR   : aliased HAL.UInt32;
      --  DCP channel 3 semaphore register
      CH3SEMA     : aliased DCP_CH3SEMA_Register;
      --  DCP channel 3 status register
      CH3STAT     : aliased DCP_CH3STAT_Register;
      --  DCP channel 3 options register
      CH3OPTS     : aliased DCP_CH3OPTS_Register;
      --  DCP debug select register
      DBGSELECT   : aliased DCP_DBGSELECT_Register;
      --  DCP debug data register
      DBGDATA     : aliased HAL.UInt32;
      --  DCP page table register
      PAGETABLE   : aliased DCP_PAGETABLE_Register;
      --  DCP version register
      VERSION     : aliased DCP_VERSION_Register;
   end record
     with Volatile;

   for DCP_Peripheral use record
      CTRL        at 16#0# range 0 .. 31;
      STAT        at 16#10# range 0 .. 31;
      CHANNELCTRL at 16#20# range 0 .. 31;
      CAPABILITY0 at 16#30# range 0 .. 31;
      CAPABILITY1 at 16#40# range 0 .. 31;
      CONTEXT     at 16#50# range 0 .. 31;
      KEY         at 16#60# range 0 .. 31;
      KEYDATA     at 16#70# range 0 .. 31;
      PACKET0     at 16#80# range 0 .. 31;
      PACKET1     at 16#90# range 0 .. 31;
      PACKET2     at 16#A0# range 0 .. 31;
      PACKET3     at 16#B0# range 0 .. 31;
      PACKET4     at 16#C0# range 0 .. 31;
      PACKET5     at 16#D0# range 0 .. 31;
      PACKET6     at 16#E0# range 0 .. 31;
      CH0CMDPTR   at 16#100# range 0 .. 31;
      CH0SEMA     at 16#110# range 0 .. 31;
      CH0STAT     at 16#120# range 0 .. 31;
      CH0OPTS     at 16#130# range 0 .. 31;
      CH1CMDPTR   at 16#140# range 0 .. 31;
      CH1SEMA     at 16#150# range 0 .. 31;
      CH1STAT     at 16#160# range 0 .. 31;
      CH1OPTS     at 16#170# range 0 .. 31;
      CH2CMDPTR   at 16#180# range 0 .. 31;
      CH2SEMA     at 16#190# range 0 .. 31;
      CH2STAT     at 16#1A0# range 0 .. 31;
      CH2OPTS     at 16#1B0# range 0 .. 31;
      CH3CMDPTR   at 16#1C0# range 0 .. 31;
      CH3SEMA     at 16#1D0# range 0 .. 31;
      CH3STAT     at 16#1E0# range 0 .. 31;
      CH3OPTS     at 16#1F0# range 0 .. 31;
      DBGSELECT   at 16#400# range 0 .. 31;
      DBGDATA     at 16#410# range 0 .. 31;
      PAGETABLE   at 16#420# range 0 .. 31;
      VERSION     at 16#430# range 0 .. 31;
   end record;

   --  DCP register reference index
   DCP_Periph : aliased DCP_Peripheral
     with Import, Address => System'To_Address (16#402FC000#);

end NRF_SVD.DCP;
