--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SPI_FLASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SPI Modes
   type MODE_CTRL_MODE_Field is
     (
      --  Mode 0
      MODE_CTRL_MODE_Field_0,
      --  Mode 1
      MODE_CTRL_MODE_Field_1,
      --  Mode 2
      MODE_CTRL_MODE_Field_2,
      --  Mode 3
      MODE_CTRL_MODE_Field_3)
     with Size => 2;
   for MODE_CTRL_MODE_Field use
     (MODE_CTRL_MODE_Field_0 => 0,
      MODE_CTRL_MODE_Field_1 => 1,
      MODE_CTRL_MODE_Field_2 => 2,
      MODE_CTRL_MODE_Field_3 => 3);

   --  SPI Flash Mode Control
   type MODE_CTRL_Register is record
      --  SPI Modes
      MODE           : MODE_CTRL_MODE_Field :=
                        SAM_SVD.SPI_FLASH.MODE_CTRL_MODE_Field_0;
      --  Bypass CS PRE state
      BYPASS_CS_PRE  : Boolean := False;
      --  Bypass CS POST state
      BYPASS_CS_POST : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Set to 1 to use external bits for mode
      MODE_SELECT    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for MODE_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      BYPASS_CS_PRE  at 0 range 2 .. 2;
      BYPASS_CS_POST at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      MODE_SELECT    at 0 range 7 .. 7;
   end record;

   subtype TRANSACTION_CTRL_CMD_COUNT_Field is HAL.UInt3;
   subtype TRANSACTION_CTRL_WDATA_COUNT_Field is HAL.UInt24;

   --  Transaction Control (Cleared after each transaction completes)
   type TRANSACTION_CTRL_Register is record
      --  Number of bytes to be transferred or received
      CMD_COUNT         : TRANSACTION_CTRL_CMD_COUNT_Field := 16#4#;
      --  unspecified
      Reserved_3_6      : HAL.UInt4 := 16#0#;
      --  Rising Edge Flast Transaction Start
      FLASH_TRANS_START : Boolean := False;
      --  Number of bytes to be programmed to flash
      WDATA_COUNT       : TRANSACTION_CTRL_WDATA_COUNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRANSACTION_CTRL_Register use record
      CMD_COUNT         at 0 range 0 .. 2;
      Reserved_3_6      at 0 range 3 .. 6;
      FLASH_TRANS_START at 0 range 7 .. 7;
      WDATA_COUNT       at 0 range 8 .. 31;
   end record;

   subtype READ_CTRL_RDATA_COUNT_Field is HAL.UInt24;

   --  Read Control (Cleared after each transaction completes)
   type READ_CTRL_Register is record
      --  Number of data bytes to be read from flash
      RDATA_COUNT    : READ_CTRL_RDATA_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for READ_CTRL_Register use record
      RDATA_COUNT    at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  IRQ Status (Write 0 to bit to clear, Read clears interupts)
   type IRQ_STATUS_Register is record
      --  Write-only. Current Flash Transaction Done
      FLASH_TRANS_DONE   : Boolean := False;
      --  Write-only. AHB Error Response
      AHB_ERROR_RESPONSE : Boolean := False;
      --  unspecified
      Reserved_2_7       : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for IRQ_STATUS_Register use record
      FLASH_TRANS_DONE   at 0 range 0 .. 0;
      AHB_ERROR_RESPONSE at 0 range 1 .. 1;
      Reserved_2_7       at 0 range 2 .. 7;
   end record;

   subtype CONFIG_SPI_INTERFACE_CONFIG_DEBUG_Field is HAL.UInt4;

   --  SPI Flash Configuration
   type CONFIG_Register is record
      --  1 for Little Endian
      ENDIANNESS                 : Boolean := True;
      --  Reverse bits of every byte in cmd_buffer
      REVERSE_CMD_BUFFER         : Boolean := True;
      --  Reverse bits of every data byte read from flash
      RDATA_REVERSE              : Boolean := False;
      --  Reverse bits of status registers read from flash
      REVERSE_INCOMIND_DATA      : Boolean := False;
      --  Debug only
      SPI_INTERFACE_CONFIG_DEBUG : CONFIG_SPI_INTERFACE_CONFIG_DEBUG_Field :=
                                    16#0#;
      --  Reverse bits of every data byte written to flash
      WDATA_REVERSE              : Boolean := True;
      --  unspecified
      Reserved_9_15              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      ENDIANNESS                 at 0 range 0 .. 0;
      REVERSE_CMD_BUFFER         at 0 range 1 .. 1;
      RDATA_REVERSE              at 0 range 2 .. 2;
      REVERSE_INCOMIND_DATA      at 0 range 3 .. 3;
      SPI_INTERFACE_CONFIG_DEBUG at 0 range 4 .. 7;
      WDATA_REVERSE              at 0 range 8 .. 8;
      Reserved_9_15              at 0 range 9 .. 15;
   end record;

   subtype TX_CONTROL_DUMMY_BYTE_Field is HAL.UInt8;

   --  TX Control
   type TX_CONTROL_Register is record
      --  Drive 0 on TX while reading
      DRIVE_0_ON_TX : Boolean := False;
      --  Drive 1 on TX while reading
      DRIVE_1_ON_TX : Boolean := False;
      --  Toggle TX while reading
      TOGGLE_ON_TX  : Boolean := False;
      --  Send dummy_byte while reading
      DUMMY_ON_TX   : Boolean := False;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Byte to be sent for dummy_on_tx option
      DUMMY_BYTE    : TX_CONTROL_DUMMY_BYTE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TX_CONTROL_Register use record
      DRIVE_0_ON_TX at 0 range 0 .. 0;
      DRIVE_1_ON_TX at 0 range 1 .. 1;
      TOGGLE_ON_TX  at 0 range 2 .. 2;
      DUMMY_ON_TX   at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      DUMMY_BYTE    at 0 range 8 .. 15;
   end record;

   --  AHB Master State
   type STATUS_AHB_MASTER_STATE_Field is
     (
      --  IDLE
      STATUS_AHB_MASTER_STATE_Field_0,
      --  WAIT_GRANT
      STATUS_AHB_MASTER_STATE_Field_1,
      --  ADDR_PHASE
      STATUS_AHB_MASTER_STATE_Field_2,
      --  DATA_PHASE
      STATUS_AHB_MASTER_STATE_Field_3)
     with Size => 2;
   for STATUS_AHB_MASTER_STATE_Field use
     (STATUS_AHB_MASTER_STATE_Field_0 => 0,
      STATUS_AHB_MASTER_STATE_Field_1 => 1,
      STATUS_AHB_MASTER_STATE_Field_2 => 2,
      STATUS_AHB_MASTER_STATE_Field_3 => 3);

   --  FIFO Control State
   type STATUS_FIFO_CTRL_STATE_Field is
     (
      --  FLASH_IDLE
      STATUS_FIFO_CTRL_STATE_Field_0,
      --  GET_DATA_FROM_FLASH
      STATUS_FIFO_CTRL_STATE_Field_1,
      --  WRITE_DATA_TO_AHB
      STATUS_FIFO_CTRL_STATE_Field_2,
      --  GET_DATA_FROM_AHB
      STATUS_FIFO_CTRL_STATE_Field_3,
      --  WRITE_DATA_TO_FLASH
      STATUS_FIFO_CTRL_STATE_Field_4)
     with Size => 3;
   for STATUS_FIFO_CTRL_STATE_Field use
     (STATUS_FIFO_CTRL_STATE_Field_0 => 0,
      STATUS_FIFO_CTRL_STATE_Field_1 => 1,
      STATUS_FIFO_CTRL_STATE_Field_2 => 2,
      STATUS_FIFO_CTRL_STATE_Field_3 => 3,
      STATUS_FIFO_CTRL_STATE_Field_4 => 4);

   --  SPI Master State
   type STATUS_SPI_MASTER_STATE_Field is
     (
      --  IDLE
      STATUS_SPI_MASTER_STATE_Field_0,
      --  READ
      STATUS_SPI_MASTER_STATE_Field_1,
      --  WRITE
      STATUS_SPI_MASTER_STATE_Field_2,
      --  READ_FLASH
      STATUS_SPI_MASTER_STATE_Field_3,
      --  WRITE_FLASH
      STATUS_SPI_MASTER_STATE_Field_4,
      --  PRE_ACTION
      STATUS_SPI_MASTER_STATE_Field_5,
      --  POST_ACTION
      STATUS_SPI_MASTER_STATE_Field_6,
      --  WAIT_AHB
      STATUS_SPI_MASTER_STATE_Field_7)
     with Size => 3;
   for STATUS_SPI_MASTER_STATE_Field use
     (STATUS_SPI_MASTER_STATE_Field_0 => 0,
      STATUS_SPI_MASTER_STATE_Field_1 => 1,
      STATUS_SPI_MASTER_STATE_Field_2 => 2,
      STATUS_SPI_MASTER_STATE_Field_3 => 3,
      STATUS_SPI_MASTER_STATE_Field_4 => 4,
      STATUS_SPI_MASTER_STATE_Field_5 => 5,
      STATUS_SPI_MASTER_STATE_Field_6 => 6,
      STATUS_SPI_MASTER_STATE_Field_7 => 7);

   --  Misc Status
   type STATUS_Register is record
      --  Read-only. AHB Master State
      AHB_MASTER_STATE : STATUS_AHB_MASTER_STATE_Field;
      --  unspecified
      Reserved_2_3     : HAL.UInt2;
      --  Read-only. FIFO Control State
      FIFO_CTRL_STATE  : STATUS_FIFO_CTRL_STATE_Field;
      --  unspecified
      Reserved_7_7     : HAL.Bit;
      --  Read-only. SPI Master State
      SPI_MASTER_STATE : STATUS_SPI_MASTER_STATE_Field;
      --  unspecified
      Reserved_11_11   : HAL.Bit;
      --  Read-only. Inverted version of the SPI Master Chip Select
      SPI_MASTER_CSN   : Boolean;
      --  unspecified
      Reserved_13_15   : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      AHB_MASTER_STATE at 0 range 0 .. 1;
      Reserved_2_3     at 0 range 2 .. 3;
      FIFO_CTRL_STATE  at 0 range 4 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      SPI_MASTER_STATE at 0 range 8 .. 10;
      Reserved_11_11   at 0 range 11 .. 11;
      SPI_MASTER_CSN   at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI Flash Controller
   type SPI_FLASH0_Peripheral is record
      --  SPI Flash Mode Control
      MODE_CTRL         : aliased MODE_CTRL_Register;
      --  Transaction Control (Cleared after each transaction completes)
      TRANSACTION_CTRL  : aliased TRANSACTION_CTRL_Register;
      --  Read Control (Cleared after each transaction completes)
      READ_CTRL         : aliased READ_CTRL_Register;
      --  Command Buffer 0 (Bytes 3 - 0)
      CMD_BUFFER0       : aliased HAL.UInt32;
      --  Command Buffer 1 (Bytes 7 - 4)
      CMD_BUFFER1       : aliased HAL.UInt32;
      --  Read/Write bit for Bytes 7 - 0
      DIRECTION         : aliased HAL.UInt8;
      --  IRQ Status (Write 0 to bit to clear, Read clears interupts)
      IRQ_STATUS        : aliased IRQ_STATUS_Register;
      --  DMA Starting Address
      DMA_START_ADDRESS : aliased HAL.UInt32;
      --  SPI Flash Configuration
      CONFIG            : aliased CONFIG_Register;
      --  TX Control
      TX_CONTROL        : aliased TX_CONTROL_Register;
      --  Misc Status
      STATUS            : aliased STATUS_Register;
   end record
     with Volatile;

   for SPI_FLASH0_Peripheral use record
      MODE_CTRL         at 16#0# range 0 .. 7;
      TRANSACTION_CTRL  at 16#4# range 0 .. 31;
      READ_CTRL         at 16#8# range 0 .. 31;
      CMD_BUFFER0       at 16#C# range 0 .. 31;
      CMD_BUFFER1       at 16#10# range 0 .. 31;
      DIRECTION         at 16#14# range 0 .. 7;
      IRQ_STATUS        at 16#18# range 0 .. 7;
      DMA_START_ADDRESS at 16#1C# range 0 .. 31;
      CONFIG            at 16#20# range 0 .. 15;
      TX_CONTROL        at 16#24# range 0 .. 15;
      STATUS            at 16#28# range 0 .. 15;
   end record;

   --  SPI Flash Controller
   SPI_FLASH0_Periph : aliased SPI_FLASH0_Peripheral
     with Import, Address => System'To_Address (16#40012000#);

end SAM_SVD.SPI_FLASH;
