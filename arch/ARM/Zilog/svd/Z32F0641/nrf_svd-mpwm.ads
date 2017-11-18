--

--  This spec has been automatically generated from Z32F0641.svd

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
      --  Motor Control Mode
      MCHMOD         : MR_MCHMOD_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Bottom match update mode
      BUP            : Boolean := False;
      --  Period match update mode
      TUP            : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  update mode
      UAO            : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Normal/Motor mode
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
      --  U Low Output Level
      ULL           : Boolean := False;
      --  V Low Output Level
      VLL           : Boolean := False;
      --  W Low Output Level
      WLL           : Boolean := False;
      --  U High Output Level
      UHL           : Boolean := False;
      --  V High Output Level
      VHL           : Boolean := False;
      --  W High Output Level
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

   --  MPWM Force Output Level Control Register
   type FOLR_Register is record
      --  U Low Forced Output Level
      ULFL          : Boolean := False;
      --  V Low Forced Output Level
      VLFL          : Boolean := False;
      --  W Low Forced Output Level
      WLFL          : Boolean := False;
      --  U High Forced Output Level
      UHFL          : Boolean := False;
      --  V High Forced Output Level
      VHFL          : Boolean := False;
      --  W High Forced Output Level
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

   --  MPWM Duty UL Register
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
      --  duty UL interrupt flag
      DULIF          : Boolean := False;
      --  duty VL interrupt flag
      DVLIRQ         : Boolean := False;
      --  duty WL interrupt flag
      DWLIRQ         : Boolean := False;
      --  duty UH interrupt flag
      DUHIF          : Boolean := False;
      --  duty VH interrupt flag
      DVHIF          : Boolean := False;
      --  duty WH interrupt flag
      DWHIF          : Boolean := False;
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
      DULIF          at 0 range 0 .. 0;
      DVLIRQ         at 0 range 1 .. 1;
      DWLIRQ         at 0 range 2 .. 2;
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
      --  duty UL interrupt enable
      ULIE          : Boolean := False;
      --  duty VL interrupt enable
      VLIE          : Boolean := False;
      --  duty WL interrupt enable
      WLIE          : Boolean := False;
      --  duty UH interrupt enable
      UHIE          : Boolean := False;
      --  duty VH interrupt enable
      VHIE          : Boolean := False;
      --  duty WH interrupt enable
      WHIE          : Boolean := False;
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
      ULIE          at 0 range 0 .. 0;
      VLIE          at 0 range 1 .. 1;
      WLIE          at 0 range 2 .. 2;
      UHIE          at 0 range 3 .. 3;
      VHIE          at 0 range 4 .. 4;
      WHIE          at 0 range 5 .. 5;
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
      --  Protect Short Condition
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

   --  MPWM Protection control Register
   type PCR_Register is record
      --  U phase Low protection output
      ULPROTM        : Boolean := False;
      --  V phase Low protection output
      VLPROTM        : Boolean := False;
      --  W phase Low protection output
      WLPROTM        : Boolean := False;
      --  U phase High protection output
      UHPROTM        : Boolean := False;
      --  V phase High protection output
      VHPROTM        : Boolean := False;
      --  W phase High protection output
      WHPROTM        : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Protection Interrup Enable
      PROTIE         : Boolean := False;
      --  Protection Input Debounce
      PROTD          : PCR_PROTD_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Protection Input 0 Polarity
      PROT0POL       : Boolean := False;
      --  Protection Input 0 Enable
      PROT0EN        : Boolean := False;
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
      PROT0POL       at 0 range 14 .. 14;
      PROT0EN        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PSR_PROTKEY_Field is HAL.UInt8;

   --  MPWM Protection 0 Status Register
   type PSR_Register is record
      --  U phase Low protection status
      ULPROT         : Boolean := False;
      --  V phase Low protection status
      VLPROT         : Boolean := False;
      --  W phase Low protection status
      WLPROT         : Boolean := False;
      --  U phase High protection status
      UHPROT         : Boolean := False;
      --  V phase High protection status
      VHPROT         : Boolean := False;
      --  W phase High protection status
      WHPROT         : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Protection Interrupt Flag
      PROTIF         : Boolean := False;
      --  lock safety pattern to set or reset protection
      PROTKEY        : PSR_PROTKEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      ULPROT         at 0 range 0 .. 0;
      VLPROT         at 0 range 1 .. 1;
      WLPROT         at 0 range 2 .. 2;
      UHPROT         at 0 range 3 .. 3;
      VHPROT         at 0 range 4 .. 4;
      WHPROT         at 0 range 5 .. 5;
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
   type MP0_Peripheral is record
      --  MPWM Mode Register
      MR   : aliased MR_Register;
      --  MPWM Output Level Register
      OLR  : aliased OLR_Register;
      --  MPWM Force Output Level Control Register
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
      --  MPWM Duty UL Register
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
      --  MPWM Protection control Register
      PCR0 : aliased PCR_Register;
      --  MPWM Protection 0 Status Register
      PSR0 : aliased PSR_Register;
      --  MPWM Protection control 1 Register
      PCR1 : aliased PCR_Register;
      --  MPWM Protection 1 Status Register
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

   for MP0_Peripheral use record
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
   MP0_Periph : aliased MP0_Peripheral
     with Import, Address => System'To_Address (16#40004000#);

end NRF_SVD.MPWM;
