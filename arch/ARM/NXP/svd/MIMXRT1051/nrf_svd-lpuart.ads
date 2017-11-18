--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LPUART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Identification Number
   type VERID_FEATURE_Field is
     (
      --  Standard feature set.
      Feature_1,
      --  Standard feature set with MODEM/IrDA support.
      Feature_3)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_1 => 1,
      Feature_3 => 3);

   subtype VERID_MINOR_Field is HAL.UInt8;
   subtype VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type VERID_Register is record
      --  Read-only. Feature Identification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   subtype PARAM_TXFIFO_Field is HAL.UInt8;
   subtype PARAM_RXFIFO_Field is HAL.UInt8;

   --  Parameter Register
   type PARAM_Register is record
      --  Read-only. Transmit FIFO Size
      TXFIFO         : PARAM_TXFIFO_Field;
      --  Read-only. Receive FIFO Size
      RXFIFO         : PARAM_RXFIFO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARAM_Register use record
      TXFIFO         at 0 range 0 .. 7;
      RXFIFO         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Software Reset
   type GLOBAL_RST_Field is
     (
      --  Module is not reset.
      Rst_0,
      --  Module is reset.
      Rst_1)
     with Size => 1;
   for GLOBAL_RST_Field use
     (Rst_0 => 0,
      Rst_1 => 1);

   --  LPUART Global Register
   type GLOBAL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Software Reset
      RST           : GLOBAL_RST_Field := NRF_SVD.LPUART.Rst_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBAL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RST           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Trigger Select
   type PINCFG_TRGSEL_Field is
     (
      --  Input trigger is disabled.
      Trgsel_0,
      --  Input trigger is used instead of RXD pin input.
      Trgsel_1,
      --  Input trigger is used instead of CTS_B pin input.
      Trgsel_2,
      --  Input trigger is used to modulate the TXD pin output. The TXD pin
      --  output (after TXINV configuration) is ANDed with the input trigger.
      Trgsel_3)
     with Size => 2;
   for PINCFG_TRGSEL_Field use
     (Trgsel_0 => 0,
      Trgsel_1 => 1,
      Trgsel_2 => 2,
      Trgsel_3 => 3);

   --  LPUART Pin Configuration Register
   type PINCFG_Register is record
      --  Trigger Select
      TRGSEL        : PINCFG_TRGSEL_Field := NRF_SVD.LPUART.Trgsel_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINCFG_Register use record
      TRGSEL        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype BAUD_SBR_Field is HAL.UInt13;

   --  Stop Bit Number Select
   type BAUD_SBNS_Field is
     (
      --  One stop bit.
      Sbns_0,
      --  Two stop bits.
      Sbns_1)
     with Size => 1;
   for BAUD_SBNS_Field use
     (Sbns_0 => 0,
      Sbns_1 => 1);

   --  RX Input Active Edge Interrupt Enable
   type BAUD_RXEDGIE_Field is
     (
      --  Hardware interrupts from LPUART_STAT[RXEDGIF] disabled.
      Rxedgie_0,
      --  Hardware interrupt requested when LPUART_STAT[RXEDGIF] flag is 1.
      Rxedgie_1)
     with Size => 1;
   for BAUD_RXEDGIE_Field use
     (Rxedgie_0 => 0,
      Rxedgie_1 => 1);

   --  LIN Break Detect Interrupt Enable
   type BAUD_LBKDIE_Field is
     (
      --  Hardware interrupts from LPUART_STAT[LBKDIF] disabled (use polling).
      Lbkdie_0,
      --  Hardware interrupt requested when LPUART_STAT[LBKDIF] flag is 1.
      Lbkdie_1)
     with Size => 1;
   for BAUD_LBKDIE_Field use
     (Lbkdie_0 => 0,
      Lbkdie_1 => 1);

   --  Resynchronization Disable
   type BAUD_RESYNCDIS_Field is
     (
      --  Resynchronization during received data word is supported
      Resyncdis_0,
      --  Resynchronization during received data word is disabled
      Resyncdis_1)
     with Size => 1;
   for BAUD_RESYNCDIS_Field use
     (Resyncdis_0 => 0,
      Resyncdis_1 => 1);

   --  Both Edge Sampling
   type BAUD_BOTHEDGE_Field is
     (
      --  Receiver samples input data using the rising edge of the baud rate
      --  clock.
      Bothedge_0,
      --  Receiver samples input data using the rising and falling edge of the
      --  baud rate clock.
      Bothedge_1)
     with Size => 1;
   for BAUD_BOTHEDGE_Field use
     (Bothedge_0 => 0,
      Bothedge_1 => 1);

   --  Match Configuration
   type BAUD_MATCFG_Field is
     (
      --  Address Match Wakeup
      Matcfg_0,
      --  Idle Match Wakeup
      Matcfg_1,
      --  Match On and Match Off
      Matcfg_2,
      --  no description available
      Matcfg_3)
     with Size => 2;
   for BAUD_MATCFG_Field use
     (Matcfg_0 => 0,
      Matcfg_1 => 1,
      Matcfg_2 => 2,
      Matcfg_3 => 3);

   --  Receiver Full DMA Enable
   type BAUD_RDMAE_Field is
     (
      --  DMA request disabled.
      Rdmae_0,
      --  DMA request enabled.
      Rdmae_1)
     with Size => 1;
   for BAUD_RDMAE_Field use
     (Rdmae_0 => 0,
      Rdmae_1 => 1);

   --  Transmitter DMA Enable
   type BAUD_TDMAE_Field is
     (
      --  DMA request disabled.
      Tdmae_0,
      --  DMA request enabled.
      Tdmae_1)
     with Size => 1;
   for BAUD_TDMAE_Field use
     (Tdmae_0 => 0,
      Tdmae_1 => 1);

   --  Oversampling Ratio
   type BAUD_OSR_Field is
     (
      --  Writing 0 to this field will result in an oversampling ratio of 16
      Osr_0,
      --  Oversampling ratio of 4, requires BOTHEDGE to be set.
      Osr_3,
      --  Oversampling ratio of 5, requires BOTHEDGE to be set.
      Osr_4,
      --  Oversampling ratio of 6, requires BOTHEDGE to be set.
      Osr_5,
      --  Oversampling ratio of 7, requires BOTHEDGE to be set.
      Osr_6,
      --  Oversampling ratio of 8.
      Osr_7,
      --  Oversampling ratio of 9.
      Osr_8,
      --  Oversampling ratio of 10.
      Osr_9,
      --  Oversampling ratio of 11.
      Osr_10,
      --  Oversampling ratio of 12.
      Osr_11,
      --  Oversampling ratio of 13.
      Osr_12,
      --  Oversampling ratio of 14.
      Osr_13,
      --  Oversampling ratio of 15.
      Osr_14,
      --  Oversampling ratio of 16.
      Osr_15,
      --  Oversampling ratio of 17.
      Osr_16,
      --  Oversampling ratio of 18.
      Osr_17,
      --  Oversampling ratio of 19.
      Osr_18,
      --  Oversampling ratio of 20.
      Osr_19,
      --  Oversampling ratio of 21.
      Osr_20,
      --  Oversampling ratio of 22.
      Osr_21,
      --  Oversampling ratio of 23.
      Osr_22,
      --  Oversampling ratio of 24.
      Osr_23,
      --  Oversampling ratio of 25.
      Osr_24,
      --  Oversampling ratio of 26.
      Osr_25,
      --  Oversampling ratio of 27.
      Osr_26,
      --  Oversampling ratio of 28.
      Osr_27,
      --  Oversampling ratio of 29.
      Osr_28,
      --  Oversampling ratio of 30.
      Osr_29,
      --  Oversampling ratio of 31.
      Osr_30,
      --  Oversampling ratio of 32.
      Osr_31)
     with Size => 5;
   for BAUD_OSR_Field use
     (Osr_0 => 0,
      Osr_3 => 3,
      Osr_4 => 4,
      Osr_5 => 5,
      Osr_6 => 6,
      Osr_7 => 7,
      Osr_8 => 8,
      Osr_9 => 9,
      Osr_10 => 10,
      Osr_11 => 11,
      Osr_12 => 12,
      Osr_13 => 13,
      Osr_14 => 14,
      Osr_15 => 15,
      Osr_16 => 16,
      Osr_17 => 17,
      Osr_18 => 18,
      Osr_19 => 19,
      Osr_20 => 20,
      Osr_21 => 21,
      Osr_22 => 22,
      Osr_23 => 23,
      Osr_24 => 24,
      Osr_25 => 25,
      Osr_26 => 26,
      Osr_27 => 27,
      Osr_28 => 28,
      Osr_29 => 29,
      Osr_30 => 30,
      Osr_31 => 31);

   --  10-bit Mode select
   type BAUD_M10_Field is
     (
      --  Receiver and transmitter use 7-bit to 9-bit data characters.
      M10_0,
      --  Receiver and transmitter use 10-bit data characters.
      M10_1)
     with Size => 1;
   for BAUD_M10_Field use
     (M10_0 => 0,
      M10_1 => 1);

   --  Match Address Mode Enable 2
   type BAUD_MAEN2_Field is
     (
      --  Normal operation.
      Maen2_0,
      --  Enables automatic address matching or data matching mode for
      --  MATCH[MA2].
      Maen2_1)
     with Size => 1;
   for BAUD_MAEN2_Field use
     (Maen2_0 => 0,
      Maen2_1 => 1);

   --  Match Address Mode Enable 1
   type BAUD_MAEN1_Field is
     (
      --  Normal operation.
      Maen1_0,
      --  Enables automatic address matching or data matching mode for
      --  MATCH[MA1].
      Maen1_1)
     with Size => 1;
   for BAUD_MAEN1_Field use
     (Maen1_0 => 0,
      Maen1_1 => 1);

   --  LPUART Baud Rate Register
   type BAUD_Register is record
      --  Baud Rate Modulo Divisor.
      SBR            : BAUD_SBR_Field := 16#4#;
      --  Stop Bit Number Select
      SBNS           : BAUD_SBNS_Field := NRF_SVD.LPUART.Sbns_0;
      --  RX Input Active Edge Interrupt Enable
      RXEDGIE        : BAUD_RXEDGIE_Field := NRF_SVD.LPUART.Rxedgie_0;
      --  LIN Break Detect Interrupt Enable
      LBKDIE         : BAUD_LBKDIE_Field := NRF_SVD.LPUART.Lbkdie_0;
      --  Resynchronization Disable
      RESYNCDIS      : BAUD_RESYNCDIS_Field := NRF_SVD.LPUART.Resyncdis_0;
      --  Both Edge Sampling
      BOTHEDGE       : BAUD_BOTHEDGE_Field := NRF_SVD.LPUART.Bothedge_0;
      --  Match Configuration
      MATCFG         : BAUD_MATCFG_Field := NRF_SVD.LPUART.Matcfg_0;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Receiver Full DMA Enable
      RDMAE          : BAUD_RDMAE_Field := NRF_SVD.LPUART.Rdmae_0;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Transmitter DMA Enable
      TDMAE          : BAUD_TDMAE_Field := NRF_SVD.LPUART.Tdmae_0;
      --  Oversampling Ratio
      OSR            : BAUD_OSR_Field := NRF_SVD.LPUART.Osr_15;
      --  10-bit Mode select
      M10            : BAUD_M10_Field := NRF_SVD.LPUART.M10_0;
      --  Match Address Mode Enable 2
      MAEN2          : BAUD_MAEN2_Field := NRF_SVD.LPUART.Maen2_0;
      --  Match Address Mode Enable 1
      MAEN1          : BAUD_MAEN1_Field := NRF_SVD.LPUART.Maen1_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BAUD_Register use record
      SBR            at 0 range 0 .. 12;
      SBNS           at 0 range 13 .. 13;
      RXEDGIE        at 0 range 14 .. 14;
      LBKDIE         at 0 range 15 .. 15;
      RESYNCDIS      at 0 range 16 .. 16;
      BOTHEDGE       at 0 range 17 .. 17;
      MATCFG         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      RDMAE          at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      TDMAE          at 0 range 23 .. 23;
      OSR            at 0 range 24 .. 28;
      M10            at 0 range 29 .. 29;
      MAEN2          at 0 range 30 .. 30;
      MAEN1          at 0 range 31 .. 31;
   end record;

   --  Match 2 Flag
   type STAT_MA2F_Field is
     (
      --  Received data is not equal to MA2
      Ma2F_0,
      --  Received data is equal to MA2
      Ma2F_1)
     with Size => 1;
   for STAT_MA2F_Field use
     (Ma2F_0 => 0,
      Ma2F_1 => 1);

   --  Match 1 Flag
   type STAT_MA1F_Field is
     (
      --  Received data is not equal to MA1
      Ma1F_0,
      --  Received data is equal to MA1
      Ma1F_1)
     with Size => 1;
   for STAT_MA1F_Field use
     (Ma1F_0 => 0,
      Ma1F_1 => 1);

   --  Parity Error Flag
   type STAT_PF_Field is
     (
      --  No parity error.
      Pf_0,
      --  Parity error.
      Pf_1)
     with Size => 1;
   for STAT_PF_Field use
     (Pf_0 => 0,
      Pf_1 => 1);

   --  Framing Error Flag
   type STAT_FE_Field is
     (
      --  No framing error detected. This does not guarantee the framing is
      --  correct.
      Fe_0,
      --  Framing error.
      Fe_1)
     with Size => 1;
   for STAT_FE_Field use
     (Fe_0 => 0,
      Fe_1 => 1);

   --  Noise Flag
   type STAT_NF_Field is
     (
      --  No noise detected.
      Nf_0,
      --  Noise detected in the received character in LPUART_DATA.
      Nf_1)
     with Size => 1;
   for STAT_NF_Field use
     (Nf_0 => 0,
      Nf_1 => 1);

   --  Receiver Overrun Flag
   type STAT_OR_Field is
     (
      --  No overrun.
      Or_0,
      --  Receive overrun (new LPUART data lost).
      Or_1)
     with Size => 1;
   for STAT_OR_Field use
     (Or_0 => 0,
      Or_1 => 1);

   --  Idle Line Flag
   type STAT_IDLE_Field is
     (
      --  No idle line detected.
      Idle_0,
      --  Idle line was detected.
      Idle_1)
     with Size => 1;
   for STAT_IDLE_Field use
     (Idle_0 => 0,
      Idle_1 => 1);

   --  Receive Data Register Full Flag
   type STAT_RDRF_Field is
     (
      --  Receive data buffer empty.
      Rdrf_0,
      --  Receive data buffer full.
      Rdrf_1)
     with Size => 1;
   for STAT_RDRF_Field use
     (Rdrf_0 => 0,
      Rdrf_1 => 1);

   --  Transmission Complete Flag
   type STAT_TC_Field is
     (
      --  Transmitter active (sending data, a preamble, or a break).
      Tc_0,
      --  Transmitter idle (transmission activity complete).
      Tc_1)
     with Size => 1;
   for STAT_TC_Field use
     (Tc_0 => 0,
      Tc_1 => 1);

   --  Transmit Data Register Empty Flag
   type STAT_TDRE_Field is
     (
      --  Transmit data buffer full.
      Tdre_0,
      --  Transmit data buffer empty.
      Tdre_1)
     with Size => 1;
   for STAT_TDRE_Field use
     (Tdre_0 => 0,
      Tdre_1 => 1);

   --  Receiver Active Flag
   type STAT_RAF_Field is
     (
      --  LPUART receiver idle waiting for a start bit.
      Raf_0,
      --  LPUART receiver active (RXD input not idle).
      Raf_1)
     with Size => 1;
   for STAT_RAF_Field use
     (Raf_0 => 0,
      Raf_1 => 1);

   --  LIN Break Detection Enable
   type STAT_LBKDE_Field is
     (
      --  LIN break detect is disabled, normal break character can be detected.
      Lbkde_0,
      --  LIN break detect is enabled. LIN break character is detected at
      --  length of 11 bit times (if M = 0) or 12 (if M = 1) or 13 (M10 = 1).
      Lbkde_1)
     with Size => 1;
   for STAT_LBKDE_Field use
     (Lbkde_0 => 0,
      Lbkde_1 => 1);

   --  Break Character Generation Length
   type STAT_BRK13_Field is
     (
      --  Break character is transmitted with length of 9 to 13 bit times.
      Brk13_0,
      --  Break character is transmitted with length of 12 to 15 bit times.
      Brk13_1)
     with Size => 1;
   for STAT_BRK13_Field use
     (Brk13_0 => 0,
      Brk13_1 => 1);

   --  Receive Wake Up Idle Detect
   type STAT_RWUID_Field is
     (
      --  During receive standby state (RWU = 1), the IDLE bit does not get set
      --  upon detection of an idle character. During address match wakeup, the
      --  IDLE bit does not set when an address does not match.
      Rwuid_0,
      --  During receive standby state (RWU = 1), the IDLE bit gets set upon
      --  detection of an idle character. During address match wakeup, the IDLE
      --  bit does set when an address does not match.
      Rwuid_1)
     with Size => 1;
   for STAT_RWUID_Field use
     (Rwuid_0 => 0,
      Rwuid_1 => 1);

   --  Receive Data Inversion
   type STAT_RXINV_Field is
     (
      --  Receive data not inverted.
      Rxinv_0,
      --  Receive data inverted.
      Rxinv_1)
     with Size => 1;
   for STAT_RXINV_Field use
     (Rxinv_0 => 0,
      Rxinv_1 => 1);

   --  MSB First
   type STAT_MSBF_Field is
     (
      --  LSB (bit0) is the first bit that is transmitted following the start
      --  bit. Further, the first bit received after the start bit is
      --  identified as bit0.
      Msbf_0,
      --  MSB (bit9, bit8, bit7 or bit6) is the first bit that is transmitted
      --  following the start bit depending on the setting of CTRL[M], CTRL[PE]
      --  and BAUD[M10]. Further, the first bit received after the start bit is
      --  identified as bit9, bit8, bit7 or bit6 depending on the setting of
      --  CTRL[M] and CTRL[PE].
      Msbf_1)
     with Size => 1;
   for STAT_MSBF_Field use
     (Msbf_0 => 0,
      Msbf_1 => 1);

   --  RXD Pin Active Edge Interrupt Flag
   type STAT_RXEDGIF_Field is
     (
      --  No active edge on the receive pin has occurred.
      Rxedgif_0,
      --  An active edge on the receive pin has occurred.
      Rxedgif_1)
     with Size => 1;
   for STAT_RXEDGIF_Field use
     (Rxedgif_0 => 0,
      Rxedgif_1 => 1);

   --  LIN Break Detect Interrupt Flag
   type STAT_LBKDIF_Field is
     (
      --  No LIN break character has been detected.
      Lbkdif_0,
      --  LIN break character has been detected.
      Lbkdif_1)
     with Size => 1;
   for STAT_LBKDIF_Field use
     (Lbkdif_0 => 0,
      Lbkdif_1 => 1);

   --  LPUART Status Register
   type STAT_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Match 2 Flag
      MA2F          : STAT_MA2F_Field := NRF_SVD.LPUART.Ma2F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Match 1 Flag
      MA1F          : STAT_MA1F_Field := NRF_SVD.LPUART.Ma1F_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Parity Error Flag
      PF            : STAT_PF_Field := NRF_SVD.LPUART.Pf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Framing Error Flag
      FE            : STAT_FE_Field := NRF_SVD.LPUART.Fe_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Noise Flag
      NF            : STAT_NF_Field := NRF_SVD.LPUART.Nf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Receiver Overrun Flag
      OR_k          : STAT_OR_Field := NRF_SVD.LPUART.Or_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Idle Line Flag
      IDLE          : STAT_IDLE_Field := NRF_SVD.LPUART.Idle_0;
      --  Read-only. Receive Data Register Full Flag
      RDRF          : STAT_RDRF_Field := NRF_SVD.LPUART.Rdrf_0;
      --  Read-only. Transmission Complete Flag
      TC            : STAT_TC_Field := NRF_SVD.LPUART.Tc_1;
      --  Read-only. Transmit Data Register Empty Flag
      TDRE          : STAT_TDRE_Field := NRF_SVD.LPUART.Tdre_1;
      --  Read-only. Receiver Active Flag
      RAF           : STAT_RAF_Field := NRF_SVD.LPUART.Raf_0;
      --  LIN Break Detection Enable
      LBKDE         : STAT_LBKDE_Field := NRF_SVD.LPUART.Lbkde_0;
      --  Break Character Generation Length
      BRK13         : STAT_BRK13_Field := NRF_SVD.LPUART.Brk13_0;
      --  Receive Wake Up Idle Detect
      RWUID         : STAT_RWUID_Field := NRF_SVD.LPUART.Rwuid_0;
      --  Receive Data Inversion
      RXINV         : STAT_RXINV_Field := NRF_SVD.LPUART.Rxinv_0;
      --  MSB First
      MSBF          : STAT_MSBF_Field := NRF_SVD.LPUART.Msbf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. RXD Pin Active Edge Interrupt Flag
      RXEDGIF       : STAT_RXEDGIF_Field := NRF_SVD.LPUART.Rxedgif_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. LIN Break Detect Interrupt Flag
      LBKDIF        : STAT_LBKDIF_Field := NRF_SVD.LPUART.Lbkdif_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      MA2F          at 0 range 14 .. 14;
      MA1F          at 0 range 15 .. 15;
      PF            at 0 range 16 .. 16;
      FE            at 0 range 17 .. 17;
      NF            at 0 range 18 .. 18;
      OR_k          at 0 range 19 .. 19;
      IDLE          at 0 range 20 .. 20;
      RDRF          at 0 range 21 .. 21;
      TC            at 0 range 22 .. 22;
      TDRE          at 0 range 23 .. 23;
      RAF           at 0 range 24 .. 24;
      LBKDE         at 0 range 25 .. 25;
      BRK13         at 0 range 26 .. 26;
      RWUID         at 0 range 27 .. 27;
      RXINV         at 0 range 28 .. 28;
      MSBF          at 0 range 29 .. 29;
      RXEDGIF       at 0 range 30 .. 30;
      LBKDIF        at 0 range 31 .. 31;
   end record;

   --  Parity Type
   type CTRL_PT_Field is
     (
      --  Even parity.
      Pt_0,
      --  Odd parity.
      Pt_1)
     with Size => 1;
   for CTRL_PT_Field use
     (Pt_0 => 0,
      Pt_1 => 1);

   --  Parity Enable
   type CTRL_PE_Field is
     (
      --  No hardware parity generation or checking.
      Pe_0,
      --  Parity enabled.
      Pe_1)
     with Size => 1;
   for CTRL_PE_Field use
     (Pe_0 => 0,
      Pe_1 => 1);

   --  Idle Line Type Select
   type CTRL_ILT_Field is
     (
      --  Idle character bit count starts after start bit.
      Ilt_0,
      --  Idle character bit count starts after stop bit.
      Ilt_1)
     with Size => 1;
   for CTRL_ILT_Field use
     (Ilt_0 => 0,
      Ilt_1 => 1);

   --  Receiver Wakeup Method Select
   type CTRL_WAKE_Field is
     (
      --  Configures RWU for idle-line wakeup.
      Wake_0,
      --  Configures RWU with address-mark wakeup.
      Wake_1)
     with Size => 1;
   for CTRL_WAKE_Field use
     (Wake_0 => 0,
      Wake_1 => 1);

   --  9-Bit or 8-Bit Mode Select
   type CTRL_M_Field is
     (
      --  Receiver and transmitter use 8-bit data characters.
      M_0,
      --  Receiver and transmitter use 9-bit data characters.
      M_1)
     with Size => 1;
   for CTRL_M_Field use
     (M_0 => 0,
      M_1 => 1);

   --  Receiver Source Select
   type CTRL_RSRC_Field is
     (
      --  Provided LOOPS is set, RSRC is cleared, selects internal loop back
      --  mode and the LPUART does not use the RXD pin.
      Rsrc_0,
      --  Single-wire LPUART mode where the TXD pin is connected to the
      --  transmitter output and receiver input.
      Rsrc_1)
     with Size => 1;
   for CTRL_RSRC_Field use
     (Rsrc_0 => 0,
      Rsrc_1 => 1);

   --  Doze Enable
   type CTRL_DOZEEN_Field is
     (
      --  LPUART is enabled in Doze mode.
      Dozeen_0,
      --  LPUART is disabled in Doze mode.
      Dozeen_1)
     with Size => 1;
   for CTRL_DOZEEN_Field use
     (Dozeen_0 => 0,
      Dozeen_1 => 1);

   --  Loop Mode Select
   type CTRL_LOOPS_Field is
     (
      --  Normal operation - RXD and TXD use separate pins.
      Loops_0,
      --  Loop mode or single-wire mode where transmitter outputs are
      --  internally connected to receiver input (see RSRC bit).
      Loops_1)
     with Size => 1;
   for CTRL_LOOPS_Field use
     (Loops_0 => 0,
      Loops_1 => 1);

   --  Idle Configuration
   type CTRL_IDLECFG_Field is
     (
      --  1 idle character
      Idlecfg_0,
      --  2 idle characters
      Idlecfg_1,
      --  4 idle characters
      Idlecfg_2,
      --  8 idle characters
      Idlecfg_3,
      --  16 idle characters
      Idlecfg_4,
      --  32 idle characters
      Idlecfg_5,
      --  64 idle characters
      Idlecfg_6,
      --  128 idle characters
      Idlecfg_7)
     with Size => 3;
   for CTRL_IDLECFG_Field use
     (Idlecfg_0 => 0,
      Idlecfg_1 => 1,
      Idlecfg_2 => 2,
      Idlecfg_3 => 3,
      Idlecfg_4 => 4,
      Idlecfg_5 => 5,
      Idlecfg_6 => 6,
      Idlecfg_7 => 7);

   --  7-Bit Mode Select
   type CTRL_M7_Field is
     (
      --  Receiver and transmitter use 8-bit to 10-bit data characters.
      M7_0,
      --  Receiver and transmitter use 7-bit data characters.
      M7_1)
     with Size => 1;
   for CTRL_M7_Field use
     (M7_0 => 0,
      M7_1 => 1);

   --  Match 2 Interrupt Enable
   type CTRL_MA2IE_Field is
     (
      --  MA2F interrupt disabled
      Ma2Ie_0,
      --  MA2F interrupt enabled
      Ma2Ie_1)
     with Size => 1;
   for CTRL_MA2IE_Field use
     (Ma2Ie_0 => 0,
      Ma2Ie_1 => 1);

   --  Match 1 Interrupt Enable
   type CTRL_MA1IE_Field is
     (
      --  MA1F interrupt disabled
      Ma1Ie_0,
      --  MA1F interrupt enabled
      Ma1Ie_1)
     with Size => 1;
   for CTRL_MA1IE_Field use
     (Ma1Ie_0 => 0,
      Ma1Ie_1 => 1);

   --  Send Break
   type CTRL_SBK_Field is
     (
      --  Normal transmitter operation.
      Sbk_0,
      --  Queue break character(s) to be sent.
      Sbk_1)
     with Size => 1;
   for CTRL_SBK_Field use
     (Sbk_0 => 0,
      Sbk_1 => 1);

   --  Receiver Wakeup Control
   type CTRL_RWU_Field is
     (
      --  Normal receiver operation.
      Rwu_0,
      --  LPUART receiver in standby waiting for wakeup condition.
      Rwu_1)
     with Size => 1;
   for CTRL_RWU_Field use
     (Rwu_0 => 0,
      Rwu_1 => 1);

   --  Receiver Enable
   type CTRL_RE_Field is
     (
      --  Receiver disabled.
      Re_0,
      --  Receiver enabled.
      Re_1)
     with Size => 1;
   for CTRL_RE_Field use
     (Re_0 => 0,
      Re_1 => 1);

   --  Transmitter Enable
   type CTRL_TE_Field is
     (
      --  Transmitter disabled.
      Te_0,
      --  Transmitter enabled.
      Te_1)
     with Size => 1;
   for CTRL_TE_Field use
     (Te_0 => 0,
      Te_1 => 1);

   --  Idle Line Interrupt Enable
   type CTRL_ILIE_Field is
     (
      --  Hardware interrupts from IDLE disabled; use polling.
      Ilie_0,
      --  Hardware interrupt requested when IDLE flag is 1.
      Ilie_1)
     with Size => 1;
   for CTRL_ILIE_Field use
     (Ilie_0 => 0,
      Ilie_1 => 1);

   --  Receiver Interrupt Enable
   type CTRL_RIE_Field is
     (
      --  Hardware interrupts from RDRF disabled; use polling.
      Rie_0,
      --  Hardware interrupt requested when RDRF flag is 1.
      Rie_1)
     with Size => 1;
   for CTRL_RIE_Field use
     (Rie_0 => 0,
      Rie_1 => 1);

   --  Transmission Complete Interrupt Enable for
   type CTRL_TCIE_Field is
     (
      --  Hardware interrupts from TC disabled; use polling.
      Tcie_0,
      --  Hardware interrupt requested when TC flag is 1.
      Tcie_1)
     with Size => 1;
   for CTRL_TCIE_Field use
     (Tcie_0 => 0,
      Tcie_1 => 1);

   --  Transmit Interrupt Enable
   type CTRL_TIE_Field is
     (
      --  Hardware interrupts from TDRE disabled; use polling.
      Tie_0,
      --  Hardware interrupt requested when TDRE flag is 1.
      Tie_1)
     with Size => 1;
   for CTRL_TIE_Field use
     (Tie_0 => 0,
      Tie_1 => 1);

   --  Parity Error Interrupt Enable
   type CTRL_PEIE_Field is
     (
      --  PF interrupts disabled; use polling).
      Peie_0,
      --  Hardware interrupt requested when PF is set.
      Peie_1)
     with Size => 1;
   for CTRL_PEIE_Field use
     (Peie_0 => 0,
      Peie_1 => 1);

   --  Framing Error Interrupt Enable
   type CTRL_FEIE_Field is
     (
      --  FE interrupts disabled; use polling.
      Feie_0,
      --  Hardware interrupt requested when FE is set.
      Feie_1)
     with Size => 1;
   for CTRL_FEIE_Field use
     (Feie_0 => 0,
      Feie_1 => 1);

   --  Noise Error Interrupt Enable
   type CTRL_NEIE_Field is
     (
      --  NF interrupts disabled; use polling.
      Neie_0,
      --  Hardware interrupt requested when NF is set.
      Neie_1)
     with Size => 1;
   for CTRL_NEIE_Field use
     (Neie_0 => 0,
      Neie_1 => 1);

   --  Overrun Interrupt Enable
   type CTRL_ORIE_Field is
     (
      --  OR interrupts disabled; use polling.
      Orie_0,
      --  Hardware interrupt requested when OR is set.
      Orie_1)
     with Size => 1;
   for CTRL_ORIE_Field use
     (Orie_0 => 0,
      Orie_1 => 1);

   --  Transmit Data Inversion
   type CTRL_TXINV_Field is
     (
      --  Transmit data not inverted.
      Txinv_0,
      --  Transmit data inverted.
      Txinv_1)
     with Size => 1;
   for CTRL_TXINV_Field use
     (Txinv_0 => 0,
      Txinv_1 => 1);

   --  TXD Pin Direction in Single-Wire Mode
   type CTRL_TXDIR_Field is
     (
      --  TXD pin is an input in single-wire mode.
      Txdir_0,
      --  TXD pin is an output in single-wire mode.
      Txdir_1)
     with Size => 1;
   for CTRL_TXDIR_Field use
     (Txdir_0 => 0,
      Txdir_1 => 1);

   --  LPUART Control Register
   type CTRL_Register is record
      --  Parity Type
      PT             : CTRL_PT_Field := NRF_SVD.LPUART.Pt_0;
      --  Parity Enable
      PE             : CTRL_PE_Field := NRF_SVD.LPUART.Pe_0;
      --  Idle Line Type Select
      ILT            : CTRL_ILT_Field := NRF_SVD.LPUART.Ilt_0;
      --  Receiver Wakeup Method Select
      WAKE           : CTRL_WAKE_Field := NRF_SVD.LPUART.Wake_0;
      --  9-Bit or 8-Bit Mode Select
      M              : CTRL_M_Field := NRF_SVD.LPUART.M_0;
      --  Receiver Source Select
      RSRC           : CTRL_RSRC_Field := NRF_SVD.LPUART.Rsrc_0;
      --  Doze Enable
      DOZEEN         : CTRL_DOZEEN_Field := NRF_SVD.LPUART.Dozeen_0;
      --  Loop Mode Select
      LOOPS          : CTRL_LOOPS_Field := NRF_SVD.LPUART.Loops_0;
      --  Idle Configuration
      IDLECFG        : CTRL_IDLECFG_Field := NRF_SVD.LPUART.Idlecfg_0;
      --  7-Bit Mode Select
      M7             : CTRL_M7_Field := NRF_SVD.LPUART.M7_0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Match 2 Interrupt Enable
      MA2IE          : CTRL_MA2IE_Field := NRF_SVD.LPUART.Ma2Ie_0;
      --  Match 1 Interrupt Enable
      MA1IE          : CTRL_MA1IE_Field := NRF_SVD.LPUART.Ma1Ie_0;
      --  Send Break
      SBK            : CTRL_SBK_Field := NRF_SVD.LPUART.Sbk_0;
      --  Receiver Wakeup Control
      RWU            : CTRL_RWU_Field := NRF_SVD.LPUART.Rwu_0;
      --  Receiver Enable
      RE             : CTRL_RE_Field := NRF_SVD.LPUART.Re_0;
      --  Transmitter Enable
      TE             : CTRL_TE_Field := NRF_SVD.LPUART.Te_0;
      --  Idle Line Interrupt Enable
      ILIE           : CTRL_ILIE_Field := NRF_SVD.LPUART.Ilie_0;
      --  Receiver Interrupt Enable
      RIE            : CTRL_RIE_Field := NRF_SVD.LPUART.Rie_0;
      --  Transmission Complete Interrupt Enable for
      TCIE           : CTRL_TCIE_Field := NRF_SVD.LPUART.Tcie_0;
      --  Transmit Interrupt Enable
      TIE            : CTRL_TIE_Field := NRF_SVD.LPUART.Tie_0;
      --  Parity Error Interrupt Enable
      PEIE           : CTRL_PEIE_Field := NRF_SVD.LPUART.Peie_0;
      --  Framing Error Interrupt Enable
      FEIE           : CTRL_FEIE_Field := NRF_SVD.LPUART.Feie_0;
      --  Noise Error Interrupt Enable
      NEIE           : CTRL_NEIE_Field := NRF_SVD.LPUART.Neie_0;
      --  Overrun Interrupt Enable
      ORIE           : CTRL_ORIE_Field := NRF_SVD.LPUART.Orie_0;
      --  Transmit Data Inversion
      TXINV          : CTRL_TXINV_Field := NRF_SVD.LPUART.Txinv_0;
      --  TXD Pin Direction in Single-Wire Mode
      TXDIR          : CTRL_TXDIR_Field := NRF_SVD.LPUART.Txdir_0;
      --  Receive Bit 9 / Transmit Bit 8
      R9T8           : Boolean := False;
      --  Receive Bit 8 / Transmit Bit 9
      R8T9           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      PT             at 0 range 0 .. 0;
      PE             at 0 range 1 .. 1;
      ILT            at 0 range 2 .. 2;
      WAKE           at 0 range 3 .. 3;
      M              at 0 range 4 .. 4;
      RSRC           at 0 range 5 .. 5;
      DOZEEN         at 0 range 6 .. 6;
      LOOPS          at 0 range 7 .. 7;
      IDLECFG        at 0 range 8 .. 10;
      M7             at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      MA2IE          at 0 range 14 .. 14;
      MA1IE          at 0 range 15 .. 15;
      SBK            at 0 range 16 .. 16;
      RWU            at 0 range 17 .. 17;
      RE             at 0 range 18 .. 18;
      TE             at 0 range 19 .. 19;
      ILIE           at 0 range 20 .. 20;
      RIE            at 0 range 21 .. 21;
      TCIE           at 0 range 22 .. 22;
      TIE            at 0 range 23 .. 23;
      PEIE           at 0 range 24 .. 24;
      FEIE           at 0 range 25 .. 25;
      NEIE           at 0 range 26 .. 26;
      ORIE           at 0 range 27 .. 27;
      TXINV          at 0 range 28 .. 28;
      TXDIR          at 0 range 29 .. 29;
      R9T8           at 0 range 30 .. 30;
      R8T9           at 0 range 31 .. 31;
   end record;

   --  Idle Line
   type DATA_IDLINE_Field is
     (
      --  Receiver was not idle before receiving this character.
      Idline_0,
      --  Receiver was idle before receiving this character.
      Idline_1)
     with Size => 1;
   for DATA_IDLINE_Field use
     (Idline_0 => 0,
      Idline_1 => 1);

   --  Receive Buffer Empty
   type DATA_RXEMPT_Field is
     (
      --  Receive buffer contains valid data.
      Rxempt_0,
      --  Receive buffer is empty, data returned on read is not valid.
      Rxempt_1)
     with Size => 1;
   for DATA_RXEMPT_Field use
     (Rxempt_0 => 0,
      Rxempt_1 => 1);

   --  Frame Error / Transmit Special Character
   type DATA_FRETSC_Field is
     (
      --  The dataword was received without a frame error on read, or transmit
      --  a normal character on write.
      Fretsc_0,
      --  The dataword was received with a frame error, or transmit an idle or
      --  break character on transmit.
      Fretsc_1)
     with Size => 1;
   for DATA_FRETSC_Field use
     (Fretsc_0 => 0,
      Fretsc_1 => 1);

   --  PARITYE
   type DATA_PARITYE_Field is
     (
      --  The dataword was received without a parity error.
      Paritye_0,
      --  The dataword was received with a parity error.
      Paritye_1)
     with Size => 1;
   for DATA_PARITYE_Field use
     (Paritye_0 => 0,
      Paritye_1 => 1);

   --  NOISY
   type DATA_NOISY_Field is
     (
      --  The dataword was received without noise.
      Noisy_0,
      --  The data was received with noise.
      Noisy_1)
     with Size => 1;
   for DATA_NOISY_Field use
     (Noisy_0 => 0,
      Noisy_1 => 1);

   --  LPUART Data Register
   type DATA_Register is record
      --  R0T0
      R0T0           : Boolean := False;
      --  R1T1
      R1T1           : Boolean := False;
      --  R2T2
      R2T2           : Boolean := False;
      --  R3T3
      R3T3           : Boolean := False;
      --  R4T4
      R4T4           : Boolean := False;
      --  R5T5
      R5T5           : Boolean := False;
      --  R6T6
      R6T6           : Boolean := False;
      --  R7T7
      R7T7           : Boolean := False;
      --  R8T8
      R8T8           : Boolean := False;
      --  R9T9
      R9T9           : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Read-only. Idle Line
      IDLINE         : DATA_IDLINE_Field := NRF_SVD.LPUART.Idline_0;
      --  Read-only. Receive Buffer Empty
      RXEMPT         : DATA_RXEMPT_Field := NRF_SVD.LPUART.Rxempt_1;
      --  Frame Error / Transmit Special Character
      FRETSC         : DATA_FRETSC_Field := NRF_SVD.LPUART.Fretsc_0;
      --  Read-only. PARITYE
      PARITYE        : DATA_PARITYE_Field := NRF_SVD.LPUART.Paritye_0;
      --  Read-only. NOISY
      NOISY          : DATA_NOISY_Field := NRF_SVD.LPUART.Noisy_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register use record
      R0T0           at 0 range 0 .. 0;
      R1T1           at 0 range 1 .. 1;
      R2T2           at 0 range 2 .. 2;
      R3T3           at 0 range 3 .. 3;
      R4T4           at 0 range 4 .. 4;
      R5T5           at 0 range 5 .. 5;
      R6T6           at 0 range 6 .. 6;
      R7T7           at 0 range 7 .. 7;
      R8T8           at 0 range 8 .. 8;
      R9T9           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      IDLINE         at 0 range 11 .. 11;
      RXEMPT         at 0 range 12 .. 12;
      FRETSC         at 0 range 13 .. 13;
      PARITYE        at 0 range 14 .. 14;
      NOISY          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MATCH_MA1_Field is HAL.UInt10;
   subtype MATCH_MA2_Field is HAL.UInt10;

   --  LPUART Match Address Register
   type MATCH_Register is record
      --  Match Address 1
      MA1            : MATCH_MA1_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Match Address 2
      MA2            : MATCH_MA2_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATCH_Register use record
      MA1            at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MA2            at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Transmitter clear-to-send enable
   type MODIR_TXCTSE_Field is
     (
      --  CTS has no effect on the transmitter.
      Txctse_0,
      --  Enables clear-to-send operation. The transmitter checks the state of
      --  CTS each time it is ready to send a character. If CTS is asserted,
      --  the character is sent. If CTS is deasserted, the signal TXD remains
      --  in the mark state and transmission is delayed until CTS is asserted.
      --  Changes in CTS as a character is being sent do not affect its
      --  transmission.
      Txctse_1)
     with Size => 1;
   for MODIR_TXCTSE_Field use
     (Txctse_0 => 0,
      Txctse_1 => 1);

   --  Transmitter request-to-send enable
   type MODIR_TXRTSE_Field is
     (
      --  The transmitter has no effect on RTS.
      Txrtse_0,
      --  When a character is placed into an empty transmitter data buffer ,
      --  RTS asserts one bit time before the start bit is transmitted. RTS
      --  deasserts one bit time after all characters in the transmitter data
      --  buffer and shift register are completely sent, including the last
      --  stop bit.
      Txrtse_1)
     with Size => 1;
   for MODIR_TXRTSE_Field use
     (Txrtse_0 => 0,
      Txrtse_1 => 1);

   --  Transmitter request-to-send polarity
   type MODIR_TXRTSPOL_Field is
     (
      --  Transmitter RTS is active low.
      Txrtspol_0,
      --  Transmitter RTS is active high.
      Txrtspol_1)
     with Size => 1;
   for MODIR_TXRTSPOL_Field use
     (Txrtspol_0 => 0,
      Txrtspol_1 => 1);

   --  Receiver request-to-send enable
   type MODIR_RXRTSE_Field is
     (
      --  The receiver has no effect on RTS.
      Rxrtse_0,
      --  no description available
      Rxrtse_1)
     with Size => 1;
   for MODIR_RXRTSE_Field use
     (Rxrtse_0 => 0,
      Rxrtse_1 => 1);

   --  Transmit CTS Configuration
   type MODIR_TXCTSC_Field is
     (
      --  CTS input is sampled at the start of each character.
      Txctsc_0,
      --  CTS input is sampled when the transmitter is idle.
      Txctsc_1)
     with Size => 1;
   for MODIR_TXCTSC_Field use
     (Txctsc_0 => 0,
      Txctsc_1 => 1);

   --  Transmit CTS Source
   type MODIR_TXCTSSRC_Field is
     (
      --  CTS input is the CTS_B pin.
      Txctssrc_0,
      --  CTS input is the inverted Receiver Match result.
      Txctssrc_1)
     with Size => 1;
   for MODIR_TXCTSSRC_Field use
     (Txctssrc_0 => 0,
      Txctssrc_1 => 1);

   subtype MODIR_RTSWATER_Field is HAL.UInt2;

   --  Transmitter narrow pulse
   type MODIR_TNP_Field is
     (
      --  1/OSR.
      Tnp_0,
      --  2/OSR.
      Tnp_1,
      --  3/OSR.
      Tnp_2,
      --  4/OSR.
      Tnp_3)
     with Size => 2;
   for MODIR_TNP_Field use
     (Tnp_0 => 0,
      Tnp_1 => 1,
      Tnp_2 => 2,
      Tnp_3 => 3);

   --  Infrared enable
   type MODIR_IREN_Field is
     (
      --  IR disabled.
      Iren_0,
      --  IR enabled.
      Iren_1)
     with Size => 1;
   for MODIR_IREN_Field use
     (Iren_0 => 0,
      Iren_1 => 1);

   --  LPUART Modem IrDA Register
   type MODIR_Register is record
      --  Transmitter clear-to-send enable
      TXCTSE         : MODIR_TXCTSE_Field := NRF_SVD.LPUART.Txctse_0;
      --  Transmitter request-to-send enable
      TXRTSE         : MODIR_TXRTSE_Field := NRF_SVD.LPUART.Txrtse_0;
      --  Transmitter request-to-send polarity
      TXRTSPOL       : MODIR_TXRTSPOL_Field := NRF_SVD.LPUART.Txrtspol_0;
      --  Receiver request-to-send enable
      RXRTSE         : MODIR_RXRTSE_Field := NRF_SVD.LPUART.Rxrtse_0;
      --  Transmit CTS Configuration
      TXCTSC         : MODIR_TXCTSC_Field := NRF_SVD.LPUART.Txctsc_0;
      --  Transmit CTS Source
      TXCTSSRC       : MODIR_TXCTSSRC_Field := NRF_SVD.LPUART.Txctssrc_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Receive RTS Configuration
      RTSWATER       : MODIR_RTSWATER_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Transmitter narrow pulse
      TNP            : MODIR_TNP_Field := NRF_SVD.LPUART.Tnp_0;
      --  Infrared enable
      IREN           : MODIR_IREN_Field := NRF_SVD.LPUART.Iren_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODIR_Register use record
      TXCTSE         at 0 range 0 .. 0;
      TXRTSE         at 0 range 1 .. 1;
      TXRTSPOL       at 0 range 2 .. 2;
      RXRTSE         at 0 range 3 .. 3;
      TXCTSC         at 0 range 4 .. 4;
      TXCTSSRC       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RTSWATER       at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      TNP            at 0 range 16 .. 17;
      IREN           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Receive FIFO. Buffer Depth
   type FIFO_RXFIFOSIZE_Field is
     (
      --  Receive FIFO/Buffer depth = 1 dataword.
      Rxfifosize_0,
      --  Receive FIFO/Buffer depth = 4 datawords.
      Rxfifosize_1,
      --  Receive FIFO/Buffer depth = 8 datawords.
      Rxfifosize_2,
      --  Receive FIFO/Buffer depth = 16 datawords.
      Rxfifosize_3,
      --  Receive FIFO/Buffer depth = 32 datawords.
      Rxfifosize_4,
      --  Receive FIFO/Buffer depth = 64 datawords.
      Rxfifosize_5,
      --  Receive FIFO/Buffer depth = 128 datawords.
      Rxfifosize_6,
      --  Receive FIFO/Buffer depth = 256 datawords.
      Rxfifosize_7)
     with Size => 3;
   for FIFO_RXFIFOSIZE_Field use
     (Rxfifosize_0 => 0,
      Rxfifosize_1 => 1,
      Rxfifosize_2 => 2,
      Rxfifosize_3 => 3,
      Rxfifosize_4 => 4,
      Rxfifosize_5 => 5,
      Rxfifosize_6 => 6,
      Rxfifosize_7 => 7);

   --  Receive FIFO Enable
   type FIFO_RXFE_Field is
     (
      --  Receive FIFO is not enabled. Buffer is depth 1. (Legacy support)
      Rxfe_0,
      --  Receive FIFO is enabled. Buffer is depth indicted by RXFIFOSIZE.
      Rxfe_1)
     with Size => 1;
   for FIFO_RXFE_Field use
     (Rxfe_0 => 0,
      Rxfe_1 => 1);

   --  Transmit FIFO. Buffer Depth
   type FIFO_TXFIFOSIZE_Field is
     (
      --  Transmit FIFO/Buffer depth = 1 dataword.
      Txfifosize_0,
      --  Transmit FIFO/Buffer depth = 4 datawords.
      Txfifosize_1,
      --  Transmit FIFO/Buffer depth = 8 datawords.
      Txfifosize_2,
      --  Transmit FIFO/Buffer depth = 16 datawords.
      Txfifosize_3,
      --  Transmit FIFO/Buffer depth = 32 datawords.
      Txfifosize_4,
      --  Transmit FIFO/Buffer depth = 64 datawords.
      Txfifosize_5,
      --  Transmit FIFO/Buffer depth = 128 datawords.
      Txfifosize_6,
      --  Transmit FIFO/Buffer depth = 256 datawords
      Txfifosize_7)
     with Size => 3;
   for FIFO_TXFIFOSIZE_Field use
     (Txfifosize_0 => 0,
      Txfifosize_1 => 1,
      Txfifosize_2 => 2,
      Txfifosize_3 => 3,
      Txfifosize_4 => 4,
      Txfifosize_5 => 5,
      Txfifosize_6 => 6,
      Txfifosize_7 => 7);

   --  Transmit FIFO Enable
   type FIFO_TXFE_Field is
     (
      --  Transmit FIFO is not enabled. Buffer is depth 1. (Legacy support).
      Txfe_0,
      --  Transmit FIFO is enabled. Buffer is depth indicated by TXFIFOSIZE.
      Txfe_1)
     with Size => 1;
   for FIFO_TXFE_Field use
     (Txfe_0 => 0,
      Txfe_1 => 1);

   --  Receive FIFO Underflow Interrupt Enable
   type FIFO_RXUFE_Field is
     (
      --  RXUF flag does not generate an interrupt to the host.
      Rxufe_0,
      --  RXUF flag generates an interrupt to the host.
      Rxufe_1)
     with Size => 1;
   for FIFO_RXUFE_Field use
     (Rxufe_0 => 0,
      Rxufe_1 => 1);

   --  Transmit FIFO Overflow Interrupt Enable
   type FIFO_TXOFE_Field is
     (
      --  TXOF flag does not generate an interrupt to the host.
      Txofe_0,
      --  TXOF flag generates an interrupt to the host.
      Txofe_1)
     with Size => 1;
   for FIFO_TXOFE_Field use
     (Txofe_0 => 0,
      Txofe_1 => 1);

   --  Receiver Idle Empty Enable
   type FIFO_RXIDEN_Field is
     (
      --  Disable RDRF assertion due to partially filled FIFO when receiver is
      --  idle.
      Rxiden_0,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 1 character.
      Rxiden_1,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 2 characters.
      Rxiden_2,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 4 characters.
      Rxiden_3,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 8 characters.
      Rxiden_4,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 16 characters.
      Rxiden_5,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 32 characters.
      Rxiden_6,
      --  Enable RDRF assertion due to partially filled FIFO when receiver is
      --  idle for 64 characters.
      Rxiden_7)
     with Size => 3;
   for FIFO_RXIDEN_Field use
     (Rxiden_0 => 0,
      Rxiden_1 => 1,
      Rxiden_2 => 2,
      Rxiden_3 => 3,
      Rxiden_4 => 4,
      Rxiden_5 => 5,
      Rxiden_6 => 6,
      Rxiden_7 => 7);

   --  Receive FIFO/Buffer Flush
   type FIFO_RXFLUSH_Field is
     (
      --  No flush operation occurs.
      Rxflush_0,
      --  All data in the receive FIFO/buffer is cleared out.
      Rxflush_1)
     with Size => 1;
   for FIFO_RXFLUSH_Field use
     (Rxflush_0 => 0,
      Rxflush_1 => 1);

   --  Transmit FIFO/Buffer Flush
   type FIFO_TXFLUSH_Field is
     (
      --  No flush operation occurs.
      Txflush_0,
      --  All data in the transmit FIFO/Buffer is cleared out.
      Txflush_1)
     with Size => 1;
   for FIFO_TXFLUSH_Field use
     (Txflush_0 => 0,
      Txflush_1 => 1);

   --  Receiver Buffer Underflow Flag
   type FIFO_RXUF_Field is
     (
      --  No receive buffer underflow has occurred since the last time the flag
      --  was cleared.
      Rxuf_0,
      --  At least one receive buffer underflow has occurred since the last
      --  time the flag was cleared.
      Rxuf_1)
     with Size => 1;
   for FIFO_RXUF_Field use
     (Rxuf_0 => 0,
      Rxuf_1 => 1);

   --  Transmitter Buffer Overflow Flag
   type FIFO_TXOF_Field is
     (
      --  No transmit buffer overflow has occurred since the last time the flag
      --  was cleared.
      Txof_0,
      --  At least one transmit buffer overflow has occurred since the last
      --  time the flag was cleared.
      Txof_1)
     with Size => 1;
   for FIFO_TXOF_Field use
     (Txof_0 => 0,
      Txof_1 => 1);

   --  Receive Buffer/FIFO Empty
   type FIFO_RXEMPT_Field is
     (
      --  Receive buffer is not empty.
      Rxempt_0,
      --  Receive buffer is empty.
      Rxempt_1)
     with Size => 1;
   for FIFO_RXEMPT_Field use
     (Rxempt_0 => 0,
      Rxempt_1 => 1);

   --  Transmit Buffer/FIFO Empty
   type FIFO_TXEMPT_Field is
     (
      --  Transmit buffer is not empty.
      Txempt_0,
      --  Transmit buffer is empty.
      Txempt_1)
     with Size => 1;
   for FIFO_TXEMPT_Field use
     (Txempt_0 => 0,
      Txempt_1 => 1);

   --  LPUART FIFO Register
   type FIFO_Register is record
      --  Read-only. Receive FIFO. Buffer Depth
      RXFIFOSIZE     : FIFO_RXFIFOSIZE_Field := NRF_SVD.LPUART.Rxfifosize_1;
      --  Receive FIFO Enable
      RXFE           : FIFO_RXFE_Field := NRF_SVD.LPUART.Rxfe_0;
      --  Read-only. Transmit FIFO. Buffer Depth
      TXFIFOSIZE     : FIFO_TXFIFOSIZE_Field := NRF_SVD.LPUART.Txfifosize_1;
      --  Transmit FIFO Enable
      TXFE           : FIFO_TXFE_Field := NRF_SVD.LPUART.Txfe_0;
      --  Receive FIFO Underflow Interrupt Enable
      RXUFE          : FIFO_RXUFE_Field := NRF_SVD.LPUART.Rxufe_0;
      --  Transmit FIFO Overflow Interrupt Enable
      TXOFE          : FIFO_TXOFE_Field := NRF_SVD.LPUART.Txofe_0;
      --  Receiver Idle Empty Enable
      RXIDEN         : FIFO_RXIDEN_Field := NRF_SVD.LPUART.Rxiden_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. Receive FIFO/Buffer Flush
      RXFLUSH        : FIFO_RXFLUSH_Field := NRF_SVD.LPUART.Rxflush_0;
      --  Write-only. Transmit FIFO/Buffer Flush
      TXFLUSH        : FIFO_TXFLUSH_Field := NRF_SVD.LPUART.Txflush_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Receiver Buffer Underflow Flag
      RXUF           : FIFO_RXUF_Field := NRF_SVD.LPUART.Rxuf_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Transmitter Buffer Overflow Flag
      TXOF           : FIFO_TXOF_Field := NRF_SVD.LPUART.Txof_0;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Read-only. Receive Buffer/FIFO Empty
      RXEMPT         : FIFO_RXEMPT_Field := NRF_SVD.LPUART.Rxempt_1;
      --  Read-only. Transmit Buffer/FIFO Empty
      TXEMPT         : FIFO_TXEMPT_Field := NRF_SVD.LPUART.Txempt_1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_Register use record
      RXFIFOSIZE     at 0 range 0 .. 2;
      RXFE           at 0 range 3 .. 3;
      TXFIFOSIZE     at 0 range 4 .. 6;
      TXFE           at 0 range 7 .. 7;
      RXUFE          at 0 range 8 .. 8;
      TXOFE          at 0 range 9 .. 9;
      RXIDEN         at 0 range 10 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      RXFLUSH        at 0 range 14 .. 14;
      TXFLUSH        at 0 range 15 .. 15;
      RXUF           at 0 range 16 .. 16;
      TXOF           at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      RXEMPT         at 0 range 22 .. 22;
      TXEMPT         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype WATER_TXWATER_Field is HAL.UInt2;
   subtype WATER_TXCOUNT_Field is HAL.UInt3;
   subtype WATER_RXWATER_Field is HAL.UInt2;
   subtype WATER_RXCOUNT_Field is HAL.UInt3;

   --  LPUART Watermark Register
   type WATER_Register is record
      --  Transmit Watermark
      TXWATER        : WATER_TXWATER_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Read-only. Transmit Counter
      TXCOUNT        : WATER_TXCOUNT_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Receive Watermark
      RXWATER        : WATER_RXWATER_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Read-only. Receive Counter
      RXCOUNT        : WATER_RXCOUNT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WATER_Register use record
      TXWATER        at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXCOUNT        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RXWATER        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      RXCOUNT        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPUART
   type LPUART_Peripheral is record
      --  Version ID Register
      VERID  : aliased VERID_Register;
      --  Parameter Register
      PARAM  : aliased PARAM_Register;
      --  LPUART Global Register
      GLOBAL : aliased GLOBAL_Register;
      --  LPUART Pin Configuration Register
      PINCFG : aliased PINCFG_Register;
      --  LPUART Baud Rate Register
      BAUD   : aliased BAUD_Register;
      --  LPUART Status Register
      STAT   : aliased STAT_Register;
      --  LPUART Control Register
      CTRL   : aliased CTRL_Register;
      --  LPUART Data Register
      DATA   : aliased DATA_Register;
      --  LPUART Match Address Register
      MATCH  : aliased MATCH_Register;
      --  LPUART Modem IrDA Register
      MODIR  : aliased MODIR_Register;
      --  LPUART FIFO Register
      FIFO   : aliased FIFO_Register;
      --  LPUART Watermark Register
      WATER  : aliased WATER_Register;
   end record
     with Volatile;

   for LPUART_Peripheral use record
      VERID  at 16#0# range 0 .. 31;
      PARAM  at 16#4# range 0 .. 31;
      GLOBAL at 16#8# range 0 .. 31;
      PINCFG at 16#C# range 0 .. 31;
      BAUD   at 16#10# range 0 .. 31;
      STAT   at 16#14# range 0 .. 31;
      CTRL   at 16#18# range 0 .. 31;
      DATA   at 16#1C# range 0 .. 31;
      MATCH  at 16#20# range 0 .. 31;
      MODIR  at 16#24# range 0 .. 31;
      FIFO   at 16#28# range 0 .. 31;
      WATER  at 16#2C# range 0 .. 31;
   end record;

   --  LPUART
   LPUART1_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#40184000#);

   --  LPUART
   LPUART2_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#40188000#);

   --  LPUART
   LPUART3_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#4018C000#);

   --  LPUART
   LPUART4_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#40190000#);

   --  LPUART
   LPUART5_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#40194000#);

   --  LPUART
   LPUART6_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#40198000#);

   --  LPUART
   LPUART7_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#4019C000#);

   --  LPUART
   LPUART8_Periph : aliased LPUART_Peripheral
     with Import, Address => System'To_Address (16#401A0000#);

end NRF_SVD.LPUART;
