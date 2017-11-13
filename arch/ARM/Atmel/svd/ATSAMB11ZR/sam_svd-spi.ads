--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

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

   --  Status of the SPI transmitter. Each field can generate an interrupt if
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

   --  Status of the SPI receiver. Each field can generate an interrupt if
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
      --  Read-only. Active High indication when two masters attempt to access
      --  the SPI bus at the same time. The SPI interface will put itself in
      --  slave mode in this case. This bit is reset when the status register
      --  is read.
      FAULT             : Boolean;
      --  Read-only. Active High indication when character is received but FIFO
      --  is full. Reset by reading the status register.
      FIFO_OVERRUN      : Boolean;
      --  unspecified
      Reserved_6_7      : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RECEIVE_STATUS_Register use record
      RX_FIFO_NOT_EMPTY at 0 range 0 .. 0;
      RX_FIFO_0P25_FULL at 0 range 1 .. 1;
      RX_FIFO_0P5_FULL  at 0 range 2 .. 2;
      RX_FIFO_0P75_FULL at 0 range 3 .. 3;
      FAULT             at 0 range 4 .. 4;
      FIFO_OVERRUN      at 0 range 5 .. 5;
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
                      SAM_SVD.SPI.CLOCK_SOURCE_SELECT_CLOCK_Field_0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CLOCK_SOURCE_SELECT_Register use record
      CLOCK        at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  SPI Enable
   type SPI_MODULE_ENABLE_Register is record
      --  Enables SPI operation
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI_MODULE_ENABLE_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Active High SPI Master Mode Enable
   type SPI_MASTER_MODE_MASTER_ENABLE_Field is
     (
      --  SPI Slave
      SPI_MASTER_MODE_MASTER_ENABLE_Field_0,
      --  SPI Master
      SPI_MASTER_MODE_MASTER_ENABLE_Field_1)
     with Size => 1;
   for SPI_MASTER_MODE_MASTER_ENABLE_Field use
     (SPI_MASTER_MODE_MASTER_ENABLE_Field_0 => 0,
      SPI_MASTER_MODE_MASTER_ENABLE_Field_1 => 1);

   --  SPI Master/Slave Mode. When clear, SPI is in Slave Mode.
   type SPI_MASTER_MODE_Register is record
      --  Active High SPI Master Mode Enable
      MASTER_ENABLE : SPI_MASTER_MODE_MASTER_ENABLE_Field :=
                       SAM_SVD.SPI.SPI_MASTER_MODE_MASTER_ENABLE_Field_0;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI_MASTER_MODE_Register use record
      MASTER_ENABLE at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
   end record;

   --  Active High SPI Fault Detect Enable
   type SPI_FAULT_ENABLE_FAULT_ENABLE_Field is
     (
      --  Faults ignored on SPI bus
      SPI_FAULT_ENABLE_FAULT_ENABLE_Field_0,
      --  Faults detected on SPI bus
      SPI_FAULT_ENABLE_FAULT_ENABLE_Field_1)
     with Size => 1;
   for SPI_FAULT_ENABLE_FAULT_ENABLE_Field use
     (SPI_FAULT_ENABLE_FAULT_ENABLE_Field_0 => 0,
      SPI_FAULT_ENABLE_FAULT_ENABLE_Field_1 => 1);

   --  SPI Fault Detection Mode. If set, SPI bus contention will be detected,
   --  and the fault bit in the rx_status register will be set, forcing the SPI
   --  Module into idle state. When a fault is detected, the current SPI
   --  transaction is abandoned and the interface switches to slave mode in the
   --  wait state.
   type SPI_FAULT_ENABLE_Register is record
      --  Active High SPI Fault Detect Enable
      FAULT_ENABLE : SPI_FAULT_ENABLE_FAULT_ENABLE_Field :=
                      SAM_SVD.SPI.SPI_FAULT_ENABLE_FAULT_ENABLE_Field_0;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI_FAULT_ENABLE_Register use record
      FAULT_ENABLE at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Selects the level of sck in Idle State
   type SPI_CONFIGURATION_SCK_POLARITY_Field is
     (
      --  SCK is Low
      SPI_CONFIGURATION_SCK_POLARITY_Field_0,
      --  SCK is High
      SPI_CONFIGURATION_SCK_POLARITY_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_SCK_POLARITY_Field use
     (SPI_CONFIGURATION_SCK_POLARITY_Field_0 => 0,
      SPI_CONFIGURATION_SCK_POLARITY_Field_1 => 1);

   --  Selects clock edge used for data sampling and launching
   type SPI_CONFIGURATION_SCK_PHASE_Field is
     (
      --  Bits are sampled on the first edge and the following bit is output on
      --  the next edge
      SPI_CONFIGURATION_SCK_PHASE_Field_0,
      --  Bits are output on the first edge and are sampled on the following
      --  edge
      SPI_CONFIGURATION_SCK_PHASE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_SCK_PHASE_Field use
     (SPI_CONFIGURATION_SCK_PHASE_Field_0 => 0,
      SPI_CONFIGURATION_SCK_PHASE_Field_1 => 1);

   --  Selects LSB bits to be transmitted first
   type SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field is
     (
      --  Data transmitted MSB first
      SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field_0,
      --  Data transmitted LSB first
      SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field use
     (SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field_0 => 0,
      SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field_1 => 1);

   --  Enable Bidirectional mode of operation
   type SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field is
     (
      --  SPI is unidirectional, Tx and Rx each has dedicated one port
      SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field_0,
      --  SPI is bidirectional, Tx and Rx share one input/output port (MOSI if
      --  Master, MISO if Slave)
      SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field use
     (SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field_0 => 0,
      SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field_1 => 1);

   --  Active High Output Enable when in Bidirectional Mode
   type SPI_CONFIGURATION_OUTPUT_ENABLE_Field is
     (
      --  MISO is an input if in Slave mode. MOSI is an input if in Master mode
      SPI_CONFIGURATION_OUTPUT_ENABLE_Field_0,
      --  MISO is an output if in Slave mode. MOSI is an output if in Master
      --  mode
      SPI_CONFIGURATION_OUTPUT_ENABLE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_OUTPUT_ENABLE_Field use
     (SPI_CONFIGURATION_OUTPUT_ENABLE_Field_0 => 0,
      SPI_CONFIGURATION_OUTPUT_ENABLE_Field_1 => 1);

   --  Active High Shift Enable when SSN signal is asserted
   type SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field is
     (
      --  Shift counter is enabled only when ssn is asserted
      SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field_0,
      --  Shift counter is always enabled
      SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field use
     (SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field_0 => 0,
      SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field_1 => 1);

   --  Active High SSN Signal Synchronisation Enable
   type SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field is
     (
      --  SSN internal synchronisation is bypassed
      SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field_0,
      --  SSN is internally synchronised before being used
      SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field use
     (SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field_0 => 0,
      SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field_1 => 1);

   --  Active High rx_done Signal Synchronisation Enable
   type SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field is
     (
      --  rx_done internal synchronisation is bypassed
      SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field_0,
      --  rx_done is internally synchronised before being used
      SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field_1)
     with Size => 1;
   for SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field use
     (SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field_0 => 0,
      SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field_1 => 1);

   --  SPI Operation Configuration Register. This register should not be
   --  modified while SPI bus is active, otherwise the SPI Module state shall
   --  not be guaranteed.
   type SPI_CONFIGURATION_Register is record
      --  Selects the level of sck in Idle State
      SCK_POLARITY         : SPI_CONFIGURATION_SCK_POLARITY_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_SCK_POLARITY_Field_0;
      --  Selects clock edge used for data sampling and launching
      SCK_PHASE            : SPI_CONFIGURATION_SCK_PHASE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_SCK_PHASE_Field_0;
      --  Selects LSB bits to be transmitted first
      LSB_FIRST_ENABLE     : SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_LSB_FIRST_ENABLE_Field_0;
      --  Enable Bidirectional mode of operation
      BIDIRECTIONAL_ENABLE : SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_BIDIRECTIONAL_ENABLE_Field_0;
      --  Active High Output Enable when in Bidirectional Mode
      OUTPUT_ENABLE        : SPI_CONFIGURATION_OUTPUT_ENABLE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_OUTPUT_ENABLE_Field_0;
      --  Active High Shift Enable when SSN signal is asserted
      SSN_SHIFT_ENABLE     : SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_SSN_SHIFT_ENABLE_Field_1;
      --  Active High SSN Signal Synchronisation Enable
      SSN_SYNC_ENABLE      : SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_SSN_SYNC_ENABLE_Field_1;
      --  Active High rx_done Signal Synchronisation Enable
      RX_DONE_SYNC_ENABLE  : SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field :=
                              SAM_SVD.SPI.SPI_CONFIGURATION_RX_DONE_SYNC_ENABLE_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI_CONFIGURATION_Register use record
      SCK_POLARITY         at 0 range 0 .. 0;
      SCK_PHASE            at 0 range 1 .. 1;
      LSB_FIRST_ENABLE     at 0 range 2 .. 2;
      BIDIRECTIONAL_ENABLE at 0 range 3 .. 3;
      OUTPUT_ENABLE        at 0 range 4 .. 4;
      SSN_SHIFT_ENABLE     at 0 range 5 .. 5;
      SSN_SYNC_ENABLE      at 0 range 6 .. 6;
      RX_DONE_SYNC_ENABLE  at 0 range 7 .. 7;
   end record;

   --  Status of SPI bus.
   type SPI_BUS_STATUS_Register is record
      --  Read-only. Active High indicatation that the SPI Module is active.
      --  While set, SPI configuration should not be modified.
      SPI_ACTIVE   : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SPI_BUS_STATUS_Register use record
      SPI_ACTIVE   at 0 range 0 .. 0;
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
      --  Active High Enable of fault detection interrupt
      FAULT_DETECT_MASK      : Boolean := False;
      --  Active High Enable of FIFO overrun interrupt
      FIFO_OVERRUN_MASK      : Boolean := False;
      --  unspecified
      Reserved_6_7           : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RX_INTERRUPT_MASK_Register use record
      RX_FIFO_NOT_EMPTY_MASK at 0 range 0 .. 0;
      RX_FIFO_0P25_FULL_MASK at 0 range 1 .. 1;
      RX_FIFO_0P5_FULL_MASK  at 0 range 2 .. 2;
      RX_FIFO_0P75_FULL_MASK at 0 range 3 .. 3;
      FAULT_DETECT_MASK      at 0 range 4 .. 4;
      FIFO_OVERRUN_MASK      at 0 range 5 .. 5;
      Reserved_6_7           at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI Master/Slave Controller
   type SPI_Peripheral is record
      --  Writes one byte to SPI Transmit Data FIFO.
      TRANSMIT_DATA       : aliased HAL.UInt8;
      --  Read one byte from SPI Receive Data FIFO.
      RECEIVE_DATA        : aliased HAL.UInt8;
      --  Status of the SPI transmitter. Each field can generate an interrupt
      --  if corresponding bit in the Tx interrupt mask register is set.
      TRANSMIT_STATUS     : aliased TRANSMIT_STATUS_Register;
      --  Status of the SPI receiver. Each field can generate an interrupt if
      --  corresponding bit in the Rx interrupt mask register is set.
      RECEIVE_STATUS      : aliased RECEIVE_STATUS_Register;
      --  Clock Source Select
      CLOCK_SOURCE_SELECT : aliased CLOCK_SOURCE_SELECT_Register;
      --  Register sets the divide ratio used to generate the sck clock from
      --  the module's input clock.
      SPI_CLK_DIVIDER     : aliased HAL.UInt16;
      --  SPI Enable
      SPI_MODULE_ENABLE   : aliased SPI_MODULE_ENABLE_Register;
      --  SPI Master/Slave Mode. When clear, SPI is in Slave Mode.
      SPI_MASTER_MODE     : aliased SPI_MASTER_MODE_Register;
      --  SPI Fault Detection Mode. If set, SPI bus contention will be
      --  detected, and the fault bit in the rx_status register will be set,
      --  forcing the SPI Module into idle state. When a fault is detected, the
      --  current SPI transaction is abandoned and the interface switches to
      --  slave mode in the wait state.
      SPI_FAULT_ENABLE    : aliased SPI_FAULT_ENABLE_Register;
      --  SPI Operation Configuration Register. This register should not be
      --  modified while SPI bus is active, otherwise the SPI Module state
      --  shall not be guaranteed.
      SPI_CONFIGURATION   : aliased SPI_CONFIGURATION_Register;
      --  Status of SPI bus.
      SPI_BUS_STATUS      : aliased SPI_BUS_STATUS_Register;
      --  Enable or Disable the generation of interrupts by the tx_status
      --  register.
      TX_INTERRUPT_MASK   : aliased TX_INTERRUPT_MASK_Register;
      --  Enable or Disable the generation of interrupts by the rx_status
      --  register.
      RX_INTERRUPT_MASK   : aliased RX_INTERRUPT_MASK_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      TRANSMIT_DATA       at 16#0# range 0 .. 7;
      RECEIVE_DATA        at 16#4# range 0 .. 7;
      TRANSMIT_STATUS     at 16#8# range 0 .. 7;
      RECEIVE_STATUS      at 16#C# range 0 .. 7;
      CLOCK_SOURCE_SELECT at 16#10# range 0 .. 7;
      SPI_CLK_DIVIDER     at 16#14# range 0 .. 15;
      SPI_MODULE_ENABLE   at 16#18# range 0 .. 7;
      SPI_MASTER_MODE     at 16#1C# range 0 .. 7;
      SPI_FAULT_ENABLE    at 16#20# range 0 .. 7;
      SPI_CONFIGURATION   at 16#24# range 0 .. 7;
      SPI_BUS_STATUS      at 16#28# range 0 .. 7;
      TX_INTERRUPT_MASK   at 16#2C# range 0 .. 7;
      RX_INTERRUPT_MASK   at 16#30# range 0 .. 7;
   end record;

   --  SPI Master/Slave Controller
   SPI0_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40006000#);

   --  SPI Master/Slave Controller
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => System'To_Address (16#40007000#);

end SAM_SVD.SPI;
