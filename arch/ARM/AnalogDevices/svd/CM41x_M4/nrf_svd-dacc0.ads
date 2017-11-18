--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DACC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL0_DLEN_Field is HAL.UInt4;

   --  Control 0 Register
   type CTL0_Register is record
      --  Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  DMA Data Width
      DMAW           : Boolean := False;
      --  LSB-First Mode
      LSBF           : Boolean := False;
      --  Gated Clock Enable
      GCKEN          : Boolean := False;
      --  Circular Buffer Enable
      CBUFEN         : Boolean := False;
      --  Circular Buffer Interrupt Enable
      CINTEN         : Boolean := False;
      --  Data Length
      DLEN           : CTL0_DLEN_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  SYNC Polarity
      SYNCPOL        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Clock Polarity
      CKPOL          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL0_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      DMAW           at 0 range 3 .. 3;
      LSBF           at 0 range 4 .. 4;
      GCKEN          at 0 range 5 .. 5;
      CBUFEN         at 0 range 6 .. 6;
      CINTEN         at 0 range 7 .. 7;
      DLEN           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SYNCPOL        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CKPOL          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Error Status Register
   type ERRSTAT_Register is record
      --  DAC0 Underflow
      DUVF0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Address Alignment Error 0
      AER0          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Memory Error 0
      MER0          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRSTAT_Register use record
      DUVF0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      AER0          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      MER0          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Error Mask Register
   type ERRMSK_Register is record
      --  DAC Underflow 0 Mask
      DUVF0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Address Alignment Error 0 Mask
      AER0          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Memory Error 0 Mask
      MER0          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRMSK_Register use record
      DUVF0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      AER0          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      MER0          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  ERRMSK_SET_DUVF array
   type ERRMSK_SET_DUVF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_SET_DUVF
   type ERRMSK_SET_DUVF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DUVF as a value
            Val : HAL.UInt2;
         when True =>
            --  DUVF as an array
            Arr : ERRMSK_SET_DUVF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_SET_DUVF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_SET_MER array
   type ERRMSK_SET_MER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_SET_MER
   type ERRMSK_SET_MER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MER as a value
            Val : HAL.UInt2;
         when True =>
            --  MER as an array
            Arr : ERRMSK_SET_MER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_SET_MER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Error Mask Set Register
   type ERRMSK_SET_Register is record
      --  DAC Underflow 0 Mask Set
      DUVF          : ERRMSK_SET_DUVF_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Address Alignment Error 0 Mask Set
      AER0          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Memory Error 0 Mask Set
      MER           : ERRMSK_SET_MER_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRMSK_SET_Register use record
      DUVF          at 0 range 0 .. 1;
      AER0          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      MER           at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Error Mask Clear Register
   type ERRMSK_CLR_Register is record
      --  DAC Underflow 0 Mask Clear
      DUVF0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Address Alignment Error 0 Mask Clear
      AER0          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Memory Error 0 Mask Clear
      MER0          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRMSK_CLR_Register use record
      DUVF0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      AER0          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      MER0          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt Status Register
   type ISTAT_Register is record
      --  DMA Complete Interrupt 0
      DINT0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Read-only. Core Complete (Non-DMA) Interrupt 0
      CINT0         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISTAT_Register use record
      DINT0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CINT0         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Register
   type IMSK_Register is record
      --  DMA Complete Interrupt 0 Mask
      DINT0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Core Complete (Non-DMA) Interrupt 0 Mask
      CINT0         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      DINT0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CINT0         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Set Register
   type IMSK_SET_Register is record
      --  DMA Complete Interrupt 0 Mask Set
      DINT0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Core Complete (Non-DMA) Interrupt 0 Mask Set
      CINT0         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_SET_Register use record
      DINT0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CINT0         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Clear Register
   type IMSK_CLR_Register is record
      --  DMA Complete Interrupt 0 Mask Clear
      DINT0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Core Complete (Non-DMA) Interrupt 0 Mask Clear.
      CINT0         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_CLR_Register use record
      DINT0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CINT0         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype TC0_CKDIV_Field is HAL.UInt16;
   subtype TC0_FSIDLE_Field is HAL.UInt16;

   --  Timing Control 0 Register
   type TC0_Register is record
      --  Clock Divisor
      CKDIV  : TC0_CKDIV_Field := 16#0#;
      --  Frame Sync Idle
      FSIDLE : TC0_FSIDLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_Register use record
      CKDIV  at 0 range 0 .. 15;
      FSIDLE at 0 range 16 .. 31;
   end record;

   subtype DAT0_VALUE_Field is HAL.UInt16;

   --  Data FIFO 0 Register
   type DAT0_Register is record
      --  Data FIFO 0 Value
      VALUE          : DAT0_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAT0_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BCST_CTL_DLEN_Field is HAL.UInt4;

   --  Broadcast (Write) Control Register
   type BCST_CTL_Register is record
      --  Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  DMA Data Width
      DMAW           : Boolean := False;
      --  LSB-First Mode
      LSBF           : Boolean := False;
      --  Gated Clock Enable
      GCKEN          : Boolean := False;
      --  Circular Buffer Enable
      CBUFEN         : Boolean := False;
      --  Circular Buffer Interrupt Enable
      CINTEN         : Boolean := False;
      --  Data Length
      DLEN           : BCST_CTL_DLEN_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  SYNC Polarity
      SYNCPOL        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Clock Polarity
      CKPOL          : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCST_CTL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      DMAW           at 0 range 3 .. 3;
      LSBF           at 0 range 4 .. 4;
      GCKEN          at 0 range 5 .. 5;
      CBUFEN         at 0 range 6 .. 6;
      CINTEN         at 0 range 7 .. 7;
      DLEN           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SYNCPOL        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CKPOL          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype STAT_FSTAT0_Field is HAL.UInt4;

   --  Status Register
   type STAT_Register is record
      --  Read-only. Data Pending 0
      DPND0          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. FIFO Status 0
      FSTAT0         : STAT_FSTAT0_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      DPND0          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FSTAT0         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DAC Controller
   type DACC0_Peripheral is record
      --  Control 0 Register
      CTL0       : aliased CTL0_Register;
      --  Error Status Register
      ERRSTAT    : aliased ERRSTAT_Register;
      --  Error Mask Register
      ERRMSK     : aliased ERRMSK_Register;
      --  Error Mask Set Register
      ERRMSK_SET : aliased ERRMSK_SET_Register;
      --  Error Mask Clear Register
      ERRMSK_CLR : aliased ERRMSK_CLR_Register;
      --  Interrupt Status Register
      ISTAT      : aliased ISTAT_Register;
      --  Interrupt Mask Register
      IMSK       : aliased IMSK_Register;
      --  Interrupt Mask Set Register
      IMSK_SET   : aliased IMSK_SET_Register;
      --  Interrupt Mask Clear Register
      IMSK_CLR   : aliased IMSK_CLR_Register;
      --  Timing Control 0 Register
      TC0        : aliased TC0_Register;
      --  Base Pointer 0 Register
      BPTR0      : aliased HAL.UInt32;
      --  Modify 0 Register
      MOD0       : aliased HAL.UInt32;
      --  Count 0 Register
      CNT0       : aliased HAL.UInt32;
      --  Data FIFO 0 Register
      DAT0       : aliased DAT0_Register;
      --  Broadcast (Write) Control Register
      BCST_CTL   : aliased BCST_CTL_Register;
      --  Current Count 0 Register
      CNTCUR0    : aliased HAL.UInt32;
      --  Status Register
      STAT       : aliased STAT_Register;
   end record
     with Volatile;

   for DACC0_Peripheral use record
      CTL0       at 16#0# range 0 .. 31;
      ERRSTAT    at 16#8# range 0 .. 31;
      ERRMSK     at 16#C# range 0 .. 31;
      ERRMSK_SET at 16#10# range 0 .. 31;
      ERRMSK_CLR at 16#14# range 0 .. 31;
      ISTAT      at 16#18# range 0 .. 31;
      IMSK       at 16#1C# range 0 .. 31;
      IMSK_SET   at 16#20# range 0 .. 31;
      IMSK_CLR   at 16#24# range 0 .. 31;
      TC0        at 16#28# range 0 .. 31;
      BPTR0      at 16#2C# range 0 .. 31;
      MOD0       at 16#30# range 0 .. 31;
      CNT0       at 16#34# range 0 .. 31;
      DAT0       at 16#38# range 0 .. 31;
      BCST_CTL   at 16#50# range 0 .. 31;
      CNTCUR0    at 16#100# range 0 .. 31;
      STAT       at 16#108# range 0 .. 31;
   end record;

   --  DAC Controller
   DACC0_Periph : aliased DACC0_Peripheral
     with Import, Address => System'To_Address (16#4004B000#);

end NRF_SVD.DACC0;
