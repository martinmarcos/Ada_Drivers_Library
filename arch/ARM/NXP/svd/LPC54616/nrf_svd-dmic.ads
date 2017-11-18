--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54616.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DMIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------
   -- CHANNEL cluster's Registers --
   ---------------------------------

   subtype OSR_CHANNEL_OSR_Field is HAL.UInt8;

   --  Oversample Rate register 0
   type OSR_CHANNEL_Register is record
      --  Selects the oversample rate for the related input channel.
      OSR           : OSR_CHANNEL_OSR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSR_CHANNEL_Register use record
      OSR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DIVHFCLK_CHANNEL_PDMDIV_Field is HAL.UInt4;

   --  DMIC Clock Register 0
   type DIVHFCLK_CHANNEL_Register is record
      --  PDM clock divider value. 0 = divide by 1 1 = divide by 2 2 = divide
      --  by 3 3 = divide by 4 4 = divide by 6 5 = divide by 8 6 = divide by 12
      --  7 = divide by 16 8 = divide by 24 9 = divide by 32 10 = divide by 48
      --  11 = divide by 64 12 = divide by 96 13 = divide by 128 others =
      --  reserved.
      PDMDIV        : DIVHFCLK_CHANNEL_PDMDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIVHFCLK_CHANNEL_Register use record
      PDMDIV        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PREAC2FSCOEF_CHANNEL_COMP_Field is HAL.UInt2;

   --  Pre-Emphasis Filter Coefficient for 2 FS register
   type PREAC2FSCOEF_CHANNEL_Register is record
      --  Pre-emphasis filer coefficient for 2 FS mode. 0 = Compensation = 0 1
      --  = Compensation = 16 2 = Compensation = 15 3 = Compensation = 13
      COMP          : PREAC2FSCOEF_CHANNEL_COMP_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PREAC2FSCOEF_CHANNEL_Register use record
      COMP          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PREAC4FSCOEF_CHANNEL_COMP_Field is HAL.UInt2;

   --  Pre-Emphasis Filter Coefficient for 4 FS register
   type PREAC4FSCOEF_CHANNEL_Register is record
      --  Pre-emphasis filer coefficient for 4 FS mode. 0 = Compensation = 0 1
      --  = Compensation = 16 2 = Compensation = 15 3 = Compensation = 13
      COMP          : PREAC4FSCOEF_CHANNEL_COMP_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PREAC4FSCOEF_CHANNEL_Register use record
      COMP          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype GAINSHIFT_CHANNEL_GAIN_Field is HAL.UInt6;

   --  Decimator Gain Shift register
   type GAINSHIFT_CHANNEL_Register is record
      --  Gain control, as a positive or negative (two's complement) number of
      --  bits to shift.
      GAIN          : GAINSHIFT_CHANNEL_GAIN_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAINSHIFT_CHANNEL_Register use record
      GAIN          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  FIFO enable.
   type FIFO_CTRL_ENABLE_Field is
     (
      --  FIFO is not enabled. Enabling a DMIC channel with the FIFO disabled
      --  could be useful while data is being streamed to the I2S, or in order
      --  to avoid a filter settling delay when a channel is re-enabled after a
      --  period when the data was not needed.
      Disabled,
      --  FIFO is enabled. The FIFO must be enabled in order for the CPU or DMA
      --  to read data from the DMIC via the FIFODATA register.
      Enabled)
     with Size => 1;
   for FIFO_CTRL_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  FIFO reset.
   type FIFO_CTRL_RESETN_Field is
     (
      --  Reset the FIFO.
      Reset,
      --  Normal operation
      Normal)
     with Size => 1;
   for FIFO_CTRL_RESETN_Field use
     (Reset => 0,
      Normal => 1);

   --  Interrupt enable.
   type FIFO_CTRL_INTEN_Field is
     (
      --  FIFO level interrupts are not enabled.
      Disabled,
      --  FIFO level interrupts are enabled.
      Enabled)
     with Size => 1;
   for FIFO_CTRL_INTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  DMA enable
   type FIFO_CTRL_DMAEN_Field is
     (
      --  DMA requests are not enabled.
      Disabled,
      --  DMA requests based on FIFO level are enabled.
      Enabled)
     with Size => 1;
   for FIFO_CTRL_DMAEN_Field use
     (Disabled => 0,
      Enabled => 1);

   subtype FIFO_CTRL_CHANNEL_TRIGLVL_Field is HAL.UInt5;

   --  FIFO Control register 0
   type FIFO_CTRL_CHANNEL_Register is record
      --  FIFO enable.
      ENABLE         : FIFO_CTRL_ENABLE_Field := NRF_SVD.DMIC.Disabled;
      --  FIFO reset.
      RESETN         : FIFO_CTRL_RESETN_Field := NRF_SVD.DMIC.Reset;
      --  Interrupt enable.
      INTEN          : FIFO_CTRL_INTEN_Field := NRF_SVD.DMIC.Disabled;
      --  DMA enable
      DMAEN          : FIFO_CTRL_DMAEN_Field := NRF_SVD.DMIC.Disabled;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  FIFO trigger level. Selects the data trigger level for interrupt or
      --  DMA operation. If enabled to do so, the FIFO level can wake up the
      --  device just enough to perform DMA, then return to the reduced power
      --  mode See Section 4.5.66 'Hardware Wake-up control register'. 0 =
      --  trigger when the FIFO has received one entry (is no longer empty). 1
      --  = trigger when the FIFO has received two entries. 15 = trigger when
      --  the FIFO has received 16 entries (has become full).
      TRIGLVL        : FIFO_CTRL_CHANNEL_TRIGLVL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_CTRL_CHANNEL_Register use record
      ENABLE         at 0 range 0 .. 0;
      RESETN         at 0 range 1 .. 1;
      INTEN          at 0 range 2 .. 2;
      DMAEN          at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      TRIGLVL        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  FIFO Status register 0
   type FIFO_STATUS_CHANNEL_Register is record
      --  Interrupt flag. Asserted when FIFO data reaches the level specified
      --  in the FIFOCTRL register. Writing a one to this bit clears the flag.
      --  Remark: note that the bus clock to the DMIC subsystem must be running
      --  in order for an interrupt to occur.
      INT           : Boolean := False;
      --  Overrun flag. Indicates that a FIFO overflow has occurred at some
      --  point. Writing a one to this bit clears the flag. This flag does not
      --  cause an interrupt.
      OVERRUN       : Boolean := False;
      --  Underrun flag. Indicates that a FIFO underflow has occurred at some
      --  point. Writing a one to this bit clears the flag.
      UNDERRUN      : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_STATUS_CHANNEL_Register use record
      INT           at 0 range 0 .. 0;
      OVERRUN       at 0 range 1 .. 1;
      UNDERRUN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FIFO_DATA_CHANNEL_DATA_Field is HAL.UInt24;

   --  FIFO Data Register 0
   type FIFO_DATA_CHANNEL_Register is record
      --  Data from the top of the input filter FIFO.
      DATA           : FIFO_DATA_CHANNEL_DATA_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_DATA_CHANNEL_Register use record
      DATA           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Capture PDM_DATA
   type PHY_CTRL_PHY_FALL_Field is
     (
      --  Capture PDM_DATA on the rising edge of PDM_CLK.
      Rising_Edge,
      --  Capture PDM_DATA on the falling edge of PDM_CLK.
      Falling_Edge)
     with Size => 1;
   for PHY_CTRL_PHY_FALL_Field use
     (Rising_Edge => 0,
      Falling_Edge => 1);

   --  Half rate sampling
   type PHY_CTRL_PHY_HALF_Field is
     (
      --  Standard half rate sampling. The clock to the DMIC is sent at the
      --  same rate as the decimator is providing.
      Standard,
      --  Use half rate sampling. The clock to the DMIC is sent at half the
      --  rate as the decimator is providing.
      Half_Rate)
     with Size => 1;
   for PHY_CTRL_PHY_HALF_Field use
     (Standard => 0,
      Half_Rate => 1);

   --  PDM Source Configuration register 0
   type PHY_CTRL_CHANNEL_Register is record
      --  Capture PDM_DATA
      PHY_FALL      : PHY_CTRL_PHY_FALL_Field := NRF_SVD.DMIC.Rising_Edge;
      --  Half rate sampling
      PHY_HALF      : PHY_CTRL_PHY_HALF_Field := NRF_SVD.DMIC.Standard;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHY_CTRL_CHANNEL_Register use record
      PHY_FALL      at 0 range 0 .. 0;
      PHY_HALF      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DC block filter
   type DC_CTRL_DCPOLE_Field is
     (
      --  Flat response, no filter.
      Flat_Response,
      --  155 Hz.
      Hz_155,
      --  78 Hz.
      Hz_78,
      --  39 Hz
      Hz_39)
     with Size => 2;
   for DC_CTRL_DCPOLE_Field use
     (Flat_Response => 0,
      Hz_155 => 1,
      Hz_78 => 2,
      Hz_39 => 3);

   subtype DC_CTRL_CHANNEL_DCGAIN_Field is HAL.UInt4;

   --  Selects 16-bit saturation.
   type DC_CTRL_SATURATEAT16BIT_Field is
     (
      --  Results roll over if out range and do not saturate.
      Do_Not_Saturate,
      --  If the result overflows, it saturates at 0xFFFF for positive overflow
      --  and 0x8000 for negative overflow.
      Saturate)
     with Size => 1;
   for DC_CTRL_SATURATEAT16BIT_Field use
     (Do_Not_Saturate => 0,
      Saturate => 1);

   --  DC Control register 0
   type DC_CTRL_CHANNEL_Register is record
      --  DC block filter
      DCPOLE          : DC_CTRL_DCPOLE_Field := NRF_SVD.DMIC.Flat_Response;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  Fine gain adjustment in the form of a number of bits to downshift.
      DCGAIN          : DC_CTRL_CHANNEL_DCGAIN_Field := 16#0#;
      --  Selects 16-bit saturation.
      SATURATEAT16BIT : DC_CTRL_SATURATEAT16BIT_Field :=
                         NRF_SVD.DMIC.Do_Not_Saturate;
      --  unspecified
      Reserved_9_31   : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DC_CTRL_CHANNEL_Register use record
      DCPOLE          at 0 range 0 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      DCGAIN          at 0 range 4 .. 7;
      SATURATEAT16BIT at 0 range 8 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   --  no description available
   type CHANNEL_Cluster is record
      --  Oversample Rate register 0
      OSR          : aliased OSR_CHANNEL_Register;
      --  DMIC Clock Register 0
      DIVHFCLK     : aliased DIVHFCLK_CHANNEL_Register;
      --  Pre-Emphasis Filter Coefficient for 2 FS register
      PREAC2FSCOEF : aliased PREAC2FSCOEF_CHANNEL_Register;
      --  Pre-Emphasis Filter Coefficient for 4 FS register
      PREAC4FSCOEF : aliased PREAC4FSCOEF_CHANNEL_Register;
      --  Decimator Gain Shift register
      GAINSHIFT    : aliased GAINSHIFT_CHANNEL_Register;
      --  FIFO Control register 0
      FIFO_CTRL    : aliased FIFO_CTRL_CHANNEL_Register;
      --  FIFO Status register 0
      FIFO_STATUS  : aliased FIFO_STATUS_CHANNEL_Register;
      --  FIFO Data Register 0
      FIFO_DATA    : aliased FIFO_DATA_CHANNEL_Register;
      --  PDM Source Configuration register 0
      PHY_CTRL     : aliased PHY_CTRL_CHANNEL_Register;
      --  DC Control register 0
      DC_CTRL      : aliased DC_CTRL_CHANNEL_Register;
   end record
     with Volatile, Size => 2048;

   for CHANNEL_Cluster use record
      OSR          at 16#0# range 0 .. 31;
      DIVHFCLK     at 16#4# range 0 .. 31;
      PREAC2FSCOEF at 16#8# range 0 .. 31;
      PREAC4FSCOEF at 16#C# range 0 .. 31;
      GAINSHIFT    at 16#10# range 0 .. 31;
      FIFO_CTRL    at 16#80# range 0 .. 31;
      FIFO_STATUS  at 16#84# range 0 .. 31;
      FIFO_DATA    at 16#88# range 0 .. 31;
      PHY_CTRL     at 16#8C# range 0 .. 31;
      DC_CTRL      at 16#90# range 0 .. 31;
   end record;

   --  no description available
   type CHANNEL_Clusters is array (0 .. 1) of CHANNEL_Cluster;

   --  CHANEN_EN_CH array
   type CHANEN_EN_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CHANEN_EN_CH
   type CHANEN_EN_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EN_CH as a value
            Val : HAL.UInt2;
         when True =>
            --  EN_CH as an array
            Arr : CHANEN_EN_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CHANEN_EN_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Enable register
   type CHANEN_Register is record
      --  Enable channel 0. When 1, PDM channel 0 is enabled.
      EN_CH         : CHANEN_EN_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHANEN_Register use record
      EN_CH         at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  IOCFG_CLK_BYPASS array
   type IOCFG_CLK_BYPASS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for IOCFG_CLK_BYPASS
   type IOCFG_CLK_BYPASS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLK_BYPASS as a value
            Val : HAL.UInt2;
         when True =>
            --  CLK_BYPASS as an array
            Arr : IOCFG_CLK_BYPASS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IOCFG_CLK_BYPASS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I/O Configuration register
   type IOCFG_Register is record
      --  Bypass CLK0. When 1, PDM_DATA1 becomes the clock for PDM channel 0.
      --  This provides for the possibility of an external codec taking over
      --  the PDM bus.
      CLK_BYPASS    : IOCFG_CLK_BYPASS_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Stereo PDM select. When 1, PDM_DATA0 is routed to both PDM channels
      --  in a configuration that supports a single stereo digital microphone.
      STEREO_DATA0  : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCFG_Register use record
      CLK_BYPASS    at 0 range 0 .. 1;
      STEREO_DATA0  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Use 2FS register
   type USE2FS_USE2FS_Field is
     (
      --  Use 1FS output for PCM data.
      Use_1Fs,
      --  Use 2FS output for PCM data.
      Use_2Fs)
     with Size => 1;
   for USE2FS_USE2FS_Field use
     (Use_1Fs => 0,
      Use_2Fs => 1);

   --  Use 2FS register
   type USE2FS_Register is record
      --  Use 2FS register
      USE2FS        : USE2FS_USE2FS_Field := NRF_SVD.DMIC.Use_1Fs;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USE2FS_Register use record
      USE2FS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HWVADGAIN_INPUTGAIN_Field is HAL.UInt4;

   --  HWVAD input gain register
   type HWVADGAIN_Register is record
      --  Shift value for input bits 0x00 -10 bits 0x01 -8 bits 0x02 -6 bits
      --  0x03 -4 bits 0x04 -2 bits 0x05 0 bits (default) 0x06 +2 bits 0x07 +4
      --  bits 0x08 +6 bits 0x09 +8 bits 0x0A +10 bits 0x0B +12 bits 0x0C +14
      --  bits 0x0D to 0x0F Reserved.
      INPUTGAIN     : HWVADGAIN_INPUTGAIN_Field := 16#5#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADGAIN_Register use record
      INPUTGAIN     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  High pass filter
   type HWVADHPFS_HPFS_Field is
     (
      --  First filter by-pass.
      Bypass,
      --  High pass filter with -3dB cut-off at 1750Hz.
      High_Pass_1750Hz,
      --  High pass filter with -3dB cut-off at 215Hz.
      High_Pass_215Hz)
     with Size => 2;
   for HWVADHPFS_HPFS_Field use
     (Bypass => 0,
      High_Pass_1750Hz => 1,
      High_Pass_215Hz => 2);

   --  HWVAD filter control register
   type HWVADHPFS_Register is record
      --  High pass filter
      HPFS          : HWVADHPFS_HPFS_Field := NRF_SVD.DMIC.High_Pass_1750Hz;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADHPFS_Register use record
      HPFS          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Stage 0
   type HWVADST10_ST10_Field is
     (
      --  Normal operation, waiting for HWVAD trigger event (stage 0).
      Normal,
      --  Reset internal interrupt flag by writing a '1' pulse.
      Reset)
     with Size => 1;
   for HWVADST10_ST10_Field use
     (Normal => 0,
      Reset => 1);

   --  HWVAD control register
   type HWVADST10_Register is record
      --  Stage 0
      ST10          : HWVADST10_ST10_Field := NRF_SVD.DMIC.Normal;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADST10_Register use record
      ST10          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HWVAD filter reset register
   type HWVADRSTT_Register is record
      --  Writing a 1 resets all filter values
      RSTT          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADRSTT_Register use record
      RSTT          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HWVADTHGN_THGN_Field is HAL.UInt4;

   --  HWVAD noise estimator gain register
   type HWVADTHGN_Register is record
      --  Gain value for the noise estimator. Values 0 to 14. 0 corresponds to
      --  a gain of 1.
      THGN          : HWVADTHGN_THGN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADTHGN_Register use record
      THGN          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype HWVADTHGS_THGS_Field is HAL.UInt4;

   --  HWVAD signal estimator gain register
   type HWVADTHGS_Register is record
      --  Gain value for the signal estimator. Values 0 to 14. 0 corresponds to
      --  a gain of 1.
      THGS          : HWVADTHGS_THGS_Field := 16#4#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADTHGS_Register use record
      THGS          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype HWVADLOWZ_LOWZ_Field is HAL.UInt16;

   --  HWVAD noise envelope estimator register
   type HWVADLOWZ_Register is record
      --  Read-only. Noise envelope estimator value.
      LOWZ           : HWVADLOWZ_LOWZ_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWVADLOWZ_Register use record
      LOWZ           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x DMIC Subsystem (DMIC))
   type DMIC0_Peripheral is record
      --  no description available
      CHANNEL   : aliased CHANNEL_Clusters;
      --  Channel Enable register
      CHANEN    : aliased CHANEN_Register;
      --  I/O Configuration register
      IOCFG     : aliased IOCFG_Register;
      --  Use 2FS register
      USE2FS    : aliased USE2FS_Register;
      --  HWVAD input gain register
      HWVADGAIN : aliased HWVADGAIN_Register;
      --  HWVAD filter control register
      HWVADHPFS : aliased HWVADHPFS_Register;
      --  HWVAD control register
      HWVADST10 : aliased HWVADST10_Register;
      --  HWVAD filter reset register
      HWVADRSTT : aliased HWVADRSTT_Register;
      --  HWVAD noise estimator gain register
      HWVADTHGN : aliased HWVADTHGN_Register;
      --  HWVAD signal estimator gain register
      HWVADTHGS : aliased HWVADTHGS_Register;
      --  HWVAD noise envelope estimator register
      HWVADLOWZ : aliased HWVADLOWZ_Register;
      --  Module Identification register
      ID        : aliased HAL.UInt32;
   end record
     with Volatile;

   for DMIC0_Peripheral use record
      CHANNEL   at 16#0# range 0 .. 4095;
      CHANEN    at 16#F00# range 0 .. 31;
      IOCFG     at 16#F0C# range 0 .. 31;
      USE2FS    at 16#F10# range 0 .. 31;
      HWVADGAIN at 16#F80# range 0 .. 31;
      HWVADHPFS at 16#F84# range 0 .. 31;
      HWVADST10 at 16#F88# range 0 .. 31;
      HWVADRSTT at 16#F8C# range 0 .. 31;
      HWVADTHGN at 16#F90# range 0 .. 31;
      HWVADTHGS at 16#F94# range 0 .. 31;
      HWVADLOWZ at 16#F98# range 0 .. 31;
      ID        at 16#FFC# range 0 .. 31;
   end record;

   --  LPC5411x DMIC Subsystem (DMIC))
   DMIC0_Periph : aliased DMIC0_Peripheral
     with Import, Address => System'To_Address (16#40090000#);

end NRF_SVD.DMIC;
