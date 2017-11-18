--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LCDIF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Used only when WORD_LENGTH = 3, i
   type CTRL_DATA_FORMAT_24_BIT_Field is
     (
      --  Data input to the block is in 24 bpp format, such that all RGB 888
      --  data is contained in 24 bits.
      All_24_Bits_Valid,
      --  Data input to the block is actually RGB 18 bpp, but there is 1 color
      --  per byte, hence the upper 2 bits in each byte do not contain any
      --  useful data, and should be dropped.
      Drop_Upper_2_Bits_Per_Byte)
     with Size => 1;
   for CTRL_DATA_FORMAT_24_BIT_Field use
     (All_24_Bits_Valid => 0,
      Drop_Upper_2_Bits_Per_Byte => 1);

   --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
   type CTRL_DATA_FORMAT_18_BIT_Field is
     (
      --  Data input to the block is in 18 bpp format, such that lower 18 bits
      --  contain RGB 666 and upper 14 bits do not contain any useful data.
      Lower_18_Bits_Valid,
      --  Data input to the block is in 18 bpp format, such that upper 18 bits
      --  contain RGB 666 and lower 14 bits do not contain any useful data.
      Upper_18_Bits_Valid)
     with Size => 1;
   for CTRL_DATA_FORMAT_18_BIT_Field use
     (Lower_18_Bits_Valid => 0,
      Upper_18_Bits_Valid => 1);

   --  Input data format.
   type CTRL_WORD_LENGTH_Field is
     (
      --  Input data is 16 bits per pixel.
      CTRL_WORD_LENGTH_Field_16_Bit,
      --  Input data is 8 bits wide.
      CTRL_WORD_LENGTH_Field_8_Bit,
      --  Input data is 18 bits per pixel.
      CTRL_WORD_LENGTH_Field_18_Bit,
      --  Input data is 24 bits per pixel.
      CTRL_WORD_LENGTH_Field_24_Bit)
     with Size => 2;
   for CTRL_WORD_LENGTH_Field use
     (CTRL_WORD_LENGTH_Field_16_Bit => 0,
      CTRL_WORD_LENGTH_Field_8_Bit => 1,
      CTRL_WORD_LENGTH_Field_18_Bit => 2,
      CTRL_WORD_LENGTH_Field_24_Bit => 3);

   --  LCD Data bus transfer width.
   type CTRL_LCD_DATABUS_WIDTH_Field is
     (
      --  16-bit data bus mode.
      CTRL_LCD_DATABUS_WIDTH_Field_16_Bit,
      --  8-bit data bus mode.
      CTRL_LCD_DATABUS_WIDTH_Field_8_Bit,
      --  18-bit data bus mode.
      CTRL_LCD_DATABUS_WIDTH_Field_18_Bit,
      --  24-bit data bus mode.
      CTRL_LCD_DATABUS_WIDTH_Field_24_Bit)
     with Size => 2;
   for CTRL_LCD_DATABUS_WIDTH_Field use
     (CTRL_LCD_DATABUS_WIDTH_Field_16_Bit => 0,
      CTRL_LCD_DATABUS_WIDTH_Field_8_Bit => 1,
      CTRL_LCD_DATABUS_WIDTH_Field_18_Bit => 2,
      CTRL_LCD_DATABUS_WIDTH_Field_24_Bit => 3);

   --  This field specifies how to swap the bytes after the data has been
   --  converted into an internal representation of 24 bits per pixel and
   --  before it is transmitted over the LCD interface bus
   type CTRL_CSC_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_CSC_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   --  This field specifies how to swap the bytes fetched by the bus master
   --  interface
   type CTRL_INPUT_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_INPUT_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   subtype LCDIF_CTRL_SHIFT_NUM_BITS_Field is HAL.UInt5;

   --  Use this bit to determine the direction of shift of transmit data.
   type CTRL_DATA_SHIFT_DIR_Field is
     (
      --  Data to be transmitted is shifted LEFT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Left,
      --  Data to be transmitted is shifted RIGHT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Right)
     with Size => 1;
   for CTRL_DATA_SHIFT_DIR_Field use
     (Txdata_Shift_Left => 0,
      Txdata_Shift_Right => 1);

   --  eLCDIF General Control Register
   type LCDIF_CTRL_Register is record
      --  When this bit is set by software, the eLCDIF will begin transferring
      --  data between the SoC and the display
      RUN                  : Boolean := False;
      --  Used only when WORD_LENGTH = 3, i
      DATA_FORMAT_24_BIT   : CTRL_DATA_FORMAT_24_BIT_Field :=
                              NRF_SVD.LCDIF.All_24_Bits_Valid;
      --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
      DATA_FORMAT_18_BIT   : CTRL_DATA_FORMAT_18_BIT_Field :=
                              NRF_SVD.LCDIF.Lower_18_Bits_Valid;
      --  When this bit is 1 and WORD_LENGTH = 0, it implies that the 16-bit
      --  data is in ARGB555 format
      DATA_FORMAT_16_BIT   : Boolean := False;
      --  unspecified
      Reserved_4_4         : HAL.Bit := 16#0#;
      --  Set this bit to make the eLCDIF act as a bus master
      MASTER               : Boolean := False;
      --  If this bit is set and LCDIF_MASTER bit is set, the eLCDIF will act
      --  as bus master and the handshake mechanism between eLCDIF and PXP will
      --  be turned on
      ENABLE_PXP_HANDSHAKE : Boolean := False;
      --  unspecified
      Reserved_7_7         : HAL.Bit := 16#0#;
      --  Input data format.
      WORD_LENGTH          : CTRL_WORD_LENGTH_Field :=
                              NRF_SVD.LCDIF.CTRL_WORD_LENGTH_Field_16_Bit;
      --  LCD Data bus transfer width.
      LCD_DATABUS_WIDTH    : CTRL_LCD_DATABUS_WIDTH_Field :=
                              NRF_SVD.LCDIF.CTRL_LCD_DATABUS_WIDTH_Field_16_Bit;
      --  This field specifies how to swap the bytes after the data has been
      --  converted into an internal representation of 24 bits per pixel and
      --  before it is transmitted over the LCD interface bus
      CSC_DATA_SWIZZLE     : CTRL_CSC_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  This field specifies how to swap the bytes fetched by the bus master
      --  interface
      INPUT_DATA_SWIZZLE   : CTRL_INPUT_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  unspecified
      Reserved_16_16       : HAL.Bit := 16#0#;
      --  Set this bit to 1 to make the hardware go into the DOTCLK mode, i
      DOTCLK_MODE          : Boolean := False;
      --  unspecified
      Reserved_18_18       : HAL.Bit := 16#0#;
      --  When this bit is 0, it means that eLCDIF will stop the block
      --  operation and turn off the RUN bit after the amount of data indicated
      --  by the LCDIF_TRANSFER_COUNT register has been transferred out
      BYPASS_COUNT         : Boolean := False;
      --  unspecified
      Reserved_20_20       : HAL.Bit := 16#0#;
      --  The data to be transmitted is shifted left or right by this number of
      --  bits.
      SHIFT_NUM_BITS       : LCDIF_CTRL_SHIFT_NUM_BITS_Field := 16#0#;
      --  Use this bit to determine the direction of shift of transmit data.
      DATA_SHIFT_DIR       : CTRL_DATA_SHIFT_DIR_Field :=
                              NRF_SVD.LCDIF.Txdata_Shift_Left;
      --  unspecified
      Reserved_27_29       : HAL.UInt3 := 16#0#;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  This bit must be set to zero to enable normal operation of the eLCDIF
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL_Register use record
      RUN                  at 0 range 0 .. 0;
      DATA_FORMAT_24_BIT   at 0 range 1 .. 1;
      DATA_FORMAT_18_BIT   at 0 range 2 .. 2;
      DATA_FORMAT_16_BIT   at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      MASTER               at 0 range 5 .. 5;
      ENABLE_PXP_HANDSHAKE at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      WORD_LENGTH          at 0 range 8 .. 9;
      LCD_DATABUS_WIDTH    at 0 range 10 .. 11;
      CSC_DATA_SWIZZLE     at 0 range 12 .. 13;
      INPUT_DATA_SWIZZLE   at 0 range 14 .. 15;
      Reserved_16_16       at 0 range 16 .. 16;
      DOTCLK_MODE          at 0 range 17 .. 17;
      Reserved_18_18       at 0 range 18 .. 18;
      BYPASS_COUNT         at 0 range 19 .. 19;
      Reserved_20_20       at 0 range 20 .. 20;
      SHIFT_NUM_BITS       at 0 range 21 .. 25;
      DATA_SHIFT_DIR       at 0 range 26 .. 26;
      Reserved_27_29       at 0 range 27 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Used only when WORD_LENGTH = 3, i
   type CTRL_SET_DATA_FORMAT_24_BIT_Field is
     (
      --  Data input to the block is in 24 bpp format, such that all RGB 888
      --  data is contained in 24 bits.
      All_24_Bits_Valid,
      --  Data input to the block is actually RGB 18 bpp, but there is 1 color
      --  per byte, hence the upper 2 bits in each byte do not contain any
      --  useful data, and should be dropped.
      Drop_Upper_2_Bits_Per_Byte)
     with Size => 1;
   for CTRL_SET_DATA_FORMAT_24_BIT_Field use
     (All_24_Bits_Valid => 0,
      Drop_Upper_2_Bits_Per_Byte => 1);

   --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
   type CTRL_SET_DATA_FORMAT_18_BIT_Field is
     (
      --  Data input to the block is in 18 bpp format, such that lower 18 bits
      --  contain RGB 666 and upper 14 bits do not contain any useful data.
      Lower_18_Bits_Valid,
      --  Data input to the block is in 18 bpp format, such that upper 18 bits
      --  contain RGB 666 and lower 14 bits do not contain any useful data.
      Upper_18_Bits_Valid)
     with Size => 1;
   for CTRL_SET_DATA_FORMAT_18_BIT_Field use
     (Lower_18_Bits_Valid => 0,
      Upper_18_Bits_Valid => 1);

   --  Input data format.
   type CTRL_SET_WORD_LENGTH_Field is
     (
      --  Input data is 16 bits per pixel.
      CTRL_SET_WORD_LENGTH_Field_16_Bit,
      --  Input data is 8 bits wide.
      CTRL_SET_WORD_LENGTH_Field_8_Bit,
      --  Input data is 18 bits per pixel.
      CTRL_SET_WORD_LENGTH_Field_18_Bit,
      --  Input data is 24 bits per pixel.
      CTRL_SET_WORD_LENGTH_Field_24_Bit)
     with Size => 2;
   for CTRL_SET_WORD_LENGTH_Field use
     (CTRL_SET_WORD_LENGTH_Field_16_Bit => 0,
      CTRL_SET_WORD_LENGTH_Field_8_Bit => 1,
      CTRL_SET_WORD_LENGTH_Field_18_Bit => 2,
      CTRL_SET_WORD_LENGTH_Field_24_Bit => 3);

   --  LCD Data bus transfer width.
   type CTRL_SET_LCD_DATABUS_WIDTH_Field is
     (
      --  16-bit data bus mode.
      CTRL_SET_LCD_DATABUS_WIDTH_Field_16_Bit,
      --  8-bit data bus mode.
      CTRL_SET_LCD_DATABUS_WIDTH_Field_8_Bit,
      --  18-bit data bus mode.
      CTRL_SET_LCD_DATABUS_WIDTH_Field_18_Bit,
      --  24-bit data bus mode.
      CTRL_SET_LCD_DATABUS_WIDTH_Field_24_Bit)
     with Size => 2;
   for CTRL_SET_LCD_DATABUS_WIDTH_Field use
     (CTRL_SET_LCD_DATABUS_WIDTH_Field_16_Bit => 0,
      CTRL_SET_LCD_DATABUS_WIDTH_Field_8_Bit => 1,
      CTRL_SET_LCD_DATABUS_WIDTH_Field_18_Bit => 2,
      CTRL_SET_LCD_DATABUS_WIDTH_Field_24_Bit => 3);

   --  This field specifies how to swap the bytes after the data has been
   --  converted into an internal representation of 24 bits per pixel and
   --  before it is transmitted over the LCD interface bus
   type CTRL_SET_CSC_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_SET_CSC_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   --  This field specifies how to swap the bytes fetched by the bus master
   --  interface
   type CTRL_SET_INPUT_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_SET_INPUT_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   subtype LCDIF_CTRL_SET_SHIFT_NUM_BITS_Field is HAL.UInt5;

   --  Use this bit to determine the direction of shift of transmit data.
   type CTRL_SET_DATA_SHIFT_DIR_Field is
     (
      --  Data to be transmitted is shifted LEFT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Left,
      --  Data to be transmitted is shifted RIGHT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Right)
     with Size => 1;
   for CTRL_SET_DATA_SHIFT_DIR_Field use
     (Txdata_Shift_Left => 0,
      Txdata_Shift_Right => 1);

   --  eLCDIF General Control Register
   type LCDIF_CTRL_SET_Register is record
      --  When this bit is set by software, the eLCDIF will begin transferring
      --  data between the SoC and the display
      RUN                  : Boolean := False;
      --  Used only when WORD_LENGTH = 3, i
      DATA_FORMAT_24_BIT   : CTRL_SET_DATA_FORMAT_24_BIT_Field :=
                              NRF_SVD.LCDIF.All_24_Bits_Valid;
      --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
      DATA_FORMAT_18_BIT   : CTRL_SET_DATA_FORMAT_18_BIT_Field :=
                              NRF_SVD.LCDIF.Lower_18_Bits_Valid;
      --  When this bit is 1 and WORD_LENGTH = 0, it implies that the 16-bit
      --  data is in ARGB555 format
      DATA_FORMAT_16_BIT   : Boolean := False;
      --  unspecified
      Reserved_4_4         : HAL.Bit := 16#0#;
      --  Set this bit to make the eLCDIF act as a bus master
      MASTER               : Boolean := False;
      --  If this bit is set and LCDIF_MASTER bit is set, the eLCDIF will act
      --  as bus master and the handshake mechanism between eLCDIF and PXP will
      --  be turned on
      ENABLE_PXP_HANDSHAKE : Boolean := False;
      --  unspecified
      Reserved_7_7         : HAL.Bit := 16#0#;
      --  Input data format.
      WORD_LENGTH          : CTRL_SET_WORD_LENGTH_Field :=
                              NRF_SVD.LCDIF.CTRL_SET_WORD_LENGTH_Field_16_Bit;
      --  LCD Data bus transfer width.
      LCD_DATABUS_WIDTH    : CTRL_SET_LCD_DATABUS_WIDTH_Field :=
                              NRF_SVD.LCDIF.CTRL_SET_LCD_DATABUS_WIDTH_Field_16_Bit;
      --  This field specifies how to swap the bytes after the data has been
      --  converted into an internal representation of 24 bits per pixel and
      --  before it is transmitted over the LCD interface bus
      CSC_DATA_SWIZZLE     : CTRL_SET_CSC_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  This field specifies how to swap the bytes fetched by the bus master
      --  interface
      INPUT_DATA_SWIZZLE   : CTRL_SET_INPUT_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  unspecified
      Reserved_16_16       : HAL.Bit := 16#0#;
      --  Set this bit to 1 to make the hardware go into the DOTCLK mode, i
      DOTCLK_MODE          : Boolean := False;
      --  unspecified
      Reserved_18_18       : HAL.Bit := 16#0#;
      --  When this bit is 0, it means that eLCDIF will stop the block
      --  operation and turn off the RUN bit after the amount of data indicated
      --  by the LCDIF_TRANSFER_COUNT register has been transferred out
      BYPASS_COUNT         : Boolean := False;
      --  unspecified
      Reserved_20_20       : HAL.Bit := 16#0#;
      --  The data to be transmitted is shifted left or right by this number of
      --  bits.
      SHIFT_NUM_BITS       : LCDIF_CTRL_SET_SHIFT_NUM_BITS_Field := 16#0#;
      --  Use this bit to determine the direction of shift of transmit data.
      DATA_SHIFT_DIR       : CTRL_SET_DATA_SHIFT_DIR_Field :=
                              NRF_SVD.LCDIF.Txdata_Shift_Left;
      --  unspecified
      Reserved_27_29       : HAL.UInt3 := 16#0#;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  This bit must be set to zero to enable normal operation of the eLCDIF
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL_SET_Register use record
      RUN                  at 0 range 0 .. 0;
      DATA_FORMAT_24_BIT   at 0 range 1 .. 1;
      DATA_FORMAT_18_BIT   at 0 range 2 .. 2;
      DATA_FORMAT_16_BIT   at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      MASTER               at 0 range 5 .. 5;
      ENABLE_PXP_HANDSHAKE at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      WORD_LENGTH          at 0 range 8 .. 9;
      LCD_DATABUS_WIDTH    at 0 range 10 .. 11;
      CSC_DATA_SWIZZLE     at 0 range 12 .. 13;
      INPUT_DATA_SWIZZLE   at 0 range 14 .. 15;
      Reserved_16_16       at 0 range 16 .. 16;
      DOTCLK_MODE          at 0 range 17 .. 17;
      Reserved_18_18       at 0 range 18 .. 18;
      BYPASS_COUNT         at 0 range 19 .. 19;
      Reserved_20_20       at 0 range 20 .. 20;
      SHIFT_NUM_BITS       at 0 range 21 .. 25;
      DATA_SHIFT_DIR       at 0 range 26 .. 26;
      Reserved_27_29       at 0 range 27 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Used only when WORD_LENGTH = 3, i
   type CTRL_CLR_DATA_FORMAT_24_BIT_Field is
     (
      --  Data input to the block is in 24 bpp format, such that all RGB 888
      --  data is contained in 24 bits.
      All_24_Bits_Valid,
      --  Data input to the block is actually RGB 18 bpp, but there is 1 color
      --  per byte, hence the upper 2 bits in each byte do not contain any
      --  useful data, and should be dropped.
      Drop_Upper_2_Bits_Per_Byte)
     with Size => 1;
   for CTRL_CLR_DATA_FORMAT_24_BIT_Field use
     (All_24_Bits_Valid => 0,
      Drop_Upper_2_Bits_Per_Byte => 1);

   --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
   type CTRL_CLR_DATA_FORMAT_18_BIT_Field is
     (
      --  Data input to the block is in 18 bpp format, such that lower 18 bits
      --  contain RGB 666 and upper 14 bits do not contain any useful data.
      Lower_18_Bits_Valid,
      --  Data input to the block is in 18 bpp format, such that upper 18 bits
      --  contain RGB 666 and lower 14 bits do not contain any useful data.
      Upper_18_Bits_Valid)
     with Size => 1;
   for CTRL_CLR_DATA_FORMAT_18_BIT_Field use
     (Lower_18_Bits_Valid => 0,
      Upper_18_Bits_Valid => 1);

   --  Input data format.
   type CTRL_CLR_WORD_LENGTH_Field is
     (
      --  Input data is 16 bits per pixel.
      CTRL_CLR_WORD_LENGTH_Field_16_Bit,
      --  Input data is 8 bits wide.
      CTRL_CLR_WORD_LENGTH_Field_8_Bit,
      --  Input data is 18 bits per pixel.
      CTRL_CLR_WORD_LENGTH_Field_18_Bit,
      --  Input data is 24 bits per pixel.
      CTRL_CLR_WORD_LENGTH_Field_24_Bit)
     with Size => 2;
   for CTRL_CLR_WORD_LENGTH_Field use
     (CTRL_CLR_WORD_LENGTH_Field_16_Bit => 0,
      CTRL_CLR_WORD_LENGTH_Field_8_Bit => 1,
      CTRL_CLR_WORD_LENGTH_Field_18_Bit => 2,
      CTRL_CLR_WORD_LENGTH_Field_24_Bit => 3);

   --  LCD Data bus transfer width.
   type CTRL_CLR_LCD_DATABUS_WIDTH_Field is
     (
      --  16-bit data bus mode.
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_16_Bit,
      --  8-bit data bus mode.
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_8_Bit,
      --  18-bit data bus mode.
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_18_Bit,
      --  24-bit data bus mode.
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_24_Bit)
     with Size => 2;
   for CTRL_CLR_LCD_DATABUS_WIDTH_Field use
     (CTRL_CLR_LCD_DATABUS_WIDTH_Field_16_Bit => 0,
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_8_Bit => 1,
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_18_Bit => 2,
      CTRL_CLR_LCD_DATABUS_WIDTH_Field_24_Bit => 3);

   --  This field specifies how to swap the bytes after the data has been
   --  converted into an internal representation of 24 bits per pixel and
   --  before it is transmitted over the LCD interface bus
   type CTRL_CLR_CSC_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_CLR_CSC_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   --  This field specifies how to swap the bytes fetched by the bus master
   --  interface
   type CTRL_CLR_INPUT_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_CLR_INPUT_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   subtype LCDIF_CTRL_CLR_SHIFT_NUM_BITS_Field is HAL.UInt5;

   --  Use this bit to determine the direction of shift of transmit data.
   type CTRL_CLR_DATA_SHIFT_DIR_Field is
     (
      --  Data to be transmitted is shifted LEFT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Left,
      --  Data to be transmitted is shifted RIGHT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Right)
     with Size => 1;
   for CTRL_CLR_DATA_SHIFT_DIR_Field use
     (Txdata_Shift_Left => 0,
      Txdata_Shift_Right => 1);

   --  eLCDIF General Control Register
   type LCDIF_CTRL_CLR_Register is record
      --  When this bit is set by software, the eLCDIF will begin transferring
      --  data between the SoC and the display
      RUN                  : Boolean := False;
      --  Used only when WORD_LENGTH = 3, i
      DATA_FORMAT_24_BIT   : CTRL_CLR_DATA_FORMAT_24_BIT_Field :=
                              NRF_SVD.LCDIF.All_24_Bits_Valid;
      --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
      DATA_FORMAT_18_BIT   : CTRL_CLR_DATA_FORMAT_18_BIT_Field :=
                              NRF_SVD.LCDIF.Lower_18_Bits_Valid;
      --  When this bit is 1 and WORD_LENGTH = 0, it implies that the 16-bit
      --  data is in ARGB555 format
      DATA_FORMAT_16_BIT   : Boolean := False;
      --  unspecified
      Reserved_4_4         : HAL.Bit := 16#0#;
      --  Set this bit to make the eLCDIF act as a bus master
      MASTER               : Boolean := False;
      --  If this bit is set and LCDIF_MASTER bit is set, the eLCDIF will act
      --  as bus master and the handshake mechanism between eLCDIF and PXP will
      --  be turned on
      ENABLE_PXP_HANDSHAKE : Boolean := False;
      --  unspecified
      Reserved_7_7         : HAL.Bit := 16#0#;
      --  Input data format.
      WORD_LENGTH          : CTRL_CLR_WORD_LENGTH_Field :=
                              NRF_SVD.LCDIF.CTRL_CLR_WORD_LENGTH_Field_16_Bit;
      --  LCD Data bus transfer width.
      LCD_DATABUS_WIDTH    : CTRL_CLR_LCD_DATABUS_WIDTH_Field :=
                              NRF_SVD.LCDIF.CTRL_CLR_LCD_DATABUS_WIDTH_Field_16_Bit;
      --  This field specifies how to swap the bytes after the data has been
      --  converted into an internal representation of 24 bits per pixel and
      --  before it is transmitted over the LCD interface bus
      CSC_DATA_SWIZZLE     : CTRL_CLR_CSC_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  This field specifies how to swap the bytes fetched by the bus master
      --  interface
      INPUT_DATA_SWIZZLE   : CTRL_CLR_INPUT_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  unspecified
      Reserved_16_16       : HAL.Bit := 16#0#;
      --  Set this bit to 1 to make the hardware go into the DOTCLK mode, i
      DOTCLK_MODE          : Boolean := False;
      --  unspecified
      Reserved_18_18       : HAL.Bit := 16#0#;
      --  When this bit is 0, it means that eLCDIF will stop the block
      --  operation and turn off the RUN bit after the amount of data indicated
      --  by the LCDIF_TRANSFER_COUNT register has been transferred out
      BYPASS_COUNT         : Boolean := False;
      --  unspecified
      Reserved_20_20       : HAL.Bit := 16#0#;
      --  The data to be transmitted is shifted left or right by this number of
      --  bits.
      SHIFT_NUM_BITS       : LCDIF_CTRL_CLR_SHIFT_NUM_BITS_Field := 16#0#;
      --  Use this bit to determine the direction of shift of transmit data.
      DATA_SHIFT_DIR       : CTRL_CLR_DATA_SHIFT_DIR_Field :=
                              NRF_SVD.LCDIF.Txdata_Shift_Left;
      --  unspecified
      Reserved_27_29       : HAL.UInt3 := 16#0#;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  This bit must be set to zero to enable normal operation of the eLCDIF
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL_CLR_Register use record
      RUN                  at 0 range 0 .. 0;
      DATA_FORMAT_24_BIT   at 0 range 1 .. 1;
      DATA_FORMAT_18_BIT   at 0 range 2 .. 2;
      DATA_FORMAT_16_BIT   at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      MASTER               at 0 range 5 .. 5;
      ENABLE_PXP_HANDSHAKE at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      WORD_LENGTH          at 0 range 8 .. 9;
      LCD_DATABUS_WIDTH    at 0 range 10 .. 11;
      CSC_DATA_SWIZZLE     at 0 range 12 .. 13;
      INPUT_DATA_SWIZZLE   at 0 range 14 .. 15;
      Reserved_16_16       at 0 range 16 .. 16;
      DOTCLK_MODE          at 0 range 17 .. 17;
      Reserved_18_18       at 0 range 18 .. 18;
      BYPASS_COUNT         at 0 range 19 .. 19;
      Reserved_20_20       at 0 range 20 .. 20;
      SHIFT_NUM_BITS       at 0 range 21 .. 25;
      DATA_SHIFT_DIR       at 0 range 26 .. 26;
      Reserved_27_29       at 0 range 27 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Used only when WORD_LENGTH = 3, i
   type CTRL_TOG_DATA_FORMAT_24_BIT_Field is
     (
      --  Data input to the block is in 24 bpp format, such that all RGB 888
      --  data is contained in 24 bits.
      All_24_Bits_Valid,
      --  Data input to the block is actually RGB 18 bpp, but there is 1 color
      --  per byte, hence the upper 2 bits in each byte do not contain any
      --  useful data, and should be dropped.
      Drop_Upper_2_Bits_Per_Byte)
     with Size => 1;
   for CTRL_TOG_DATA_FORMAT_24_BIT_Field use
     (All_24_Bits_Valid => 0,
      Drop_Upper_2_Bits_Per_Byte => 1);

   --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
   type CTRL_TOG_DATA_FORMAT_18_BIT_Field is
     (
      --  Data input to the block is in 18 bpp format, such that lower 18 bits
      --  contain RGB 666 and upper 14 bits do not contain any useful data.
      Lower_18_Bits_Valid,
      --  Data input to the block is in 18 bpp format, such that upper 18 bits
      --  contain RGB 666 and lower 14 bits do not contain any useful data.
      Upper_18_Bits_Valid)
     with Size => 1;
   for CTRL_TOG_DATA_FORMAT_18_BIT_Field use
     (Lower_18_Bits_Valid => 0,
      Upper_18_Bits_Valid => 1);

   --  Input data format.
   type CTRL_TOG_WORD_LENGTH_Field is
     (
      --  Input data is 16 bits per pixel.
      CTRL_TOG_WORD_LENGTH_Field_16_Bit,
      --  Input data is 8 bits wide.
      CTRL_TOG_WORD_LENGTH_Field_8_Bit,
      --  Input data is 18 bits per pixel.
      CTRL_TOG_WORD_LENGTH_Field_18_Bit,
      --  Input data is 24 bits per pixel.
      CTRL_TOG_WORD_LENGTH_Field_24_Bit)
     with Size => 2;
   for CTRL_TOG_WORD_LENGTH_Field use
     (CTRL_TOG_WORD_LENGTH_Field_16_Bit => 0,
      CTRL_TOG_WORD_LENGTH_Field_8_Bit => 1,
      CTRL_TOG_WORD_LENGTH_Field_18_Bit => 2,
      CTRL_TOG_WORD_LENGTH_Field_24_Bit => 3);

   --  LCD Data bus transfer width.
   type CTRL_TOG_LCD_DATABUS_WIDTH_Field is
     (
      --  16-bit data bus mode.
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_16_Bit,
      --  8-bit data bus mode.
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_8_Bit,
      --  18-bit data bus mode.
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_18_Bit,
      --  24-bit data bus mode.
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_24_Bit)
     with Size => 2;
   for CTRL_TOG_LCD_DATABUS_WIDTH_Field use
     (CTRL_TOG_LCD_DATABUS_WIDTH_Field_16_Bit => 0,
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_8_Bit => 1,
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_18_Bit => 2,
      CTRL_TOG_LCD_DATABUS_WIDTH_Field_24_Bit => 3);

   --  This field specifies how to swap the bytes after the data has been
   --  converted into an internal representation of 24 bits per pixel and
   --  before it is transmitted over the LCD interface bus
   type CTRL_TOG_CSC_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_TOG_CSC_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   --  This field specifies how to swap the bytes fetched by the bus master
   --  interface
   type CTRL_TOG_INPUT_DATA_SWIZZLE_Field is
     (
      --  No byte swapping.(Little endian)
      No_Swap,
      --  Big Endian swap (swap bytes 0,3 and 1,2).
      Big_Endian_Swap,
      --  Swap half-words.
      Hwd_Swap,
      --  Swap bytes within each half-word.
      Hwd_Byte_Swap)
     with Size => 2;
   for CTRL_TOG_INPUT_DATA_SWIZZLE_Field use
     (No_Swap => 0,
      Big_Endian_Swap => 1,
      Hwd_Swap => 2,
      Hwd_Byte_Swap => 3);

   subtype LCDIF_CTRL_TOG_SHIFT_NUM_BITS_Field is HAL.UInt5;

   --  Use this bit to determine the direction of shift of transmit data.
   type CTRL_TOG_DATA_SHIFT_DIR_Field is
     (
      --  Data to be transmitted is shifted LEFT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Left,
      --  Data to be transmitted is shifted RIGHT by SHIFT_NUM_BITS bits.
      Txdata_Shift_Right)
     with Size => 1;
   for CTRL_TOG_DATA_SHIFT_DIR_Field use
     (Txdata_Shift_Left => 0,
      Txdata_Shift_Right => 1);

   --  eLCDIF General Control Register
   type LCDIF_CTRL_TOG_Register is record
      --  When this bit is set by software, the eLCDIF will begin transferring
      --  data between the SoC and the display
      RUN                  : Boolean := False;
      --  Used only when WORD_LENGTH = 3, i
      DATA_FORMAT_24_BIT   : CTRL_TOG_DATA_FORMAT_24_BIT_Field :=
                              NRF_SVD.LCDIF.All_24_Bits_Valid;
      --  Used only when WORD_LENGTH = 2, i.e. 18-bit.
      DATA_FORMAT_18_BIT   : CTRL_TOG_DATA_FORMAT_18_BIT_Field :=
                              NRF_SVD.LCDIF.Lower_18_Bits_Valid;
      --  When this bit is 1 and WORD_LENGTH = 0, it implies that the 16-bit
      --  data is in ARGB555 format
      DATA_FORMAT_16_BIT   : Boolean := False;
      --  unspecified
      Reserved_4_4         : HAL.Bit := 16#0#;
      --  Set this bit to make the eLCDIF act as a bus master
      MASTER               : Boolean := False;
      --  If this bit is set and LCDIF_MASTER bit is set, the eLCDIF will act
      --  as bus master and the handshake mechanism between eLCDIF and PXP will
      --  be turned on
      ENABLE_PXP_HANDSHAKE : Boolean := False;
      --  unspecified
      Reserved_7_7         : HAL.Bit := 16#0#;
      --  Input data format.
      WORD_LENGTH          : CTRL_TOG_WORD_LENGTH_Field :=
                              NRF_SVD.LCDIF.CTRL_TOG_WORD_LENGTH_Field_16_Bit;
      --  LCD Data bus transfer width.
      LCD_DATABUS_WIDTH    : CTRL_TOG_LCD_DATABUS_WIDTH_Field :=
                              NRF_SVD.LCDIF.CTRL_TOG_LCD_DATABUS_WIDTH_Field_16_Bit;
      --  This field specifies how to swap the bytes after the data has been
      --  converted into an internal representation of 24 bits per pixel and
      --  before it is transmitted over the LCD interface bus
      CSC_DATA_SWIZZLE     : CTRL_TOG_CSC_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  This field specifies how to swap the bytes fetched by the bus master
      --  interface
      INPUT_DATA_SWIZZLE   : CTRL_TOG_INPUT_DATA_SWIZZLE_Field :=
                              NRF_SVD.LCDIF.No_Swap;
      --  unspecified
      Reserved_16_16       : HAL.Bit := 16#0#;
      --  Set this bit to 1 to make the hardware go into the DOTCLK mode, i
      DOTCLK_MODE          : Boolean := False;
      --  unspecified
      Reserved_18_18       : HAL.Bit := 16#0#;
      --  When this bit is 0, it means that eLCDIF will stop the block
      --  operation and turn off the RUN bit after the amount of data indicated
      --  by the LCDIF_TRANSFER_COUNT register has been transferred out
      BYPASS_COUNT         : Boolean := False;
      --  unspecified
      Reserved_20_20       : HAL.Bit := 16#0#;
      --  The data to be transmitted is shifted left or right by this number of
      --  bits.
      SHIFT_NUM_BITS       : LCDIF_CTRL_TOG_SHIFT_NUM_BITS_Field := 16#0#;
      --  Use this bit to determine the direction of shift of transmit data.
      DATA_SHIFT_DIR       : CTRL_TOG_DATA_SHIFT_DIR_Field :=
                              NRF_SVD.LCDIF.Txdata_Shift_Left;
      --  unspecified
      Reserved_27_29       : HAL.UInt3 := 16#0#;
      --  This bit must be set to zero for normal operation
      CLKGATE              : Boolean := True;
      --  This bit must be set to zero to enable normal operation of the eLCDIF
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL_TOG_Register use record
      RUN                  at 0 range 0 .. 0;
      DATA_FORMAT_24_BIT   at 0 range 1 .. 1;
      DATA_FORMAT_18_BIT   at 0 range 2 .. 2;
      DATA_FORMAT_16_BIT   at 0 range 3 .. 3;
      Reserved_4_4         at 0 range 4 .. 4;
      MASTER               at 0 range 5 .. 5;
      ENABLE_PXP_HANDSHAKE at 0 range 6 .. 6;
      Reserved_7_7         at 0 range 7 .. 7;
      WORD_LENGTH          at 0 range 8 .. 9;
      LCD_DATABUS_WIDTH    at 0 range 10 .. 11;
      CSC_DATA_SWIZZLE     at 0 range 12 .. 13;
      INPUT_DATA_SWIZZLE   at 0 range 14 .. 15;
      Reserved_16_16       at 0 range 16 .. 16;
      DOTCLK_MODE          at 0 range 17 .. 17;
      Reserved_18_18       at 0 range 18 .. 18;
      BYPASS_COUNT         at 0 range 19 .. 19;
      Reserved_20_20       at 0 range 20 .. 20;
      SHIFT_NUM_BITS       at 0 range 21 .. 25;
      DATA_SHIFT_DIR       at 0 range 26 .. 26;
      Reserved_27_29       at 0 range 27 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_VSYNC_EDGE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_VSYNC_EDGE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_CUR_FRAME_DONE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_CUR_FRAME_DONE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_UNDERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_UNDERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_OVERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_OVERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   subtype LCDIF_CTRL1_BYTE_PACKING_FORMAT_Field is HAL.UInt4;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_BM_ERROR_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_BM_ERROR_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  eLCDIF General Control1 Register
   type LCDIF_CTRL1_Register is record
      --  unspecified
      Reserved_0_7                      : HAL.UInt8 := 16#0#;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      VSYNC_EDGE_IRQ                    : CTRL1_VSYNC_EDGE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      CUR_FRAME_DONE_IRQ                : CTRL1_CUR_FRAME_DONE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      UNDERFLOW_IRQ                     : CTRL1_UNDERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      OVERFLOW_IRQ                      : CTRL1_OVERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable an interrupt every time the hardware
      --  encounters the leading VSYNC edge in the VSYNC and DOTCLK modes, or
      --  the beginning of every field in DVI mode
      VSYNC_EDGE_IRQ_EN                 : Boolean := False;
      --  This bit is set to 1 enable an interrupt every time the hardware
      --  enters in the vertical blanking state
      CUR_FRAME_DONE_IRQ_EN             : Boolean := False;
      --  This bit is set to enable an underflow interrupt in the TXFIFO in the
      --  write mode.
      UNDERFLOW_IRQ_EN                  : Boolean := False;
      --  This bit is set to enable an overflow interrupt in the TXFIFO in the
      --  write mode.
      OVERFLOW_IRQ_EN                   : Boolean := False;
      --  This bitfield is used to show which data bytes in a 32-bit word are
      --  valid
      BYTE_PACKING_FORMAT               : LCDIF_CTRL1_BYTE_PACKING_FORMAT_Field :=
                                           16#F#;
      --  If this bit is set, the eLCDIF block will assert the cur_frame_done
      --  interrupt only on alternate fields, otherwise it will issue the
      --  interrupt on both odd and even field
      IRQ_ON_ALTERNATE_FIELDS           : Boolean := False;
      --  Set this bit to clear all the data in the latency FIFO (LFIFO),
      --  TXFIFO and the RXFIFO.
      FIFO_CLEAR                        : Boolean := False;
      --  The default is to grab the odd lines first and then the even lines
      START_INTERLACE_FROM_SECOND_FIELD : Boolean := False;
      --  Set this bit if it is required that the eLCDIF block fetches odd
      --  lines in one field and even lines in the other field
      INTERLACE_FIELDS                  : Boolean := False;
      --  Set this bit to enable the eLCDIF block to recover in the next
      --  field/frame if there was an underflow in the current field/frame
      RECOVER_ON_UNDERFLOW              : Boolean := False;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      BM_ERROR_IRQ                      : CTRL1_BM_ERROR_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable bus master error interrupt in the eLCDIF
      --  master mode.
      BM_ERROR_IRQ_EN                   : Boolean := False;
      --  unspecified
      Reserved_27_29                    : HAL.UInt3 := 16#0#;
      --  This bit is CS0/CS1 valid select signals
      CS_OUT_SELECT                     : Boolean := False;
      --  Command Mode MIPI image data select bit
      IMAGE_DATA_SELECT                 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL1_Register use record
      Reserved_0_7                      at 0 range 0 .. 7;
      VSYNC_EDGE_IRQ                    at 0 range 8 .. 8;
      CUR_FRAME_DONE_IRQ                at 0 range 9 .. 9;
      UNDERFLOW_IRQ                     at 0 range 10 .. 10;
      OVERFLOW_IRQ                      at 0 range 11 .. 11;
      VSYNC_EDGE_IRQ_EN                 at 0 range 12 .. 12;
      CUR_FRAME_DONE_IRQ_EN             at 0 range 13 .. 13;
      UNDERFLOW_IRQ_EN                  at 0 range 14 .. 14;
      OVERFLOW_IRQ_EN                   at 0 range 15 .. 15;
      BYTE_PACKING_FORMAT               at 0 range 16 .. 19;
      IRQ_ON_ALTERNATE_FIELDS           at 0 range 20 .. 20;
      FIFO_CLEAR                        at 0 range 21 .. 21;
      START_INTERLACE_FROM_SECOND_FIELD at 0 range 22 .. 22;
      INTERLACE_FIELDS                  at 0 range 23 .. 23;
      RECOVER_ON_UNDERFLOW              at 0 range 24 .. 24;
      BM_ERROR_IRQ                      at 0 range 25 .. 25;
      BM_ERROR_IRQ_EN                   at 0 range 26 .. 26;
      Reserved_27_29                    at 0 range 27 .. 29;
      CS_OUT_SELECT                     at 0 range 30 .. 30;
      IMAGE_DATA_SELECT                 at 0 range 31 .. 31;
   end record;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_SET_VSYNC_EDGE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_SET_VSYNC_EDGE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_SET_CUR_FRAME_DONE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_SET_CUR_FRAME_DONE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_SET_UNDERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_SET_UNDERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_SET_OVERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_SET_OVERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   subtype LCDIF_CTRL1_SET_BYTE_PACKING_FORMAT_Field is HAL.UInt4;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_SET_BM_ERROR_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_SET_BM_ERROR_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  eLCDIF General Control1 Register
   type LCDIF_CTRL1_SET_Register is record
      --  unspecified
      Reserved_0_7                      : HAL.UInt8 := 16#0#;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      VSYNC_EDGE_IRQ                    : CTRL1_SET_VSYNC_EDGE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      CUR_FRAME_DONE_IRQ                : CTRL1_SET_CUR_FRAME_DONE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      UNDERFLOW_IRQ                     : CTRL1_SET_UNDERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      OVERFLOW_IRQ                      : CTRL1_SET_OVERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable an interrupt every time the hardware
      --  encounters the leading VSYNC edge in the VSYNC and DOTCLK modes, or
      --  the beginning of every field in DVI mode
      VSYNC_EDGE_IRQ_EN                 : Boolean := False;
      --  This bit is set to 1 enable an interrupt every time the hardware
      --  enters in the vertical blanking state
      CUR_FRAME_DONE_IRQ_EN             : Boolean := False;
      --  This bit is set to enable an underflow interrupt in the TXFIFO in the
      --  write mode.
      UNDERFLOW_IRQ_EN                  : Boolean := False;
      --  This bit is set to enable an overflow interrupt in the TXFIFO in the
      --  write mode.
      OVERFLOW_IRQ_EN                   : Boolean := False;
      --  This bitfield is used to show which data bytes in a 32-bit word are
      --  valid
      BYTE_PACKING_FORMAT               : LCDIF_CTRL1_SET_BYTE_PACKING_FORMAT_Field :=
                                           16#F#;
      --  If this bit is set, the eLCDIF block will assert the cur_frame_done
      --  interrupt only on alternate fields, otherwise it will issue the
      --  interrupt on both odd and even field
      IRQ_ON_ALTERNATE_FIELDS           : Boolean := False;
      --  Set this bit to clear all the data in the latency FIFO (LFIFO),
      --  TXFIFO and the RXFIFO.
      FIFO_CLEAR                        : Boolean := False;
      --  The default is to grab the odd lines first and then the even lines
      START_INTERLACE_FROM_SECOND_FIELD : Boolean := False;
      --  Set this bit if it is required that the eLCDIF block fetches odd
      --  lines in one field and even lines in the other field
      INTERLACE_FIELDS                  : Boolean := False;
      --  Set this bit to enable the eLCDIF block to recover in the next
      --  field/frame if there was an underflow in the current field/frame
      RECOVER_ON_UNDERFLOW              : Boolean := False;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      BM_ERROR_IRQ                      : CTRL1_SET_BM_ERROR_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable bus master error interrupt in the eLCDIF
      --  master mode.
      BM_ERROR_IRQ_EN                   : Boolean := False;
      --  unspecified
      Reserved_27_29                    : HAL.UInt3 := 16#0#;
      --  This bit is CS0/CS1 valid select signals
      CS_OUT_SELECT                     : Boolean := False;
      --  Command Mode MIPI image data select bit
      IMAGE_DATA_SELECT                 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL1_SET_Register use record
      Reserved_0_7                      at 0 range 0 .. 7;
      VSYNC_EDGE_IRQ                    at 0 range 8 .. 8;
      CUR_FRAME_DONE_IRQ                at 0 range 9 .. 9;
      UNDERFLOW_IRQ                     at 0 range 10 .. 10;
      OVERFLOW_IRQ                      at 0 range 11 .. 11;
      VSYNC_EDGE_IRQ_EN                 at 0 range 12 .. 12;
      CUR_FRAME_DONE_IRQ_EN             at 0 range 13 .. 13;
      UNDERFLOW_IRQ_EN                  at 0 range 14 .. 14;
      OVERFLOW_IRQ_EN                   at 0 range 15 .. 15;
      BYTE_PACKING_FORMAT               at 0 range 16 .. 19;
      IRQ_ON_ALTERNATE_FIELDS           at 0 range 20 .. 20;
      FIFO_CLEAR                        at 0 range 21 .. 21;
      START_INTERLACE_FROM_SECOND_FIELD at 0 range 22 .. 22;
      INTERLACE_FIELDS                  at 0 range 23 .. 23;
      RECOVER_ON_UNDERFLOW              at 0 range 24 .. 24;
      BM_ERROR_IRQ                      at 0 range 25 .. 25;
      BM_ERROR_IRQ_EN                   at 0 range 26 .. 26;
      Reserved_27_29                    at 0 range 27 .. 29;
      CS_OUT_SELECT                     at 0 range 30 .. 30;
      IMAGE_DATA_SELECT                 at 0 range 31 .. 31;
   end record;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_CLR_VSYNC_EDGE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_CLR_VSYNC_EDGE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_CLR_CUR_FRAME_DONE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_CLR_CUR_FRAME_DONE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_CLR_UNDERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_CLR_UNDERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_CLR_OVERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_CLR_OVERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   subtype LCDIF_CTRL1_CLR_BYTE_PACKING_FORMAT_Field is HAL.UInt4;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_CLR_BM_ERROR_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_CLR_BM_ERROR_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  eLCDIF General Control1 Register
   type LCDIF_CTRL1_CLR_Register is record
      --  unspecified
      Reserved_0_7                      : HAL.UInt8 := 16#0#;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      VSYNC_EDGE_IRQ                    : CTRL1_CLR_VSYNC_EDGE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      CUR_FRAME_DONE_IRQ                : CTRL1_CLR_CUR_FRAME_DONE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      UNDERFLOW_IRQ                     : CTRL1_CLR_UNDERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      OVERFLOW_IRQ                      : CTRL1_CLR_OVERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable an interrupt every time the hardware
      --  encounters the leading VSYNC edge in the VSYNC and DOTCLK modes, or
      --  the beginning of every field in DVI mode
      VSYNC_EDGE_IRQ_EN                 : Boolean := False;
      --  This bit is set to 1 enable an interrupt every time the hardware
      --  enters in the vertical blanking state
      CUR_FRAME_DONE_IRQ_EN             : Boolean := False;
      --  This bit is set to enable an underflow interrupt in the TXFIFO in the
      --  write mode.
      UNDERFLOW_IRQ_EN                  : Boolean := False;
      --  This bit is set to enable an overflow interrupt in the TXFIFO in the
      --  write mode.
      OVERFLOW_IRQ_EN                   : Boolean := False;
      --  This bitfield is used to show which data bytes in a 32-bit word are
      --  valid
      BYTE_PACKING_FORMAT               : LCDIF_CTRL1_CLR_BYTE_PACKING_FORMAT_Field :=
                                           16#F#;
      --  If this bit is set, the eLCDIF block will assert the cur_frame_done
      --  interrupt only on alternate fields, otherwise it will issue the
      --  interrupt on both odd and even field
      IRQ_ON_ALTERNATE_FIELDS           : Boolean := False;
      --  Set this bit to clear all the data in the latency FIFO (LFIFO),
      --  TXFIFO and the RXFIFO.
      FIFO_CLEAR                        : Boolean := False;
      --  The default is to grab the odd lines first and then the even lines
      START_INTERLACE_FROM_SECOND_FIELD : Boolean := False;
      --  Set this bit if it is required that the eLCDIF block fetches odd
      --  lines in one field and even lines in the other field
      INTERLACE_FIELDS                  : Boolean := False;
      --  Set this bit to enable the eLCDIF block to recover in the next
      --  field/frame if there was an underflow in the current field/frame
      RECOVER_ON_UNDERFLOW              : Boolean := False;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      BM_ERROR_IRQ                      : CTRL1_CLR_BM_ERROR_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable bus master error interrupt in the eLCDIF
      --  master mode.
      BM_ERROR_IRQ_EN                   : Boolean := False;
      --  unspecified
      Reserved_27_29                    : HAL.UInt3 := 16#0#;
      --  This bit is CS0/CS1 valid select signals
      CS_OUT_SELECT                     : Boolean := False;
      --  Command Mode MIPI image data select bit
      IMAGE_DATA_SELECT                 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL1_CLR_Register use record
      Reserved_0_7                      at 0 range 0 .. 7;
      VSYNC_EDGE_IRQ                    at 0 range 8 .. 8;
      CUR_FRAME_DONE_IRQ                at 0 range 9 .. 9;
      UNDERFLOW_IRQ                     at 0 range 10 .. 10;
      OVERFLOW_IRQ                      at 0 range 11 .. 11;
      VSYNC_EDGE_IRQ_EN                 at 0 range 12 .. 12;
      CUR_FRAME_DONE_IRQ_EN             at 0 range 13 .. 13;
      UNDERFLOW_IRQ_EN                  at 0 range 14 .. 14;
      OVERFLOW_IRQ_EN                   at 0 range 15 .. 15;
      BYTE_PACKING_FORMAT               at 0 range 16 .. 19;
      IRQ_ON_ALTERNATE_FIELDS           at 0 range 20 .. 20;
      FIFO_CLEAR                        at 0 range 21 .. 21;
      START_INTERLACE_FROM_SECOND_FIELD at 0 range 22 .. 22;
      INTERLACE_FIELDS                  at 0 range 23 .. 23;
      RECOVER_ON_UNDERFLOW              at 0 range 24 .. 24;
      BM_ERROR_IRQ                      at 0 range 25 .. 25;
      BM_ERROR_IRQ_EN                   at 0 range 26 .. 26;
      Reserved_27_29                    at 0 range 27 .. 29;
      CS_OUT_SELECT                     at 0 range 30 .. 30;
      IMAGE_DATA_SELECT                 at 0 range 31 .. 31;
   end record;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_TOG_VSYNC_EDGE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_TOG_VSYNC_EDGE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_TOG_CUR_FRAME_DONE_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_TOG_CUR_FRAME_DONE_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_TOG_UNDERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_TOG_UNDERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_TOG_OVERFLOW_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_TOG_OVERFLOW_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   subtype LCDIF_CTRL1_TOG_BYTE_PACKING_FORMAT_Field is HAL.UInt4;

   --  This bit is set to indicate that an interrupt is requested by the eLCDIF
   --  block
   type CTRL1_TOG_BM_ERROR_IRQ_Field is
     (
      --  No Interrupt Request Pending.
      No_Request,
      --  Interrupt Request Pending.
      Request)
     with Size => 1;
   for CTRL1_TOG_BM_ERROR_IRQ_Field use
     (No_Request => 0,
      Request => 1);

   --  eLCDIF General Control1 Register
   type LCDIF_CTRL1_TOG_Register is record
      --  unspecified
      Reserved_0_7                      : HAL.UInt8 := 16#0#;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      VSYNC_EDGE_IRQ                    : CTRL1_TOG_VSYNC_EDGE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      CUR_FRAME_DONE_IRQ                : CTRL1_TOG_CUR_FRAME_DONE_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      UNDERFLOW_IRQ                     : CTRL1_TOG_UNDERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      OVERFLOW_IRQ                      : CTRL1_TOG_OVERFLOW_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable an interrupt every time the hardware
      --  encounters the leading VSYNC edge in the VSYNC and DOTCLK modes, or
      --  the beginning of every field in DVI mode
      VSYNC_EDGE_IRQ_EN                 : Boolean := False;
      --  This bit is set to 1 enable an interrupt every time the hardware
      --  enters in the vertical blanking state
      CUR_FRAME_DONE_IRQ_EN             : Boolean := False;
      --  This bit is set to enable an underflow interrupt in the TXFIFO in the
      --  write mode.
      UNDERFLOW_IRQ_EN                  : Boolean := False;
      --  This bit is set to enable an overflow interrupt in the TXFIFO in the
      --  write mode.
      OVERFLOW_IRQ_EN                   : Boolean := False;
      --  This bitfield is used to show which data bytes in a 32-bit word are
      --  valid
      BYTE_PACKING_FORMAT               : LCDIF_CTRL1_TOG_BYTE_PACKING_FORMAT_Field :=
                                           16#F#;
      --  If this bit is set, the eLCDIF block will assert the cur_frame_done
      --  interrupt only on alternate fields, otherwise it will issue the
      --  interrupt on both odd and even field
      IRQ_ON_ALTERNATE_FIELDS           : Boolean := False;
      --  Set this bit to clear all the data in the latency FIFO (LFIFO),
      --  TXFIFO and the RXFIFO.
      FIFO_CLEAR                        : Boolean := False;
      --  The default is to grab the odd lines first and then the even lines
      START_INTERLACE_FROM_SECOND_FIELD : Boolean := False;
      --  Set this bit if it is required that the eLCDIF block fetches odd
      --  lines in one field and even lines in the other field
      INTERLACE_FIELDS                  : Boolean := False;
      --  Set this bit to enable the eLCDIF block to recover in the next
      --  field/frame if there was an underflow in the current field/frame
      RECOVER_ON_UNDERFLOW              : Boolean := False;
      --  This bit is set to indicate that an interrupt is requested by the
      --  eLCDIF block
      BM_ERROR_IRQ                      : CTRL1_TOG_BM_ERROR_IRQ_Field :=
                                           NRF_SVD.LCDIF.No_Request;
      --  This bit is set to enable bus master error interrupt in the eLCDIF
      --  master mode.
      BM_ERROR_IRQ_EN                   : Boolean := False;
      --  unspecified
      Reserved_27_29                    : HAL.UInt3 := 16#0#;
      --  This bit is CS0/CS1 valid select signals
      CS_OUT_SELECT                     : Boolean := False;
      --  Command Mode MIPI image data select bit
      IMAGE_DATA_SELECT                 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL1_TOG_Register use record
      Reserved_0_7                      at 0 range 0 .. 7;
      VSYNC_EDGE_IRQ                    at 0 range 8 .. 8;
      CUR_FRAME_DONE_IRQ                at 0 range 9 .. 9;
      UNDERFLOW_IRQ                     at 0 range 10 .. 10;
      OVERFLOW_IRQ                      at 0 range 11 .. 11;
      VSYNC_EDGE_IRQ_EN                 at 0 range 12 .. 12;
      CUR_FRAME_DONE_IRQ_EN             at 0 range 13 .. 13;
      UNDERFLOW_IRQ_EN                  at 0 range 14 .. 14;
      OVERFLOW_IRQ_EN                   at 0 range 15 .. 15;
      BYTE_PACKING_FORMAT               at 0 range 16 .. 19;
      IRQ_ON_ALTERNATE_FIELDS           at 0 range 20 .. 20;
      FIFO_CLEAR                        at 0 range 21 .. 21;
      START_INTERLACE_FROM_SECOND_FIELD at 0 range 22 .. 22;
      INTERLACE_FIELDS                  at 0 range 23 .. 23;
      RECOVER_ON_UNDERFLOW              at 0 range 24 .. 24;
      BM_ERROR_IRQ                      at 0 range 25 .. 25;
      BM_ERROR_IRQ_EN                   at 0 range 26 .. 26;
      Reserved_27_29                    at 0 range 27 .. 29;
      CS_OUT_SELECT                     at 0 range 30 .. 30;
      IMAGE_DATA_SELECT                 at 0 range 31 .. 31;
   end record;

   --  This field determines the order of the RGB components of each pixel in
   --  EVEN lines (line numbers 2,4,6,
   type CTRL2_EVEN_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_EVEN_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This field determines the order of the RGB components of each pixel in
   --  ODD lines (line numbers 1,3,5,
   type CTRL2_ODD_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_ODD_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This bitfield indicates the maximum number of outstanding transactions
   --  that eLCDIF should request when it is acting as a bus master
   type CTRL2_OUTSTANDING_REQS_Field is
     (
      --  REQ_1
      Req_1,
      --  REQ_2
      Req_2,
      --  REQ_4
      Req_4,
      --  REQ_8
      Req_8,
      --  REQ_16
      Req_16)
     with Size => 3;
   for CTRL2_OUTSTANDING_REQS_Field use
     (Req_1 => 0,
      Req_2 => 1,
      Req_4 => 2,
      Req_8 => 3,
      Req_16 => 4);

   --  eLCDIF General Control2 Register
   type LCDIF_CTRL2_Register is record
      --  unspecified
      Reserved_0_11     : HAL.UInt12 := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in EVEN lines (line numbers 2,4,6,
      EVEN_LINE_PATTERN : CTRL2_EVEN_LINE_PATTERN_Field := NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in ODD lines (line numbers 1,3,5,
      ODD_LINE_PATTERN  : CTRL2_ODD_LINE_PATTERN_Field := NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_19_19    : HAL.Bit := 16#0#;
      --  By default, when the eLCDIF is in the bus master mode, it will issue
      --  AXI bursts of length 16 (except when in packed 24 bpp mode, it will
      --  issue bursts of length 15)
      BURST_LEN_8       : Boolean := False;
      --  This bitfield indicates the maximum number of outstanding
      --  transactions that eLCDIF should request when it is acting as a bus
      --  master
      OUTSTANDING_REQS  : CTRL2_OUTSTANDING_REQS_Field := NRF_SVD.LCDIF.Req_2;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL2_Register use record
      Reserved_0_11     at 0 range 0 .. 11;
      EVEN_LINE_PATTERN at 0 range 12 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      ODD_LINE_PATTERN  at 0 range 16 .. 18;
      Reserved_19_19    at 0 range 19 .. 19;
      BURST_LEN_8       at 0 range 20 .. 20;
      OUTSTANDING_REQS  at 0 range 21 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  This field determines the order of the RGB components of each pixel in
   --  EVEN lines (line numbers 2,4,6,
   type CTRL2_SET_EVEN_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_SET_EVEN_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This field determines the order of the RGB components of each pixel in
   --  ODD lines (line numbers 1,3,5,
   type CTRL2_SET_ODD_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_SET_ODD_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This bitfield indicates the maximum number of outstanding transactions
   --  that eLCDIF should request when it is acting as a bus master
   type CTRL2_SET_OUTSTANDING_REQS_Field is
     (
      --  REQ_1
      Req_1,
      --  REQ_2
      Req_2,
      --  REQ_4
      Req_4,
      --  REQ_8
      Req_8,
      --  REQ_16
      Req_16)
     with Size => 3;
   for CTRL2_SET_OUTSTANDING_REQS_Field use
     (Req_1 => 0,
      Req_2 => 1,
      Req_4 => 2,
      Req_8 => 3,
      Req_16 => 4);

   --  eLCDIF General Control2 Register
   type LCDIF_CTRL2_SET_Register is record
      --  unspecified
      Reserved_0_11     : HAL.UInt12 := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in EVEN lines (line numbers 2,4,6,
      EVEN_LINE_PATTERN : CTRL2_SET_EVEN_LINE_PATTERN_Field :=
                           NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in ODD lines (line numbers 1,3,5,
      ODD_LINE_PATTERN  : CTRL2_SET_ODD_LINE_PATTERN_Field :=
                           NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_19_19    : HAL.Bit := 16#0#;
      --  By default, when the eLCDIF is in the bus master mode, it will issue
      --  AXI bursts of length 16 (except when in packed 24 bpp mode, it will
      --  issue bursts of length 15)
      BURST_LEN_8       : Boolean := False;
      --  This bitfield indicates the maximum number of outstanding
      --  transactions that eLCDIF should request when it is acting as a bus
      --  master
      OUTSTANDING_REQS  : CTRL2_SET_OUTSTANDING_REQS_Field :=
                           NRF_SVD.LCDIF.Req_2;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL2_SET_Register use record
      Reserved_0_11     at 0 range 0 .. 11;
      EVEN_LINE_PATTERN at 0 range 12 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      ODD_LINE_PATTERN  at 0 range 16 .. 18;
      Reserved_19_19    at 0 range 19 .. 19;
      BURST_LEN_8       at 0 range 20 .. 20;
      OUTSTANDING_REQS  at 0 range 21 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  This field determines the order of the RGB components of each pixel in
   --  EVEN lines (line numbers 2,4,6,
   type CTRL2_CLR_EVEN_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_CLR_EVEN_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This field determines the order of the RGB components of each pixel in
   --  ODD lines (line numbers 1,3,5,
   type CTRL2_CLR_ODD_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_CLR_ODD_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This bitfield indicates the maximum number of outstanding transactions
   --  that eLCDIF should request when it is acting as a bus master
   type CTRL2_CLR_OUTSTANDING_REQS_Field is
     (
      --  REQ_1
      Req_1,
      --  REQ_2
      Req_2,
      --  REQ_4
      Req_4,
      --  REQ_8
      Req_8,
      --  REQ_16
      Req_16)
     with Size => 3;
   for CTRL2_CLR_OUTSTANDING_REQS_Field use
     (Req_1 => 0,
      Req_2 => 1,
      Req_4 => 2,
      Req_8 => 3,
      Req_16 => 4);

   --  eLCDIF General Control2 Register
   type LCDIF_CTRL2_CLR_Register is record
      --  unspecified
      Reserved_0_11     : HAL.UInt12 := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in EVEN lines (line numbers 2,4,6,
      EVEN_LINE_PATTERN : CTRL2_CLR_EVEN_LINE_PATTERN_Field :=
                           NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in ODD lines (line numbers 1,3,5,
      ODD_LINE_PATTERN  : CTRL2_CLR_ODD_LINE_PATTERN_Field :=
                           NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_19_19    : HAL.Bit := 16#0#;
      --  By default, when the eLCDIF is in the bus master mode, it will issue
      --  AXI bursts of length 16 (except when in packed 24 bpp mode, it will
      --  issue bursts of length 15)
      BURST_LEN_8       : Boolean := False;
      --  This bitfield indicates the maximum number of outstanding
      --  transactions that eLCDIF should request when it is acting as a bus
      --  master
      OUTSTANDING_REQS  : CTRL2_CLR_OUTSTANDING_REQS_Field :=
                           NRF_SVD.LCDIF.Req_2;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL2_CLR_Register use record
      Reserved_0_11     at 0 range 0 .. 11;
      EVEN_LINE_PATTERN at 0 range 12 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      ODD_LINE_PATTERN  at 0 range 16 .. 18;
      Reserved_19_19    at 0 range 19 .. 19;
      BURST_LEN_8       at 0 range 20 .. 20;
      OUTSTANDING_REQS  at 0 range 21 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  This field determines the order of the RGB components of each pixel in
   --  EVEN lines (line numbers 2,4,6,
   type CTRL2_TOG_EVEN_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_TOG_EVEN_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This field determines the order of the RGB components of each pixel in
   --  ODD lines (line numbers 1,3,5,
   type CTRL2_TOG_ODD_LINE_PATTERN_Field is
     (
      --  RGB
      Rgb,
      --  RBG
      Rbg,
      --  GBR
      Gbr,
      --  GRB
      Grb,
      --  BRG
      Brg,
      --  BGR
      Bgr)
     with Size => 3;
   for CTRL2_TOG_ODD_LINE_PATTERN_Field use
     (Rgb => 0,
      Rbg => 1,
      Gbr => 2,
      Grb => 3,
      Brg => 4,
      Bgr => 5);

   --  This bitfield indicates the maximum number of outstanding transactions
   --  that eLCDIF should request when it is acting as a bus master
   type CTRL2_TOG_OUTSTANDING_REQS_Field is
     (
      --  REQ_1
      Req_1,
      --  REQ_2
      Req_2,
      --  REQ_4
      Req_4,
      --  REQ_8
      Req_8,
      --  REQ_16
      Req_16)
     with Size => 3;
   for CTRL2_TOG_OUTSTANDING_REQS_Field use
     (Req_1 => 0,
      Req_2 => 1,
      Req_4 => 2,
      Req_8 => 3,
      Req_16 => 4);

   --  eLCDIF General Control2 Register
   type LCDIF_CTRL2_TOG_Register is record
      --  unspecified
      Reserved_0_11     : HAL.UInt12 := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in EVEN lines (line numbers 2,4,6,
      EVEN_LINE_PATTERN : CTRL2_TOG_EVEN_LINE_PATTERN_Field :=
                           NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  This field determines the order of the RGB components of each pixel
      --  in ODD lines (line numbers 1,3,5,
      ODD_LINE_PATTERN  : CTRL2_TOG_ODD_LINE_PATTERN_Field :=
                           NRF_SVD.LCDIF.Rgb;
      --  unspecified
      Reserved_19_19    : HAL.Bit := 16#0#;
      --  By default, when the eLCDIF is in the bus master mode, it will issue
      --  AXI bursts of length 16 (except when in packed 24 bpp mode, it will
      --  issue bursts of length 15)
      BURST_LEN_8       : Boolean := False;
      --  This bitfield indicates the maximum number of outstanding
      --  transactions that eLCDIF should request when it is acting as a bus
      --  master
      OUTSTANDING_REQS  : CTRL2_TOG_OUTSTANDING_REQS_Field :=
                           NRF_SVD.LCDIF.Req_2;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_CTRL2_TOG_Register use record
      Reserved_0_11     at 0 range 0 .. 11;
      EVEN_LINE_PATTERN at 0 range 12 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      ODD_LINE_PATTERN  at 0 range 16 .. 18;
      Reserved_19_19    at 0 range 19 .. 19;
      BURST_LEN_8       at 0 range 20 .. 20;
      OUTSTANDING_REQS  at 0 range 21 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   subtype LCDIF_TRANSFER_COUNT_H_COUNT_Field is HAL.UInt16;
   subtype LCDIF_TRANSFER_COUNT_V_COUNT_Field is HAL.UInt16;

   --  eLCDIF Horizontal and Vertical Valid Data Count Register
   type LCDIF_TRANSFER_COUNT_Register is record
      --  Total valid data (pixels) in each horizontal line
      H_COUNT : LCDIF_TRANSFER_COUNT_H_COUNT_Field := 16#0#;
      --  Number of horizontal lines per frame which contain valid data
      V_COUNT : LCDIF_TRANSFER_COUNT_V_COUNT_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_TRANSFER_COUNT_Register use record
      H_COUNT at 0 range 0 .. 15;
      V_COUNT at 0 range 16 .. 31;
   end record;

   subtype LCDIF_VDCTRL0_VSYNC_PULSE_WIDTH_Field is HAL.UInt18;

   --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
   type LCDIF_VDCTRL0_Register is record
      --  Number of units for which VSYNC signal is active
      VSYNC_PULSE_WIDTH      : LCDIF_VDCTRL0_VSYNC_PULSE_WIDTH_Field := 16#0#;
      --  When this bit is 0, the first field (VSYNC period) will end in half a
      --  horizontal line and the second field will begin with half a
      --  horizontal line
      HALF_LINE_MODE         : Boolean := False;
      --  Setting this bit to 1 will make the total VSYNC period equal to the
      --  VSYNC_PERIOD field plus half the HORIZONTAL_PERIOD field (i
      HALF_LINE              : Boolean := False;
      --  Default 0 for counting VSYNC_PULSE_WIDTH in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PULSE_WIDTH_UNIT : Boolean := False;
      --  Default 0 for counting VSYNC_PERIOD in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PERIOD_UNIT      : Boolean := False;
      --  unspecified
      Reserved_22_23         : HAL.UInt2 := 16#0#;
      --  Default 0 active low during valid data transfer on each horizontal
      --  line.
      ENABLE_POL             : Boolean := False;
      --  Default is data launched at negative edge of DOTCLK and captured at
      --  positive edge
      DOTCLK_POL             : Boolean := False;
      --  Default 0 active low during HSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the HSYNC period
      HSYNC_POL              : Boolean := False;
      --  Default 0 active low during VSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the VSYNC period
      VSYNC_POL              : Boolean := False;
      --  Setting this bit to 1 will make the hardware generate the ENABLE
      --  signal in the DOTCLK mode, thereby making it the true RGB interface
      --  along with the remaining three signals VSYNC, HSYNC and DOTCLK
      ENABLE_PRESENT         : Boolean := False;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL0_Register use record
      VSYNC_PULSE_WIDTH      at 0 range 0 .. 17;
      HALF_LINE_MODE         at 0 range 18 .. 18;
      HALF_LINE              at 0 range 19 .. 19;
      VSYNC_PULSE_WIDTH_UNIT at 0 range 20 .. 20;
      VSYNC_PERIOD_UNIT      at 0 range 21 .. 21;
      Reserved_22_23         at 0 range 22 .. 23;
      ENABLE_POL             at 0 range 24 .. 24;
      DOTCLK_POL             at 0 range 25 .. 25;
      HSYNC_POL              at 0 range 26 .. 26;
      VSYNC_POL              at 0 range 27 .. 27;
      ENABLE_PRESENT         at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   subtype LCDIF_VDCTRL0_SET_VSYNC_PULSE_WIDTH_Field is HAL.UInt18;

   --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
   type LCDIF_VDCTRL0_SET_Register is record
      --  Number of units for which VSYNC signal is active
      VSYNC_PULSE_WIDTH      : LCDIF_VDCTRL0_SET_VSYNC_PULSE_WIDTH_Field :=
                                16#0#;
      --  When this bit is 0, the first field (VSYNC period) will end in half a
      --  horizontal line and the second field will begin with half a
      --  horizontal line
      HALF_LINE_MODE         : Boolean := False;
      --  Setting this bit to 1 will make the total VSYNC period equal to the
      --  VSYNC_PERIOD field plus half the HORIZONTAL_PERIOD field (i
      HALF_LINE              : Boolean := False;
      --  Default 0 for counting VSYNC_PULSE_WIDTH in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PULSE_WIDTH_UNIT : Boolean := False;
      --  Default 0 for counting VSYNC_PERIOD in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PERIOD_UNIT      : Boolean := False;
      --  unspecified
      Reserved_22_23         : HAL.UInt2 := 16#0#;
      --  Default 0 active low during valid data transfer on each horizontal
      --  line.
      ENABLE_POL             : Boolean := False;
      --  Default is data launched at negative edge of DOTCLK and captured at
      --  positive edge
      DOTCLK_POL             : Boolean := False;
      --  Default 0 active low during HSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the HSYNC period
      HSYNC_POL              : Boolean := False;
      --  Default 0 active low during VSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the VSYNC period
      VSYNC_POL              : Boolean := False;
      --  Setting this bit to 1 will make the hardware generate the ENABLE
      --  signal in the DOTCLK mode, thereby making it the true RGB interface
      --  along with the remaining three signals VSYNC, HSYNC and DOTCLK
      ENABLE_PRESENT         : Boolean := False;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL0_SET_Register use record
      VSYNC_PULSE_WIDTH      at 0 range 0 .. 17;
      HALF_LINE_MODE         at 0 range 18 .. 18;
      HALF_LINE              at 0 range 19 .. 19;
      VSYNC_PULSE_WIDTH_UNIT at 0 range 20 .. 20;
      VSYNC_PERIOD_UNIT      at 0 range 21 .. 21;
      Reserved_22_23         at 0 range 22 .. 23;
      ENABLE_POL             at 0 range 24 .. 24;
      DOTCLK_POL             at 0 range 25 .. 25;
      HSYNC_POL              at 0 range 26 .. 26;
      VSYNC_POL              at 0 range 27 .. 27;
      ENABLE_PRESENT         at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   subtype LCDIF_VDCTRL0_CLR_VSYNC_PULSE_WIDTH_Field is HAL.UInt18;

   --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
   type LCDIF_VDCTRL0_CLR_Register is record
      --  Number of units for which VSYNC signal is active
      VSYNC_PULSE_WIDTH      : LCDIF_VDCTRL0_CLR_VSYNC_PULSE_WIDTH_Field :=
                                16#0#;
      --  When this bit is 0, the first field (VSYNC period) will end in half a
      --  horizontal line and the second field will begin with half a
      --  horizontal line
      HALF_LINE_MODE         : Boolean := False;
      --  Setting this bit to 1 will make the total VSYNC period equal to the
      --  VSYNC_PERIOD field plus half the HORIZONTAL_PERIOD field (i
      HALF_LINE              : Boolean := False;
      --  Default 0 for counting VSYNC_PULSE_WIDTH in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PULSE_WIDTH_UNIT : Boolean := False;
      --  Default 0 for counting VSYNC_PERIOD in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PERIOD_UNIT      : Boolean := False;
      --  unspecified
      Reserved_22_23         : HAL.UInt2 := 16#0#;
      --  Default 0 active low during valid data transfer on each horizontal
      --  line.
      ENABLE_POL             : Boolean := False;
      --  Default is data launched at negative edge of DOTCLK and captured at
      --  positive edge
      DOTCLK_POL             : Boolean := False;
      --  Default 0 active low during HSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the HSYNC period
      HSYNC_POL              : Boolean := False;
      --  Default 0 active low during VSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the VSYNC period
      VSYNC_POL              : Boolean := False;
      --  Setting this bit to 1 will make the hardware generate the ENABLE
      --  signal in the DOTCLK mode, thereby making it the true RGB interface
      --  along with the remaining three signals VSYNC, HSYNC and DOTCLK
      ENABLE_PRESENT         : Boolean := False;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL0_CLR_Register use record
      VSYNC_PULSE_WIDTH      at 0 range 0 .. 17;
      HALF_LINE_MODE         at 0 range 18 .. 18;
      HALF_LINE              at 0 range 19 .. 19;
      VSYNC_PULSE_WIDTH_UNIT at 0 range 20 .. 20;
      VSYNC_PERIOD_UNIT      at 0 range 21 .. 21;
      Reserved_22_23         at 0 range 22 .. 23;
      ENABLE_POL             at 0 range 24 .. 24;
      DOTCLK_POL             at 0 range 25 .. 25;
      HSYNC_POL              at 0 range 26 .. 26;
      VSYNC_POL              at 0 range 27 .. 27;
      ENABLE_PRESENT         at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   subtype LCDIF_VDCTRL0_TOG_VSYNC_PULSE_WIDTH_Field is HAL.UInt18;

   --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
   type LCDIF_VDCTRL0_TOG_Register is record
      --  Number of units for which VSYNC signal is active
      VSYNC_PULSE_WIDTH      : LCDIF_VDCTRL0_TOG_VSYNC_PULSE_WIDTH_Field :=
                                16#0#;
      --  When this bit is 0, the first field (VSYNC period) will end in half a
      --  horizontal line and the second field will begin with half a
      --  horizontal line
      HALF_LINE_MODE         : Boolean := False;
      --  Setting this bit to 1 will make the total VSYNC period equal to the
      --  VSYNC_PERIOD field plus half the HORIZONTAL_PERIOD field (i
      HALF_LINE              : Boolean := False;
      --  Default 0 for counting VSYNC_PULSE_WIDTH in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PULSE_WIDTH_UNIT : Boolean := False;
      --  Default 0 for counting VSYNC_PERIOD in terms of DISPLAY CLOCK
      --  (pix_clk) cycles
      VSYNC_PERIOD_UNIT      : Boolean := False;
      --  unspecified
      Reserved_22_23         : HAL.UInt2 := 16#0#;
      --  Default 0 active low during valid data transfer on each horizontal
      --  line.
      ENABLE_POL             : Boolean := False;
      --  Default is data launched at negative edge of DOTCLK and captured at
      --  positive edge
      DOTCLK_POL             : Boolean := False;
      --  Default 0 active low during HSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the HSYNC period
      HSYNC_POL              : Boolean := False;
      --  Default 0 active low during VSYNC_PULSE_WIDTH time and will be high
      --  during the rest of the VSYNC period
      VSYNC_POL              : Boolean := False;
      --  Setting this bit to 1 will make the hardware generate the ENABLE
      --  signal in the DOTCLK mode, thereby making it the true RGB interface
      --  along with the remaining three signals VSYNC, HSYNC and DOTCLK
      ENABLE_PRESENT         : Boolean := False;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL0_TOG_Register use record
      VSYNC_PULSE_WIDTH      at 0 range 0 .. 17;
      HALF_LINE_MODE         at 0 range 18 .. 18;
      HALF_LINE              at 0 range 19 .. 19;
      VSYNC_PULSE_WIDTH_UNIT at 0 range 20 .. 20;
      VSYNC_PERIOD_UNIT      at 0 range 21 .. 21;
      Reserved_22_23         at 0 range 22 .. 23;
      ENABLE_POL             at 0 range 24 .. 24;
      DOTCLK_POL             at 0 range 25 .. 25;
      HSYNC_POL              at 0 range 26 .. 26;
      VSYNC_POL              at 0 range 27 .. 27;
      ENABLE_PRESENT         at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   subtype LCDIF_VDCTRL2_HSYNC_PERIOD_Field is HAL.UInt18;
   subtype LCDIF_VDCTRL2_HSYNC_PULSE_WIDTH_Field is HAL.UInt14;

   --  LCDIF VSYNC Mode and Dotclk Mode Control Register2
   type LCDIF_VDCTRL2_Register is record
      --  Total number of DISPLAY CLOCK (pix_clk) cycles between two positive
      --  or two negative edges of the HSYNC signal
      HSYNC_PERIOD      : LCDIF_VDCTRL2_HSYNC_PERIOD_Field := 16#0#;
      --  Number of DISPLAY CLOCK (pix_clk) cycles for which HSYNC signal is
      --  active.
      HSYNC_PULSE_WIDTH : LCDIF_VDCTRL2_HSYNC_PULSE_WIDTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL2_Register use record
      HSYNC_PERIOD      at 0 range 0 .. 17;
      HSYNC_PULSE_WIDTH at 0 range 18 .. 31;
   end record;

   subtype LCDIF_VDCTRL3_VERTICAL_WAIT_CNT_Field is HAL.UInt16;
   subtype LCDIF_VDCTRL3_HORIZONTAL_WAIT_CNT_Field is HAL.UInt12;

   --  eLCDIF VSYNC Mode and Dotclk Mode Control Register3
   type LCDIF_VDCTRL3_Register is record
      --  In the VSYNC interface mode, wait for this number of DISPLAY CLOCK
      --  (pix_clk) cycles from the falling VSYNC edge (or rising if VSYNC_POL
      --  is 1) before starting LCD transactions and is applicable only if
      --  WAIT_FOR_VSYNC_EDGE is set
      VERTICAL_WAIT_CNT   : LCDIF_VDCTRL3_VERTICAL_WAIT_CNT_Field := 16#0#;
      --  In the DOTCLK mode, wait for this number of clocks from falling edge
      --  (or rising if HSYNC_POL is 1) of HSYNC signal to account for
      --  horizontal back porch plus the number of DOTCLKs before the moving
      --  picture information begins
      HORIZONTAL_WAIT_CNT : LCDIF_VDCTRL3_HORIZONTAL_WAIT_CNT_Field := 16#0#;
      --  This bit must be set to 1 in the VSYNC mode of operation, and 0 in
      --  the DOTCLK mode of operation.
      VSYNC_ONLY          : Boolean := False;
      --  When this bit is set, the eLCDIF block will internally mux HSYNC with
      --  LCD_D14, DOTCLK with LCD_D13 and ENABLE with LCD_D12, otherwise these
      --  signals will go out on separate pins
      MUX_SYNC_SIGNALS    : Boolean := False;
      --  unspecified
      Reserved_30_31      : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL3_Register use record
      VERTICAL_WAIT_CNT   at 0 range 0 .. 15;
      HORIZONTAL_WAIT_CNT at 0 range 16 .. 27;
      VSYNC_ONLY          at 0 range 28 .. 28;
      MUX_SYNC_SIGNALS    at 0 range 29 .. 29;
      Reserved_30_31      at 0 range 30 .. 31;
   end record;

   subtype LCDIF_VDCTRL4_DOTCLK_H_VALID_DATA_CNT_Field is HAL.UInt18;
   subtype LCDIF_VDCTRL4_DOTCLK_DLY_SEL_Field is HAL.UInt3;

   --  eLCDIF VSYNC Mode and Dotclk Mode Control Register4
   type LCDIF_VDCTRL4_Register is record
      --  Total number of DISPLAY CLOCK (pix_clk) cycles on each horizontal
      --  line that carry valid data in DOTCLK mode
      DOTCLK_H_VALID_DATA_CNT : LCDIF_VDCTRL4_DOTCLK_H_VALID_DATA_CNT_Field :=
                                 16#0#;
      --  Set this field to 1 if the LCD controller requires that the VSYNC or
      --  VSYNC/HSYNC/DOTCLK control signals should be active at least one
      --  frame before the data transfers actually start and remain active at
      --  least one frame after the data transfers end
      SYNC_SIGNALS_ON         : Boolean := False;
      --  unspecified
      Reserved_19_28          : HAL.UInt10 := 16#0#;
      --  This bitfield selects the amount of time by which the DOTCLK signal
      --  should be delayed before coming out of the LCD_DOTCK pin
      DOTCLK_DLY_SEL          : LCDIF_VDCTRL4_DOTCLK_DLY_SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_VDCTRL4_Register use record
      DOTCLK_H_VALID_DATA_CNT at 0 range 0 .. 17;
      SYNC_SIGNALS_ON         at 0 range 18 .. 18;
      Reserved_19_28          at 0 range 19 .. 28;
      DOTCLK_DLY_SEL          at 0 range 29 .. 31;
   end record;

   subtype LCDIF_STAT_LFIFO_COUNT_Field is HAL.UInt9;

   --  LCD Interface Status Register
   type LCDIF_STAT_Register is record
      --  Read-only. Read only view of the current count in Latency buffer
      --  (LFIFO).
      LFIFO_COUNT   : LCDIF_STAT_LFIFO_COUNT_Field;
      --  unspecified
      Reserved_9_25 : HAL.UInt17;
      --  Read-only. Read only view of the signals that indicates LCD TXFIFO is
      --  empty.
      TXFIFO_EMPTY  : Boolean;
      --  Read-only. Read only view of the signals that indicates LCD TXFIFO is
      --  full.
      TXFIFO_FULL   : Boolean;
      --  Read-only. Read only view of the signals that indicates LCD LFIFO is
      --  empty.
      LFIFO_EMPTY   : Boolean;
      --  Read-only. Read only view of the signals that indicates LCD LFIFO is
      --  full.
      LFIFO_FULL    : Boolean;
      --  Read-only. Reflects the current state of the DMA Request line for the
      --  eLCDIF
      DMA_REQ       : Boolean;
      --  Read-only. 0: eLCDIF not present on this product 1: eLCDIF is
      --  present.
      PRESENT       : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_STAT_Register use record
      LFIFO_COUNT   at 0 range 0 .. 8;
      Reserved_9_25 at 0 range 9 .. 25;
      TXFIFO_EMPTY  at 0 range 26 .. 26;
      TXFIFO_FULL   at 0 range 27 .. 27;
      LFIFO_EMPTY   at 0 range 28 .. 28;
      LFIFO_FULL    at 0 range 29 .. 29;
      DMA_REQ       at 0 range 30 .. 30;
      PRESENT       at 0 range 31 .. 31;
   end record;

   subtype LCDIF_THRES_PANIC_Field is HAL.UInt9;
   subtype LCDIF_THRES_FASTCLOCK_Field is HAL.UInt9;

   --  eLCDIF Threshold Register
   type LCDIF_THRES_Register is record
      --  This value should be set to a value of pixels from 0 to 511
      PANIC          : LCDIF_THRES_PANIC_Field := 16#F#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  This value should be set to a value of pixels, from 0 to 511
      FASTCLOCK      : LCDIF_THRES_FASTCLOCK_Field := 16#100#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_THRES_Register use record
      PANIC          at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FASTCLOCK      at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL0_FD_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL0_LD_PERIOD_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control0 Register
   type LCDIF_PIGEONCTRL0_Register is record
      --  Period of line counter during FD phase
      FD_PERIOD      : LCDIF_PIGEONCTRL0_FD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Period of pclk counter during LD phase
      LD_PERIOD      : LCDIF_PIGEONCTRL0_LD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL0_Register use record
      FD_PERIOD      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LD_PERIOD      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL0_SET_FD_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL0_SET_LD_PERIOD_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control0 Register
   type LCDIF_PIGEONCTRL0_SET_Register is record
      --  Period of line counter during FD phase
      FD_PERIOD      : LCDIF_PIGEONCTRL0_SET_FD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Period of pclk counter during LD phase
      LD_PERIOD      : LCDIF_PIGEONCTRL0_SET_LD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL0_SET_Register use record
      FD_PERIOD      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LD_PERIOD      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL0_CLR_FD_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL0_CLR_LD_PERIOD_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control0 Register
   type LCDIF_PIGEONCTRL0_CLR_Register is record
      --  Period of line counter during FD phase
      FD_PERIOD      : LCDIF_PIGEONCTRL0_CLR_FD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Period of pclk counter during LD phase
      LD_PERIOD      : LCDIF_PIGEONCTRL0_CLR_LD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL0_CLR_Register use record
      FD_PERIOD      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LD_PERIOD      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL0_TOG_FD_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL0_TOG_LD_PERIOD_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control0 Register
   type LCDIF_PIGEONCTRL0_TOG_Register is record
      --  Period of line counter during FD phase
      FD_PERIOD      : LCDIF_PIGEONCTRL0_TOG_FD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Period of pclk counter during LD phase
      LD_PERIOD      : LCDIF_PIGEONCTRL0_TOG_LD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL0_TOG_Register use record
      FD_PERIOD      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LD_PERIOD      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL1_FRAME_CNT_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL1_FRAME_CNT_CYCLES_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control1 Register
   type LCDIF_PIGEONCTRL1_Register is record
      --  Period of frame counter
      FRAME_CNT_PERIOD : LCDIF_PIGEONCTRL1_FRAME_CNT_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_12_15   : HAL.UInt4 := 16#0#;
      --  Max cycles of frame counter
      FRAME_CNT_CYCLES : LCDIF_PIGEONCTRL1_FRAME_CNT_CYCLES_Field := 16#0#;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL1_Register use record
      FRAME_CNT_PERIOD at 0 range 0 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      FRAME_CNT_CYCLES at 0 range 16 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL1_SET_FRAME_CNT_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL1_SET_FRAME_CNT_CYCLES_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control1 Register
   type LCDIF_PIGEONCTRL1_SET_Register is record
      --  Period of frame counter
      FRAME_CNT_PERIOD : LCDIF_PIGEONCTRL1_SET_FRAME_CNT_PERIOD_Field :=
                          16#0#;
      --  unspecified
      Reserved_12_15   : HAL.UInt4 := 16#0#;
      --  Max cycles of frame counter
      FRAME_CNT_CYCLES : LCDIF_PIGEONCTRL1_SET_FRAME_CNT_CYCLES_Field :=
                          16#0#;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL1_SET_Register use record
      FRAME_CNT_PERIOD at 0 range 0 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      FRAME_CNT_CYCLES at 0 range 16 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL1_CLR_FRAME_CNT_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL1_CLR_FRAME_CNT_CYCLES_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control1 Register
   type LCDIF_PIGEONCTRL1_CLR_Register is record
      --  Period of frame counter
      FRAME_CNT_PERIOD : LCDIF_PIGEONCTRL1_CLR_FRAME_CNT_PERIOD_Field :=
                          16#0#;
      --  unspecified
      Reserved_12_15   : HAL.UInt4 := 16#0#;
      --  Max cycles of frame counter
      FRAME_CNT_CYCLES : LCDIF_PIGEONCTRL1_CLR_FRAME_CNT_CYCLES_Field :=
                          16#0#;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL1_CLR_Register use record
      FRAME_CNT_PERIOD at 0 range 0 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      FRAME_CNT_CYCLES at 0 range 16 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype LCDIF_PIGEONCTRL1_TOG_FRAME_CNT_PERIOD_Field is HAL.UInt12;
   subtype LCDIF_PIGEONCTRL1_TOG_FRAME_CNT_CYCLES_Field is HAL.UInt12;

   --  LCDIF Pigeon Mode Control1 Register
   type LCDIF_PIGEONCTRL1_TOG_Register is record
      --  Period of frame counter
      FRAME_CNT_PERIOD : LCDIF_PIGEONCTRL1_TOG_FRAME_CNT_PERIOD_Field :=
                          16#0#;
      --  unspecified
      Reserved_12_15   : HAL.UInt4 := 16#0#;
      --  Max cycles of frame counter
      FRAME_CNT_CYCLES : LCDIF_PIGEONCTRL1_TOG_FRAME_CNT_CYCLES_Field :=
                          16#0#;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL1_TOG_Register use record
      FRAME_CNT_PERIOD at 0 range 0 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      FRAME_CNT_CYCLES at 0 range 16 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  LCDIF Pigeon Mode Control2 Register
   type LCDIF_PIGEONCTRL2_Register is record
      --  Pigeon mode data enable
      PIGEON_DATA_EN  : Boolean := False;
      --  Pigeon mode dot clock gate enable
      PIGEON_CLK_GATE : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL2_Register use record
      PIGEON_DATA_EN  at 0 range 0 .. 0;
      PIGEON_CLK_GATE at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  LCDIF Pigeon Mode Control2 Register
   type LCDIF_PIGEONCTRL2_SET_Register is record
      --  Pigeon mode data enable
      PIGEON_DATA_EN  : Boolean := False;
      --  Pigeon mode dot clock gate enable
      PIGEON_CLK_GATE : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL2_SET_Register use record
      PIGEON_DATA_EN  at 0 range 0 .. 0;
      PIGEON_CLK_GATE at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  LCDIF Pigeon Mode Control2 Register
   type LCDIF_PIGEONCTRL2_CLR_Register is record
      --  Pigeon mode data enable
      PIGEON_DATA_EN  : Boolean := False;
      --  Pigeon mode dot clock gate enable
      PIGEON_CLK_GATE : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL2_CLR_Register use record
      PIGEON_DATA_EN  at 0 range 0 .. 0;
      PIGEON_CLK_GATE at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  LCDIF Pigeon Mode Control2 Register
   type LCDIF_PIGEONCTRL2_TOG_Register is record
      --  Pigeon mode data enable
      PIGEON_DATA_EN  : Boolean := False;
      --  Pigeon mode dot clock gate enable
      PIGEON_CLK_GATE : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEONCTRL2_TOG_Register use record
      PIGEON_DATA_EN  at 0 range 0 .. 0;
      PIGEON_CLK_GATE at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_0_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_0_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_0_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_0_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_0_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_0_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_0_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_0_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_0_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_0_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_0_0_STATE_MASK_Field use
     (Pigeon_0_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_0_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_0_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_0_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_0_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_0_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_0_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_0_0_STATE_MASK_Field :=
                      Pigeon_0_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_0_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_0_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_0_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_0_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_0_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_0_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_0_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_0_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_0_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_0_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_0_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_0_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_0_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_0_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_0_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_0_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_0_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_1_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_1_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_1_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_1_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_1_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_1_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_1_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_1_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_1_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_1_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_1_0_STATE_MASK_Field use
     (Pigeon_1_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_1_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_1_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_1_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_1_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_1_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_1_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_1_0_STATE_MASK_Field :=
                      Pigeon_1_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_1_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_1_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_1_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_1_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_1_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_1_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_1_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_1_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_1_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_1_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_1_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_1_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_1_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_1_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_1_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_1_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_1_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_2_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_2_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_2_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_2_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_2_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_2_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_2_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_2_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_2_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_2_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_2_0_STATE_MASK_Field use
     (Pigeon_2_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_2_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_2_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_2_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_2_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_2_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_2_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_2_0_STATE_MASK_Field :=
                      Pigeon_2_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_2_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_2_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_2_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_2_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_2_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_2_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_2_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_2_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_2_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_2_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_2_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_2_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_2_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_2_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_2_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_2_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_2_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_3_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_3_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_3_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_3_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_3_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_3_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_3_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_3_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_3_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_3_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_3_0_STATE_MASK_Field use
     (Pigeon_3_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_3_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_3_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_3_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_3_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_3_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_3_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_3_0_STATE_MASK_Field :=
                      Pigeon_3_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_3_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_3_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_3_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_3_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_3_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_3_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_3_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_3_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_3_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_3_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_3_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_3_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_3_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_3_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_3_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_3_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_3_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_4_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_4_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_4_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_4_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_4_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_4_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_4_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_4_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_4_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_4_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_4_0_STATE_MASK_Field use
     (Pigeon_4_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_4_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_4_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_4_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_4_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_4_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_4_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_4_0_STATE_MASK_Field :=
                      Pigeon_4_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_4_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_4_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_4_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_4_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_4_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_4_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_4_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_4_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_4_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_4_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_4_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_4_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_4_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_4_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_4_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_4_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_4_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_5_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_5_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_5_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_5_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_5_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_5_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_5_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_5_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_5_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_5_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_5_0_STATE_MASK_Field use
     (Pigeon_5_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_5_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_5_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_5_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_5_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_5_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_5_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_5_0_STATE_MASK_Field :=
                      Pigeon_5_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_5_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_5_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_5_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_5_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_5_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_5_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_5_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_5_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_5_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_5_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_5_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_5_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_5_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_5_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_5_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_5_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_5_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_6_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_6_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_6_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_6_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_6_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_6_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_6_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_6_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_6_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_6_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_6_0_STATE_MASK_Field use
     (Pigeon_6_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_6_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_6_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_6_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_6_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_6_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_6_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_6_0_STATE_MASK_Field :=
                      Pigeon_6_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_6_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_6_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_6_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_6_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_6_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_6_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_6_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_6_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_6_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_6_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_6_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_6_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_6_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_6_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_6_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_6_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_6_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_7_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_7_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_7_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_7_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_7_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_7_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_7_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_7_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_7_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_7_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_7_0_STATE_MASK_Field use
     (Pigeon_7_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_7_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_7_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_7_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_7_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_7_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_7_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_7_0_STATE_MASK_Field :=
                      Pigeon_7_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_7_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_7_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_7_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_7_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_7_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_7_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_7_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_7_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_7_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_7_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_7_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_7_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_7_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_7_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_7_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_7_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_7_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_8_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_8_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_8_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_8_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_8_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_8_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_8_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_8_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_8_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_8_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_8_0_STATE_MASK_Field use
     (Pigeon_8_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_8_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_8_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_8_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_8_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_8_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_8_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_8_0_STATE_MASK_Field :=
                      Pigeon_8_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_8_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_8_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_8_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_8_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_8_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_8_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_8_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_8_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_8_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_8_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_8_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_8_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_8_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_8_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_8_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_8_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_8_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_9_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_9_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_9_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_9_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_9_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_9_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_9_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_9_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_9_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_9_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_9_0_STATE_MASK_Field use
     (Pigeon_9_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_9_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_9_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_9_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_9_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_9_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_9_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_9_0_STATE_MASK_Field :=
                      Pigeon_9_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_9_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_9_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_9_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_9_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_9_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_9_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_9_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_9_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_9_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_9_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_9_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_9_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_9_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_9_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_9_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_9_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_9_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_10_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_10_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_10_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_10_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_10_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_10_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_10_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_10_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_10_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_10_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_10_0_STATE_MASK_Field use
     (Pigeon_10_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_10_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_10_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_10_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_10_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_10_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_10_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_10_0_STATE_MASK_Field :=
                      Pigeon_10_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_10_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_10_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_10_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_10_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_10_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_10_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_10_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_10_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_10_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_10_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_10_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_10_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_10_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_10_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_10_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_10_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_10_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Polarity of signal output
   type PIGEON_11_0_POL_Field is
     (
      --  Normal Signal (Active high)
      Active_High,
      --  Inverted signal (Active low)
      Active_Low)
     with Size => 1;
   for PIGEON_11_0_POL_Field use
     (Active_High => 0,
      Active_Low => 1);

   --  Event to incrment local counter
   type PIGEON_11_0_INC_SEL_Field is
     (
      --  pclk
      Pclk,
      --  Line start pulse
      Line,
      --  Frame start pulse
      Frame,
      --  Use another signal as tick event
      Sig_Another)
     with Size => 2;
   for PIGEON_11_0_INC_SEL_Field use
     (Pclk => 0,
      Line => 1,
      Frame => 2,
      Sig_Another => 3);

   subtype LCDIF_PIGEON_11_0_OFFSET_Field is HAL.UInt4;

   --  select global counters as mask condition, use together with MASK_CNT
   type PIGEON_11_0_MASK_CNT_SEL_Field is
     (
      --  pclk counter within one hscan state
      Hstate_Cnt,
      --  pclk cycle within one hscan state
      Hstate_Cycle,
      --  line counter within one vscan state
      Vstate_Cnt,
      --  line cycle within one vscan state
      Vstate_Cycle,
      --  frame counter
      Frame_Cnt,
      --  frame cycle
      Frame_Cycle,
      --  horizontal counter (pclk counter within one line )
      Hcnt,
      --  vertical counter (line counter within one frame)
      Vcnt)
     with Size => 4;
   for PIGEON_11_0_MASK_CNT_SEL_Field use
     (Hstate_Cnt => 0,
      Hstate_Cycle => 1,
      Vstate_Cnt => 2,
      Vstate_Cycle => 3,
      Frame_Cnt => 4,
      Frame_Cycle => 5,
      Hcnt => 6,
      Vcnt => 7);

   subtype LCDIF_PIGEON_11_0_MASK_CNT_Field is HAL.UInt12;

   --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination of
   --  scan states as reference point for local counter to start ticking
   type PIGEON_11_0_STATE_MASK_Field is
     (
      --  Reset value for the field
      Pigeon_11_0_State_Mask_Field_Reset,
      --  FRAME SYNC
      Fs,
      --  FRAME BEGIN
      Fb,
      --  FRAME DATA
      Fd,
      --  FRAME END
      Fe,
      --  LINE SYNC
      Ls,
      --  LINE BEGIN
      Lb,
      --  LINE DATA
      Ld,
      --  LINE END
      Le)
     with Size => 8;
   for PIGEON_11_0_STATE_MASK_Field use
     (Pigeon_11_0_State_Mask_Field_Reset => 0,
      Fs => 1,
      Fb => 2,
      Fd => 4,
      Fe => 8,
      Ls => 16,
      Lb => 32,
      Ld => 64,
      Le => 128);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_11_0_Register is record
      --  Enable pigeon Mode on this signal
      EN           : Boolean := False;
      --  Polarity of signal output
      POL          : PIGEON_11_0_POL_Field := NRF_SVD.LCDIF.Active_High;
      --  Event to incrment local counter
      INC_SEL      : PIGEON_11_0_INC_SEL_Field := NRF_SVD.LCDIF.Pclk;
      --  offset on pclk unit
      OFFSET       : LCDIF_PIGEON_11_0_OFFSET_Field := 16#0#;
      --  select global counters as mask condition, use together with MASK_CNT
      MASK_CNT_SEL : PIGEON_11_0_MASK_CNT_SEL_Field :=
                      NRF_SVD.LCDIF.Hstate_Cnt;
      --  When the global counter selected through MASK_CNT_SEL matches value
      --  in this reg, pigeon local counter start ticking
      MASK_CNT     : LCDIF_PIGEON_11_0_MASK_CNT_Field := 16#0#;
      --  state_mask = (FS|FB|FD|FE) and (LS|LB|LD|LE) , select any combination
      --  of scan states as reference point for local counter to start ticking
      STATE_MASK   : PIGEON_11_0_STATE_MASK_Field :=
                      Pigeon_11_0_State_Mask_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_11_0_Register use record
      EN           at 0 range 0 .. 0;
      POL          at 0 range 1 .. 1;
      INC_SEL      at 0 range 2 .. 3;
      OFFSET       at 0 range 4 .. 7;
      MASK_CNT_SEL at 0 range 8 .. 11;
      MASK_CNT     at 0 range 12 .. 23;
      STATE_MASK   at 0 range 24 .. 31;
   end record;

   --  Assert signal output when counter match this value
   type PIGEON_11_1_SET_CNT_Field is
     (
      --  Start as active
      Start_Active)
     with Size => 16;
   for PIGEON_11_1_SET_CNT_Field use
     (Start_Active => 0);

   --  Deassert signal output when counter match this value
   type PIGEON_11_1_CLR_CNT_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 16;
   for PIGEON_11_1_CLR_CNT_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_11_1_Register is record
      --  Assert signal output when counter match this value
      SET_CNT : PIGEON_11_1_SET_CNT_Field := NRF_SVD.LCDIF.Start_Active;
      --  Deassert signal output when counter match this value
      CLR_CNT : PIGEON_11_1_CLR_CNT_Field := NRF_SVD.LCDIF.Clear_Using_Mask;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_11_1_Register use record
      SET_CNT at 0 range 0 .. 15;
      CLR_CNT at 0 range 16 .. 31;
   end record;

   --  Logic operation with another signal: DIS/AND/OR/COND
   type PIGEON_11_2_SIG_LOGIC_Field is
     (
      --  No logic operation
      Dis,
      --  sigout = sig_another AND this_sig
      And_k,
      --  sigout = sig_another OR this_sig
      Or_k,
      --  mask = sig_another AND other_masks
      Mask)
     with Size => 4;
   for PIGEON_11_2_SIG_LOGIC_Field use
     (Dis => 0,
      And_k => 1,
      Or_k => 2,
      Mask => 3);

   --  Select another signal for logic operation or as mask or counter tick
   --  event
   type PIGEON_11_2_SIG_ANOTHER_Field is
     (
      --  Keep active until mask off
      Clear_Using_Mask)
     with Size => 5;
   for PIGEON_11_2_SIG_ANOTHER_Field use
     (Clear_Using_Mask => 0);

   --  Panel Interface Signal Generator Register
   type LCDIF_PIGEON_11_2_Register is record
      --  Logic operation with another signal: DIS/AND/OR/COND
      SIG_LOGIC     : PIGEON_11_2_SIG_LOGIC_Field := NRF_SVD.LCDIF.Dis;
      --  Select another signal for logic operation or as mask or counter tick
      --  event
      SIG_ANOTHER   : PIGEON_11_2_SIG_ANOTHER_Field :=
                       NRF_SVD.LCDIF.Clear_Using_Mask;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_PIGEON_11_2_Register use record
      SIG_LOGIC     at 0 range 0 .. 3;
      SIG_ANOTHER   at 0 range 4 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Lookup Table Data Register.
   type LCDIF_LUT_CTRL_Register is record
      --  This bit controls whether the pixels entering the CSC2 unit get
      --  converted or not
      LUT_BYPASS    : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_LUT_CTRL_Register use record
      LUT_BYPASS    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LCDIF_LUT0_ADDR_ADDR_Field is HAL.UInt8;

   --  Lookup Table Control Register.
   type LCDIF_LUT0_ADDR_Register is record
      --  LUT indexed address pointer
      ADDR          : LCDIF_LUT0_ADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_LUT0_ADDR_Register use record
      ADDR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LCDIF_LUT1_ADDR_ADDR_Field is HAL.UInt8;

   --  Lookup Table Control Register.
   type LCDIF_LUT1_ADDR_Register is record
      --  LUT indexed address pointer
      ADDR          : LCDIF_LUT1_ADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDIF_LUT1_ADDR_Register use record
      ADDR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  eLCDIF Register Reference Index
   type LCDIF_Peripheral is record
      --  eLCDIF General Control Register
      CTRL            : aliased LCDIF_CTRL_Register;
      --  eLCDIF General Control Register
      CTRL_SET        : aliased LCDIF_CTRL_SET_Register;
      --  eLCDIF General Control Register
      CTRL_CLR        : aliased LCDIF_CTRL_CLR_Register;
      --  eLCDIF General Control Register
      CTRL_TOG        : aliased LCDIF_CTRL_TOG_Register;
      --  eLCDIF General Control1 Register
      CTRL1           : aliased LCDIF_CTRL1_Register;
      --  eLCDIF General Control1 Register
      CTRL1_SET       : aliased LCDIF_CTRL1_SET_Register;
      --  eLCDIF General Control1 Register
      CTRL1_CLR       : aliased LCDIF_CTRL1_CLR_Register;
      --  eLCDIF General Control1 Register
      CTRL1_TOG       : aliased LCDIF_CTRL1_TOG_Register;
      --  eLCDIF General Control2 Register
      CTRL2           : aliased LCDIF_CTRL2_Register;
      --  eLCDIF General Control2 Register
      CTRL2_SET       : aliased LCDIF_CTRL2_SET_Register;
      --  eLCDIF General Control2 Register
      CTRL2_CLR       : aliased LCDIF_CTRL2_CLR_Register;
      --  eLCDIF General Control2 Register
      CTRL2_TOG       : aliased LCDIF_CTRL2_TOG_Register;
      --  eLCDIF Horizontal and Vertical Valid Data Count Register
      TRANSFER_COUNT  : aliased LCDIF_TRANSFER_COUNT_Register;
      --  LCD Interface Current Buffer Address Register
      CUR_BUF         : aliased HAL.UInt32;
      --  LCD Interface Next Buffer Address Register
      NEXT_BUF        : aliased HAL.UInt32;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
      VDCTRL0         : aliased LCDIF_VDCTRL0_Register;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
      VDCTRL0_SET     : aliased LCDIF_VDCTRL0_SET_Register;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
      VDCTRL0_CLR     : aliased LCDIF_VDCTRL0_CLR_Register;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register0
      VDCTRL0_TOG     : aliased LCDIF_VDCTRL0_TOG_Register;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register1
      VDCTRL1         : aliased HAL.UInt32;
      --  LCDIF VSYNC Mode and Dotclk Mode Control Register2
      VDCTRL2         : aliased LCDIF_VDCTRL2_Register;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register3
      VDCTRL3         : aliased LCDIF_VDCTRL3_Register;
      --  eLCDIF VSYNC Mode and Dotclk Mode Control Register4
      VDCTRL4         : aliased LCDIF_VDCTRL4_Register;
      --  Bus Master Error Status Register
      BM_ERROR_STAT   : aliased HAL.UInt32;
      --  CRC Status Register
      CRC_STAT        : aliased HAL.UInt32;
      --  LCD Interface Status Register
      STAT            : aliased LCDIF_STAT_Register;
      --  eLCDIF Threshold Register
      THRES           : aliased LCDIF_THRES_Register;
      --  LCDIF Pigeon Mode Control0 Register
      PIGEONCTRL0     : aliased LCDIF_PIGEONCTRL0_Register;
      --  LCDIF Pigeon Mode Control0 Register
      PIGEONCTRL0_SET : aliased LCDIF_PIGEONCTRL0_SET_Register;
      --  LCDIF Pigeon Mode Control0 Register
      PIGEONCTRL0_CLR : aliased LCDIF_PIGEONCTRL0_CLR_Register;
      --  LCDIF Pigeon Mode Control0 Register
      PIGEONCTRL0_TOG : aliased LCDIF_PIGEONCTRL0_TOG_Register;
      --  LCDIF Pigeon Mode Control1 Register
      PIGEONCTRL1     : aliased LCDIF_PIGEONCTRL1_Register;
      --  LCDIF Pigeon Mode Control1 Register
      PIGEONCTRL1_SET : aliased LCDIF_PIGEONCTRL1_SET_Register;
      --  LCDIF Pigeon Mode Control1 Register
      PIGEONCTRL1_CLR : aliased LCDIF_PIGEONCTRL1_CLR_Register;
      --  LCDIF Pigeon Mode Control1 Register
      PIGEONCTRL1_TOG : aliased LCDIF_PIGEONCTRL1_TOG_Register;
      --  LCDIF Pigeon Mode Control2 Register
      PIGEONCTRL2     : aliased LCDIF_PIGEONCTRL2_Register;
      --  LCDIF Pigeon Mode Control2 Register
      PIGEONCTRL2_SET : aliased LCDIF_PIGEONCTRL2_SET_Register;
      --  LCDIF Pigeon Mode Control2 Register
      PIGEONCTRL2_CLR : aliased LCDIF_PIGEONCTRL2_CLR_Register;
      --  LCDIF Pigeon Mode Control2 Register
      PIGEONCTRL2_TOG : aliased LCDIF_PIGEONCTRL2_TOG_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_0_0      : aliased LCDIF_PIGEON_0_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_0_1      : aliased LCDIF_PIGEON_0_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_0_2      : aliased LCDIF_PIGEON_0_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_1_0      : aliased LCDIF_PIGEON_1_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_1_1      : aliased LCDIF_PIGEON_1_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_1_2      : aliased LCDIF_PIGEON_1_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_2_0      : aliased LCDIF_PIGEON_2_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_2_1      : aliased LCDIF_PIGEON_2_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_2_2      : aliased LCDIF_PIGEON_2_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_3_0      : aliased LCDIF_PIGEON_3_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_3_1      : aliased LCDIF_PIGEON_3_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_3_2      : aliased LCDIF_PIGEON_3_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_4_0      : aliased LCDIF_PIGEON_4_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_4_1      : aliased LCDIF_PIGEON_4_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_4_2      : aliased LCDIF_PIGEON_4_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_5_0      : aliased LCDIF_PIGEON_5_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_5_1      : aliased LCDIF_PIGEON_5_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_5_2      : aliased LCDIF_PIGEON_5_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_6_0      : aliased LCDIF_PIGEON_6_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_6_1      : aliased LCDIF_PIGEON_6_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_6_2      : aliased LCDIF_PIGEON_6_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_7_0      : aliased LCDIF_PIGEON_7_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_7_1      : aliased LCDIF_PIGEON_7_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_7_2      : aliased LCDIF_PIGEON_7_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_8_0      : aliased LCDIF_PIGEON_8_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_8_1      : aliased LCDIF_PIGEON_8_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_8_2      : aliased LCDIF_PIGEON_8_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_9_0      : aliased LCDIF_PIGEON_9_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_9_1      : aliased LCDIF_PIGEON_9_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_9_2      : aliased LCDIF_PIGEON_9_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_10_0     : aliased LCDIF_PIGEON_10_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_10_1     : aliased LCDIF_PIGEON_10_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_10_2     : aliased LCDIF_PIGEON_10_2_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_11_0     : aliased LCDIF_PIGEON_11_0_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_11_1     : aliased LCDIF_PIGEON_11_1_Register;
      --  Panel Interface Signal Generator Register
      PIGEON_11_2     : aliased LCDIF_PIGEON_11_2_Register;
      --  Lookup Table Data Register.
      LUT_CTRL        : aliased LCDIF_LUT_CTRL_Register;
      --  Lookup Table Control Register.
      LUT0_ADDR       : aliased LCDIF_LUT0_ADDR_Register;
      --  Lookup Table Data Register.
      LUT0_DATA       : aliased HAL.UInt32;
      --  Lookup Table Control Register.
      LUT1_ADDR       : aliased LCDIF_LUT1_ADDR_Register;
      --  Lookup Table Data Register.
      LUT1_DATA       : aliased HAL.UInt32;
   end record
     with Volatile;

   for LCDIF_Peripheral use record
      CTRL            at 16#0# range 0 .. 31;
      CTRL_SET        at 16#4# range 0 .. 31;
      CTRL_CLR        at 16#8# range 0 .. 31;
      CTRL_TOG        at 16#C# range 0 .. 31;
      CTRL1           at 16#10# range 0 .. 31;
      CTRL1_SET       at 16#14# range 0 .. 31;
      CTRL1_CLR       at 16#18# range 0 .. 31;
      CTRL1_TOG       at 16#1C# range 0 .. 31;
      CTRL2           at 16#20# range 0 .. 31;
      CTRL2_SET       at 16#24# range 0 .. 31;
      CTRL2_CLR       at 16#28# range 0 .. 31;
      CTRL2_TOG       at 16#2C# range 0 .. 31;
      TRANSFER_COUNT  at 16#30# range 0 .. 31;
      CUR_BUF         at 16#40# range 0 .. 31;
      NEXT_BUF        at 16#50# range 0 .. 31;
      VDCTRL0         at 16#70# range 0 .. 31;
      VDCTRL0_SET     at 16#74# range 0 .. 31;
      VDCTRL0_CLR     at 16#78# range 0 .. 31;
      VDCTRL0_TOG     at 16#7C# range 0 .. 31;
      VDCTRL1         at 16#80# range 0 .. 31;
      VDCTRL2         at 16#90# range 0 .. 31;
      VDCTRL3         at 16#A0# range 0 .. 31;
      VDCTRL4         at 16#B0# range 0 .. 31;
      BM_ERROR_STAT   at 16#190# range 0 .. 31;
      CRC_STAT        at 16#1A0# range 0 .. 31;
      STAT            at 16#1B0# range 0 .. 31;
      THRES           at 16#200# range 0 .. 31;
      PIGEONCTRL0     at 16#380# range 0 .. 31;
      PIGEONCTRL0_SET at 16#384# range 0 .. 31;
      PIGEONCTRL0_CLR at 16#388# range 0 .. 31;
      PIGEONCTRL0_TOG at 16#38C# range 0 .. 31;
      PIGEONCTRL1     at 16#390# range 0 .. 31;
      PIGEONCTRL1_SET at 16#394# range 0 .. 31;
      PIGEONCTRL1_CLR at 16#398# range 0 .. 31;
      PIGEONCTRL1_TOG at 16#39C# range 0 .. 31;
      PIGEONCTRL2     at 16#3A0# range 0 .. 31;
      PIGEONCTRL2_SET at 16#3A4# range 0 .. 31;
      PIGEONCTRL2_CLR at 16#3A8# range 0 .. 31;
      PIGEONCTRL2_TOG at 16#3AC# range 0 .. 31;
      PIGEON_0_0      at 16#800# range 0 .. 31;
      PIGEON_0_1      at 16#810# range 0 .. 31;
      PIGEON_0_2      at 16#820# range 0 .. 31;
      PIGEON_1_0      at 16#840# range 0 .. 31;
      PIGEON_1_1      at 16#850# range 0 .. 31;
      PIGEON_1_2      at 16#860# range 0 .. 31;
      PIGEON_2_0      at 16#880# range 0 .. 31;
      PIGEON_2_1      at 16#890# range 0 .. 31;
      PIGEON_2_2      at 16#8A0# range 0 .. 31;
      PIGEON_3_0      at 16#8C0# range 0 .. 31;
      PIGEON_3_1      at 16#8D0# range 0 .. 31;
      PIGEON_3_2      at 16#8E0# range 0 .. 31;
      PIGEON_4_0      at 16#900# range 0 .. 31;
      PIGEON_4_1      at 16#910# range 0 .. 31;
      PIGEON_4_2      at 16#920# range 0 .. 31;
      PIGEON_5_0      at 16#940# range 0 .. 31;
      PIGEON_5_1      at 16#950# range 0 .. 31;
      PIGEON_5_2      at 16#960# range 0 .. 31;
      PIGEON_6_0      at 16#980# range 0 .. 31;
      PIGEON_6_1      at 16#990# range 0 .. 31;
      PIGEON_6_2      at 16#9A0# range 0 .. 31;
      PIGEON_7_0      at 16#9C0# range 0 .. 31;
      PIGEON_7_1      at 16#9D0# range 0 .. 31;
      PIGEON_7_2      at 16#9E0# range 0 .. 31;
      PIGEON_8_0      at 16#A00# range 0 .. 31;
      PIGEON_8_1      at 16#A10# range 0 .. 31;
      PIGEON_8_2      at 16#A20# range 0 .. 31;
      PIGEON_9_0      at 16#A40# range 0 .. 31;
      PIGEON_9_1      at 16#A50# range 0 .. 31;
      PIGEON_9_2      at 16#A60# range 0 .. 31;
      PIGEON_10_0     at 16#A80# range 0 .. 31;
      PIGEON_10_1     at 16#A90# range 0 .. 31;
      PIGEON_10_2     at 16#AA0# range 0 .. 31;
      PIGEON_11_0     at 16#AC0# range 0 .. 31;
      PIGEON_11_1     at 16#AD0# range 0 .. 31;
      PIGEON_11_2     at 16#AE0# range 0 .. 31;
      LUT_CTRL        at 16#B00# range 0 .. 31;
      LUT0_ADDR       at 16#B10# range 0 .. 31;
      LUT0_DATA       at 16#B20# range 0 .. 31;
      LUT1_ADDR       at 16#B30# range 0 .. 31;
      LUT1_DATA       at 16#B40# range 0 .. 31;
   end record;

   --  eLCDIF Register Reference Index
   LCDIF_Periph : aliased LCDIF_Peripheral
     with Import, Address => System'To_Address (16#402B8000#);

end NRF_SVD.LCDIF;
