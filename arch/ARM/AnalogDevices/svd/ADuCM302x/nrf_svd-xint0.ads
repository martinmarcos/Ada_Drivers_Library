--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.XINT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CFG0_IRQ0MDE_Field is HAL.UInt3;
   subtype CFG0_IRQ1MDE_Field is HAL.UInt3;
   subtype CFG0_IRQ2MDE_Field is HAL.UInt3;
   subtype CFG0_IRQ3MDE_Field is HAL.UInt3;
   subtype CFG0_UART_RX_MDE_Field is HAL.UInt3;

   --  External Interrupt Configuration
   type CFG0_Register is record
      --  External Interrupt 0 Mode Registers
      IRQ0MDE        : CFG0_IRQ0MDE_Field := 16#0#;
      --  External Interrupt 0 Enable Bit
      IRQ0EN         : Boolean := False;
      --  External Interrupt 1 Mode Registers
      IRQ1MDE        : CFG0_IRQ1MDE_Field := 16#0#;
      --  External Interrupt 1 Enable Bit
      IRQ1EN         : Boolean := False;
      --  External Interrupt 2 Mode Registers
      IRQ2MDE        : CFG0_IRQ2MDE_Field := 16#0#;
      --  External Interrupt 2 Enable Bit
      IRQ2EN         : Boolean := False;
      --  External Interrupt 3 Mode Registers
      IRQ3MDE        : CFG0_IRQ3MDE_Field := 16#0#;
      --  External Interrupt 3 Enable Bit
      IRQ3EN         : Boolean := False;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  External Interrupt Enable Bit
      UART_RX_EN     : Boolean := False;
      --  External Interrupt Using UART_RX Wakeup Mode Registers
      UART_RX_MDE    : CFG0_UART_RX_MDE_Field := 16#1#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG0_Register use record
      IRQ0MDE        at 0 range 0 .. 2;
      IRQ0EN         at 0 range 3 .. 3;
      IRQ1MDE        at 0 range 4 .. 6;
      IRQ1EN         at 0 range 7 .. 7;
      IRQ2MDE        at 0 range 8 .. 10;
      IRQ2EN         at 0 range 11 .. 11;
      IRQ3MDE        at 0 range 12 .. 14;
      IRQ3EN         at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      UART_RX_EN     at 0 range 20 .. 20;
      UART_RX_MDE    at 0 range 21 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  EXT_STAT_STAT_EXTINT array
   type EXT_STAT_STAT_EXTINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXT_STAT_STAT_EXTINT
   type EXT_STAT_STAT_EXTINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STAT_EXTINT as a value
            Val : HAL.UInt4;
         when True =>
            --  STAT_EXTINT as an array
            Arr : EXT_STAT_STAT_EXTINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXT_STAT_STAT_EXTINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  External Wakeup Interrupt Status
   type EXT_STAT_Register is record
      --  Read-only. Interrupt Status Bit for External Interrupt 0
      STAT_EXTINT      : EXT_STAT_STAT_EXTINT_Field;
      --  unspecified
      Reserved_4_4     : HAL.Bit;
      --  Read-only. Interrupt Status Bit for UART RX Wakeup Interrupt
      STAT_UART_RXWKUP : Boolean;
      --  unspecified
      Reserved_6_31    : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_STAT_Register use record
      STAT_EXTINT      at 0 range 0 .. 3;
      Reserved_4_4     at 0 range 4 .. 4;
      STAT_UART_RXWKUP at 0 range 5 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   --  CLR_IRQ array
   type CLR_IRQ_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CLR_IRQ
   type CLR_IRQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt4;
         when True =>
            --  IRQ as an array
            Arr : CLR_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CLR_IRQ_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  External Interrupt Clear
   type CLR_Register is record
      --  External Interrupt 0
      IRQ           : CLR_IRQ_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  External Interrupt Clear for UART_RX Wakeup Interrupt
      UART_RX_CLR   : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_Register use record
      IRQ           at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      UART_RX_CLR   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Non-Maskable Interrupt Clear
   type NMICLR_Register is record
      --  NMI Clear
      CLR           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMICLR_Register use record
      CLR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External interrupt configuration
   type XINT0_Peripheral is record
      --  External Interrupt Configuration
      CFG0     : aliased CFG0_Register;
      --  External Wakeup Interrupt Status
      EXT_STAT : aliased EXT_STAT_Register;
      --  External Interrupt Clear
      CLR      : aliased CLR_Register;
      --  Non-Maskable Interrupt Clear
      NMICLR   : aliased NMICLR_Register;
   end record
     with Volatile;

   for XINT0_Peripheral use record
      CFG0     at 16#0# range 0 .. 31;
      EXT_STAT at 16#4# range 0 .. 31;
      CLR      at 16#10# range 0 .. 31;
      NMICLR   at 16#14# range 0 .. 31;
   end record;

   --  External interrupt configuration
   XINT0_Periph : aliased XINT0_Peripheral
     with Import, Address => System'To_Address (16#4004C080#);

end NRF_SVD.XINT0;
