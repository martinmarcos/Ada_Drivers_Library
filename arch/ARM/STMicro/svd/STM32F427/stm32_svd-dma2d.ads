--  This spec has been automatically generated from STM32F427.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DMA2D is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMA2D_CR_MODE_Field is HAL.UInt2;

   --  DMA2D control register
   type DMA2D_CR_Register is record
      --  Start This bit can be used to launch the DMA2D according to the
      --  parameters loaded in the various configuration registers. This bit is
      --  automatically reset by the following events: ** At the end of the
      --  transfer ** When the data transfer is aborted by the user application
      --  by setting the ABORT bit in DMA2D_CR ** When a data transfer error
      --  occurs ** When the data transfer has not started due to a
      --  configuration error or another transfer operation already ongoing
      --  (automatic CLUT loading).
      START          : Boolean := False;
      --  Suspend This bit can be used to suspend the current transfer. This
      --  bit is set and reset by software. It is automatically reset by
      --  hardware when the START bit is reset.
      SUSP           : Boolean := False;
      --  Abort This bit can be used to abort the current transfer. This bit is
      --  set by software and is automatically reset by hardware when the START
      --  bit is reset.
      ABORT_k        : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Transfer error interrupt enable This bit is set and cleared by
      --  software.
      TEIE           : Boolean := False;
      --  Transfer complete interrupt enable This bit is set and cleared by
      --  software.
      TCIE           : Boolean := False;
      --  Transfer watermark interrupt enable This bit is set and cleared by
      --  software.
      TWIE           : Boolean := False;
      --  CLUT access error interrupt enable This bit is set and cleared by
      --  software.
      CAEIE          : Boolean := False;
      --  CLUT transfer complete interrupt enable This bit is set and cleared
      --  by software.
      CTCIE          : Boolean := False;
      --  Configuration Error Interrupt Enable This bit is set and cleared by
      --  software.
      CEIE           : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  DMA2D mode This bit is set and cleared by software. It cannot be
      --  modified while a transfer is ongoing.
      MODE           : DMA2D_CR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_CR_Register use record
      START          at 0 range 0 .. 0;
      SUSP           at 0 range 1 .. 1;
      ABORT_k        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      TEIE           at 0 range 8 .. 8;
      TCIE           at 0 range 9 .. 9;
      TWIE           at 0 range 10 .. 10;
      CAEIE          at 0 range 11 .. 11;
      CTCIE          at 0 range 12 .. 12;
      CEIE           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      MODE           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  DMA2D Interrupt Status Register
   type DMA2D_ISR_Register is record
      --  Read-only. Transfer error interrupt flag This bit is set when an
      --  error occurs during a DMA transfer (data transfer or automatic CLUT
      --  loading).
      TEIF          : Boolean;
      --  Read-only. Transfer complete interrupt flag This bit is set when a
      --  DMA2D transfer operation is complete (data transfer only).
      TCIF          : Boolean;
      --  Read-only. Transfer watermark interrupt flag This bit is set when the
      --  last pixel of the watermarked line has been transferred.
      TWIF          : Boolean;
      --  Read-only. CLUT access error interrupt flag This bit is set when the
      --  CPU accesses the CLUT while the CLUT is being automatically copied
      --  from a system memory to the internal DMA2D.
      CAEIF         : Boolean;
      --  Read-only. CLUT transfer complete interrupt flag This bit is set when
      --  the CLUT copy from a system memory area to the internal DMA2D memory
      --  is complete.
      CTCIF         : Boolean;
      --  Read-only. Configuration error interrupt flag This bit is set when
      --  the START bit of DMA2D_CR, DMA2DFGPFCCR or DMA2D_BGPFCCR is set and a
      --  wrong configuration has been programmed.
      CEIF          : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_ISR_Register use record
      TEIF          at 0 range 0 .. 0;
      TCIF          at 0 range 1 .. 1;
      TWIF          at 0 range 2 .. 2;
      CAEIF         at 0 range 3 .. 3;
      CTCIF         at 0 range 4 .. 4;
      CEIF          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DMA2D interrupt flag clear register
   type DMA2D_IFCR_Register is record
      --  Clear Transfer error interrupt flag Programming this bit to 1 clears
      --  the TEIF flag in the DMA2D_ISR register
      CTEIF         : Boolean := False;
      --  Clear transfer complete interrupt flag Programming this bit to 1
      --  clears the TCIF flag in the DMA2D_ISR register
      CTCIF         : Boolean := False;
      --  Clear transfer watermark interrupt flag Programming this bit to 1
      --  clears the TWIF flag in the DMA2D_ISR register
      CTWIF         : Boolean := False;
      --  Clear CLUT access error interrupt flag Programming this bit to 1
      --  clears the CAEIF flag in the DMA2D_ISR register
      CAECIF        : Boolean := False;
      --  Clear CLUT transfer complete interrupt flag Programming this bit to 1
      --  clears the CTCIF flag in the DMA2D_ISR register
      CCTCIF        : Boolean := False;
      --  Clear configuration error interrupt flag Programming this bit to 1
      --  clears the CEIF flag in the DMA2D_ISR register
      CCEIF         : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_IFCR_Register use record
      CTEIF         at 0 range 0 .. 0;
      CTCIF         at 0 range 1 .. 1;
      CTWIF         at 0 range 2 .. 2;
      CAECIF        at 0 range 3 .. 3;
      CCTCIF        at 0 range 4 .. 4;
      CCEIF         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DMA2D_FGOR_LO_Field is HAL.UInt14;

   --  DMA2D foreground offset register
   type DMA2D_FGOR_Register is record
      --  Line offset Line offset used for the foreground expressed in pixel.
      --  This value is used to generate the address. It is added at the end of
      --  each line to determine the starting address of the next line. These
      --  bits can only be written when data transfers are disabled. Once a
      --  data transfer has started, they become read-only. If the image format
      --  is 4-bit per pixel, the line offset must be even.
      LO             : DMA2D_FGOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGOR_Register use record
      LO             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DMA2D_BGOR_LO_Field is HAL.UInt14;

   --  DMA2D background offset register
   type DMA2D_BGOR_Register is record
      --  Line offset Line offset used for the background image (expressed in
      --  pixel). This value is used for the address generation. It is added at
      --  the end of each line to determine the starting address of the next
      --  line. These bits can only be written when data transfers are
      --  disabled. Once data transfer has started, they become read-only. If
      --  the image format is 4-bit per pixel, the line offset must be even.
      LO             : DMA2D_BGOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGOR_Register use record
      LO             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DMA2D_FGPFCCR_CM_Field is HAL.UInt4;
   subtype DMA2D_FGPFCCR_CS_Field is HAL.UInt8;
   subtype DMA2D_FGPFCCR_AM_Field is HAL.UInt2;
   subtype DMA2D_FGPFCCR_CSS_Field is HAL.UInt2;
   subtype DMA2D_FGPFCCR_ALPHA_Field is HAL.UInt8;

   --  DMA2D foreground PFC control register
   type DMA2D_FGPFCCR_Register is record
      --  Color mode These bits defines the color format of the foreground
      --  image. They can only be written when data transfers are disabled.
      --  Once the transfer has started, they are read-only. others:
      --  meaningless
      CM             : DMA2D_FGPFCCR_CM_Field := 16#0#;
      --  CLUT color mode This bit defines the color format of the CLUT. It can
      --  only be written when the transfer is disabled. Once the CLUT transfer
      --  has started, this bit is read-only.
      CCM            : Boolean := False;
      --  Start This bit can be set to start the automatic loading of the CLUT.
      --  It is automatically reset: ** at the end of the transfer ** when the
      --  transfer is aborted by the user application by setting the ABORT bit
      --  in DMA2D_CR ** when a transfer error occurs ** when the transfer has
      --  not started due to a configuration error or another transfer
      --  operation already ongoing (data transfer or automatic background CLUT
      --  transfer).
      START          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  CLUT size These bits define the size of the CLUT used for the
      --  foreground image. Once the CLUT transfer has started, this field is
      --  read-only. The number of CLUT entries is equal to CS[7:0] + 1.
      CS             : DMA2D_FGPFCCR_CS_Field := 16#0#;
      --  Alpha mode These bits select the alpha channel value to be used for
      --  the foreground image. They can only be written data the transfer are
      --  disabled. Once the transfer has started, they become read-only. other
      --  configurations are meaningless
      AM             : DMA2D_FGPFCCR_AM_Field := 16#0#;
      --  Chroma Sub-Sampling These bits define the chroma sub-sampling mode
      --  for YCbCr color mode. Once the transfer has started, these bits are
      --  read-only. others: meaningless
      CSS            : DMA2D_FGPFCCR_CSS_Field := 16#0#;
      --  Alpha Inverted This bit inverts the alpha value. Once the transfer
      --  has started, this bit is read-only.
      AI             : Boolean := False;
      --  Red Blue Swap This bit allows to swap the R &amp; B to support BGR or
      --  ABGR color formats. Once the transfer has started, this bit is
      --  read-only.
      RBS            : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Alpha value These bits define a fixed alpha channel value which can
      --  replace the original alpha value or be multiplied by the original
      --  alpha value according to the alpha mode selected through the AM[1:0]
      --  bits. These bits can only be written when data transfers are
      --  disabled. Once a transfer has started, they become read-only.
      ALPHA          : DMA2D_FGPFCCR_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGPFCCR_Register use record
      CM             at 0 range 0 .. 3;
      CCM            at 0 range 4 .. 4;
      START          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CS             at 0 range 8 .. 15;
      AM             at 0 range 16 .. 17;
      CSS            at 0 range 18 .. 19;
      AI             at 0 range 20 .. 20;
      RBS            at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ALPHA          at 0 range 24 .. 31;
   end record;

   subtype DMA2D_FGCOLR_BLUE_Field is HAL.UInt8;
   subtype DMA2D_FGCOLR_GREEN_Field is HAL.UInt8;
   subtype DMA2D_FGCOLR_RED_Field is HAL.UInt8;

   --  DMA2D foreground color register
   type DMA2D_FGCOLR_Register is record
      --  Blue Value These bits defines the blue value for the A4 or A8 mode of
      --  the foreground image. They can only be written when data transfers
      --  are disabled. Once the transfer has started, They are read-only.
      BLUE           : DMA2D_FGCOLR_BLUE_Field := 16#0#;
      --  Green Value These bits defines the green value for the A4 or A8 mode
      --  of the foreground image. They can only be written when data transfers
      --  are disabled. Once the transfer has started, They are read-only.
      GREEN          : DMA2D_FGCOLR_GREEN_Field := 16#0#;
      --  Red Value These bits defines the red value for the A4 or A8 mode of
      --  the foreground image. They can only be written when data transfers
      --  are disabled. Once the transfer has started, they are read-only.
      RED            : DMA2D_FGCOLR_RED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_FGCOLR_Register use record
      BLUE           at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      RED            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMA2D_BGPFCCR_CM_Field is HAL.UInt4;
   subtype DMA2D_BGPFCCR_CS_Field is HAL.UInt8;
   subtype DMA2D_BGPFCCR_AM_Field is HAL.UInt2;
   subtype DMA2D_BGPFCCR_ALPHA_Field is HAL.UInt8;

   --  DMA2D background PFC control register
   type DMA2D_BGPFCCR_Register is record
      --  Color mode These bits define the color format of the foreground
      --  image. These bits can only be written when data transfers are
      --  disabled. Once the transfer has started, they are read-only. others:
      --  meaningless
      CM             : DMA2D_BGPFCCR_CM_Field := 16#0#;
      --  CLUT Color mode These bits define the color format of the CLUT. This
      --  register can only be written when the transfer is disabled. Once the
      --  CLUT transfer has started, this bit is read-only.
      CCM            : Boolean := False;
      --  Start This bit is set to start the automatic loading of the CLUT.
      --  This bit is automatically reset: ** at the end of the transfer **
      --  when the transfer is aborted by the user application by setting the
      --  ABORT bit in the DMA2D_CR ** when a transfer error occurs ** when the
      --  transfer has not started due to a configuration error or another
      --  transfer operation already on going (data transfer or automatic
      --  BackGround CLUT transfer).
      START          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  CLUT size These bits define the size of the CLUT used for the BG.
      --  Once the CLUT transfer has started, this field is read-only. The
      --  number of CLUT entries is equal to CS[7:0] + 1.
      CS             : DMA2D_BGPFCCR_CS_Field := 16#0#;
      --  Alpha mode These bits define which alpha channel value to be used for
      --  the background image. These bits can only be written when data
      --  transfers are disabled. Once the transfer has started, they are
      --  read-only. others: meaningless
      AM             : DMA2D_BGPFCCR_AM_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Alpha Inverted This bit inverts the alpha value. Once the transfer
      --  has started, this bit is read-only.
      AI             : Boolean := False;
      --  Red Blue Swap This bit allows to swap the R &amp; B to support BGR or
      --  ABGR color formats. Once the transfer has started, this bit is
      --  read-only.
      RBS            : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Alpha value These bits define a fixed alpha channel value which can
      --  replace the original alpha value or be multiplied with the original
      --  alpha value according to the alpha mode selected with bits AM[1: 0].
      --  These bits can only be written when data transfers are disabled. Once
      --  the transfer has started, they are read-only.
      ALPHA          : DMA2D_BGPFCCR_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGPFCCR_Register use record
      CM             at 0 range 0 .. 3;
      CCM            at 0 range 4 .. 4;
      START          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CS             at 0 range 8 .. 15;
      AM             at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      AI             at 0 range 20 .. 20;
      RBS            at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ALPHA          at 0 range 24 .. 31;
   end record;

   subtype DMA2D_BGCOLR_BLUE_Field is HAL.UInt8;
   subtype DMA2D_BGCOLR_GREEN_Field is HAL.UInt8;
   subtype DMA2D_BGCOLR_RED_Field is HAL.UInt8;

   --  DMA2D background color register
   type DMA2D_BGCOLR_Register is record
      --  Blue Value These bits define the blue value for the A4 or A8 mode of
      --  the background. These bits can only be written when data transfers
      --  are disabled. Once the transfer has started, they are read-only.
      BLUE           : DMA2D_BGCOLR_BLUE_Field := 16#0#;
      --  Green Value These bits define the green value for the A4 or A8 mode
      --  of the background. These bits can only be written when data transfers
      --  are disabled. Once the transfer has started, they are read-only.
      GREEN          : DMA2D_BGCOLR_GREEN_Field := 16#0#;
      --  Red Value These bits define the red value for the A4 or A8 mode of
      --  the background. These bits can only be written when data transfers
      --  are disabled. Once the transfer has started, they are read-only.
      RED            : DMA2D_BGCOLR_RED_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_BGCOLR_Register use record
      BLUE           at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      RED            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMA2D_OPFCCR_CM_Field is HAL.UInt3;

   --  DMA2D output PFC control register
   type DMA2D_OPFCCR_Register is record
      --  Color mode These bits define the color format of the output image.
      --  These bits can only be written when data transfers are disabled. Once
      --  the transfer has started, they are read-only. others: meaningless
      CM             : DMA2D_OPFCCR_CM_Field := 16#0#;
      --  unspecified
      Reserved_3_19  : HAL.UInt17 := 16#0#;
      --  Alpha Inverted This bit inverts the alpha value. Once the transfer
      --  has started, this bit is read-only.
      AI             : Boolean := False;
      --  Red Blue Swap This bit allows to swap the R &amp; B to support BGR or
      --  ABGR color formats. Once the transfer has started, this bit is
      --  read-only.
      RBS            : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OPFCCR_Register use record
      CM             at 0 range 0 .. 2;
      Reserved_3_19  at 0 range 3 .. 19;
      AI             at 0 range 20 .. 20;
      RBS            at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DMA2D_OCOLR_BLUE_Field is HAL.UInt8;
   subtype DMA2D_OCOLR_GREEN_Field is HAL.UInt8;
   subtype DMA2D_OCOLR_RED_Field is HAL.UInt8;
   subtype DMA2D_OCOLR_ALPHA_Field is HAL.UInt8;

   --  DMA2D output color register
   type DMA2D_OCOLR_Register is record
      --  Blue Value These bits define the blue value of the output image.
      --  These bits can only be written when data transfers are disabled. Once
      --  the transfer has started, they are read-only.
      BLUE  : DMA2D_OCOLR_BLUE_Field := 16#0#;
      --  Green Value These bits define the green value of the output image.
      --  These bits can only be written when data transfers are disabled. Once
      --  the transfer has started, they are read-only.
      GREEN : DMA2D_OCOLR_GREEN_Field := 16#0#;
      --  Red Value These bits define the red value of the output image. These
      --  bits can only be written when data transfers are disabled. Once the
      --  transfer has started, they are read-only.
      RED   : DMA2D_OCOLR_RED_Field := 16#0#;
      --  Alpha Channel Value These bits define the alpha channel of the output
      --  color. These bits can only be written when data transfers are
      --  disabled. Once the transfer has started, they are read-only.
      ALPHA : DMA2D_OCOLR_ALPHA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OCOLR_Register use record
      BLUE  at 0 range 0 .. 7;
      GREEN at 0 range 8 .. 15;
      RED   at 0 range 16 .. 23;
      ALPHA at 0 range 24 .. 31;
   end record;

   subtype DMA2D_OOR_LO_Field is HAL.UInt14;

   --  DMA2D output offset register
   type DMA2D_OOR_Register is record
      --  Line Offset Line offset used for the output (expressed in pixels).
      --  This value is used for the address generation. It is added at the end
      --  of each line to determine the starting address of the next line.
      --  These bits can only be written when data transfers are disabled. Once
      --  the transfer has started, they are read-only.
      LO             : DMA2D_OOR_LO_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_OOR_Register use record
      LO             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DMA2D_NLR_NL_Field is HAL.UInt16;
   subtype DMA2D_NLR_PL_Field is HAL.UInt14;

   --  DMA2D number of line register
   type DMA2D_NLR_Register is record
      --  Number of lines Number of lines of the area to be transferred. These
      --  bits can only be written when data transfers are disabled. Once the
      --  transfer has started, they are read-only.
      NL             : DMA2D_NLR_NL_Field := 16#0#;
      --  Pixel per lines Number of pixels per lines of the area to be
      --  transferred. These bits can only be written when data transfers are
      --  disabled. Once the transfer has started, they are read-only. If any
      --  of the input image format is 4-bit per pixel, pixel per lines must be
      --  even.
      PL             : DMA2D_NLR_PL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_NLR_Register use record
      NL             at 0 range 0 .. 15;
      PL             at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DMA2D_LWR_LW_Field is HAL.UInt16;

   --  DMA2D line watermark register
   type DMA2D_LWR_Register is record
      --  Line watermark These bits allow to configure the line watermark for
      --  interrupt generation. An interrupt is raised when the last pixel of
      --  the watermarked line has been transferred. These bits can only be
      --  written when data transfers are disabled. Once the transfer has
      --  started, they are read-only.
      LW             : DMA2D_LWR_LW_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_LWR_Register use record
      LW             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA2D_AMTCR_DT_Field is HAL.UInt8;

   --  DMA2D AXI master timer configuration register
   type DMA2D_AMTCR_Register is record
      --  Enable Enables the dead time functionality.
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Dead Time Dead time value in the AXI clock cycle inserted between two
      --  consecutive accesses on the AXI master port. These bits represent the
      --  minimum guaranteed number of cycles between two consecutive AXI
      --  accesses.
      DT             : DMA2D_AMTCR_DT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA2D_AMTCR_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA2D
   type DMA2D_Peripheral is record
      --  DMA2D control register
      DMA2D_CR      : aliased DMA2D_CR_Register;
      --  DMA2D Interrupt Status Register
      DMA2D_ISR     : aliased DMA2D_ISR_Register;
      --  DMA2D interrupt flag clear register
      DMA2D_IFCR    : aliased DMA2D_IFCR_Register;
      --  DMA2D foreground memory address register
      DMA2D_FGMAR   : aliased HAL.UInt32;
      --  DMA2D foreground offset register
      DMA2D_FGOR    : aliased DMA2D_FGOR_Register;
      --  DMA2D background memory address register
      DMA2D_BGMAR   : aliased HAL.UInt32;
      --  DMA2D background offset register
      DMA2D_BGOR    : aliased DMA2D_BGOR_Register;
      --  DMA2D foreground PFC control register
      DMA2D_FGPFCCR : aliased DMA2D_FGPFCCR_Register;
      --  DMA2D foreground color register
      DMA2D_FGCOLR  : aliased DMA2D_FGCOLR_Register;
      --  DMA2D background PFC control register
      DMA2D_BGPFCCR : aliased DMA2D_BGPFCCR_Register;
      --  DMA2D background color register
      DMA2D_BGCOLR  : aliased DMA2D_BGCOLR_Register;
      --  DMA2D foreground CLUT memory address register
      DMA2D_FGCMAR  : aliased HAL.UInt32;
      --  DMA2D background CLUT memory address register
      DMA2D_BGCMAR  : aliased HAL.UInt32;
      --  DMA2D output PFC control register
      DMA2D_OPFCCR  : aliased DMA2D_OPFCCR_Register;
      --  DMA2D output color register
      DMA2D_OCOLR   : aliased DMA2D_OCOLR_Register;
      --  DMA2D output memory address register
      DMA2D_OMAR    : aliased HAL.UInt32;
      --  DMA2D output offset register
      DMA2D_OOR     : aliased DMA2D_OOR_Register;
      --  DMA2D number of line register
      DMA2D_NLR     : aliased DMA2D_NLR_Register;
      --  DMA2D line watermark register
      DMA2D_LWR     : aliased DMA2D_LWR_Register;
      --  DMA2D AXI master timer configuration register
      DMA2D_AMTCR   : aliased DMA2D_AMTCR_Register;
   end record
     with Volatile;

   for DMA2D_Peripheral use record
      DMA2D_CR      at 16#0# range 0 .. 31;
      DMA2D_ISR     at 16#4# range 0 .. 31;
      DMA2D_IFCR    at 16#8# range 0 .. 31;
      DMA2D_FGMAR   at 16#C# range 0 .. 31;
      DMA2D_FGOR    at 16#10# range 0 .. 31;
      DMA2D_BGMAR   at 16#14# range 0 .. 31;
      DMA2D_BGOR    at 16#18# range 0 .. 31;
      DMA2D_FGPFCCR at 16#1C# range 0 .. 31;
      DMA2D_FGCOLR  at 16#20# range 0 .. 31;
      DMA2D_BGPFCCR at 16#24# range 0 .. 31;
      DMA2D_BGCOLR  at 16#28# range 0 .. 31;
      DMA2D_FGCMAR  at 16#2C# range 0 .. 31;
      DMA2D_BGCMAR  at 16#30# range 0 .. 31;
      DMA2D_OPFCCR  at 16#34# range 0 .. 31;
      DMA2D_OCOLR   at 16#38# range 0 .. 31;
      DMA2D_OMAR    at 16#3C# range 0 .. 31;
      DMA2D_OOR     at 16#40# range 0 .. 31;
      DMA2D_NLR     at 16#44# range 0 .. 31;
      DMA2D_LWR     at 16#48# range 0 .. 31;
      DMA2D_AMTCR   at 16#4C# range 0 .. 31;
   end record;

   --  DMA2D
   DMA2D_Periph : aliased DMA2D_Peripheral
     with Import, Address => System'To_Address (16#4002B000#);

end STM32_SVD.DMA2D;
