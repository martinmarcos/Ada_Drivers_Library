--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SMARTCARD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DLL_DLLSB_Field is HAL.UInt8;

   --  Divisor Latch LSB
   type DLL_Register is record
      --  The SCIn Divisor Latch LSB Register, along with the SCInDLM register,
      --  determines the baud rate of the SCIn.
      DLLSB         : DLL_DLLSB_Field := 16#1#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLL_Register use record
      DLLSB         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RBR_RBR_Field is HAL.UInt8;

   --  Receiver Buffer Register
   type RBR_Register is record
      --  Read-only. The SCIn Receiver Buffer Register contains the oldest
      --  received byte in the SCIn Rx FIFO.
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

   --  Transmit Holding Register
   type THR_Register is record
      --  Write-only. Writing to the SCIn Transmit Holding Register causes the
      --  data to be stored in the SCIn transmit FIFO.
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

   subtype DLM_DLMSB_Field is HAL.UInt8;

   --  Divisor Latch MSB
   type DLM_Register is record
      --  The SCIn Divisor Latch MSB Register, along with the DLL register,
      --  determines the baud rate of the SCIn.
      DLMSB         : DLM_DLMSB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLM_Register use record
      DLMSB         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type IER_Register is record
      --  RBR Interrupt Enable.
      RBRIE         : Boolean := False;
      --  THRE Interrupt Enable.
      THREIE        : Boolean := False;
      --  RX Line Status Interrupt Enable.
      RXIE          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RBRIE         at 0 range 0 .. 0;
      THREIE        at 0 range 1 .. 1;
      RXIE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FCR_RXTRIGLVL_Field is HAL.UInt2;

   --  FIFO Control Register
   type FCR_Register is record
      --  Write-only. FIFO Enable.
      FIFOEN        : Boolean := False;
      --  Write-only. RX FIFO Reset.
      RXFIFORES     : Boolean := False;
      --  Write-only. TX FIFO Reset.
      TXFIFORES     : Boolean := False;
      --  Write-only. DMA Mode Select.
      DMAMODE       : Boolean := False;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Write-only. RX Trigger Level.
      RXTRIGLVL     : FCR_RXTRIGLVL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      FIFOEN        at 0 range 0 .. 0;
      RXFIFORES     at 0 range 1 .. 1;
      TXFIFORES     at 0 range 2 .. 2;
      DMAMODE       at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      RXTRIGLVL     at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IIR_INTID_Field is HAL.UInt3;
   subtype IIR_FIFOENABLE_Field is HAL.UInt2;

   --  Interrupt ID Register
   type IIR_Register is record
      --  Read-only. Interrupt status.
      INTSTATUS     : Boolean;
      --  Read-only. Interrupt identification.
      INTID         : IIR_INTID_Field;
      --  unspecified
      Reserved_4_5  : HAL.UInt2;
      --  Read-only. Copies of SCInFCR[0].
      FIFOENABLE    : IIR_FIFOENABLE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IIR_Register use record
      INTSTATUS     at 0 range 0 .. 0;
      INTID         at 0 range 1 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FIFOENABLE    at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LCR_WLS_Field is HAL.UInt2;
   subtype LCR_PS_Field is HAL.UInt2;

   --  Line Control Register
   type LCR_Register is record
      --  Word Length Select.
      WLS           : LCR_WLS_Field := 16#0#;
      --  Stop Bit Select.
      SBS           : Boolean := False;
      --  Parity Enable.
      PE            : Boolean := False;
      --  Parity Select.
      PS            : LCR_PS_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Divisor Latch Access Bit.
      DLAB          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCR_Register use record
      WLS           at 0 range 0 .. 1;
      SBS           at 0 range 2 .. 2;
      PE            at 0 range 3 .. 3;
      PS            at 0 range 4 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      DLAB          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Line Status Register
   type LSR_Register is record
      --  Read-only. Receiver Data Ready.
      RDR           : Boolean;
      --  Read-only. Overrun Error.
      OE            : Boolean;
      --  Read-only. Parity Error.
      PE            : Boolean;
      --  Read-only. Framing Error.
      FE            : Boolean;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Transmitter Holding Register Empty.
      THRE          : Boolean;
      --  Read-only. Transmitter Empty.
      TEMT          : Boolean;
      --  Read-only. Error in RX FIFO.
      RXFE          : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSR_Register use record
      RDR           at 0 range 0 .. 0;
      OE            at 0 range 1 .. 1;
      PE            at 0 range 2 .. 2;
      FE            at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      THRE          at 0 range 5 .. 5;
      TEMT          at 0 range 6 .. 6;
      RXFE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SCR_PAD_Field is HAL.UInt8;

   --  Scratch Pad Register
   type SCR_Register is record
      --  A readable, writable byte.
      PAD           : SCR_PAD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      PAD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype OSR_OSFRAC_Field is HAL.UInt3;
   subtype OSR_OSINT_Field is HAL.UInt4;
   subtype OSR_FDINT_Field is HAL.UInt7;

   --  Oversampling register
   type OSR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Fractional part of the oversampling ratio, in units of 1/8th of an
      --  input clock period.
      OSFRAC         : OSR_OSFRAC_Field := 16#0#;
      --  Integer part of the oversampling ratio, minus 1.
      OSINT          : OSR_OSINT_Field := 16#F#;
      --  These bits act as a more-significant extension of the OSint field,
      --  allowing an oversampling ratio up to 2048 as required by ISO7816-3.
      FDINT          : OSR_FDINT_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      OSFRAC         at 0 range 1 .. 3;
      OSINT          at 0 range 4 .. 7;
      FDINT          at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SCICTRL_TXRETRY_Field is HAL.UInt3;
   subtype SCICTRL_GUARDTIME_Field is HAL.UInt8;

   --  Smart Card Interface control register
   type SCICTRL_Register is record
      --  Smart Card Interface Enable.
      SCIEN          : Boolean := False;
      --  NACK response disable.
      NACKDIS        : Boolean := False;
      --  Protocol selection as defined in the ISO7816-3 standard.
      PROTSEL        : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Maximum number of retransmissions in case of a negative acknowledge
      --  (protocol T=0).
      TXRETRY        : SCICTRL_TXRETRY_Field := 16#0#;
      --  Extra guard time.
      GUARDTIME      : SCICTRL_GUARDTIME_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCICTRL_Register use record
      SCIEN          at 0 range 0 .. 0;
      NACKDIS        at 0 range 1 .. 1;
      PROTSEL        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TXRETRY        at 0 range 5 .. 7;
      GUARDTIME      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SMARTCARD_Disc is
     (
      Mode_1,
      Mode_2,
      Mode_3);

   --  LPC5460x/LPC54S60x Smart Card Interface
   type SMARTCARD_Peripheral
     (Discriminent : SMARTCARD_Disc := Mode_1)
   is record
      --  Line Control Register
      LCR     : aliased LCR_Register;
      --  Line Status Register
      LSR     : aliased LSR_Register;
      --  Scratch Pad Register
      SCR     : aliased SCR_Register;
      --  Oversampling register
      OSR     : aliased OSR_Register;
      --  Smart Card Interface control register
      SCICTRL : aliased SCICTRL_Register;
      case Discriminent is
         when Mode_1 =>
            --  Divisor Latch LSB
            DLL : aliased DLL_Register;
            --  Divisor Latch MSB
            DLM : aliased DLM_Register;
            --  FIFO Control Register
            FCR : aliased FCR_Register;
         when Mode_2 =>
            --  Receiver Buffer Register
            RBR : aliased RBR_Register;
            --  Interrupt Enable Register
            IER : aliased IER_Register;
            --  Interrupt ID Register
            IIR : aliased IIR_Register;
         when Mode_3 =>
            --  Transmit Holding Register
            THR : aliased THR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SMARTCARD_Peripheral use record
      LCR     at 16#C# range 0 .. 31;
      LSR     at 16#14# range 0 .. 31;
      SCR     at 16#1C# range 0 .. 31;
      OSR     at 16#2C# range 0 .. 31;
      SCICTRL at 16#48# range 0 .. 31;
      DLL     at 16#0# range 0 .. 31;
      DLM     at 16#4# range 0 .. 31;
      FCR     at 16#8# range 0 .. 31;
      RBR     at 16#0# range 0 .. 31;
      IER     at 16#4# range 0 .. 31;
      IIR     at 16#8# range 0 .. 31;
      THR     at 16#0# range 0 .. 31;
   end record;

   --  LPC5460x/LPC54S60x Smart Card Interface
   SMARTCARD0_Periph : aliased SMARTCARD_Peripheral
     with Import, Address => System'To_Address (16#40036000#);

   --  LPC5460x/LPC54S60x Smart Card Interface
   SMARTCARD1_Periph : aliased SMARTCARD_Peripheral
     with Import, Address => System'To_Address (16#40037000#);

end NRF_SVD.SMARTCARD;
