--  This spec has been automatically generated from ATSAM3U4C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog-to-Digital Converter
package SAM_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ADC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  Write-only. Start Conversion
      START         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      START         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ADC_MR_TRGSEL_Field is HAL.UInt3;
   subtype ADC_MR_PRESCAL_Field is HAL.UInt8;
   subtype ADC_MR_STARTUP_Field is HAL.UInt7;
   subtype ADC_MR_SHTIM_Field is HAL.UInt4;

   --  Mode Register
   type ADC_MR_Register is record
      --  Trigger Enable
      TRGEN          : Boolean := False;
      --  Trigger Selection
      TRGSEL         : ADC_MR_TRGSEL_Field := 16#0#;
      --  Resolution
      LOWRES         : Boolean := False;
      --  Sleep Mode
      SLEEP          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Prescaler Rate Selection
      PRESCAL        : ADC_MR_PRESCAL_Field := 16#0#;
      --  Start Up Time
      STARTUP        : ADC_MR_STARTUP_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Sample & Hold Time
      SHTIM          : ADC_MR_SHTIM_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      LOWRES         at 0 range 4 .. 4;
      SLEEP          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PRESCAL        at 0 range 8 .. 15;
      STARTUP        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SHTIM          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ADC_CHER_CH array
   type ADC_CHER_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_CHER_CH
   type ADC_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : ADC_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_CHER_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Enable Register
   type ADC_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH            : ADC_CHER_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHER_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC_CHDR_CH array
   type ADC_CHDR_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_CHDR_CH
   type ADC_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : ADC_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_CHDR_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Disable Register
   type ADC_CHDR_Register is record
      --  Write-only. Channel 0 Disable
      CH            : ADC_CHDR_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHDR_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC_CHSR_CH array
   type ADC_CHSR_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_CHSR_CH
   type ADC_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : ADC_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_CHSR_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Status Register
   type ADC_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH            : ADC_CHSR_CH_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHSR_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC_SR_EOC array
   type ADC_SR_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_SR_EOC
   type ADC_SR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC_SR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_SR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC_SR_OVRE array
   type ADC_SR_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_SR_OVRE
   type ADC_SR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC_SR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_SR_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Status Register
   type ADC_SR_Register is record
      --  Read-only. End of Conversion 0
      EOC            : ADC_SR_EOC_Field;
      --  Read-only. Overrun Error 0
      OVRE           : ADC_SR_OVRE_Field;
      --  Read-only. Data Ready
      DRDY           : Boolean;
      --  Read-only. General Overrun Error
      GOVRE          : Boolean;
      --  Read-only. End of RX Buffer
      ENDRX          : Boolean;
      --  Read-only. RX Buffer Full
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SR_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_LCDR_LDATA_Field is HAL.UInt10;

   --  Last Converted Data Register
   type ADC_LCDR_Register is record
      --  Read-only. Last Data Converted
      LDATA          : ADC_LCDR_LDATA_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_LCDR_Register use record
      LDATA          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  ADC_IER_EOC array
   type ADC_IER_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IER_EOC
   type ADC_IER_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC_IER_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IER_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC_IER_OVRE array
   type ADC_IER_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IER_OVRE
   type ADC_IER_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC_IER_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IER_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Enable Register
   type ADC_IER_Register is record
      --  Write-only. End of Conversion Interrupt Enable 0
      EOC            : ADC_IER_EOC_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Overrun Error Interrupt Enable 0
      OVRE           : ADC_IER_OVRE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Data Ready Interrupt Enable
      DRDY           : Boolean := False;
      --  Write-only. General Overrun Error Interrupt Enable
      GOVRE          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IER_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  ADC_IDR_EOC array
   type ADC_IDR_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IDR_EOC
   type ADC_IDR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC_IDR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IDR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC_IDR_OVRE array
   type ADC_IDR_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IDR_OVRE
   type ADC_IDR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC_IDR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IDR_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Disable Register
   type ADC_IDR_Register is record
      --  Write-only. End of Conversion Interrupt Disable 0
      EOC            : ADC_IDR_EOC_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Overrun Error Interrupt Disable 0
      OVRE           : ADC_IDR_OVRE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Data Ready Interrupt Disable
      DRDY           : Boolean := False;
      --  Write-only. General Overrun Error Interrupt Disable
      GOVRE          : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IDR_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  ADC_IMR_EOC array
   type ADC_IMR_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IMR_EOC
   type ADC_IMR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC_IMR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IMR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC_IMR_OVRE array
   type ADC_IMR_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IMR_OVRE
   type ADC_IMR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC_IMR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IMR_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Mask Register
   type ADC_IMR_Register is record
      --  Read-only. End of Conversion Interrupt Mask 0
      EOC            : ADC_IMR_EOC_Field;
      --  Read-only. Overrun Error Interrupt Mask 0
      OVRE           : ADC_IMR_OVRE_Field;
      --  Read-only. Data Ready Interrupt Mask
      DRDY           : Boolean;
      --  Read-only. General Overrun Error Interrupt Mask
      GOVRE          : Boolean;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IMR_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC_CDR_DATA_Field is HAL.UInt10;

   --  Channel Data Register
   type ADC_CDR_Register is record
      --  Read-only. Converted Data
      DATA           : ADC_CDR_DATA_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CDR_Register use record
      DATA           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Channel Data Register
   type ADC_CDR_Registers is array (0 .. 7) of ADC_CDR_Register
     with Volatile;

   subtype ADC_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type ADC_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : ADC_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type ADC_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : ADC_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type ADC_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type ADC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : HAL.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter
   type ADC_Peripheral is record
      --  Control Register
      CR   : aliased ADC_CR_Register;
      --  Mode Register
      MR   : aliased ADC_MR_Register;
      --  Channel Enable Register
      CHER : aliased ADC_CHER_Register;
      --  Channel Disable Register
      CHDR : aliased ADC_CHDR_Register;
      --  Channel Status Register
      CHSR : aliased ADC_CHSR_Register;
      --  Status Register
      SR   : aliased ADC_SR_Register;
      --  Last Converted Data Register
      LCDR : aliased ADC_LCDR_Register;
      --  Interrupt Enable Register
      IER  : aliased ADC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased ADC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased ADC_IMR_Register;
      --  Channel Data Register
      CDR  : aliased ADC_CDR_Registers;
      --  Receive Pointer Register
      RPR  : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR  : aliased ADC_RCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased ADC_RNCR_Register;
      --  Transfer Control Register
      PTCR : aliased ADC_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased ADC_PTSR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      CHER at 16#10# range 0 .. 31;
      CHDR at 16#14# range 0 .. 31;
      CHSR at 16#18# range 0 .. 31;
      SR   at 16#1C# range 0 .. 31;
      LCDR at 16#20# range 0 .. 31;
      IER  at 16#24# range 0 .. 31;
      IDR  at 16#28# range 0 .. 31;
      IMR  at 16#2C# range 0 .. 31;
      CDR  at 16#30# range 0 .. 255;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end SAM_SVD.ADC;
