--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLEXIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Specification Number
   type VERID_FEATURE_Field is
     (
      --  Standard features implemented.
      Feature_0,
      --  Supports state, logic and parallel modes.
      Feature_1)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_0 => 0,
      Feature_1 => 1);

   subtype VERID_MINOR_Field is HAL.UInt8;
   subtype VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type VERID_Register is record
      --  Read-only. Feature Specification Number
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

   subtype PARAM_SHIFTER_Field is HAL.UInt8;
   subtype PARAM_TIMER_Field is HAL.UInt8;
   subtype PARAM_PIN_Field is HAL.UInt8;
   subtype PARAM_TRIGGER_Field is HAL.UInt8;

   --  Parameter Register
   type PARAM_Register is record
      --  Read-only. Shifter Number
      SHIFTER : PARAM_SHIFTER_Field;
      --  Read-only. Timer Number
      TIMER   : PARAM_TIMER_Field;
      --  Read-only. Pin Number
      PIN     : PARAM_PIN_Field;
      --  Read-only. Trigger Number
      TRIGGER : PARAM_TRIGGER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARAM_Register use record
      SHIFTER at 0 range 0 .. 7;
      TIMER   at 0 range 8 .. 15;
      PIN     at 0 range 16 .. 23;
      TRIGGER at 0 range 24 .. 31;
   end record;

   --  FlexIO Enable
   type CTRL_FLEXEN_Field is
     (
      --  FlexIO module is disabled.
      Flexen_0,
      --  FlexIO module is enabled.
      Flexen_1)
     with Size => 1;
   for CTRL_FLEXEN_Field use
     (Flexen_0 => 0,
      Flexen_1 => 1);

   --  Software Reset
   type CTRL_SWRST_Field is
     (
      --  Software reset is disabled
      Swrst_0,
      --  Software reset is enabled, all FlexIO registers except the Control
      --  Register are reset.
      Swrst_1)
     with Size => 1;
   for CTRL_SWRST_Field use
     (Swrst_0 => 0,
      Swrst_1 => 1);

   --  Fast Access
   type CTRL_FASTACC_Field is
     (
      --  Configures for normal register accesses to FlexIO
      Fastacc_0,
      --  Configures for fast register accesses to FlexIO
      Fastacc_1)
     with Size => 1;
   for CTRL_FASTACC_Field use
     (Fastacc_0 => 0,
      Fastacc_1 => 1);

   --  Debug Enable
   type CTRL_DBGE_Field is
     (
      --  FlexIO is disabled in debug modes.
      Dbge_0,
      --  FlexIO is enabled in debug modes
      Dbge_1)
     with Size => 1;
   for CTRL_DBGE_Field use
     (Dbge_0 => 0,
      Dbge_1 => 1);

   --  Doze Enable
   type CTRL_DOZEN_Field is
     (
      --  FlexIO enabled in Doze modes.
      Dozen_0,
      --  FlexIO disabled in Doze modes.
      Dozen_1)
     with Size => 1;
   for CTRL_DOZEN_Field use
     (Dozen_0 => 0,
      Dozen_1 => 1);

   --  FlexIO Control Register
   type CTRL_Register is record
      --  FlexIO Enable
      FLEXEN        : CTRL_FLEXEN_Field := NRF_SVD.FLEXIO.Flexen_0;
      --  Software Reset
      SWRST         : CTRL_SWRST_Field := NRF_SVD.FLEXIO.Swrst_0;
      --  Fast Access
      FASTACC       : CTRL_FASTACC_Field := NRF_SVD.FLEXIO.Fastacc_0;
      --  unspecified
      Reserved_3_29 : HAL.UInt27 := 16#0#;
      --  Debug Enable
      DBGE          : CTRL_DBGE_Field := NRF_SVD.FLEXIO.Dbge_0;
      --  Doze Enable
      DOZEN         : CTRL_DOZEN_Field := NRF_SVD.FLEXIO.Dozen_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      FLEXEN        at 0 range 0 .. 0;
      SWRST         at 0 range 1 .. 1;
      FASTACC       at 0 range 2 .. 2;
      Reserved_3_29 at 0 range 3 .. 29;
      DBGE          at 0 range 30 .. 30;
      DOZEN         at 0 range 31 .. 31;
   end record;

   subtype SHIFTSTAT_SSF_Field is HAL.UInt4;

   --  Shifter Status Register
   type SHIFTSTAT_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Shifter Status Flag
      SSF           : SHIFTSTAT_SSF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTSTAT_Register use record
      SSF           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SHIFTERR_SEF_Field is HAL.UInt4;

   --  Shifter Error Register
   type SHIFTERR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Shifter Error Flags
      SEF           : SHIFTERR_SEF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTERR_Register use record
      SEF           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIMSTAT_TSF_Field is HAL.UInt4;

   --  Timer Status Register
   type TIMSTAT_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Timer Status Flags
      TSF           : TIMSTAT_TSF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMSTAT_Register use record
      TSF           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SHIFTSIEN_SSIE_Field is HAL.UInt4;

   --  Shifter Status Interrupt Enable
   type SHIFTSIEN_Register is record
      --  Shifter Status Interrupt Enable
      SSIE          : SHIFTSIEN_SSIE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTSIEN_Register use record
      SSIE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SHIFTEIEN_SEIE_Field is HAL.UInt4;

   --  Shifter Error Interrupt Enable
   type SHIFTEIEN_Register is record
      --  Shifter Error Interrupt Enable
      SEIE          : SHIFTEIEN_SEIE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTEIEN_Register use record
      SEIE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIMIEN_TEIE_Field is HAL.UInt4;

   --  Timer Interrupt Enable Register
   type TIMIEN_Register is record
      --  Timer Status Interrupt Enable
      TEIE          : TIMIEN_TEIE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMIEN_Register use record
      TEIE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SHIFTSDEN_SSDE_Field is HAL.UInt4;

   --  Shifter Status DMA Enable
   type SHIFTSDEN_Register is record
      --  Shifter Status DMA Enable
      SSDE          : SHIFTSDEN_SSDE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTSDEN_Register use record
      SSDE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SHIFTSTATE_STATE_Field is HAL.UInt3;

   --  Shifter State Register
   type SHIFTSTATE_Register is record
      --  Current State Pointer
      STATE         : SHIFTSTATE_STATE_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTSTATE_Register use record
      STATE         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Shifter Mode
   type SHIFTCTL_SMOD_Field is
     (
      --  Disabled.
      Smod_0,
      --  Receive mode. Captures the current Shifter content into the SHIFTBUF
      --  on expiration of the Timer.
      Smod_1,
      --  Transmit mode. Load SHIFTBUF contents into the Shifter on expiration
      --  of the Timer.
      Smod_2,
      --  Match Store mode. Shifter data is compared to SHIFTBUF content on
      --  expiration of the Timer.
      Smod_4,
      --  Match Continuous mode. Shifter data is continuously compared to
      --  SHIFTBUF contents.
      Smod_5,
      --  no description available
      Smod_6,
      --  no description available
      Smod_7)
     with Size => 3;
   for SHIFTCTL_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7);

   --  Shifter Pin Polarity
   type SHIFTCTL_PINPOL_Field is
     (
      --  Pin is active high
      Pinpol_0,
      --  Pin is active low
      Pinpol_1)
     with Size => 1;
   for SHIFTCTL_PINPOL_Field use
     (Pinpol_0 => 0,
      Pinpol_1 => 1);

   subtype SHIFTCTL_PINSEL_Field is HAL.UInt5;

   --  Shifter Pin Configuration
   type SHIFTCTL_PINCFG_Field is
     (
      --  Shifter pin output disabled
      Pincfg_0,
      --  Shifter pin open drain or bidirectional output enable
      Pincfg_1,
      --  Shifter pin bidirectional output data
      Pincfg_2,
      --  Shifter pin output
      Pincfg_3)
     with Size => 2;
   for SHIFTCTL_PINCFG_Field use
     (Pincfg_0 => 0,
      Pincfg_1 => 1,
      Pincfg_2 => 2,
      Pincfg_3 => 3);

   --  Timer Polarity
   type SHIFTCTL_TIMPOL_Field is
     (
      --  Shift on posedge of Shift clock
      Timpol_0,
      --  Shift on negedge of Shift clock
      Timpol_1)
     with Size => 1;
   for SHIFTCTL_TIMPOL_Field use
     (Timpol_0 => 0,
      Timpol_1 => 1);

   subtype SHIFTCTL_TIMSEL_Field is HAL.UInt2;

   --  Shifter Control N Register
   type SHIFTCTL_Register is record
      --  Shifter Mode
      SMOD           : SHIFTCTL_SMOD_Field := NRF_SVD.FLEXIO.Smod_0;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Shifter Pin Polarity
      PINPOL         : SHIFTCTL_PINPOL_Field := NRF_SVD.FLEXIO.Pinpol_0;
      --  Shifter Pin Select
      PINSEL         : SHIFTCTL_PINSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Shifter Pin Configuration
      PINCFG         : SHIFTCTL_PINCFG_Field := NRF_SVD.FLEXIO.Pincfg_0;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Timer Polarity
      TIMPOL         : SHIFTCTL_TIMPOL_Field := NRF_SVD.FLEXIO.Timpol_0;
      --  Timer Select
      TIMSEL         : SHIFTCTL_TIMSEL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTCTL_Register use record
      SMOD           at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      PINPOL         at 0 range 7 .. 7;
      PINSEL         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PINCFG         at 0 range 16 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      TIMPOL         at 0 range 23 .. 23;
      TIMSEL         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Shifter Control N Register
   type SHIFTCTL_Registers is array (0 .. 3) of SHIFTCTL_Register
     with Volatile;

   --  Shifter Start bit
   type SHIFTCFG_SSTART_Field is
     (
      --  Start bit disabled for transmitter/receiver/match store, transmitter
      --  loads data on enable
      Sstart_0,
      --  Start bit disabled for transmitter/receiver/match store, transmitter
      --  loads data on first shift
      Sstart_1,
      --  Transmitter outputs start bit value 0 before loading data on first
      --  shift, receiver/match store sets error flag if start bit is not 0
      Sstart_2,
      --  Transmitter outputs start bit value 1 before loading data on first
      --  shift, receiver/match store sets error flag if start bit is not 1
      Sstart_3)
     with Size => 2;
   for SHIFTCFG_SSTART_Field use
     (Sstart_0 => 0,
      Sstart_1 => 1,
      Sstart_2 => 2,
      Sstart_3 => 3);

   --  Shifter Stop bit
   type SHIFTCFG_SSTOP_Field is
     (
      --  Stop bit disabled for transmitter/receiver/match store
      Sstop_0,
      --  Transmitter outputs stop bit value 0 on store, receiver/match store
      --  sets error flag if stop bit is not 0
      Sstop_2,
      --  Transmitter outputs stop bit value 1 on store, receiver/match store
      --  sets error flag if stop bit is not 1
      Sstop_3)
     with Size => 2;
   for SHIFTCFG_SSTOP_Field use
     (Sstop_0 => 0,
      Sstop_2 => 2,
      Sstop_3 => 3);

   --  Input Source
   type SHIFTCFG_INSRC_Field is
     (
      --  Pin
      Insrc_0,
      --  Shifter N+1 Output
      Insrc_1)
     with Size => 1;
   for SHIFTCFG_INSRC_Field use
     (Insrc_0 => 0,
      Insrc_1 => 1);

   subtype SHIFTCFG_PWIDTH_Field is HAL.UInt5;

   --  Shifter Configuration N Register
   type SHIFTCFG_Register is record
      --  Shifter Start bit
      SSTART         : SHIFTCFG_SSTART_Field := NRF_SVD.FLEXIO.Sstart_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Shifter Stop bit
      SSTOP          : SHIFTCFG_SSTOP_Field := NRF_SVD.FLEXIO.Sstop_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input Source
      INSRC          : SHIFTCFG_INSRC_Field := NRF_SVD.FLEXIO.Insrc_0;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Parallel Width
      PWIDTH         : SHIFTCFG_PWIDTH_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTCFG_Register use record
      SSTART         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SSTOP          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      INSRC          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PWIDTH         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Shifter Configuration N Register
   type SHIFTCFG_Registers is array (0 .. 3) of SHIFTCFG_Register
     with Volatile;

   --  Shifter Buffer N Register

   --  Shifter Buffer N Register
   type SHIFTBUF_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Bit Swapped Register

   --  Shifter Buffer N Bit Swapped Register
   type SHIFTBUFBIS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Byte Swapped Register

   --  Shifter Buffer N Byte Swapped Register
   type SHIFTBUFBYS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Bit Byte Swapped Register

   --  Shifter Buffer N Bit Byte Swapped Register
   type SHIFTBUFBBS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Timer Mode
   type TIMCTL_TIMOD_Field is
     (
      --  Timer Disabled.
      Timod_0,
      --  Dual 8-bit counters baud mode.
      Timod_1,
      --  Dual 8-bit counters PWM high mode.
      Timod_2,
      --  Single 16-bit counter mode.
      Timod_3)
     with Size => 2;
   for TIMCTL_TIMOD_Field use
     (Timod_0 => 0,
      Timod_1 => 1,
      Timod_2 => 2,
      Timod_3 => 3);

   --  Timer Pin Polarity
   type TIMCTL_PINPOL_Field is
     (
      --  Pin is active high
      Pinpol_0,
      --  Pin is active low
      Pinpol_1)
     with Size => 1;
   for TIMCTL_PINPOL_Field use
     (Pinpol_0 => 0,
      Pinpol_1 => 1);

   subtype TIMCTL_PINSEL_Field is HAL.UInt5;

   --  Timer Pin Configuration
   type TIMCTL_PINCFG_Field is
     (
      --  Timer pin output disabled
      Pincfg_0,
      --  Timer pin open drain or bidirectional output enable
      Pincfg_1,
      --  Timer pin bidirectional output data
      Pincfg_2,
      --  Timer pin output
      Pincfg_3)
     with Size => 2;
   for TIMCTL_PINCFG_Field use
     (Pincfg_0 => 0,
      Pincfg_1 => 1,
      Pincfg_2 => 2,
      Pincfg_3 => 3);

   --  Trigger Source
   type TIMCTL_TRGSRC_Field is
     (
      --  External trigger selected
      Trgsrc_0,
      --  Internal trigger selected
      Trgsrc_1)
     with Size => 1;
   for TIMCTL_TRGSRC_Field use
     (Trgsrc_0 => 0,
      Trgsrc_1 => 1);

   --  Trigger Polarity
   type TIMCTL_TRGPOL_Field is
     (
      --  Trigger active high
      Trgpol_0,
      --  Trigger active low
      Trgpol_1)
     with Size => 1;
   for TIMCTL_TRGPOL_Field use
     (Trgpol_0 => 0,
      Trgpol_1 => 1);

   subtype TIMCTL_TRGSEL_Field is HAL.UInt6;

   --  Timer Control N Register
   type TIMCTL_Register is record
      --  Timer Mode
      TIMOD          : TIMCTL_TIMOD_Field := NRF_SVD.FLEXIO.Timod_0;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  Timer Pin Polarity
      PINPOL         : TIMCTL_PINPOL_Field := NRF_SVD.FLEXIO.Pinpol_0;
      --  Timer Pin Select
      PINSEL         : TIMCTL_PINSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Timer Pin Configuration
      PINCFG         : TIMCTL_PINCFG_Field := NRF_SVD.FLEXIO.Pincfg_0;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Trigger Source
      TRGSRC         : TIMCTL_TRGSRC_Field := NRF_SVD.FLEXIO.Trgsrc_0;
      --  Trigger Polarity
      TRGPOL         : TIMCTL_TRGPOL_Field := NRF_SVD.FLEXIO.Trgpol_0;
      --  Trigger Select
      TRGSEL         : TIMCTL_TRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCTL_Register use record
      TIMOD          at 0 range 0 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      PINPOL         at 0 range 7 .. 7;
      PINSEL         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PINCFG         at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      TRGSRC         at 0 range 22 .. 22;
      TRGPOL         at 0 range 23 .. 23;
      TRGSEL         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Timer Control N Register
   type TIMCTL_Registers is array (0 .. 3) of TIMCTL_Register
     with Volatile;

   --  Timer Start Bit
   type TIMCFG_TSTART_Field is
     (
      --  Start bit disabled
      Tstart_0,
      --  Start bit enabled
      Tstart_1)
     with Size => 1;
   for TIMCFG_TSTART_Field use
     (Tstart_0 => 0,
      Tstart_1 => 1);

   --  Timer Stop Bit
   type TIMCFG_TSTOP_Field is
     (
      --  Stop bit disabled
      Tstop_0,
      --  Stop bit is enabled on timer compare
      Tstop_1,
      --  Stop bit is enabled on timer disable
      Tstop_2,
      --  Stop bit is enabled on timer compare and timer disable
      Tstop_3)
     with Size => 2;
   for TIMCFG_TSTOP_Field use
     (Tstop_0 => 0,
      Tstop_1 => 1,
      Tstop_2 => 2,
      Tstop_3 => 3);

   --  Timer Enable
   type TIMCFG_TIMENA_Field is
     (
      --  Timer always enabled
      Timena_0,
      --  Timer enabled on Timer N-1 enable
      Timena_1,
      --  Timer enabled on Trigger high
      Timena_2,
      --  Timer enabled on Trigger high and Pin high
      Timena_3,
      --  Timer enabled on Pin rising edge
      Timena_4,
      --  Timer enabled on Pin rising edge and Trigger high
      Timena_5,
      --  Timer enabled on Trigger rising edge
      Timena_6,
      --  Timer enabled on Trigger rising or falling edge
      Timena_7)
     with Size => 3;
   for TIMCFG_TIMENA_Field use
     (Timena_0 => 0,
      Timena_1 => 1,
      Timena_2 => 2,
      Timena_3 => 3,
      Timena_4 => 4,
      Timena_5 => 5,
      Timena_6 => 6,
      Timena_7 => 7);

   --  Timer Disable
   type TIMCFG_TIMDIS_Field is
     (
      --  Timer never disabled
      Timdis_0,
      --  Timer disabled on Timer N-1 disable
      Timdis_1,
      --  Timer disabled on Timer compare
      Timdis_2,
      --  Timer disabled on Timer compare and Trigger Low
      Timdis_3,
      --  Timer disabled on Pin rising or falling edge
      Timdis_4,
      --  Timer disabled on Pin rising or falling edge provided Trigger is high
      Timdis_5,
      --  Timer disabled on Trigger falling edge
      Timdis_6)
     with Size => 3;
   for TIMCFG_TIMDIS_Field use
     (Timdis_0 => 0,
      Timdis_1 => 1,
      Timdis_2 => 2,
      Timdis_3 => 3,
      Timdis_4 => 4,
      Timdis_5 => 5,
      Timdis_6 => 6);

   --  Timer Reset
   type TIMCFG_TIMRST_Field is
     (
      --  Timer never reset
      Timrst_0,
      --  Timer reset on Timer Pin equal to Timer Output
      Timrst_2,
      --  Timer reset on Timer Trigger equal to Timer Output
      Timrst_3,
      --  Timer reset on Timer Pin rising edge
      Timrst_4,
      --  Timer reset on Trigger rising edge
      Timrst_6,
      --  Timer reset on Trigger rising or falling edge
      Timrst_7)
     with Size => 3;
   for TIMCFG_TIMRST_Field use
     (Timrst_0 => 0,
      Timrst_2 => 2,
      Timrst_3 => 3,
      Timrst_4 => 4,
      Timrst_6 => 6,
      Timrst_7 => 7);

   --  Timer Decrement
   type TIMCFG_TIMDEC_Field is
     (
      --  Decrement counter on FlexIO clock, Shift clock equals Timer output.
      Timdec_0,
      --  Decrement counter on Trigger input (both edges), Shift clock equals
      --  Timer output.
      Timdec_1,
      --  Decrement counter on Pin input (both edges), Shift clock equals Pin
      --  input.
      Timdec_2,
      --  Decrement counter on Trigger input (both edges), Shift clock equals
      --  Trigger input.
      Timdec_3)
     with Size => 2;
   for TIMCFG_TIMDEC_Field use
     (Timdec_0 => 0,
      Timdec_1 => 1,
      Timdec_2 => 2,
      Timdec_3 => 3);

   --  Timer Output
   type TIMCFG_TIMOUT_Field is
     (
      --  Timer output is logic one when enabled and is not affected by timer
      --  reset
      Timout_0,
      --  Timer output is logic zero when enabled and is not affected by timer
      --  reset
      Timout_1,
      --  Timer output is logic one when enabled and on timer reset
      Timout_2,
      --  Timer output is logic zero when enabled and on timer reset
      Timout_3)
     with Size => 2;
   for TIMCFG_TIMOUT_Field use
     (Timout_0 => 0,
      Timout_1 => 1,
      Timout_2 => 2,
      Timout_3 => 3);

   --  Timer Configuration N Register
   type TIMCFG_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Timer Start Bit
      TSTART         : TIMCFG_TSTART_Field := NRF_SVD.FLEXIO.Tstart_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Timer Stop Bit
      TSTOP          : TIMCFG_TSTOP_Field := NRF_SVD.FLEXIO.Tstop_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Timer Enable
      TIMENA         : TIMCFG_TIMENA_Field := NRF_SVD.FLEXIO.Timena_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Timer Disable
      TIMDIS         : TIMCFG_TIMDIS_Field := NRF_SVD.FLEXIO.Timdis_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Timer Reset
      TIMRST         : TIMCFG_TIMRST_Field := NRF_SVD.FLEXIO.Timrst_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Timer Decrement
      TIMDEC         : TIMCFG_TIMDEC_Field := NRF_SVD.FLEXIO.Timdec_0;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Timer Output
      TIMOUT         : TIMCFG_TIMOUT_Field := NRF_SVD.FLEXIO.Timout_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCFG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TSTART         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TSTOP          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TIMENA         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TIMDIS         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIMRST         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TIMDEC         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TIMOUT         at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Timer Configuration N Register
   type TIMCFG_Registers is array (0 .. 3) of TIMCFG_Register
     with Volatile;

   subtype TIMCMP_CMP_Field is HAL.UInt16;

   --  Timer Compare N Register
   type TIMCMP_Register is record
      --  Timer Compare Value
      CMP            : TIMCMP_CMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCMP_Register use record
      CMP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timer Compare N Register
   type TIMCMP_Registers is array (0 .. 3) of TIMCMP_Register
     with Volatile;

   --  Shifter Buffer N Nibble Byte Swapped Register

   --  Shifter Buffer N Nibble Byte Swapped Register
   type SHIFTBUFNBS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Half Word Swapped Register

   --  Shifter Buffer N Half Word Swapped Register
   type SHIFTBUFHWS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Shifter Buffer N Nibble Swapped Register

   --  Shifter Buffer N Nibble Swapped Register
   type SHIFTBUFNIS_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  FLEXIO
   type FLEXIO_Peripheral is record
      --  Version ID Register
      VERID       : aliased VERID_Register;
      --  Parameter Register
      PARAM       : aliased PARAM_Register;
      --  FlexIO Control Register
      CTRL        : aliased CTRL_Register;
      --  Pin State Register
      PIN         : aliased HAL.UInt32;
      --  Shifter Status Register
      SHIFTSTAT   : aliased SHIFTSTAT_Register;
      --  Shifter Error Register
      SHIFTERR    : aliased SHIFTERR_Register;
      --  Timer Status Register
      TIMSTAT     : aliased TIMSTAT_Register;
      --  Shifter Status Interrupt Enable
      SHIFTSIEN   : aliased SHIFTSIEN_Register;
      --  Shifter Error Interrupt Enable
      SHIFTEIEN   : aliased SHIFTEIEN_Register;
      --  Timer Interrupt Enable Register
      TIMIEN      : aliased TIMIEN_Register;
      --  Shifter Status DMA Enable
      SHIFTSDEN   : aliased SHIFTSDEN_Register;
      --  Shifter State Register
      SHIFTSTATE  : aliased SHIFTSTATE_Register;
      --  Shifter Control N Register
      SHIFTCTL    : aliased SHIFTCTL_Registers;
      --  Shifter Configuration N Register
      SHIFTCFG    : aliased SHIFTCFG_Registers;
      --  Shifter Buffer N Register
      SHIFTBUF    : aliased SHIFTBUF_Registers;
      --  Shifter Buffer N Bit Swapped Register
      SHIFTBUFBIS : aliased SHIFTBUFBIS_Registers;
      --  Shifter Buffer N Byte Swapped Register
      SHIFTBUFBYS : aliased SHIFTBUFBYS_Registers;
      --  Shifter Buffer N Bit Byte Swapped Register
      SHIFTBUFBBS : aliased SHIFTBUFBBS_Registers;
      --  Timer Control N Register
      TIMCTL      : aliased TIMCTL_Registers;
      --  Timer Configuration N Register
      TIMCFG      : aliased TIMCFG_Registers;
      --  Timer Compare N Register
      TIMCMP      : aliased TIMCMP_Registers;
      --  Shifter Buffer N Nibble Byte Swapped Register
      SHIFTBUFNBS : aliased SHIFTBUFNBS_Registers;
      --  Shifter Buffer N Half Word Swapped Register
      SHIFTBUFHWS : aliased SHIFTBUFHWS_Registers;
      --  Shifter Buffer N Nibble Swapped Register
      SHIFTBUFNIS : aliased SHIFTBUFNIS_Registers;
   end record
     with Volatile;

   for FLEXIO_Peripheral use record
      VERID       at 16#0# range 0 .. 31;
      PARAM       at 16#4# range 0 .. 31;
      CTRL        at 16#8# range 0 .. 31;
      PIN         at 16#C# range 0 .. 31;
      SHIFTSTAT   at 16#10# range 0 .. 31;
      SHIFTERR    at 16#14# range 0 .. 31;
      TIMSTAT     at 16#18# range 0 .. 31;
      SHIFTSIEN   at 16#20# range 0 .. 31;
      SHIFTEIEN   at 16#24# range 0 .. 31;
      TIMIEN      at 16#28# range 0 .. 31;
      SHIFTSDEN   at 16#30# range 0 .. 31;
      SHIFTSTATE  at 16#40# range 0 .. 31;
      SHIFTCTL    at 16#80# range 0 .. 127;
      SHIFTCFG    at 16#100# range 0 .. 127;
      SHIFTBUF    at 16#200# range 0 .. 127;
      SHIFTBUFBIS at 16#280# range 0 .. 127;
      SHIFTBUFBYS at 16#300# range 0 .. 127;
      SHIFTBUFBBS at 16#380# range 0 .. 127;
      TIMCTL      at 16#400# range 0 .. 127;
      TIMCFG      at 16#480# range 0 .. 127;
      TIMCMP      at 16#500# range 0 .. 127;
      SHIFTBUFNBS at 16#680# range 0 .. 127;
      SHIFTBUFHWS at 16#700# range 0 .. 127;
      SHIFTBUFNIS at 16#780# range 0 .. 127;
   end record;

   --  FLEXIO
   FLEXIO1_Periph : aliased FLEXIO_Peripheral
     with Import, Address => System'To_Address (16#401AC000#);

   --  FLEXIO
   FLEXIO2_Periph : aliased FLEXIO_Peripheral
     with Import, Address => System'To_Address (16#401B0000#);

end NRF_SVD.FLEXIO;
