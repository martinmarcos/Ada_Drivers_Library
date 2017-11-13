--  This spec has been automatically generated from STM32F446.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.HDMI_CEC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CEC control register
   type CEC_CR_Register is record
      --  CEC Enable
      CECEN         : Boolean := False;
      --  Read-only. Tx Start Of Message
      TXSOM         : Boolean := False;
      --  Read-only. Tx End Of Message
      TXEOM         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_CR_Register use record
      CECEN         at 0 range 0 .. 0;
      TXSOM         at 0 range 1 .. 1;
      TXEOM         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CEC_CFGR_SFT_Field is HAL.UInt3;
   subtype CEC_CFGR_OAR_Field is HAL.UInt15;

   --  CEC configuration register
   type CEC_CFGR_Register is record
      --  Signal Free Time
      SFT           : CEC_CFGR_SFT_Field := 16#0#;
      --  Rx-Tolerance
      RXTOL         : Boolean := False;
      --  Rx-Stop on Bit Rising Error
      BRESTP        : Boolean := False;
      --  Generate Error-Bit on Bit Rising Error
      BREGEN        : Boolean := False;
      --  Generate Error-Bit on Long Bit Period Error
      LBPEGEN       : Boolean := False;
      --  Avoid Error-Bit Generation in Broadcast
      BRDNOGEN      : Boolean := False;
      --  SFT Option Bit
      SFTOP         : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
      --  Own addresses configuration
      OAR           : CEC_CFGR_OAR_Field := 16#0#;
      --  Listen mode
      LSTN          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_CFGR_Register use record
      SFT           at 0 range 0 .. 2;
      RXTOL         at 0 range 3 .. 3;
      BRESTP        at 0 range 4 .. 4;
      BREGEN        at 0 range 5 .. 5;
      LBPEGEN       at 0 range 6 .. 6;
      BRDNOGEN      at 0 range 7 .. 7;
      SFTOP         at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
      OAR           at 0 range 16 .. 30;
      LSTN          at 0 range 31 .. 31;
   end record;

   subtype CEC_TXDR_TXD_Field is HAL.UInt8;

   --  CEC Tx data register
   type CEC_TXDR_Register is record
      --  Write-only. Tx Data register
      TXD           : CEC_TXDR_TXD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_TXDR_Register use record
      TXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CEC_RXDR_RXD_Field is HAL.UInt8;

   --  CEC Rx Data Register
   type CEC_RXDR_Register is record
      --  Read-only. Rx Data register
      RXD           : CEC_RXDR_RXD_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_RXDR_Register use record
      RXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CEC Interrupt and Status Register
   type CEC_ISR_Register is record
      --  Rx-Byte Received
      RXBR           : Boolean := False;
      --  End Of Reception
      RXEND          : Boolean := False;
      --  Rx-Overrun
      RXOVR          : Boolean := False;
      --  Rx-Bit Rising Error
      BRE            : Boolean := False;
      --  Rx-Short Bit Period Error
      SBPE           : Boolean := False;
      --  Rx-Long Bit Period Error
      LBPE           : Boolean := False;
      --  Rx-Missing Acknowledge
      RXACKE         : Boolean := False;
      --  Arbitration Lost
      ARBLST         : Boolean := False;
      --  Tx-Byte Request
      TXBR           : Boolean := False;
      --  End of Transmission
      TXEND          : Boolean := False;
      --  Tx-Buffer Underrun
      TXUDR          : Boolean := False;
      --  Tx-Error
      TXERR          : Boolean := False;
      --  Tx-Missing Acknowledge Error
      TXACKE         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_ISR_Register use record
      RXBR           at 0 range 0 .. 0;
      RXEND          at 0 range 1 .. 1;
      RXOVR          at 0 range 2 .. 2;
      BRE            at 0 range 3 .. 3;
      SBPE           at 0 range 4 .. 4;
      LBPE           at 0 range 5 .. 5;
      RXACKE         at 0 range 6 .. 6;
      ARBLST         at 0 range 7 .. 7;
      TXBR           at 0 range 8 .. 8;
      TXEND          at 0 range 9 .. 9;
      TXUDR          at 0 range 10 .. 10;
      TXERR          at 0 range 11 .. 11;
      TXACKE         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CEC interrupt enable register
   type CEC_IER_Register is record
      --  Rx-Byte Received Interrupt Enable
      RXBRIE         : Boolean := False;
      --  End Of Reception Interrupt Enable
      RXENDIE        : Boolean := False;
      --  Rx-Buffer Overrun Interrupt Enable
      RXOVRIE        : Boolean := False;
      --  Bit Rising Error Interrupt Enable
      BREIE          : Boolean := False;
      --  Short Bit Period Error Interrupt Enable
      SBPEIE         : Boolean := False;
      --  Long Bit Period Error Interrupt Enable
      LBPEIE         : Boolean := False;
      --  Rx-Missing Acknowledge Error Interrupt Enable
      RXACKIE        : Boolean := False;
      --  Arbitration Lost Interrupt Enable
      ARBLSTIE       : Boolean := False;
      --  Tx-Byte Request Interrupt Enable
      TXBRIE         : Boolean := False;
      --  Tx-End Of Message Interrupt Enable
      TXENDIE        : Boolean := False;
      --  Tx-Underrun Interrupt Enable
      TXUDRIE        : Boolean := False;
      --  Tx-Error Interrupt Enable
      TXERRIE        : Boolean := False;
      --  Tx-Missing Acknowledge Error Interrupt Enable
      TXACKIE        : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_IER_Register use record
      RXBRIE         at 0 range 0 .. 0;
      RXENDIE        at 0 range 1 .. 1;
      RXOVRIE        at 0 range 2 .. 2;
      BREIE          at 0 range 3 .. 3;
      SBPEIE         at 0 range 4 .. 4;
      LBPEIE         at 0 range 5 .. 5;
      RXACKIE        at 0 range 6 .. 6;
      ARBLSTIE       at 0 range 7 .. 7;
      TXBRIE         at 0 range 8 .. 8;
      TXENDIE        at 0 range 9 .. 9;
      TXUDRIE        at 0 range 10 .. 10;
      TXERRIE        at 0 range 11 .. 11;
      TXACKIE        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HDMI-CEC controller
   type HDMI_CEC_Peripheral is record
      --  CEC control register
      CEC_CR   : aliased CEC_CR_Register;
      --  CEC configuration register
      CEC_CFGR : aliased CEC_CFGR_Register;
      --  CEC Tx data register
      CEC_TXDR : aliased CEC_TXDR_Register;
      --  CEC Rx Data Register
      CEC_RXDR : aliased CEC_RXDR_Register;
      --  CEC Interrupt and Status Register
      CEC_ISR  : aliased CEC_ISR_Register;
      --  CEC interrupt enable register
      CEC_IER  : aliased CEC_IER_Register;
   end record
     with Volatile;

   for HDMI_CEC_Peripheral use record
      CEC_CR   at 16#0# range 0 .. 31;
      CEC_CFGR at 16#4# range 0 .. 31;
      CEC_TXDR at 16#8# range 0 .. 31;
      CEC_RXDR at 16#C# range 0 .. 31;
      CEC_ISR  at 16#10# range 0 .. 31;
      CEC_IER  at 16#14# range 0 .. 31;
   end record;

   --  HDMI-CEC controller
   HDMI_CEC_Periph : aliased HDMI_CEC_Peripheral
     with Import, Address => System'To_Address (16#40006C00#);

end STM32_SVD.HDMI_CEC;
