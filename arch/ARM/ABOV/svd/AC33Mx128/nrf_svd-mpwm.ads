--

--  This spec has been automatically generated from AC33Mx128.svd

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

   subtype MR_FORCM_Field is HAL.UInt2;
   subtype MR_MCHMOD_Field is HAL.UInt2;

   --  MPWM Mode Register
   type MR_Register is record
      --  PWM counter mode
      UPDOWN         : Boolean := False;
      --  period duty update at ..
      PDUP           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  force mode
      FORCM          : MR_FORCM_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  force mode
      FORCEN         : Boolean := False;
      --  Update all duty register
      UALL           : Boolean := False;
      --  update
      UPDATE         : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Motor control channel mode
      MCHMOD         : MR_MCHMOD_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Normal/Motor mode
      MOTOR          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      UPDOWN         at 0 range 0 .. 0;
      PDUP           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FORCM          at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      FORCEN         at 0 range 7 .. 7;
      UALL           at 0 range 8 .. 8;
      UPDATE         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MCHMOD         at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      MOTOR          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PMR_PMOD_Field is HAL.UInt2;

   --  MPWM Port Mode Register
   type PMR_Register is record
      --  Polarity of UL PIN
      POLWL          : Boolean := False;
      --  Polarity of UH PIN
      POLWH          : Boolean := False;
      --  Polarity of UL PIN
      POLVL          : Boolean := False;
      --  Polarity of UH PIN
      POLVH          : Boolean := False;
      --  Polarity of UL PIN
      POLUL          : Boolean := False;
      --  Polarity of UH PIN
      POLUH          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PWM pulse mode
      PMOD           : PMR_PMOD_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMR_Register use record
      POLWL          at 0 range 0 .. 0;
      POLWH          at 0 range 1 .. 1;
      POLVL          at 0 range 2 .. 2;
      POLVH          at 0 range 3 .. 3;
      POLUL          at 0 range 4 .. 4;
      POLUH          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PMOD           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  MPWM Output Control Register
   type OCR_Register is record
      --  PWM WL output control in force mode
      WLEN          : Boolean := False;
      --  PWM WH output control in force mode
      WHEN_k        : Boolean := False;
      --  PWM VL output control in force mode
      VLEN          : Boolean := False;
      --  PWM VH output control in force mode
      VHEN          : Boolean := False;
      --  PWM UL output control in force mode
      ULEN          : Boolean := False;
      --  PWM UH output control in force mode
      UHEN          : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCR_Register use record
      WLEN          at 0 range 0 .. 0;
      WHEN_k        at 0 range 1 .. 1;
      VLEN          at 0 range 2 .. 2;
      VHEN          at 0 range 3 .. 3;
      ULEN          at 0 range 4 .. 4;
      UHEN          at 0 range 5 .. 5;
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
   subtype CR1_IRQMD_Field is HAL.UInt2;

   --  MPWM Control Register 1
   type CR1_Register is record
      --  PWM HALT
      HALT           : Boolean := False;
      --  unspecified
      Reserved_1_6   : HAL.UInt6 := 16#0#;
      --  PWM enable
      PWMEN          : Boolean := False;
      --  IRQ intervel Number
      IRQN           : CR1_IRQN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  IRQ mode
      IRQMD          : CR1_IRQMD_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  IRQ intervel mode
      INTVEN         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      HALT           at 0 range 0 .. 0;
      Reserved_1_6   at 0 range 1 .. 6;
      PWMEN          at 0 range 7 .. 7;
      IRQN           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      IRQMD          at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      INTVEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MPWM Control Register 2
   type CR2_Register is record
      --  PWM start
      PSTART        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      PSTART        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SR_IRQCNT_Field is HAL.UInt3;

   --  MPWM Status Register
   type SR_Register is record
      --  duty WL interrupt flag
      DWLIRQ         : Boolean := False;
      --  duty WH interrupt flag
      DWHIRQ         : Boolean := False;
      --  duty VL interrupt flag
      DVLIRQ         : Boolean := False;
      --  duty VH interrupt flag
      DVHIRQ         : Boolean := False;
      --  duty UL interrupt flag
      DULIRQ         : Boolean := False;
      --  duty UH interrupt flag
      DUHIRQ         : Boolean := False;
      --  PWM bottom interrupt flag
      BOTIRQ         : Boolean := False;
      --  PWM period interrupt flag
      PRDIRQ         : Boolean := False;
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
      DWLIRQ         at 0 range 0 .. 0;
      DWHIRQ         at 0 range 1 .. 1;
      DVLIRQ         at 0 range 2 .. 2;
      DVHIRQ         at 0 range 3 .. 3;
      DULIRQ         at 0 range 4 .. 4;
      DUHIRQ         at 0 range 5 .. 5;
      BOTIRQ         at 0 range 6 .. 6;
      PRDIRQ         at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      IRQCNT         at 0 range 12 .. 14;
      DOWN           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MPWM Interrupt Enable Register
   type IER_Register is record
      --  duty WL interrupt enable
      DWLIEN        : Boolean := False;
      --  duty WH interrupt enable
      DWHIEN        : Boolean := False;
      --  duty VL interrupt enable
      DVLIEN        : Boolean := False;
      --  duty VH interrupt enable
      DVHIEN        : Boolean := False;
      --  duty UL interrupt enable
      DULIEN        : Boolean := False;
      --  duty UH interrupt enable
      DUHIEN        : Boolean := False;
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
      DWLIEN        at 0 range 0 .. 0;
      DWHIEN        at 0 range 1 .. 1;
      DVLIEN        at 0 range 2 .. 2;
      DVHIEN        at 0 range 3 .. 3;
      DULIEN        at 0 range 4 .. 4;
      DUHIEN        at 0 range 5 .. 5;
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
      Reserved_9_14  : HAL.UInt6 := 16#0#;
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
      Reserved_9_14  at 0 range 9 .. 14;
      DTEN           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PCR_PTSEL_Field is HAL.UInt2;
   subtype PCR_PTIN_Field is HAL.UInt2;
   subtype PCR_PTDBC_Field is HAL.UInt3;

   --  MPWM Protection control Register
   type PCR_Register is record
      --  protection mode sel
      PTSEL          : PCR_PTSEL_Field := 16#0#;
      --  Protection Input
      PTIN           : PCR_PTIN_Field := 16#0#;
      --  protection signal debounce
      PTDBC          : PCR_PTDBC_Field := 16#0#;
      --  protection clear
      PROTCLR        : Boolean := False;
      --  WL protection output
      WLPROT         : Boolean := False;
      --  WH protection output
      WHPROT         : Boolean := False;
      --  VL protection output
      VLPROT         : Boolean := False;
      --  VH protection output
      VHPROT         : Boolean := False;
      --  UL protection output
      ULPROT         : Boolean := False;
      --  UH protection output
      UHPROT         : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Protect mode disable
      PROTDIS        : Boolean := False;
      --  ADC0 Comparator output
      AD0IN          : Boolean := False;
      --  ADC1 Comparator output
      AD1IN          : Boolean := False;
      --  ADC2 Comparator output
      AD2IN          : Boolean := False;
      --  comparator 0 output
      C0IN           : Boolean := False;
      --  comparator 1 output
      C1IN           : Boolean := False;
      --  comparator 2 output
      C2IN           : Boolean := False;
      --  comparator 3 output
      C3IN           : Boolean := False;
      --  EXT ov pin input
      EXTOV          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      PTSEL          at 0 range 0 .. 1;
      PTIN           at 0 range 2 .. 3;
      PTDBC          at 0 range 4 .. 6;
      PROTCLR        at 0 range 7 .. 7;
      WLPROT         at 0 range 8 .. 8;
      WHPROT         at 0 range 9 .. 9;
      VLPROT         at 0 range 10 .. 10;
      VHPROT         at 0 range 11 .. 11;
      ULPROT         at 0 range 12 .. 12;
      UHPROT         at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PROTDIS        at 0 range 15 .. 15;
      AD0IN          at 0 range 16 .. 16;
      AD1IN          at 0 range 17 .. 17;
      AD2IN          at 0 range 18 .. 18;
      C0IN           at 0 range 19 .. 19;
      C1IN           at 0 range 20 .. 20;
      C2IN           at 0 range 21 .. 21;
      C3IN           at 0 range 22 .. 22;
      EXTOV          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PSR_SAFE_PAT_Field is HAL.UInt16;

   --  MPWM Protection Status Register
   type PSR_Register is record
      --  Protection Input status
      PROTIN        : Boolean := False;
      --  unspecified
      Reserved_1_6  : HAL.UInt6 := 16#0#;
      --  Protection mode enable status
      PROTEN        : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  lock safety pattern to set or reset protection
      SAFE_PAT      : PSR_SAFE_PAT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      PROTIN        at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      PROTEN        at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      SAFE_PAT      at 0 range 16 .. 31;
   end record;

   subtype OVCR_OVSEL_Field is HAL.UInt2;
   subtype OVCR_OVDBC_Field is HAL.UInt3;

   --  MPWM Over Voltage control Register
   type OVCR_Register is record
      --  OV voltage proection mode select
      OVSEL          : OVCR_OVSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  OV voltage protection signal debounce
      OVDBC          : OVCR_OVDBC_Field := 16#0#;
      --  OV protection clear
      OVCLR          : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  over voltage protection mode
      OVEN           : Boolean := False;
      --  ADC0 Comparator output
      AD0IN          : Boolean := False;
      --  ADC1 Comparator output
      AD1IN          : Boolean := False;
      --  ADC2 Comparator output
      AD2IN          : Boolean := False;
      --  comparator 0 output
      C0IN           : Boolean := False;
      --  comparator 1 output
      C1IN           : Boolean := False;
      --  comparator 2 output
      C2IN           : Boolean := False;
      --  comparator 3 output
      C3IN           : Boolean := False;
      --  ext OV pin input
      EXTOV          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OVCR_Register use record
      OVSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      OVDBC          at 0 range 4 .. 6;
      OVCLR          at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      OVEN           at 0 range 15 .. 15;
      AD0IN          at 0 range 16 .. 16;
      AD1IN          at 0 range 17 .. 17;
      AD2IN          at 0 range 18 .. 18;
      C0IN           at 0 range 19 .. 19;
      C1IN           at 0 range 20 .. 20;
      C2IN           at 0 range 21 .. 21;
      C3IN           at 0 range 22 .. 22;
      EXTOV          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  MPWM Over Voltage Status Register
   type OVSR_Register is record
      --  Over voltage protection input status
      OVPIN         : Boolean := False;
      --  unspecified
      Reserved_1_6  : HAL.UInt6 := 16#0#;
      --  Over voltage protection mode status
      OVSTAT        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OVSR_Register use record
      OVPIN         at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      OVSTAT        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ATCR_ATRGM_Field is HAL.UInt2;

   --  MPWM ADC Trigger Control Register
   type ATCR_Register is record
      --  ADC Trigger Mode
      ATRGM         : ATCR_ATRGM_Field := 16#0#;
      --  unspecified
      Reserved_2_6  : HAL.UInt5 := 16#0#;
      --  ADC Trigger Mode Enable
      ATRGEN        : Boolean := False;
      --  ADC Trigger register 0 match event
      ATRGALL       : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ATCR_Register use record
      ATRGM         at 0 range 0 .. 1;
      Reserved_2_6  at 0 range 2 .. 6;
      ATRGEN        at 0 range 7 .. 7;
      ATRGALL       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
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
      PMR  : aliased PMR_Register;
      --  MPWM Output Control Register
      OCR  : aliased OCR_Register;
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
      PCR  : aliased PCR_Register;
      --  MPWM Protection Status Register
      PSR  : aliased PSR_Register;
      --  MPWM Over Voltage control Register
      OVCR : aliased OVCR_Register;
      --  MPWM Over Voltage Status Register
      OVSR : aliased OVSR_Register;
      --  MPWM ADC Trigger Control Register
      ATCR : aliased ATCR_Register;
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
      PMR  at 16#4# range 0 .. 31;
      OCR  at 16#8# range 0 .. 31;
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
      PCR  at 16#40# range 0 .. 31;
      PSR  at 16#44# range 0 .. 31;
      OVCR at 16#48# range 0 .. 31;
      OVSR at 16#4C# range 0 .. 31;
      ATCR at 16#54# range 0 .. 31;
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
