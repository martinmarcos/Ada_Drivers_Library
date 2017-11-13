--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATSAMB11ZR.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PROV_DMA_CTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CH0_CMD_REG2_BUFFER_SIZE_Field is HAL.UInt13;

   --  Channel 0 Third Line Channel Command
   type CH0_CMD_REG2_Register is record
      --  Size (in Bytes) of Buffer to Transfer
      BUFFER_SIZE    : CH0_CMD_REG2_BUFFER_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH0_CMD_REG2_Register use record
      BUFFER_SIZE    at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype CH0_CMD_REG3_CMD_NEXT_ADDR_Field is HAL.UInt30;

   --  Channel 0 Fourth Line Channel Command
   type CH0_CMD_REG3_Register is record
      --  Active High Interrupt Enable once buffer has been transfered
      CMD_SET_INT   : Boolean := False;
      --  If set, channel stops when buffer done, otherwise load from
      --  CMD_NEXT_ADDR
      CMD_LAST      : Boolean := False;
      --  Address of next command if CMD_LAST is not set
      CMD_NEXT_ADDR : CH0_CMD_REG3_CMD_NEXT_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_CMD_REG3_Register use record
      CMD_SET_INT   at 0 range 0 .. 0;
      CMD_LAST      at 0 range 1 .. 1;
      CMD_NEXT_ADDR at 0 range 2 .. 31;
   end record;

   subtype CH0_STATIC_REG0_RD_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH0_STATIC_REG0_RD_TOKENS_Field is HAL.UInt6;

   --  Channel 0 Static Configuration Read
   type CH0_STATIC_REG0_Register is record
      --  Maximum number of bytes of an AHB read burst
      RD_BURST_MAX_SIZE : CH0_STATIC_REG0_RD_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB read commands to issue before channel is released
      RD_TOKENS         : CH0_STATIC_REG0_RD_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      RD_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_STATIC_REG0_Register use record
      RD_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      RD_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      RD_INCR           at 0 range 31 .. 31;
   end record;

   subtype CH0_STATIC_REG1_WR_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH0_STATIC_REG1_WR_TOKENS_Field is HAL.UInt6;

   --  Channel 0 Static Configuration Write
   type CH0_STATIC_REG1_Register is record
      --  Maximum number of bytes of an AHB write burst
      WR_BURST_MAX_SIZE : CH0_STATIC_REG1_WR_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB write commands to issue before channel is released
      WR_TOKENS         : CH0_STATIC_REG1_WR_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      WR_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_STATIC_REG1_Register use record
      WR_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      WR_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      WR_INCR           at 0 range 31 .. 31;
   end record;

   --  Endianness Byte Swapping
   type CH0_STATIC_REG2_END_SWAP_Field is
     (
      --  No Swapping
      CH0_STATIC_REG2_END_SWAP_Field_0,
      --  Swap bytes within 16 bits
      CH0_STATIC_REG2_END_SWAP_Field_1,
      --  Swap bytes within 32 bits
      CH0_STATIC_REG2_END_SWAP_Field_2,
      --  Swap bytes within 64 bits
      CH0_STATIC_REG2_END_SWAP_Field_3)
     with Size => 2;
   for CH0_STATIC_REG2_END_SWAP_Field use
     (CH0_STATIC_REG2_END_SWAP_Field_0 => 0,
      CH0_STATIC_REG2_END_SWAP_Field_1 => 1,
      CH0_STATIC_REG2_END_SWAP_Field_2 => 2,
      CH0_STATIC_REG2_END_SWAP_Field_3 => 3);

   --  Channel 0 Block Mode
   type CH0_STATIC_REG2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  If set channel will work in joint mode
      JOINT          : Boolean := True;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  Endianness Byte Swapping
      END_SWAP       : CH0_STATIC_REG2_END_SWAP_Field :=
                        SAM_SVD.PROV_DMA_CTRL.CH0_STATIC_REG2_END_SWAP_Field_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_STATIC_REG2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      JOINT          at 0 range 16 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      END_SWAP       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CH0_STATIC_REG4_RD_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH0_STATIC_REG4_RD_PERIPH_DELAY_Field is HAL.UInt3;
   subtype CH0_STATIC_REG4_WR_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH0_STATIC_REG4_WR_PERIPH_DELAY_Field is HAL.UInt3;

   --  Channel 0 Static Configuration Peripheral
   type CH0_STATIC_REG4_Register is record
      --  Number of peripheral to read from (0 if memory or no peripheral flow
      --  control)
      RD_PERIPH_NUM   : CH0_STATIC_REG4_RD_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for read request signal to update after
      --  issuing the read clear signal
      RD_PERIPH_DELAY : CH0_STATIC_REG4_RD_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_11_15  : HAL.UInt5 := 16#0#;
      --  Number of peripheral to write from (0 if memory or no peripheral flow
      --  control)
      WR_PERIPH_NUM   : CH0_STATIC_REG4_WR_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_21_23  : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for write request signal to update after
      --  issuing the write clear signal
      WR_PERIPH_DELAY : CH0_STATIC_REG4_WR_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_27_31  : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_STATIC_REG4_Register use record
      RD_PERIPH_NUM   at 0 range 0 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      RD_PERIPH_DELAY at 0 range 8 .. 10;
      Reserved_11_15  at 0 range 11 .. 15;
      WR_PERIPH_NUM   at 0 range 16 .. 20;
      Reserved_21_23  at 0 range 21 .. 23;
      WR_PERIPH_DELAY at 0 range 24 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   --  Channel 0 Restrictions Status Register
   type CH0_RESRICT_REG_Register is record
      --  Read-only. Read start address does not restrict burst size
      RD_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Write start address does not restrict burst size
      WR_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Burst sizes can equal data buffer size, otherwise max
      --  burst is half data buffer size
      ALLOW_FULL_FIFO    : Boolean;
      --  Read-only. Maximum burst of 16 strobes can be used (joint mode only)
      ALLOW_FULL_BURST   : Boolean;
      --  Read-only. Joint bursts are currently active
      ALLOW_JOINT_BURST  : Boolean;
      --  unspecified
      Reserved_5_7       : HAL.UInt3;
      --  Read-only. Configuration is aligned and peripherals are not used
      SIMPLE_MEM         : Boolean;
      --  unspecified
      Reserved_9_15      : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH0_RESRICT_REG_Register use record
      RD_ALLOW_FULL_FIFO at 0 range 0 .. 0;
      WR_ALLOW_FULL_FIFO at 0 range 1 .. 1;
      ALLOW_FULL_FIFO    at 0 range 2 .. 2;
      ALLOW_FULL_BURST   at 0 range 3 .. 3;
      ALLOW_JOINT_BURST  at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
      SIMPLE_MEM         at 0 range 8 .. 8;
      Reserved_9_15      at 0 range 9 .. 15;
   end record;

   subtype CH0_FIFO_FULLNESS_REG_RD_GAP_Field is HAL.UInt13;
   subtype CH0_FIFO_FULLNESS_REG_WR_FULLNESS_Field is HAL.UInt13;

   --  Channel 0 FIFO Fullness Status Register
   type CH0_FIFO_FULLNESS_REG_Register is record
      --  Read-only. Remaining space (in bytes) in FIFO for read data
      RD_GAP         : CH0_FIFO_FULLNESS_REG_RD_GAP_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Occupied space (in bytes) in FIFO by write data
      WR_FULLNESS    : CH0_FIFO_FULLNESS_REG_WR_FULLNESS_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_FIFO_FULLNESS_REG_Register use record
      RD_GAP         at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WR_FULLNESS    at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Channel 0 Channel Active Status Register
   type CH0_CH_ACTIVE_REG_Register is record
      --  Read-only. Set if channel is enabled and all read data has been
      --  received
      CH_RD_ACTIVE : Boolean;
      --  Read-only. Set if channel is enabled and all write data has been
      --  transfered
      CH_WR_ACTIVE : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH0_CH_ACTIVE_REG_Register use record
      CH_RD_ACTIVE at 0 range 0 .. 0;
      CH_WR_ACTIVE at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype CH0_COUNT_REG_BUFF_COUNT_Field is HAL.UInt12;
   subtype CH0_COUNT_REG_INT_COUNT_Field is HAL.UInt4;

   --  Channel 0 Buffer Counter Status Register
   type CH0_COUNT_REG_Register is record
      --  Read-only. Number of buffers transferred by channel since started
      BUFF_COUNT     : CH0_COUNT_REG_BUFF_COUNT_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Number of unserviced end interrupts
      INT_COUNT      : CH0_COUNT_REG_INT_COUNT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_COUNT_REG_Register use record
      BUFF_COUNT     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INT_COUNT      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel 0 Interrupt Raw Status (Write 1 to any field to issue interrupt)
   type CH0_INT_RAWSTAT_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH0_INT_RAWSTAT_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 0 Interrupt Clear (Write 1 to clear)
   type CH0_INT_CLEAR_REG_Register is record
      --  Clear channel end interrupt. Decrements INT_COUNT register
      CH_END         : Boolean := False;
      --  Clear AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  Clear AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  Clears FIFO overflow
      FIFO_OVERFLOW  : Boolean := False;
      --  Clears FIFO underflow
      FIFO_UNDERFLOW : Boolean := False;
      --  Clears Read Timeout
      TIMEOUT_RD     : Boolean := False;
      --  Clears Write Timeout
      TIMEOUT_WR     : Boolean := False;
      --  Clears WDT
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH0_INT_CLEAR_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 0 Interrupt Enable
   type CH0_INT_ENABLE_REG_Register is record
      --  Enables end of channel interrupt
      CH_END         : Boolean := False;
      --  Enables AHB read slave error interrupt
      RD_SLVERR      : Boolean := False;
      --  Enables AHB write slave error interrupt
      WR_SLVERR      : Boolean := False;
      --  Enables FIFO overflow interrupt
      FIFO_OVERFLOW  : Boolean := False;
      --  Enables FIFO underflow interrupt
      FIFO_UNDERFLOW : Boolean := False;
      --  Enables AHB Read timeout interrupt
      TIMEOUT_RD     : Boolean := False;
      --  Enables AHB Write timeout interrupt
      TIMEOUT_WR     : Boolean := False;
      --  Enables WDT interrupt
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH0_INT_ENABLE_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 0 Interrupt Status
   type CH0_INT_STATUS_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH0_INT_STATUS_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   subtype CH1_CMD_REG2_BUFFER_SIZE_Field is HAL.UInt13;

   --  Channel 1 Third Line Channel Command
   type CH1_CMD_REG2_Register is record
      --  Size (in Bytes) of Buffer to Transfer
      BUFFER_SIZE    : CH1_CMD_REG2_BUFFER_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH1_CMD_REG2_Register use record
      BUFFER_SIZE    at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype CH1_CMD_REG3_CMD_NEXT_ADDR_Field is HAL.UInt30;

   --  Channel 1 Fourth Line Channel Command
   type CH1_CMD_REG3_Register is record
      --  Active High Interrupt Enable once buffer has been transfered
      CMD_SET_INT   : Boolean := False;
      --  If set, channel stops when buffer done, otherwise load from
      --  CMD_NEXT_ADDR
      CMD_LAST      : Boolean := False;
      --  Address of next command if CMD_LAST is not set
      CMD_NEXT_ADDR : CH1_CMD_REG3_CMD_NEXT_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_CMD_REG3_Register use record
      CMD_SET_INT   at 0 range 0 .. 0;
      CMD_LAST      at 0 range 1 .. 1;
      CMD_NEXT_ADDR at 0 range 2 .. 31;
   end record;

   subtype CH1_STATIC_REG0_RD_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH1_STATIC_REG0_RD_TOKENS_Field is HAL.UInt6;

   --  Channel 1 Static Configuration Read
   type CH1_STATIC_REG0_Register is record
      --  Maximum number of bytes of an AHB read burst
      RD_BURST_MAX_SIZE : CH1_STATIC_REG0_RD_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB read commands to issue before channel is released
      RD_TOKENS         : CH1_STATIC_REG0_RD_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      RD_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_STATIC_REG0_Register use record
      RD_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      RD_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      RD_INCR           at 0 range 31 .. 31;
   end record;

   subtype CH1_STATIC_REG1_WR_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH1_STATIC_REG1_WR_TOKENS_Field is HAL.UInt6;

   --  Channel 1 Static Configuration Write
   type CH1_STATIC_REG1_Register is record
      --  Maximum number of bytes of an AHB write burst
      WR_BURST_MAX_SIZE : CH1_STATIC_REG1_WR_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB write commands to issue before channel is released
      WR_TOKENS         : CH1_STATIC_REG1_WR_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      WR_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_STATIC_REG1_Register use record
      WR_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      WR_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      WR_INCR           at 0 range 31 .. 31;
   end record;

   --  Endianness Byte Swapping
   type CH1_STATIC_REG2_END_SWAP_Field is
     (
      --  No Swapping
      CH1_STATIC_REG2_END_SWAP_Field_0,
      --  Swap bytes within 16 bits
      CH1_STATIC_REG2_END_SWAP_Field_1,
      --  Swap bytes within 32 bits
      CH1_STATIC_REG2_END_SWAP_Field_2,
      --  Swap bytes within 64 bits
      CH1_STATIC_REG2_END_SWAP_Field_3)
     with Size => 2;
   for CH1_STATIC_REG2_END_SWAP_Field use
     (CH1_STATIC_REG2_END_SWAP_Field_0 => 0,
      CH1_STATIC_REG2_END_SWAP_Field_1 => 1,
      CH1_STATIC_REG2_END_SWAP_Field_2 => 2,
      CH1_STATIC_REG2_END_SWAP_Field_3 => 3);

   --  Channel 1 Block Mode
   type CH1_STATIC_REG2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  If set channel will work in joint mode
      JOINT          : Boolean := True;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  Endianness Byte Swapping
      END_SWAP       : CH1_STATIC_REG2_END_SWAP_Field :=
                        SAM_SVD.PROV_DMA_CTRL.CH1_STATIC_REG2_END_SWAP_Field_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_STATIC_REG2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      JOINT          at 0 range 16 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      END_SWAP       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CH1_STATIC_REG4_RD_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH1_STATIC_REG4_RD_PERIPH_DELAY_Field is HAL.UInt3;
   subtype CH1_STATIC_REG4_WR_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH1_STATIC_REG4_WR_PERIPH_DELAY_Field is HAL.UInt3;

   --  Channel 1 Static Configuration Peripheral
   type CH1_STATIC_REG4_Register is record
      --  Number of peripheral to read from (0 if memory or no peripheral flow
      --  control)
      RD_PERIPH_NUM   : CH1_STATIC_REG4_RD_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for read request signal to update after
      --  issuing the read clear signal
      RD_PERIPH_DELAY : CH1_STATIC_REG4_RD_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_11_15  : HAL.UInt5 := 16#0#;
      --  Number of peripheral to write from (0 if memory or no peripheral flow
      --  control)
      WR_PERIPH_NUM   : CH1_STATIC_REG4_WR_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_21_23  : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for write request signal to update after
      --  issuing the write clear signal
      WR_PERIPH_DELAY : CH1_STATIC_REG4_WR_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_27_31  : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_STATIC_REG4_Register use record
      RD_PERIPH_NUM   at 0 range 0 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      RD_PERIPH_DELAY at 0 range 8 .. 10;
      Reserved_11_15  at 0 range 11 .. 15;
      WR_PERIPH_NUM   at 0 range 16 .. 20;
      Reserved_21_23  at 0 range 21 .. 23;
      WR_PERIPH_DELAY at 0 range 24 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   --  Channel 1 Restrictions Status Register
   type CH1_RESRICT_REG_Register is record
      --  Read-only. Read start address does not restrict burst size
      RD_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Write start address does not restrict burst size
      WR_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Burst sizes can equal data buffer size, otherwise max
      --  burst is half data buffer size
      ALLOW_FULL_FIFO    : Boolean;
      --  Read-only. Maximum burst of 16 strobes can be used (joint mode only)
      ALLOW_FULL_BURST   : Boolean;
      --  Read-only. Joint bursts are currently active
      ALLOW_JOINT_BURST  : Boolean;
      --  unspecified
      Reserved_5_7       : HAL.UInt3;
      --  Read-only. Configuration is aligned and peripherals are not used
      SIMPLE_MEM         : Boolean;
      --  unspecified
      Reserved_9_15      : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH1_RESRICT_REG_Register use record
      RD_ALLOW_FULL_FIFO at 0 range 0 .. 0;
      WR_ALLOW_FULL_FIFO at 0 range 1 .. 1;
      ALLOW_FULL_FIFO    at 0 range 2 .. 2;
      ALLOW_FULL_BURST   at 0 range 3 .. 3;
      ALLOW_JOINT_BURST  at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
      SIMPLE_MEM         at 0 range 8 .. 8;
      Reserved_9_15      at 0 range 9 .. 15;
   end record;

   subtype CH1_FIFO_FULLNESS_REG_RD_GAP_Field is HAL.UInt13;
   subtype CH1_FIFO_FULLNESS_REG_WR_FULLNESS_Field is HAL.UInt13;

   --  Channel 1 FIFO Fullness Status Register
   type CH1_FIFO_FULLNESS_REG_Register is record
      --  Read-only. Remaining space (in bytes) in FIFO for read data
      RD_GAP         : CH1_FIFO_FULLNESS_REG_RD_GAP_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Occupied space (in bytes) in FIFO by write data
      WR_FULLNESS    : CH1_FIFO_FULLNESS_REG_WR_FULLNESS_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_FIFO_FULLNESS_REG_Register use record
      RD_GAP         at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WR_FULLNESS    at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Channel 1 Channel Active Status Register
   type CH1_CH_ACTIVE_REG_Register is record
      --  Read-only. Set if channel is enabled and all read data has been
      --  received
      CH_RD_ACTIVE : Boolean;
      --  Read-only. Set if channel is enabled and all write data has been
      --  transfered
      CH_WR_ACTIVE : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH1_CH_ACTIVE_REG_Register use record
      CH_RD_ACTIVE at 0 range 0 .. 0;
      CH_WR_ACTIVE at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype CH1_COUNT_REG_BUFF_COUNT_Field is HAL.UInt12;
   subtype CH1_COUNT_REG_INT_COUNT_Field is HAL.UInt4;

   --  Channel 1 Buffer Counter Status Register
   type CH1_COUNT_REG_Register is record
      --  Read-only. Number of buffers transferred by channel since started
      BUFF_COUNT     : CH1_COUNT_REG_BUFF_COUNT_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Number of unserviced end interrupts
      INT_COUNT      : CH1_COUNT_REG_INT_COUNT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_COUNT_REG_Register use record
      BUFF_COUNT     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INT_COUNT      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel 1 Interrupt Raw Status (Write 1 to any field to issue interrupt)
   type CH1_INT_RAWSTAT_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH1_INT_RAWSTAT_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 1 Interrupt Clear (Write 1 to clear)
   type CH1_INT_CLEAR_REG_Register is record
      --  Clear channel end interrupt. Decrements INT_COUNT register
      CH_END         : Boolean := False;
      --  Clear AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  Clear AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  Clears FIFO overflow
      FIFO_OVERFLOW  : Boolean := False;
      --  Clears FIFO underflow
      FIFO_UNDERFLOW : Boolean := False;
      --  Clears Read Timeout
      TIMEOUT_RD     : Boolean := False;
      --  Clears Write Timeout
      TIMEOUT_WR     : Boolean := False;
      --  Clears WDT
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH1_INT_CLEAR_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 1 Interrupt Enable
   type CH1_INT_ENABLE_REG_Register is record
      --  Enables end of channel interrupt
      CH_END         : Boolean := False;
      --  Enables AHB read slave error interrupt
      RD_SLVERR      : Boolean := False;
      --  Enables AHB write slave error interrupt
      WR_SLVERR      : Boolean := False;
      --  Enables FIFO overflow interrupt
      FIFO_OVERFLOW  : Boolean := False;
      --  Enables FIFO underflow interrupt
      FIFO_UNDERFLOW : Boolean := False;
      --  Enables AHB Read timeout interrupt
      TIMEOUT_RD     : Boolean := False;
      --  Enables AHB Write timeout interrupt
      TIMEOUT_WR     : Boolean := False;
      --  Enables WDT interrupt
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH1_INT_ENABLE_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 1 Interrupt Status
   type CH1_INT_STATUS_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH1_INT_STATUS_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   subtype CH2_CMD_REG2_BUFFER_SIZE_Field is HAL.UInt13;

   --  Channel 2 Third Line Channel Command
   type CH2_CMD_REG2_Register is record
      --  Size (in Bytes) of Buffer to Transfer
      BUFFER_SIZE    : CH2_CMD_REG2_BUFFER_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH2_CMD_REG2_Register use record
      BUFFER_SIZE    at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype CH2_CMD_REG3_CMD_NEXT_ADDR_Field is HAL.UInt30;

   --  Channel 2 Fourth Line Channel Command
   type CH2_CMD_REG3_Register is record
      --  Active High Interrupt Enable once buffer has been transfered
      CMD_SET_INT   : Boolean := False;
      --  If set, channel stops when buffer done, otherwise load from
      --  CMD_NEXT_ADDR
      CMD_LAST      : Boolean := False;
      --  Address of next command if CMD_LAST is not set
      CMD_NEXT_ADDR : CH2_CMD_REG3_CMD_NEXT_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_CMD_REG3_Register use record
      CMD_SET_INT   at 0 range 0 .. 0;
      CMD_LAST      at 0 range 1 .. 1;
      CMD_NEXT_ADDR at 0 range 2 .. 31;
   end record;

   subtype CH2_STATIC_REG0_RD_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH2_STATIC_REG0_RD_TOKENS_Field is HAL.UInt6;

   --  Channel 2 Static Configuration Read
   type CH2_STATIC_REG0_Register is record
      --  Maximum number of bytes of an AHB read burst
      RD_BURST_MAX_SIZE : CH2_STATIC_REG0_RD_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB read commands to issue before channel is released
      RD_TOKENS         : CH2_STATIC_REG0_RD_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      RD_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_STATIC_REG0_Register use record
      RD_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      RD_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      RD_INCR           at 0 range 31 .. 31;
   end record;

   subtype CH2_STATIC_REG1_WR_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH2_STATIC_REG1_WR_TOKENS_Field is HAL.UInt6;

   --  Channel 2 Static Configuration Write
   type CH2_STATIC_REG1_Register is record
      --  Maximum number of bytes of an AHB write burst
      WR_BURST_MAX_SIZE : CH2_STATIC_REG1_WR_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB write commands to issue before channel is released
      WR_TOKENS         : CH2_STATIC_REG1_WR_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      WR_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_STATIC_REG1_Register use record
      WR_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      WR_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      WR_INCR           at 0 range 31 .. 31;
   end record;

   --  Endianness Byte Swapping
   type CH2_STATIC_REG2_END_SWAP_Field is
     (
      --  No Swapping
      CH2_STATIC_REG2_END_SWAP_Field_0,
      --  Swap bytes within 16 bits
      CH2_STATIC_REG2_END_SWAP_Field_1,
      --  Swap bytes within 32 bits
      CH2_STATIC_REG2_END_SWAP_Field_2,
      --  Swap bytes within 64 bits
      CH2_STATIC_REG2_END_SWAP_Field_3)
     with Size => 2;
   for CH2_STATIC_REG2_END_SWAP_Field use
     (CH2_STATIC_REG2_END_SWAP_Field_0 => 0,
      CH2_STATIC_REG2_END_SWAP_Field_1 => 1,
      CH2_STATIC_REG2_END_SWAP_Field_2 => 2,
      CH2_STATIC_REG2_END_SWAP_Field_3 => 3);

   --  Channel 2 Block Mode
   type CH2_STATIC_REG2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  If set channel will work in joint mode
      JOINT          : Boolean := True;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  Endianness Byte Swapping
      END_SWAP       : CH2_STATIC_REG2_END_SWAP_Field :=
                        SAM_SVD.PROV_DMA_CTRL.CH2_STATIC_REG2_END_SWAP_Field_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_STATIC_REG2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      JOINT          at 0 range 16 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      END_SWAP       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CH2_STATIC_REG4_RD_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH2_STATIC_REG4_RD_PERIPH_DELAY_Field is HAL.UInt3;
   subtype CH2_STATIC_REG4_WR_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH2_STATIC_REG4_WR_PERIPH_DELAY_Field is HAL.UInt3;

   --  Channel 2 Static Configuration Peripheral
   type CH2_STATIC_REG4_Register is record
      --  Number of peripheral to read from (0 if memory or no peripheral flow
      --  control)
      RD_PERIPH_NUM   : CH2_STATIC_REG4_RD_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for read request signal to update after
      --  issuing the read clear signal
      RD_PERIPH_DELAY : CH2_STATIC_REG4_RD_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_11_15  : HAL.UInt5 := 16#0#;
      --  Number of peripheral to write from (0 if memory or no peripheral flow
      --  control)
      WR_PERIPH_NUM   : CH2_STATIC_REG4_WR_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_21_23  : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for write request signal to update after
      --  issuing the write clear signal
      WR_PERIPH_DELAY : CH2_STATIC_REG4_WR_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_27_31  : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_STATIC_REG4_Register use record
      RD_PERIPH_NUM   at 0 range 0 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      RD_PERIPH_DELAY at 0 range 8 .. 10;
      Reserved_11_15  at 0 range 11 .. 15;
      WR_PERIPH_NUM   at 0 range 16 .. 20;
      Reserved_21_23  at 0 range 21 .. 23;
      WR_PERIPH_DELAY at 0 range 24 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   --  Channel 2 Restrictions Status Register
   type CH2_RESRICT_REG_Register is record
      --  Read-only. Read start address does not restrict burst size
      RD_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Write start address does not restrict burst size
      WR_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Burst sizes can equal data buffer size, otherwise max
      --  burst is half data buffer size
      ALLOW_FULL_FIFO    : Boolean;
      --  Read-only. Maximum burst of 16 strobes can be used (joint mode only)
      ALLOW_FULL_BURST   : Boolean;
      --  Read-only. Joint bursts are currently active
      ALLOW_JOINT_BURST  : Boolean;
      --  unspecified
      Reserved_5_7       : HAL.UInt3;
      --  Read-only. Configuration is aligned and peripherals are not used
      SIMPLE_MEM         : Boolean;
      --  unspecified
      Reserved_9_15      : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH2_RESRICT_REG_Register use record
      RD_ALLOW_FULL_FIFO at 0 range 0 .. 0;
      WR_ALLOW_FULL_FIFO at 0 range 1 .. 1;
      ALLOW_FULL_FIFO    at 0 range 2 .. 2;
      ALLOW_FULL_BURST   at 0 range 3 .. 3;
      ALLOW_JOINT_BURST  at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
      SIMPLE_MEM         at 0 range 8 .. 8;
      Reserved_9_15      at 0 range 9 .. 15;
   end record;

   subtype CH2_FIFO_FULLNESS_REG_RD_GAP_Field is HAL.UInt13;
   subtype CH2_FIFO_FULLNESS_REG_WR_FULLNESS_Field is HAL.UInt13;

   --  Channel 2 FIFO Fullness Status Register
   type CH2_FIFO_FULLNESS_REG_Register is record
      --  Read-only. Remaining space (in bytes) in FIFO for read data
      RD_GAP         : CH2_FIFO_FULLNESS_REG_RD_GAP_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Occupied space (in bytes) in FIFO by write data
      WR_FULLNESS    : CH2_FIFO_FULLNESS_REG_WR_FULLNESS_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_FIFO_FULLNESS_REG_Register use record
      RD_GAP         at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WR_FULLNESS    at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Channel 2 Channel Active Status Register
   type CH2_CH_ACTIVE_REG_Register is record
      --  Read-only. Set if channel is enabled and all read data has been
      --  received
      CH_RD_ACTIVE : Boolean;
      --  Read-only. Set if channel is enabled and all write data has been
      --  transfered
      CH_WR_ACTIVE : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH2_CH_ACTIVE_REG_Register use record
      CH_RD_ACTIVE at 0 range 0 .. 0;
      CH_WR_ACTIVE at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype CH2_COUNT_REG_BUFF_COUNT_Field is HAL.UInt12;
   subtype CH2_COUNT_REG_INT_COUNT_Field is HAL.UInt4;

   --  Channel 2 Buffer Counter Status Register
   type CH2_COUNT_REG_Register is record
      --  Read-only. Number of buffers transferred by channel since started
      BUFF_COUNT     : CH2_COUNT_REG_BUFF_COUNT_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Number of unserviced end interrupts
      INT_COUNT      : CH2_COUNT_REG_INT_COUNT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_COUNT_REG_Register use record
      BUFF_COUNT     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INT_COUNT      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel 2 Interrupt Raw Status (Write 1 to any field to issue interrupt)
   type CH2_INT_RAWSTAT_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH2_INT_RAWSTAT_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 2 Interrupt Clear (Write 1 to clear)
   type CH2_INT_CLEAR_REG_Register is record
      --  Clear channel end interrupt. Decrements INT_COUNT register
      CH_END         : Boolean := False;
      --  Clear AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  Clear AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  Clears FIFO overflow
      FIFO_OVERFLOW  : Boolean := False;
      --  Clears FIFO underflow
      FIFO_UNDERFLOW : Boolean := False;
      --  Clears Read Timeout
      TIMEOUT_RD     : Boolean := False;
      --  Clears Write Timeout
      TIMEOUT_WR     : Boolean := False;
      --  Clears WDT
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH2_INT_CLEAR_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 2 Interrupt Enable
   type CH2_INT_ENABLE_REG_Register is record
      --  Enables end of channel interrupt
      CH_END         : Boolean := False;
      --  Enables AHB read slave error interrupt
      RD_SLVERR      : Boolean := False;
      --  Enables AHB write slave error interrupt
      WR_SLVERR      : Boolean := False;
      --  Enables FIFO overflow interrupt
      FIFO_OVERFLOW  : Boolean := False;
      --  Enables FIFO underflow interrupt
      FIFO_UNDERFLOW : Boolean := False;
      --  Enables AHB Read timeout interrupt
      TIMEOUT_RD     : Boolean := False;
      --  Enables AHB Write timeout interrupt
      TIMEOUT_WR     : Boolean := False;
      --  Enables WDT interrupt
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH2_INT_ENABLE_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 2 Interrupt Status
   type CH2_INT_STATUS_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH2_INT_STATUS_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   subtype CH3_CMD_REG2_BUFFER_SIZE_Field is HAL.UInt13;

   --  Channel 3 Third Line Channel Command
   type CH3_CMD_REG2_Register is record
      --  Size (in Bytes) of Buffer to Transfer
      BUFFER_SIZE    : CH3_CMD_REG2_BUFFER_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH3_CMD_REG2_Register use record
      BUFFER_SIZE    at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype CH3_CMD_REG3_CMD_NEXT_ADDR_Field is HAL.UInt30;

   --  Channel 3 Fourth Line Channel Command
   type CH3_CMD_REG3_Register is record
      --  Active High Interrupt Enable once buffer has been transfered
      CMD_SET_INT   : Boolean := False;
      --  If set, channel stops when buffer done, otherwise load from
      --  CMD_NEXT_ADDR
      CMD_LAST      : Boolean := False;
      --  Address of next command if CMD_LAST is not set
      CMD_NEXT_ADDR : CH3_CMD_REG3_CMD_NEXT_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_CMD_REG3_Register use record
      CMD_SET_INT   at 0 range 0 .. 0;
      CMD_LAST      at 0 range 1 .. 1;
      CMD_NEXT_ADDR at 0 range 2 .. 31;
   end record;

   subtype CH3_STATIC_REG0_RD_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH3_STATIC_REG0_RD_TOKENS_Field is HAL.UInt6;

   --  Channel 3 Static Configuration Read
   type CH3_STATIC_REG0_Register is record
      --  Maximum number of bytes of an AHB read burst
      RD_BURST_MAX_SIZE : CH3_STATIC_REG0_RD_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB read commands to issue before channel is released
      RD_TOKENS         : CH3_STATIC_REG0_RD_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      RD_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_STATIC_REG0_Register use record
      RD_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      RD_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      RD_INCR           at 0 range 31 .. 31;
   end record;

   subtype CH3_STATIC_REG1_WR_BURST_MAX_SIZE_Field is HAL.UInt7;
   subtype CH3_STATIC_REG1_WR_TOKENS_Field is HAL.UInt6;

   --  Channel 3 Static Configuration Write
   type CH3_STATIC_REG1_Register is record
      --  Maximum number of bytes of an AHB write burst
      WR_BURST_MAX_SIZE : CH3_STATIC_REG1_WR_BURST_MAX_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_15     : HAL.UInt9 := 16#0#;
      --  Number of AHB write commands to issue before channel is released
      WR_TOKENS         : CH3_STATIC_REG1_WR_TOKENS_Field := 16#1#;
      --  unspecified
      Reserved_22_30    : HAL.UInt9 := 16#0#;
      --  If set the controller will increment the next burst address
      WR_INCR           : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_STATIC_REG1_Register use record
      WR_BURST_MAX_SIZE at 0 range 0 .. 6;
      Reserved_7_15     at 0 range 7 .. 15;
      WR_TOKENS         at 0 range 16 .. 21;
      Reserved_22_30    at 0 range 22 .. 30;
      WR_INCR           at 0 range 31 .. 31;
   end record;

   --  Endianness Byte Swapping
   type CH3_STATIC_REG2_END_SWAP_Field is
     (
      --  No Swapping
      CH3_STATIC_REG2_END_SWAP_Field_0,
      --  Swap bytes within 16 bits
      CH3_STATIC_REG2_END_SWAP_Field_1,
      --  Swap bytes within 32 bits
      CH3_STATIC_REG2_END_SWAP_Field_2,
      --  Swap bytes within 64 bits
      CH3_STATIC_REG2_END_SWAP_Field_3)
     with Size => 2;
   for CH3_STATIC_REG2_END_SWAP_Field use
     (CH3_STATIC_REG2_END_SWAP_Field_0 => 0,
      CH3_STATIC_REG2_END_SWAP_Field_1 => 1,
      CH3_STATIC_REG2_END_SWAP_Field_2 => 2,
      CH3_STATIC_REG2_END_SWAP_Field_3 => 3);

   --  Channel 3 Block Mode
   type CH3_STATIC_REG2_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  If set channel will work in joint mode
      JOINT          : Boolean := True;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  Endianness Byte Swapping
      END_SWAP       : CH3_STATIC_REG2_END_SWAP_Field :=
                        SAM_SVD.PROV_DMA_CTRL.CH3_STATIC_REG2_END_SWAP_Field_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_STATIC_REG2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      JOINT          at 0 range 16 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      END_SWAP       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CH3_STATIC_REG4_RD_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH3_STATIC_REG4_RD_PERIPH_DELAY_Field is HAL.UInt3;
   subtype CH3_STATIC_REG4_WR_PERIPH_NUM_Field is HAL.UInt5;
   subtype CH3_STATIC_REG4_WR_PERIPH_DELAY_Field is HAL.UInt3;

   --  Channel 3 Static Configuration Peripheral
   type CH3_STATIC_REG4_Register is record
      --  Number of peripheral to read from (0 if memory or no peripheral flow
      --  control)
      RD_PERIPH_NUM   : CH3_STATIC_REG4_RD_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for read request signal to update after
      --  issuing the read clear signal
      RD_PERIPH_DELAY : CH3_STATIC_REG4_RD_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_11_15  : HAL.UInt5 := 16#0#;
      --  Number of peripheral to write from (0 if memory or no peripheral flow
      --  control)
      WR_PERIPH_NUM   : CH3_STATIC_REG4_WR_PERIPH_NUM_Field := 16#0#;
      --  unspecified
      Reserved_21_23  : HAL.UInt3 := 16#0#;
      --  Number of cycles to wait for write request signal to update after
      --  issuing the write clear signal
      WR_PERIPH_DELAY : CH3_STATIC_REG4_WR_PERIPH_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_27_31  : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_STATIC_REG4_Register use record
      RD_PERIPH_NUM   at 0 range 0 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      RD_PERIPH_DELAY at 0 range 8 .. 10;
      Reserved_11_15  at 0 range 11 .. 15;
      WR_PERIPH_NUM   at 0 range 16 .. 20;
      Reserved_21_23  at 0 range 21 .. 23;
      WR_PERIPH_DELAY at 0 range 24 .. 26;
      Reserved_27_31  at 0 range 27 .. 31;
   end record;

   --  Channel 3 Restrictions Status Register
   type CH3_RESRICT_REG_Register is record
      --  Read-only. Read start address does not restrict burst size
      RD_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Write start address does not restrict burst size
      WR_ALLOW_FULL_FIFO : Boolean;
      --  Read-only. Burst sizes can equal data buffer size, otherwise max
      --  burst is half data buffer size
      ALLOW_FULL_FIFO    : Boolean;
      --  Read-only. Maximum burst of 16 strobes can be used (joint mode only)
      ALLOW_FULL_BURST   : Boolean;
      --  Read-only. Joint bursts are currently active
      ALLOW_JOINT_BURST  : Boolean;
      --  unspecified
      Reserved_5_7       : HAL.UInt3;
      --  Read-only. Configuration is aligned and peripherals are not used
      SIMPLE_MEM         : Boolean;
      --  unspecified
      Reserved_9_15      : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CH3_RESRICT_REG_Register use record
      RD_ALLOW_FULL_FIFO at 0 range 0 .. 0;
      WR_ALLOW_FULL_FIFO at 0 range 1 .. 1;
      ALLOW_FULL_FIFO    at 0 range 2 .. 2;
      ALLOW_FULL_BURST   at 0 range 3 .. 3;
      ALLOW_JOINT_BURST  at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
      SIMPLE_MEM         at 0 range 8 .. 8;
      Reserved_9_15      at 0 range 9 .. 15;
   end record;

   subtype CH3_FIFO_FULLNESS_REG_RD_GAP_Field is HAL.UInt13;
   subtype CH3_FIFO_FULLNESS_REG_WR_FULLNESS_Field is HAL.UInt13;

   --  Channel 3 FIFO Fullness Status Register
   type CH3_FIFO_FULLNESS_REG_Register is record
      --  Read-only. Remaining space (in bytes) in FIFO for read data
      RD_GAP         : CH3_FIFO_FULLNESS_REG_RD_GAP_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Occupied space (in bytes) in FIFO by write data
      WR_FULLNESS    : CH3_FIFO_FULLNESS_REG_WR_FULLNESS_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_FIFO_FULLNESS_REG_Register use record
      RD_GAP         at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WR_FULLNESS    at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Channel 3 Channel Active Status Register
   type CH3_CH_ACTIVE_REG_Register is record
      --  Read-only. Set if channel is enabled and all read data has been
      --  received
      CH_RD_ACTIVE : Boolean;
      --  Read-only. Set if channel is enabled and all write data has been
      --  transfered
      CH_WR_ACTIVE : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH3_CH_ACTIVE_REG_Register use record
      CH_RD_ACTIVE at 0 range 0 .. 0;
      CH_WR_ACTIVE at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype CH3_COUNT_REG_BUFF_COUNT_Field is HAL.UInt12;
   subtype CH3_COUNT_REG_INT_COUNT_Field is HAL.UInt4;

   --  Channel 3 Buffer Counter Status Register
   type CH3_COUNT_REG_Register is record
      --  Read-only. Number of buffers transferred by channel since started
      BUFF_COUNT     : CH3_COUNT_REG_BUFF_COUNT_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Number of unserviced end interrupts
      INT_COUNT      : CH3_COUNT_REG_INT_COUNT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_COUNT_REG_Register use record
      BUFF_COUNT     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INT_COUNT      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel 3 Interrupt Raw Status (Write 1 to any field to issue interrupt)
   type CH3_INT_RAWSTAT_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH3_INT_RAWSTAT_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 3 Interrupt Clear (Write 1 to clear)
   type CH3_INT_CLEAR_REG_Register is record
      --  Clear channel end interrupt. Decrements INT_COUNT register
      CH_END         : Boolean := False;
      --  Clear AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  Clear AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  Clears FIFO overflow
      FIFO_OVERFLOW  : Boolean := False;
      --  Clears FIFO underflow
      FIFO_UNDERFLOW : Boolean := False;
      --  Clears Read Timeout
      TIMEOUT_RD     : Boolean := False;
      --  Clears Write Timeout
      TIMEOUT_WR     : Boolean := False;
      --  Clears WDT
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH3_INT_CLEAR_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 3 Interrupt Enable
   type CH3_INT_ENABLE_REG_Register is record
      --  Enables end of channel interrupt
      CH_END         : Boolean := False;
      --  Enables AHB read slave error interrupt
      RD_SLVERR      : Boolean := False;
      --  Enables AHB write slave error interrupt
      WR_SLVERR      : Boolean := False;
      --  Enables FIFO overflow interrupt
      FIFO_OVERFLOW  : Boolean := False;
      --  Enables FIFO underflow interrupt
      FIFO_UNDERFLOW : Boolean := False;
      --  Enables AHB Read timeout interrupt
      TIMEOUT_RD     : Boolean := False;
      --  Enables AHB Write timeout interrupt
      TIMEOUT_WR     : Boolean := False;
      --  Enables WDT interrupt
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH3_INT_ENABLE_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Channel 3 Interrupt Status
   type CH3_INT_STATUS_REG_Register is record
      --  Indicates an unserviced channel end interrupt
      CH_END         : Boolean := False;
      --  AHB read slave error
      RD_SLVERR      : Boolean := False;
      --  AHB write slave error
      WR_SLVERR      : Boolean := False;
      --  FIFO has been overflown
      FIFO_OVERFLOW  : Boolean := False;
      --  FIFO has been underflown
      FIFO_UNDERFLOW : Boolean := False;
      --  Read timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_RD     : Boolean := False;
      --  Write timeout on AHB bus (timeout value fixed at 1024 cycles)
      TIMEOUT_WR     : Boolean := False;
      --  Channel active but did not start a burst for 2048 cycles
      WDT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CH3_INT_STATUS_REG_Register use record
      CH_END         at 0 range 0 .. 0;
      RD_SLVERR      at 0 range 1 .. 1;
      WR_SLVERR      at 0 range 2 .. 2;
      FIFO_OVERFLOW  at 0 range 3 .. 3;
      FIFO_UNDERFLOW at 0 range 4 .. 4;
      TIMEOUT_RD     at 0 range 5 .. 5;
      TIMEOUT_WR     at 0 range 6 .. 6;
      WDT            at 0 range 7 .. 7;
   end record;

   --  Indicates which channels caused interrupt
   type CORE_INT_STATUS_Register is record
      --  Read-only. Indicates channel 0 caused interrupt
      CHANNEL_0    : Boolean;
      --  Read-only. Indicates channel 1 caused interrupt
      CHANNEL_1    : Boolean;
      --  Read-only. Indicates channel 2 caused interrupt
      CHANNEL_2    : Boolean;
      --  Read-only. Indicates channel 3 caused interrupt
      CHANNEL_3    : Boolean;
      --  unspecified
      Reserved_4_7 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CORE_INT_STATUS_Register use record
      CHANNEL_0    at 0 range 0 .. 0;
      CHANNEL_1    at 0 range 1 .. 1;
      CHANNEL_2    at 0 range 2 .. 2;
      CHANNEL_3    at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype CORE_PRIORITY_RD_PRIO_TOP_NUM_Field is HAL.UInt3;
   subtype CORE_PRIORITY_RD_PRIO_HIGH_NUM_Field is HAL.UInt3;
   subtype CORE_PRIORITY_WR_PRIO_TOP_NUM_Field is HAL.UInt3;
   subtype CORE_PRIORITY_WR_PRIO_HIGH_NUM_Field is HAL.UInt3;

   --  Core Priority Channels
   type CORE_PRIORITY_Register is record
      --  Core Read Top Priority Channel Number
      RD_PRIO_TOP_NUM  : CORE_PRIORITY_RD_PRIO_TOP_NUM_Field := 16#0#;
      --  Core Read Top Priority Enable
      RD_PRIO_TOP      : Boolean := False;
      --  Core Read High Priority Channel Number
      RD_PRIO_HIGH_NUM : CORE_PRIORITY_RD_PRIO_HIGH_NUM_Field := 16#0#;
      --  Core Read High Priority Enable
      RD_PRIO_HIGH     : Boolean := False;
      --  Core Write Top Priority Channel Number
      WR_PRIO_TOP_NUM  : CORE_PRIORITY_WR_PRIO_TOP_NUM_Field := 16#0#;
      --  Core Write Top Priority Enable
      WR_PRIO_TOP      : Boolean := False;
      --  Core Write High Priority Channel Number
      WR_PRIO_HIGH_NUM : CORE_PRIORITY_WR_PRIO_HIGH_NUM_Field := 16#0#;
      --  Core Write High Priority Enable
      WR_PRIO_HIGH     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CORE_PRIORITY_Register use record
      RD_PRIO_TOP_NUM  at 0 range 0 .. 2;
      RD_PRIO_TOP      at 0 range 3 .. 3;
      RD_PRIO_HIGH_NUM at 0 range 4 .. 6;
      RD_PRIO_HIGH     at 0 range 7 .. 7;
      WR_PRIO_TOP_NUM  at 0 range 8 .. 10;
      WR_PRIO_TOP      at 0 range 11 .. 11;
      WR_PRIO_HIGH_NUM at 0 range 12 .. 14;
      WR_PRIO_HIGH     at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type CORE_CH_START_Register is record
      --  Write-only. Starts Channel 0
      CH_0         : Boolean := False;
      --  Write-only. Starts Channel 1
      CH_1         : Boolean := False;
      --  Write-only. Starts Channel 2
      CH_2         : Boolean := False;
      --  Write-only. Starts Channel 3
      CH_3         : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CORE_CH_START_Register use record
      CH_0         at 0 range 0 .. 0;
      CH_1         at 0 range 1 .. 1;
      CH_2         at 0 range 2 .. 2;
      CH_3         at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype PERIPH_RX_CTRL_RX_REQ_Field is HAL.UInt31;

   --  Direct control of peripheral RX request
   type PERIPH_RX_CTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Allows direct control of the peripheral RX request bus
      RX_REQ       : PERIPH_RX_CTRL_RX_REQ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERIPH_RX_CTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      RX_REQ       at 0 range 1 .. 31;
   end record;

   subtype PERIPH_TX_CTRL_TX_REQ_Field is HAL.UInt31;

   --  Direct control of peripheral TX request
   type PERIPH_TX_CTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Allows direct control of the peripheral TX request bus
      TX_REQ       : PERIPH_TX_CTRL_TX_REQ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERIPH_TX_CTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      TX_REQ       at 0 range 1 .. 31;
   end record;

   subtype USER_DEF_STATUS_INT_NUM_Field is HAL.UInt4;

   --  User Defined Configurations
   type USER_DEF_STATUS_Register is record
      --  Read-only. Number of bits in interrupt bus
      INT_NUM        : USER_DEF_STATUS_INT_NUM_Field;
      --  unspecified
      Reserved_4_4   : HAL.Bit;
      --  Read-only. If set the design has two cores
      DUAL_CORE      : Boolean;
      --  Read-only. If set an AHB matrix is used
      IC             : Boolean;
      --  Read-only. If set AHB matrix has two output ports
      IC_DUAL_PORT   : Boolean;
      --  Read-only. If set design contains functional clock gates
      CLKGATE        : Boolean;
      --  Read-only. If set AHB port 0 is using an AHB mux
      PORT0_MUX      : Boolean;
      --  Read-only. If set AHB port 1 is using an AHB mux
      PORT1_MUX      : Boolean;
      --  unspecified
      Reserved_11_30 : HAL.UInt20;
      --  Read-only. User Defined Project
      PROJ           : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USER_DEF_STATUS_Register use record
      INT_NUM        at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DUAL_CORE      at 0 range 5 .. 5;
      IC             at 0 range 6 .. 6;
      IC_DUAL_PORT   at 0 range 7 .. 7;
      CLKGATE        at 0 range 8 .. 8;
      PORT0_MUX      at 0 range 9 .. 9;
      PORT1_MUX      at 0 range 10 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      PROJ           at 0 range 31 .. 31;
   end record;

   subtype CORE_DEF_STATUS0_CH_NUM_Field is HAL.UInt4;
   subtype CORE_DEF_STATUS0_FIFO_SIZE_Field is HAL.UInt4;
   subtype CORE_DEF_STATUS0_WCMD_DEPTH_Field is HAL.UInt4;
   subtype CORE_DEF_STATUS0_RCMD_DEPTH_Field is HAL.UInt4;
   subtype CORE_DEF_STATUS0_ADDR_BITS_Field is HAL.UInt6;
   subtype CORE_DEF_STATUS0_BUFF_BITS_Field is HAL.UInt5;

   --  User Defined Core Configurations 0
   type CORE_DEF_STATUS0_Register is record
      --  Read-only. Number of channels (reads 1, should read 4)
      CH_NUM         : CORE_DEF_STATUS0_CH_NUM_Field;
      --  Read-only. Log2 of FIFO size per channel
      FIFO_SIZE      : CORE_DEF_STATUS0_FIFO_SIZE_Field;
      --  Read-only. Log2 of maximum number of pending write commands
      WCMD_DEPTH     : CORE_DEF_STATUS0_WCMD_DEPTH_Field;
      --  Read-only. Log2 of maximum number of pending read commands
      RCMD_DEPTH     : CORE_DEF_STATUS0_RCMD_DEPTH_Field;
      --  Read-only. Number of bits in address buses
      ADDR_BITS      : CORE_DEF_STATUS0_ADDR_BITS_Field;
      --  Read-only. If set AHB bus is 32 bit otherwise 64 bit
      AHB_BUS_32     : Boolean;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Number of bits in BUFFER_SIZE
      BUFF_BITS      : CORE_DEF_STATUS0_BUFF_BITS_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_DEF_STATUS0_Register use record
      CH_NUM         at 0 range 0 .. 3;
      FIFO_SIZE      at 0 range 4 .. 7;
      WCMD_DEPTH     at 0 range 8 .. 11;
      RCMD_DEPTH     at 0 range 12 .. 15;
      ADDR_BITS      at 0 range 16 .. 21;
      AHB_BUS_32     at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      BUFF_BITS      at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  User Defined Core Configurations 1
   type CORE_DEF_STATUS1_Register is record
      --  Read-only. Set if core has watchdog timer
      WDT            : Boolean;
      --  Read-only. Set if core supports timeouts on AHB read and write buses
      AHB_TIMEOUT    : Boolean;
      --  Read-only. Set if core has tokens support
      TOKENS         : Boolean;
      --  Read-only. Set if core has priority modes support
      PRIO           : Boolean;
      --  Read-only. Set if core supports outstanding mode
      OUTS           : Boolean;
      --  Read-only. Set if core supports scheduled channels
      WAIT           : Boolean;
      --  Read-only. Set if core supports block transfer
      BLOCK          : Boolean;
      --  Read-only. Set if core supports joint mode
      JOINT          : Boolean;
      --  Read-only. Set if core supports independent mode
      INDEPENDENT    : Boolean;
      --  Read-only. Set if core supports peripherals
      PERIPH         : Boolean;
      --  Read-only. Set if core supports command lists
      LISTS          : Boolean;
      --  Read-only. Set if core supports endianness swapping
      END_k          : Boolean;
      --  Read-only. Set if core supports clock division ratios
      CLKDIV         : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CORE_DEF_STATUS1_Register use record
      WDT            at 0 range 0 .. 0;
      AHB_TIMEOUT    at 0 range 1 .. 1;
      TOKENS         at 0 range 2 .. 2;
      PRIO           at 0 range 3 .. 3;
      OUTS           at 0 range 4 .. 4;
      WAIT           at 0 range 5 .. 5;
      BLOCK          at 0 range 6 .. 6;
      JOINT          at 0 range 7 .. 7;
      INDEPENDENT    at 0 range 8 .. 8;
      PERIPH         at 0 range 9 .. 9;
      LISTS          at 0 range 10 .. 10;
      END_k          at 0 range 11 .. 11;
      CLKDIV         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  4 Channel DMA Controller
   type PROV_DMA_CTRL0_Peripheral is record
      --  Channel 0 First Line Channel Command
      CH0_CMD_REG0          : aliased HAL.UInt32;
      --  Channel 0 Second Line Channel Command
      CH0_CMD_REG1          : aliased HAL.UInt32;
      --  Channel 0 Third Line Channel Command
      CH0_CMD_REG2          : aliased CH0_CMD_REG2_Register;
      --  Channel 0 Fourth Line Channel Command
      CH0_CMD_REG3          : aliased CH0_CMD_REG3_Register;
      --  Channel 0 Static Configuration Read
      CH0_STATIC_REG0       : aliased CH0_STATIC_REG0_Register;
      --  Channel 0 Static Configuration Write
      CH0_STATIC_REG1       : aliased CH0_STATIC_REG1_Register;
      --  Channel 0 Block Mode
      CH0_STATIC_REG2       : aliased CH0_STATIC_REG2_Register;
      --  Channel 0 Static Configuration Peripheral
      CH0_STATIC_REG4       : aliased CH0_STATIC_REG4_Register;
      --  Channel 0 Restrictions Status Register
      CH0_RESRICT_REG       : aliased CH0_RESRICT_REG_Register;
      --  Channel 0 FIFO Fullness Status Register
      CH0_FIFO_FULLNESS_REG : aliased CH0_FIFO_FULLNESS_REG_Register;
      --  Channel 0 Channel Enable Register
      CH0_CH_ENABLE_REG     : aliased HAL.UInt8;
      --  Channel 0 Channel Start Register
      CH0_CH_START_REG      : aliased HAL.UInt8;
      --  Channel 0 Channel Active Status Register
      CH0_CH_ACTIVE_REG     : aliased CH0_CH_ACTIVE_REG_Register;
      --  Channel 0 Buffer Counter Status Register
      CH0_COUNT_REG         : aliased CH0_COUNT_REG_Register;
      --  Channel 0 Interrupt Raw Status (Write 1 to any field to issue
      --  interrupt)
      CH0_INT_RAWSTAT_REG   : aliased CH0_INT_RAWSTAT_REG_Register;
      --  Channel 0 Interrupt Clear (Write 1 to clear)
      CH0_INT_CLEAR_REG     : aliased CH0_INT_CLEAR_REG_Register;
      --  Channel 0 Interrupt Enable
      CH0_INT_ENABLE_REG    : aliased CH0_INT_ENABLE_REG_Register;
      --  Channel 0 Interrupt Status
      CH0_INT_STATUS_REG    : aliased CH0_INT_STATUS_REG_Register;
      --  Channel 1 First Line Channel Command
      CH1_CMD_REG0          : aliased HAL.UInt32;
      --  Channel 1 Second Line Channel Command
      CH1_CMD_REG1          : aliased HAL.UInt32;
      --  Channel 1 Third Line Channel Command
      CH1_CMD_REG2          : aliased CH1_CMD_REG2_Register;
      --  Channel 1 Fourth Line Channel Command
      CH1_CMD_REG3          : aliased CH1_CMD_REG3_Register;
      --  Channel 1 Static Configuration Read
      CH1_STATIC_REG0       : aliased CH1_STATIC_REG0_Register;
      --  Channel 1 Static Configuration Write
      CH1_STATIC_REG1       : aliased CH1_STATIC_REG1_Register;
      --  Channel 1 Block Mode
      CH1_STATIC_REG2       : aliased CH1_STATIC_REG2_Register;
      --  Channel 1 Static Configuration Peripheral
      CH1_STATIC_REG4       : aliased CH1_STATIC_REG4_Register;
      --  Channel 1 Restrictions Status Register
      CH1_RESRICT_REG       : aliased CH1_RESRICT_REG_Register;
      --  Channel 1 FIFO Fullness Status Register
      CH1_FIFO_FULLNESS_REG : aliased CH1_FIFO_FULLNESS_REG_Register;
      --  Channel 1 Channel Enable Register
      CH1_CH_ENABLE_REG     : aliased HAL.UInt8;
      --  Channel 1 Channel Start Register
      CH1_CH_START_REG      : aliased HAL.UInt8;
      --  Channel 1 Channel Active Status Register
      CH1_CH_ACTIVE_REG     : aliased CH1_CH_ACTIVE_REG_Register;
      --  Channel 1 Buffer Counter Status Register
      CH1_COUNT_REG         : aliased CH1_COUNT_REG_Register;
      --  Channel 1 Interrupt Raw Status (Write 1 to any field to issue
      --  interrupt)
      CH1_INT_RAWSTAT_REG   : aliased CH1_INT_RAWSTAT_REG_Register;
      --  Channel 1 Interrupt Clear (Write 1 to clear)
      CH1_INT_CLEAR_REG     : aliased CH1_INT_CLEAR_REG_Register;
      --  Channel 1 Interrupt Enable
      CH1_INT_ENABLE_REG    : aliased CH1_INT_ENABLE_REG_Register;
      --  Channel 1 Interrupt Status
      CH1_INT_STATUS_REG    : aliased CH1_INT_STATUS_REG_Register;
      --  Channel 2 First Line Channel Command
      CH2_CMD_REG0          : aliased HAL.UInt32;
      --  Channel 2 Second Line Channel Command
      CH2_CMD_REG1          : aliased HAL.UInt32;
      --  Channel 2 Third Line Channel Command
      CH2_CMD_REG2          : aliased CH2_CMD_REG2_Register;
      --  Channel 2 Fourth Line Channel Command
      CH2_CMD_REG3          : aliased CH2_CMD_REG3_Register;
      --  Channel 2 Static Configuration Read
      CH2_STATIC_REG0       : aliased CH2_STATIC_REG0_Register;
      --  Channel 2 Static Configuration Write
      CH2_STATIC_REG1       : aliased CH2_STATIC_REG1_Register;
      --  Channel 2 Block Mode
      CH2_STATIC_REG2       : aliased CH2_STATIC_REG2_Register;
      --  Channel 2 Static Configuration Peripheral
      CH2_STATIC_REG4       : aliased CH2_STATIC_REG4_Register;
      --  Channel 2 Restrictions Status Register
      CH2_RESRICT_REG       : aliased CH2_RESRICT_REG_Register;
      --  Channel 2 FIFO Fullness Status Register
      CH2_FIFO_FULLNESS_REG : aliased CH2_FIFO_FULLNESS_REG_Register;
      --  Channel 2 Channel Enable Register
      CH2_CH_ENABLE_REG     : aliased HAL.UInt8;
      --  Channel 2 Channel Start Register
      CH2_CH_START_REG      : aliased HAL.UInt8;
      --  Channel 2 Channel Active Status Register
      CH2_CH_ACTIVE_REG     : aliased CH2_CH_ACTIVE_REG_Register;
      --  Channel 2 Buffer Counter Status Register
      CH2_COUNT_REG         : aliased CH2_COUNT_REG_Register;
      --  Channel 2 Interrupt Raw Status (Write 1 to any field to issue
      --  interrupt)
      CH2_INT_RAWSTAT_REG   : aliased CH2_INT_RAWSTAT_REG_Register;
      --  Channel 2 Interrupt Clear (Write 1 to clear)
      CH2_INT_CLEAR_REG     : aliased CH2_INT_CLEAR_REG_Register;
      --  Channel 2 Interrupt Enable
      CH2_INT_ENABLE_REG    : aliased CH2_INT_ENABLE_REG_Register;
      --  Channel 2 Interrupt Status
      CH2_INT_STATUS_REG    : aliased CH2_INT_STATUS_REG_Register;
      --  Channel 3 First Line Channel Command
      CH3_CMD_REG0          : aliased HAL.UInt32;
      --  Channel 3 Second Line Channel Command
      CH3_CMD_REG1          : aliased HAL.UInt32;
      --  Channel 3 Third Line Channel Command
      CH3_CMD_REG2          : aliased CH3_CMD_REG2_Register;
      --  Channel 3 Fourth Line Channel Command
      CH3_CMD_REG3          : aliased CH3_CMD_REG3_Register;
      --  Channel 3 Static Configuration Read
      CH3_STATIC_REG0       : aliased CH3_STATIC_REG0_Register;
      --  Channel 3 Static Configuration Write
      CH3_STATIC_REG1       : aliased CH3_STATIC_REG1_Register;
      --  Channel 3 Block Mode
      CH3_STATIC_REG2       : aliased CH3_STATIC_REG2_Register;
      --  Channel 3 Static Configuration Peripheral
      CH3_STATIC_REG4       : aliased CH3_STATIC_REG4_Register;
      --  Channel 3 Restrictions Status Register
      CH3_RESRICT_REG       : aliased CH3_RESRICT_REG_Register;
      --  Channel 3 FIFO Fullness Status Register
      CH3_FIFO_FULLNESS_REG : aliased CH3_FIFO_FULLNESS_REG_Register;
      --  Channel 3 Channel Enable Register
      CH3_CH_ENABLE_REG     : aliased HAL.UInt8;
      --  Channel 3 Channel Start Register
      CH3_CH_START_REG      : aliased HAL.UInt8;
      --  Channel 3 Channel Active Status Register
      CH3_CH_ACTIVE_REG     : aliased CH3_CH_ACTIVE_REG_Register;
      --  Channel 3 Buffer Counter Status Register
      CH3_COUNT_REG         : aliased CH3_COUNT_REG_Register;
      --  Channel 3 Interrupt Raw Status (Write 1 to any field to issue
      --  interrupt)
      CH3_INT_RAWSTAT_REG   : aliased CH3_INT_RAWSTAT_REG_Register;
      --  Channel 3 Interrupt Clear (Write 1 to clear)
      CH3_INT_CLEAR_REG     : aliased CH3_INT_CLEAR_REG_Register;
      --  Channel 3 Interrupt Enable
      CH3_INT_ENABLE_REG    : aliased CH3_INT_ENABLE_REG_Register;
      --  Channel 3 Interrupt Status
      CH3_INT_STATUS_REG    : aliased CH3_INT_STATUS_REG_Register;
      --  Indicates which channels caused interrupt
      CORE_INT_STATUS       : aliased CORE_INT_STATUS_Register;
      --  If set, core works in joint mode
      CORE_JOINT_MODE       : aliased HAL.UInt8;
      --  Core Priority Channels
      CORE_PRIORITY         : aliased CORE_PRIORITY_Register;
      --  Ratio between main clock and core clock
      CORE_CLKDIV           : aliased HAL.UInt8;
      --  Channel Start
      CORE_CH_START         : aliased CORE_CH_START_Register;
      --  Direct control of peripheral RX request
      PERIPH_RX_CTRL        : aliased PERIPH_RX_CTRL_Register;
      --  Direct control of peripheral TX request
      PERIPH_TX_CTRL        : aliased PERIPH_TX_CTRL_Register;
      --  Indicates all channels have stopped and transactions have completed
      CORE_IDLE             : aliased HAL.UInt8;
      --  User Defined Configurations
      USER_DEF_STATUS       : aliased USER_DEF_STATUS_Register;
      --  User Defined Core Configurations 0
      CORE_DEF_STATUS0      : aliased CORE_DEF_STATUS0_Register;
      --  User Defined Core Configurations 1
      CORE_DEF_STATUS1      : aliased CORE_DEF_STATUS1_Register;
   end record
     with Volatile;

   for PROV_DMA_CTRL0_Peripheral use record
      CH0_CMD_REG0          at 16#0# range 0 .. 31;
      CH0_CMD_REG1          at 16#4# range 0 .. 31;
      CH0_CMD_REG2          at 16#8# range 0 .. 15;
      CH0_CMD_REG3          at 16#C# range 0 .. 31;
      CH0_STATIC_REG0       at 16#10# range 0 .. 31;
      CH0_STATIC_REG1       at 16#14# range 0 .. 31;
      CH0_STATIC_REG2       at 16#18# range 0 .. 31;
      CH0_STATIC_REG4       at 16#20# range 0 .. 31;
      CH0_RESRICT_REG       at 16#2C# range 0 .. 15;
      CH0_FIFO_FULLNESS_REG at 16#38# range 0 .. 31;
      CH0_CH_ENABLE_REG     at 16#40# range 0 .. 7;
      CH0_CH_START_REG      at 16#44# range 0 .. 7;
      CH0_CH_ACTIVE_REG     at 16#48# range 0 .. 7;
      CH0_COUNT_REG         at 16#50# range 0 .. 31;
      CH0_INT_RAWSTAT_REG   at 16#A0# range 0 .. 7;
      CH0_INT_CLEAR_REG     at 16#A4# range 0 .. 7;
      CH0_INT_ENABLE_REG    at 16#A8# range 0 .. 7;
      CH0_INT_STATUS_REG    at 16#AC# range 0 .. 7;
      CH1_CMD_REG0          at 16#100# range 0 .. 31;
      CH1_CMD_REG1          at 16#104# range 0 .. 31;
      CH1_CMD_REG2          at 16#108# range 0 .. 15;
      CH1_CMD_REG3          at 16#10C# range 0 .. 31;
      CH1_STATIC_REG0       at 16#110# range 0 .. 31;
      CH1_STATIC_REG1       at 16#114# range 0 .. 31;
      CH1_STATIC_REG2       at 16#118# range 0 .. 31;
      CH1_STATIC_REG4       at 16#120# range 0 .. 31;
      CH1_RESRICT_REG       at 16#12C# range 0 .. 15;
      CH1_FIFO_FULLNESS_REG at 16#138# range 0 .. 31;
      CH1_CH_ENABLE_REG     at 16#140# range 0 .. 7;
      CH1_CH_START_REG      at 16#144# range 0 .. 7;
      CH1_CH_ACTIVE_REG     at 16#148# range 0 .. 7;
      CH1_COUNT_REG         at 16#150# range 0 .. 31;
      CH1_INT_RAWSTAT_REG   at 16#1A0# range 0 .. 7;
      CH1_INT_CLEAR_REG     at 16#1A4# range 0 .. 7;
      CH1_INT_ENABLE_REG    at 16#1A8# range 0 .. 7;
      CH1_INT_STATUS_REG    at 16#1AC# range 0 .. 7;
      CH2_CMD_REG0          at 16#200# range 0 .. 31;
      CH2_CMD_REG1          at 16#204# range 0 .. 31;
      CH2_CMD_REG2          at 16#208# range 0 .. 15;
      CH2_CMD_REG3          at 16#20C# range 0 .. 31;
      CH2_STATIC_REG0       at 16#210# range 0 .. 31;
      CH2_STATIC_REG1       at 16#214# range 0 .. 31;
      CH2_STATIC_REG2       at 16#218# range 0 .. 31;
      CH2_STATIC_REG4       at 16#220# range 0 .. 31;
      CH2_RESRICT_REG       at 16#22C# range 0 .. 15;
      CH2_FIFO_FULLNESS_REG at 16#238# range 0 .. 31;
      CH2_CH_ENABLE_REG     at 16#240# range 0 .. 7;
      CH2_CH_START_REG      at 16#244# range 0 .. 7;
      CH2_CH_ACTIVE_REG     at 16#248# range 0 .. 7;
      CH2_COUNT_REG         at 16#250# range 0 .. 31;
      CH2_INT_RAWSTAT_REG   at 16#2A0# range 0 .. 7;
      CH2_INT_CLEAR_REG     at 16#2A4# range 0 .. 7;
      CH2_INT_ENABLE_REG    at 16#2A8# range 0 .. 7;
      CH2_INT_STATUS_REG    at 16#2AC# range 0 .. 7;
      CH3_CMD_REG0          at 16#300# range 0 .. 31;
      CH3_CMD_REG1          at 16#304# range 0 .. 31;
      CH3_CMD_REG2          at 16#308# range 0 .. 15;
      CH3_CMD_REG3          at 16#30C# range 0 .. 31;
      CH3_STATIC_REG0       at 16#310# range 0 .. 31;
      CH3_STATIC_REG1       at 16#314# range 0 .. 31;
      CH3_STATIC_REG2       at 16#318# range 0 .. 31;
      CH3_STATIC_REG4       at 16#320# range 0 .. 31;
      CH3_RESRICT_REG       at 16#32C# range 0 .. 15;
      CH3_FIFO_FULLNESS_REG at 16#338# range 0 .. 31;
      CH3_CH_ENABLE_REG     at 16#340# range 0 .. 7;
      CH3_CH_START_REG      at 16#344# range 0 .. 7;
      CH3_CH_ACTIVE_REG     at 16#348# range 0 .. 7;
      CH3_COUNT_REG         at 16#350# range 0 .. 31;
      CH3_INT_RAWSTAT_REG   at 16#3A0# range 0 .. 7;
      CH3_INT_CLEAR_REG     at 16#3A4# range 0 .. 7;
      CH3_INT_ENABLE_REG    at 16#3A8# range 0 .. 7;
      CH3_INT_STATUS_REG    at 16#3AC# range 0 .. 7;
      CORE_INT_STATUS       at 16#800# range 0 .. 7;
      CORE_JOINT_MODE       at 16#830# range 0 .. 7;
      CORE_PRIORITY         at 16#838# range 0 .. 15;
      CORE_CLKDIV           at 16#840# range 0 .. 7;
      CORE_CH_START         at 16#848# range 0 .. 7;
      PERIPH_RX_CTRL        at 16#850# range 0 .. 31;
      PERIPH_TX_CTRL        at 16#860# range 0 .. 31;
      CORE_IDLE             at 16#8D0# range 0 .. 7;
      USER_DEF_STATUS       at 16#8E0# range 0 .. 31;
      CORE_DEF_STATUS0      at 16#8F0# range 0 .. 31;
      CORE_DEF_STATUS1      at 16#8F4# range 0 .. 15;
   end record;

   --  4 Channel DMA Controller
   PROV_DMA_CTRL0_Periph : aliased PROV_DMA_CTRL0_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

end SAM_SVD.PROV_DMA_CTRL;
