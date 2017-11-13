--  This spec has been automatically generated from ATSAM3N4A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Pulse Width Modulation Controller
package SAM_SVD.PWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CLKA, CLKB Divide Factor
   type MR_DIVA_Field is
     (
      --  CLKA, CLKB clock is turned off
      Clk_Off,
      --  CLKA, CLKB clock is clock selected by PREA, PREB
      Clk_Div1)
     with Size => 8;
   for MR_DIVA_Field use
     (Clk_Off => 0,
      Clk_Div1 => 1);

   type MR_PREA_Field is
     (
      --  Master Clock
      Mck,
      --  Master Clock divided by 2
      Mckdiv2,
      --  Master Clock divided by 4
      Mckdiv4,
      --  Master Clock divided by 8
      Mckdiv8,
      --  Master Clock divided by 16
      Mckdiv16,
      --  Master Clock divided by 32
      Mckdiv32,
      --  Master Clock divided by 64
      Mckdiv64,
      --  Master Clock divided by 128
      Mckdiv128,
      --  Master Clock divided by 256
      Mckdiv256,
      --  Master Clock divided by 512
      Mckdiv512,
      --  Master Clock divided by 1024
      Mckdiv1024)
     with Size => 4;
   for MR_PREA_Field use
     (Mck => 0,
      Mckdiv2 => 1,
      Mckdiv4 => 2,
      Mckdiv8 => 3,
      Mckdiv16 => 4,
      Mckdiv32 => 5,
      Mckdiv64 => 6,
      Mckdiv128 => 7,
      Mckdiv256 => 8,
      Mckdiv512 => 9,
      Mckdiv1024 => 10);

   --  CLKA, CLKB Divide Factor
   type MR_DIVB_Field is
     (
      --  CLKA, CLKB clock is turned off
      Clk_Off,
      --  CLKA, CLKB clock is clock selected by PREA, PREB
      Clk_Div1)
     with Size => 8;
   for MR_DIVB_Field use
     (Clk_Off => 0,
      Clk_Div1 => 1);

   type MR_PREB_Field is
     (
      --  Master Clock
      Mck,
      --  Master Clock divided by 2
      Mckdiv2,
      --  Master Clock divided by 4
      Mckdiv4,
      --  Master Clock divided by 8
      Mckdiv8,
      --  Master Clock divided by 16
      Mckdiv16,
      --  Master Clock divided by 32
      Mckdiv32,
      --  Master Clock divided by 64
      Mckdiv64,
      --  Master Clock divided by 128
      Mckdiv128,
      --  Master Clock divided by 256
      Mckdiv256,
      --  Master Clock divided by 512
      Mckdiv512,
      --  Master Clock divided by 1024
      Mckdiv1024)
     with Size => 4;
   for MR_PREB_Field use
     (Mck => 0,
      Mckdiv2 => 1,
      Mckdiv4 => 2,
      Mckdiv8 => 3,
      Mckdiv16 => 4,
      Mckdiv32 => 5,
      Mckdiv64 => 6,
      Mckdiv128 => 7,
      Mckdiv256 => 8,
      Mckdiv512 => 9,
      Mckdiv1024 => 10);

   --  PWM Mode Register
   type PWM_MR_Register is record
      --  CLKA, CLKB Divide Factor
      DIVA           : MR_DIVA_Field := SAM_SVD.PWM.Clk_Off;
      PREA           : MR_PREA_Field := SAM_SVD.PWM.Mck;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  CLKA, CLKB Divide Factor
      DIVB           : MR_DIVB_Field := SAM_SVD.PWM.Clk_Off;
      PREB           : MR_PREB_Field := SAM_SVD.PWM.Mck;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_MR_Register use record
      DIVA           at 0 range 0 .. 7;
      PREA           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DIVB           at 0 range 16 .. 23;
      PREB           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PWM_ENA_CHID array
   type PWM_ENA_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_ENA_CHID
   type PWM_ENA_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_ENA_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_ENA_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Enable Register
   type PWM_ENA_Register is record
      --  Write-only. Channel ID
      CHID          : PWM_ENA_CHID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_ENA_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_DIS_CHID array
   type PWM_DIS_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_DIS_CHID
   type PWM_DIS_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_DIS_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_DIS_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Disable Register
   type PWM_DIS_Register is record
      --  Write-only. Channel ID
      CHID          : PWM_DIS_CHID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_DIS_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_SR_CHID array
   type PWM_SR_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_SR_CHID
   type PWM_SR_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_SR_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_SR_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Status Register
   type PWM_SR_Register is record
      --  Read-only. Channel ID
      CHID          : PWM_SR_CHID_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SR_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_IER_CHID array
   type PWM_IER_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IER_CHID
   type PWM_IER_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_IER_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IER_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Enable Register
   type PWM_IER_Register is record
      --  Write-only. Channel ID.
      CHID          : PWM_IER_CHID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IER_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_IDR_CHID array
   type PWM_IDR_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IDR_CHID
   type PWM_IDR_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_IDR_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IDR_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Disable Register
   type PWM_IDR_Register is record
      --  Write-only. Channel ID.
      CHID          : PWM_IDR_CHID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IDR_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_IMR_CHID array
   type PWM_IMR_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IMR_CHID
   type PWM_IMR_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_IMR_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IMR_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Mask Register
   type PWM_IMR_Register is record
      --  Read-only. Channel ID.
      CHID          : PWM_IMR_CHID_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IMR_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_ISR_CHID array
   type PWM_ISR_CHID_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_ISR_CHID
   type PWM_ISR_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : HAL.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_ISR_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_ISR_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Status Register
   type PWM_ISR_Register is record
      --  Read-only. Channel ID
      CHID          : PWM_ISR_CHID_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_ISR_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Channel Pre-scaler
   type CMR0_CPRE_Field is
     (
      --  Master Clock
      Mck,
      --  Master Clock divided by 2
      Mckdiv2,
      --  Master Clock divided by 4
      Mckdiv4,
      --  Master Clock divided by 8
      Mckdiv8,
      --  Master Clock divided by 16
      Mckdiv16,
      --  Master Clock divided by 32
      Mckdiv32,
      --  Master Clock divided by 64
      Mckdiv64,
      --  Master Clock divided by 128
      Mckdiv128,
      --  Master Clock divided by 256
      Mckdiv256,
      --  Master Clock divided by 512
      Mckdiv512,
      --  Master Clock divided by 1024
      Mckdiv1024,
      --  Clock A
      Clka,
      --  Clock B
      Clkb)
     with Size => 4;
   for CMR0_CPRE_Field use
     (Mck => 0,
      Mckdiv2 => 1,
      Mckdiv4 => 2,
      Mckdiv8 => 3,
      Mckdiv16 => 4,
      Mckdiv32 => 5,
      Mckdiv64 => 6,
      Mckdiv128 => 7,
      Mckdiv256 => 8,
      Mckdiv512 => 9,
      Mckdiv1024 => 10,
      Clka => 11,
      Clkb => 12);

   --  PWM Channel Mode Register (ch_num = 0)
   type CMR_Register is record
      --  Channel Pre-scaler
      CPRE           : CMR0_CPRE_Field := SAM_SVD.PWM.Mck;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Channel Alignment
      CALG           : Boolean := False;
      --  Channel Polarity
      CPOL           : Boolean := False;
      --  Channel Update Period
      CPD            : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      CPRE           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CALG           at 0 range 8 .. 8;
      CPOL           at 0 range 9 .. 9;
      CPD            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Width Modulation Controller
   type PWM_Peripheral is record
      --  PWM Mode Register
      MR    : aliased PWM_MR_Register;
      --  PWM Enable Register
      ENA   : aliased PWM_ENA_Register;
      --  PWM Disable Register
      DIS   : aliased PWM_DIS_Register;
      --  PWM Status Register
      SR    : aliased PWM_SR_Register;
      --  PWM Interrupt Enable Register
      IER   : aliased PWM_IER_Register;
      --  PWM Interrupt Disable Register
      IDR   : aliased PWM_IDR_Register;
      --  PWM Interrupt Mask Register
      IMR   : aliased PWM_IMR_Register;
      --  PWM Interrupt Status Register
      ISR   : aliased PWM_ISR_Register;
      --  PWM Channel Mode Register (ch_num = 0)
      CMR0  : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 0)
      CDTY0 : aliased HAL.UInt32;
      --  PWM Channel Period Register (ch_num = 0)
      CPRD0 : aliased HAL.UInt32;
      --  PWM Channel Counter Register (ch_num = 0)
      CCNT0 : aliased HAL.UInt32;
      --  PWM Channel Update Register (ch_num = 0)
      CUPD0 : aliased HAL.UInt32;
      --  PWM Channel Mode Register (ch_num = 1)
      CMR1  : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 1)
      CDTY1 : aliased HAL.UInt32;
      --  PWM Channel Period Register (ch_num = 1)
      CPRD1 : aliased HAL.UInt32;
      --  PWM Channel Counter Register (ch_num = 1)
      CCNT1 : aliased HAL.UInt32;
      --  PWM Channel Update Register (ch_num = 1)
      CUPD1 : aliased HAL.UInt32;
      --  PWM Channel Mode Register (ch_num = 2)
      CMR2  : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 2)
      CDTY2 : aliased HAL.UInt32;
      --  PWM Channel Period Register (ch_num = 2)
      CPRD2 : aliased HAL.UInt32;
      --  PWM Channel Counter Register (ch_num = 2)
      CCNT2 : aliased HAL.UInt32;
      --  PWM Channel Update Register (ch_num = 2)
      CUPD2 : aliased HAL.UInt32;
      --  PWM Channel Mode Register (ch_num = 3)
      CMR3  : aliased CMR_Register;
      --  PWM Channel Duty Cycle Register (ch_num = 3)
      CDTY3 : aliased HAL.UInt32;
      --  PWM Channel Period Register (ch_num = 3)
      CPRD3 : aliased HAL.UInt32;
      --  PWM Channel Counter Register (ch_num = 3)
      CCNT3 : aliased HAL.UInt32;
      --  PWM Channel Update Register (ch_num = 3)
      CUPD3 : aliased HAL.UInt32;
   end record
     with Volatile;

   for PWM_Peripheral use record
      MR    at 16#0# range 0 .. 31;
      ENA   at 16#4# range 0 .. 31;
      DIS   at 16#8# range 0 .. 31;
      SR    at 16#C# range 0 .. 31;
      IER   at 16#10# range 0 .. 31;
      IDR   at 16#14# range 0 .. 31;
      IMR   at 16#18# range 0 .. 31;
      ISR   at 16#1C# range 0 .. 31;
      CMR0  at 16#200# range 0 .. 31;
      CDTY0 at 16#204# range 0 .. 31;
      CPRD0 at 16#208# range 0 .. 31;
      CCNT0 at 16#20C# range 0 .. 31;
      CUPD0 at 16#210# range 0 .. 31;
      CMR1  at 16#220# range 0 .. 31;
      CDTY1 at 16#224# range 0 .. 31;
      CPRD1 at 16#228# range 0 .. 31;
      CCNT1 at 16#22C# range 0 .. 31;
      CUPD1 at 16#230# range 0 .. 31;
      CMR2  at 16#240# range 0 .. 31;
      CDTY2 at 16#244# range 0 .. 31;
      CPRD2 at 16#248# range 0 .. 31;
      CCNT2 at 16#24C# range 0 .. 31;
      CUPD2 at 16#250# range 0 .. 31;
      CMR3  at 16#260# range 0 .. 31;
      CDTY3 at 16#264# range 0 .. 31;
      CPRD3 at 16#268# range 0 .. 31;
      CCNT3 at 16#26C# range 0 .. 31;
      CUPD3 at 16#270# range 0 .. 31;
   end record;

   --  Pulse Width Modulation Controller
   PWM_Periph : aliased PWM_Peripheral
     with Import, Address => PWM_Base;

end SAM_SVD.PWM;
