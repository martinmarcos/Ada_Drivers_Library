--

--  This spec has been automatically generated from Z32F1281.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.AFE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OPA0CR_GAIN_Field is HAL.UInt4;

   --  OPAMP 0 Control Registers
   type OPA0CR_Register is record
      --  OPAMP Gain select
      GAIN          : OPA0CR_GAIN_Field := 16#0#;
      --  OPAMP enable
      OPAEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0CR_Register use record
      GAIN          at 0 range 0 .. 3;
      OPAEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OPA1CR_GAIN_Field is HAL.UInt4;

   --  OPAMP 1 Control Registers
   type OPA1CR_Register is record
      --  OPAMP Gain select
      GAIN          : OPA1CR_GAIN_Field := 16#0#;
      --  OPAMP enable
      OPAEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1CR_Register use record
      GAIN          at 0 range 0 .. 3;
      OPAEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OPA2CR_GAIN_Field is HAL.UInt4;

   --  OPAMP 2 Control Registers
   type OPA2CR_Register is record
      --  OPAMP Gain select
      GAIN          : OPA2CR_GAIN_Field := 16#0#;
      --  OPAMP enable
      OPAEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2CR_Register use record
      GAIN          at 0 range 0 .. 3;
      OPAEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OPA3CR_GAIN_Field is HAL.UInt4;

   --  OPAMP 3 Control Registers
   type OPA3CR_Register is record
      --  OPAMP Gain select
      GAIN          : OPA3CR_GAIN_Field := 16#0#;
      --  OPAMP enable
      OPAEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3CR_Register use record
      GAIN          at 0 range 0 .. 3;
      OPAEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Comparator 0 Control Register
   type CMP0CR_Register is record
      --  Comparator reference selection
      REFSEL        : Boolean := False;
      --  Comparator input select
      CINSEL        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Comparator enable(0)/disable(1)
      CMPEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP0CR_Register use record
      REFSEL        at 0 range 0 .. 0;
      CINSEL        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CMPEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Comparator 1 Control Register
   type CMP1CR_Register is record
      --  Comparator reference selection
      REFSEL        : Boolean := False;
      --  Comparator input select
      CINSEL        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Comparator enable
      CMPEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP1CR_Register use record
      REFSEL        at 0 range 0 .. 0;
      CINSEL        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CMPEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Comparator 2 Control Register
   type CMP2CR_Register is record
      --  Comparator reference selection
      REFSEL        : Boolean := False;
      --  Comparator input select
      CINSEL        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Comparator enable
      CMPEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP2CR_Register use record
      REFSEL        at 0 range 0 .. 0;
      CINSEL        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CMPEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Comparator 3 Control Register
   type CMP3CR_Register is record
      --  Comparator reference selection
      REFSEL        : Boolean := False;
      --  Comparator input select
      CINSEL        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Comparator enable
      CMPEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP3CR_Register use record
      REFSEL        at 0 range 0 .. 0;
      CINSEL        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CMPEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CMPDBR_C0DBNC_Field is HAL.UInt4;
   subtype CMPDBR_C1DBNC_Field is HAL.UInt4;
   subtype CMPDBR_C2DBNC_Field is HAL.UInt4;
   subtype CMPDBR_C3DBNC_Field is HAL.UInt4;
   subtype CMPDBR_DBNCTB_Field is HAL.UInt8;

   --  Comparator de-bounce Register
   type CMPDBR_Register is record
      --  Debouce shift selection
      C0DBNC         : CMPDBR_C0DBNC_Field := 16#0#;
      --  Debouce shift selection
      C1DBNC         : CMPDBR_C1DBNC_Field := 16#0#;
      --  Debouce shift selection
      C2DBNC         : CMPDBR_C2DBNC_Field := 16#0#;
      --  Debouce shift selection
      C3DBNC         : CMPDBR_C3DBNC_Field := 16#0#;
      --  Debounce time base counter
      DBNCTB         : CMPDBR_DBNCTB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPDBR_Register use record
      C0DBNC         at 0 range 0 .. 3;
      C1DBNC         at 0 range 4 .. 7;
      C2DBNC         at 0 range 8 .. 11;
      C3DBNC         at 0 range 12 .. 15;
      DBNCTB         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CMPICR_C0IMOD_Field is HAL.UInt2;
   subtype CMPICR_C1IMOD_Field is HAL.UInt2;
   subtype CMPICR_C2IMOD_Field is HAL.UInt2;
   subtype CMPICR_C3IMOD_Field is HAL.UInt2;

   --  CMPICR_IPOL array
   type CMPICR_IPOL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CMPICR_IPOL
   type CMPICR_IPOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPOL as a value
            Val : HAL.UInt4;
         when True =>
            --  IPOL as an array
            Arr : CMPICR_IPOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CMPICR_IPOL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  CMPICR_PPOL array
   type CMPICR_PPOL_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CMPICR_PPOL
   type CMPICR_PPOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPOL as a value
            Val : HAL.UInt4;
         when True =>
            --  PPOL as an array
            Arr : CMPICR_PPOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CMPICR_PPOL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Comparator Interrupt Control Register
   type CMPICR_Register is record
      --  Comparator interrupt mode selection
      C0IMOD         : CMPICR_C0IMOD_Field := 16#0#;
      --  Comparator interrupt mode selection
      C1IMOD         : CMPICR_C1IMOD_Field := 16#0#;
      --  Comparator interrupt mode selection
      C2IMOD         : CMPICR_C2IMOD_Field := 16#0#;
      --  Comparator interrupt mode selection
      C3IMOD         : CMPICR_C3IMOD_Field := 16#0#;
      --  Comparator outs low/high IRQ selection
      IPOL           : CMPICR_IPOL_Field := (As_Array => False, Val => 16#0#);
      --  Comparator outs for PWM invert selection
      PPOL           : CMPICR_PPOL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPICR_Register use record
      C0IMOD         at 0 range 0 .. 1;
      C1IMOD         at 0 range 2 .. 3;
      C2IMOD         at 0 range 4 .. 5;
      C3IMOD         at 0 range 6 .. 7;
      IPOL           at 0 range 8 .. 11;
      PPOL           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Comparator Interrupt Enable Register
   type CMPIER_Register is record
      --  Comparator Interrupt enable
      CMP0IE        : Boolean := False;
      --  Comparator Interrupt enable
      CMP1IE        : Boolean := False;
      --  Comparator Interrupt enable
      CMP2IE        : Boolean := False;
      --  Comparator Interrupt enable
      CMP3IE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPIER_Register use record
      CMP0IE        at 0 range 0 .. 0;
      CMP1IE        at 0 range 1 .. 1;
      CMP2IE        at 0 range 2 .. 2;
      CMP3IE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Comparator Status Register
   type CMPSR_Register is record
      --  Comparator interrupt flag
      C0IRQ          : Boolean := False;
      --  Comparator interrupt flag
      C1IRQ          : Boolean := False;
      --  Comparator interrupt flag
      C2IRQ          : Boolean := False;
      --  Comparator interrupt flag
      C3IRQ          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Read-only. Comparator raw output after debounce
      C0OUT          : Boolean := False;
      --  Read-only. Comparator raw output after debounce
      C1OUT          : Boolean := False;
      --  Read-only. Comparator raw output after debounce
      C2OUT          : Boolean := False;
      --  Read-only. Comparator raw output after debounce
      C3OUT          : Boolean := False;
      --  Read-only. Comparator raw output before debounce
      C0RAW          : Boolean := False;
      --  Read-only. Comparator raw output before debounce
      C1RAW          : Boolean := False;
      --  Read-only. Comparator raw output before debounce
      C2RAW          : Boolean := False;
      --  Read-only. Comparator raw output before debounce
      C3RAW          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPSR_Register use record
      C0IRQ          at 0 range 0 .. 0;
      C1IRQ          at 0 range 1 .. 1;
      C2IRQ          at 0 range 2 .. 2;
      C3IRQ          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      C0OUT          at 0 range 8 .. 8;
      C1OUT          at 0 range 9 .. 9;
      C2OUT          at 0 range 10 .. 10;
      C3OUT          at 0 range 11 .. 11;
      C0RAW          at 0 range 12 .. 12;
      C1RAW          at 0 range 13 .. 13;
      C2RAW          at 0 range 14 .. 14;
      C3RAW          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ANALOG FRONT END
   type AFE_Peripheral is record
      --  OPAMP 0 Control Registers
      OPA0CR : aliased OPA0CR_Register;
      --  OPAMP 1 Control Registers
      OPA1CR : aliased OPA1CR_Register;
      --  OPAMP 2 Control Registers
      OPA2CR : aliased OPA2CR_Register;
      --  OPAMP 3 Control Registers
      OPA3CR : aliased OPA3CR_Register;
      --  Comparator 0 Control Register
      CMP0CR : aliased CMP0CR_Register;
      --  Comparator 1 Control Register
      CMP1CR : aliased CMP1CR_Register;
      --  Comparator 2 Control Register
      CMP2CR : aliased CMP2CR_Register;
      --  Comparator 3 Control Register
      CMP3CR : aliased CMP3CR_Register;
      --  Comparator de-bounce Register
      CMPDBR : aliased CMPDBR_Register;
      --  Comparator Interrupt Control Register
      CMPICR : aliased CMPICR_Register;
      --  Comparator Interrupt Enable Register
      CMPIER : aliased CMPIER_Register;
      --  Comparator Status Register
      CMPSR  : aliased CMPSR_Register;
   end record
     with Volatile;

   for AFE_Peripheral use record
      OPA0CR at 16#0# range 0 .. 31;
      OPA1CR at 16#4# range 0 .. 31;
      OPA2CR at 16#8# range 0 .. 31;
      OPA3CR at 16#C# range 0 .. 31;
      CMP0CR at 16#20# range 0 .. 31;
      CMP1CR at 16#24# range 0 .. 31;
      CMP2CR at 16#28# range 0 .. 31;
      CMP3CR at 16#2C# range 0 .. 31;
      CMPDBR at 16#30# range 0 .. 31;
      CMPICR at 16#34# range 0 .. 31;
      CMPIER at 16#38# range 0 .. 31;
      CMPSR  at 16#3C# range 0 .. 31;
   end record;

   --  ANALOG FRONT END
   AFE_Periph : aliased AFE_Peripheral
     with Import, Address => System'To_Address (16#4000B300#);

end NRF_SVD.AFE;
