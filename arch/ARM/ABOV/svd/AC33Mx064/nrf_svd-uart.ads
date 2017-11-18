--

--  This spec has been automatically generated from AC33Mx064.svd

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

   subtype RBR_RBR_Field is HAL.UInt8;

   --  Receive Buffer Register
   type RBR_Register is record
      --  Read-only. recevied/transmit data
      RBR           : RBR_RBR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBR_Register use record
      RBR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype THR_THR_Field is HAL.UInt8;

   --  Transmit Data Hold Register
   type THR_Register is record
      --  Write-only. recevied/transmit data
      THR           : THR_THR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR_Register use record
      THR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  UART Interrupt Enable Register
   type IER_Register is record
      --  Data receive interrupt enable
      DRIE          : Boolean := False;
      --  Transmit holding register empty interrupt enable
      THREIE        : Boolean := False;
      --  receiver line status interrupt enable
      RLSIE         : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  DMA Receiver line status interrupt enable
      DRXIEN        : Boolean := False;
      --  DMA transmit done interrupt enable
      DTXIEN        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      DRIE          at 0 range 0 .. 0;
      THREIE        at 0 range 1 .. 1;
      RLSIE         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DRXIEN        at 0 range 4 .. 4;
      DTXIEN        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IIR_IID_Field is HAL.UInt3;

   --  UART Interrupt ID Register
   type IIR_Register is record
      --  Interrupt pending bit
      IPEN          : Boolean := False;
      --  Interrupt source ID
      IID           : IIR_IID_Field := 16#0#;
      --  Interrupt source ID
      TXE           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IIR_Register use record
      IPEN          at 0 range 0 .. 0;
      IID           at 0 range 1 .. 3;
      TXE           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LCR_DLEN_Field is HAL.UInt2;

   --  UART Line Control Register
   type LCR_Register is record
      --  Data length in one transfer word
      DLEN          : LCR_DLEN_Field := 16#0#;
      --  STOPBIT
      STOPBIT       : Boolean := False;
      --  parity bit transfer enable
      PEN           : Boolean := False;
      --  PARITY
      PARITY        : Boolean := False;
      --  STICK
      STICKP        : Boolean := False;
      --  BREAK
      BREAK         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
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
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  UART Data Control Register
   type DCR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  TX Data Inversion selection
      TXINV         : Boolean := False;
      --  Rx Data Inversion selection
      RXINV         : Boolean := False;
      --  Local loopback test mode enable
      LBON          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      TXINV         at 0 range 2 .. 2;
      RXINV         at 0 range 3 .. 3;
      LBON          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  UART Line Status Register
   type LSR_Register is record
      --  Data recevied
      DR            : Boolean := False;
      --  overrun error
      OE            : Boolean := False;
      --  parity error
      PE            : Boolean := False;
      --  frame error
      FE            : Boolean := False;
      --  break condition indication bit
      BI            : Boolean := False;
      --  Transmit holding register empty
      THRE          : Boolean := True;
      --  Transmit empty
      TEMT          : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
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
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype BDR_BDR_Field is HAL.UInt16;

   --  Baud rate Divisor Latch Register
   type BDR_Register is record
      --  baudrate setting
      BDR            : BDR_BDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDR_Register use record
      BDR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BFR_BFR_Field is HAL.UInt8;

   --  Baud rate Fraction Counter Register
   type BFR_Register is record
      --  Fraction counter value
      BFR           : BFR_BFR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFR_Register use record
      BFR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IDTR_WAITVAL_Field is HAL.UInt3;

   --  Inter-frame Delay Time Register
   type IDTR_Register is record
      --  wait time is decied by this value
      WAITVAL       : IDTR_WAITVAL_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDTR_Register use record
      WAITVAL       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type U0_Disc is
     (
      Mode_1,
      Mode_2);

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   type UART_Peripheral
     (Discriminent : U0_Disc := Mode_1)
   is record
      --  UART Interrupt Enable Register
      IER  : aliased IER_Register;
      --  UART Interrupt ID Register
      IIR  : aliased IIR_Register;
      --  UART Line Control Register
      LCR  : aliased LCR_Register;
      --  UART Data Control Register
      DCR  : aliased DCR_Register;
      --  UART Line Status Register
      LSR  : aliased LSR_Register;
      --  Baud rate Divisor Latch Register
      BDR  : aliased BDR_Register;
      --  Baud rate Fraction Counter Register
      BFR  : aliased BFR_Register;
      --  Inter-frame Delay Time Register
      IDTR : aliased IDTR_Register;
      case Discriminent is
         when Mode_1 =>
            --  Receive Buffer Register
            RBR : aliased RBR_Register;
         when Mode_2 =>
            --  Transmit Data Hold Register
            THR : aliased THR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UART_Peripheral use record
      IER  at 16#4# range 0 .. 31;
      IIR  at 16#8# range 0 .. 31;
      LCR  at 16#C# range 0 .. 31;
      DCR  at 16#10# range 0 .. 31;
      LSR  at 16#14# range 0 .. 31;
      BDR  at 16#20# range 0 .. 31;
      BFR  at 16#24# range 0 .. 31;
      IDTR at 16#30# range 0 .. 31;
      RBR  at 16#0# range 0 .. 31;
      THR  at 16#0# range 0 .. 31;
   end record;

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   U0_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40008000#);

   --  UNIVERSAL ASYNCHRONOUS RECEIVER/TRANSMITTER
   U1_Periph : aliased UART_Peripheral
     with Import, Address => System'To_Address (16#40008100#);

end NRF_SVD.UART;
