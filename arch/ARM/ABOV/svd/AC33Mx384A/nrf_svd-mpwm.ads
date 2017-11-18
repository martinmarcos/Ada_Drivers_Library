--

--  This spec has been automatically generated from AC33Mx384A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MPWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MR_MCHMOD_Field is HAL.UInt2;

   --  MPWM Mode Register
   type MR_Register is record
      --  PWM counter mode
      UPDOWN        : Boolean := False;
      --  MCHMOD
      MCHMOD        : MR_MCHMOD_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  BUP
      BUP           : Boolean := False;
      --  TUP
      TUP           : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  UAO
      UAO           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      UPDOWN        at 0 range 0 .. 0;
      MCHMOD        at 0 range 1 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      BUP           at 0 range 4 .. 4;
      TUP           at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      UAO           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  MPWM Port Mode Register
   type OLR_Register is record
      --  ULL
      ULL           : Boolean := False;
      --  VLL
      VLL           : Boolean := False;
      --  WLL
      WLL           : Boolean := False;
      --  UHL
      UHL           : Boolean := False;
      --  VHL
      VHL           : Boolean := False;
      --  WHL
      WHL           : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OLR_Register use record
      ULL           at 0 range 0 .. 0;
      VLL           at 0 range 1 .. 1;
      WLL           at 0 range 2 .. 2;
      UHL           at 0 range 3 .. 3;
      VHL           at 0 range 4 .. 4;
      WHL           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  MPWM Force Output Level Register
   type FOLR_Register is record
      --  ULFL
      ULFL          : Boolean := False;
      --  VLFL
      VLFL          : Boolean := False;
      --  WLFL
      WLFL          : Boolean := False;
      --  UHFL
      UHFL          : Boolean := False;
      --  VHFL
      VHFL          : Boolean := False;
      --  WHFL
      WHFL          : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FOLR_Register use record
      ULFL          at 0 range 0 .. 0;
      VLFL          at 0 range 1 .. 1;
      WLFL          at 0 range 2 .. 2;
      UHFL          at 0 range 3 .. 3;
      VHFL          at 0 range 4 .. 4;
      WHFL          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype PRD_PERIOD_Field is HAL.UInt16;

   --  MPWM Period Register
   type PRD_Register is record
      --  PWM period
      PERIOD         : PRD_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRD_Register use record
      PERIOD         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DUH_DUTY_Field is HAL.UInt16;

   --  MPWM Duty UH Register
   type DUH_Register is record
      --  duty of UH output
      DUTY           : DUH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DUH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DVH_DUTY_Field is HAL.UInt16;

   --  MPWM Duty VH Register
   type DVH_Register is record
      --  duty of VH data
      DUTY           : DVH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DWH_DUTY_Field is HAL.UInt16;

   --  MPWM Duty WH Register
   type DWH_Register is record
      --  duty of WH output
      DUTY           : DWH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DUL_DUTY_Field is HAL.UInt16;

   --  MPWM Duty UL Register
   type DUL_Register is record
      --  duty of UL output
      DUTY           : DUL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DUL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DVL_DUTY_Field is HAL.UInt16;

   --  MPWM Duty VL Register
   type DVL_Register is record
      --  duty of VL output
      DUTY           : DVL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DWL_DUTY_Field is HAL.UInt16;

   --  MPWM Duty WL Register
   type DWL_Register is record
      --  duty of WL output
      DUTY           : DWL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR1_IRQN_Field is HAL.UInt3;

   --  MPWM Control Register 1
   type CR1_Register is record
      --  PWMEN
      PWMEN          : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  IRQ intervel Number
      IRQN           : CR1_IRQN_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PWMEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      IRQN           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  MPWM Control Register 2
   type CR2_Register is record
      --  PWM start
      PSTART        : Boolean := False;
      --  unspecified
      Reserved_1_6  : HAL.UInt6 := 16#0#;
      --  HALT
      HALT          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      PSTART        at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      HALT          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SR_IRQCNT_Field is HAL.UInt3;

   --  MPWM Status Register
   type SR_Register is record
      --  PWM duty UL interrupt flag
      DULIF          : Boolean := False;
      --  PWM duty VL interrupt flag
      DVLIF          : Boolean := False;
      --  PWM duty WL interrupt flag
      DWLIF          : Boolean := False;
      --  PWM duty UH interrupt flag
      DUHIF          : Boolean := False;
      --  PWM duty VH interrupt flag
      DVHIF          : Boolean := False;
      --  PWM duty WH interrupt flag
      DWHIF          : Boolean := False;
      --  PWM bottom interrupt flag
      BOTIF          : Boolean := False;
      --  PWM period interrupt flag
      PRDIF          : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Interrupt count number of period match
      IRQCNT         : SR_IRQCNT_Field := 16#0#;
      --  PWM count up/down
      DOWN           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DULIF          at 0 range 0 .. 0;
      DVLIF          at 0 range 1 .. 1;
      DWLIF          at 0 range 2 .. 2;
      DUHIF          at 0 range 3 .. 3;
      DVHIF          at 0 range 4 .. 4;
      DWHIF          at 0 range 5 .. 5;
      BOTIF          at 0 range 6 .. 6;
      PRDIF          at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      IRQCNT         at 0 range 12 .. 14;
      DOWN           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MPWM Interrupt Enable Register
   type IER_Register is record
      --  UL Duty or ATR1 Match Interrupt enable
      ULIE          : Boolean := False;
      --  VL Duty or ATR2 Match Interrupt enable
      VLIE          : Boolean := False;
      --  WL Duty or ATR3 Match Interrupt enable
      WLIE          : Boolean := False;
      --  UH Duty or ATR4 Match Interrupt enable
      UHIE          : Boolean := False;
      --  VH Duty or ATR5 Match Interrupt enable
      VHIE          : Boolean := False;
      --  WH Duty or ATR6 Match Interrupt enable
      WHIE          : Boolean := False;
      --  bottom interrupt enable
      BOTIEN        : Boolean := False;
      --  Period interrupt enable
      PRDIEN        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      ULIE          at 0 range 0 .. 0;
      VLIE          at 0 range 1 .. 1;
      WLIE          at 0 range 2 .. 2;
      UHIE          at 0 range 3 .. 3;
      VHIE          at 0 range 4 .. 4;
      WHIE          at 0 range 5 .. 5;
      BOTIEN        at 0 range 6 .. 6;
      PRDIEN        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  MPWM Counter Register
   type CNT_Register is record
      --  pwm counter value
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DTR_DT_Field is HAL.UInt8;

   --  MPWM Dead Time Register
   type DTR_Register is record
      --  dead time value
      DT             : DTR_DT_Field := 16#0#;
      --  dead time clk select
      DTCLK          : Boolean := False;
      --  unspecified
      Reserved_9_13  : HAL.UInt5 := 16#0#;
      --  PSHRT
      PSHRT          : Boolean := False;
      --  dead time Enable
      DTEN           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTR_Register use record
      DT             at 0 range 0 .. 7;
      DTCLK          at 0 range 8 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      PSHRT          at 0 range 14 .. 14;
      DTEN           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PCR_PROTD_Field is HAL.UInt3;

   --  MPWM Protection control Register 0
   type PCR_Register is record
      --  ULPROTM
      ULPROTM        : Boolean := False;
      --  VLPROTM
      VLPROTM        : Boolean := False;
      --  WLPROTM
      WLPROTM        : Boolean := False;
      --  UHPROTM
      UHPROTM        : Boolean := False;
      --  VHPROTM
      VHPROTM        : Boolean := False;
      --  WHPROTM
      WHPROTM        : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  PROTIE
      PROTIE         : Boolean := False;
      --  PROTD
      PROTD          : PCR_PROTD_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  PROTPOL
      PROTPOL        : Boolean := False;
      --  PROTEN
      PROTEN         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      ULPROTM        at 0 range 0 .. 0;
      VLPROTM        at 0 range 1 .. 1;
      WLPROTM        at 0 range 2 .. 2;
      UHPROTM        at 0 range 3 .. 3;
      VHPROTM        at 0 range 4 .. 4;
      WHPROTM        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PROTIE         at 0 range 7 .. 7;
      PROTD          at 0 range 8 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      PROTPOL        at 0 range 14 .. 14;
      PROTEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PSR_PROTKEY_Field is HAL.UInt8;

   --  MPWM Protection Status Register 0
   type PSR_Register is record
      --  Activate U-phase L-side protection flag
      ULPROTF        : Boolean := False;
      --  Activate V-phase L-side protection flag
      VLPROTF        : Boolean := False;
      --  Activate W-phase L-side protection flag
      WLPROTF        : Boolean := False;
      --  Activate U-phase H-side protection flag
      UHPROTF        : Boolean := False;
      --  Activate V-phase H-side protection flag
      VHPROTF        : Boolean := False;
      --  Activate W-phase H-side protection flag
      WHPROTF        : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Protection Interrupt status
      PROTIF         : Boolean := False;
      --  Protection Clear Access Key
      PROTKEY        : PSR_PROTKEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      ULPROTF        at 0 range 0 .. 0;
      VLPROTF        at 0 range 1 .. 1;
      WLPROTF        at 0 range 2 .. 2;
      UHPROTF        at 0 range 3 .. 3;
      VHPROTF        at 0 range 4 .. 4;
      WHPROTF        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PROTIF         at 0 range 7 .. 7;
      PROTKEY        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ATR_ATCNT_Field is HAL.UInt16;
   subtype ATR_ATMOD_Field is HAL.UInt2;

   --  MPWMn ADC Trigger Counter 1 Register
   type ATR_Register is record
      --  ADC Trigger counter
      ATCNT          : ATR_ATCNT_Field := 16#0#;
      --  ADC Trigger mode register
      ATMOD          : ATR_ATMOD_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Trigger register update mode
      ATUDT          : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ATR_Register use record
      ATCNT          at 0 range 0 .. 15;
      ATMOD          at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      ATUDT          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MOTOR PULSE-WIDTH-MODULATOR
   type MPWM_Peripheral is record
      --  MPWM Mode Register
      MR   : aliased MR_Register;
      --  MPWM Port Mode Register
      OLR  : aliased OLR_Register;
      --  MPWM Force Output Level Register
      FOLR : aliased FOLR_Register;
      --  MPWM Period Register
      PRD  : aliased PRD_Register;
      --  MPWM Duty UH Register
      DUH  : aliased DUH_Register;
      --  MPWM Duty VH Register
      DVH  : aliased DVH_Register;
      --  MPWM Duty WH Register
      DWH  : aliased DWH_Register;
      --  MPWM Duty UL Register
      DUL  : aliased DUL_Register;
      --  MPWM Duty VL Register
      DVL  : aliased DVL_Register;
      --  MPWM Duty WL Register
      DWL  : aliased DWL_Register;
      --  MPWM Control Register 1
      CR1  : aliased CR1_Register;
      --  MPWM Control Register 2
      CR2  : aliased CR2_Register;
      --  MPWM Status Register
      SR   : aliased SR_Register;
      --  MPWM Interrupt Enable Register
      IER  : aliased IER_Register;
      --  MPWM Counter Register
      CNT  : aliased CNT_Register;
      --  MPWM Dead Time Register
      DTR  : aliased DTR_Register;
      --  MPWM Protection control Register 0
      PCR0 : aliased PCR_Register;
      --  MPWM Protection Status Register 0
      PSR0 : aliased PSR_Register;
      --  MPWM Protection control Register 1
      PCR1 : aliased PCR_Register;
      --  MPWM Protection Status Register 1
      PSR1 : aliased PSR_Register;
      --  MPWMn ADC Trigger Counter 1 Register
      ATR1 : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 2 Register
      ATR2 : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 3 Register
      ATR3 : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 4 Register
      ATR4 : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 5 Register
      ATR5 : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 6 Register
      ATR6 : aliased ATR_Register;
   end record
     with Volatile;

   for MPWM_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      OLR  at 16#4# range 0 .. 31;
      FOLR at 16#8# range 0 .. 31;
      PRD  at 16#C# range 0 .. 31;
      DUH  at 16#10# range 0 .. 31;
      DVH  at 16#14# range 0 .. 31;
      DWH  at 16#18# range 0 .. 31;
      DUL  at 16#1C# range 0 .. 31;
      DVL  at 16#20# range 0 .. 31;
      DWL  at 16#24# range 0 .. 31;
      CR1  at 16#28# range 0 .. 31;
      CR2  at 16#2C# range 0 .. 31;
      SR   at 16#30# range 0 .. 31;
      IER  at 16#34# range 0 .. 31;
      CNT  at 16#38# range 0 .. 31;
      DTR  at 16#3C# range 0 .. 31;
      PCR0 at 16#40# range 0 .. 31;
      PSR0 at 16#44# range 0 .. 31;
      PCR1 at 16#48# range 0 .. 31;
      PSR1 at 16#4C# range 0 .. 31;
      ATR1 at 16#58# range 0 .. 31;
      ATR2 at 16#5C# range 0 .. 31;
      ATR3 at 16#60# range 0 .. 31;
      ATR4 at 16#64# range 0 .. 31;
      ATR5 at 16#68# range 0 .. 31;
      ATR6 at 16#6C# range 0 .. 31;
   end record;

   --  MOTOR PULSE-WIDTH-MODULATOR
   MP0_Periph : aliased MPWM_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  MOTOR PULSE-WIDTH-MODULATOR
   MP1_Periph : aliased MPWM_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

end NRF_SVD.MPWM;
