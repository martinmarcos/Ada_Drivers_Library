--  This spec has been automatically generated from ATSAM3U1E.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog-to-Digital Converter 12bits
package SAM_SVD.ADC12B is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ADC12B_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  Write-only. Start Conversion
      START         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      START         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ADC12B_MR_TRGSEL_Field is HAL.UInt3;
   subtype ADC12B_MR_PRESCAL_Field is HAL.UInt8;
   subtype ADC12B_MR_STARTUP_Field is HAL.UInt8;
   subtype ADC12B_MR_SHTIM_Field is HAL.UInt4;

   --  Mode Register
   type ADC12B_MR_Register is record
      --  Trigger Enable
      TRGEN          : Boolean := False;
      --  Trigger Selection
      TRGSEL         : ADC12B_MR_TRGSEL_Field := 16#0#;
      --  Resolution
      LOWRES         : Boolean := False;
      --  Sleep Mode
      SLEEP          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Prescaler Rate Selection
      PRESCAL        : ADC12B_MR_PRESCAL_Field := 16#0#;
      --  Start Up Time
      STARTUP        : ADC12B_MR_STARTUP_Field := 16#0#;
      --  Sample & Hold Time
      SHTIM          : ADC12B_MR_SHTIM_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      LOWRES         at 0 range 4 .. 4;
      SLEEP          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PRESCAL        at 0 range 8 .. 15;
      STARTUP        at 0 range 16 .. 23;
      SHTIM          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ADC12B_CHER_CH array
   type ADC12B_CHER_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_CHER_CH
   type ADC12B_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : ADC12B_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_CHER_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Enable Register
   type ADC12B_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH            : ADC12B_CHER_CH_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_CHER_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC12B_CHDR_CH array
   type ADC12B_CHDR_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_CHDR_CH
   type ADC12B_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : ADC12B_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_CHDR_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Disable Register
   type ADC12B_CHDR_Register is record
      --  Write-only.
      CH            : ADC12B_CHDR_CH_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_CHDR_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC12B_CHSR_CH array
   type ADC12B_CHSR_CH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_CHSR_CH
   type ADC12B_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt8;
         when True =>
            --  CH as an array
            Arr : ADC12B_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_CHSR_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Status Register
   type ADC12B_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH            : ADC12B_CHSR_CH_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_CHSR_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC12B_SR_EOC array
   type ADC12B_SR_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_SR_EOC
   type ADC12B_SR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC12B_SR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_SR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC12B_SR_OVRE array
   type ADC12B_SR_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_SR_OVRE
   type ADC12B_SR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC12B_SR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_SR_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Status Register
   type ADC12B_SR_Register is record
      --  Read-only. End of Conversion 0
      EOC            : ADC12B_SR_EOC_Field;
      --  Read-only. Overrun Error 0
      OVRE           : ADC12B_SR_OVRE_Field;
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

   for ADC12B_SR_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC12B_LCDR_LDATA_Field is HAL.UInt12;

   --  Last Converted Data Register
   type ADC12B_LCDR_Register is record
      --  Read-only. Last Data Converted
      LDATA          : ADC12B_LCDR_LDATA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_LCDR_Register use record
      LDATA          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  ADC12B_IER_EOC array
   type ADC12B_IER_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_IER_EOC
   type ADC12B_IER_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC12B_IER_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_IER_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC12B_IER_OVRE array
   type ADC12B_IER_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_IER_OVRE
   type ADC12B_IER_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC12B_IER_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_IER_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Enable Register
   type ADC12B_IER_Register is record
      --  Write-only. End of Conversion Interrupt Enable 0
      EOC            : ADC12B_IER_EOC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Overrun Error Interrupt Enable 0
      OVRE           : ADC12B_IER_OVRE_Field :=
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

   for ADC12B_IER_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  ADC12B_IDR_EOC array
   type ADC12B_IDR_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_IDR_EOC
   type ADC12B_IDR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC12B_IDR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_IDR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC12B_IDR_OVRE array
   type ADC12B_IDR_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_IDR_OVRE
   type ADC12B_IDR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC12B_IDR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_IDR_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Disable Register
   type ADC12B_IDR_Register is record
      --  Write-only. End of Conversion Interrupt Disable 0
      EOC            : ADC12B_IDR_EOC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Overrun Error Interrupt Disable 0
      OVRE           : ADC12B_IDR_OVRE_Field :=
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

   for ADC12B_IDR_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  ADC12B_IMR_EOC array
   type ADC12B_IMR_EOC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_IMR_EOC
   type ADC12B_IMR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : HAL.UInt8;
         when True =>
            --  EOC as an array
            Arr : ADC12B_IMR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_IMR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC12B_IMR_OVRE array
   type ADC12B_IMR_OVRE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC12B_IMR_OVRE
   type ADC12B_IMR_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : HAL.UInt8;
         when True =>
            --  OVRE as an array
            Arr : ADC12B_IMR_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC12B_IMR_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Mask Register
   type ADC12B_IMR_Register is record
      --  Read-only. End of Conversion Interrupt Mask 0
      EOC            : ADC12B_IMR_EOC_Field;
      --  Read-only. Overrun Error Interrupt Mask 0
      OVRE           : ADC12B_IMR_OVRE_Field;
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

   for ADC12B_IMR_Register use record
      EOC            at 0 range 0 .. 7;
      OVRE           at 0 range 8 .. 15;
      DRDY           at 0 range 16 .. 16;
      GOVRE          at 0 range 17 .. 17;
      ENDRX          at 0 range 18 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ADC12B_CDR_DATA_Field is HAL.UInt12;

   --  Channel Data Register
   type ADC12B_CDR_Register is record
      --  Read-only. Converted Data
      DATA           : ADC12B_CDR_DATA_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_CDR_Register use record
      DATA           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Channel Data Register
   type ADC12B_CDR_Registers is array (0 .. 7) of ADC12B_CDR_Register
     with Volatile;

   subtype ADC12B_ACR_GAIN_Field is HAL.UInt2;
   subtype ADC12B_ACR_IBCTL_Field is HAL.UInt2;

   --  Analog Control Register
   type ADC12B_ACR_Register is record
      --  Input Gain
      GAIN           : ADC12B_ACR_GAIN_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Bias Current Control
      IBCTL          : ADC12B_ACR_IBCTL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Differential Mode
      DIFF           : Boolean := False;
      --  Input OFFSET
      OFFSET         : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_ACR_Register use record
      GAIN           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      IBCTL          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DIFF           at 0 range 16 .. 16;
      OFFSET         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ADC12B_EMR_OFF_MODE_STARTUP_TIME_Field is HAL.UInt8;

   --  Extended Mode Register
   type ADC12B_EMR_Register is record
      --  Off Mode if Sleep Bit (ADC12B_MR) = 1
      OFFMODES              : Boolean := False;
      --  unspecified
      Reserved_1_15         : HAL.UInt15 := 16#0#;
      --  Startup Time
      OFF_MODE_STARTUP_TIME : ADC12B_EMR_OFF_MODE_STARTUP_TIME_Field := 16#0#;
      --  unspecified
      Reserved_24_31        : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_EMR_Register use record
      OFFMODES              at 0 range 0 .. 0;
      Reserved_1_15         at 0 range 1 .. 15;
      OFF_MODE_STARTUP_TIME at 0 range 16 .. 23;
      Reserved_24_31        at 0 range 24 .. 31;
   end record;

   subtype ADC12B_RCR_RXCTR_Field is HAL.UInt16;

   --  Receive Counter Register
   type ADC12B_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : ADC12B_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC12B_RNCR_RXNCTR_Field is HAL.UInt16;

   --  Receive Next Counter Register
   type ADC12B_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : ADC12B_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12B_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type ADC12B_PTCR_Register is record
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

   for ADC12B_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type ADC12B_PTSR_Register is record
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

   for ADC12B_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter 12bits
   type ADC12B_Peripheral is record
      --  Control Register
      CR   : aliased ADC12B_CR_Register;
      --  Mode Register
      MR   : aliased ADC12B_MR_Register;
      --  Channel Enable Register
      CHER : aliased ADC12B_CHER_Register;
      --  Channel Disable Register
      CHDR : aliased ADC12B_CHDR_Register;
      --  Channel Status Register
      CHSR : aliased ADC12B_CHSR_Register;
      --  Status Register
      SR   : aliased ADC12B_SR_Register;
      --  Last Converted Data Register
      LCDR : aliased ADC12B_LCDR_Register;
      --  Interrupt Enable Register
      IER  : aliased ADC12B_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased ADC12B_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased ADC12B_IMR_Register;
      --  Channel Data Register
      CDR  : aliased ADC12B_CDR_Registers;
      --  Analog Control Register
      ACR  : aliased ADC12B_ACR_Register;
      --  Extended Mode Register
      EMR  : aliased ADC12B_EMR_Register;
      --  Receive Pointer Register
      RPR  : aliased HAL.UInt32;
      --  Receive Counter Register
      RCR  : aliased ADC12B_RCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased HAL.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased ADC12B_RNCR_Register;
      --  Transfer Control Register
      PTCR : aliased ADC12B_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased ADC12B_PTSR_Register;
   end record
     with Volatile;

   for ADC12B_Peripheral use record
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
      ACR  at 16#64# range 0 .. 31;
      EMR  at 16#68# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter 12bits
   ADC12B_Periph : aliased ADC12B_Peripheral
     with Import, Address => ADC12B_Base;

end SAM_SVD.ADC12B;
