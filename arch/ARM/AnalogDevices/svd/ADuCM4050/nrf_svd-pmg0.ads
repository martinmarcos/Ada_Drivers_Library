--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMG0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Battery Monitor Range
   type IEN_RANGEBAT_Field is
     (
      --  Configure to generate interrupt if VBAT in Region1
      REGION1,
      --  Configure to generate interrupt if VBAT in Region2
      REGION2,
      --  Configure to generate interrupt if VBAT in Region3
      REGION3,
      --  NA
      Na)
     with Size => 2;
   for IEN_RANGEBAT_Field use
     (REGION1 => 0,
      REGION2 => 1,
      REGION3 => 2,
      Na => 3);

   --  Power Supply Monitor Interrupt Enable
   type IEN_Register is record
      --  Enable Interrupt for VBAT
      VBAT           : Boolean := False;
      --  Enable Interrupt When VREG Under Voltage (Below 1V)
      VREGUNDR       : Boolean := False;
      --  Enable Interrupt When VREG Over Voltage (Above 1.32V)
      VREGOVR        : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Battery Monitor Range
      RANGEBAT       : IEN_RANGEBAT_Field := NRF_SVD.PMG0.REGION1;
      --  Interrupt Enable for VBAT Range
      IENBAT         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      VBAT           at 0 range 0 .. 0;
      VREGUNDR       at 0 range 1 .. 1;
      VREGOVR        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RANGEBAT       at 0 range 8 .. 9;
      IENBAT         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  PSM_STAT_RANGE array
   type PSM_STAT_RANGE_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PSM_STAT_RANGE
   type PSM_STAT_RANGE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RANGE as a value
            Val : HAL.UInt3;
         when True =>
            --  RANGE as an array
            Arr : PSM_STAT_RANGE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PSM_STAT_RANGE_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  VBAT Range1
   type PSM_STAT_RORANGE1_Field is
     (
      --  VBAT NOT in the range specified
      BATSTAT1,
      --  VBAT in the range specified
      BATSTAT0)
     with Size => 1;
   for PSM_STAT_RORANGE1_Field use
     (BATSTAT1 => 0,
      BATSTAT0 => 1);

   --  PSM_STAT_RORANGE array
   type PSM_STAT_RORANGE_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PSM_STAT_RORANGE
   type PSM_STAT_RORANGE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RORANGE as a value
            Val : HAL.UInt2;
         when True =>
            --  RORANGE as an array
            Arr : PSM_STAT_RORANGE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PSM_STAT_RORANGE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Power Supply Monitor Status
   type PSM_STAT_Register is record
      --  Status Bit Indicating an Alarm That Battery is Below 1.8V
      VBATUNDR       : Boolean := False;
      --  Status Bit for Alarm Indicating VREG is Below 1V
      VREGUNDR       : Boolean := False;
      --  Status Bit for Alarm Indicating Over Voltage for VREG
      VREGOVR        : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Read-only. WIC Enable Acknowledge from Cortex
      WICENACK       : Boolean := False;
      --  VBAT Range1
      RANGE_k        : PSM_STAT_RANGE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Read-only. VBAT Range1
      RORANGE1       : PSM_STAT_RORANGE1_Field := NRF_SVD.PMG0.BATSTAT1;
      --  Read-only. VBAT Range2
      RORANGE        : PSM_STAT_RORANGE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSM_STAT_Register use record
      VBATUNDR       at 0 range 0 .. 0;
      VREGUNDR       at 0 range 1 .. 1;
      VREGOVR        at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      WICENACK       at 0 range 7 .. 7;
      RANGE_k        at 0 range 8 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      RORANGE1       at 0 range 13 .. 13;
      RORANGE        at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Power Mode Bits
   type PWRMOD_MODE_Field is
     (
      --  Flexi Mode
      Flexi,
      --  Hibernate Mode
      Hibernate,
      --  Shutdown Mode
      Shutdown)
     with Size => 2;
   for PWRMOD_MODE_Field use
     (Flexi => 0,
      Hibernate => 2,
      Shutdown => 3);

   --  Monitor VBAT During Hibernate Mode
   type PWRMOD_MONVBATN_Field is
     (
      --  VBAT monitor enabled in PMG block
      Monitor_En,
      --  VBAT monitor disabled in PMG block
      Monitor_Dis)
     with Size => 1;
   for PWRMOD_MONVBATN_Field use
     (Monitor_En => 0,
      Monitor_Dis => 1);

   --  Power Mode Register
   type PWRMOD_Register is record
      --  Power Mode Bits
      MODE          : PWRMOD_MODE_Field := NRF_SVD.PMG0.Flexi;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Monitor VBAT During Hibernate Mode
      MONVBATN      : PWRMOD_MONVBATN_Field := NRF_SVD.PMG0.Monitor_En;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRMOD_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      MONVBATN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PWRKEY_VALUE_Field is HAL.UInt16;

   --  Key Protection for PMG_PWRMOD and PMG_SRAMRET
   type PWRKEY_Register is record
      --  Write-only. Power Control Key
      VALUE          : PWRKEY_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRKEY_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SHDN_STAT_EXTINT array
   type SHDN_STAT_EXTINT_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for SHDN_STAT_EXTINT
   type SHDN_STAT_EXTINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTINT as a value
            Val : HAL.UInt3;
         when True =>
            --  EXTINT as an array
            Arr : SHDN_STAT_EXTINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SHDN_STAT_EXTINT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Shutdown Status Register
   type SHDN_STAT_Register is record
      --  Read-only. Interrupt from External Interrupt 0
      EXTINT        : SHDN_STAT_EXTINT_Field;
      --  Read-only. Interrupt from RTC
      RTC           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHDN_STAT_Register use record
      EXTINT        at 0 range 0 .. 2;
      RTC           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SRAMRET_RET array
   type SRAMRET_RET_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRAMRET_RET
   type SRAMRET_RET_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RET as a value
            Val : HAL.UInt2;
         when True =>
            --  RET as an array
            Arr : SRAMRET_RET_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRAMRET_RET_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SRAMRET_RET array
   type SRAMRET_RET_Field_Array_1 is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SRAMRET_RET
   type SRAMRET_RET_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RET as a value
            Val : HAL.UInt2;
         when True =>
            --  RET as an array
            Arr : SRAMRET_RET_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRAMRET_RET_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control for Retention SRAM in Hibernate Mode
   type SRAMRET_Register is record
      --  Enable Retention Bank 1 (12 KB)
      RET                      : SRAMRET_RET_Field :=
                                  (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_7             : HAL.UInt6 := 16#0#;
      --  Enable Retention Bank 5 (32 KB)
      RET_1                    : SRAMRET_RET_Field_1 :=
                                  (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_22           : HAL.UInt13 := 16#0#;
      --  Hibernate Mode SRAM Load Mode Control
      HIBERNATE_SRAM_LOAD_MODE : Boolean := False;
      --  unspecified
      Reserved_24_31           : HAL.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMRET_Register use record
      RET                      at 0 range 0 .. 1;
      Reserved_2_7             at 0 range 2 .. 7;
      RET_1                    at 0 range 8 .. 9;
      Reserved_10_22           at 0 range 10 .. 22;
      HIBERNATE_SRAM_LOAD_MODE at 0 range 23 .. 23;
      Reserved_24_31           at 0 range 24 .. 31;
   end record;

   --  Hibernate Mode Load Mode Control
   type TRIM_hibernate_load_mode_Field is
     (
      --  High hibernate load
      High_Load,
      --  Low hibernate load
      Low_Load)
     with Size => 3;
   for TRIM_hibernate_load_mode_Field use
     (High_Load => 0,
      Low_Load => 7);

   --  Trimming Bits
   type TRIM_Register is record
      --  unspecified
      Reserved_0_28       : HAL.UInt29 := 16#A8AA2A2#;
      --  Hibernate Mode Load Mode Control
      hibernate_load_mode : TRIM_hibernate_load_mode_Field :=
                             NRF_SVD.PMG0.High_Load;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIM_Register use record
      Reserved_0_28       at 0 range 0 .. 28;
      hibernate_load_mode at 0 range 29 .. 31;
   end record;

   --  Power on Reset Source
   type RST_STAT_PORSRC_Field is
     (
      --  POR triggered because VBAT drops below Fail Safe
      Failsafe_Hv,
      --  POR trigger because VBAT supply (VBAT < 1.7 V)
      Rst_Vbat,
      --  POR triggered because VDD supply (VDD < 1.08 V)
      Rst_Vreg,
      --  POR triggered because VREG drops below Fail Safe
      Failsafe_Lv)
     with Size => 2;
   for RST_STAT_PORSRC_Field use
     (Failsafe_Hv => 0,
      Rst_Vbat => 1,
      Rst_Vreg => 2,
      Failsafe_Lv => 3);

   --  Reset Status
   type RST_STAT_Register is record
      --  Power-on Reset
      POR           : Boolean := False;
      --  External Reset
      EXTRST        : Boolean := False;
      --  Watchdog Timeout
      WDRST         : Boolean := False;
      --  Software Reset
      SWRST         : Boolean := False;
      --  Read-only. Power on Reset Source
      PORSRC        : RST_STAT_PORSRC_Field := NRF_SVD.PMG0.Failsafe_Hv;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RST_STAT_Register use record
      POR           at 0 range 0 .. 0;
      EXTRST        at 0 range 1 .. 1;
      WDRST         at 0 range 2 .. 2;
      SWRST         at 0 range 3 .. 3;
      PORSRC        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  HP Buck Load Mode
   type CTL1_HPBUCK_LD_MODE_Field is
     (
      --  HPBUCK Low load mode is enabled
      Hpbucklowload,
      --  HPBUCK High load mode is enabled
      Hpbuckhighload)
     with Size => 1;
   for CTL1_HPBUCK_LD_MODE_Field use
     (Hpbucklowload => 0,
      Hpbuckhighload => 1);

   --  HP Buck Low Power Mode
   type CTL1_HPBUCK_LOWPWR_MODE_Field is
     (
      --  HPBUCK Low power mode is disabled
      Lowpwrdisable,
      --  HPBUCK Low power mode is enabled
      Lowpwrenable)
     with Size => 1;
   for CTL1_HPBUCK_LOWPWR_MODE_Field use
     (Lowpwrdisable => 0,
      Lowpwrenable => 1);

   --  HPBUCK Control
   type CTL1_Register is record
      --  Enable HP Buck
      HPBUCKEN           : Boolean := False;
      --  HP Buck Load Mode
      HPBUCK_LD_MODE     : CTL1_HPBUCK_LD_MODE_Field :=
                            NRF_SVD.PMG0.Hpbucklowload;
      --  HP Buck Low Power Mode
      HPBUCK_LOWPWR_MODE : CTL1_HPBUCK_LOWPWR_MODE_Field :=
                            NRF_SVD.PMG0.Lowpwrdisable;
      --  unspecified
      Reserved_3_31      : HAL.UInt29 := 16#140000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL1_Register use record
      HPBUCKEN           at 0 range 0 .. 0;
      HPBUCK_LD_MODE     at 0 range 1 .. 1;
      HPBUCK_LOWPWR_MODE at 0 range 2 .. 2;
      Reserved_3_31      at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management
   type PMG0_Peripheral is record
      --  Power Supply Monitor Interrupt Enable
      IEN       : aliased IEN_Register;
      --  Power Supply Monitor Status
      PSM_STAT  : aliased PSM_STAT_Register;
      --  Power Mode Register
      PWRMOD    : aliased PWRMOD_Register;
      --  Key Protection for PMG_PWRMOD and PMG_SRAMRET
      PWRKEY    : aliased PWRKEY_Register;
      --  Shutdown Status Register
      SHDN_STAT : aliased SHDN_STAT_Register;
      --  Control for Retention SRAM in Hibernate Mode
      SRAMRET   : aliased SRAMRET_Register;
      --  Trimming Bits
      TRIM      : aliased TRIM_Register;
      --  Reset Status
      RST_STAT  : aliased RST_STAT_Register;
      --  HPBUCK Control
      CTL1      : aliased CTL1_Register;
   end record
     with Volatile;

   for PMG0_Peripheral use record
      IEN       at 16#0# range 0 .. 31;
      PSM_STAT  at 16#4# range 0 .. 31;
      PWRMOD    at 16#8# range 0 .. 31;
      PWRKEY    at 16#C# range 0 .. 31;
      SHDN_STAT at 16#10# range 0 .. 31;
      SRAMRET   at 16#14# range 0 .. 31;
      TRIM      at 16#38# range 0 .. 31;
      RST_STAT  at 16#40# range 0 .. 31;
      CTL1      at 16#44# range 0 .. 31;
   end record;

   --  Power Management
   PMG0_Periph : aliased PMG0_Peripheral
     with Import, Address => System'To_Address (16#4004C000#);

end NRF_SVD.PMG0;
