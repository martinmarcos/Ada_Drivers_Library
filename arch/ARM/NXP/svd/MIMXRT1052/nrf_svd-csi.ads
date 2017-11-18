--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CSI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Pixel Bit
   type CSICR1_PIXEL_BIT_Field is
     (
      --  8-bit data for each pixel
      Pixel_Bit_0,
      --  10-bit data for each pixel
      Pixel_Bit_1)
     with Size => 1;
   for CSICR1_PIXEL_BIT_Field use
     (Pixel_Bit_0 => 0,
      Pixel_Bit_1 => 1);

   --  Valid Pixel Clock Edge Select
   type CSICR1_REDGE_Field is
     (
      --  Pixel data is latched at the falling edge of CSI_PIXCLK
      Redge_0,
      --  Pixel data is latched at the rising edge of CSI_PIXCLK
      Redge_1)
     with Size => 1;
   for CSICR1_REDGE_Field use
     (Redge_0 => 0,
      Redge_1 => 1);

   --  Invert Pixel Clock Input
   type CSICR1_INV_PCLK_Field is
     (
      --  CSI_PIXCLK is directly applied to internal circuitry
      Inv_Pclk_0,
      --  CSI_PIXCLK is inverted before applied to internal circuitry
      Inv_Pclk_1)
     with Size => 1;
   for CSICR1_INV_PCLK_Field use
     (Inv_Pclk_0 => 0,
      Inv_Pclk_1 => 1);

   --  Invert Data Input. This bit enables or disables internal inverters on
   --  the data lines.
   type CSICR1_INV_DATA_Field is
     (
      --  CSI_D[7:0] data lines are directly applied to internal circuitry
      Inv_Data_0,
      --  CSI_D[7:0] data lines are inverted before applied to internal
      --  circuitry
      Inv_Data_1)
     with Size => 1;
   for CSICR1_INV_DATA_Field use
     (Inv_Data_0 => 0,
      Inv_Data_1 => 1);

   --  Gated Clock Mode Enable
   type CSICR1_GCLK_MODE_Field is
     (
      --  Non-gated clock mode. All incoming pixel clocks are valid. HSYNC is
      --  ignored.
      Gclk_Mode_0,
      --  Gated clock mode. Pixel clock signal is valid only when HSYNC is
      --  active.
      Gclk_Mode_1)
     with Size => 1;
   for CSICR1_GCLK_MODE_Field use
     (Gclk_Mode_0 => 0,
      Gclk_Mode_1 => 1);

   --  Data Packing Direction
   type CSICR1_PACK_DIR_Field is
     (
      --  Pack from LSB first. For image data, 0x11, 0x22, 0x33, 0x44, it will
      --  appear as 0x44332211 in RX FIFO. For stat data, 0xAAAA, 0xBBBB, it
      --  will appear as 0xBBBBAAAA in STAT FIFO.
      Pack_Dir_0,
      --  Pack from MSB first. For image data, 0x11, 0x22, 0x33, 0x44, it will
      --  appear as 0x11223344 in RX FIFO. For stat data, 0xAAAA, 0xBBBB, it
      --  will appear as 0xAAAABBBB in STAT FIFO.
      Pack_Dir_1)
     with Size => 1;
   for CSICR1_PACK_DIR_Field use
     (Pack_Dir_0 => 0,
      Pack_Dir_1 => 1);

   --  FIFO Clear Control
   type CSICR1_FCC_Field is
     (
      --  Asynchronous FIFO clear is selected.
      Fcc_0,
      --  Synchronous FIFO clear is selected.
      Fcc_1)
     with Size => 1;
   for CSICR1_FCC_Field use
     (Fcc_0 => 0,
      Fcc_1 => 1);

   --  CCIR656 Interface Enable
   type CSICR1_CCIR_EN_Field is
     (
      --  Traditional interface is selected. Timing interface logic is used to
      --  latch data.
      Ccir_En_0,
      --  CCIR656 interface is selected.
      Ccir_En_1)
     with Size => 1;
   for CSICR1_CCIR_EN_Field use
     (Ccir_En_0 => 0,
      Ccir_En_1 => 1);

   --  HSYNC Polarity Select
   type CSICR1_HSYNC_POL_Field is
     (
      --  HSYNC is active low
      Hsync_Pol_0,
      --  HSYNC is active high
      Hsync_Pol_1)
     with Size => 1;
   for CSICR1_HSYNC_POL_Field use
     (Hsync_Pol_0 => 0,
      Hsync_Pol_1 => 1);

   --  Start Of Frame (SOF) Interrupt Enable. This bit enables the SOF
   --  interrupt.
   type CSICR1_SOF_INTEN_Field is
     (
      --  SOF interrupt disable
      Sof_Inten_0,
      --  SOF interrupt enable
      Sof_Inten_1)
     with Size => 1;
   for CSICR1_SOF_INTEN_Field use
     (Sof_Inten_0 => 0,
      Sof_Inten_1 => 1);

   --  SOF Interrupt Polarity. This bit controls the condition that generates
   --  an SOF interrupt.
   type CSICR1_SOF_POL_Field is
     (
      --  SOF interrupt is generated on SOF falling edge
      Sof_Pol_0,
      --  SOF interrupt is generated on SOF rising edge
      Sof_Pol_1)
     with Size => 1;
   for CSICR1_SOF_POL_Field use
     (Sof_Pol_0 => 0,
      Sof_Pol_1 => 1);

   --  RxFIFO Full Interrupt Enable. This bit enables the RxFIFO full
   --  interrupt.
   type CSICR1_RXFF_INTEN_Field is
     (
      --  RxFIFO full interrupt disable
      Rxff_Inten_0,
      --  RxFIFO full interrupt enable
      Rxff_Inten_1)
     with Size => 1;
   for CSICR1_RXFF_INTEN_Field use
     (Rxff_Inten_0 => 0,
      Rxff_Inten_1 => 1);

   --  Frame Buffer1 DMA Transfer Done Interrupt Enable
   type CSICR1_FB1_DMA_DONE_INTEN_Field is
     (
      --  Frame Buffer1 DMA Transfer Done interrupt disable
      Fb1_Dma_Done_Inten_0,
      --  Frame Buffer1 DMA Transfer Done interrupt enable
      Fb1_Dma_Done_Inten_1)
     with Size => 1;
   for CSICR1_FB1_DMA_DONE_INTEN_Field use
     (Fb1_Dma_Done_Inten_0 => 0,
      Fb1_Dma_Done_Inten_1 => 1);

   --  Frame Buffer2 DMA Transfer Done Interrupt Enable
   type CSICR1_FB2_DMA_DONE_INTEN_Field is
     (
      --  Frame Buffer2 DMA Transfer Done interrupt disable
      Fb2_Dma_Done_Inten_0,
      --  Frame Buffer2 DMA Transfer Done interrupt enable
      Fb2_Dma_Done_Inten_1)
     with Size => 1;
   for CSICR1_FB2_DMA_DONE_INTEN_Field use
     (Fb2_Dma_Done_Inten_0 => 0,
      Fb2_Dma_Done_Inten_1 => 1);

   --  STATFIFO Full Interrupt Enable. This bit enables the STAT FIFO
   --  interrupt.
   type CSICR1_STATFF_INTEN_Field is
     (
      --  STATFIFO full interrupt disable
      Statff_Inten_0,
      --  STATFIFO full interrupt enable
      Statff_Inten_1)
     with Size => 1;
   for CSICR1_STATFF_INTEN_Field use
     (Statff_Inten_0 => 0,
      Statff_Inten_1 => 1);

   --  STATFIFO DMA Transfer Done Interrupt Enable
   type CSICR1_SFF_DMA_DONE_INTEN_Field is
     (
      --  STATFIFO DMA Transfer Done interrupt disable
      Sff_Dma_Done_Inten_0,
      --  STATFIFO DMA Transfer Done interrupt enable
      Sff_Dma_Done_Inten_1)
     with Size => 1;
   for CSICR1_SFF_DMA_DONE_INTEN_Field use
     (Sff_Dma_Done_Inten_0 => 0,
      Sff_Dma_Done_Inten_1 => 1);

   --  RxFIFO Overrun Interrupt Enable. This bit enables the RX FIFO overrun
   --  interrupt.
   type CSICR1_RF_OR_INTEN_Field is
     (
      --  RxFIFO overrun interrupt is disabled
      Rf_Or_Inten_0,
      --  RxFIFO overrun interrupt is enabled
      Rf_Or_Inten_1)
     with Size => 1;
   for CSICR1_RF_OR_INTEN_Field use
     (Rf_Or_Inten_0 => 0,
      Rf_Or_Inten_1 => 1);

   --  STAT FIFO Overrun Interrupt Enable. This bit enables the STATFIFO
   --  overrun interrupt.
   type CSICR1_SF_OR_INTEN_Field is
     (
      --  STATFIFO overrun interrupt is disabled
      Sf_Or_Inten_0,
      --  STATFIFO overrun interrupt is enabled
      Sf_Or_Inten_1)
     with Size => 1;
   for CSICR1_SF_OR_INTEN_Field use
     (Sf_Or_Inten_0 => 0,
      Sf_Or_Inten_1 => 1);

   --  Change Of Image Field (COF) Interrupt Enable
   type CSICR1_COF_INT_EN_Field is
     (
      --  COF interrupt is disabled
      Cof_Int_En_0,
      --  COF interrupt is enabled
      Cof_Int_En_1)
     with Size => 1;
   for CSICR1_COF_INT_EN_Field use
     (Cof_Int_En_0 => 0,
      Cof_Int_En_1 => 1);

   --  CCIR Mode Select
   type CSICR1_CCIR_MODE_Field is
     (
      --  Progressive mode is selected
      Ccir_Mode_0,
      --  Interlace mode is selected
      Ccir_Mode_1)
     with Size => 1;
   for CSICR1_CCIR_MODE_Field use
     (Ccir_Mode_0 => 0,
      Ccir_Mode_1 => 1);

   --  CSI-PrP Interface Enable
   type CSICR1_PrP_IF_EN_Field is
     (
      --  CSI to PrP bus is disabled
      Prp_If_En_0,
      --  CSI to PrP bus is enabled
      Prp_If_En_1)
     with Size => 1;
   for CSICR1_PrP_IF_EN_Field use
     (Prp_If_En_0 => 0,
      Prp_If_En_1 => 1);

   --  End-of-Frame Interrupt Enable. This bit enables and disables the EOF
   --  interrupt.
   type CSICR1_EOF_INT_EN_Field is
     (
      --  EOF interrupt is disabled.
      Eof_Int_En_0,
      --  EOF interrupt is generated when RX count value is reached.
      Eof_Int_En_1)
     with Size => 1;
   for CSICR1_EOF_INT_EN_Field use
     (Eof_Int_En_0 => 0,
      Eof_Int_En_1 => 1);

   --  External VSYNC Enable
   type CSICR1_EXT_VSYNC_Field is
     (
      --  Internal VSYNC mode
      Ext_Vsync_0,
      --  External VSYNC mode
      Ext_Vsync_1)
     with Size => 1;
   for CSICR1_EXT_VSYNC_Field use
     (Ext_Vsync_0 => 0,
      Ext_Vsync_1 => 1);

   --  SWAP 16-Bit Enable
   type CSICR1_SWAP16_EN_Field is
     (
      --  Disable swapping
      Swap16_En_0,
      --  Enable swapping
      Swap16_En_1)
     with Size => 1;
   for CSICR1_SWAP16_EN_Field use
     (Swap16_En_0 => 0,
      Swap16_En_1 => 1);

   --  CSI Control Register 1
   type CSI_CSICR1_Register is record
      --  Pixel Bit
      PIXEL_BIT          : CSICR1_PIXEL_BIT_Field := NRF_SVD.CSI.Pixel_Bit_0;
      --  Valid Pixel Clock Edge Select
      REDGE              : CSICR1_REDGE_Field := NRF_SVD.CSI.Redge_0;
      --  Invert Pixel Clock Input
      INV_PCLK           : CSICR1_INV_PCLK_Field := NRF_SVD.CSI.Inv_Pclk_0;
      --  Invert Data Input. This bit enables or disables internal inverters on
      --  the data lines.
      INV_DATA           : CSICR1_INV_DATA_Field := NRF_SVD.CSI.Inv_Data_0;
      --  Gated Clock Mode Enable
      GCLK_MODE          : CSICR1_GCLK_MODE_Field := NRF_SVD.CSI.Gclk_Mode_0;
      --  Asynchronous RXFIFO Clear
      CLR_RXFIFO         : Boolean := False;
      --  Asynchronous STATFIFO Clear
      CLR_STATFIFO       : Boolean := False;
      --  Data Packing Direction
      PACK_DIR           : CSICR1_PACK_DIR_Field := NRF_SVD.CSI.Pack_Dir_0;
      --  FIFO Clear Control
      FCC                : CSICR1_FCC_Field := NRF_SVD.CSI.Fcc_0;
      --  unspecified
      Reserved_9_9       : HAL.Bit := 16#0#;
      --  CCIR656 Interface Enable
      CCIR_EN            : CSICR1_CCIR_EN_Field := NRF_SVD.CSI.Ccir_En_0;
      --  HSYNC Polarity Select
      HSYNC_POL          : CSICR1_HSYNC_POL_Field := NRF_SVD.CSI.Hsync_Pol_1;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Start Of Frame (SOF) Interrupt Enable. This bit enables the SOF
      --  interrupt.
      SOF_INTEN          : CSICR1_SOF_INTEN_Field := NRF_SVD.CSI.Sof_Inten_0;
      --  SOF Interrupt Polarity. This bit controls the condition that
      --  generates an SOF interrupt.
      SOF_POL            : CSICR1_SOF_POL_Field := NRF_SVD.CSI.Sof_Pol_0;
      --  RxFIFO Full Interrupt Enable. This bit enables the RxFIFO full
      --  interrupt.
      RXFF_INTEN         : CSICR1_RXFF_INTEN_Field :=
                            NRF_SVD.CSI.Rxff_Inten_0;
      --  Frame Buffer1 DMA Transfer Done Interrupt Enable
      FB1_DMA_DONE_INTEN : CSICR1_FB1_DMA_DONE_INTEN_Field :=
                            NRF_SVD.CSI.Fb1_Dma_Done_Inten_0;
      --  Frame Buffer2 DMA Transfer Done Interrupt Enable
      FB2_DMA_DONE_INTEN : CSICR1_FB2_DMA_DONE_INTEN_Field :=
                            NRF_SVD.CSI.Fb2_Dma_Done_Inten_0;
      --  STATFIFO Full Interrupt Enable. This bit enables the STAT FIFO
      --  interrupt.
      STATFF_INTEN       : CSICR1_STATFF_INTEN_Field :=
                            NRF_SVD.CSI.Statff_Inten_0;
      --  STATFIFO DMA Transfer Done Interrupt Enable
      SFF_DMA_DONE_INTEN : CSICR1_SFF_DMA_DONE_INTEN_Field :=
                            NRF_SVD.CSI.Sff_Dma_Done_Inten_0;
      --  unspecified
      Reserved_23_23     : HAL.Bit := 16#0#;
      --  RxFIFO Overrun Interrupt Enable. This bit enables the RX FIFO overrun
      --  interrupt.
      RF_OR_INTEN        : CSICR1_RF_OR_INTEN_Field :=
                            NRF_SVD.CSI.Rf_Or_Inten_0;
      --  STAT FIFO Overrun Interrupt Enable. This bit enables the STATFIFO
      --  overrun interrupt.
      SF_OR_INTEN        : CSICR1_SF_OR_INTEN_Field :=
                            NRF_SVD.CSI.Sf_Or_Inten_0;
      --  Change Of Image Field (COF) Interrupt Enable
      COF_INT_EN         : CSICR1_COF_INT_EN_Field :=
                            NRF_SVD.CSI.Cof_Int_En_0;
      --  CCIR Mode Select
      CCIR_MODE          : CSICR1_CCIR_MODE_Field := NRF_SVD.CSI.Ccir_Mode_0;
      --  CSI-PrP Interface Enable
      PrP_IF_EN          : CSICR1_PrP_IF_EN_Field := NRF_SVD.CSI.Prp_If_En_0;
      --  End-of-Frame Interrupt Enable. This bit enables and disables the EOF
      --  interrupt.
      EOF_INT_EN         : CSICR1_EOF_INT_EN_Field :=
                            NRF_SVD.CSI.Eof_Int_En_0;
      --  External VSYNC Enable
      EXT_VSYNC          : CSICR1_EXT_VSYNC_Field := NRF_SVD.CSI.Ext_Vsync_1;
      --  SWAP 16-Bit Enable
      SWAP16_EN          : CSICR1_SWAP16_EN_Field := NRF_SVD.CSI.Swap16_En_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSICR1_Register use record
      PIXEL_BIT          at 0 range 0 .. 0;
      REDGE              at 0 range 1 .. 1;
      INV_PCLK           at 0 range 2 .. 2;
      INV_DATA           at 0 range 3 .. 3;
      GCLK_MODE          at 0 range 4 .. 4;
      CLR_RXFIFO         at 0 range 5 .. 5;
      CLR_STATFIFO       at 0 range 6 .. 6;
      PACK_DIR           at 0 range 7 .. 7;
      FCC                at 0 range 8 .. 8;
      Reserved_9_9       at 0 range 9 .. 9;
      CCIR_EN            at 0 range 10 .. 10;
      HSYNC_POL          at 0 range 11 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      SOF_INTEN          at 0 range 16 .. 16;
      SOF_POL            at 0 range 17 .. 17;
      RXFF_INTEN         at 0 range 18 .. 18;
      FB1_DMA_DONE_INTEN at 0 range 19 .. 19;
      FB2_DMA_DONE_INTEN at 0 range 20 .. 20;
      STATFF_INTEN       at 0 range 21 .. 21;
      SFF_DMA_DONE_INTEN at 0 range 22 .. 22;
      Reserved_23_23     at 0 range 23 .. 23;
      RF_OR_INTEN        at 0 range 24 .. 24;
      SF_OR_INTEN        at 0 range 25 .. 25;
      COF_INT_EN         at 0 range 26 .. 26;
      CCIR_MODE          at 0 range 27 .. 27;
      PrP_IF_EN          at 0 range 28 .. 28;
      EOF_INT_EN         at 0 range 29 .. 29;
      EXT_VSYNC          at 0 range 30 .. 30;
      SWAP16_EN          at 0 range 31 .. 31;
   end record;

   subtype CSI_CSICR2_HSC_Field is HAL.UInt8;
   subtype CSI_CSICR2_VSC_Field is HAL.UInt8;

   --  Live View Resolution Mode. Selects the grid size used for live view
   --  resolution.
   type CSICR2_LVRM_Field is
     (
      --  512 x 384
      Lvrm_0,
      --  448 x 336
      Lvrm_1,
      --  384 x 288
      Lvrm_2,
      --  384 x 256
      Lvrm_3,
      --  320 x 240
      Lvrm_4,
      --  288 x 216
      Lvrm_5,
      --  400 x 300
      Lvrm_6)
     with Size => 3;
   for CSICR2_LVRM_Field use
     (Lvrm_0 => 0,
      Lvrm_1 => 1,
      Lvrm_2 => 2,
      Lvrm_3 => 3,
      Lvrm_4 => 4,
      Lvrm_5 => 5,
      Lvrm_6 => 6);

   --  Bayer Tile Start. Controls the Bayer pattern starting point.
   type CSICR2_BTS_Field is
     (
      --  GR
      Bts_0,
      --  RG
      Bts_1,
      --  BG
      Bts_2,
      --  GB
      Bts_3)
     with Size => 2;
   for CSICR2_BTS_Field use
     (Bts_0 => 0,
      Bts_1 => 1,
      Bts_2 => 2,
      Bts_3 => 3);

   --  Skip Count Enable. Enables or disables the skip count feature.
   type CSICR2_SCE_Field is
     (
      --  Skip count disable
      Sce_0,
      --  Skip count enable
      Sce_1)
     with Size => 1;
   for CSICR2_SCE_Field use
     (Sce_0 => 0,
      Sce_1 => 1);

   --  Auto Focus Spread. Selects which green pixels are used for auto-focus.
   type CSICR2_AFS_Field is
     (
      --  Abs Diff on consecutive green pixels
      Afs_0,
      --  Abs Diff on every third green pixels
      Afs_1)
     with Size => 2;
   for CSICR2_AFS_Field use
     (Afs_0 => 0,
      Afs_1 => 1);

   --  Double Resolution Mode. Controls size of statistics grid.
   type CSICR2_DRM_Field is
     (
      --  Stats grid of 8 x 6
      Drm_0,
      --  Stats grid of 8 x 12
      Drm_1)
     with Size => 1;
   for CSICR2_DRM_Field use
     (Drm_0 => 0,
      Drm_1 => 1);

   --  Burst Type of DMA Transfer from STATFIFO. Selects the burst type of DMA
   --  transfer from STATFIFO.
   type CSICR2_DMA_BURST_TYPE_SFF_Field is
     (
      --  Reset value for the field
      Csicr2_Dma_Burst_Type_Sff_Field_Reset,
      --  INCR4
      Dma_Burst_Type_Sff_1,
      --  INCR16
      Dma_Burst_Type_Sff_3)
     with Size => 2;
   for CSICR2_DMA_BURST_TYPE_SFF_Field use
     (Csicr2_Dma_Burst_Type_Sff_Field_Reset => 0,
      Dma_Burst_Type_Sff_1 => 1,
      Dma_Burst_Type_Sff_3 => 3);

   --  Burst Type of DMA Transfer from RxFIFO. Selects the burst type of DMA
   --  transfer from RxFIFO.
   type CSICR2_DMA_BURST_TYPE_RFF_Field is
     (
      --  Reset value for the field
      Csicr2_Dma_Burst_Type_Rff_Field_Reset,
      --  INCR4
      Dma_Burst_Type_Rff_1,
      --  INCR16
      Dma_Burst_Type_Rff_3)
     with Size => 2;
   for CSICR2_DMA_BURST_TYPE_RFF_Field use
     (Csicr2_Dma_Burst_Type_Rff_Field_Reset => 0,
      Dma_Burst_Type_Rff_1 => 1,
      Dma_Burst_Type_Rff_3 => 3);

   --  CSI Control Register 2
   type CSI_CSICR2_Register is record
      --  Horizontal Skip Count
      HSC                : CSI_CSICR2_HSC_Field := 16#0#;
      --  Vertical Skip Count. Contains the number of rows to skip. SCE must be
      --  1, otherwise VSC is ignored.
      VSC                : CSI_CSICR2_VSC_Field := 16#0#;
      --  Live View Resolution Mode. Selects the grid size used for live view
      --  resolution.
      LVRM               : CSICR2_LVRM_Field := NRF_SVD.CSI.Lvrm_0;
      --  Bayer Tile Start. Controls the Bayer pattern starting point.
      BTS                : CSICR2_BTS_Field := NRF_SVD.CSI.Bts_0;
      --  unspecified
      Reserved_21_22     : HAL.UInt2 := 16#0#;
      --  Skip Count Enable. Enables or disables the skip count feature.
      SCE                : CSICR2_SCE_Field := NRF_SVD.CSI.Sce_0;
      --  Auto Focus Spread. Selects which green pixels are used for
      --  auto-focus.
      AFS                : CSICR2_AFS_Field := NRF_SVD.CSI.Afs_0;
      --  Double Resolution Mode. Controls size of statistics grid.
      DRM                : CSICR2_DRM_Field := NRF_SVD.CSI.Drm_0;
      --  unspecified
      Reserved_27_27     : HAL.Bit := 16#0#;
      --  Burst Type of DMA Transfer from STATFIFO. Selects the burst type of
      --  DMA transfer from STATFIFO.
      DMA_BURST_TYPE_SFF : CSICR2_DMA_BURST_TYPE_SFF_Field :=
                            Csicr2_Dma_Burst_Type_Sff_Field_Reset;
      --  Burst Type of DMA Transfer from RxFIFO. Selects the burst type of DMA
      --  transfer from RxFIFO.
      DMA_BURST_TYPE_RFF : CSICR2_DMA_BURST_TYPE_RFF_Field :=
                            Csicr2_Dma_Burst_Type_Rff_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSICR2_Register use record
      HSC                at 0 range 0 .. 7;
      VSC                at 0 range 8 .. 15;
      LVRM               at 0 range 16 .. 18;
      BTS                at 0 range 19 .. 20;
      Reserved_21_22     at 0 range 21 .. 22;
      SCE                at 0 range 23 .. 23;
      AFS                at 0 range 24 .. 25;
      DRM                at 0 range 26 .. 26;
      Reserved_27_27     at 0 range 27 .. 27;
      DMA_BURST_TYPE_SFF at 0 range 28 .. 29;
      DMA_BURST_TYPE_RFF at 0 range 30 .. 31;
   end record;

   --  Automatic Error Correction Enable
   type CSICR3_ECC_AUTO_EN_Field is
     (
      --  Auto Error correction is disabled.
      Ecc_Auto_En_0,
      --  Auto Error correction is enabled.
      Ecc_Auto_En_1)
     with Size => 1;
   for CSICR3_ECC_AUTO_EN_Field use
     (Ecc_Auto_En_0 => 0,
      Ecc_Auto_En_1 => 1);

   --  Error Detection Interrupt Enable
   type CSICR3_ECC_INT_EN_Field is
     (
      --  No interrupt is generated when error is detected. Only the status bit
      --  ECC_INT is set.
      Ecc_Int_En_0,
      --  Interrupt is generated when error is detected.
      Ecc_Int_En_1)
     with Size => 1;
   for CSICR3_ECC_INT_EN_Field use
     (Ecc_Int_En_0 => 0,
      Ecc_Int_En_1 => 1);

   --  Dummy Zero Packing Enable
   type CSICR3_ZERO_PACK_EN_Field is
     (
      --  Zero packing disabled
      Zero_Pack_En_0,
      --  Zero packing enabled
      Zero_Pack_En_1)
     with Size => 1;
   for CSICR3_ZERO_PACK_EN_Field use
     (Zero_Pack_En_0 => 0,
      Zero_Pack_En_1 => 1);

   --  Two 8-bit Sensor Mode
   type CSICR3_TWO_8BIT_SENSOR_Field is
     (
      --  Only one sensor is connected.
      Two_8Bit_Sensor_0,
      --  Two 8-bit sensors are connected or one 16-bit sensor is connected.
      Two_8Bit_Sensor_1)
     with Size => 1;
   for CSICR3_TWO_8BIT_SENSOR_Field use
     (Two_8Bit_Sensor_0 => 0,
      Two_8Bit_Sensor_1 => 1);

   --  RxFIFO Full Level
   type CSICR3_RxFF_LEVEL_Field is
     (
      --  4 Words
      Rxff_Level_0,
      --  8 Words
      Rxff_Level_1,
      --  16 Words
      Rxff_Level_2,
      --  24 Words
      Rxff_Level_3,
      --  32 Words
      Rxff_Level_4,
      --  48 Words
      Rxff_Level_5,
      --  64 Words
      Rxff_Level_6,
      --  96 Words
      Rxff_Level_7)
     with Size => 3;
   for CSICR3_RxFF_LEVEL_Field use
     (Rxff_Level_0 => 0,
      Rxff_Level_1 => 1,
      Rxff_Level_2 => 2,
      Rxff_Level_3 => 3,
      Rxff_Level_4 => 4,
      Rxff_Level_5 => 5,
      Rxff_Level_6 => 6,
      Rxff_Level_7 => 7);

   --  Hresponse Error Enable. This bit enables the hresponse error interrupt.
   type CSICR3_HRESP_ERR_EN_Field is
     (
      --  Disable hresponse error interrupt
      Hresp_Err_En_0,
      --  Enable hresponse error interrupt
      Hresp_Err_En_1)
     with Size => 1;
   for CSICR3_HRESP_ERR_EN_Field use
     (Hresp_Err_En_0 => 0,
      Hresp_Err_En_1 => 1);

   --  STATFIFO Full Level
   type CSICR3_STATFF_LEVEL_Field is
     (
      --  4 Words
      Statff_Level_0,
      --  8 Words
      Statff_Level_1,
      --  12 Words
      Statff_Level_2,
      --  16 Words
      Statff_Level_3,
      --  24 Words
      Statff_Level_4,
      --  32 Words
      Statff_Level_5,
      --  48 Words
      Statff_Level_6,
      --  64 Words
      Statff_Level_7)
     with Size => 3;
   for CSICR3_STATFF_LEVEL_Field use
     (Statff_Level_0 => 0,
      Statff_Level_1 => 1,
      Statff_Level_2 => 2,
      Statff_Level_3 => 3,
      Statff_Level_4 => 4,
      Statff_Level_5 => 5,
      Statff_Level_6 => 6,
      Statff_Level_7 => 7);

   --  DMA Request Enable for STATFIFO
   type CSICR3_DMA_REQ_EN_SFF_Field is
     (
      --  Disable the dma request
      Dma_Req_En_Sff_0,
      --  Enable the dma request
      Dma_Req_En_Sff_1)
     with Size => 1;
   for CSICR3_DMA_REQ_EN_SFF_Field use
     (Dma_Req_En_Sff_0 => 0,
      Dma_Req_En_Sff_1 => 1);

   --  DMA Request Enable for RxFIFO
   type CSICR3_DMA_REQ_EN_RFF_Field is
     (
      --  Disable the dma request
      Dma_Req_En_Rff_0,
      --  Enable the dma request
      Dma_Req_En_Rff_1)
     with Size => 1;
   for CSICR3_DMA_REQ_EN_RFF_Field use
     (Dma_Req_En_Rff_0 => 0,
      Dma_Req_En_Rff_1 => 1);

   --  Reflash DMA Controller for STATFIFO
   type CSICR3_DMA_REFLASH_SFF_Field is
     (
      --  No reflashing
      Dma_Reflash_Sff_0,
      --  Reflash the embedded DMA controller
      Dma_Reflash_Sff_1)
     with Size => 1;
   for CSICR3_DMA_REFLASH_SFF_Field use
     (Dma_Reflash_Sff_0 => 0,
      Dma_Reflash_Sff_1 => 1);

   --  Reflash DMA Controller for RxFIFO
   type CSICR3_DMA_REFLASH_RFF_Field is
     (
      --  No reflashing
      Dma_Reflash_Rff_0,
      --  Reflash the embedded DMA controller
      Dma_Reflash_Rff_1)
     with Size => 1;
   for CSICR3_DMA_REFLASH_RFF_Field use
     (Dma_Reflash_Rff_0 => 0,
      Dma_Reflash_Rff_1 => 1);

   --  Frame Count Reset. Resets the Frame Counter. (Cleared automatically
   --  after reset is done)
   type CSICR3_FRMCNT_RST_Field is
     (
      --  Do not reset
      Frmcnt_Rst_0,
      --  Reset frame counter immediately
      Frmcnt_Rst_1)
     with Size => 1;
   for CSICR3_FRMCNT_RST_Field use
     (Frmcnt_Rst_0 => 0,
      Frmcnt_Rst_1 => 1);

   subtype CSI_CSICR3_FRMCNT_Field is HAL.UInt16;

   --  CSI Control Register 3
   type CSI_CSICR3_Register is record
      --  Automatic Error Correction Enable
      ECC_AUTO_EN     : CSICR3_ECC_AUTO_EN_Field := NRF_SVD.CSI.Ecc_Auto_En_0;
      --  Error Detection Interrupt Enable
      ECC_INT_EN      : CSICR3_ECC_INT_EN_Field := NRF_SVD.CSI.Ecc_Int_En_0;
      --  Dummy Zero Packing Enable
      ZERO_PACK_EN    : CSICR3_ZERO_PACK_EN_Field :=
                         NRF_SVD.CSI.Zero_Pack_En_0;
      --  Two 8-bit Sensor Mode
      TWO_8BIT_SENSOR : CSICR3_TWO_8BIT_SENSOR_Field :=
                         NRF_SVD.CSI.Two_8Bit_Sensor_0;
      --  RxFIFO Full Level
      RxFF_LEVEL      : CSICR3_RxFF_LEVEL_Field := NRF_SVD.CSI.Rxff_Level_0;
      --  Hresponse Error Enable. This bit enables the hresponse error
      --  interrupt.
      HRESP_ERR_EN    : CSICR3_HRESP_ERR_EN_Field :=
                         NRF_SVD.CSI.Hresp_Err_En_0;
      --  STATFIFO Full Level
      STATFF_LEVEL    : CSICR3_STATFF_LEVEL_Field :=
                         NRF_SVD.CSI.Statff_Level_0;
      --  DMA Request Enable for STATFIFO
      DMA_REQ_EN_SFF  : CSICR3_DMA_REQ_EN_SFF_Field :=
                         NRF_SVD.CSI.Dma_Req_En_Sff_0;
      --  DMA Request Enable for RxFIFO
      DMA_REQ_EN_RFF  : CSICR3_DMA_REQ_EN_RFF_Field :=
                         NRF_SVD.CSI.Dma_Req_En_Rff_0;
      --  Reflash DMA Controller for STATFIFO
      DMA_REFLASH_SFF : CSICR3_DMA_REFLASH_SFF_Field :=
                         NRF_SVD.CSI.Dma_Reflash_Sff_0;
      --  Reflash DMA Controller for RxFIFO
      DMA_REFLASH_RFF : CSICR3_DMA_REFLASH_RFF_Field :=
                         NRF_SVD.CSI.Dma_Reflash_Rff_0;
      --  Frame Count Reset. Resets the Frame Counter. (Cleared automatically
      --  after reset is done)
      FRMCNT_RST      : CSICR3_FRMCNT_RST_Field := NRF_SVD.CSI.Frmcnt_Rst_0;
      --  Frame Counter
      FRMCNT          : CSI_CSICR3_FRMCNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSICR3_Register use record
      ECC_AUTO_EN     at 0 range 0 .. 0;
      ECC_INT_EN      at 0 range 1 .. 1;
      ZERO_PACK_EN    at 0 range 2 .. 2;
      TWO_8BIT_SENSOR at 0 range 3 .. 3;
      RxFF_LEVEL      at 0 range 4 .. 6;
      HRESP_ERR_EN    at 0 range 7 .. 7;
      STATFF_LEVEL    at 0 range 8 .. 10;
      DMA_REQ_EN_SFF  at 0 range 11 .. 11;
      DMA_REQ_EN_RFF  at 0 range 12 .. 12;
      DMA_REFLASH_SFF at 0 range 13 .. 13;
      DMA_REFLASH_RFF at 0 range 14 .. 14;
      FRMCNT_RST      at 0 range 15 .. 15;
      FRMCNT          at 0 range 16 .. 31;
   end record;

   subtype CSI_CSIRXCNT_RXCNT_Field is HAL.UInt22;

   --  CSI RX Count Register
   type CSI_CSIRXCNT_Register is record
      --  RxFIFO Count
      RXCNT          : CSI_CSIRXCNT_RXCNT_Field := 16#9600#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSIRXCNT_Register use record
      RXCNT          at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  RXFIFO Data Ready
   type CSISR_DRDY_Field is
     (
      --  No data (word) is ready
      Drdy_0,
      --  At least 1 datum (word) is ready in RXFIFO.
      Drdy_1)
     with Size => 1;
   for CSISR_DRDY_Field use
     (Drdy_0 => 0,
      Drdy_1 => 1);

   --  CCIR Error Interrupt
   type CSISR_ECC_INT_Field is
     (
      --  No error detected
      Ecc_Int_0,
      --  Error is detected in CCIR coding
      Ecc_Int_1)
     with Size => 1;
   for CSISR_ECC_INT_Field use
     (Ecc_Int_0 => 0,
      Ecc_Int_1 => 1);

   --  Hresponse Error Interrupt Status
   type CSISR_HRESP_ERR_INT_Field is
     (
      --  No hresponse error.
      Hresp_Err_Int_0,
      --  Hresponse error is detected.
      Hresp_Err_Int_1)
     with Size => 1;
   for CSISR_HRESP_ERR_INT_Field use
     (Hresp_Err_Int_0 => 0,
      Hresp_Err_Int_1 => 1);

   --  Change Of Field Interrupt Status
   type CSISR_COF_INT_Field is
     (
      --  Video field has no change.
      Cof_Int_0,
      --  Change of video field is detected.
      Cof_Int_1)
     with Size => 1;
   for CSISR_COF_INT_Field use
     (Cof_Int_0 => 0,
      Cof_Int_1 => 1);

   --  CCIR Field 1 Interrupt Status
   type CSISR_F1_INT_Field is
     (
      --  Field 1 of video is not detected.
      F1_Int_0,
      --  Field 1 of video is about to start.
      F1_Int_1)
     with Size => 1;
   for CSISR_F1_INT_Field use
     (F1_Int_0 => 0,
      F1_Int_1 => 1);

   --  CCIR Field 2 Interrupt Status
   type CSISR_F2_INT_Field is
     (
      --  Field 2 of video is not detected
      F2_Int_0,
      --  Field 2 of video is about to start
      F2_Int_1)
     with Size => 1;
   for CSISR_F2_INT_Field use
     (F2_Int_0 => 0,
      F2_Int_1 => 1);

   --  Start of Frame Interrupt Status. Indicates when SOF is detected.
   --  (Cleared by writing 1)
   type CSISR_SOF_INT_Field is
     (
      --  SOF is not detected.
      Sof_Int_0,
      --  SOF is detected.
      Sof_Int_1)
     with Size => 1;
   for CSISR_SOF_INT_Field use
     (Sof_Int_0 => 0,
      Sof_Int_1 => 1);

   --  End of Frame (EOF) Interrupt Status. Indicates when EOF is detected.
   --  (Cleared by writing 1)
   type CSISR_EOF_INT_Field is
     (
      --  EOF is not detected.
      Eof_Int_0,
      --  EOF is detected.
      Eof_Int_1)
     with Size => 1;
   for CSISR_EOF_INT_Field use
     (Eof_Int_0 => 0,
      Eof_Int_1 => 1);

   --  RXFIFO Full Interrupt Status
   type CSISR_RxFF_INT_Field is
     (
      --  RxFIFO is not full.
      Rxff_Int_0,
      --  RxFIFO is full.
      Rxff_Int_1)
     with Size => 1;
   for CSISR_RxFF_INT_Field use
     (Rxff_Int_0 => 0,
      Rxff_Int_1 => 1);

   --  DMA Transfer Done in Frame Buffer1
   type CSISR_DMA_TSF_DONE_FB1_Field is
     (
      --  DMA transfer is not completed.
      Dma_Tsf_Done_Fb1_0,
      --  DMA transfer is completed.
      Dma_Tsf_Done_Fb1_1)
     with Size => 1;
   for CSISR_DMA_TSF_DONE_FB1_Field use
     (Dma_Tsf_Done_Fb1_0 => 0,
      Dma_Tsf_Done_Fb1_1 => 1);

   --  DMA Transfer Done in Frame Buffer2
   type CSISR_DMA_TSF_DONE_FB2_Field is
     (
      --  DMA transfer is not completed.
      Dma_Tsf_Done_Fb2_0,
      --  DMA transfer is completed.
      Dma_Tsf_Done_Fb2_1)
     with Size => 1;
   for CSISR_DMA_TSF_DONE_FB2_Field use
     (Dma_Tsf_Done_Fb2_0 => 0,
      Dma_Tsf_Done_Fb2_1 => 1);

   --  STATFIFO Full Interrupt Status
   type CSISR_STATFF_INT_Field is
     (
      --  STATFIFO is not full.
      Statff_Int_0,
      --  STATFIFO is full.
      Statff_Int_1)
     with Size => 1;
   for CSISR_STATFF_INT_Field use
     (Statff_Int_0 => 0,
      Statff_Int_1 => 1);

   --  DMA Transfer Done from StatFIFO
   type CSISR_DMA_TSF_DONE_SFF_Field is
     (
      --  DMA transfer is not completed.
      Dma_Tsf_Done_Sff_0,
      --  DMA transfer is completed.
      Dma_Tsf_Done_Sff_1)
     with Size => 1;
   for CSISR_DMA_TSF_DONE_SFF_Field use
     (Dma_Tsf_Done_Sff_0 => 0,
      Dma_Tsf_Done_Sff_1 => 1);

   --  RxFIFO Overrun Interrupt Status
   type CSISR_RF_OR_INT_Field is
     (
      --  RXFIFO has not overflowed.
      Rf_Or_Int_0,
      --  RXFIFO has overflowed.
      Rf_Or_Int_1)
     with Size => 1;
   for CSISR_RF_OR_INT_Field use
     (Rf_Or_Int_0 => 0,
      Rf_Or_Int_1 => 1);

   --  STATFIFO Overrun Interrupt Status
   type CSISR_SF_OR_INT_Field is
     (
      --  STATFIFO has not overflowed.
      Sf_Or_Int_0,
      --  STATFIFO has overflowed.
      Sf_Or_Int_1)
     with Size => 1;
   for CSISR_SF_OR_INT_Field use
     (Sf_Or_Int_0 => 0,
      Sf_Or_Int_1 => 1);

   --  CSI Status Register
   type CSI_CSISR_Register is record
      --  RXFIFO Data Ready
      DRDY                   : CSISR_DRDY_Field := NRF_SVD.CSI.Drdy_0;
      --  CCIR Error Interrupt
      ECC_INT                : CSISR_ECC_INT_Field := NRF_SVD.CSI.Ecc_Int_0;
      --  unspecified
      Reserved_2_6           : HAL.UInt5 := 16#0#;
      --  Hresponse Error Interrupt Status
      HRESP_ERR_INT          : CSISR_HRESP_ERR_INT_Field :=
                                NRF_SVD.CSI.Hresp_Err_Int_0;
      --  unspecified
      Reserved_8_12          : HAL.UInt5 := 16#0#;
      --  Change Of Field Interrupt Status
      COF_INT                : CSISR_COF_INT_Field := NRF_SVD.CSI.Cof_Int_0;
      --  CCIR Field 1 Interrupt Status
      F1_INT                 : CSISR_F1_INT_Field := NRF_SVD.CSI.F1_Int_1;
      --  CCIR Field 2 Interrupt Status
      F2_INT                 : CSISR_F2_INT_Field := NRF_SVD.CSI.F2_Int_0;
      --  Start of Frame Interrupt Status. Indicates when SOF is detected.
      --  (Cleared by writing 1)
      SOF_INT                : CSISR_SOF_INT_Field := NRF_SVD.CSI.Sof_Int_0;
      --  End of Frame (EOF) Interrupt Status. Indicates when EOF is detected.
      --  (Cleared by writing 1)
      EOF_INT                : CSISR_EOF_INT_Field := NRF_SVD.CSI.Eof_Int_0;
      --  RXFIFO Full Interrupt Status
      RxFF_INT               : CSISR_RxFF_INT_Field := NRF_SVD.CSI.Rxff_Int_0;
      --  DMA Transfer Done in Frame Buffer1
      DMA_TSF_DONE_FB1       : CSISR_DMA_TSF_DONE_FB1_Field :=
                                NRF_SVD.CSI.Dma_Tsf_Done_Fb1_0;
      --  DMA Transfer Done in Frame Buffer2
      DMA_TSF_DONE_FB2       : CSISR_DMA_TSF_DONE_FB2_Field :=
                                NRF_SVD.CSI.Dma_Tsf_Done_Fb2_0;
      --  STATFIFO Full Interrupt Status
      STATFF_INT             : CSISR_STATFF_INT_Field :=
                                NRF_SVD.CSI.Statff_Int_0;
      --  DMA Transfer Done from StatFIFO
      DMA_TSF_DONE_SFF       : CSISR_DMA_TSF_DONE_SFF_Field :=
                                NRF_SVD.CSI.Dma_Tsf_Done_Sff_0;
      --  unspecified
      Reserved_23_23         : HAL.Bit := 16#0#;
      --  RxFIFO Overrun Interrupt Status
      RF_OR_INT              : CSISR_RF_OR_INT_Field :=
                                NRF_SVD.CSI.Rf_Or_Int_0;
      --  STATFIFO Overrun Interrupt Status
      SF_OR_INT              : CSISR_SF_OR_INT_Field :=
                                NRF_SVD.CSI.Sf_Or_Int_0;
      --  When DMA field 0 is complete, this bit will be set to 1(clear by
      --  writing 1).
      DMA_FIELD1_DONE        : Boolean := False;
      --  When DMA field 0 is complete, this bit will be set to 1(clear by
      --  writing 1).
      DMA_FIELD0_DONE        : Boolean := False;
      --  When using base address switching enable, this bit will be 1 when
      --  switching occur before DMA complete
      BASEADDR_CHHANGE_ERROR : Boolean := False;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSISR_Register use record
      DRDY                   at 0 range 0 .. 0;
      ECC_INT                at 0 range 1 .. 1;
      Reserved_2_6           at 0 range 2 .. 6;
      HRESP_ERR_INT          at 0 range 7 .. 7;
      Reserved_8_12          at 0 range 8 .. 12;
      COF_INT                at 0 range 13 .. 13;
      F1_INT                 at 0 range 14 .. 14;
      F2_INT                 at 0 range 15 .. 15;
      SOF_INT                at 0 range 16 .. 16;
      EOF_INT                at 0 range 17 .. 17;
      RxFF_INT               at 0 range 18 .. 18;
      DMA_TSF_DONE_FB1       at 0 range 19 .. 19;
      DMA_TSF_DONE_FB2       at 0 range 20 .. 20;
      STATFF_INT             at 0 range 21 .. 21;
      DMA_TSF_DONE_SFF       at 0 range 22 .. 22;
      Reserved_23_23         at 0 range 23 .. 23;
      RF_OR_INT              at 0 range 24 .. 24;
      SF_OR_INT              at 0 range 25 .. 25;
      DMA_FIELD1_DONE        at 0 range 26 .. 26;
      DMA_FIELD0_DONE        at 0 range 27 .. 27;
      BASEADDR_CHHANGE_ERROR at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   subtype CSI_CSIDMASA_STATFIFO_DMA_START_ADDR_SFF_Field is HAL.UInt30;

   --  CSI DMA Start Address Register - for STATFIFO
   type CSI_CSIDMASA_STATFIFO_Register is record
      --  unspecified
      Reserved_0_1       : HAL.UInt2 := 16#0#;
      --  DMA Start Address for STATFIFO
      DMA_START_ADDR_SFF : CSI_CSIDMASA_STATFIFO_DMA_START_ADDR_SFF_Field :=
                            16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSIDMASA_STATFIFO_Register use record
      Reserved_0_1       at 0 range 0 .. 1;
      DMA_START_ADDR_SFF at 0 range 2 .. 31;
   end record;

   subtype CSI_CSIDMASA_FB1_DMA_START_ADDR_FB1_Field is HAL.UInt30;

   --  CSI DMA Start Address Register - for Frame Buffer1
   type CSI_CSIDMASA_FB1_Register is record
      --  unspecified
      Reserved_0_1       : HAL.UInt2 := 16#0#;
      --  DMA Start Address in Frame Buffer1
      DMA_START_ADDR_FB1 : CSI_CSIDMASA_FB1_DMA_START_ADDR_FB1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSIDMASA_FB1_Register use record
      Reserved_0_1       at 0 range 0 .. 1;
      DMA_START_ADDR_FB1 at 0 range 2 .. 31;
   end record;

   subtype CSI_CSIDMASA_FB2_DMA_START_ADDR_FB2_Field is HAL.UInt30;

   --  CSI DMA Transfer Size Register - for Frame Buffer2
   type CSI_CSIDMASA_FB2_Register is record
      --  unspecified
      Reserved_0_1       : HAL.UInt2 := 16#0#;
      --  DMA Start Address in Frame Buffer2
      DMA_START_ADDR_FB2 : CSI_CSIDMASA_FB2_DMA_START_ADDR_FB2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSIDMASA_FB2_Register use record
      Reserved_0_1       at 0 range 0 .. 1;
      DMA_START_ADDR_FB2 at 0 range 2 .. 31;
   end record;

   subtype CSI_CSIFBUF_PARA_FBUF_STRIDE_Field is HAL.UInt16;
   subtype CSI_CSIFBUF_PARA_DEINTERLACE_STRIDE_Field is HAL.UInt16;

   --  CSI Frame Buffer Parameter Register
   type CSI_CSIFBUF_PARA_Register is record
      --  Frame Buffer Parameter
      FBUF_STRIDE        : CSI_CSIFBUF_PARA_FBUF_STRIDE_Field := 16#0#;
      --  DEINTERLACE_STRIDE is only used in the deinterlace mode
      DEINTERLACE_STRIDE : CSI_CSIFBUF_PARA_DEINTERLACE_STRIDE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSIFBUF_PARA_Register use record
      FBUF_STRIDE        at 0 range 0 .. 15;
      DEINTERLACE_STRIDE at 0 range 16 .. 31;
   end record;

   subtype CSI_CSIIMAG_PARA_IMAGE_HEIGHT_Field is HAL.UInt16;
   subtype CSI_CSIIMAG_PARA_IMAGE_WIDTH_Field is HAL.UInt16;

   --  CSI Image Parameter Register
   type CSI_CSIIMAG_PARA_Register is record
      --  Image Height. Indicates how many pixels in a column of the image from
      --  the sensor.
      IMAGE_HEIGHT : CSI_CSIIMAG_PARA_IMAGE_HEIGHT_Field := 16#0#;
      --  Image Width
      IMAGE_WIDTH  : CSI_CSIIMAG_PARA_IMAGE_WIDTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSIIMAG_PARA_Register use record
      IMAGE_HEIGHT at 0 range 0 .. 15;
      IMAGE_WIDTH  at 0 range 16 .. 31;
   end record;

   --  This bit is used to select the output method When input is standard
   --  CCIR656 video.
   type CSICR18_DEINTERLACE_EN_Field is
     (
      --  Deinterlace disabled
      Deinterlace_En_0,
      --  Deinterlace enabled
      Deinterlace_En_1)
     with Size => 1;
   for CSICR18_DEINTERLACE_EN_Field use
     (Deinterlace_En_0 => 0,
      Deinterlace_En_1 => 1);

   --  CSI 2 base addresses switching method. When using this bit,
   --  BASEADDR_SWITCH_EN is 1.
   type CSICR18_BASEADDR_SWITCH_SEL_Field is
     (
      --  Switching base address at the edge of the vsync
      Baseaddr_Switch_Sel_0,
      --  Switching base address at the edge of the first data of each frame
      Baseaddr_Switch_Sel_1)
     with Size => 1;
   for CSICR18_BASEADDR_SWITCH_SEL_Field use
     (Baseaddr_Switch_Sel_0 => 0,
      Baseaddr_Switch_Sel_1 => 1);

   --  In interlace mode, fileld 0 means interrupt enabled.
   type CSICR18_FIELD0_DONE_IE_Field is
     (
      --  Interrupt disabled
      Field0_Done_Ie_0,
      --  Interrupt enabled
      Field0_Done_Ie_1)
     with Size => 1;
   for CSICR18_FIELD0_DONE_IE_Field use
     (Field0_Done_Ie_0 => 0,
      Field0_Done_Ie_1 => 1);

   --  When in interlace mode, field 1 done interrupt enable.
   type CSICR18_DMA_FIELD1_DONE_IE_Field is
     (
      --  Interrupt disabled
      Dma_Field1_Done_Ie_0,
      --  Interrupt enabled
      Dma_Field1_Done_Ie_1)
     with Size => 1;
   for CSICR18_DMA_FIELD1_DONE_IE_Field use
     (Dma_Field1_Done_Ie_0 => 0,
      Dma_Field1_Done_Ie_1 => 1);

   --  Choosing the last DMA request condition.
   type CSICR18_LAST_DMA_REQ_SEL_Field is
     (
      --  fifo_full_level
      Last_Dma_Req_Sel_0,
      --  hburst_length
      Last_Dma_Req_Sel_1)
     with Size => 1;
   for CSICR18_LAST_DMA_REQ_SEL_Field use
     (Last_Dma_Req_Sel_0 => 0,
      Last_Dma_Req_Sel_1 => 1);

   --  Output is 32-bit format.
   type CSICR18_RGB888A_FORMAT_SEL_Field is
     (
      --  {8'h0, data[23:0]}
      Rgb888A_Format_Sel_0,
      --  {data[23:0], 8'h0}
      Rgb888A_Format_Sel_1)
     with Size => 1;
   for CSICR18_RGB888A_FORMAT_SEL_Field use
     (Rgb888A_Format_Sel_0 => 0,
      Rgb888A_Format_Sel_1 => 1);

   subtype CSI_CSICR18_AHB_HPROT_Field is HAL.UInt4;

   --  The number of lines are used in handshake mode with LCDIF.
   type CSICR18_CSI_LCDIF_BUFFER_LINES_Field is
     (
      --  4 lines
      Csi_Lcdif_Buffer_Lines_0,
      --  8 lines
      Csi_Lcdif_Buffer_Lines_1,
      --  16 lines
      Csi_Lcdif_Buffer_Lines_2,
      --  16 lines
      Csi_Lcdif_Buffer_Lines_3)
     with Size => 2;
   for CSICR18_CSI_LCDIF_BUFFER_LINES_Field use
     (Csi_Lcdif_Buffer_Lines_0 => 0,
      Csi_Lcdif_Buffer_Lines_1 => 1,
      Csi_Lcdif_Buffer_Lines_2 => 2,
      Csi_Lcdif_Buffer_Lines_3 => 3);

   --  These bits used to choose the method to mask the CSI input.
   type CSICR18_MASK_OPTION_Field is
     (
      --  Writing to memory from first completely frame, when using this
      --  option, the CSI_ENABLE should be 1.
      Mask_Option_0,
      --  Writing to memory when CSI_ENABLE is 1.
      Mask_Option_1,
      --  Writing to memory from second completely frame, when using this
      --  option, the CSI_ENABLE should be 1.
      Mask_Option_2,
      --  Writing to memory when data comes in, not matter the CSI_ENABLE is 1
      --  or 0.
      Mask_Option_3)
     with Size => 2;
   for CSICR18_MASK_OPTION_Field use
     (Mask_Option_0 => 0,
      Mask_Option_1 => 1,
      Mask_Option_2 => 2,
      Mask_Option_3 => 3);

   --  CSI Control Register 18
   type CSI_CSICR18_Register is record
      --  unspecified
      Reserved_0_1             : HAL.UInt2 := 16#0#;
      --  This bit is used to select the output method When input is standard
      --  CCIR656 video.
      DEINTERLACE_EN           : CSICR18_DEINTERLACE_EN_Field :=
                                  NRF_SVD.CSI.Deinterlace_En_0;
      --  When input is parallel rgb888/yuv444 24bit, this bit can be enabled.
      PARALLEL24_EN            : Boolean := False;
      --  When this bit is enabled, CSI DMA will switch the base address
      --  according to BASEADDR_SWITCH_SEL rather than atomically by DMA
      --  completed
      BASEADDR_SWITCH_EN       : Boolean := False;
      --  CSI 2 base addresses switching method. When using this bit,
      --  BASEADDR_SWITCH_EN is 1.
      BASEADDR_SWITCH_SEL      : CSICR18_BASEADDR_SWITCH_SEL_Field :=
                                  NRF_SVD.CSI.Baseaddr_Switch_Sel_0;
      --  In interlace mode, fileld 0 means interrupt enabled.
      FIELD0_DONE_IE           : CSICR18_FIELD0_DONE_IE_Field :=
                                  NRF_SVD.CSI.Field0_Done_Ie_0;
      --  When in interlace mode, field 1 done interrupt enable.
      DMA_FIELD1_DONE_IE       : CSICR18_DMA_FIELD1_DONE_IE_Field :=
                                  NRF_SVD.CSI.Dma_Field1_Done_Ie_0;
      --  Choosing the last DMA request condition.
      LAST_DMA_REQ_SEL         : CSICR18_LAST_DMA_REQ_SEL_Field :=
                                  NRF_SVD.CSI.Last_Dma_Req_Sel_0;
      --  Base address change error interrupt enable signal.
      BASEADDR_CHANGE_ERROR_IE : Boolean := False;
      --  Output is 32-bit format.
      RGB888A_FORMAT_SEL       : CSICR18_RGB888A_FORMAT_SEL_Field :=
                                  NRF_SVD.CSI.Rgb888A_Format_Sel_0;
      --  unspecified
      Reserved_11_11           : HAL.Bit := 16#0#;
      --  Hprot value in AHB bus protocol.
      AHB_HPROT                : CSI_CSICR18_AHB_HPROT_Field := 16#D#;
      --  The number of lines are used in handshake mode with LCDIF.
      CSI_LCDIF_BUFFER_LINES   : CSICR18_CSI_LCDIF_BUFFER_LINES_Field :=
                                  NRF_SVD.CSI.Csi_Lcdif_Buffer_Lines_2;
      --  These bits used to choose the method to mask the CSI input.
      MASK_OPTION              : CSICR18_MASK_OPTION_Field :=
                                  NRF_SVD.CSI.Mask_Option_0;
      --  unspecified
      Reserved_20_30           : HAL.UInt11 := 16#0#;
      --  CSI global enable signal
      CSI_ENABLE               : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSICR18_Register use record
      Reserved_0_1             at 0 range 0 .. 1;
      DEINTERLACE_EN           at 0 range 2 .. 2;
      PARALLEL24_EN            at 0 range 3 .. 3;
      BASEADDR_SWITCH_EN       at 0 range 4 .. 4;
      BASEADDR_SWITCH_SEL      at 0 range 5 .. 5;
      FIELD0_DONE_IE           at 0 range 6 .. 6;
      DMA_FIELD1_DONE_IE       at 0 range 7 .. 7;
      LAST_DMA_REQ_SEL         at 0 range 8 .. 8;
      BASEADDR_CHANGE_ERROR_IE at 0 range 9 .. 9;
      RGB888A_FORMAT_SEL       at 0 range 10 .. 10;
      Reserved_11_11           at 0 range 11 .. 11;
      AHB_HPROT                at 0 range 12 .. 15;
      CSI_LCDIF_BUFFER_LINES   at 0 range 16 .. 17;
      MASK_OPTION              at 0 range 18 .. 19;
      Reserved_20_30           at 0 range 20 .. 30;
      CSI_ENABLE               at 0 range 31 .. 31;
   end record;

   subtype CSI_CSICR19_DMA_RFIFO_HIGHEST_FIFO_LEVEL_Field is HAL.UInt8;

   --  CSI Control Register 19
   type CSI_CSICR19_Register is record
      --  This byte stores the highest FIFO level achieved by CSI FIFO timely
      --  and will be clear by writing 8'ff to it
      DMA_RFIFO_HIGHEST_FIFO_LEVEL : CSI_CSICR19_DMA_RFIFO_HIGHEST_FIFO_LEVEL_Field :=
                                      16#0#;
      --  unspecified
      Reserved_8_31                : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSI_CSICR19_Register use record
      DMA_RFIFO_HIGHEST_FIFO_LEVEL at 0 range 0 .. 7;
      Reserved_8_31                at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CSI
   type CSI_Peripheral is record
      --  CSI Control Register 1
      CSICR1            : aliased CSI_CSICR1_Register;
      --  CSI Control Register 2
      CSICR2            : aliased CSI_CSICR2_Register;
      --  CSI Control Register 3
      CSICR3            : aliased CSI_CSICR3_Register;
      --  CSI Statistic FIFO Register
      CSISTATFIFO       : aliased HAL.UInt32;
      --  CSI RX FIFO Register
      CSIRFIFO          : aliased HAL.UInt32;
      --  CSI RX Count Register
      CSIRXCNT          : aliased CSI_CSIRXCNT_Register;
      --  CSI Status Register
      CSISR             : aliased CSI_CSISR_Register;
      --  CSI DMA Start Address Register - for STATFIFO
      CSIDMASA_STATFIFO : aliased CSI_CSIDMASA_STATFIFO_Register;
      --  CSI DMA Transfer Size Register - for STATFIFO
      CSIDMATS_STATFIFO : aliased HAL.UInt32;
      --  CSI DMA Start Address Register - for Frame Buffer1
      CSIDMASA_FB1      : aliased CSI_CSIDMASA_FB1_Register;
      --  CSI DMA Transfer Size Register - for Frame Buffer2
      CSIDMASA_FB2      : aliased CSI_CSIDMASA_FB2_Register;
      --  CSI Frame Buffer Parameter Register
      CSIFBUF_PARA      : aliased CSI_CSIFBUF_PARA_Register;
      --  CSI Image Parameter Register
      CSIIMAG_PARA      : aliased CSI_CSIIMAG_PARA_Register;
      --  CSI Control Register 18
      CSICR18           : aliased CSI_CSICR18_Register;
      --  CSI Control Register 19
      CSICR19           : aliased CSI_CSICR19_Register;
   end record
     with Volatile;

   for CSI_Peripheral use record
      CSICR1            at 16#0# range 0 .. 31;
      CSICR2            at 16#4# range 0 .. 31;
      CSICR3            at 16#8# range 0 .. 31;
      CSISTATFIFO       at 16#C# range 0 .. 31;
      CSIRFIFO          at 16#10# range 0 .. 31;
      CSIRXCNT          at 16#14# range 0 .. 31;
      CSISR             at 16#18# range 0 .. 31;
      CSIDMASA_STATFIFO at 16#20# range 0 .. 31;
      CSIDMATS_STATFIFO at 16#24# range 0 .. 31;
      CSIDMASA_FB1      at 16#28# range 0 .. 31;
      CSIDMASA_FB2      at 16#2C# range 0 .. 31;
      CSIFBUF_PARA      at 16#30# range 0 .. 31;
      CSIIMAG_PARA      at 16#34# range 0 .. 31;
      CSICR18           at 16#48# range 0 .. 31;
      CSICR19           at 16#4C# range 0 .. 31;
   end record;

   --  CSI
   CSI_Periph : aliased CSI_Peripheral
     with Import, Address => System'To_Address (16#402BC000#);

end NRF_SVD.CSI;
