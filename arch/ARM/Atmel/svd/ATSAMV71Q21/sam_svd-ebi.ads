--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.EBI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SDRAMC Command Mode
   type MR_MODE_Field is
     (
      --  Normal mode. Any access to the SDRAM is decoded normally. To activate
      --  this mode, the command must be followed by a write to the SDRAM.
      Normal,
      --  The SDRAMC issues a NOP command when the SDRAM device is accessed
      --  regardless of the cycle. To activate this mode, the command must be
      --  followed by a write to the SDRAM.
      Nop,
      --  The SDRAMC issues an "All Banks Precharge" command when the SDRAM
      --  device is accessed regardless of the cycle. To activate this mode,
      --  the command must be followed by a write to the SDRAM.
      Allbanks_Precharge,
      --  The SDRAMC issues a "Load Mode Register" command when the SDRAM
      --  device is accessed regardless of the cycle. To activate this mode,
      --  the command must be followed by a write to the SDRAM.
      Load_Modereg,
      --  The SDRAMC issues an "Auto-Refresh" Command when the SDRAM device is
      --  accessed regardless of the cycle. Previously, an "All Banks
      --  Precharge" command must be issued. To activate this mode, the command
      --  must be followed by a write to the SDRAM.
      Auto_Refresh,
      --  The SDRAMC issues an "Extended Load Mode Register" command when the
      --  SDRAM device is accessed regardless of the cycle. To activate this
      --  mode, the "Extended Load Mode Register" command must be followed by a
      --  write to the SDRAM. The write in the SDRAM must be done in the
      --  appropriate bank; most low-power SDRAM devices use the bank 1.
      Ext_Load_Modereg,
      --  Deep Power-down mode. Enters Deep Power-down mode.
      Deep_Powerdown)
     with Size => 3;
   for MR_MODE_Field use
     (Normal => 0,
      Nop => 1,
      Allbanks_Precharge => 2,
      Load_Modereg => 3,
      Auto_Refresh => 4,
      Ext_Load_Modereg => 5,
      Deep_Powerdown => 6);

   --  SDRAMC Mode Register
   type SDRAMC_MR_Register is record
      --  SDRAMC Command Mode
      MODE          : MR_MODE_Field := SAM_SVD.EBI.Normal;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_MR_Register use record
      MODE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SDRAMC_TR_COUNT_Field is HAL.UInt12;

   --  SDRAMC Refresh Timer Register
   type SDRAMC_TR_Register is record
      --  SDRAMC Refresh Timer Count
      COUNT          : SDRAMC_TR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_TR_Register use record
      COUNT          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Number of Column Bits
   type CR_NC_Field is
     (
      --  8 column bits
      Col8,
      --  9 column bits
      Col9,
      --  10 column bits
      Col10,
      --  11 column bits
      Col11)
     with Size => 2;
   for CR_NC_Field use
     (Col8 => 0,
      Col9 => 1,
      Col10 => 2,
      Col11 => 3);

   --  Number of Row Bits
   type CR_NR_Field is
     (
      --  11 row bits
      Row11,
      --  12 row bits
      Row12,
      --  13 row bits
      Row13)
     with Size => 2;
   for CR_NR_Field use
     (Row11 => 0,
      Row12 => 1,
      Row13 => 2);

   --  Number of Banks
   type CR_NB_Field is
     (
      --  2 banks
      Bank2,
      --  4 banks
      Bank4)
     with Size => 1;
   for CR_NB_Field use
     (Bank2 => 0,
      Bank4 => 1);

   --  CAS Latency
   type CR_CAS_Field is
     (
      --  1 cycle latency
      Latency1,
      --  2 cycle latency
      Latency2,
      --  3 cycle latency
      Latency3)
     with Size => 2;
   for CR_CAS_Field use
     (Latency1 => 1,
      Latency2 => 2,
      Latency3 => 3);

   subtype SDRAMC_CR_TWR_Field is HAL.UInt4;
   subtype SDRAMC_CR_TRC_TRFC_Field is HAL.UInt4;
   subtype SDRAMC_CR_TRP_Field is HAL.UInt4;
   subtype SDRAMC_CR_TRCD_Field is HAL.UInt4;
   subtype SDRAMC_CR_TRAS_Field is HAL.UInt4;
   subtype SDRAMC_CR_TXSR_Field is HAL.UInt4;

   --  SDRAMC Configuration Register
   type SDRAMC_CR_Register is record
      --  Number of Column Bits
      NC       : CR_NC_Field := SAM_SVD.EBI.Col8;
      --  Number of Row Bits
      NR       : CR_NR_Field := SAM_SVD.EBI.Row11;
      --  Number of Banks
      NB       : CR_NB_Field := SAM_SVD.EBI.Bank2;
      --  CAS Latency
      CAS      : CR_CAS_Field := SAM_SVD.EBI.Latency2;
      --  Data Bus Width
      DBW      : Boolean := True;
      --  Write Recovery Delay
      TWR      : SDRAMC_CR_TWR_Field := 16#2#;
      --  Row Cycle Delay and Row Refresh Cycle
      TRC_TRFC : SDRAMC_CR_TRC_TRFC_Field := 16#7#;
      --  Row Precharge Delay
      TRP      : SDRAMC_CR_TRP_Field := 16#3#;
      --  Row to Column Delay
      TRCD     : SDRAMC_CR_TRCD_Field := 16#2#;
      --  Active to Precharge Delay
      TRAS     : SDRAMC_CR_TRAS_Field := 16#5#;
      --  Exit Self-Refresh to Active Delay
      TXSR     : SDRAMC_CR_TXSR_Field := 16#8#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_CR_Register use record
      NC       at 0 range 0 .. 1;
      NR       at 0 range 2 .. 3;
      NB       at 0 range 4 .. 4;
      CAS      at 0 range 5 .. 6;
      DBW      at 0 range 7 .. 7;
      TWR      at 0 range 8 .. 11;
      TRC_TRFC at 0 range 12 .. 15;
      TRP      at 0 range 16 .. 19;
      TRCD     at 0 range 20 .. 23;
      TRAS     at 0 range 24 .. 27;
      TXSR     at 0 range 28 .. 31;
   end record;

   --  Low-power Configuration Bits
   type LPR_LPCB_Field is
     (
      --  The low-power feature is inhibited: no Power-down, Self-refresh or
      --  Deep Power-down command is issued to the SDRAM device.
      Disabled,
      --  The SDRAMC issues a Self-refresh command to the SDRAM device, the
      --  SDCK clock is deactivated and the SDCKE signal is set low. The SDRAM
      --  device leaves the Self-refresh mode when accessed and enters it after
      --  the access.
      Self_Refresh,
      --  The SDRAMC issues a Power-down Command to the SDRAM device after each
      --  access, the SDCKE signal is set to low. The SDRAM device leaves the
      --  Power-down mode when accessed and enters it after the access.
      Power_Down,
      --  The SDRAMC issues a Deep Power-down command to the SDRAM device. This
      --  mode is unique to low-power SDRAM.
      Deep_Power_Down)
     with Size => 2;
   for LPR_LPCB_Field use
     (Disabled => 0,
      Self_Refresh => 1,
      Power_Down => 2,
      Deep_Power_Down => 3);

   subtype SDRAMC_LPR_PASR_Field is HAL.UInt3;
   subtype SDRAMC_LPR_TCSR_Field is HAL.UInt2;
   subtype SDRAMC_LPR_DS_Field is HAL.UInt2;

   --  Time to Define When Low-power Mode Is Enabled
   type LPR_TIMEOUT_Field is
     (
      --  The SDRAMC activates the SDRAM Low-power mode immediately after the
      --  end of the last transfer.
      Lp_Last_Xfer,
      --  The SDRAMC activates the SDRAM Low-power mode 64 clock cycles after
      --  the end of the last transfer.
      Lp_Last_Xfer_64,
      --  The SDRAMC activates the SDRAM Low-power mode 128 clock cycles after
      --  the end of the last transfer.
      Lp_Last_Xfer_128)
     with Size => 2;
   for LPR_TIMEOUT_Field use
     (Lp_Last_Xfer => 0,
      Lp_Last_Xfer_64 => 1,
      Lp_Last_Xfer_128 => 2);

   --  SDRAMC Low Power Register
   type SDRAMC_LPR_Register is record
      --  Low-power Configuration Bits
      LPCB           : LPR_LPCB_Field := SAM_SVD.EBI.Disabled;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Partial Array Self-refresh (only for low-power SDRAM)
      PASR           : SDRAMC_LPR_PASR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Temperature Compensated Self-Refresh (only for low-power SDRAM)
      TCSR           : SDRAMC_LPR_TCSR_Field := 16#0#;
      --  Drive Strength (only for low-power SDRAM)
      DS             : SDRAMC_LPR_DS_Field := 16#0#;
      --  Time to Define When Low-power Mode Is Enabled
      TIMEOUT        : LPR_TIMEOUT_Field := SAM_SVD.EBI.Lp_Last_Xfer;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_LPR_Register use record
      LPCB           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PASR           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TCSR           at 0 range 8 .. 9;
      DS             at 0 range 10 .. 11;
      TIMEOUT        at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  SDRAMC Interrupt Enable Register
   type SDRAMC_IER_Register is record
      --  Write-only. Refresh Error Status
      RES           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_IER_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SDRAMC Interrupt Disable Register
   type SDRAMC_IDR_Register is record
      --  Write-only. Refresh Error Status
      RES           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_IDR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SDRAMC Interrupt Mask Register
   type SDRAMC_IMR_Register is record
      --  Read-only. Refresh Error Status
      RES           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_IMR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SDRAMC Interrupt Status Register
   type SDRAMC_ISR_Register is record
      --  Read-only. Refresh Error Status (cleared on read)
      RES           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_ISR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Memory Device Type
   type MDR_MD_Field is
     (
      --  SDRAM
      Sdram,
      --  Low-power SDRAM
      Lpsdram)
     with Size => 2;
   for MDR_MD_Field use
     (Sdram => 0,
      Lpsdram => 1);

   --  SDRAMC Memory Device Register
   type SDRAMC_MDR_Register is record
      --  Memory Device Type
      MD            : MDR_MD_Field := SAM_SVD.EBI.Sdram;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_MDR_Register use record
      MD            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SDRAMC_CFR1_TMRD_Field is HAL.UInt4;

   --  Support Unaligned Access
   type CFR1_UNAL_Field is
     (
      --  Unaligned access is not supported.
      Unsupported,
      --  Unaligned access is supported.
      Supported)
     with Size => 1;
   for CFR1_UNAL_Field use
     (Unsupported => 0,
      Supported => 1);

   --  SDRAMC Configuration Register 1
   type SDRAMC_CFR1_Register is record
      --  Load Mode Register Command to Active or Refresh Command
      TMRD          : SDRAMC_CFR1_TMRD_Field := 16#2#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Support Unaligned Access
      UNAL          : CFR1_UNAL_Field := SAM_SVD.EBI.Unsupported;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_CFR1_Register use record
      TMRD          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      UNAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SDRAMC OCMS Register
   type SDRAMC_OCMS_Register is record
      --  SDRAM Memory Controller Scrambling Enable
      SDR_SE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_OCMS_Register use record
      SDR_SE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SDRAMC_VERSION_VERSION_Field is HAL.UInt12;
   subtype SDRAMC_VERSION_MFN_Field is HAL.UInt3;

   --  SDRAMC Version Register
   type SDRAMC_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : SDRAMC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : SDRAMC_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SETUP_NWE_SETUP_Field is HAL.UInt6;
   subtype SETUP_NCS_WR_SETUP_Field is HAL.UInt6;
   subtype SETUP_NRD_SETUP_Field is HAL.UInt6;
   subtype SETUP_NCS_RD_SETUP_Field is HAL.UInt6;

   --  SMC Setup Register (CS_number = 0)
   type SETUP_Register is record
      --  NWE Setup Length
      NWE_SETUP      : SETUP_NWE_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  NCS Setup Length in WRITE Access
      NCS_WR_SETUP   : SETUP_NCS_WR_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  NRD Setup Length
      NRD_SETUP      : SETUP_NRD_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  NCS Setup Length in READ Access
      NCS_RD_SETUP   : SETUP_NCS_RD_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETUP_Register use record
      NWE_SETUP      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCS_WR_SETUP   at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NRD_SETUP      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NCS_RD_SETUP   at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PULSE_NWE_PULSE_Field is HAL.UInt7;
   subtype PULSE_NCS_WR_PULSE_Field is HAL.UInt7;
   subtype PULSE_NRD_PULSE_Field is HAL.UInt7;
   subtype PULSE_NCS_RD_PULSE_Field is HAL.UInt7;

   --  SMC Pulse Register (CS_number = 0)
   type PULSE_Register is record
      --  NWE Pulse Length
      NWE_PULSE      : PULSE_NWE_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  NCS Pulse Length in WRITE Access
      NCS_WR_PULSE   : PULSE_NCS_WR_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  NRD Pulse Length
      NRD_PULSE      : PULSE_NRD_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  NCS Pulse Length in READ Access
      NCS_RD_PULSE   : PULSE_NCS_RD_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PULSE_Register use record
      NWE_PULSE      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NCS_WR_PULSE   at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      NRD_PULSE      at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      NCS_RD_PULSE   at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CYCLE_NWE_CYCLE_Field is HAL.UInt9;
   subtype CYCLE_NRD_CYCLE_Field is HAL.UInt9;

   --  SMC Cycle Register (CS_number = 0)
   type CYCLE_Register is record
      --  Total Write Cycle Length
      NWE_CYCLE      : CYCLE_NWE_CYCLE_Field := 16#3#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Total Read Cycle Length
      NRD_CYCLE      : CYCLE_NRD_CYCLE_Field := 16#3#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CYCLE_Register use record
      NWE_CYCLE      at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      NRD_CYCLE      at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  NWAIT Mode
   type MODE0_EXNW_MODE_Field is
     (
      --  Disabled-The NWAIT input signal is ignored on the corresponding chip
      --  select.
      Disabled,
      --  Frozen Mode-If asserted, the NWAIT signal freezes the current read or
      --  write cycle. After deassertion, the read/write cycle is resumed from
      --  the point where it was stopped.
      Frozen,
      --  Ready Mode-The NWAIT signal indicates the availability of the
      --  external device at the end of the pulse of the controlling read or
      --  write signal, to complete the access. If high, the access normally
      --  completes. If low, the access is extended until NWAIT returns high.
      Ready)
     with Size => 2;
   for MODE0_EXNW_MODE_Field use
     (Disabled => 0,
      Frozen => 2,
      Ready => 3);

   --  Byte Access Type
   type MODE0_BAT_Field is
     (
      --  Byte select access type:- Write operation is controlled using NCS,
      --  NWE, NBS0, NBS1.- Read operation is controlled using NCS, NRD, NBS0,
      --  NBS1.
      Byte_Select,
      --  Byte write access type:- Write operation is controlled using NCS,
      --  NWR0, NWR1.- Read operation is controlled using NCS and NRD.
      Byte_Write)
     with Size => 1;
   for MODE0_BAT_Field use
     (Byte_Select => 0,
      Byte_Write => 1);

   --  Data Bus Width
   type MODE0_DBW_Field is
     (
      --  8-bit Data Bus
      MODE0_DBW_Field_8_Bit,
      --  16-bit Data Bus
      MODE0_DBW_Field_16_Bit)
     with Size => 1;
   for MODE0_DBW_Field use
     (MODE0_DBW_Field_8_Bit => 0,
      MODE0_DBW_Field_16_Bit => 1);

   subtype MODE_TDF_CYCLES_Field is HAL.UInt4;

   --  Page Size
   type MODE0_PS_Field is
     (
      --  4-byte page
      MODE0_PS_Field_4_Byte,
      --  8-byte page
      MODE0_PS_Field_8_Byte,
      --  16-byte page
      MODE0_PS_Field_16_Byte,
      --  32-byte page
      MODE0_PS_Field_32_Byte)
     with Size => 2;
   for MODE0_PS_Field use
     (MODE0_PS_Field_4_Byte => 0,
      MODE0_PS_Field_8_Byte => 1,
      MODE0_PS_Field_16_Byte => 2,
      MODE0_PS_Field_32_Byte => 3);

   --  SMC Mode Register (CS_number = 0)
   type MODE_Register is record
      --  Read Mode
      READ_MODE      : Boolean := True;
      --  Write Mode
      WRITE_MODE     : Boolean := True;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  NWAIT Mode
      EXNW_MODE      : MODE0_EXNW_MODE_Field := SAM_SVD.EBI.Disabled;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Byte Access Type
      BAT            : MODE0_BAT_Field := SAM_SVD.EBI.Byte_Select;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Data Bus Width
      DBW            : MODE0_DBW_Field := SAM_SVD.EBI.MODE0_DBW_Field_16_Bit;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Data Float Time
      TDF_CYCLES     : MODE_TDF_CYCLES_Field := 16#0#;
      --  TDF Optimization
      TDF_MODE       : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Page Mode Enabled
      PMEN           : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Page Size
      PS             : MODE0_PS_Field := SAM_SVD.EBI.MODE0_PS_Field_8_Byte;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      READ_MODE      at 0 range 0 .. 0;
      WRITE_MODE     at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EXNW_MODE      at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BAT            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DBW            at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TDF_CYCLES     at 0 range 16 .. 19;
      TDF_MODE       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PMEN           at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PS             at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  SMC Off-Chip Memory Scrambling Register
   type SMC_OCMS_Register is record
      --  Static Memory Controller Scrambling Enable
      SMSE           : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS0SE          : Boolean := False;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS1SE          : Boolean := False;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS2SE          : Boolean := False;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS3SE          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_OCMS_Register use record
      SMSE           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CS0SE          at 0 range 8 .. 8;
      CS1SE          at 0 range 9 .. 9;
      CS2SE          at 0 range 10 .. 10;
      CS3SE          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit. Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 5459267);

   --  SMC Write Protection Mode Register
   type SMC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SMC_WPSR_WPVSRC_Field is HAL.UInt16;

   --  SMC Write Protection Status Register
   type SMC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SMC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SDRAM Controller
   type SDRAMC_Peripheral is record
      --  SDRAMC Mode Register
      MR        : aliased SDRAMC_MR_Register;
      --  SDRAMC Refresh Timer Register
      TR        : aliased SDRAMC_TR_Register;
      --  SDRAMC Configuration Register
      CR        : aliased SDRAMC_CR_Register;
      --  SDRAMC Low Power Register
      LPR       : aliased SDRAMC_LPR_Register;
      --  SDRAMC Interrupt Enable Register
      IER       : aliased SDRAMC_IER_Register;
      --  SDRAMC Interrupt Disable Register
      IDR       : aliased SDRAMC_IDR_Register;
      --  SDRAMC Interrupt Mask Register
      IMR       : aliased SDRAMC_IMR_Register;
      --  SDRAMC Interrupt Status Register
      ISR       : aliased SDRAMC_ISR_Register;
      --  SDRAMC Memory Device Register
      MDR       : aliased SDRAMC_MDR_Register;
      --  SDRAMC Configuration Register 1
      CFR1      : aliased SDRAMC_CFR1_Register;
      --  SDRAMC OCMS Register
      OCMS      : aliased SDRAMC_OCMS_Register;
      --  SDRAMC OCMS KEY1 Register
      OCMS_KEY1 : aliased HAL.UInt32;
      --  SDRAMC OCMS KEY2 Register
      OCMS_KEY2 : aliased HAL.UInt32;
      --  SDRAMC Version Register
      VERSION   : aliased SDRAMC_VERSION_Register;
   end record
     with Volatile;

   for SDRAMC_Peripheral use record
      MR        at 16#0# range 0 .. 31;
      TR        at 16#4# range 0 .. 31;
      CR        at 16#8# range 0 .. 31;
      LPR       at 16#10# range 0 .. 31;
      IER       at 16#14# range 0 .. 31;
      IDR       at 16#18# range 0 .. 31;
      IMR       at 16#1C# range 0 .. 31;
      ISR       at 16#20# range 0 .. 31;
      MDR       at 16#24# range 0 .. 31;
      CFR1      at 16#28# range 0 .. 31;
      OCMS      at 16#2C# range 0 .. 31;
      OCMS_KEY1 at 16#30# range 0 .. 31;
      OCMS_KEY2 at 16#34# range 0 .. 31;
      VERSION   at 16#FC# range 0 .. 31;
   end record;

   --  SDRAM Controller
   SDRAMC_Periph : aliased SDRAMC_Peripheral
     with Import, Address => System'To_Address (16#40084000#);

   --  Static Memory Controller
   type SMC_Peripheral is record
      --  SMC Setup Register (CS_number = 0)
      SETUP0  : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 0)
      PULSE0  : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 0)
      CYCLE0  : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 0)
      MODE0   : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 1)
      SETUP1  : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 1)
      PULSE1  : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 1)
      CYCLE1  : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 1)
      MODE1   : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 2)
      SETUP2  : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 2)
      PULSE2  : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 2)
      CYCLE2  : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 2)
      MODE2   : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 3)
      SETUP3  : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 3)
      PULSE3  : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 3)
      CYCLE3  : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 3)
      MODE3   : aliased MODE_Register;
      --  SMC Off-Chip Memory Scrambling Register
      OCMS    : aliased SMC_OCMS_Register;
      --  SMC Off-Chip Memory Scrambling KEY1 Register
      KEY1    : aliased HAL.UInt32;
      --  SMC Off-Chip Memory Scrambling KEY2 Register
      KEY2    : aliased HAL.UInt32;
      --  SMC Write Protection Mode Register
      WPMR    : aliased SMC_WPMR_Register;
      --  SMC Write Protection Status Register
      WPSR    : aliased SMC_WPSR_Register;
      --  SMC Version Register
      VERSION : aliased SDRAMC_VERSION_Register;
   end record
     with Volatile;

   for SMC_Peripheral use record
      SETUP0  at 16#0# range 0 .. 31;
      PULSE0  at 16#4# range 0 .. 31;
      CYCLE0  at 16#8# range 0 .. 31;
      MODE0   at 16#C# range 0 .. 31;
      SETUP1  at 16#10# range 0 .. 31;
      PULSE1  at 16#14# range 0 .. 31;
      CYCLE1  at 16#18# range 0 .. 31;
      MODE1   at 16#1C# range 0 .. 31;
      SETUP2  at 16#20# range 0 .. 31;
      PULSE2  at 16#24# range 0 .. 31;
      CYCLE2  at 16#28# range 0 .. 31;
      MODE2   at 16#2C# range 0 .. 31;
      SETUP3  at 16#30# range 0 .. 31;
      PULSE3  at 16#34# range 0 .. 31;
      CYCLE3  at 16#38# range 0 .. 31;
      MODE3   at 16#3C# range 0 .. 31;
      OCMS    at 16#80# range 0 .. 31;
      KEY1    at 16#84# range 0 .. 31;
      KEY2    at 16#88# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      VERSION at 16#FC# range 0 .. 31;
   end record;

   --  Static Memory Controller
   SMC_Periph : aliased SMC_Peripheral
     with Import, Address => System'To_Address (16#40080000#);

end SAM_SVD.EBI;
