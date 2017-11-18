--

--  This spec has been automatically generated from Z32F3841.svd

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
      UPDOWN         : Boolean := False;
      --  Motor control channel mode
      MCHMOD         : MR_MCHMOD_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  period duty update at Bottom match
      BUP            : Boolean := False;
      --  period, duty values updated at period match
      TUP            : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Update timing
      UAO            : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Motor Bit
      MOTORB         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      UPDOWN         at 0 range 0 .. 0;
      MCHMOD         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BUP            at 0 range 4 .. 4;
      TUP            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      UAO            at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      MOTORB         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MPWM Output Level Register
   type OLR_Register is record
      --  U Low Level
      ULL           : Boolean := False;
      --  V Low Level
      VLL           : Boolean := False;
      --  W Low Level
      WLL           : Boolean := False;
      --  U High Level
      UHL           : Boolean := False;
      --  V High Level
      VHL           : Boolean := False;
      --  W High level
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

   --  MPWM Forced Output Control Register
   type FOR_Register is record
      --  U Low Forced Level
      ULFL          : Boolean := False;
      --  V Low Forced Level
      VLFL          : Boolean := False;
      --  W Low Forced Level
      WLFL          : Boolean := False;
      --  U High Forced Level
      UHFL          : Boolean := False;
      --  V High Forced Level
      VHFL          : Boolean := False;
      --  W High Forced Level
      WHFL          : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FOR_Register use record
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
      PERIOD         : PRD_PERIOD_Field := 16#2#;
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
      DUTY           : DUH_DUTY_Field := 16#1#;
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
      DUTY           : DVH_DUTY_Field := 16#1#;
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
      DUTY           : DWH_DUTY_Field := 16#1#;
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
      DUTY           : DUL_DUTY_Field := 16#1#;
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

   --  MPWM Duty UL Register
   type DVL_Register is record
      --  duty of VL output
      DUTY           : DVL_DUTY_Field := 16#1#;
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
      DUTY           : DWL_DUTY_Field := 16#1#;
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
      --  PWM enable
      PWMEN          : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  IRQ interval Number
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
      --  PWM HALT
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
      --  duty UL/ATR1 interrupt flag
      DUL_ATR1IF     : Boolean := False;
      --  duty VL/ATR2 interrupt flag
      DVL_ATR2IF     : Boolean := False;
      --  duty WL/ATR3 interrupt flag
      DWL_ATR3IF     : Boolean := False;
      --  duty UH/ATR4 interrupt flag
      DUH_ATR4IF     : Boolean := False;
      --  duty VH/ATR5 interrupt flag
      DVH_ATR5IF     : Boolean := False;
      --  duty WH/ATR6 interrupt flag
      DWH_ATR6IF     : Boolean := False;
      --  PWM bottom interrupt flag
      BOTIF          : Boolean := False;
      --  PWM period interrupt flag
      PRDIF          : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  PWM count number of period match
      IRQCNT         : SR_IRQCNT_Field := 16#0#;
      --  PWM count up/down
      DOWN           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      DUL_ATR1IF     at 0 range 0 .. 0;
      DVL_ATR2IF     at 0 range 1 .. 1;
      DWL_ATR3IF     at 0 range 2 .. 2;
      DUH_ATR4IF     at 0 range 3 .. 3;
      DVH_ATR5IF     at 0 range 4 .. 4;
      DWH_ATR6IF     at 0 range 5 .. 5;
      BOTIF          at 0 range 6 .. 6;
      PRDIF          at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      IRQCNT         at 0 range 12 .. 14;
      DOWN           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MPWM Interrupt Enable Register
   type IER_Register is record
      --  duty UL/ATR1 interrupt enable
      DUL_ATR1IEN   : Boolean := False;
      --  duty VL/ATR2 interrupt enable
      DVL_ATR2IEN   : Boolean := False;
      --  duty WL/ATR3 interrupt enable
      DWL_ATR3IEN   : Boolean := False;
      --  duty UH/ATR4 interrupt enable
      DUH_ATR4IEN   : Boolean := False;
      --  duty VL/ATR5 interrupt enable
      DVH_ATR5IEN   : Boolean := False;
      --  duty WH/ATR6 interrupt enable
      DWH_ATR6IEN   : Boolean := False;
      --  bottom interrupt enable
      BOTIE         : Boolean := False;
      --  Period interrupt enable
      PRDIEN        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      DUL_ATR1IEN   at 0 range 0 .. 0;
      DVL_ATR2IEN   at 0 range 1 .. 1;
      DWL_ATR3IEN   at 0 range 2 .. 2;
      DUH_ATR4IEN   at 0 range 3 .. 3;
      DVH_ATR5IEN   at 0 range 4 .. 4;
      DWH_ATR6IEN   at 0 range 5 .. 5;
      BOTIE         at 0 range 6 .. 6;
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
      --  Protect Short condition
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

   subtype PCR0_PROTD_Field is HAL.UInt3;

   --  MPWM Protection control Register (PRTIN pin)
   type PCR0_Register is record
      --  UL protection output
      ULPROTM        : Boolean := False;
      --  VL protection output
      VLPROTM        : Boolean := False;
      --  WL protection output
      WLPROTM        : Boolean := False;
      --  UH protection output
      UHPROTM        : Boolean := False;
      --  VH protection output
      VHPROTM        : Boolean := False;
      --  WH protection output
      WHPROTM        : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Protection Interrupt Enable
      PROTIE         : Boolean := False;
      --  Input 0 Debounce
      PROTD          : PCR0_PROTD_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Input 0 Polarity
      PROTPOL        : Boolean := False;
      --  Enable Protection Input 0 pin
      PROTOEN        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR0_Register use record
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
      PROTOEN        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PSR_PROTKEY_Field is HAL.UInt8;

   --  MPWM Protection Status Register (PRTIN pin)
   type PSR_Register is record
      --  UL Protection Flag status
      ULPROTF        : Boolean := False;
      --  VL Protection Flag status
      VLPROTF        : Boolean := False;
      --  WL Protection Flag status
      WLPROTF        : Boolean := False;
      --  UH Protection Flag status
      UHPROTF        : Boolean := False;
      --  VH Protection Flag status
      VHPROTF        : Boolean := False;
      --  WH Protection Flag status
      WHPROTF        : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Protection Interrupt status
      PROTIF         : Boolean := False;
      --  lock safety pattern to set or reset protection
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

   subtype PCR1_PROTD_Field is HAL.UInt3;

   --  MPWM Protection control Register (OVIN pin)
   type PCR1_Register is record
      --  UL protection output
      ULPROT         : Boolean := False;
      --  VL protection output
      VLPROT         : Boolean := False;
      --  WL protection output
      WLPROT         : Boolean := False;
      --  UH protection output
      UHPROT         : Boolean := False;
      --  VH protection output
      VHPROT         : Boolean := False;
      --  WH protection output
      WHPROT         : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Protection Interrupt Enable
      PROTIE         : Boolean := False;
      --  Input 0 Debounce
      PROTD          : PCR1_PROTD_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Input 0 Polarity
      PROTPOL        : Boolean := False;
      --  Enable Protection Input 0 pin
      PROTOEN        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR1_Register use record
      ULPROT         at 0 range 0 .. 0;
      VLPROT         at 0 range 1 .. 1;
      WLPROT         at 0 range 2 .. 2;
      UHPROT         at 0 range 3 .. 3;
      VHPROT         at 0 range 4 .. 4;
      WHPROT         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PROTIE         at 0 range 7 .. 7;
      PROTD          at 0 range 8 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      PROTPOL        at 0 range 14 .. 14;
      PROTOEN        at 0 range 15 .. 15;
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
      MR    : aliased MR_Register;
      --  MPWM Output Level Register
      OLR   : aliased OLR_Register;
      --  MPWM Forced Output Control Register
      FOR_k : aliased FOR_Register;
      --  MPWM Period Register
      PRD   : aliased PRD_Register;
      --  MPWM Duty UH Register
      DUH   : aliased DUH_Register;
      --  MPWM Duty VH Register
      DVH   : aliased DVH_Register;
      --  MPWM Duty WH Register
      DWH   : aliased DWH_Register;
      --  MPWM Duty UL Register
      DUL   : aliased DUL_Register;
      --  MPWM Duty UL Register
      DVL   : aliased DVL_Register;
      --  MPWM Duty WL Register
      DWL   : aliased DWL_Register;
      --  MPWM Control Register 1
      CR1   : aliased CR1_Register;
      --  MPWM Control Register 2
      CR2   : aliased CR2_Register;
      --  MPWM Status Register
      SR    : aliased SR_Register;
      --  MPWM Interrupt Enable Register
      IER   : aliased IER_Register;
      --  MPWM Counter Register
      CNT   : aliased CNT_Register;
      --  MPWM Dead Time Register
      DTR   : aliased DTR_Register;
      --  MPWM Protection control Register (PRTIN pin)
      PCR0  : aliased PCR0_Register;
      --  MPWM Protection Status Register (PRTIN pin)
      PSR0  : aliased PSR_Register;
      --  MPWM Protection control Register (OVIN pin)
      PCR1  : aliased PCR1_Register;
      --  MPWM Protection Status Register (OVIN pin)
      PSR1  : aliased PSR_Register;
      --  MPWMn ADC Trigger Counter 1 Register
      ATR1  : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 2 Register
      ATR2  : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 3 Register
      ATR3  : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 4 Register
      ATR4  : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 5 Register
      ATR5  : aliased ATR_Register;
      --  MPWMn ADC Trigger Counter 6 Register
      ATR6  : aliased ATR_Register;
   end record
     with Volatile;

   for MPWM_Peripheral use record
      MR    at 16#0# range 0 .. 31;
      OLR   at 16#4# range 0 .. 31;
      FOR_k at 16#8# range 0 .. 31;
      PRD   at 16#C# range 0 .. 31;
      DUH   at 16#10# range 0 .. 31;
      DVH   at 16#14# range 0 .. 31;
      DWH   at 16#18# range 0 .. 31;
      DUL   at 16#1C# range 0 .. 31;
      DVL   at 16#20# range 0 .. 31;
      DWL   at 16#24# range 0 .. 31;
      CR1   at 16#28# range 0 .. 31;
      CR2   at 16#2C# range 0 .. 31;
      SR    at 16#30# range 0 .. 31;
      IER   at 16#34# range 0 .. 31;
      CNT   at 16#38# range 0 .. 31;
      DTR   at 16#3C# range 0 .. 31;
      PCR0  at 16#40# range 0 .. 31;
      PSR0  at 16#44# range 0 .. 31;
      PCR1  at 16#48# range 0 .. 31;
      PSR1  at 16#4C# range 0 .. 31;
      ATR1  at 16#58# range 0 .. 31;
      ATR2  at 16#5C# range 0 .. 31;
      ATR3  at 16#60# range 0 .. 31;
      ATR4  at 16#64# range 0 .. 31;
      ATR5  at 16#68# range 0 .. 31;
      ATR6  at 16#6C# range 0 .. 31;
   end record;

   --  MOTOR PULSE-WIDTH-MODULATOR
   MP0_Periph : aliased MPWM_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

   --  MOTOR PULSE-WIDTH-MODULATOR
   MP1_Periph : aliased MPWM_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

end NRF_SVD.MPWM;
