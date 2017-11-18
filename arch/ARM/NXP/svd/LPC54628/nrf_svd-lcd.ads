--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54628.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LCD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TIMH_PPL_Field is HAL.UInt6;
   subtype TIMH_HSW_Field is HAL.UInt8;
   subtype TIMH_HFP_Field is HAL.UInt8;
   subtype TIMH_HBP_Field is HAL.UInt8;

   --  Horizontal Timing Control register
   type TIMH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Pixels-per-line.
      PPL          : TIMH_PPL_Field := 16#0#;
      --  Horizontal synchronization pulse width.
      HSW          : TIMH_HSW_Field := 16#0#;
      --  Horizontal front porch.
      HFP          : TIMH_HFP_Field := 16#0#;
      --  Horizontal back porch.
      HBP          : TIMH_HBP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      PPL          at 0 range 2 .. 7;
      HSW          at 0 range 8 .. 15;
      HFP          at 0 range 16 .. 23;
      HBP          at 0 range 24 .. 31;
   end record;

   subtype TIMV_LPP_Field is HAL.UInt10;
   subtype TIMV_VSW_Field is HAL.UInt6;
   subtype TIMV_VFP_Field is HAL.UInt8;
   subtype TIMV_VBP_Field is HAL.UInt8;

   --  Vertical Timing Control register
   type TIMV_Register is record
      --  Lines per panel.
      LPP : TIMV_LPP_Field := 16#0#;
      --  Vertical synchronization pulse width.
      VSW : TIMV_VSW_Field := 16#0#;
      --  Vertical front porch.
      VFP : TIMV_VFP_Field := 16#0#;
      --  Vertical back porch.
      VBP : TIMV_VBP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMV_Register use record
      LPP at 0 range 0 .. 9;
      VSW at 0 range 10 .. 15;
      VFP at 0 range 16 .. 23;
      VBP at 0 range 24 .. 31;
   end record;

   subtype POL_PCD_LO_Field is HAL.UInt5;
   subtype POL_ACB_Field is HAL.UInt5;
   subtype POL_CPL_Field is HAL.UInt10;
   subtype POL_PCD_HI_Field is HAL.UInt5;

   --  Clock and Signal Polarity Control register
   type POL_Register is record
      --  Lower five bits of panel clock divisor.
      PCD_LO         : POL_PCD_LO_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  AC bias pin frequency.
      ACB            : POL_ACB_Field := 16#0#;
      --  Invert vertical synchronization.
      IVS            : Boolean := False;
      --  Invert horizontal synchronization.
      IHS            : Boolean := False;
      --  Invert panel clock.
      IPC            : Boolean := False;
      --  Invert output enable.
      IOE            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Clocks per line.
      CPL            : POL_CPL_Field := 16#0#;
      --  Bypass panel clock divider.
      BCD            : Boolean := False;
      --  Upper five bits of panel clock divisor.
      PCD_HI         : POL_PCD_HI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POL_Register use record
      PCD_LO         at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ACB            at 0 range 6 .. 10;
      IVS            at 0 range 11 .. 11;
      IHS            at 0 range 12 .. 12;
      IPC            at 0 range 13 .. 13;
      IOE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CPL            at 0 range 16 .. 25;
      BCD            at 0 range 26 .. 26;
      PCD_HI         at 0 range 27 .. 31;
   end record;

   subtype LE_LED_Field is HAL.UInt7;

   --  Line End Control register
   type LE_Register is record
      --  Line-end delay.
      LED            : LE_LED_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  LCD Line end enable.
      LEE            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LE_Register use record
      LED            at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      LEE            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype UPBASE_LCDUPBASE_Field is HAL.UInt29;

   --  Upper Panel Frame Base Address register
   type UPBASE_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  LCD upper panel base address.
      LCDUPBASE    : UPBASE_LCDUPBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPBASE_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      LCDUPBASE    at 0 range 3 .. 31;
   end record;

   subtype LPBASE_LCDLPBASE_Field is HAL.UInt29;

   --  Lower Panel Frame Base Address register
   type LPBASE_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  LCD lower panel base address.
      LCDLPBASE    : LPBASE_LCDLPBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPBASE_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      LCDLPBASE    at 0 range 3 .. 31;
   end record;

   subtype CTRL_LCDBPP_Field is HAL.UInt3;
   subtype CTRL_LCDVCOMP_Field is HAL.UInt2;

   --  LCD Control register
   type CTRL_Register is record
      --  LCD enable control bit.
      LCDEN          : Boolean := False;
      --  LCD bits per pixel.
      LCDBPP         : CTRL_LCDBPP_Field := 16#0#;
      --  STN LCD monochrome/color selection.
      LCDBW          : Boolean := False;
      --  LCD panel TFT type selection.
      LCDTFT         : Boolean := False;
      --  Monochrome LCD interface width.
      LCDMONO8       : Boolean := False;
      --  Single or Dual LCD panel selection.
      LCDDUAL        : Boolean := False;
      --  Color format selection.
      BGR            : Boolean := False;
      --  Big-endian Byte Order.
      BEBO           : Boolean := False;
      --  Big-Endian Pixel Ordering.
      BEPO           : Boolean := False;
      --  LCD power enable.
      LCDPWR         : Boolean := False;
      --  LCD Vertical Compare Interrupt.
      LCDVCOMP       : CTRL_LCDVCOMP_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LCD DMA FIFO watermark level.
      WATERMARK      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      LCDEN          at 0 range 0 .. 0;
      LCDBPP         at 0 range 1 .. 3;
      LCDBW          at 0 range 4 .. 4;
      LCDTFT         at 0 range 5 .. 5;
      LCDMONO8       at 0 range 6 .. 6;
      LCDDUAL        at 0 range 7 .. 7;
      BGR            at 0 range 8 .. 8;
      BEBO           at 0 range 9 .. 9;
      BEPO           at 0 range 10 .. 10;
      LCDPWR         at 0 range 11 .. 11;
      LCDVCOMP       at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WATERMARK      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Mask register
   type INTMSK_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  FIFO underflow interrupt enable.
      FUFIM         : Boolean := False;
      --  LCD next base address update interrupt enable.
      LNBUIM        : Boolean := False;
      --  Vertical compare interrupt enable.
      VCOMPIM       : Boolean := False;
      --  AHB master error interrupt enable.
      BERIM         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMSK_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FUFIM         at 0 range 1 .. 1;
      LNBUIM        at 0 range 2 .. 2;
      VCOMPIM       at 0 range 3 .. 3;
      BERIM         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Raw Interrupt Status register
   type INTRAW_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. FIFO underflow raw interrupt status.
      FUFRIS        : Boolean;
      --  Read-only. LCD next address base update raw interrupt status.
      LNBURIS       : Boolean;
      --  Read-only. Vertical compare raw interrupt status.
      VCOMPRIS      : Boolean;
      --  Read-only. AHB master bus error raw interrupt status.
      BERRAW        : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTRAW_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FUFRIS        at 0 range 1 .. 1;
      LNBURIS       at 0 range 2 .. 2;
      VCOMPRIS      at 0 range 3 .. 3;
      BERRAW        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Masked Interrupt Status register
   type INTSTAT_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. FIFO underflow masked interrupt status.
      FUFMIS        : Boolean;
      --  Read-only. LCD next address base update masked interrupt status.
      LNBUMIS       : Boolean;
      --  Read-only. Vertical compare masked interrupt status.
      VCOMPMIS      : Boolean;
      --  Read-only. AHB master bus error masked interrupt status.
      BERMIS        : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FUFMIS        at 0 range 1 .. 1;
      LNBUMIS       at 0 range 2 .. 2;
      VCOMPMIS      at 0 range 3 .. 3;
      BERMIS        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt Clear register
   type INTCLR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. FIFO underflow interrupt clear.
      FUFIC         : Boolean := False;
      --  Write-only. LCD next address base update interrupt clear.
      LNBUIC        : Boolean := False;
      --  Write-only. Vertical compare interrupt clear.
      VCOMPIC       : Boolean := False;
      --  Write-only. AHB master error interrupt clear.
      BERIC         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FUFIC         at 0 range 1 .. 1;
      LNBUIC        at 0 range 2 .. 2;
      VCOMPIC       at 0 range 3 .. 3;
      BERIC         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PAL_R04_0_Field is HAL.UInt5;
   subtype PAL_G04_0_Field is HAL.UInt5;
   subtype PAL_B04_0_Field is HAL.UInt5;
   subtype PAL_R14_0_Field is HAL.UInt5;
   subtype PAL_G14_0_Field is HAL.UInt5;
   subtype PAL_B14_0_Field is HAL.UInt5;

   --  256x16-bit Color Palette registers
   type PAL_Register is record
      --  Red palette data.
      R04_0 : PAL_R04_0_Field := 16#0#;
      --  Green palette data.
      G04_0 : PAL_G04_0_Field := 16#0#;
      --  Blue palette data.
      B04_0 : PAL_B04_0_Field := 16#0#;
      --  Intensity / unused bit.
      I0    : Boolean := False;
      --  Red palette data.
      R14_0 : PAL_R14_0_Field := 16#0#;
      --  Green palette data.
      G14_0 : PAL_G14_0_Field := 16#0#;
      --  Blue palette data.
      B14_0 : PAL_B14_0_Field := 16#0#;
      --  Intensity / unused bit.
      I1    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAL_Register use record
      R04_0 at 0 range 0 .. 4;
      G04_0 at 0 range 5 .. 9;
      B04_0 at 0 range 10 .. 14;
      I0    at 0 range 15 .. 15;
      R14_0 at 0 range 16 .. 20;
      G14_0 at 0 range 21 .. 25;
      B14_0 at 0 range 26 .. 30;
      I1    at 0 range 31 .. 31;
   end record;

   --  256x16-bit Color Palette registers
   type PAL_Registers is array (0 .. 127) of PAL_Register
     with Volatile;

   --  Cursor Image registers

   --  Cursor Image registers
   type CRSR_IMG_Registers is array (0 .. 255) of HAL.UInt32
     with Volatile;

   subtype CRSR_CTRL_CRSRNUM1_0_Field is HAL.UInt2;

   --  Cursor Control register
   type CRSR_CTRL_Register is record
      --  Cursor enable.
      CRSRON        : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Cursor image number.
      CRSRNUM1_0    : CRSR_CTRL_CRSRNUM1_0_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_CTRL_Register use record
      CRSRON        at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CRSRNUM1_0    at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Cursor Configuration register
   type CRSR_CFG_Register is record
      --  Cursor size selection.
      CRSRSIZE      : Boolean := False;
      --  Cursor frame synchronization type.
      FRAMESYNC     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_CFG_Register use record
      CRSRSIZE      at 0 range 0 .. 0;
      FRAMESYNC     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CRSR_PAL_RED_Field is HAL.UInt8;
   subtype CRSR_PAL_GREEN_Field is HAL.UInt8;
   subtype CRSR_PAL_BLUE_Field is HAL.UInt8;

   --  Cursor Palette register 0
   type CRSR_PAL_Register is record
      --  Red color component.
      RED            : CRSR_PAL_RED_Field := 16#0#;
      --  Green color component.
      GREEN          : CRSR_PAL_GREEN_Field := 16#0#;
      --  Blue color component.
      BLUE           : CRSR_PAL_BLUE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_PAL_Register use record
      RED            at 0 range 0 .. 7;
      GREEN          at 0 range 8 .. 15;
      BLUE           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CRSR_XY_CRSRX_Field is HAL.UInt10;
   subtype CRSR_XY_CRSRY_Field is HAL.UInt10;

   --  Cursor XY Position register
   type CRSR_XY_Register is record
      --  X ordinate of the cursor origin measured in pixels.
      CRSRX          : CRSR_XY_CRSRX_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Y ordinate of the cursor origin measured in pixels.
      CRSRY          : CRSR_XY_CRSRY_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_XY_Register use record
      CRSRX          at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CRSRY          at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CRSR_CLIP_CRSRCLIPX_Field is HAL.UInt6;
   subtype CRSR_CLIP_CRSRCLIPY_Field is HAL.UInt6;

   --  Cursor Clip Position register
   type CRSR_CLIP_Register is record
      --  Cursor clip position for X direction.
      CRSRCLIPX      : CRSR_CLIP_CRSRCLIPX_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Cursor clip position for Y direction.
      CRSRCLIPY      : CRSR_CLIP_CRSRCLIPY_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_CLIP_Register use record
      CRSRCLIPX      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CRSRCLIPY      at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Cursor Interrupt Mask register
   type CRSR_INTMSK_Register is record
      --  Cursor interrupt mask.
      CRSRIM        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTMSK_Register use record
      CRSRIM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cursor Interrupt Clear register
   type CRSR_INTCLR_Register is record
      --  Write-only. Cursor interrupt clear.
      CRSRIC        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTCLR_Register use record
      CRSRIC        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cursor Raw Interrupt Status register
   type CRSR_INTRAW_Register is record
      --  Read-only. Cursor raw interrupt status.
      CRSRRIS       : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTRAW_Register use record
      CRSRRIS       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cursor Masked Interrupt Status register
   type CRSR_INTSTAT_Register is record
      --  Read-only. Cursor masked interrupt status.
      CRSRMIS       : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRSR_INTSTAT_Register use record
      CRSRMIS       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x LCD controller
   type LCD_Peripheral is record
      --  Horizontal Timing Control register
      TIMH         : aliased TIMH_Register;
      --  Vertical Timing Control register
      TIMV         : aliased TIMV_Register;
      --  Clock and Signal Polarity Control register
      POL          : aliased POL_Register;
      --  Line End Control register
      LE           : aliased LE_Register;
      --  Upper Panel Frame Base Address register
      UPBASE       : aliased UPBASE_Register;
      --  Lower Panel Frame Base Address register
      LPBASE       : aliased LPBASE_Register;
      --  LCD Control register
      CTRL         : aliased CTRL_Register;
      --  Interrupt Mask register
      INTMSK       : aliased INTMSK_Register;
      --  Raw Interrupt Status register
      INTRAW       : aliased INTRAW_Register;
      --  Masked Interrupt Status register
      INTSTAT      : aliased INTSTAT_Register;
      --  Interrupt Clear register
      INTCLR       : aliased INTCLR_Register;
      --  Upper Panel Current Address Value register
      UPCURR       : aliased HAL.UInt32;
      --  Lower Panel Current Address Value register
      LPCURR       : aliased HAL.UInt32;
      --  256x16-bit Color Palette registers
      PAL          : aliased PAL_Registers;
      --  Cursor Image registers
      CRSR_IMG     : aliased CRSR_IMG_Registers;
      --  Cursor Control register
      CRSR_CTRL    : aliased CRSR_CTRL_Register;
      --  Cursor Configuration register
      CRSR_CFG     : aliased CRSR_CFG_Register;
      --  Cursor Palette register 0
      CRSR_PAL0    : aliased CRSR_PAL_Register;
      --  Cursor Palette register 1
      CRSR_PAL1    : aliased CRSR_PAL_Register;
      --  Cursor XY Position register
      CRSR_XY      : aliased CRSR_XY_Register;
      --  Cursor Clip Position register
      CRSR_CLIP    : aliased CRSR_CLIP_Register;
      --  Cursor Interrupt Mask register
      CRSR_INTMSK  : aliased CRSR_INTMSK_Register;
      --  Cursor Interrupt Clear register
      CRSR_INTCLR  : aliased CRSR_INTCLR_Register;
      --  Cursor Raw Interrupt Status register
      CRSR_INTRAW  : aliased CRSR_INTRAW_Register;
      --  Cursor Masked Interrupt Status register
      CRSR_INTSTAT : aliased CRSR_INTSTAT_Register;
   end record
     with Volatile;

   for LCD_Peripheral use record
      TIMH         at 16#0# range 0 .. 31;
      TIMV         at 16#4# range 0 .. 31;
      POL          at 16#8# range 0 .. 31;
      LE           at 16#C# range 0 .. 31;
      UPBASE       at 16#10# range 0 .. 31;
      LPBASE       at 16#14# range 0 .. 31;
      CTRL         at 16#18# range 0 .. 31;
      INTMSK       at 16#1C# range 0 .. 31;
      INTRAW       at 16#20# range 0 .. 31;
      INTSTAT      at 16#24# range 0 .. 31;
      INTCLR       at 16#28# range 0 .. 31;
      UPCURR       at 16#2C# range 0 .. 31;
      LPCURR       at 16#30# range 0 .. 31;
      PAL          at 16#200# range 0 .. 4095;
      CRSR_IMG     at 16#800# range 0 .. 8191;
      CRSR_CTRL    at 16#C00# range 0 .. 31;
      CRSR_CFG     at 16#C04# range 0 .. 31;
      CRSR_PAL0    at 16#C08# range 0 .. 31;
      CRSR_PAL1    at 16#C0C# range 0 .. 31;
      CRSR_XY      at 16#C10# range 0 .. 31;
      CRSR_CLIP    at 16#C14# range 0 .. 31;
      CRSR_INTMSK  at 16#C20# range 0 .. 31;
      CRSR_INTCLR  at 16#C24# range 0 .. 31;
      CRSR_INTRAW  at 16#C28# range 0 .. 31;
      CRSR_INTSTAT at 16#C2C# range 0 .. 31;
   end record;

   --  LPC54S60x/LPC5460x LCD controller
   LCD_Periph : aliased LCD_Peripheral
     with Import, Address => System'To_Address (16#40083000#);

end NRF_SVD.LCD;
