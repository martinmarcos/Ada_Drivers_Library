--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.BEE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  BEE enable bit
   type CTRL_BEE_ENABLE_Field is
     (
      --  Disable BEE
      Bee_Enable_0,
      --  Enable BEE
      Bee_Enable_1)
     with Size => 1;
   for CTRL_BEE_ENABLE_Field use
     (Bee_Enable_0 => 0,
      Bee_Enable_1 => 1);

   --  AES key region select
   type CTRL_KEY_REGION_SEL_Field is
     (
      --  Load AES key for region0
      Key_Region_Sel_0,
      --  Load AES key for region1
      Key_Region_Sel_1)
     with Size => 1;
   for CTRL_KEY_REGION_SEL_Field use
     (Key_Region_Sel_0 => 0,
      Key_Region_Sel_1 => 1);

   --  Endian swap control for the 16 bytes input and output data of AES core.
   type CTRL_LITTLE_ENDIAN_Field is
     (
      --  The input and output data of the AES core is swapped as below:
      --  {B15,B14,B13,B12,B11,B10,B9,B8, B7,B6,B5,B4,B3,B2,B1,B0} swap to
      --  {B0,B1,B2,B3,B4,B5,B6,B7, B8,B9,B10,B11,B12,B13,B14,B15}, where
      --  B0~B15 refers to Byte0 to Byte15.
      Little_Endian_0,
      --  The input and output data of AES core is not swapped.
      Little_Endian_1)
     with Size => 1;
   for CTRL_LITTLE_ENDIAN_Field use
     (Little_Endian_0 => 0,
      Little_Endian_1 => 1);

   subtype BEE_CTRL_SECURITY_LEVEL_R0_Field is HAL.UInt2;

   --  AES mode of region0
   type CTRL_CTRL_AES_MODE_R0_Field is
     (
      --  ECB
      Ctrl_Aes_Mode_R0_0,
      --  CTR
      Ctrl_Aes_Mode_R0_1)
     with Size => 1;
   for CTRL_CTRL_AES_MODE_R0_Field use
     (Ctrl_Aes_Mode_R0_0 => 0,
      Ctrl_Aes_Mode_R0_1 => 1);

   subtype BEE_CTRL_SECURITY_LEVEL_R1_Field is HAL.UInt2;

   --  AES mode of region1
   type CTRL_CTRL_AES_MODE_R1_Field is
     (
      --  ECB
      Ctrl_Aes_Mode_R1_0,
      --  CTR
      Ctrl_Aes_Mode_R1_1)
     with Size => 1;
   for CTRL_CTRL_AES_MODE_R1_Field use
     (Ctrl_Aes_Mode_R1_0 => 0,
      Ctrl_Aes_Mode_R1_1 => 1);

   subtype BEE_CTRL_SECURITY_LEVEL_R0_LOCK_Field is HAL.UInt2;
   subtype BEE_CTRL_SECURITY_LEVEL_R1_LOCK_Field is HAL.UInt2;

   --  BEE Control Register
   type BEE_CTRL_Register is record
      --  BEE enable bit
      BEE_ENABLE             : CTRL_BEE_ENABLE_Field :=
                                NRF_SVD.BEE.Bee_Enable_0;
      --  Clock enable input, low inactive
      CTRL_CLK_EN            : Boolean := False;
      --  Soft reset input, low active
      CTRL_SFTRST_N          : Boolean := False;
      --  unspecified
      Reserved_3_3           : HAL.Bit := 16#0#;
      --  AES-128 key is ready
      KEY_VALID              : Boolean := False;
      --  AES key region select
      KEY_REGION_SEL         : CTRL_KEY_REGION_SEL_Field :=
                                NRF_SVD.BEE.Key_Region_Sel_0;
      --  Enable access permission control
      AC_PROT_EN             : Boolean := False;
      --  Endian swap control for the 16 bytes input and output data of AES
      --  core.
      LITTLE_ENDIAN          : CTRL_LITTLE_ENDIAN_Field :=
                                NRF_SVD.BEE.Little_Endian_0;
      --  Security level of the allowed access for memory region0
      SECURITY_LEVEL_R0      : BEE_CTRL_SECURITY_LEVEL_R0_Field := 16#3#;
      --  AES mode of region0
      CTRL_AES_MODE_R0       : CTRL_CTRL_AES_MODE_R0_Field :=
                                NRF_SVD.BEE.Ctrl_Aes_Mode_R0_1;
      --  unspecified
      Reserved_11_11         : HAL.Bit := 16#0#;
      --  Security level of the allowed access for memory region1
      SECURITY_LEVEL_R1      : BEE_CTRL_SECURITY_LEVEL_R1_Field := 16#3#;
      --  AES mode of region1
      CTRL_AES_MODE_R1       : CTRL_CTRL_AES_MODE_R1_Field :=
                                NRF_SVD.BEE.Ctrl_Aes_Mode_R1_1;
      --  unspecified
      Reserved_15_15         : HAL.Bit := 16#0#;
      --  Lock bit for bee_enable
      BEE_ENABLE_LOCK        : Boolean := False;
      --  Lock bit for ctrl_clk_en
      CTRL_CLK_EN_LOCK       : Boolean := False;
      --  Lock bit for ctrl_sftrst
      CTRL_SFTRST_N_LOCK     : Boolean := False;
      --  Lock bit for region1 address boundary
      REGION1_ADDR_LOCK      : Boolean := False;
      --  Lock bit for key_valid
      KEY_VALID_LOCK         : Boolean := False;
      --  Lock bit for key_region_sel
      KEY_REGION_SEL_LOCK    : Boolean := False;
      --  Lock bit for ac_prot
      AC_PROT_EN_LOCK        : Boolean := False;
      --  Lock bit for little_endian
      LITTLE_ENDIAN_LOCK     : Boolean := False;
      --  Lock bits for security_level_r0
      SECURITY_LEVEL_R0_LOCK : BEE_CTRL_SECURITY_LEVEL_R0_LOCK_Field := 16#0#;
      --  Lock bit for region0 ctrl_aes_mode
      CTRL_AES_MODE_R0_LOCK  : Boolean := False;
      --  Lock bit for region0 AES key
      REGION0_KEY_LOCK       : Boolean := False;
      --  Lock bits for security_level_r1
      SECURITY_LEVEL_R1_LOCK : BEE_CTRL_SECURITY_LEVEL_R1_LOCK_Field := 16#0#;
      --  Lock bit for region1 ctrl_aes_mode
      CTRL_AES_MODE_R1_LOCK  : Boolean := False;
      --  Lock bit for region1 AES key
      REGION1_KEY_LOCK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BEE_CTRL_Register use record
      BEE_ENABLE             at 0 range 0 .. 0;
      CTRL_CLK_EN            at 0 range 1 .. 1;
      CTRL_SFTRST_N          at 0 range 2 .. 2;
      Reserved_3_3           at 0 range 3 .. 3;
      KEY_VALID              at 0 range 4 .. 4;
      KEY_REGION_SEL         at 0 range 5 .. 5;
      AC_PROT_EN             at 0 range 6 .. 6;
      LITTLE_ENDIAN          at 0 range 7 .. 7;
      SECURITY_LEVEL_R0      at 0 range 8 .. 9;
      CTRL_AES_MODE_R0       at 0 range 10 .. 10;
      Reserved_11_11         at 0 range 11 .. 11;
      SECURITY_LEVEL_R1      at 0 range 12 .. 13;
      CTRL_AES_MODE_R1       at 0 range 14 .. 14;
      Reserved_15_15         at 0 range 15 .. 15;
      BEE_ENABLE_LOCK        at 0 range 16 .. 16;
      CTRL_CLK_EN_LOCK       at 0 range 17 .. 17;
      CTRL_SFTRST_N_LOCK     at 0 range 18 .. 18;
      REGION1_ADDR_LOCK      at 0 range 19 .. 19;
      KEY_VALID_LOCK         at 0 range 20 .. 20;
      KEY_REGION_SEL_LOCK    at 0 range 21 .. 21;
      AC_PROT_EN_LOCK        at 0 range 22 .. 22;
      LITTLE_ENDIAN_LOCK     at 0 range 23 .. 23;
      SECURITY_LEVEL_R0_LOCK at 0 range 24 .. 25;
      CTRL_AES_MODE_R0_LOCK  at 0 range 26 .. 26;
      REGION0_KEY_LOCK       at 0 range 27 .. 27;
      SECURITY_LEVEL_R1_LOCK at 0 range 28 .. 29;
      CTRL_AES_MODE_R1_LOCK  at 0 range 30 .. 30;
      REGION1_KEY_LOCK       at 0 range 31 .. 31;
   end record;

   subtype ADDR_OFFSET_ADDR_OFFSET0_Field is HAL.UInt16;
   subtype ADDR_OFFSET_ADDR_OFFSET0_LOCK_Field is HAL.UInt16;

   --  no description available
   type ADDR_OFFSET_Register is record
      --  Address offset used to remap received address to output address of
      --  memory region0
      ADDR_OFFSET0      : ADDR_OFFSET_ADDR_OFFSET0_Field := 16#F000#;
      --  Lock bits for addr_offset0
      ADDR_OFFSET0_LOCK : ADDR_OFFSET_ADDR_OFFSET0_LOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDR_OFFSET_Register use record
      ADDR_OFFSET0      at 0 range 0 .. 15;
      ADDR_OFFSET0_LOCK at 0 range 16 .. 31;
   end record;

   subtype BEE_STATUS_IRQ_VEC_Field is HAL.UInt8;

   --  no description available
   type BEE_STATUS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. bit 7: Protected region-3 access violation bit 6:
      --  Protected region-2 access violation bit 5: Protected region-1 access
      --  violation bit 4: Protected region-0 access violation bit 3: Region-1
      --  read channel security violation bit 2: Read channel illegal access
      --  detected bit 1: Region-0 Read channel security violation bit 0:
      --  Disable abort
      IRQ_VEC       : BEE_STATUS_IRQ_VEC_Field := 16#0#;
      --  Read-only. Lock bits for addr_offset1
      BEE_IDLE      : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BEE_STATUS_Register use record
      IRQ_VEC       at 0 range 0 .. 7;
      BEE_IDLE      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Bus Encryption Engine
   type BEE_Peripheral is record
      --  BEE Control Register
      CTRL          : aliased BEE_CTRL_Register;
      --  no description available
      ADDR_OFFSET0  : aliased ADDR_OFFSET_Register;
      --  no description available
      ADDR_OFFSET1  : aliased ADDR_OFFSET_Register;
      --  no description available
      AES_KEY0_W0   : aliased HAL.UInt32;
      --  no description available
      AES_KEY0_W1   : aliased HAL.UInt32;
      --  no description available
      AES_KEY0_W2   : aliased HAL.UInt32;
      --  no description available
      AES_KEY0_W3   : aliased HAL.UInt32;
      --  no description available
      STATUS        : aliased BEE_STATUS_Register;
      --  no description available
      CTR_NONCE0_W0 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE0_W1 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE0_W2 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE0_W3 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE1_W0 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE1_W1 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE1_W2 : aliased HAL.UInt32;
      --  no description available
      CTR_NONCE1_W3 : aliased HAL.UInt32;
      --  no description available
      REGION1_TOP   : aliased HAL.UInt32;
      --  no description available
      REGION1_BOT   : aliased HAL.UInt32;
   end record
     with Volatile;

   for BEE_Peripheral use record
      CTRL          at 16#0# range 0 .. 31;
      ADDR_OFFSET0  at 16#4# range 0 .. 31;
      ADDR_OFFSET1  at 16#8# range 0 .. 31;
      AES_KEY0_W0   at 16#C# range 0 .. 31;
      AES_KEY0_W1   at 16#10# range 0 .. 31;
      AES_KEY0_W2   at 16#14# range 0 .. 31;
      AES_KEY0_W3   at 16#18# range 0 .. 31;
      STATUS        at 16#1C# range 0 .. 31;
      CTR_NONCE0_W0 at 16#20# range 0 .. 31;
      CTR_NONCE0_W1 at 16#24# range 0 .. 31;
      CTR_NONCE0_W2 at 16#28# range 0 .. 31;
      CTR_NONCE0_W3 at 16#2C# range 0 .. 31;
      CTR_NONCE1_W0 at 16#30# range 0 .. 31;
      CTR_NONCE1_W1 at 16#34# range 0 .. 31;
      CTR_NONCE1_W2 at 16#38# range 0 .. 31;
      CTR_NONCE1_W3 at 16#3C# range 0 .. 31;
      REGION1_TOP   at 16#40# range 0 .. 31;
      REGION1_BOT   at 16#44# range 0 .. 31;
   end record;

   --  Bus Encryption Engine
   BEE_Periph : aliased BEE_Peripheral
     with Import, Address => System'To_Address (16#403EC000#);

end NRF_SVD.BEE;
