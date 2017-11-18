--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RBR_THR_DLL_RBR_THR_DLL_Field is HAL.UInt8;

   --  RBR THR DLL
   type RBR_THR_DLL_Register is record
      --  RBR_THR_DLL
      RBR_THR_DLL   : RBR_THR_DLL_RBR_THR_DLL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBR_THR_DLL_Register use record
      RBR_THR_DLL   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  UART Interrupt Enable Register
   type IER_DLM_Register is record
      --  Data Ready Interrupt Enable/Disable
      DRIE          : Boolean := False;
      --  Transmit holding register empty interrupt enable
      THREIE        : Boolean := False;
      --  receiver line status interrupt enable
      RLSIE         : Boolean := False;
      --  not used
      MSIE          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_DLM_Register use record
      DRIE          at 0 range 0 .. 0;
      THREIE        at 0 range 1 .. 1;
      RLSIE         at 0 range 2 .. 2;
      MSIE          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IIR_IID_FID_Field is HAL.UInt3;
   subtype IIR_FIFO_Field is HAL.UInt2;

   --  UART Interrupt ID Register
   type IIR_Register is record
      --  Read-only. Interrupt pending bit
      IPEN          : Boolean;
      --  Read-only. Interrupt source ID
      IID_FID       : IIR_IID_FID_Field;
      --  unspecified
      Reserved_4_5  : HAL.UInt2;
      --  Read-only. Current UART operation FIFO mode
      FIFO          : IIR_FIFO_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IIR_Register use record
      IPEN          at 0 range 0 .. 0;
      IID_FID       at 0 range 1 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FIFO          at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FCR array
   type FCR_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FCR
   type FCR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCR as a value
            Val : HAL.UInt2;
         when True =>
            --  FCR as an array
            Arr : FCR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FCR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FIFO Control Register
   type FCR_Register is record
      --  Write-only. Enable transmit/receive FIFO
      FIFOEN        : Boolean := False;
      --  Write-only. Initialize receive FIFO
      FCR           : FCR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  Write-only. Receive FIFO trigger level
      FIFODEPTH     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      FIFOEN        at 0 range 0 .. 0;
      FCR           at 0 range 1 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      FIFODEPTH     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LCR_DLEN_Field is HAL.UInt2;

   --  UART Line Control Register
   type LCR_Register is record
      --  Data length in one transfer word
      DLEN          : LCR_DLEN_Field := 16#0#;
      --  1-(1.5,2) stop bits
      STOPBIT       : Boolean := False;
      --  Enable Parity
      PEN           : Boolean := False;
      --  OddEven Parity
      PARITY        : Boolean := False;
      --  Stick Parity as L-H
      STICKP        : Boolean := False;
      --  Normal Transmission-Send Break
      BREAK         : Boolean := False;
      --  Norma Transmission-Divisor Latch Access Mode
      DLAB          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCR_Register use record
      DLEN          at 0 range 0 .. 1;
      STOPBIT       at 0 range 2 .. 2;
      PEN           at 0 range 3 .. 3;
      PARITY        at 0 range 4 .. 4;
      STICKP        at 0 range 5 .. 5;
      BREAK         at 0 range 6 .. 6;
      DLAB          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  UART Line Status Register
   type LSR_Register is record
      --  Read-only. Data recevied
      DR            : Boolean;
      --  Read-only. overrun error
      OE            : Boolean;
      --  Read-only. parity error
      PE            : Boolean;
      --  Read-only. frame error
      FE            : Boolean;
      --  Read-only. break condition indication bit
      BI            : Boolean;
      --  Read-only. THR Empty
      THRE          : Boolean;
      --  Read-only. Transmitter Empty
      TEMT          : Boolean;
      --  Read-only. FIFO has invalid data
      FIFOE         : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSR_Register use record
      DR            at 0 range 0 .. 0;
      OE            at 0 range 1 .. 1;
      PE            at 0 range 2 .. 2;
      FE            at 0 range 3 .. 3;
      BI            at 0 range 4 .. 4;
      THRE          at 0 range 5 .. 5;
      TEMT          at 0 range 6 .. 6;
      FIFOE         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SCR_SCR_Field is HAL.UInt8;

   --  UART Scratch Register
   type SCR_Register is record
      --  This register is used to store a data temporarily by software
      --  programmer
      SCR           : SCR_SCR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      SCR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UART0_Disc is
     (
      Mode_1,
      Mode_2);

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   type UART_Peripheral
     (Discriminent : UART0_Disc := Mode_1)
   is record
      --  RBR THR DLL
      RBR_THR_DLL : aliased RBR_THR_DLL_Register;
      --  UART Interrupt Enable Register
      IER_DLM     : aliased IER_DLM_Register;
      --  UART Line Control Register
      LCR         : aliased LCR_Register;
      --  UART Line Status Register
      LSR         : aliased LSR_Register;
      --  UART Scratch Register
      SCR         : aliased SCR_Register;
      case Discriminent is
         when Mode_1 =>
            --  UART Interrupt ID Register
            IIR : aliased IIR_Register;
         when Mode_2 =>
            --  FIFO Control Register
            FCR : aliased FCR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART_Peripheral use record
      RBR_THR_DLL at 16#0# range 0 .. 31;
      IER_DLM     at 16#4# range 0 .. 31;
      LCR         at 16#C# range 0 .. 31;
      LSR         at 16#14# range 0 .. 31;
      SCR         at 16#1C# range 0 .. 31;
      IIR         at 16#8# range 0 .. 31;
      FCR         at 16#8# range 0 .. 31;
   end record;

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40000B00#);

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40000B40#);

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   UART2_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40000B80#);

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   UART3_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40000BC0#);

end NRF_SVD.UART;
