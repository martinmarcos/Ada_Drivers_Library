--  This spec has been automatically generated from STM32F412.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register 1
   type CR1_Register is record
      --  Peripheral enable
      PE             : Boolean := False;
      --  SMBus mode
      SMBUS          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  SMBus type
      SMBTYPE        : Boolean := False;
      --  ARP enable
      ENARP          : Boolean := False;
      --  PEC enable
      ENPEC          : Boolean := False;
      --  General call enable
      ENGC           : Boolean := False;
      --  Clock stretching disable (Slave mode)
      NOSTRETCH      : Boolean := False;
      --  Start generation
      START          : Boolean := False;
      --  Stop generation
      STOP           : Boolean := False;
      --  Acknowledge enable
      ACK            : Boolean := False;
      --  Acknowledge/PEC Position (for data reception)
      POS            : Boolean := False;
      --  Packet error checking
      PEC            : Boolean := False;
      --  SMBus alert
      ALERT          : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Software reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PE             at 0 range 0 .. 0;
      SMBUS          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SMBTYPE        at 0 range 3 .. 3;
      ENARP          at 0 range 4 .. 4;
      ENPEC          at 0 range 5 .. 5;
      ENGC           at 0 range 6 .. 6;
      NOSTRETCH      at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ACK            at 0 range 10 .. 10;
      POS            at 0 range 11 .. 11;
      PEC            at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2_FREQ_Field is HAL.UInt6;

   --  Control register 2
   type CR2_Register is record
      --  Peripheral clock frequency
      FREQ           : CR2_FREQ_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Error interrupt enable
      ITERREN        : Boolean := False;
      --  Event interrupt enable
      ITEVTEN        : Boolean := False;
      --  Buffer interrupt enable
      ITBUFEN        : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  DMA last transfer
      LAST           : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      FREQ           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ITERREN        at 0 range 8 .. 8;
      ITEVTEN        at 0 range 9 .. 9;
      ITBUFEN        at 0 range 10 .. 10;
      DMAEN          at 0 range 11 .. 11;
      LAST           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OAR1_ADD7_Field is HAL.UInt7;
   subtype OAR1_ADD10_Field is HAL.UInt2;

   --  Own address register 1
   type OAR1_Register is record
      --  Interface address
      ADD0           : Boolean := False;
      --  Interface address
      ADD7           : OAR1_ADD7_Field := 16#0#;
      --  Interface address
      ADD10          : OAR1_ADD10_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Addressing mode (slave mode)
      ADDMODE        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register use record
      ADD0           at 0 range 0 .. 0;
      ADD7           at 0 range 1 .. 7;
      ADD10          at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      ADDMODE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_ADD2_Field is HAL.UInt7;

   --  Own address register 2
   type OAR2_Register is record
      --  Dual addressing mode enable
      ENDUAL        : Boolean := False;
      --  Interface address
      ADD2          : OAR2_ADD2_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register use record
      ENDUAL        at 0 range 0 .. 0;
      ADD2          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DR_DR_Field is HAL.UInt8;

   --  Data register
   type DR_Register is record
      --  8-bit data register
      DR            : DR_DR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Status register 1
   type SR1_Register is record
      --  Read-only. Start bit (Master mode)
      SB             : Boolean := False;
      --  Read-only. Address sent (master mode)/matched (slave mode)
      ADDR           : Boolean := False;
      --  Read-only. Byte transfer finished
      BTF            : Boolean := False;
      --  Read-only. 10-bit header sent (Master mode)
      ADD10          : Boolean := False;
      --  Read-only. Stop detection (slave mode)
      STOPF          : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Read-only. Data register not empty (receivers)
      RxNE           : Boolean := False;
      --  Read-only. Data register empty (transmitters)
      TxE            : Boolean := False;
      --  Bus error
      BERR           : Boolean := False;
      --  Arbitration lost (master mode)
      ARLO           : Boolean := False;
      --  Acknowledge failure
      AF             : Boolean := False;
      --  Overrun/Underrun
      OVR            : Boolean := False;
      --  PEC Error in reception
      PECERR         : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Timeout or Tlow error
      TIMEOUT        : Boolean := False;
      --  SMBus alert
      SMBALERT       : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      SB             at 0 range 0 .. 0;
      ADDR           at 0 range 1 .. 1;
      BTF            at 0 range 2 .. 2;
      ADD10          at 0 range 3 .. 3;
      STOPF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RxNE           at 0 range 6 .. 6;
      TxE            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      AF             at 0 range 10 .. 10;
      OVR            at 0 range 11 .. 11;
      PECERR         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TIMEOUT        at 0 range 14 .. 14;
      SMBALERT       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SR2_PEC_Field is HAL.UInt8;

   --  Status register 2
   type SR2_Register is record
      --  Read-only. Master/slave
      MSL            : Boolean;
      --  Read-only. Bus busy
      BUSY           : Boolean;
      --  Read-only. Transmitter/receiver
      TRA            : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. General call address (Slave mode)
      GENCALL        : Boolean;
      --  Read-only. SMBus device default address (Slave mode)
      SMBDEFAULT     : Boolean;
      --  Read-only. SMBus host header (Slave mode)
      SMBHOST        : Boolean;
      --  Read-only. Dual flag (Slave mode)
      DUALF          : Boolean;
      --  Read-only. acket error checking register
      PEC            : SR2_PEC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      MSL            at 0 range 0 .. 0;
      BUSY           at 0 range 1 .. 1;
      TRA            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GENCALL        at 0 range 4 .. 4;
      SMBDEFAULT     at 0 range 5 .. 5;
      SMBHOST        at 0 range 6 .. 6;
      DUALF          at 0 range 7 .. 7;
      PEC            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR_CCR_Field is HAL.UInt12;

   --  Clock control register
   type CCR_Register is record
      --  Clock control register in Fast/Standard mode (Master mode)
      CCR            : CCR_CCR_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Fast mode duty cycle
      DUTY           : Boolean := False;
      --  I2C master mode selection
      F_S            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CCR            at 0 range 0 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DUTY           at 0 range 14 .. 14;
      F_S            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRISE_TRISE_Field is HAL.UInt6;

   --  TRISE register
   type TRISE_Register is record
      --  Maximum rise time in Fast/Standard mode (Master mode)
      TRISE         : TRISE_TRISE_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRISE_Register use record
      TRISE         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype CR1_DNF_Field is HAL.UInt4;

   --  Control register 1
   type CR1_Register_1 is record
      --  Peripheral enable
      PE             : Boolean := False;
      --  TXIE
      TXIE           : Boolean := False;
      --  RXIE
      RXIE           : Boolean := False;
      --  ADDRE
      ADDRE          : Boolean := False;
      --  NACKIE
      NACKIE         : Boolean := False;
      --  STOPIE
      STOPIE         : Boolean := False;
      --  TCIE
      TCIE           : Boolean := False;
      --  ERRIE
      ERRIE          : Boolean := False;
      --  DNF
      DNF            : CR1_DNF_Field := 16#0#;
      --  ANFOFF
      ANFOFF         : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  TCDMAEN
      TCDMAEN        : Boolean := False;
      --  RXDMAEN
      RXDMAEN        : Boolean := False;
      --  SBC
      SBC            : Boolean := False;
      --  NOSTRETCH
      NOSTRETCH      : Boolean := False;
      --  WUPEN
      WUPEN          : Boolean := False;
      --  GCEN
      GCEN           : Boolean := False;
      --  SMBHEN
      SMBHEN         : Boolean := False;
      --  SMBDEN
      SMBDEN         : Boolean := False;
      --  ALERTEN
      ALERTEN        : Boolean := False;
      --  PECEN
      PECEN          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register_1 use record
      PE             at 0 range 0 .. 0;
      TXIE           at 0 range 1 .. 1;
      RXIE           at 0 range 2 .. 2;
      ADDRE          at 0 range 3 .. 3;
      NACKIE         at 0 range 4 .. 4;
      STOPIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      ERRIE          at 0 range 7 .. 7;
      DNF            at 0 range 8 .. 11;
      ANFOFF         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TCDMAEN        at 0 range 14 .. 14;
      RXDMAEN        at 0 range 15 .. 15;
      SBC            at 0 range 16 .. 16;
      NOSTRETCH      at 0 range 17 .. 17;
      WUPEN          at 0 range 18 .. 18;
      GCEN           at 0 range 19 .. 19;
      SMBHEN         at 0 range 20 .. 20;
      SMBDEN         at 0 range 21 .. 21;
      ALERTEN        at 0 range 22 .. 22;
      PECEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CR2_SADD1_7_Field is HAL.UInt7;
   subtype CR2_SADD8_9_Field is HAL.UInt2;
   subtype CR2_NBYTES_Field is HAL.UInt8;

   --  Control register 2
   type CR2_Register_1 is record
      --  Slave address bit 0
      SADD0          : Boolean := False;
      --  Slave address bit 7_1
      SADD1_7        : CR2_SADD1_7_Field := 16#0#;
      --  Slave address bit 8_9
      SADD8_9        : CR2_SADD8_9_Field := 16#0#;
      --  Transfer direction
      RD_WRN         : Boolean := False;
      --  10-bit addressing mode
      ADD10          : Boolean := False;
      --  10-bit address header only read direction
      HEAD10R        : Boolean := False;
      --  Start generation
      START          : Boolean := False;
      --  Stop generation
      STOP           : Boolean := False;
      --  NACK generation
      NACK           : Boolean := False;
      --  Number of bytes
      NBYTES         : CR2_NBYTES_Field := 16#0#;
      --  NBYTES reload mode
      RELOAD         : Boolean := False;
      --  Automatic end mode
      AUTOEND        : Boolean := False;
      --  Packet error checking byte
      PECBYTE        : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
      SADD0          at 0 range 0 .. 0;
      SADD1_7        at 0 range 1 .. 7;
      SADD8_9        at 0 range 8 .. 9;
      RD_WRN         at 0 range 10 .. 10;
      ADD10          at 0 range 11 .. 11;
      HEAD10R        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      NACK           at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      RELOAD         at 0 range 24 .. 24;
      AUTOEND        at 0 range 25 .. 25;
      PECBYTE        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OAR1_OA11_7_Field is HAL.UInt7;
   subtype OAR1_OA18_9_Field is HAL.UInt2;

   --  Own address register 1
   type OAR1_Register_1 is record
      --  OA1
      OA1            : Boolean := False;
      --  OA11_7
      OA11_7         : OAR1_OA11_7_Field := 16#0#;
      --  OA18_9
      OA18_9         : OAR1_OA18_9_Field := 16#0#;
      --  OA1MODE
      OA1MODE        : Boolean := False;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  OA1EN
      OA1EN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register_1 use record
      OA1            at 0 range 0 .. 0;
      OA11_7         at 0 range 1 .. 7;
      OA18_9         at 0 range 8 .. 9;
      OA1MODE        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA1EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_OA21_7_Field is HAL.UInt7;
   subtype OAR2_OA2MSK_Field is HAL.UInt3;

   --  Own address register 2
   type OAR2_Register_1 is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  OA21_7
      OA21_7         : OAR2_OA21_7_Field := 16#0#;
      --  OA2MSK
      OA2MSK         : OAR2_OA2MSK_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  OA2EN
      OA2EN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register_1 use record
      Reserved_0_0   at 0 range 0 .. 0;
      OA21_7         at 0 range 1 .. 7;
      OA2MSK         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA2EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMINGR_SCLL_Field is HAL.UInt8;
   subtype TIMINGR_SCLH_Field is HAL.UInt8;
   subtype TIMINGR_SDADEL_Field is HAL.UInt4;
   subtype TIMINGR_SCLDEL_Field is HAL.UInt4;
   subtype TIMINGR_PRESC_Field is HAL.UInt4;

   --  Timing register
   type TIMINGR_Register is record
      --  SCLL
      SCLL           : TIMINGR_SCLL_Field := 16#0#;
      --  SCLH
      SCLH           : TIMINGR_SCLH_Field := 16#0#;
      --  SDADEL
      SDADEL         : TIMINGR_SDADEL_Field := 16#0#;
      --  SCLDEL
      SCLDEL         : TIMINGR_SCLDEL_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  PRESC
      PRESC          : TIMINGR_PRESC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMINGR_Register use record
      SCLL           at 0 range 0 .. 7;
      SCLH           at 0 range 8 .. 15;
      SDADEL         at 0 range 16 .. 19;
      SCLDEL         at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PRESC          at 0 range 28 .. 31;
   end record;

   subtype TIMEOUTR_TIMEOUTA_Field is HAL.UInt12;
   subtype TIMEOUTR_TIMEOUTB_Field is HAL.UInt12;

   --  Timeout register
   type TIMEOUTR_Register is record
      --  TIMEOUTA
      TIMEOUTA       : TIMEOUTR_TIMEOUTA_Field := 16#0#;
      --  TIDLE
      TIDLE          : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  TIMOUTEN
      TIMOUTEN       : Boolean := False;
      --  TIMEOUTB
      TIMEOUTB       : TIMEOUTR_TIMEOUTB_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  TEXTEN
      TEXTEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUTR_Register use record
      TIMEOUTA       at 0 range 0 .. 11;
      TIDLE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TIMOUTEN       at 0 range 15 .. 15;
      TIMEOUTB       at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      TEXTEN         at 0 range 31 .. 31;
   end record;

   subtype ISR_ADDCODE_Field is HAL.UInt7;

   --  Interrupt and Status register
   type ISR_Register is record
      --  TXE
      TXE            : Boolean := True;
      --  TXIS
      TXIS           : Boolean := False;
      --  Read-only. RXNE
      RXNE           : Boolean := False;
      --  Read-only. ADDR
      ADDR           : Boolean := False;
      --  Read-only. NACKF
      NACKF          : Boolean := False;
      --  Read-only. STOPF
      STOPF          : Boolean := False;
      --  Read-only. TC
      TC             : Boolean := False;
      --  Read-only. TCR
      TCR            : Boolean := False;
      --  Read-only. BERR
      BERR           : Boolean := False;
      --  Read-only. ARLO
      ARLO           : Boolean := False;
      --  Read-only. OVR
      OVR            : Boolean := False;
      --  Read-only. PECERR
      PECERR         : Boolean := False;
      --  Read-only. TIMEOUT
      TIMEOUT        : Boolean := False;
      --  Read-only. ALERT
      ALERT          : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Read-only. BUSY
      BUSY           : Boolean := False;
      --  Read-only. DIR
      DIR            : Boolean := False;
      --  Read-only. ADDCODE
      ADDCODE        : ISR_ADDCODE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TXE            at 0 range 0 .. 0;
      TXIS           at 0 range 1 .. 1;
      RXNE           at 0 range 2 .. 2;
      ADDR           at 0 range 3 .. 3;
      NACKF          at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TCR            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      OVR            at 0 range 10 .. 10;
      PECERR         at 0 range 11 .. 11;
      TIMEOUT        at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
      DIR            at 0 range 16 .. 16;
      ADDCODE        at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt clear register
   type ICR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Write-only. ADDRCF
      ADDRCF         : Boolean := False;
      --  Write-only. NACKCF
      NACKCF         : Boolean := False;
      --  Write-only. STOPCF
      STOPCF         : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. BERRCF
      BERRCF         : Boolean := False;
      --  Write-only. ARLOCF
      ARLOCF         : Boolean := False;
      --  Write-only. OVRCF
      OVRCF          : Boolean := False;
      --  Write-only. PECCF
      PECCF          : Boolean := False;
      --  Write-only. TIMOUTCF
      TIMOUTCF       : Boolean := False;
      --  Write-only. ALERTC
      ALERTC         : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      ADDRCF         at 0 range 3 .. 3;
      NACKCF         at 0 range 4 .. 4;
      STOPCF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BERRCF         at 0 range 8 .. 8;
      ARLOCF         at 0 range 9 .. 9;
      OVRCF          at 0 range 10 .. 10;
      PECCF          at 0 range 11 .. 11;
      TIMOUTCF       at 0 range 12 .. 12;
      ALERTC         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PECR_PEC_Field is HAL.UInt8;

   --  PEC register
   type PECR_Register is record
      --  Read-only. PEC
      PEC           : PECR_PEC_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDR_RXDATA_Field is HAL.UInt8;

   --  Receive data register
   type RXDR_Register is record
      --  Read-only. RXDATA
      RXDATA        : RXDR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXDR_TXDATA_Field is HAL.UInt8;

   --  Transmit data register
   type TXDR_Register is record
      --  TXDATA
      TXDATA        : TXDR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-integrated circuit
   type I2C1_Peripheral is record
      --  Control register 1
      CR1   : aliased CR1_Register;
      --  Control register 2
      CR2   : aliased CR2_Register;
      --  Own address register 1
      OAR1  : aliased OAR1_Register;
      --  Own address register 2
      OAR2  : aliased OAR2_Register;
      --  Data register
      DR    : aliased DR_Register;
      --  Status register 1
      SR1   : aliased SR1_Register;
      --  Status register 2
      SR2   : aliased SR2_Register;
      --  Clock control register
      CCR   : aliased CCR_Register;
      --  TRISE register
      TRISE : aliased TRISE_Register;
   end record
     with Volatile;

   for I2C1_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      OAR1  at 16#8# range 0 .. 31;
      OAR2  at 16#C# range 0 .. 31;
      DR    at 16#10# range 0 .. 31;
      SR1   at 16#14# range 0 .. 31;
      SR2   at 16#18# range 0 .. 31;
      CCR   at 16#1C# range 0 .. 31;
      TRISE at 16#20# range 0 .. 31;
   end record;

   --  Inter-integrated circuit
   I2C1_Periph : aliased I2C1_Peripheral
     with Import, Address => System'To_Address (16#40005400#);

   --  Inter-integrated circuit
   I2C2_Periph : aliased I2C1_Peripheral
     with Import, Address => System'To_Address (16#40005800#);

   --  Inter-integrated circuit
   I2C3_Periph : aliased I2C1_Peripheral
     with Import, Address => System'To_Address (16#40005C00#);

   --  Inter-integrated circuit
   type I2C4_Peripheral is record
      --  Control register 1
      CR1      : aliased CR1_Register_1;
      --  Control register 2
      CR2      : aliased CR2_Register_1;
      --  Own address register 1
      OAR1     : aliased OAR1_Register_1;
      --  Own address register 2
      OAR2     : aliased OAR2_Register_1;
      --  Timing register
      TIMINGR  : aliased TIMINGR_Register;
      --  Timeout register
      TIMEOUTR : aliased TIMEOUTR_Register;
      --  Interrupt and Status register
      ISR      : aliased ISR_Register;
      --  Interrupt clear register
      ICR      : aliased ICR_Register;
      --  PEC register
      PECR     : aliased PECR_Register;
      --  Receive data register
      RXDR     : aliased RXDR_Register;
      --  Transmit data register
      TXDR     : aliased TXDR_Register;
   end record
     with Volatile;

   for I2C4_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      OAR1     at 16#8# range 0 .. 31;
      OAR2     at 16#C# range 0 .. 31;
      TIMINGR  at 16#10# range 0 .. 31;
      TIMEOUTR at 16#14# range 0 .. 31;
      ISR      at 16#18# range 0 .. 31;
      ICR      at 16#1C# range 0 .. 31;
      PECR     at 16#20# range 0 .. 31;
      RXDR     at 16#24# range 0 .. 31;
      TXDR     at 16#28# range 0 .. 31;
   end record;

   --  Inter-integrated circuit
   I2C4_Periph : aliased I2C4_Peripheral
     with Import, Address => System'To_Address (16#40006000#);

end STM32_SVD.I2C;
