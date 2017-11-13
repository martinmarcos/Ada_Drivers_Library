--  This spec has been automatically generated from ATSAM3X8H.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  SDRAM Controller
package SAM_SVD.SDRAMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SDRAMC Command Mode
   type MR_MODE_Field is
     (
      --  Normal mode. Any access to the SDRAM is decoded normally. To activate
      --  this mode, command must be followed by a write to the SDRAM.
      Normal,
      --  The SDRAM Controller issues a NOP command when the SDRAM device is
      --  accessed regardless of the cycle. To activate this mode, command must
      --  be followed by a write to the SDRAM.
      Nop,
      --  The SDRAM Controller issues an "All Banks Precharge" command when the
      --  SDRAM device is accessed regardless of the cycle. To activate this
      --  mode, command must be followed by a write to the SDRAM.
      Allbanks_Precharge,
      --  The SDRAM Controller issues a "Load Mode Register" command when the
      --  SDRAM device is accessed regardless of the cycle. To activate this
      --  mode, command must be followed by a write to the SDRAM.
      Load_Modereg,
      --  The SDRAM Controller issues an "Auto-Refresh" Command when the SDRAM
      --  device is accessed regardless of the cycle. Previously, an "All Banks
      --  Precharge" command must be issued. To activate this mode, command
      --  must be followed by a write to the SDRAM.
      Auto_Refresh,
      --  The SDRAM Controller issues an "Extended Load Mode Register" command
      --  when the SDRAM device is accessed regardless of the cycle. To
      --  activate this mode, the "Extended Load Mode Register" command must be
      --  followed by a write to the SDRAM. The write in the SDRAM must be done
      --  in the appropriate bank; most low-power SDRAM devices use the bank 1.
      Ext_Load_Modereg,
      --  Deep power-down mode. Enters deep power-down mode.
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
      MODE          : MR_MODE_Field := SAM_SVD.SDRAMC.Normal;
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
      --  1 cycle CAS latency
      Latency1,
      --  2 cycle CAS latency
      Latency2,
      --  3 cycle CAS latency
      Latency3)
     with Size => 2;
   for CR_CAS_Field use
     (Latency1 => 1,
      Latency2 => 2,
      Latency3 => 3);

   subtype CR_TWR_Field is HAL.UInt4;
   subtype CR_TRC_TRFC_Field is HAL.UInt4;
   subtype CR_TRP_Field is HAL.UInt4;
   subtype CR_TRCD_Field is HAL.UInt4;
   subtype CR_TRAS_Field is HAL.UInt4;
   subtype CR_TXSR_Field is HAL.UInt4;

   --  SDRAMC Configuration Register
   type CR_Register is record
      --  Number of Column Bits
      NC       : CR_NC_Field := SAM_SVD.SDRAMC.Col8;
      --  Number of Row Bits
      NR       : CR_NR_Field := SAM_SVD.SDRAMC.Row11;
      --  Number of Banks
      NB       : CR_NB_Field := SAM_SVD.SDRAMC.Bank2;
      --  CAS Latency
      CAS      : CR_CAS_Field := SAM_SVD.SDRAMC.Latency2;
      --  Data Bus Width
      DBW      : Boolean := True;
      --  Write Recovery Delay
      TWR      : CR_TWR_Field := 16#2#;
      --  Row Cycle Delay and Row Refresh Cycle
      TRC_TRFC : CR_TRC_TRFC_Field := 16#7#;
      --  Row Precharge Delay
      TRP      : CR_TRP_Field := 16#3#;
      --  Row to Column Delay
      TRCD     : CR_TRCD_Field := 16#2#;
      --  Active to Precharge Delay
      TRAS     : CR_TRAS_Field := 16#5#;
      --  Exit Self Refresh to Active Delay
      TXSR     : CR_TXSR_Field := 16#8#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
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
      --  Low Power Feature is inhibited: no Power-down, Self-refresh or Deep
      --  Power-down command is issued to the SDRAM device.
      Disabled,
      --  The SDRAM Controller issues a Self-refresh command to the SDRAM
      --  device, the SDCK clock is deactivated and the SDCKE signal is set
      --  low. The SDRAM device leaves the Self Refresh Mode when accessed and
      --  enters it after the access.
      Self_Refresh,
      --  The SDRAM Controller issues a Power-down Command to the SDRAM device
      --  after each access, the SDCKE signal is set to low. The SDRAM device
      --  leaves the Power-down Mode when accessed and enters it after the
      --  access.
      Power_Down,
      --  The SDRAM Controller issues a Deep Power-down command to the SDRAM
      --  device. This mode is unique to low-power SDRAM.
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

   --  Time to define when low-power mode is enable
   type LPR_TIMEOUT_Field is
     (
      --  The SDRAM controller activates the SDRAM low-power mode immediately
      --  after the end of the last transfer.
      Lp_Last_Xfer,
      --  The SDRAM controller activates the SDRAM low-power mode 64 clock
      --  cycles after the end of the last transfer.
      Lp_Last_Xfer_64,
      --  The SDRAM controller activates the SDRAM low-power mode 128 clock
      --  cycles after the end of the last transfer.
      Lp_Last_Xfer_128)
     with Size => 2;
   for LPR_TIMEOUT_Field use
     (Lp_Last_Xfer => 0,
      Lp_Last_Xfer_64 => 1,
      Lp_Last_Xfer_128 => 2);

   --  SDRAMC Low Power Register
   type SDRAMC_LPR_Register is record
      --  Low-power Configuration Bits
      LPCB           : LPR_LPCB_Field := SAM_SVD.SDRAMC.Disabled;
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
      --  Time to define when low-power mode is enable
      TIMEOUT        : LPR_TIMEOUT_Field := SAM_SVD.SDRAMC.Lp_Last_Xfer;
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
      --  Read-only. Refresh Error Status
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
      MD            : MDR_MD_Field := SAM_SVD.SDRAMC.Sdram;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_MDR_Register use record
      MD            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SDRAMC OCMS Register 1
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

   -----------------
   -- Peripherals --
   -----------------

   --  SDRAM Controller
   type SDRAMC_Peripheral is record
      --  SDRAMC Mode Register
      MR   : aliased SDRAMC_MR_Register;
      --  SDRAMC Refresh Timer Register
      TR   : aliased SDRAMC_TR_Register;
      --  SDRAMC Configuration Register
      CR   : aliased CR_Register;
      --  SDRAMC Low Power Register
      LPR  : aliased SDRAMC_LPR_Register;
      --  SDRAMC Interrupt Enable Register
      IER  : aliased SDRAMC_IER_Register;
      --  SDRAMC Interrupt Disable Register
      IDR  : aliased SDRAMC_IDR_Register;
      --  SDRAMC Interrupt Mask Register
      IMR  : aliased SDRAMC_IMR_Register;
      --  SDRAMC Interrupt Status Register
      ISR  : aliased SDRAMC_ISR_Register;
      --  SDRAMC Memory Device Register
      MDR  : aliased SDRAMC_MDR_Register;
      --  SDRAMC Configuration Register 1
      CR1  : aliased CR_Register;
      --  SDRAMC OCMS Register 1
      OCMS : aliased SDRAMC_OCMS_Register;
   end record
     with Volatile;

   for SDRAMC_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      TR   at 16#4# range 0 .. 31;
      CR   at 16#8# range 0 .. 31;
      LPR  at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      ISR  at 16#20# range 0 .. 31;
      MDR  at 16#24# range 0 .. 31;
      CR1  at 16#28# range 0 .. 31;
      OCMS at 16#2C# range 0 .. 31;
   end record;

   --  SDRAM Controller
   SDRAMC_Periph : aliased SDRAMC_Peripheral
     with Import, Address => SDRAMC_Base;

end SAM_SVD.SDRAMC;
