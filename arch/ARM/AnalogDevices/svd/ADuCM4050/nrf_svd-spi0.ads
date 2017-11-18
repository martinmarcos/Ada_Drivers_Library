--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPI0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Status
   type STAT_Register is record
      --  Read-only. SPI Interrupt Status
      IRQ           : Boolean;
      --  Read-only. SPI Transfer Completion
      XFRDONE       : Boolean;
      --  Read-only. SPI Tx FIFO Empty Interrupt
      TXEMPTY       : Boolean;
      --  Read-only. SPI Tx Done in Read Command Mode
      TXDONE        : Boolean;
      --  Read-only. SPI Tx FIFO Underflow
      TXUNDR        : Boolean;
      --  Read-only. SPI Tx IRQ
      TXIRQ         : Boolean;
      --  Read-only. SPI Rx IRQ
      RXIRQ         : Boolean;
      --  Read-only. SPI Rx FIFO Overflow
      RXOVR         : Boolean;
      --  unspecified
      Reserved_8_10 : HAL.UInt3;
      --  Read-only. CS Status
      CS            : Boolean;
      --  Read-only. Detected a CS Error Condition in Slave Mode
      CSERR         : Boolean;
      --  Read-only. Detected a Rising Edge on CS, in Slave CON Mode
      CSRISE        : Boolean;
      --  Read-only. Detected a Falling Edge on CS, in Slave CON Mode
      CSFALL        : Boolean;
      --  Read-only. Detected an Edge on Ready Indicator for Flow Control
      RDY           : Boolean;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      IRQ           at 0 range 0 .. 0;
      XFRDONE       at 0 range 1 .. 1;
      TXEMPTY       at 0 range 2 .. 2;
      TXDONE        at 0 range 3 .. 3;
      TXUNDR        at 0 range 4 .. 4;
      TXIRQ         at 0 range 5 .. 5;
      RXIRQ         at 0 range 6 .. 6;
      RXOVR         at 0 range 7 .. 7;
      Reserved_8_10 at 0 range 8 .. 10;
      CS            at 0 range 11 .. 11;
      CSERR         at 0 range 12 .. 12;
      CSRISE        at 0 range 13 .. 13;
      CSFALL        at 0 range 14 .. 14;
      RDY           at 0 range 15 .. 15;
   end record;

   --  RX_BYTE array element
   subtype RX_BYTE_Element is HAL.UInt8;

   --  RX_BYTE array
   type RX_BYTE_Field_Array is array (1 .. 2) of RX_BYTE_Element
     with Component_Size => 8, Size => 16;

   --  Receive
   type RX_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : HAL.UInt16;
         when True =>
            --  BYTE as an array
            Arr : RX_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for RX_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  TX_BYTE array element
   subtype TX_BYTE_Element is HAL.UInt8;

   --  TX_BYTE array
   type TX_BYTE_Field_Array is array (1 .. 2) of TX_BYTE_Element
     with Component_Size => 8, Size => 16;

   --  Transmit
   type TX_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : HAL.UInt16;
         when True =>
            --  BYTE as an array
            Arr : TX_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TX_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype DIV_VALUE_Field is HAL.UInt6;

   --  SPI Baud Rate Selection
   type DIV_Register is record
      --  SPI Clock Divider
      VALUE         : DIV_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_6_15 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DIV_Register use record
      VALUE         at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   --  SPI Configuration
   type CTL_Register is record
      --  SPI Enable
      SPIEN          : Boolean := False;
      --  Master Mode Enable
      MASEN          : Boolean := False;
      --  Serial Clock Phase Mode
      CPHA           : Boolean := False;
      --  Serial Clock Polarity
      CPOL           : Boolean := False;
      --  SPI Wired-OR Mode
      WOM            : Boolean := False;
      --  LSB First Transfer Enable
      LSB            : Boolean := False;
      --  SPI Transfer and Interrupt Mode
      TIM            : Boolean := False;
      --  Transmit Zeros Enable
      ZEN            : Boolean := False;
      --  Rx Overflow Overwrite Enable
      RXOF           : Boolean := False;
      --  Slave MISO Output Enable
      OEN            : Boolean := False;
      --  Loopback Enable
      LOOPBACK       : Boolean := False;
      --  Continuous Transfer Enable
      CON            : Boolean := False;
      --  SPI Rx FIFO Flush Enable
      RFLUSH         : Boolean := False;
      --  SPI Tx FIFO Flush Enable
      TFLUSH         : Boolean := False;
      --  Reset Mode for CS Error Bit
      CSRST          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      SPIEN          at 0 range 0 .. 0;
      MASEN          at 0 range 1 .. 1;
      CPHA           at 0 range 2 .. 2;
      CPOL           at 0 range 3 .. 3;
      WOM            at 0 range 4 .. 4;
      LSB            at 0 range 5 .. 5;
      TIM            at 0 range 6 .. 6;
      ZEN            at 0 range 7 .. 7;
      RXOF           at 0 range 8 .. 8;
      OEN            at 0 range 9 .. 9;
      LOOPBACK       at 0 range 10 .. 10;
      CON            at 0 range 11 .. 11;
      RFLUSH         at 0 range 12 .. 12;
      TFLUSH         at 0 range 13 .. 13;
      CSRST          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype IEN_IRQMODE_Field is HAL.UInt3;

   --  SPI Interrupts Enable
   type IEN_Register is record
      --  SPI IRQ Mode Bits
      IRQMODE        : IEN_IRQMODE_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Enable Interrupt on Every CS Edge in Slave CON Mode
      CS             : Boolean := False;
      --  Tx Underflow Interrupt Enable
      TXUNDR         : Boolean := False;
      --  Rx Overflow Interrupt Enable
      RXOVR          : Boolean := False;
      --  Ready Signal Edge Interrupt Enable
      RDY            : Boolean := False;
      --  SPI Transmit Done Interrupt Enable
      TXDONE         : Boolean := False;
      --  SPI Transfer Completion Interrupt Enable
      XFRDONE        : Boolean := False;
      --  Tx FIFO Empty Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      IRQMODE        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CS             at 0 range 8 .. 8;
      TXUNDR         at 0 range 9 .. 9;
      RXOVR          at 0 range 10 .. 10;
      RDY            at 0 range 11 .. 11;
      TXDONE         at 0 range 12 .. 12;
      XFRDONE        at 0 range 13 .. 13;
      TXEMPTY        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype CNT_VALUE_Field is HAL.UInt14;

   --  Transfer Byte Count
   type CNT_Register is record
      --  Transfer Byte Count
      VALUE          : CNT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Continue Frame
      FRAMECONT      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      VALUE          at 0 range 0 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      FRAMECONT      at 0 range 15 .. 15;
   end record;

   --  SPI DMA Enable
   type DMA_Register is record
      --  Enable DMA for Data Transfer
      EN            : Boolean := False;
      --  Enable Transmit DMA Request
      TXEN          : Boolean := False;
      --  Enable Receive DMA Request
      RXEN          : Boolean := False;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMA_Register use record
      EN            at 0 range 0 .. 0;
      TXEN          at 0 range 1 .. 1;
      RXEN          at 0 range 2 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype FIFO_STAT_TX_Field is HAL.UInt4;
   subtype FIFO_STAT_RX_Field is HAL.UInt4;

   --  FIFO Status
   type FIFO_STAT_Register is record
      --  Read-only. SPI Tx FIFO Status
      TX             : FIFO_STAT_TX_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. SPI Rx FIFO Status
      RX             : FIFO_STAT_RX_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FIFO_STAT_Register use record
      TX             at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RX             at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype RD_CTL_TXBYTES_Field is HAL.UInt4;

   --  Read Control
   type RD_CTL_Register is record
      --  Read Command Enable
      CMDEN         : Boolean := False;
      --  Tx/Rx Overlap Mode
      OVERLAP       : Boolean := False;
      --  Transmit Byte Count - 1 (Read Command)
      TXBYTES       : RD_CTL_TXBYTES_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Three Pin SPI Mode
      THREEPIN      : Boolean := False;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RD_CTL_Register use record
      CMDEN         at 0 range 0 .. 0;
      OVERLAP       at 0 range 1 .. 1;
      TXBYTES       at 0 range 2 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      THREEPIN      at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   subtype FLOW_CTL_MODE_Field is HAL.UInt2;
   subtype FLOW_CTL_RDBURSTSZ_Field is HAL.UInt10;

   --  Flow Control
   type FLOW_CTL_Register is record
      --  Flow Control Mode
      MODE         : FLOW_CTL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Polarity of RDY/MISO Line
      RDYPOL       : Boolean := False;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Read Data Burst Size - 1
      RDBURSTSZ    : FLOW_CTL_RDBURSTSZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for FLOW_CTL_Register use record
      MODE         at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      RDYPOL       at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      RDBURSTSZ    at 0 range 6 .. 15;
   end record;

   subtype CS_CTL_SEL_Field is HAL.UInt4;

   --  Chip Select Control for Multi-slave Connections
   type CS_CTL_Register is record
      --  Chip Select Control
      SEL           : CS_CTL_SEL_Field := 16#1#;
      --  unspecified
      Reserved_4_15 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CS_CTL_Register use record
      SEL           at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype CS_OVERRIDE_CTL_Field is HAL.UInt2;

   --  Chip Select Override
   type CS_OVERRIDE_Register is record
      --  CS Override Control
      CTL           : CS_OVERRIDE_CTL_Field := 16#0#;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CS_OVERRIDE_Register use record
      CTL           at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI0_Peripheral is record
      --  Status
      STAT        : aliased STAT_Register;
      --  Receive
      RX          : aliased RX_Register;
      --  Transmit
      TX          : aliased TX_Register;
      --  SPI Baud Rate Selection
      DIV         : aliased DIV_Register;
      --  SPI Configuration
      CTL         : aliased CTL_Register;
      --  SPI Interrupts Enable
      IEN         : aliased IEN_Register;
      --  Transfer Byte Count
      CNT         : aliased CNT_Register;
      --  SPI DMA Enable
      DMA         : aliased DMA_Register;
      --  FIFO Status
      FIFO_STAT   : aliased FIFO_STAT_Register;
      --  Read Control
      RD_CTL      : aliased RD_CTL_Register;
      --  Flow Control
      FLOW_CTL    : aliased FLOW_CTL_Register;
      --  Wait Timer for Flow Control
      WAIT_TMR    : aliased HAL.UInt16;
      --  Chip Select Control for Multi-slave Connections
      CS_CTL      : aliased CS_CTL_Register;
      --  Chip Select Override
      CS_OVERRIDE : aliased CS_OVERRIDE_Register;
   end record
     with Volatile;

   for SPI0_Peripheral use record
      STAT        at 16#0# range 0 .. 15;
      RX          at 16#4# range 0 .. 15;
      TX          at 16#8# range 0 .. 15;
      DIV         at 16#C# range 0 .. 15;
      CTL         at 16#10# range 0 .. 15;
      IEN         at 16#14# range 0 .. 15;
      CNT         at 16#18# range 0 .. 15;
      DMA         at 16#1C# range 0 .. 15;
      FIFO_STAT   at 16#20# range 0 .. 15;
      RD_CTL      at 16#24# range 0 .. 15;
      FLOW_CTL    at 16#28# range 0 .. 15;
      WAIT_TMR    at 16#2C# range 0 .. 15;
      CS_CTL      at 16#30# range 0 .. 15;
      CS_OVERRIDE at 16#34# range 0 .. 15;
   end record;

   --  Serial Peripheral Interface
   SPI0_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  Serial Peripheral Interface
   SPI1_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#40004400#);

   --  Serial Peripheral Interface
   SPI2_Periph : aliased SPI0_Peripheral
     with Import, Address => System'To_Address (16#40024000#);

end NRF_SVD.SPI0;
