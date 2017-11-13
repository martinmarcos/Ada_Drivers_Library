--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TRANSMIT_DATA_TX_DATA_Field is HAL.UInt8;

   --  Specifies that tx_data field is used for address and direction.
   type TRANSMIT_DATA_ADDRESS_FLAG_Field is
     (
      --  tx_data field bits 7:0 are Transmit Data
      TRANSMIT_DATA_ADDRESS_FLAG_Field_0,
      --  tx_data field bit 0 is direction (0: write to slave, 1: read from
      --  slave), and bits 7:1 are the Address to transmit.
      TRANSMIT_DATA_ADDRESS_FLAG_Field_1)
     with Size => 1;
   for TRANSMIT_DATA_ADDRESS_FLAG_Field use
     (TRANSMIT_DATA_ADDRESS_FLAG_Field_0 => 0,
      TRANSMIT_DATA_ADDRESS_FLAG_Field_1 => 1);

   --  Writes one byte to I2C Transmit Data FIFO.
   type TRANSMIT_DATA_Register is record
      --  Write-only. Represents either Tx Data, or Address and Direction if
      --  address flag is set.
      TX_DATA       : TRANSMIT_DATA_TX_DATA_Field := 16#0#;
      --  Write-only. Specifies that tx_data field is used for address and
      --  direction.
      ADDRESS_FLAG  : TRANSMIT_DATA_ADDRESS_FLAG_Field :=
                       SAM_SVD.I2C.TRANSMIT_DATA_ADDRESS_FLAG_Field_0;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TRANSMIT_DATA_Register use record
      TX_DATA       at 0 range 0 .. 7;
      ADDRESS_FLAG  at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  Active High indication when Tx FIFO can still accepts at least one more
   --  character.
   type TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field is
     (
      --  TX FIFO Full
      TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field_0,
      --  TX FIFO not Full
      TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field_1)
     with Size => 1;
   for TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field use
     (TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field_0 => 0,
      TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field_1 => 1);

   --  Status of the I2C transmitter. Each field can generate an interrupt if
   --  corresponding bit in the Tx interrupt mask register is set.
   type TRANSMIT_STATUS_Register is record
      --  Read-only. Active High indication when Tx FIFO can still accepts at
      --  least one more character.
      TX_FIFO_NOT_FULL   : TRANSMIT_STATUS_TX_FIFO_NOT_FULL_Field;
      --  Read-only. Active High indication when Tx FIFO is at least quarter
      --  empty. Reset when more.
      TX_FIFO_0P25_EMPTY : Boolean;
      --  Read-only. Active High indication when Tx FIFO is at least half
      --  empty. Reset when more.
      TX_FIFO_0P5_EMPTY  : Boolean;
      --  Read-only. Active High indication when Tx FIFO is at least three
      --  quarters empty. Reset when more.
      TX_FIFO_0P75_EMPTY : Boolean;
      --  Read-only. Active High indication when Tx FIFO is Empty and has no
      --  more character to transmit
      TX_FIFO_EMPTY      : Boolean;
      --  unspecified
      Reserved_5_7       : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TRANSMIT_STATUS_Register use record
      TX_FIFO_NOT_FULL   at 0 range 0 .. 0;
      TX_FIFO_0P25_EMPTY at 0 range 1 .. 1;
      TX_FIFO_0P5_EMPTY  at 0 range 2 .. 2;
      TX_FIFO_0P75_EMPTY at 0 range 3 .. 3;
      TX_FIFO_EMPTY      at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
   end record;

   --  Status of the I2C receiver. Each field can generate an interrupt if
   --  corresponding bit in the Rx interrupt mask register is set.
   type RECEIVE_STATUS_Register is record
      --  Read-only. Active High indication when data is available in Rx FIFO
      RX_FIFO_NOT_EMPTY : Boolean;
      --  Read-only. Active High indication when FIFO is at least quarter full.
      --  Reset when less.
      RX_FIFO_0P25_FULL : Boolean;
      --  Read-only. Active High indication when FIFO is at least half full.
      --  Reset when less.
      RX_FIFO_0P5_FULL  : Boolean;
      --  Read-only. Active High indication when FIFO is at least three
      --  quarters full. Reset when less.
      RX_FIFO_0P75_FULL : Boolean;
      --  Read-only. Active High indication when character is received but FIFO
      --  is full. Reset by reading the status register.
      FIFO_OVERRUN      : Boolean;
      --  Read-only. Active High indication when NAK is received. The I2C
      --  module will retry transmission unless transaction aborted by the
      --  flush register.
      NAK               : Boolean;
      --  unspecified
      Reserved_6_7      : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RECEIVE_STATUS_Register use record
      RX_FIFO_NOT_EMPTY at 0 range 0 .. 0;
      RX_FIFO_0P25_FULL at 0 range 1 .. 1;
      RX_FIFO_0P5_FULL  at 0 range 2 .. 2;
      RX_FIFO_0P75_FULL at 0 range 3 .. 3;
      FIFO_OVERRUN      at 0 range 4 .. 4;
      NAK               at 0 range 5 .. 5;
      Reserved_6_7      at 0 range 6 .. 7;
   end record;

   --  Clock Used to Generate Divided Clock
   type CLOCK_SOURCE_SELECT_CLOCK_Field is
     (
      --  26 MHz Clock
      CLOCK_SOURCE_SELECT_CLOCK_Field_0,
      --  13 MHz Clock
      CLOCK_SOURCE_SELECT_CLOCK_Field_1,
      --  6.5 MHz Clock
      CLOCK_SOURCE_SELECT_CLOCK_Field_2,
      --  3.25 MHz Clock
      CLOCK_SOURCE_SELECT_CLOCK_Field_3)
     with Size => 2;
   for CLOCK_SOURCE_SELECT_CLOCK_Field use
     (CLOCK_SOURCE_SELECT_CLOCK_Field_0 => 0,
      CLOCK_SOURCE_SELECT_CLOCK_Field_1 => 1,
      CLOCK_SOURCE_SELECT_CLOCK_Field_2 => 2,
      CLOCK_SOURCE_SELECT_CLOCK_Field_3 => 3);

   --  Clock Source Select
   type CLOCK_SOURCE_SELECT_Register is record
      --  Clock Used to Generate Divided Clock
      CLOCK        : CLOCK_SOURCE_SELECT_CLOCK_Field :=
                      SAM_SVD.I2C.CLOCK_SOURCE_SELECT_CLOCK_Field_0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CLOCK_SOURCE_SELECT_Register use record
      CLOCK        at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  I2C Enable
   type I2C_MODULE_ENABLE_Register is record
      --  Enables I2C Operation
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for I2C_MODULE_ENABLE_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Active High I2C Master Mode Enable
   type I2C_MASTER_MODE_MASTER_ENABLE_Field is
     (
      --  I2C Slave
      I2C_MASTER_MODE_MASTER_ENABLE_Field_0,
      --  I2C Master
      I2C_MASTER_MODE_MASTER_ENABLE_Field_1)
     with Size => 1;
   for I2C_MASTER_MODE_MASTER_ENABLE_Field use
     (I2C_MASTER_MODE_MASTER_ENABLE_Field_0 => 0,
      I2C_MASTER_MODE_MASTER_ENABLE_Field_1 => 1);

   --  Selects I2C Master or Slave Mode.
   type I2C_MASTER_MODE_Register is record
      --  Active High I2C Master Mode Enable
      MASTER_ENABLE : I2C_MASTER_MODE_MASTER_ENABLE_Field :=
                       SAM_SVD.I2C.I2C_MASTER_MODE_MASTER_ENABLE_Field_0;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for I2C_MASTER_MODE_Register use record
      MASTER_ENABLE at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
   end record;

   --  Active High Enable to initiate transactions when in Master Mode.
   type I2C_ONBUS_ONBUS_ENABLE_Field is
     (
      --  Master completes current byte and generates stop condition on bus.
      I2C_ONBUS_ONBUS_ENABLE_Field_0,
      --  Master tranmits contents of FIFO until empty.
      I2C_ONBUS_ONBUS_ENABLE_Field_1)
     with Size => 1;
   for I2C_ONBUS_ONBUS_ENABLE_Field use
     (I2C_ONBUS_ONBUS_ENABLE_Field_0 => 0,
      I2C_ONBUS_ONBUS_ENABLE_Field_1 => 1);

   --  Enable/Disable transactions when in Master Mode.
   type I2C_ONBUS_Register is record
      --  Active High Enable to initiate transactions when in Master Mode.
      ONBUS_ENABLE : I2C_ONBUS_ONBUS_ENABLE_Field :=
                      SAM_SVD.I2C.I2C_ONBUS_ONBUS_ENABLE_Field_0;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for I2C_ONBUS_Register use record
      ONBUS_ENABLE at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   subtype I2C_SLAVE_ADDRESS_ADDRESS_Field is HAL.UInt7;

   --  Configures the I2C slave Address.
   type I2C_SLAVE_ADDRESS_Register is record
      --  I2C Slave Address
      ADDRESS      : I2C_SLAVE_ADDRESS_ADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for I2C_SLAVE_ADDRESS_Register use record
      ADDRESS      at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Status of I2C Module.
   type I2C_STATUS_Register is record
      --  Read-only. Active High indicatation that the I2C Module is active.
      --  While set, I2C configuration should not be modified.
      I2C_ACTIVE   : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for I2C_STATUS_Register use record
      I2C_ACTIVE   at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Enable or Disable the generation of interrupts by the tx_status
   --  register.
   type TX_INTERRUPT_MASK_Register is record
      --  Active High Enable of tx_fifo_not_full interrupt
      TX_FIFO_NOT_FULL_MASK   : Boolean := False;
      --  Active High Enable of tx_fifo_0p25_empty interrupt
      TX_FIFO_0P25_EMPTY_MASK : Boolean := False;
      --  Active High Enable of tx_fifo_0p5_empty interrupt
      TX_FIFO_0P5_EMPTY_MASK  : Boolean := False;
      --  Active High Enable of tx_fifo_0p75_empty interrupt
      TX_FIFO_0P75_EMPTY_MASK : Boolean := False;
      --  Active High Enable of tx_fifo_empty interrupt
      TX_FIFO_EMPTY_MASK      : Boolean := False;
      --  unspecified
      Reserved_5_7            : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TX_INTERRUPT_MASK_Register use record
      TX_FIFO_NOT_FULL_MASK   at 0 range 0 .. 0;
      TX_FIFO_0P25_EMPTY_MASK at 0 range 1 .. 1;
      TX_FIFO_0P5_EMPTY_MASK  at 0 range 2 .. 2;
      TX_FIFO_0P75_EMPTY_MASK at 0 range 3 .. 3;
      TX_FIFO_EMPTY_MASK      at 0 range 4 .. 4;
      Reserved_5_7            at 0 range 5 .. 7;
   end record;

   --  Enable or Disable the generation of interrupts by the rx_status
   --  register.
   type RX_INTERRUPT_MASK_Register is record
      --  Active High Enable of rx_fifo_not_empty interrupt
      RX_FIFO_NOT_EMPTY_MASK : Boolean := False;
      --  Active High Enable of rx_fifo_0p25_full interrupt
      RX_FIFO_0P25_FULL_MASK : Boolean := False;
      --  Active High Enable of rx_fifo_0p5_full interrupt
      RX_FIFO_0P5_FULL_MASK  : Boolean := False;
      --  Active High Enable of rx_fifo_0p75_full interrupt
      RX_FIFO_0P75_FULL_MASK : Boolean := False;
      --  Active High Enable of FIFO overrun interrupt
      FIFO_OVERRUN_MASK      : Boolean := False;
      --  Active High Enable NAK interrupt
      NAK_MASK               : Boolean := False;
      --  unspecified
      Reserved_6_7           : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RX_INTERRUPT_MASK_Register use record
      RX_FIFO_NOT_EMPTY_MASK at 0 range 0 .. 0;
      RX_FIFO_0P25_FULL_MASK at 0 range 1 .. 1;
      RX_FIFO_0P5_FULL_MASK  at 0 range 2 .. 2;
      RX_FIFO_0P75_FULL_MASK at 0 range 3 .. 3;
      FIFO_OVERRUN_MASK      at 0 range 4 .. 4;
      NAK_MASK               at 0 range 5 .. 5;
      Reserved_6_7           at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C Master/Slave Controller
   type I2C_Peripheral is record
      --  Writes one byte to I2C Transmit Data FIFO.
      TRANSMIT_DATA       : aliased TRANSMIT_DATA_Register;
      --  Read one byte from I2C Receive Data FIFO.
      RECEIVE_DATA        : aliased HAL.UInt8;
      --  Status of the I2C transmitter. Each field can generate an interrupt
      --  if corresponding bit in the Tx interrupt mask register is set.
      TRANSMIT_STATUS     : aliased TRANSMIT_STATUS_Register;
      --  Status of the I2C receiver. Each field can generate an interrupt if
      --  corresponding bit in the Rx interrupt mask register is set.
      RECEIVE_STATUS      : aliased RECEIVE_STATUS_Register;
      --  Clock Source Select
      CLOCK_SOURCE_SELECT : aliased CLOCK_SOURCE_SELECT_Register;
      --  I2C Enable
      I2C_MODULE_ENABLE   : aliased I2C_MODULE_ENABLE_Register;
      --  Register sets the divide ratio used to generate the sck clock from
      --  the module's input clock.
      I2C_CLK_DIVIDER     : aliased HAL.UInt16;
      --  Selects I2C Master or Slave Mode.
      I2C_MASTER_MODE     : aliased I2C_MASTER_MODE_Register;
      --  Enable/Disable transactions when in Master Mode.
      I2C_ONBUS           : aliased I2C_ONBUS_Register;
      --  Configures the I2C slave Address.
      I2C_SLAVE_ADDRESS   : aliased I2C_SLAVE_ADDRESS_Register;
      --  Status of I2C Module.
      I2C_STATUS          : aliased I2C_STATUS_Register;
      --  Enable or Disable the generation of interrupts by the tx_status
      --  register.
      TX_INTERRUPT_MASK   : aliased TX_INTERRUPT_MASK_Register;
      --  Enable or Disable the generation of interrupts by the rx_status
      --  register.
      RX_INTERRUPT_MASK   : aliased RX_INTERRUPT_MASK_Register;
      --  Writing to this address flushes the contents of both the Tx and Rx
      --  FIFOs. The value written has no effect. Flushing the Tx FIFO will
      --  abort ongoing transactions when the current byte has been
      --  transmitted.
      I2C_FLUSH           : aliased HAL.UInt8;
   end record
     with Volatile;

   for I2C_Peripheral use record
      TRANSMIT_DATA       at 16#0# range 0 .. 15;
      RECEIVE_DATA        at 16#4# range 0 .. 7;
      TRANSMIT_STATUS     at 16#8# range 0 .. 7;
      RECEIVE_STATUS      at 16#C# range 0 .. 7;
      CLOCK_SOURCE_SELECT at 16#10# range 0 .. 7;
      I2C_MODULE_ENABLE   at 16#14# range 0 .. 7;
      I2C_CLK_DIVIDER     at 16#18# range 0 .. 15;
      I2C_MASTER_MODE     at 16#1C# range 0 .. 7;
      I2C_ONBUS           at 16#20# range 0 .. 7;
      I2C_SLAVE_ADDRESS   at 16#24# range 0 .. 7;
      I2C_STATUS          at 16#28# range 0 .. 7;
      TX_INTERRUPT_MASK   at 16#2C# range 0 .. 7;
      RX_INTERRUPT_MASK   at 16#30# range 0 .. 7;
      I2C_FLUSH           at 16#34# range 0 .. 7;
   end record;

   --  I2C Master/Slave Controller
   I2C0_Periph : aliased I2C_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  I2C Master/Slave Controller
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => System'To_Address (16#40003400#);

end SAM_SVD.I2C;
