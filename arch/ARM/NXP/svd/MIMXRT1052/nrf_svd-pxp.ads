--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PXP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PXP_CTRL_RSVD0_Field is HAL.UInt3;

   --  Indicates the clockwise rotation to be applied at the output buffer
   type CTRL_ROTATE_Field is
     (
      --  ROT_0
      Rot_0,
      --  ROT_90
      Rot_90,
      --  ROT_180
      Rot_180,
      --  ROT_270
      Rot_270)
     with Size => 2;
   for CTRL_ROTATE_Field use
     (Rot_0 => 0,
      Rot_90 => 1,
      Rot_180 => 2,
      Rot_270 => 3);

   subtype PXP_CTRL_RSVD1_Field is HAL.UInt10;

   --  Select the block size to process.
   type CTRL_BLOCK_SIZE_Field is
     (
      --  Process 8x8 pixel blocks.
      CTRL_BLOCK_SIZE_Field_8X8,
      --  Process 16x16 pixel blocks.
      CTRL_BLOCK_SIZE_Field_16X16)
     with Size => 1;
   for CTRL_BLOCK_SIZE_Field use
     (CTRL_BLOCK_SIZE_Field_8X8 => 0,
      CTRL_BLOCK_SIZE_Field_16X16 => 1);

   subtype PXP_CTRL_RSVD3_Field is HAL.UInt4;

   --  Control Register 0
   type PXP_CTRL_Register is record
      --  Enables PXP operation with specified parameters
      ENABLE               : Boolean := False;
      --  Interrupt enable
      IRQ_ENABLE           : Boolean := False;
      --  Next command interrupt enable
      NEXT_IRQ_ENABLE      : Boolean := False;
      --  unspecified
      Reserved_3_3         : HAL.Bit := 16#0#;
      --  Enable handshake with LCD controller
      ENABLE_LCD_HANDSHAKE : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0                : PXP_CTRL_RSVD0_Field := 16#0#;
      --  Indicates the clockwise rotation to be applied at the output buffer
      ROTATE               : CTRL_ROTATE_Field := NRF_SVD.PXP.Rot_0;
      --  Indicates that the output buffer should be flipped horizontally
      --  (effect applied before rotation).
      HFLIP                : Boolean := False;
      --  Indicates that the output buffer should be flipped vertically (effect
      --  applied before rotation).
      VFLIP                : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD1                : PXP_CTRL_RSVD1_Field := 16#0#;
      --  This bit controls where rotation will occur in the PXP datapath
      ROT_POS              : Boolean := False;
      --  Select the block size to process.
      BLOCK_SIZE           : CTRL_BLOCK_SIZE_Field :=
                              NRF_SVD.PXP.CTRL_BLOCK_SIZE_Field_8X8;
      --  Read-only. Reserved, always set to zero.
      RSVD3                : PXP_CTRL_RSVD3_Field := 16#0#;
      --  Enable the PXP to run continuously
      EN_REPEAT            : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD4                : Boolean := False;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  Set this bit to zero to enable normal PXP operation
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CTRL_Register use record
      ENABLE               at 0 range 0 .. 0;
      IRQ_ENABLE           at 0 range 1 .. 1;
      NEXT_IRQ_ENABLE      at 0 range 2 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      ENABLE_LCD_HANDSHAKE at 0 range 4 .. 4;
      RSVD0                at 0 range 5 .. 7;
      ROTATE               at 0 range 8 .. 9;
      HFLIP                at 0 range 10 .. 10;
      VFLIP                at 0 range 11 .. 11;
      RSVD1                at 0 range 12 .. 21;
      ROT_POS              at 0 range 22 .. 22;
      BLOCK_SIZE           at 0 range 23 .. 23;
      RSVD3                at 0 range 24 .. 27;
      EN_REPEAT            at 0 range 28 .. 28;
      RSVD4                at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   subtype PXP_CTRL_SET_RSVD0_Field is HAL.UInt3;

   --  Indicates the clockwise rotation to be applied at the output buffer
   type CTRL_SET_ROTATE_Field is
     (
      --  ROT_0
      Rot_0,
      --  ROT_90
      Rot_90,
      --  ROT_180
      Rot_180,
      --  ROT_270
      Rot_270)
     with Size => 2;
   for CTRL_SET_ROTATE_Field use
     (Rot_0 => 0,
      Rot_90 => 1,
      Rot_180 => 2,
      Rot_270 => 3);

   subtype PXP_CTRL_SET_RSVD1_Field is HAL.UInt10;

   --  Select the block size to process.
   type CTRL_SET_BLOCK_SIZE_Field is
     (
      --  Process 8x8 pixel blocks.
      CTRL_SET_BLOCK_SIZE_Field_8X8,
      --  Process 16x16 pixel blocks.
      CTRL_SET_BLOCK_SIZE_Field_16X16)
     with Size => 1;
   for CTRL_SET_BLOCK_SIZE_Field use
     (CTRL_SET_BLOCK_SIZE_Field_8X8 => 0,
      CTRL_SET_BLOCK_SIZE_Field_16X16 => 1);

   subtype PXP_CTRL_SET_RSVD3_Field is HAL.UInt4;

   --  Control Register 0
   type PXP_CTRL_SET_Register is record
      --  Enables PXP operation with specified parameters
      ENABLE               : Boolean := False;
      --  Interrupt enable
      IRQ_ENABLE           : Boolean := False;
      --  Next command interrupt enable
      NEXT_IRQ_ENABLE      : Boolean := False;
      --  unspecified
      Reserved_3_3         : HAL.Bit := 16#0#;
      --  Enable handshake with LCD controller
      ENABLE_LCD_HANDSHAKE : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0                : PXP_CTRL_SET_RSVD0_Field := 16#0#;
      --  Indicates the clockwise rotation to be applied at the output buffer
      ROTATE               : CTRL_SET_ROTATE_Field := NRF_SVD.PXP.Rot_0;
      --  Indicates that the output buffer should be flipped horizontally
      --  (effect applied before rotation).
      HFLIP                : Boolean := False;
      --  Indicates that the output buffer should be flipped vertically (effect
      --  applied before rotation).
      VFLIP                : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD1                : PXP_CTRL_SET_RSVD1_Field := 16#0#;
      --  This bit controls where rotation will occur in the PXP datapath
      ROT_POS              : Boolean := False;
      --  Select the block size to process.
      BLOCK_SIZE           : CTRL_SET_BLOCK_SIZE_Field :=
                              NRF_SVD.PXP.CTRL_SET_BLOCK_SIZE_Field_8X8;
      --  Read-only. Reserved, always set to zero.
      RSVD3                : PXP_CTRL_SET_RSVD3_Field := 16#0#;
      --  Enable the PXP to run continuously
      EN_REPEAT            : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD4                : Boolean := False;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  Set this bit to zero to enable normal PXP operation
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CTRL_SET_Register use record
      ENABLE               at 0 range 0 .. 0;
      IRQ_ENABLE           at 0 range 1 .. 1;
      NEXT_IRQ_ENABLE      at 0 range 2 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      ENABLE_LCD_HANDSHAKE at 0 range 4 .. 4;
      RSVD0                at 0 range 5 .. 7;
      ROTATE               at 0 range 8 .. 9;
      HFLIP                at 0 range 10 .. 10;
      VFLIP                at 0 range 11 .. 11;
      RSVD1                at 0 range 12 .. 21;
      ROT_POS              at 0 range 22 .. 22;
      BLOCK_SIZE           at 0 range 23 .. 23;
      RSVD3                at 0 range 24 .. 27;
      EN_REPEAT            at 0 range 28 .. 28;
      RSVD4                at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   subtype PXP_CTRL_CLR_RSVD0_Field is HAL.UInt3;

   --  Indicates the clockwise rotation to be applied at the output buffer
   type CTRL_CLR_ROTATE_Field is
     (
      --  ROT_0
      Rot_0,
      --  ROT_90
      Rot_90,
      --  ROT_180
      Rot_180,
      --  ROT_270
      Rot_270)
     with Size => 2;
   for CTRL_CLR_ROTATE_Field use
     (Rot_0 => 0,
      Rot_90 => 1,
      Rot_180 => 2,
      Rot_270 => 3);

   subtype PXP_CTRL_CLR_RSVD1_Field is HAL.UInt10;

   --  Select the block size to process.
   type CTRL_CLR_BLOCK_SIZE_Field is
     (
      --  Process 8x8 pixel blocks.
      CTRL_CLR_BLOCK_SIZE_Field_8X8,
      --  Process 16x16 pixel blocks.
      CTRL_CLR_BLOCK_SIZE_Field_16X16)
     with Size => 1;
   for CTRL_CLR_BLOCK_SIZE_Field use
     (CTRL_CLR_BLOCK_SIZE_Field_8X8 => 0,
      CTRL_CLR_BLOCK_SIZE_Field_16X16 => 1);

   subtype PXP_CTRL_CLR_RSVD3_Field is HAL.UInt4;

   --  Control Register 0
   type PXP_CTRL_CLR_Register is record
      --  Enables PXP operation with specified parameters
      ENABLE               : Boolean := False;
      --  Interrupt enable
      IRQ_ENABLE           : Boolean := False;
      --  Next command interrupt enable
      NEXT_IRQ_ENABLE      : Boolean := False;
      --  unspecified
      Reserved_3_3         : HAL.Bit := 16#0#;
      --  Enable handshake with LCD controller
      ENABLE_LCD_HANDSHAKE : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0                : PXP_CTRL_CLR_RSVD0_Field := 16#0#;
      --  Indicates the clockwise rotation to be applied at the output buffer
      ROTATE               : CTRL_CLR_ROTATE_Field := NRF_SVD.PXP.Rot_0;
      --  Indicates that the output buffer should be flipped horizontally
      --  (effect applied before rotation).
      HFLIP                : Boolean := False;
      --  Indicates that the output buffer should be flipped vertically (effect
      --  applied before rotation).
      VFLIP                : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD1                : PXP_CTRL_CLR_RSVD1_Field := 16#0#;
      --  This bit controls where rotation will occur in the PXP datapath
      ROT_POS              : Boolean := False;
      --  Select the block size to process.
      BLOCK_SIZE           : CTRL_CLR_BLOCK_SIZE_Field :=
                              NRF_SVD.PXP.CTRL_CLR_BLOCK_SIZE_Field_8X8;
      --  Read-only. Reserved, always set to zero.
      RSVD3                : PXP_CTRL_CLR_RSVD3_Field := 16#0#;
      --  Enable the PXP to run continuously
      EN_REPEAT            : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD4                : Boolean := False;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  Set this bit to zero to enable normal PXP operation
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CTRL_CLR_Register use record
      ENABLE               at 0 range 0 .. 0;
      IRQ_ENABLE           at 0 range 1 .. 1;
      NEXT_IRQ_ENABLE      at 0 range 2 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      ENABLE_LCD_HANDSHAKE at 0 range 4 .. 4;
      RSVD0                at 0 range 5 .. 7;
      ROTATE               at 0 range 8 .. 9;
      HFLIP                at 0 range 10 .. 10;
      VFLIP                at 0 range 11 .. 11;
      RSVD1                at 0 range 12 .. 21;
      ROT_POS              at 0 range 22 .. 22;
      BLOCK_SIZE           at 0 range 23 .. 23;
      RSVD3                at 0 range 24 .. 27;
      EN_REPEAT            at 0 range 28 .. 28;
      RSVD4                at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   subtype PXP_CTRL_TOG_RSVD0_Field is HAL.UInt3;

   --  Indicates the clockwise rotation to be applied at the output buffer
   type CTRL_TOG_ROTATE_Field is
     (
      --  ROT_0
      Rot_0,
      --  ROT_90
      Rot_90,
      --  ROT_180
      Rot_180,
      --  ROT_270
      Rot_270)
     with Size => 2;
   for CTRL_TOG_ROTATE_Field use
     (Rot_0 => 0,
      Rot_90 => 1,
      Rot_180 => 2,
      Rot_270 => 3);

   subtype PXP_CTRL_TOG_RSVD1_Field is HAL.UInt10;

   --  Select the block size to process.
   type CTRL_TOG_BLOCK_SIZE_Field is
     (
      --  Process 8x8 pixel blocks.
      CTRL_TOG_BLOCK_SIZE_Field_8X8,
      --  Process 16x16 pixel blocks.
      CTRL_TOG_BLOCK_SIZE_Field_16X16)
     with Size => 1;
   for CTRL_TOG_BLOCK_SIZE_Field use
     (CTRL_TOG_BLOCK_SIZE_Field_8X8 => 0,
      CTRL_TOG_BLOCK_SIZE_Field_16X16 => 1);

   subtype PXP_CTRL_TOG_RSVD3_Field is HAL.UInt4;

   --  Control Register 0
   type PXP_CTRL_TOG_Register is record
      --  Enables PXP operation with specified parameters
      ENABLE               : Boolean := False;
      --  Interrupt enable
      IRQ_ENABLE           : Boolean := False;
      --  Next command interrupt enable
      NEXT_IRQ_ENABLE      : Boolean := False;
      --  unspecified
      Reserved_3_3         : HAL.Bit := 16#0#;
      --  Enable handshake with LCD controller
      ENABLE_LCD_HANDSHAKE : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0                : PXP_CTRL_TOG_RSVD0_Field := 16#0#;
      --  Indicates the clockwise rotation to be applied at the output buffer
      ROTATE               : CTRL_TOG_ROTATE_Field := NRF_SVD.PXP.Rot_0;
      --  Indicates that the output buffer should be flipped horizontally
      --  (effect applied before rotation).
      HFLIP                : Boolean := False;
      --  Indicates that the output buffer should be flipped vertically (effect
      --  applied before rotation).
      VFLIP                : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD1                : PXP_CTRL_TOG_RSVD1_Field := 16#0#;
      --  This bit controls where rotation will occur in the PXP datapath
      ROT_POS              : Boolean := False;
      --  Select the block size to process.
      BLOCK_SIZE           : CTRL_TOG_BLOCK_SIZE_Field :=
                              NRF_SVD.PXP.CTRL_TOG_BLOCK_SIZE_Field_8X8;
      --  Read-only. Reserved, always set to zero.
      RSVD3                : PXP_CTRL_TOG_RSVD3_Field := 16#0#;
      --  Enable the PXP to run continuously
      EN_REPEAT            : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD4                : Boolean := False;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  Set this bit to zero to enable normal PXP operation
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CTRL_TOG_Register use record
      ENABLE               at 0 range 0 .. 0;
      IRQ_ENABLE           at 0 range 1 .. 1;
      NEXT_IRQ_ENABLE      at 0 range 2 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      ENABLE_LCD_HANDSHAKE at 0 range 4 .. 4;
      RSVD0                at 0 range 5 .. 7;
      ROTATE               at 0 range 8 .. 9;
      HFLIP                at 0 range 10 .. 10;
      VFLIP                at 0 range 11 .. 11;
      RSVD1                at 0 range 12 .. 21;
      ROT_POS              at 0 range 22 .. 22;
      BLOCK_SIZE           at 0 range 23 .. 23;
      RSVD3                at 0 range 24 .. 27;
      EN_REPEAT            at 0 range 28 .. 28;
      RSVD4                at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   subtype PXP_STAT_AXI_ERROR_ID_Field is HAL.UInt4;
   subtype PXP_STAT_RSVD2_Field is HAL.UInt7;
   subtype PXP_STAT_BLOCKY_Field is HAL.UInt8;
   subtype PXP_STAT_BLOCKX_Field is HAL.UInt8;

   --  Status Register
   type PXP_STAT_Register is record
      --  Indicates current PXP interrupt status
      IRQ                   : Boolean := False;
      --  Indicates PXP encountered an AXI write error and processing has been
      --  terminated.
      AXI_WRITE_ERROR       : Boolean := False;
      --  Indicates PXP encountered an AXI read error and processing has been
      --  terminated.
      AXI_READ_ERROR        : Boolean := False;
      --  Indicates that a command issued with the "Next Command" functionality
      --  has been issued and that a new command may be initiated with a write
      --  to the PXP_NEXT register
      NEXT_IRQ              : Boolean := False;
      --  Read-only. Indicates the AXI ID of the failing bus operation.
      AXI_ERROR_ID          : PXP_STAT_AXI_ERROR_ID_Field := 16#0#;
      --  Indicates that the LUT DMA transfer has completed.
      LUT_DMA_LOAD_DONE_IRQ : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD2                 : PXP_STAT_RSVD2_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKY                : PXP_STAT_BLOCKY_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKX                : PXP_STAT_BLOCKX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_STAT_Register use record
      IRQ                   at 0 range 0 .. 0;
      AXI_WRITE_ERROR       at 0 range 1 .. 1;
      AXI_READ_ERROR        at 0 range 2 .. 2;
      NEXT_IRQ              at 0 range 3 .. 3;
      AXI_ERROR_ID          at 0 range 4 .. 7;
      LUT_DMA_LOAD_DONE_IRQ at 0 range 8 .. 8;
      RSVD2                 at 0 range 9 .. 15;
      BLOCKY                at 0 range 16 .. 23;
      BLOCKX                at 0 range 24 .. 31;
   end record;

   subtype PXP_STAT_SET_AXI_ERROR_ID_Field is HAL.UInt4;
   subtype PXP_STAT_SET_RSVD2_Field is HAL.UInt7;
   subtype PXP_STAT_SET_BLOCKY_Field is HAL.UInt8;
   subtype PXP_STAT_SET_BLOCKX_Field is HAL.UInt8;

   --  Status Register
   type PXP_STAT_SET_Register is record
      --  Indicates current PXP interrupt status
      IRQ                   : Boolean := False;
      --  Indicates PXP encountered an AXI write error and processing has been
      --  terminated.
      AXI_WRITE_ERROR       : Boolean := False;
      --  Indicates PXP encountered an AXI read error and processing has been
      --  terminated.
      AXI_READ_ERROR        : Boolean := False;
      --  Indicates that a command issued with the "Next Command" functionality
      --  has been issued and that a new command may be initiated with a write
      --  to the PXP_NEXT register
      NEXT_IRQ              : Boolean := False;
      --  Read-only. Indicates the AXI ID of the failing bus operation.
      AXI_ERROR_ID          : PXP_STAT_SET_AXI_ERROR_ID_Field := 16#0#;
      --  Indicates that the LUT DMA transfer has completed.
      LUT_DMA_LOAD_DONE_IRQ : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD2                 : PXP_STAT_SET_RSVD2_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKY                : PXP_STAT_SET_BLOCKY_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKX                : PXP_STAT_SET_BLOCKX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_STAT_SET_Register use record
      IRQ                   at 0 range 0 .. 0;
      AXI_WRITE_ERROR       at 0 range 1 .. 1;
      AXI_READ_ERROR        at 0 range 2 .. 2;
      NEXT_IRQ              at 0 range 3 .. 3;
      AXI_ERROR_ID          at 0 range 4 .. 7;
      LUT_DMA_LOAD_DONE_IRQ at 0 range 8 .. 8;
      RSVD2                 at 0 range 9 .. 15;
      BLOCKY                at 0 range 16 .. 23;
      BLOCKX                at 0 range 24 .. 31;
   end record;

   subtype PXP_STAT_CLR_AXI_ERROR_ID_Field is HAL.UInt4;
   subtype PXP_STAT_CLR_RSVD2_Field is HAL.UInt7;
   subtype PXP_STAT_CLR_BLOCKY_Field is HAL.UInt8;
   subtype PXP_STAT_CLR_BLOCKX_Field is HAL.UInt8;

   --  Status Register
   type PXP_STAT_CLR_Register is record
      --  Indicates current PXP interrupt status
      IRQ                   : Boolean := False;
      --  Indicates PXP encountered an AXI write error and processing has been
      --  terminated.
      AXI_WRITE_ERROR       : Boolean := False;
      --  Indicates PXP encountered an AXI read error and processing has been
      --  terminated.
      AXI_READ_ERROR        : Boolean := False;
      --  Indicates that a command issued with the "Next Command" functionality
      --  has been issued and that a new command may be initiated with a write
      --  to the PXP_NEXT register
      NEXT_IRQ              : Boolean := False;
      --  Read-only. Indicates the AXI ID of the failing bus operation.
      AXI_ERROR_ID          : PXP_STAT_CLR_AXI_ERROR_ID_Field := 16#0#;
      --  Indicates that the LUT DMA transfer has completed.
      LUT_DMA_LOAD_DONE_IRQ : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD2                 : PXP_STAT_CLR_RSVD2_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKY                : PXP_STAT_CLR_BLOCKY_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKX                : PXP_STAT_CLR_BLOCKX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_STAT_CLR_Register use record
      IRQ                   at 0 range 0 .. 0;
      AXI_WRITE_ERROR       at 0 range 1 .. 1;
      AXI_READ_ERROR        at 0 range 2 .. 2;
      NEXT_IRQ              at 0 range 3 .. 3;
      AXI_ERROR_ID          at 0 range 4 .. 7;
      LUT_DMA_LOAD_DONE_IRQ at 0 range 8 .. 8;
      RSVD2                 at 0 range 9 .. 15;
      BLOCKY                at 0 range 16 .. 23;
      BLOCKX                at 0 range 24 .. 31;
   end record;

   subtype PXP_STAT_TOG_AXI_ERROR_ID_Field is HAL.UInt4;
   subtype PXP_STAT_TOG_RSVD2_Field is HAL.UInt7;
   subtype PXP_STAT_TOG_BLOCKY_Field is HAL.UInt8;
   subtype PXP_STAT_TOG_BLOCKX_Field is HAL.UInt8;

   --  Status Register
   type PXP_STAT_TOG_Register is record
      --  Indicates current PXP interrupt status
      IRQ                   : Boolean := False;
      --  Indicates PXP encountered an AXI write error and processing has been
      --  terminated.
      AXI_WRITE_ERROR       : Boolean := False;
      --  Indicates PXP encountered an AXI read error and processing has been
      --  terminated.
      AXI_READ_ERROR        : Boolean := False;
      --  Indicates that a command issued with the "Next Command" functionality
      --  has been issued and that a new command may be initiated with a write
      --  to the PXP_NEXT register
      NEXT_IRQ              : Boolean := False;
      --  Read-only. Indicates the AXI ID of the failing bus operation.
      AXI_ERROR_ID          : PXP_STAT_TOG_AXI_ERROR_ID_Field := 16#0#;
      --  Indicates that the LUT DMA transfer has completed.
      LUT_DMA_LOAD_DONE_IRQ : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD2                 : PXP_STAT_TOG_RSVD2_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKY                : PXP_STAT_TOG_BLOCKY_Field := 16#0#;
      --  Read-only. Indicates the X coordinate of the block currently being
      --  rendered.
      BLOCKX                : PXP_STAT_TOG_BLOCKX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_STAT_TOG_Register use record
      IRQ                   at 0 range 0 .. 0;
      AXI_WRITE_ERROR       at 0 range 1 .. 1;
      AXI_READ_ERROR        at 0 range 2 .. 2;
      NEXT_IRQ              at 0 range 3 .. 3;
      AXI_ERROR_ID          at 0 range 4 .. 7;
      LUT_DMA_LOAD_DONE_IRQ at 0 range 8 .. 8;
      RSVD2                 at 0 range 9 .. 15;
      BLOCKY                at 0 range 16 .. 23;
      BLOCKX                at 0 range 24 .. 31;
   end record;

   --  Output framebuffer format
   type OUT_CTRL_FORMAT_Field is
     (
      --  32-bit pixels
      Argb8888,
      --  32-bit pixels (unpacked 24-bit pixel in 32 bit DWORD.)
      Rgb888,
      --  24-bit pixels (packed 24-bit format)
      Rgb888P,
      --  16-bit pixels
      Argb1555,
      --  16-bit pixels
      Argb4444,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420)
     with Size => 5;
   for OUT_CTRL_FORMAT_Field use
     (Argb8888 => 0,
      Rgb888 => 4,
      Rgb888P => 5,
      Argb1555 => 8,
      Argb4444 => 9,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27);

   subtype PXP_OUT_CTRL_RSVD0_Field is HAL.UInt3;

   --  Determines how the PXP writes it's output data
   type OUT_CTRL_INTERLACED_OUTPUT_Field is
     (
      --  All data written in progressive format to the OUTBUF Pointer.
      Progressive,
      --  Interlaced output: only data for field 0 is written to the OUTBUF
      --  Pointer.
      Field0,
      --  Interlaced output: only data for field 1 is written to the OUTBUF2
      --  Pointer.
      Field1,
      --  Interlaced output: data for field 0 is written to OUTBUF and data for
      --  field 1 is written to OUTBUF2.
      Interlaced)
     with Size => 2;
   for OUT_CTRL_INTERLACED_OUTPUT_Field use
     (Progressive => 0,
      Field0 => 1,
      Field1 => 2,
      Interlaced => 3);

   subtype PXP_OUT_CTRL_RSVD1_Field is HAL.UInt13;
   subtype PXP_OUT_CTRL_ALPHA_Field is HAL.UInt8;

   --  Output Buffer Control Register
   type PXP_OUT_CTRL_Register is record
      --  Output framebuffer format
      FORMAT            : OUT_CTRL_FORMAT_Field := NRF_SVD.PXP.Argb8888;
      --  Read-only. Reserved, always set to zero.
      RSVD0             : PXP_OUT_CTRL_RSVD0_Field := 16#0#;
      --  Determines how the PXP writes it's output data
      INTERLACED_OUTPUT : OUT_CTRL_INTERLACED_OUTPUT_Field :=
                           NRF_SVD.PXP.Progressive;
      --  Read-only. Reserved, always set to zero.
      RSVD1             : PXP_OUT_CTRL_RSVD1_Field := 16#0#;
      --  Indicates that alpha component in output buffer pixels should be
      --  overwritten by PXP_OUT_CTRL[ALPHA]
      ALPHA_OUTPUT      : Boolean := False;
      --  When generating an output buffer with an alpha component, the value
      --  in this field will be used when enabled to override the alpha passed
      --  through the pixel data pipeline
      ALPHA             : PXP_OUT_CTRL_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_CTRL_Register use record
      FORMAT            at 0 range 0 .. 4;
      RSVD0             at 0 range 5 .. 7;
      INTERLACED_OUTPUT at 0 range 8 .. 9;
      RSVD1             at 0 range 10 .. 22;
      ALPHA_OUTPUT      at 0 range 23 .. 23;
      ALPHA             at 0 range 24 .. 31;
   end record;

   --  Output framebuffer format
   type OUT_CTRL_SET_FORMAT_Field is
     (
      --  32-bit pixels
      Argb8888,
      --  32-bit pixels (unpacked 24-bit pixel in 32 bit DWORD.)
      Rgb888,
      --  24-bit pixels (packed 24-bit format)
      Rgb888P,
      --  16-bit pixels
      Argb1555,
      --  16-bit pixels
      Argb4444,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420)
     with Size => 5;
   for OUT_CTRL_SET_FORMAT_Field use
     (Argb8888 => 0,
      Rgb888 => 4,
      Rgb888P => 5,
      Argb1555 => 8,
      Argb4444 => 9,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27);

   subtype PXP_OUT_CTRL_SET_RSVD0_Field is HAL.UInt3;

   --  Determines how the PXP writes it's output data
   type OUT_CTRL_SET_INTERLACED_OUTPUT_Field is
     (
      --  All data written in progressive format to the OUTBUF Pointer.
      Progressive,
      --  Interlaced output: only data for field 0 is written to the OUTBUF
      --  Pointer.
      Field0,
      --  Interlaced output: only data for field 1 is written to the OUTBUF2
      --  Pointer.
      Field1,
      --  Interlaced output: data for field 0 is written to OUTBUF and data for
      --  field 1 is written to OUTBUF2.
      Interlaced)
     with Size => 2;
   for OUT_CTRL_SET_INTERLACED_OUTPUT_Field use
     (Progressive => 0,
      Field0 => 1,
      Field1 => 2,
      Interlaced => 3);

   subtype PXP_OUT_CTRL_SET_RSVD1_Field is HAL.UInt13;
   subtype PXP_OUT_CTRL_SET_ALPHA_Field is HAL.UInt8;

   --  Output Buffer Control Register
   type PXP_OUT_CTRL_SET_Register is record
      --  Output framebuffer format
      FORMAT            : OUT_CTRL_SET_FORMAT_Field := NRF_SVD.PXP.Argb8888;
      --  Read-only. Reserved, always set to zero.
      RSVD0             : PXP_OUT_CTRL_SET_RSVD0_Field := 16#0#;
      --  Determines how the PXP writes it's output data
      INTERLACED_OUTPUT : OUT_CTRL_SET_INTERLACED_OUTPUT_Field :=
                           NRF_SVD.PXP.Progressive;
      --  Read-only. Reserved, always set to zero.
      RSVD1             : PXP_OUT_CTRL_SET_RSVD1_Field := 16#0#;
      --  Indicates that alpha component in output buffer pixels should be
      --  overwritten by PXP_OUT_CTRL[ALPHA]
      ALPHA_OUTPUT      : Boolean := False;
      --  When generating an output buffer with an alpha component, the value
      --  in this field will be used when enabled to override the alpha passed
      --  through the pixel data pipeline
      ALPHA             : PXP_OUT_CTRL_SET_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_CTRL_SET_Register use record
      FORMAT            at 0 range 0 .. 4;
      RSVD0             at 0 range 5 .. 7;
      INTERLACED_OUTPUT at 0 range 8 .. 9;
      RSVD1             at 0 range 10 .. 22;
      ALPHA_OUTPUT      at 0 range 23 .. 23;
      ALPHA             at 0 range 24 .. 31;
   end record;

   --  Output framebuffer format
   type OUT_CTRL_CLR_FORMAT_Field is
     (
      --  32-bit pixels
      Argb8888,
      --  32-bit pixels (unpacked 24-bit pixel in 32 bit DWORD.)
      Rgb888,
      --  24-bit pixels (packed 24-bit format)
      Rgb888P,
      --  16-bit pixels
      Argb1555,
      --  16-bit pixels
      Argb4444,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420)
     with Size => 5;
   for OUT_CTRL_CLR_FORMAT_Field use
     (Argb8888 => 0,
      Rgb888 => 4,
      Rgb888P => 5,
      Argb1555 => 8,
      Argb4444 => 9,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27);

   subtype PXP_OUT_CTRL_CLR_RSVD0_Field is HAL.UInt3;

   --  Determines how the PXP writes it's output data
   type OUT_CTRL_CLR_INTERLACED_OUTPUT_Field is
     (
      --  All data written in progressive format to the OUTBUF Pointer.
      Progressive,
      --  Interlaced output: only data for field 0 is written to the OUTBUF
      --  Pointer.
      Field0,
      --  Interlaced output: only data for field 1 is written to the OUTBUF2
      --  Pointer.
      Field1,
      --  Interlaced output: data for field 0 is written to OUTBUF and data for
      --  field 1 is written to OUTBUF2.
      Interlaced)
     with Size => 2;
   for OUT_CTRL_CLR_INTERLACED_OUTPUT_Field use
     (Progressive => 0,
      Field0 => 1,
      Field1 => 2,
      Interlaced => 3);

   subtype PXP_OUT_CTRL_CLR_RSVD1_Field is HAL.UInt13;
   subtype PXP_OUT_CTRL_CLR_ALPHA_Field is HAL.UInt8;

   --  Output Buffer Control Register
   type PXP_OUT_CTRL_CLR_Register is record
      --  Output framebuffer format
      FORMAT            : OUT_CTRL_CLR_FORMAT_Field := NRF_SVD.PXP.Argb8888;
      --  Read-only. Reserved, always set to zero.
      RSVD0             : PXP_OUT_CTRL_CLR_RSVD0_Field := 16#0#;
      --  Determines how the PXP writes it's output data
      INTERLACED_OUTPUT : OUT_CTRL_CLR_INTERLACED_OUTPUT_Field :=
                           NRF_SVD.PXP.Progressive;
      --  Read-only. Reserved, always set to zero.
      RSVD1             : PXP_OUT_CTRL_CLR_RSVD1_Field := 16#0#;
      --  Indicates that alpha component in output buffer pixels should be
      --  overwritten by PXP_OUT_CTRL[ALPHA]
      ALPHA_OUTPUT      : Boolean := False;
      --  When generating an output buffer with an alpha component, the value
      --  in this field will be used when enabled to override the alpha passed
      --  through the pixel data pipeline
      ALPHA             : PXP_OUT_CTRL_CLR_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_CTRL_CLR_Register use record
      FORMAT            at 0 range 0 .. 4;
      RSVD0             at 0 range 5 .. 7;
      INTERLACED_OUTPUT at 0 range 8 .. 9;
      RSVD1             at 0 range 10 .. 22;
      ALPHA_OUTPUT      at 0 range 23 .. 23;
      ALPHA             at 0 range 24 .. 31;
   end record;

   --  Output framebuffer format
   type OUT_CTRL_TOG_FORMAT_Field is
     (
      --  32-bit pixels
      Argb8888,
      --  32-bit pixels (unpacked 24-bit pixel in 32 bit DWORD.)
      Rgb888,
      --  24-bit pixels (packed 24-bit format)
      Rgb888P,
      --  16-bit pixels
      Argb1555,
      --  16-bit pixels
      Argb4444,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420)
     with Size => 5;
   for OUT_CTRL_TOG_FORMAT_Field use
     (Argb8888 => 0,
      Rgb888 => 4,
      Rgb888P => 5,
      Argb1555 => 8,
      Argb4444 => 9,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27);

   subtype PXP_OUT_CTRL_TOG_RSVD0_Field is HAL.UInt3;

   --  Determines how the PXP writes it's output data
   type OUT_CTRL_TOG_INTERLACED_OUTPUT_Field is
     (
      --  All data written in progressive format to the OUTBUF Pointer.
      Progressive,
      --  Interlaced output: only data for field 0 is written to the OUTBUF
      --  Pointer.
      Field0,
      --  Interlaced output: only data for field 1 is written to the OUTBUF2
      --  Pointer.
      Field1,
      --  Interlaced output: data for field 0 is written to OUTBUF and data for
      --  field 1 is written to OUTBUF2.
      Interlaced)
     with Size => 2;
   for OUT_CTRL_TOG_INTERLACED_OUTPUT_Field use
     (Progressive => 0,
      Field0 => 1,
      Field1 => 2,
      Interlaced => 3);

   subtype PXP_OUT_CTRL_TOG_RSVD1_Field is HAL.UInt13;
   subtype PXP_OUT_CTRL_TOG_ALPHA_Field is HAL.UInt8;

   --  Output Buffer Control Register
   type PXP_OUT_CTRL_TOG_Register is record
      --  Output framebuffer format
      FORMAT            : OUT_CTRL_TOG_FORMAT_Field := NRF_SVD.PXP.Argb8888;
      --  Read-only. Reserved, always set to zero.
      RSVD0             : PXP_OUT_CTRL_TOG_RSVD0_Field := 16#0#;
      --  Determines how the PXP writes it's output data
      INTERLACED_OUTPUT : OUT_CTRL_TOG_INTERLACED_OUTPUT_Field :=
                           NRF_SVD.PXP.Progressive;
      --  Read-only. Reserved, always set to zero.
      RSVD1             : PXP_OUT_CTRL_TOG_RSVD1_Field := 16#0#;
      --  Indicates that alpha component in output buffer pixels should be
      --  overwritten by PXP_OUT_CTRL[ALPHA]
      ALPHA_OUTPUT      : Boolean := False;
      --  When generating an output buffer with an alpha component, the value
      --  in this field will be used when enabled to override the alpha passed
      --  through the pixel data pipeline
      ALPHA             : PXP_OUT_CTRL_TOG_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_CTRL_TOG_Register use record
      FORMAT            at 0 range 0 .. 4;
      RSVD0             at 0 range 5 .. 7;
      INTERLACED_OUTPUT at 0 range 8 .. 9;
      RSVD1             at 0 range 10 .. 22;
      ALPHA_OUTPUT      at 0 range 23 .. 23;
      ALPHA             at 0 range 24 .. 31;
   end record;

   subtype PXP_OUT_PITCH_PITCH_Field is HAL.UInt16;
   subtype PXP_OUT_PITCH_RSVD_Field is HAL.UInt16;

   --  Output Buffer Pitch
   type PXP_OUT_PITCH_Register is record
      --  Indicates the number of bytes in memory between two vertically
      --  adjacent pixels.
      PITCH : PXP_OUT_PITCH_PITCH_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD  : PXP_OUT_PITCH_RSVD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_PITCH_Register use record
      PITCH at 0 range 0 .. 15;
      RSVD  at 0 range 16 .. 31;
   end record;

   subtype PXP_OUT_LRC_Y_Field is HAL.UInt14;
   subtype PXP_OUT_LRC_RSVD0_Field is HAL.UInt2;
   subtype PXP_OUT_LRC_X_Field is HAL.UInt14;
   subtype PXP_OUT_LRC_RSVD1_Field is HAL.UInt2;

   --  Output Surface Lower Right Coordinate
   type PXP_OUT_LRC_Register is record
      --  Indicates the number of vertical PIXELS in the output surface
      --  (non-rotated)
      Y     : PXP_OUT_LRC_Y_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_OUT_LRC_RSVD0_Field := 16#0#;
      --  Indicates number of horizontal PIXELS in the output surface
      --  (non-rotated)
      X     : PXP_OUT_LRC_X_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_OUT_LRC_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_LRC_Register use record
      Y     at 0 range 0 .. 13;
      RSVD0 at 0 range 14 .. 15;
      X     at 0 range 16 .. 29;
      RSVD1 at 0 range 30 .. 31;
   end record;

   subtype PXP_OUT_PS_ULC_Y_Field is HAL.UInt14;
   subtype PXP_OUT_PS_ULC_RSVD0_Field is HAL.UInt2;
   subtype PXP_OUT_PS_ULC_X_Field is HAL.UInt14;
   subtype PXP_OUT_PS_ULC_RSVD1_Field is HAL.UInt2;

   --  Processed Surface Upper Left Coordinate
   type PXP_OUT_PS_ULC_Register is record
      --  This field indicates the upper left Y-coordinate (in pixels) of the
      --  processed surface in the output buffer
      Y     : PXP_OUT_PS_ULC_Y_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_OUT_PS_ULC_RSVD0_Field := 16#0#;
      --  This field indicates the upper left X-coordinate (in pixels) of the
      --  processed surface (PS) in the output buffer
      X     : PXP_OUT_PS_ULC_X_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_OUT_PS_ULC_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_PS_ULC_Register use record
      Y     at 0 range 0 .. 13;
      RSVD0 at 0 range 14 .. 15;
      X     at 0 range 16 .. 29;
      RSVD1 at 0 range 30 .. 31;
   end record;

   subtype PXP_OUT_PS_LRC_Y_Field is HAL.UInt14;
   subtype PXP_OUT_PS_LRC_RSVD0_Field is HAL.UInt2;
   subtype PXP_OUT_PS_LRC_X_Field is HAL.UInt14;
   subtype PXP_OUT_PS_LRC_RSVD1_Field is HAL.UInt2;

   --  Processed Surface Lower Right Coordinate
   type PXP_OUT_PS_LRC_Register is record
      --  This field indicates the lower right Y-coordinate (in pixels) of the
      --  processed surface in the output frame buffer
      Y     : PXP_OUT_PS_LRC_Y_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_OUT_PS_LRC_RSVD0_Field := 16#0#;
      --  This field indicates the lower right X-coordinate (in pixels) of the
      --  processed surface (PS) in the output frame buffer
      X     : PXP_OUT_PS_LRC_X_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_OUT_PS_LRC_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_PS_LRC_Register use record
      Y     at 0 range 0 .. 13;
      RSVD0 at 0 range 14 .. 15;
      X     at 0 range 16 .. 29;
      RSVD1 at 0 range 30 .. 31;
   end record;

   subtype PXP_OUT_AS_ULC_Y_Field is HAL.UInt14;
   subtype PXP_OUT_AS_ULC_RSVD0_Field is HAL.UInt2;
   subtype PXP_OUT_AS_ULC_X_Field is HAL.UInt14;
   subtype PXP_OUT_AS_ULC_RSVD1_Field is HAL.UInt2;

   --  Alpha Surface Upper Left Coordinate
   type PXP_OUT_AS_ULC_Register is record
      --  This field indicates the upper left Y-coordinate (in pixels) of the
      --  alpha surface in the output frame buffer
      Y     : PXP_OUT_AS_ULC_Y_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_OUT_AS_ULC_RSVD0_Field := 16#0#;
      --  This field indicates the upper left X-coordinate (in pixels) of the
      --  alpha surface (AS) in the output frame buffer
      X     : PXP_OUT_AS_ULC_X_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_OUT_AS_ULC_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_AS_ULC_Register use record
      Y     at 0 range 0 .. 13;
      RSVD0 at 0 range 14 .. 15;
      X     at 0 range 16 .. 29;
      RSVD1 at 0 range 30 .. 31;
   end record;

   subtype PXP_OUT_AS_LRC_Y_Field is HAL.UInt14;
   subtype PXP_OUT_AS_LRC_RSVD0_Field is HAL.UInt2;
   subtype PXP_OUT_AS_LRC_X_Field is HAL.UInt14;
   subtype PXP_OUT_AS_LRC_RSVD1_Field is HAL.UInt2;

   --  Alpha Surface Lower Right Coordinate
   type PXP_OUT_AS_LRC_Register is record
      --  This field indicates the lower right Y-coordinate (in pixels) of the
      --  alpha surface in the output frame buffer
      Y     : PXP_OUT_AS_LRC_Y_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_OUT_AS_LRC_RSVD0_Field := 16#0#;
      --  This field indicates the lower right X-coordinate (in pixels) of the
      --  alpha surface (AS) in the output frame buffer
      X     : PXP_OUT_AS_LRC_X_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_OUT_AS_LRC_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_OUT_AS_LRC_Register use record
      Y     at 0 range 0 .. 13;
      RSVD0 at 0 range 14 .. 15;
      X     at 0 range 16 .. 29;
      RSVD1 at 0 range 30 .. 31;
   end record;

   --  PS buffer format. To select between YUV and YCbCr formats, see bit 31 of
   --  the CSC1_COEF0 register.
   type PS_CTRL_FORMAT_Field is
     (
      --  Reset value for the field
      Ps_Ctrl_Format_Field_Reset,
      --  32-bit pixels (unpacked 24-bit format)
      Rgb888,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420,
      --  16-bit pixels (3-plane format)
      Yuv422,
      --  16-bit pixels (3-plane format)
      Yuv420)
     with Size => 5;
   for PS_CTRL_FORMAT_Field use
     (Ps_Ctrl_Format_Field_Reset => 0,
      Rgb888 => 4,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27,
      Yuv422 => 30,
      Yuv420 => 31);

   subtype PXP_PS_CTRL_RSVD0_Field is HAL.UInt2;

   --  Verticle pre decimation filter control.
   type PS_CTRL_DECY_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decy2,
      --  Decimate PS by 4.
      Decy4,
      --  Decimate PS by 8.
      Decy8)
     with Size => 2;
   for PS_CTRL_DECY_Field use
     (Disable => 0,
      Decy2 => 1,
      Decy4 => 2,
      Decy8 => 3);

   --  Horizontal pre decimation filter control.
   type PS_CTRL_DECX_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decx2,
      --  Decimate PS by 4.
      Decx4,
      --  Decimate PS by 8.
      Decx8)
     with Size => 2;
   for PS_CTRL_DECX_Field use
     (Disable => 0,
      Decx2 => 1,
      Decx4 => 2,
      Decx8 => 3);

   subtype PXP_PS_CTRL_RSVD1_Field is HAL.UInt20;

   --  Processed Surface (PS) Control Register
   type PXP_PS_CTRL_Register is record
      --  PS buffer format. To select between YUV and YCbCr formats, see bit 31
      --  of the CSC1_COEF0 register.
      FORMAT  : PS_CTRL_FORMAT_Field := Ps_Ctrl_Format_Field_Reset;
      --  Swap bytes in words. For each 16 bit word, the two bytes will be
      --  swapped.
      WB_SWAP : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0   : PXP_PS_CTRL_RSVD0_Field := 16#0#;
      --  Verticle pre decimation filter control.
      DECY    : PS_CTRL_DECY_Field := NRF_SVD.PXP.Disable;
      --  Horizontal pre decimation filter control.
      DECX    : PS_CTRL_DECX_Field := NRF_SVD.PXP.Disable;
      --  Read-only. Reserved, always set to zero.
      RSVD1   : PXP_PS_CTRL_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_CTRL_Register use record
      FORMAT  at 0 range 0 .. 4;
      WB_SWAP at 0 range 5 .. 5;
      RSVD0   at 0 range 6 .. 7;
      DECY    at 0 range 8 .. 9;
      DECX    at 0 range 10 .. 11;
      RSVD1   at 0 range 12 .. 31;
   end record;

   --  PS buffer format. To select between YUV and YCbCr formats, see bit 31 of
   --  the CSC1_COEF0 register.
   type PS_CTRL_SET_FORMAT_Field is
     (
      --  Reset value for the field
      Ps_Ctrl_Set_Format_Field_Reset,
      --  32-bit pixels (unpacked 24-bit format)
      Rgb888,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420,
      --  16-bit pixels (3-plane format)
      Yuv422,
      --  16-bit pixels (3-plane format)
      Yuv420)
     with Size => 5;
   for PS_CTRL_SET_FORMAT_Field use
     (Ps_Ctrl_Set_Format_Field_Reset => 0,
      Rgb888 => 4,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27,
      Yuv422 => 30,
      Yuv420 => 31);

   subtype PXP_PS_CTRL_SET_RSVD0_Field is HAL.UInt2;

   --  Verticle pre decimation filter control.
   type PS_CTRL_SET_DECY_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decy2,
      --  Decimate PS by 4.
      Decy4,
      --  Decimate PS by 8.
      Decy8)
     with Size => 2;
   for PS_CTRL_SET_DECY_Field use
     (Disable => 0,
      Decy2 => 1,
      Decy4 => 2,
      Decy8 => 3);

   --  Horizontal pre decimation filter control.
   type PS_CTRL_SET_DECX_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decx2,
      --  Decimate PS by 4.
      Decx4,
      --  Decimate PS by 8.
      Decx8)
     with Size => 2;
   for PS_CTRL_SET_DECX_Field use
     (Disable => 0,
      Decx2 => 1,
      Decx4 => 2,
      Decx8 => 3);

   subtype PXP_PS_CTRL_SET_RSVD1_Field is HAL.UInt20;

   --  Processed Surface (PS) Control Register
   type PXP_PS_CTRL_SET_Register is record
      --  PS buffer format. To select between YUV and YCbCr formats, see bit 31
      --  of the CSC1_COEF0 register.
      FORMAT  : PS_CTRL_SET_FORMAT_Field := Ps_Ctrl_Set_Format_Field_Reset;
      --  Swap bytes in words. For each 16 bit word, the two bytes will be
      --  swapped.
      WB_SWAP : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0   : PXP_PS_CTRL_SET_RSVD0_Field := 16#0#;
      --  Verticle pre decimation filter control.
      DECY    : PS_CTRL_SET_DECY_Field := NRF_SVD.PXP.Disable;
      --  Horizontal pre decimation filter control.
      DECX    : PS_CTRL_SET_DECX_Field := NRF_SVD.PXP.Disable;
      --  Read-only. Reserved, always set to zero.
      RSVD1   : PXP_PS_CTRL_SET_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_CTRL_SET_Register use record
      FORMAT  at 0 range 0 .. 4;
      WB_SWAP at 0 range 5 .. 5;
      RSVD0   at 0 range 6 .. 7;
      DECY    at 0 range 8 .. 9;
      DECX    at 0 range 10 .. 11;
      RSVD1   at 0 range 12 .. 31;
   end record;

   --  PS buffer format. To select between YUV and YCbCr formats, see bit 31 of
   --  the CSC1_COEF0 register.
   type PS_CTRL_CLR_FORMAT_Field is
     (
      --  Reset value for the field
      Ps_Ctrl_Clr_Format_Field_Reset,
      --  32-bit pixels (unpacked 24-bit format)
      Rgb888,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420,
      --  16-bit pixels (3-plane format)
      Yuv422,
      --  16-bit pixels (3-plane format)
      Yuv420)
     with Size => 5;
   for PS_CTRL_CLR_FORMAT_Field use
     (Ps_Ctrl_Clr_Format_Field_Reset => 0,
      Rgb888 => 4,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27,
      Yuv422 => 30,
      Yuv420 => 31);

   subtype PXP_PS_CTRL_CLR_RSVD0_Field is HAL.UInt2;

   --  Verticle pre decimation filter control.
   type PS_CTRL_CLR_DECY_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decy2,
      --  Decimate PS by 4.
      Decy4,
      --  Decimate PS by 8.
      Decy8)
     with Size => 2;
   for PS_CTRL_CLR_DECY_Field use
     (Disable => 0,
      Decy2 => 1,
      Decy4 => 2,
      Decy8 => 3);

   --  Horizontal pre decimation filter control.
   type PS_CTRL_CLR_DECX_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decx2,
      --  Decimate PS by 4.
      Decx4,
      --  Decimate PS by 8.
      Decx8)
     with Size => 2;
   for PS_CTRL_CLR_DECX_Field use
     (Disable => 0,
      Decx2 => 1,
      Decx4 => 2,
      Decx8 => 3);

   subtype PXP_PS_CTRL_CLR_RSVD1_Field is HAL.UInt20;

   --  Processed Surface (PS) Control Register
   type PXP_PS_CTRL_CLR_Register is record
      --  PS buffer format. To select between YUV and YCbCr formats, see bit 31
      --  of the CSC1_COEF0 register.
      FORMAT  : PS_CTRL_CLR_FORMAT_Field := Ps_Ctrl_Clr_Format_Field_Reset;
      --  Swap bytes in words. For each 16 bit word, the two bytes will be
      --  swapped.
      WB_SWAP : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0   : PXP_PS_CTRL_CLR_RSVD0_Field := 16#0#;
      --  Verticle pre decimation filter control.
      DECY    : PS_CTRL_CLR_DECY_Field := NRF_SVD.PXP.Disable;
      --  Horizontal pre decimation filter control.
      DECX    : PS_CTRL_CLR_DECX_Field := NRF_SVD.PXP.Disable;
      --  Read-only. Reserved, always set to zero.
      RSVD1   : PXP_PS_CTRL_CLR_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_CTRL_CLR_Register use record
      FORMAT  at 0 range 0 .. 4;
      WB_SWAP at 0 range 5 .. 5;
      RSVD0   at 0 range 6 .. 7;
      DECY    at 0 range 8 .. 9;
      DECX    at 0 range 10 .. 11;
      RSVD1   at 0 range 12 .. 31;
   end record;

   --  PS buffer format. To select between YUV and YCbCr formats, see bit 31 of
   --  the CSC1_COEF0 register.
   type PS_CTRL_TOG_FORMAT_Field is
     (
      --  Reset value for the field
      Ps_Ctrl_Tog_Format_Field_Reset,
      --  32-bit pixels (unpacked 24-bit format)
      Rgb888,
      --  16-bit pixels
      Rgb555,
      --  16-bit pixels
      Rgb444,
      --  16-bit pixels
      Rgb565,
      --  32-bit pixels (1-plane XYUV unpacked)
      Yuv1P444,
      --  16-bit pixels (1-plane U0,Y0,V0,Y1 interleaved bytes)
      Uyvy1P422,
      --  16-bit pixels (1-plane V0,Y0,U0,Y1 interleaved bytes)
      Vyuy1P422,
      --  8-bit monochrome pixels (1-plane Y luma output)
      Y8,
      --  4-bit monochrome pixels (1-plane Y luma, 4 bit truncation)
      Y4,
      --  16-bit pixels (2-plane UV interleaved bytes)
      Yuv2P422,
      --  16-bit pixels (2-plane UV)
      Yuv2P420,
      --  16-bit pixels (2-plane VU interleaved bytes)
      Yvu2P422,
      --  16-bit pixels (2-plane VU)
      Yvu2P420,
      --  16-bit pixels (3-plane format)
      Yuv422,
      --  16-bit pixels (3-plane format)
      Yuv420)
     with Size => 5;
   for PS_CTRL_TOG_FORMAT_Field use
     (Ps_Ctrl_Tog_Format_Field_Reset => 0,
      Rgb888 => 4,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14,
      Yuv1P444 => 16,
      Uyvy1P422 => 18,
      Vyuy1P422 => 19,
      Y8 => 20,
      Y4 => 21,
      Yuv2P422 => 24,
      Yuv2P420 => 25,
      Yvu2P422 => 26,
      Yvu2P420 => 27,
      Yuv422 => 30,
      Yuv420 => 31);

   subtype PXP_PS_CTRL_TOG_RSVD0_Field is HAL.UInt2;

   --  Verticle pre decimation filter control.
   type PS_CTRL_TOG_DECY_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decy2,
      --  Decimate PS by 4.
      Decy4,
      --  Decimate PS by 8.
      Decy8)
     with Size => 2;
   for PS_CTRL_TOG_DECY_Field use
     (Disable => 0,
      Decy2 => 1,
      Decy4 => 2,
      Decy8 => 3);

   --  Horizontal pre decimation filter control.
   type PS_CTRL_TOG_DECX_Field is
     (
      --  Disable pre-decimation filter.
      Disable,
      --  Decimate PS by 2.
      Decx2,
      --  Decimate PS by 4.
      Decx4,
      --  Decimate PS by 8.
      Decx8)
     with Size => 2;
   for PS_CTRL_TOG_DECX_Field use
     (Disable => 0,
      Decx2 => 1,
      Decx4 => 2,
      Decx8 => 3);

   subtype PXP_PS_CTRL_TOG_RSVD1_Field is HAL.UInt20;

   --  Processed Surface (PS) Control Register
   type PXP_PS_CTRL_TOG_Register is record
      --  PS buffer format. To select between YUV and YCbCr formats, see bit 31
      --  of the CSC1_COEF0 register.
      FORMAT  : PS_CTRL_TOG_FORMAT_Field := Ps_Ctrl_Tog_Format_Field_Reset;
      --  Swap bytes in words. For each 16 bit word, the two bytes will be
      --  swapped.
      WB_SWAP : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD0   : PXP_PS_CTRL_TOG_RSVD0_Field := 16#0#;
      --  Verticle pre decimation filter control.
      DECY    : PS_CTRL_TOG_DECY_Field := NRF_SVD.PXP.Disable;
      --  Horizontal pre decimation filter control.
      DECX    : PS_CTRL_TOG_DECX_Field := NRF_SVD.PXP.Disable;
      --  Read-only. Reserved, always set to zero.
      RSVD1   : PXP_PS_CTRL_TOG_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_CTRL_TOG_Register use record
      FORMAT  at 0 range 0 .. 4;
      WB_SWAP at 0 range 5 .. 5;
      RSVD0   at 0 range 6 .. 7;
      DECY    at 0 range 8 .. 9;
      DECX    at 0 range 10 .. 11;
      RSVD1   at 0 range 12 .. 31;
   end record;

   subtype PXP_PS_PITCH_PITCH_Field is HAL.UInt16;
   subtype PXP_PS_PITCH_RSVD_Field is HAL.UInt16;

   --  Processed Surface Pitch
   type PXP_PS_PITCH_Register is record
      --  Indicates the number of bytes in memory between two vertically
      --  adjacent pixels.
      PITCH : PXP_PS_PITCH_PITCH_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD  : PXP_PS_PITCH_RSVD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_PITCH_Register use record
      PITCH at 0 range 0 .. 15;
      RSVD  at 0 range 16 .. 31;
   end record;

   subtype PXP_PS_BACKGROUND_COLOR_Field is HAL.UInt24;
   subtype PXP_PS_BACKGROUND_RSVD_Field is HAL.UInt8;

   --  PS Background Color
   type PXP_PS_BACKGROUND_Register is record
      --  Background color (in 24bpp format) for any pixels not within the
      --  buffer range specified by the PS ULC/LRC
      COLOR : PXP_PS_BACKGROUND_COLOR_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD  : PXP_PS_BACKGROUND_RSVD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_BACKGROUND_Register use record
      COLOR at 0 range 0 .. 23;
      RSVD  at 0 range 24 .. 31;
   end record;

   subtype PXP_PS_SCALE_XSCALE_Field is HAL.UInt15;
   subtype PXP_PS_SCALE_YSCALE_Field is HAL.UInt15;

   --  PS Scale Factor Register
   type PXP_PS_SCALE_Register is record
      --  This is a two bit integer and 12 bit fractional representation (##
      XSCALE : PXP_PS_SCALE_XSCALE_Field := 16#1000#;
      --  Read-only. Reserved, always set to zero.
      RSVD1  : Boolean := False;
      --  This is a two bit integer and 12 bit fractional representation (##
      YSCALE : PXP_PS_SCALE_YSCALE_Field := 16#1000#;
      --  Read-only. Reserved, always set to zero.
      RSVD2  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_SCALE_Register use record
      XSCALE at 0 range 0 .. 14;
      RSVD1  at 0 range 15 .. 15;
      YSCALE at 0 range 16 .. 30;
      RSVD2  at 0 range 31 .. 31;
   end record;

   subtype PXP_PS_OFFSET_XOFFSET_Field is HAL.UInt12;
   subtype PXP_PS_OFFSET_RSVD1_Field is HAL.UInt4;
   subtype PXP_PS_OFFSET_YOFFSET_Field is HAL.UInt12;
   subtype PXP_PS_OFFSET_RSVD2_Field is HAL.UInt4;

   --  PS Scale Offset Register
   type PXP_PS_OFFSET_Register is record
      --  This is a 12 bit fractional representation (0
      XOFFSET : PXP_PS_OFFSET_XOFFSET_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1   : PXP_PS_OFFSET_RSVD1_Field := 16#0#;
      --  This is a 12 bit fractional representation (0
      YOFFSET : PXP_PS_OFFSET_YOFFSET_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD2   : PXP_PS_OFFSET_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_OFFSET_Register use record
      XOFFSET at 0 range 0 .. 11;
      RSVD1   at 0 range 12 .. 15;
      YOFFSET at 0 range 16 .. 27;
      RSVD2   at 0 range 28 .. 31;
   end record;

   subtype PXP_PS_CLRKEYLOW_PIXEL_Field is HAL.UInt24;
   subtype PXP_PS_CLRKEYLOW_RSVD1_Field is HAL.UInt8;

   --  PS Color Key Low
   type PXP_PS_CLRKEYLOW_Register is record
      --  Low range of color key applied to PS buffer
      PIXEL : PXP_PS_CLRKEYLOW_PIXEL_Field := 16#FFFFFF#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_PS_CLRKEYLOW_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_CLRKEYLOW_Register use record
      PIXEL at 0 range 0 .. 23;
      RSVD1 at 0 range 24 .. 31;
   end record;

   subtype PXP_PS_CLRKEYHIGH_PIXEL_Field is HAL.UInt24;
   subtype PXP_PS_CLRKEYHIGH_RSVD1_Field is HAL.UInt8;

   --  PS Color Key High
   type PXP_PS_CLRKEYHIGH_Register is record
      --  High range of color key applied to PS buffer
      PIXEL : PXP_PS_CLRKEYHIGH_PIXEL_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_PS_CLRKEYHIGH_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PS_CLRKEYHIGH_Register use record
      PIXEL at 0 range 0 .. 23;
      RSVD1 at 0 range 24 .. 31;
   end record;

   --  Determines how the alpha value is constructed for this alpha surface
   type AS_CTRL_ALPHA_CTRL_Field is
     (
      --  Indicates that the AS pixel alpha value will be used to blend the AS
      --  with PS. The ALPHA field is ignored.
      Embedded,
      --  Indicates that the value in the ALPHA field should be used instead of
      --  the alpha values present in the input pixels.
      Override,
      --  Indicates that the value in the ALPHA field should be used to scale
      --  all pixel alpha values. Each pixel alpha is multiplied by the value
      --  in the ALPHA field.
      Multiply,
      --  Enable ROPs. The ROP field indicates an operation to be performed on
      --  the alpha surface and PS pixels.
      Rops)
     with Size => 2;
   for AS_CTRL_ALPHA_CTRL_Field use
     (Embedded => 0,
      Override => 1,
      Multiply => 2,
      Rops => 3);

   --  Indicates the input buffer format for AS.
   type AS_CTRL_FORMAT_Field is
     (
      --  32-bit pixels with alpha
      Argb8888,
      --  32-bit pixels without alpha (unpacked 24-bit format)
      Rgb888,
      --  16-bit pixels with alpha
      Argb1555,
      --  16-bit pixels with alpha
      Argb4444,
      --  16-bit pixels without alpha
      Rgb555,
      --  16-bit pixels without alpha
      Rgb444,
      --  16-bit pixels without alpha
      Rgb565)
     with Size => 4;
   for AS_CTRL_FORMAT_Field use
     (Argb8888 => 0,
      Rgb888 => 4,
      Argb1555 => 8,
      Argb4444 => 9,
      Rgb555 => 12,
      Rgb444 => 13,
      Rgb565 => 14);

   subtype PXP_AS_CTRL_ALPHA_Field is HAL.UInt8;

   --  Indicates a raster operation to perform when enabled
   type AS_CTRL_ROP_Field is
     (
      --  AS AND PS
      Maskas,
      --  nAS AND PS
      Masknotas,
      --  AS AND nPS
      Maskasnot,
      --  AS OR PS
      Mergeas,
      --  nAS OR PS
      Mergenotas,
      --  AS OR nPS
      Mergeasnot,
      --  nAS
      Notcopyas,
      --  nPS
      Not_k,
      --  AS NAND PS
      Notmaskas,
      --  AS NOR PS
      Notmergeas,
      --  AS XOR PS
      Xoras,
      --  AS XNOR PS
      Notxoras)
     with Size => 4;
   for AS_CTRL_ROP_Field use
     (Maskas => 0,
      Masknotas => 1,
      Maskasnot => 2,
      Mergeas => 3,
      Mergenotas => 4,
      Mergeasnot => 5,
      Notcopyas => 6,
      Not_k => 7,
      Notmaskas => 8,
      Notmergeas => 9,
      Xoras => 10,
      Notxoras => 11);

   subtype PXP_AS_CTRL_RSVD1_Field is HAL.UInt11;

   --  Alpha Surface Control
   type PXP_AS_CTRL_Register is record
      --  Read-only. Reserved, always set to zero.
      RSVD0           : Boolean := False;
      --  Determines how the alpha value is constructed for this alpha surface
      ALPHA_CTRL      : AS_CTRL_ALPHA_CTRL_Field := NRF_SVD.PXP.Embedded;
      --  Indicates that colorkey functionality is enabled for this alpha
      --  surface
      ENABLE_COLORKEY : Boolean := False;
      --  Indicates the input buffer format for AS.
      FORMAT          : AS_CTRL_FORMAT_Field := NRF_SVD.PXP.Argb8888;
      --  Alpha modifier used when the ALPHA_MULTIPLY or ALPHA_OVERRIDE values
      --  are programmed in PXP_AS_CTRL[ALPHA_CTRL]
      ALPHA           : PXP_AS_CTRL_ALPHA_Field := 16#0#;
      --  Indicates a raster operation to perform when enabled
      ROP             : AS_CTRL_ROP_Field := NRF_SVD.PXP.Maskas;
      --  Setting this bit to logic 0 will not alter the alpha value
      ALPHA_INVERT    : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD1           : PXP_AS_CTRL_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_AS_CTRL_Register use record
      RSVD0           at 0 range 0 .. 0;
      ALPHA_CTRL      at 0 range 1 .. 2;
      ENABLE_COLORKEY at 0 range 3 .. 3;
      FORMAT          at 0 range 4 .. 7;
      ALPHA           at 0 range 8 .. 15;
      ROP             at 0 range 16 .. 19;
      ALPHA_INVERT    at 0 range 20 .. 20;
      RSVD1           at 0 range 21 .. 31;
   end record;

   subtype PXP_AS_PITCH_PITCH_Field is HAL.UInt16;
   subtype PXP_AS_PITCH_RSVD_Field is HAL.UInt16;

   --  Alpha Surface Pitch
   type PXP_AS_PITCH_Register is record
      --  Indicates the number of bytes in memory between two vertically
      --  adjacent pixels.
      PITCH : PXP_AS_PITCH_PITCH_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD  : PXP_AS_PITCH_RSVD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_AS_PITCH_Register use record
      PITCH at 0 range 0 .. 15;
      RSVD  at 0 range 16 .. 31;
   end record;

   subtype PXP_AS_CLRKEYLOW_PIXEL_Field is HAL.UInt24;
   subtype PXP_AS_CLRKEYLOW_RSVD1_Field is HAL.UInt8;

   --  Overlay Color Key Low
   type PXP_AS_CLRKEYLOW_Register is record
      --  Low range of RGB color key applied to AS buffer. Each overlay has an
      --  independent colorkey enable.
      PIXEL : PXP_AS_CLRKEYLOW_PIXEL_Field := 16#FFFFFF#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_AS_CLRKEYLOW_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_AS_CLRKEYLOW_Register use record
      PIXEL at 0 range 0 .. 23;
      RSVD1 at 0 range 24 .. 31;
   end record;

   subtype PXP_AS_CLRKEYHIGH_PIXEL_Field is HAL.UInt24;
   subtype PXP_AS_CLRKEYHIGH_RSVD1_Field is HAL.UInt8;

   --  Overlay Color Key High
   type PXP_AS_CLRKEYHIGH_Register is record
      --  High range of RGB color key applied to AS buffer. Each overlay has an
      --  independent colorkey enable.
      PIXEL : PXP_AS_CLRKEYHIGH_PIXEL_Field := 16#0#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_AS_CLRKEYHIGH_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_AS_CLRKEYHIGH_Register use record
      PIXEL at 0 range 0 .. 23;
      RSVD1 at 0 range 24 .. 31;
   end record;

   subtype PXP_CSC1_COEF0_Y_OFFSET_Field is HAL.UInt9;
   subtype PXP_CSC1_COEF0_UV_OFFSET_Field is HAL.UInt9;
   subtype PXP_CSC1_COEF0_C0_Field is HAL.UInt11;

   --  Color Space Conversion Coefficient Register 0
   type PXP_CSC1_COEF0_Register is record
      --  Two's compliment amplitude offset implicit in the Y data
      Y_OFFSET   : PXP_CSC1_COEF0_Y_OFFSET_Field := 16#0#;
      --  Two's compliment phase offset implicit for CbCr data
      UV_OFFSET  : PXP_CSC1_COEF0_UV_OFFSET_Field := 16#0#;
      --  Two's compliment Y multiplier coefficient. YUV=0x100 (1.000)
      --  YCbCr=0x12A (1.164)
      C0         : PXP_CSC1_COEF0_C0_Field := 16#100#;
      --  Read-only. Reserved, always set to zero.
      RSVD1      : Boolean := False;
      --  Bypass the CSC unit in the scaling engine
      BYPASS     : Boolean := False;
      --  Set to 1 when performing YCbCr conversion to RGB
      YCBCR_MODE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CSC1_COEF0_Register use record
      Y_OFFSET   at 0 range 0 .. 8;
      UV_OFFSET  at 0 range 9 .. 17;
      C0         at 0 range 18 .. 28;
      RSVD1      at 0 range 29 .. 29;
      BYPASS     at 0 range 30 .. 30;
      YCBCR_MODE at 0 range 31 .. 31;
   end record;

   subtype PXP_CSC1_COEF1_C4_Field is HAL.UInt11;
   subtype PXP_CSC1_COEF1_RSVD0_Field is HAL.UInt5;
   subtype PXP_CSC1_COEF1_C1_Field is HAL.UInt11;
   subtype PXP_CSC1_COEF1_RSVD1_Field is HAL.UInt5;

   --  Color Space Conversion Coefficient Register 1
   type PXP_CSC1_COEF1_Register is record
      --  Two's compliment Blue U/Cb multiplier coefficient. YUV=0x208 (2.032)
      --  YCbCr=0x204 (2.017)
      C4    : PXP_CSC1_COEF1_C4_Field := 16#208#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_CSC1_COEF1_RSVD0_Field := 16#0#;
      --  Two's compliment Red V/Cr multiplier coefficient. YUV=0x123 (1.140)
      --  YCbCr=0x198 (1.596)
      C1    : PXP_CSC1_COEF1_C1_Field := 16#123#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_CSC1_COEF1_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CSC1_COEF1_Register use record
      C4    at 0 range 0 .. 10;
      RSVD0 at 0 range 11 .. 15;
      C1    at 0 range 16 .. 26;
      RSVD1 at 0 range 27 .. 31;
   end record;

   subtype PXP_CSC1_COEF2_C3_Field is HAL.UInt11;
   subtype PXP_CSC1_COEF2_RSVD0_Field is HAL.UInt5;
   subtype PXP_CSC1_COEF2_C2_Field is HAL.UInt11;
   subtype PXP_CSC1_COEF2_RSVD1_Field is HAL.UInt5;

   --  Color Space Conversion Coefficient Register 2
   type PXP_CSC1_COEF2_Register is record
      --  Two's complement Green U/Cb multiplier coefficient. YUV=0x79C
      --  (-0.394) YCbCr=0x79C (-0.392)
      C3    : PXP_CSC1_COEF2_C3_Field := 16#76C#;
      --  Read-only. Reserved, always set to zero.
      RSVD0 : PXP_CSC1_COEF2_RSVD0_Field := 16#0#;
      --  Two's complement Green V/Cr multiplier coefficient. YUV=0x76B
      --  (-0.581) YCbCr=0x730 (-0.813)
      C2    : PXP_CSC1_COEF2_C2_Field := 16#79B#;
      --  Read-only. Reserved, always set to zero.
      RSVD1 : PXP_CSC1_COEF2_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_CSC1_COEF2_Register use record
      C3    at 0 range 0 .. 10;
      RSVD0 at 0 range 11 .. 15;
      C2    at 0 range 16 .. 26;
      RSVD1 at 0 range 27 .. 31;
   end record;

   --  Select the low power state of the ROT memory.
   type POWER_ROT_MEM_LP_STATE_Field is
     (
      --  Memory is not in low power state.
      None,
      --  Light Sleep Mode. Low leakage mode, maintain memory contents.
      Ls,
      --  Deep Sleep Mode. Low leakage mode, maintain memory contents.
      Ds,
      --  Shut Down Mode. Shut Down periphery and core, no memory retention.
      Sd)
     with Size => 3;
   for POWER_ROT_MEM_LP_STATE_Field use
     (None => 0,
      Ls => 1,
      Ds => 2,
      Sd => 4);

   subtype PXP_POWER_CTRL_Field is HAL.UInt20;

   --  PXP Power Control Register
   type PXP_POWER_Register is record
      --  unspecified
      Reserved_0_8     : HAL.UInt9 := 16#0#;
      --  Select the low power state of the ROT memory.
      ROT_MEM_LP_STATE : POWER_ROT_MEM_LP_STATE_Field := NRF_SVD.PXP.None;
      --  Power control for the PXP.
      CTRL             : PXP_POWER_CTRL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_POWER_Register use record
      Reserved_0_8     at 0 range 0 .. 8;
      ROT_MEM_LP_STATE at 0 range 9 .. 11;
      CTRL             at 0 range 12 .. 31;
   end record;

   subtype PXP_NEXT_POINTER_Field is HAL.UInt30;

   --  Next Frame Pointer
   type PXP_NEXT_Register is record
      --  Read-only. Indicates that the "next frame" functionality has been
      --  enabled
      ENABLED : Boolean := False;
      --  Read-only. Reserved, always set to zero.
      RSVD    : Boolean := False;
      --  A pointer to a data structure containing register values to be used
      --  when processing the next frame
      POINTER : PXP_NEXT_POINTER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_NEXT_Register use record
      ENABLED at 0 range 0 .. 0;
      RSVD    at 0 range 1 .. 1;
      POINTER at 0 range 2 .. 31;
   end record;

   subtype PXP_PORTER_DUFF_CTRL_S0_S1_FACTOR_MODE_Field is HAL.UInt2;
   subtype PXP_PORTER_DUFF_CTRL_S0_GLOBAL_ALPHA_MODE_Field is HAL.UInt2;
   subtype PXP_PORTER_DUFF_CTRL_S1_S0_FACTOR_MODE_Field is HAL.UInt2;
   subtype PXP_PORTER_DUFF_CTRL_S1_GLOBAL_ALPHA_MODE_Field is HAL.UInt2;
   subtype PXP_PORTER_DUFF_CTRL_S0_GLOBAL_ALPHA_Field is HAL.UInt8;
   subtype PXP_PORTER_DUFF_CTRL_S1_GLOBAL_ALPHA_Field is HAL.UInt8;

   --  PXP Alpha Engine A Control Register.
   type PXP_PORTER_DUFF_CTRL_Register is record
      --  poter_duff enable
      POTER_DUFF_ENABLE    : Boolean := False;
      --  s0 to s1 factor mode
      S0_S1_FACTOR_MODE    : PXP_PORTER_DUFF_CTRL_S0_S1_FACTOR_MODE_Field :=
                              16#0#;
      --  s0 global alpha mode
      S0_GLOBAL_ALPHA_MODE : PXP_PORTER_DUFF_CTRL_S0_GLOBAL_ALPHA_MODE_Field :=
                              16#0#;
      --  s0 alpha mode
      S0_ALPHA_MODE        : Boolean := False;
      --  s0 color mode
      S0_COLOR_MODE        : Boolean := False;
      --  unspecified
      Reserved_7_7         : HAL.Bit := 16#0#;
      --  s1 to s0 factor mode
      S1_S0_FACTOR_MODE    : PXP_PORTER_DUFF_CTRL_S1_S0_FACTOR_MODE_Field :=
                              16#0#;
      --  s1 global alpha mode
      S1_GLOBAL_ALPHA_MODE : PXP_PORTER_DUFF_CTRL_S1_GLOBAL_ALPHA_MODE_Field :=
                              16#0#;
      --  s1 alpha mode
      S1_ALPHA_MODE        : Boolean := False;
      --  s1 color mode
      S1_COLOR_MODE        : Boolean := False;
      --  unspecified
      Reserved_14_15       : HAL.UInt2 := 16#0#;
      --  s0 global alpha
      S0_GLOBAL_ALPHA      : PXP_PORTER_DUFF_CTRL_S0_GLOBAL_ALPHA_Field :=
                              16#0#;
      --  s1 global alpha
      S1_GLOBAL_ALPHA      : PXP_PORTER_DUFF_CTRL_S1_GLOBAL_ALPHA_Field :=
                              16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PXP_PORTER_DUFF_CTRL_Register use record
      POTER_DUFF_ENABLE    at 0 range 0 .. 0;
      S0_S1_FACTOR_MODE    at 0 range 1 .. 2;
      S0_GLOBAL_ALPHA_MODE at 0 range 3 .. 4;
      S0_ALPHA_MODE        at 0 range 5 .. 5;
      S0_COLOR_MODE        at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      S1_S0_FACTOR_MODE    at 0 range 8 .. 9;
      S1_GLOBAL_ALPHA_MODE at 0 range 10 .. 11;
      S1_ALPHA_MODE        at 0 range 12 .. 12;
      S1_COLOR_MODE        at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      S0_GLOBAL_ALPHA      at 0 range 16 .. 23;
      S1_GLOBAL_ALPHA      at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PXP v2.0 Register Reference Index
   type PXP_Peripheral is record
      --  Control Register 0
      CTRL             : aliased PXP_CTRL_Register;
      --  Control Register 0
      CTRL_SET         : aliased PXP_CTRL_SET_Register;
      --  Control Register 0
      CTRL_CLR         : aliased PXP_CTRL_CLR_Register;
      --  Control Register 0
      CTRL_TOG         : aliased PXP_CTRL_TOG_Register;
      --  Status Register
      STAT             : aliased PXP_STAT_Register;
      --  Status Register
      STAT_SET         : aliased PXP_STAT_SET_Register;
      --  Status Register
      STAT_CLR         : aliased PXP_STAT_CLR_Register;
      --  Status Register
      STAT_TOG         : aliased PXP_STAT_TOG_Register;
      --  Output Buffer Control Register
      OUT_CTRL         : aliased PXP_OUT_CTRL_Register;
      --  Output Buffer Control Register
      OUT_CTRL_SET     : aliased PXP_OUT_CTRL_SET_Register;
      --  Output Buffer Control Register
      OUT_CTRL_CLR     : aliased PXP_OUT_CTRL_CLR_Register;
      --  Output Buffer Control Register
      OUT_CTRL_TOG     : aliased PXP_OUT_CTRL_TOG_Register;
      --  Output Frame Buffer Pointer
      OUT_BUF          : aliased HAL.UInt32;
      --  Output Frame Buffer Pointer #2
      OUT_BUF2         : aliased HAL.UInt32;
      --  Output Buffer Pitch
      OUT_PITCH        : aliased PXP_OUT_PITCH_Register;
      --  Output Surface Lower Right Coordinate
      OUT_LRC          : aliased PXP_OUT_LRC_Register;
      --  Processed Surface Upper Left Coordinate
      OUT_PS_ULC       : aliased PXP_OUT_PS_ULC_Register;
      --  Processed Surface Lower Right Coordinate
      OUT_PS_LRC       : aliased PXP_OUT_PS_LRC_Register;
      --  Alpha Surface Upper Left Coordinate
      OUT_AS_ULC       : aliased PXP_OUT_AS_ULC_Register;
      --  Alpha Surface Lower Right Coordinate
      OUT_AS_LRC       : aliased PXP_OUT_AS_LRC_Register;
      --  Processed Surface (PS) Control Register
      PS_CTRL          : aliased PXP_PS_CTRL_Register;
      --  Processed Surface (PS) Control Register
      PS_CTRL_SET      : aliased PXP_PS_CTRL_SET_Register;
      --  Processed Surface (PS) Control Register
      PS_CTRL_CLR      : aliased PXP_PS_CTRL_CLR_Register;
      --  Processed Surface (PS) Control Register
      PS_CTRL_TOG      : aliased PXP_PS_CTRL_TOG_Register;
      --  PS Input Buffer Address
      PS_BUF           : aliased HAL.UInt32;
      --  PS U/Cb or 2 Plane UV Input Buffer Address
      PS_UBUF          : aliased HAL.UInt32;
      --  PS V/Cr Input Buffer Address
      PS_VBUF          : aliased HAL.UInt32;
      --  Processed Surface Pitch
      PS_PITCH         : aliased PXP_PS_PITCH_Register;
      --  PS Background Color
      PS_BACKGROUND    : aliased PXP_PS_BACKGROUND_Register;
      --  PS Scale Factor Register
      PS_SCALE         : aliased PXP_PS_SCALE_Register;
      --  PS Scale Offset Register
      PS_OFFSET        : aliased PXP_PS_OFFSET_Register;
      --  PS Color Key Low
      PS_CLRKEYLOW     : aliased PXP_PS_CLRKEYLOW_Register;
      --  PS Color Key High
      PS_CLRKEYHIGH    : aliased PXP_PS_CLRKEYHIGH_Register;
      --  Alpha Surface Control
      AS_CTRL          : aliased PXP_AS_CTRL_Register;
      --  Alpha Surface Buffer Pointer
      AS_BUF           : aliased HAL.UInt32;
      --  Alpha Surface Pitch
      AS_PITCH         : aliased PXP_AS_PITCH_Register;
      --  Overlay Color Key Low
      AS_CLRKEYLOW     : aliased PXP_AS_CLRKEYLOW_Register;
      --  Overlay Color Key High
      AS_CLRKEYHIGH    : aliased PXP_AS_CLRKEYHIGH_Register;
      --  Color Space Conversion Coefficient Register 0
      CSC1_COEF0       : aliased PXP_CSC1_COEF0_Register;
      --  Color Space Conversion Coefficient Register 1
      CSC1_COEF1       : aliased PXP_CSC1_COEF1_Register;
      --  Color Space Conversion Coefficient Register 2
      CSC1_COEF2       : aliased PXP_CSC1_COEF2_Register;
      --  PXP Power Control Register
      POWER            : aliased PXP_POWER_Register;
      --  Next Frame Pointer
      NEXT             : aliased PXP_NEXT_Register;
      --  PXP Alpha Engine A Control Register.
      PORTER_DUFF_CTRL : aliased PXP_PORTER_DUFF_CTRL_Register;
   end record
     with Volatile;

   for PXP_Peripheral use record
      CTRL             at 16#0# range 0 .. 31;
      CTRL_SET         at 16#4# range 0 .. 31;
      CTRL_CLR         at 16#8# range 0 .. 31;
      CTRL_TOG         at 16#C# range 0 .. 31;
      STAT             at 16#10# range 0 .. 31;
      STAT_SET         at 16#14# range 0 .. 31;
      STAT_CLR         at 16#18# range 0 .. 31;
      STAT_TOG         at 16#1C# range 0 .. 31;
      OUT_CTRL         at 16#20# range 0 .. 31;
      OUT_CTRL_SET     at 16#24# range 0 .. 31;
      OUT_CTRL_CLR     at 16#28# range 0 .. 31;
      OUT_CTRL_TOG     at 16#2C# range 0 .. 31;
      OUT_BUF          at 16#30# range 0 .. 31;
      OUT_BUF2         at 16#40# range 0 .. 31;
      OUT_PITCH        at 16#50# range 0 .. 31;
      OUT_LRC          at 16#60# range 0 .. 31;
      OUT_PS_ULC       at 16#70# range 0 .. 31;
      OUT_PS_LRC       at 16#80# range 0 .. 31;
      OUT_AS_ULC       at 16#90# range 0 .. 31;
      OUT_AS_LRC       at 16#A0# range 0 .. 31;
      PS_CTRL          at 16#B0# range 0 .. 31;
      PS_CTRL_SET      at 16#B4# range 0 .. 31;
      PS_CTRL_CLR      at 16#B8# range 0 .. 31;
      PS_CTRL_TOG      at 16#BC# range 0 .. 31;
      PS_BUF           at 16#C0# range 0 .. 31;
      PS_UBUF          at 16#D0# range 0 .. 31;
      PS_VBUF          at 16#E0# range 0 .. 31;
      PS_PITCH         at 16#F0# range 0 .. 31;
      PS_BACKGROUND    at 16#100# range 0 .. 31;
      PS_SCALE         at 16#110# range 0 .. 31;
      PS_OFFSET        at 16#120# range 0 .. 31;
      PS_CLRKEYLOW     at 16#130# range 0 .. 31;
      PS_CLRKEYHIGH    at 16#140# range 0 .. 31;
      AS_CTRL          at 16#150# range 0 .. 31;
      AS_BUF           at 16#160# range 0 .. 31;
      AS_PITCH         at 16#170# range 0 .. 31;
      AS_CLRKEYLOW     at 16#180# range 0 .. 31;
      AS_CLRKEYHIGH    at 16#190# range 0 .. 31;
      CSC1_COEF0       at 16#1A0# range 0 .. 31;
      CSC1_COEF1       at 16#1B0# range 0 .. 31;
      CSC1_COEF2       at 16#1C0# range 0 .. 31;
      POWER            at 16#320# range 0 .. 31;
      NEXT             at 16#400# range 0 .. 31;
      PORTER_DUFF_CTRL at 16#440# range 0 .. 31;
   end record;

   --  PXP v2.0 Register Reference Index
   PXP_Periph : aliased PXP_Peripheral
     with Import, Address => System'To_Address (16#402B4000#);

end NRF_SVD.PXP;
