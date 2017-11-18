--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  PWR Controller Register Bank
package NRF_SVD.PWRCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enables and select the Memory Buck as the supply for the Flash and SRAM
   --  power domain.
   type SUPPLYSRC_MEMBUCKEN_Field is
     (
      --  Reset value for the field
      Supplysrc_Membucken_Field_Reset,
      --  Enable the Memory Buck as the supply for flash and SRAM. value.
      En)
     with Size => 1;
   for SUPPLYSRC_MEMBUCKEN_Field use
     (Supplysrc_Membucken_Field_Reset => 0,
      En => 1);

   --  Enables and Selects the Core Buck as the supply for the low-voltage
   --  power domain.
   type SUPPLYSRC_COREBUCKEN_Field is
     (
      --  Reset value for the field
      Supplysrc_Corebucken_Field_Reset,
      --  Enable the Core Buck for the low-voltage power domain. value.
      En)
     with Size => 1;
   for SUPPLYSRC_COREBUCKEN_Field use
     (Supplysrc_Corebucken_Field_Reset => 0,
      En => 1);

   --  Switches the CORE DOMAIN from BUCK mode (if enabled) to LDO when CPU is
   --  in DEEP SLEEP. If all the devices are off then this does not matter and
   --  LDO (low power mode) is used
   type SUPPLYSRC_SWITCH_LDO_IN_SLEEP_Field is
     (
      --  Automatically switch from CORE BUCK to CORE LDO when CPU is in DEEP
      --  SLEEP value.
      En)
     with Size => 1;
   for SUPPLYSRC_SWITCH_LDO_IN_SLEEP_Field use
     (En => 1);

   --  Memory and Core Voltage Supply Source Select Register
   type SUPPLYSRC_Register is record
      --  Enables and select the Memory Buck as the supply for the Flash and
      --  SRAM power domain.
      MEMBUCKEN           : SUPPLYSRC_MEMBUCKEN_Field :=
                             Supplysrc_Membucken_Field_Reset;
      --  Enables and Selects the Core Buck as the supply for the low-voltage
      --  power domain.
      COREBUCKEN          : SUPPLYSRC_COREBUCKEN_Field :=
                             Supplysrc_Corebucken_Field_Reset;
      --  Switches the CORE DOMAIN from BUCK mode (if enabled) to LDO when CPU
      --  is in DEEP SLEEP. If all the devices are off then this does not
      --  matter and LDO (low power mode) is used
      SWITCH_LDO_IN_SLEEP : SUPPLYSRC_SWITCH_LDO_IN_SLEEP_Field :=
                             NRF_SVD.PWRCTRL.En;
      --  unspecified
      Reserved_3_31       : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPPLYSRC_Register use record
      MEMBUCKEN           at 0 range 0 .. 0;
      COREBUCKEN          at 0 range 1 .. 1;
      SWITCH_LDO_IN_SLEEP at 0 range 2 .. 2;
      Reserved_3_31       at 0 range 3 .. 31;
   end record;

   --  Indicate whether the Memory power domain is supplied from the LDO or the
   --  Buck.
   type POWERSTATUS_MEMBUCKON_Field is
     (
      --  Indicates the LDO is supplying the memory power domain. value.
      Ldo,
      --  Indicates the Buck is supplying the memory power domain. value.
      Buck)
     with Size => 1;
   for POWERSTATUS_MEMBUCKON_Field use
     (Ldo => 0,
      Buck => 1);

   --  Indicates whether the Core low-voltage domain is supplied from the LDO
   --  or the Buck.
   type POWERSTATUS_COREBUCKON_Field is
     (
      --  Indicates the the LDO is supplying the Core low-voltage. value.
      Ldo,
      --  Indicates the the Buck is supplying the Core low-voltage. value.
      Buck)
     with Size => 1;
   for POWERSTATUS_COREBUCKON_Field use
     (Ldo => 0,
      Buck => 1);

   --  Power Status Register for MCU supplies and peripherals
   type POWERSTATUS_Register is record
      --  Indicate whether the Memory power domain is supplied from the LDO or
      --  the Buck.
      MEMBUCKON     : POWERSTATUS_MEMBUCKON_Field := NRF_SVD.PWRCTRL.Ldo;
      --  Indicates whether the Core low-voltage domain is supplied from the
      --  LDO or the Buck.
      COREBUCKON    : POWERSTATUS_COREBUCKON_Field := NRF_SVD.PWRCTRL.Ldo;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERSTATUS_Register use record
      MEMBUCKON     at 0 range 0 .. 0;
      COREBUCKON    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable IO SLAVE
   type DEVICEEN_IO_SLAVE_Field is
     (
      --  Disables IO SLAVE value.
      Dis,
      --  Enable IO SLAVE value.
      En)
     with Size => 1;
   for DEVICEEN_IO_SLAVE_Field use
     (Dis => 0,
      En => 1);

   --  Enable IO MASTER 0
   type DEVICEEN_IO_MASTER0_Field is
     (
      --  Disables IO MASTER 0 value.
      Dis,
      --  Enable IO MASTER 0 value.
      En)
     with Size => 1;
   for DEVICEEN_IO_MASTER0_Field use
     (Dis => 0,
      En => 1);

   --  Enable IO MASTER 1
   type DEVICEEN_IO_MASTER1_Field is
     (
      --  Disables IO MASTER 1 value.
      Dis,
      --  Enable IO MASTER 1 value.
      En)
     with Size => 1;
   for DEVICEEN_IO_MASTER1_Field use
     (Dis => 0,
      En => 1);

   --  Enable IO MASTER 2
   type DEVICEEN_IO_MASTER2_Field is
     (
      --  Disables IO MASTER 2 value.
      Dis,
      --  Enable IO MASTER 2 value.
      En)
     with Size => 1;
   for DEVICEEN_IO_MASTER2_Field use
     (Dis => 0,
      En => 1);

   --  Enable IO MASTER 3
   type DEVICEEN_IO_MASTER3_Field is
     (
      --  Disables IO MASTER 3 value.
      Dis,
      --  Enable IO MASTER 3 value.
      En)
     with Size => 1;
   for DEVICEEN_IO_MASTER3_Field use
     (Dis => 0,
      En => 1);

   --  Enable IO MASTER 4
   type DEVICEEN_IO_MASTER4_Field is
     (
      --  Disables IO MASTER 4 value.
      Dis,
      --  Enable IO MASTER 4 value.
      En)
     with Size => 1;
   for DEVICEEN_IO_MASTER4_Field use
     (Dis => 0,
      En => 1);

   --  Enable IO MASTER 5
   type DEVICEEN_IO_MASTER5_Field is
     (
      --  Disables IO MASTER 5 value.
      Dis,
      --  Enable IO MASTER 5 value.
      En)
     with Size => 1;
   for DEVICEEN_IO_MASTER5_Field use
     (Dis => 0,
      En => 1);

   --  Enable UART 0
   type DEVICEEN_UART0_Field is
     (
      --  Disables UART 0 value.
      Dis,
      --  Enable UART 0 value.
      En)
     with Size => 1;
   for DEVICEEN_UART0_Field use
     (Dis => 0,
      En => 1);

   --  Enable UART 1
   type DEVICEEN_UART1_Field is
     (
      --  Disables UART 1 value.
      Dis,
      --  Enable UART 1 value.
      En)
     with Size => 1;
   for DEVICEEN_UART1_Field use
     (Dis => 0,
      En => 1);

   --  Enable ADC Digital Block
   type DEVICEEN_ADC_Field is
     (
      --  Disables ADC value.
      Dis,
      --  Enable ADC value.
      En)
     with Size => 1;
   for DEVICEEN_ADC_Field use
     (Dis => 0,
      En => 1);

   --  Enable PDM Digital Block
   type DEVICEEN_PDM_Field is
     (
      --  Disables PDM value.
      Dis,
      --  Enable PDM value.
      En)
     with Size => 1;
   for DEVICEEN_PDM_Field use
     (Dis => 0,
      En => 1);

   --  DEVICE ENABLES for SHELBY
   type DEVICEEN_Register is record
      --  Enable IO SLAVE
      IO_SLAVE       : DEVICEEN_IO_SLAVE_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable IO MASTER 0
      IO_MASTER0     : DEVICEEN_IO_MASTER0_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable IO MASTER 1
      IO_MASTER1     : DEVICEEN_IO_MASTER1_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable IO MASTER 2
      IO_MASTER2     : DEVICEEN_IO_MASTER2_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable IO MASTER 3
      IO_MASTER3     : DEVICEEN_IO_MASTER3_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable IO MASTER 4
      IO_MASTER4     : DEVICEEN_IO_MASTER4_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable IO MASTER 5
      IO_MASTER5     : DEVICEEN_IO_MASTER5_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable UART 0
      UART0          : DEVICEEN_UART0_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable UART 1
      UART1          : DEVICEEN_UART1_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable ADC Digital Block
      ADC            : DEVICEEN_ADC_Field := NRF_SVD.PWRCTRL.Dis;
      --  Enable PDM Digital Block
      PDM            : DEVICEEN_PDM_Field := NRF_SVD.PWRCTRL.Dis;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVICEEN_Register use record
      IO_SLAVE       at 0 range 0 .. 0;
      IO_MASTER0     at 0 range 1 .. 1;
      IO_MASTER1     at 0 range 2 .. 2;
      IO_MASTER2     at 0 range 3 .. 3;
      IO_MASTER3     at 0 range 4 .. 4;
      IO_MASTER4     at 0 range 5 .. 5;
      IO_MASTER5     at 0 range 6 .. 6;
      UART0          at 0 range 7 .. 7;
      UART1          at 0 range 8 .. 8;
      ADC            at 0 range 9 .. 9;
      PDM            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Selects which SRAM banks are powered down in deep sleep mode, causing
   --  the contents of the bank to be lost.
   type SRAMPWDINSLEEP_SRAMSLEEPPOWERDOWN_Field is
     (
      --  All banks retained value.
      None,
      --  0KB-8KB SRAM value.
      Group0_Sram0,
      --  8KB-16KB SRAM value.
      Group0_Sram1,
      --  Do not Retain lower 16KB value.
      Sram16K,
      --  16KB-24KB SRAM value.
      Group0_Sram2,
      --  24KB-32KB SRAM value.
      Group0_Sram3,
      --  Do not Retain lower 32KB value.
      Sram32K,
      --  32KB-64KB SRAMs value.
      Group1,
      --  Do not Retain lower 64KB value.
      Sram64K,
      --  64KB-96KB SRAMs value.
      Group2,
      --  96KB-128KB SRAMs value.
      Group3,
      --  Do not Retain lower 128KB value.
      Sram128K,
      --  128KB-160KB SRAMs value.
      Group4,
      --  160KB-192KB SRAMs value.
      Group5,
      --  192KB-224KB SRAMs value.
      Group6,
      --  224KB-256KB SRAMs value.
      Group7,
      --  All banks but lower 128k powered down. value.
      Allbutlower128K,
      --  All banks but lower 64k powered down. value.
      Allbutlower64K,
      --  All banks but lower 32k powered down. value.
      Allbutlower32K,
      --  All banks but lower 24k powered down. value.
      Allbutlower24K,
      --  All banks but lower 16k powered down. value.
      Allbutlower16K,
      --  All banks but lower 8k powered down. value.
      Allbutlower8K,
      --  All banks powered down. value.
      All_k)
     with Size => 11;
   for SRAMPWDINSLEEP_SRAMSLEEPPOWERDOWN_Field use
     (None => 0,
      Group0_Sram0 => 1,
      Group0_Sram1 => 2,
      Sram16K => 3,
      Group0_Sram2 => 4,
      Group0_Sram3 => 8,
      Sram32K => 15,
      Group1 => 16,
      Sram64K => 31,
      Group2 => 32,
      Group3 => 64,
      Sram128K => 127,
      Group4 => 128,
      Group5 => 256,
      Group6 => 512,
      Group7 => 1024,
      Allbutlower128K => 1920,
      Allbutlower64K => 2016,
      Allbutlower32K => 2032,
      Allbutlower24K => 2040,
      Allbutlower16K => 2044,
      Allbutlower8K => 2046,
      All_k => 2047);

   --  Enable CACHE BANKS to power down in deep sleep
   type SRAMPWDINSLEEP_CACHE_PWD_SLP_Field is
     (
      --  CACHE BANKS STAYS in Retention in CORE SLEEP value.
      Dis,
      --  CACHE BANKS POWER DOWN in CORE SLEEP value.
      En)
     with Size => 1;
   for SRAMPWDINSLEEP_CACHE_PWD_SLP_Field use
     (Dis => 0,
      En => 1);

   --  Powerdown an SRAM Banks in Deep Sleep mode
   type SRAMPWDINSLEEP_Register is record
      --  Selects which SRAM banks are powered down in deep sleep mode, causing
      --  the contents of the bank to be lost.
      SRAMSLEEPPOWERDOWN : SRAMPWDINSLEEP_SRAMSLEEPPOWERDOWN_Field :=
                            NRF_SVD.PWRCTRL.None;
      --  unspecified
      Reserved_11_30     : HAL.UInt20 := 16#0#;
      --  Enable CACHE BANKS to power down in deep sleep
      CACHE_PWD_SLP      : SRAMPWDINSLEEP_CACHE_PWD_SLP_Field :=
                            NRF_SVD.PWRCTRL.Dis;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMPWDINSLEEP_Register use record
      SRAMSLEEPPOWERDOWN at 0 range 0 .. 10;
      Reserved_11_30     at 0 range 11 .. 30;
      CACHE_PWD_SLP      at 0 range 31 .. 31;
   end record;

   --  Enables power for selected SRAM banks (else an access to its address
   --  space to generate a Hard Fault).
   type MEMEN_SRAMEN_Field is
     (
      --  All banks disabled value.
      None,
      --  0KB-8KB SRAM value.
      Group0_Sram0,
      --  8KB-16KB SRAM value.
      Group0_Sram1,
      --  ENABLE lower 16KB value.
      Sram16K,
      --  16KB-24KB SRAM value.
      Group0_Sram2,
      --  24KB-32KB SRAM value.
      Group0_Sram3,
      --  ENABLE lower 32KB value.
      Sram32K,
      --  32KB-64KB SRAMs value.
      Group1,
      --  ENABLE lower 64KB value.
      Sram64K,
      --  64KB-96KB SRAMs value.
      Group2,
      --  96KB-128KB SRAMs value.
      Group3,
      --  ENABLE lower 128KB value.
      Sram128K,
      --  128KB-160KB SRAMs value.
      Group4,
      --  160KB-192KB SRAMs value.
      Group5,
      --  192KB-224KB SRAMs value.
      Group6,
      --  224KB-256KB SRAMs value.
      Group7,
      --  ENABLE lower 256KB value.
      Sram256K)
     with Size => 11;
   for MEMEN_SRAMEN_Field use
     (None => 0,
      Group0_Sram0 => 1,
      Group0_Sram1 => 2,
      Sram16K => 3,
      Group0_Sram2 => 4,
      Group0_Sram3 => 8,
      Sram32K => 15,
      Group1 => 16,
      Sram64K => 31,
      Group2 => 32,
      Group3 => 64,
      Sram128K => 127,
      Group4 => 128,
      Group5 => 256,
      Group6 => 512,
      Group7 => 1024,
      Sram256K => 2047);

   --  Enable FLASH 0
   type MEMEN_FLASH0_Field is
     (
      --  Disables FLASH 0 value.
      Dis,
      --  Enable FLASH 0 value.
      En)
     with Size => 1;
   for MEMEN_FLASH0_Field use
     (Dis => 0,
      En => 1);

   --  Enable FLASH1
   type MEMEN_FLASH1_Field is
     (
      --  Disables FLASH1 value.
      Dis,
      --  Enable FLASH1 value.
      En)
     with Size => 1;
   for MEMEN_FLASH1_Field use
     (Dis => 0,
      En => 1);

   --  Enable CACHE BANK 0
   type MEMEN_CACHEB0_Field is
     (
      --  Disable CACHE BANK 0 value.
      Dis,
      --  Enable CACHE BANK 0 value.
      En)
     with Size => 1;
   for MEMEN_CACHEB0_Field use
     (Dis => 0,
      En => 1);

   --  Enable CACHE BANK 2
   type MEMEN_CACHEB2_Field is
     (
      --  Disable CACHE BANK 2 value.
      Dis,
      --  Enable CACHE BANK 2 value.
      En)
     with Size => 1;
   for MEMEN_CACHEB2_Field use
     (Dis => 0,
      En => 1);

   --  Disables individual banks of the MEMORY array
   type MEMEN_Register is record
      --  Enables power for selected SRAM banks (else an access to its address
      --  space to generate a Hard Fault).
      SRAMEN         : MEMEN_SRAMEN_Field := NRF_SVD.PWRCTRL.Sram256K;
      --  Enable FLASH 0
      FLASH0         : MEMEN_FLASH0_Field := NRF_SVD.PWRCTRL.En;
      --  Enable FLASH1
      FLASH1         : MEMEN_FLASH1_Field := NRF_SVD.PWRCTRL.En;
      --  unspecified
      Reserved_13_28 : HAL.UInt16 := 16#0#;
      --  Enable CACHE BANK 0
      CACHEB0        : MEMEN_CACHEB0_Field := NRF_SVD.PWRCTRL.En;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Enable CACHE BANK 2
      CACHEB2        : MEMEN_CACHEB2_Field := NRF_SVD.PWRCTRL.En;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMEN_Register use record
      SRAMEN         at 0 range 0 .. 10;
      FLASH0         at 0 range 11 .. 11;
      FLASH1         at 0 range 12 .. 12;
      Reserved_13_28 at 0 range 13 .. 28;
      CACHEB0        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      CACHEB2        at 0 range 31 .. 31;
   end record;

   --  PWRONSTATUS_PD_FLAM array
   type PWRONSTATUS_PD_FLAM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWRONSTATUS_PD_FLAM
   type PWRONSTATUS_PD_FLAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD_FLAM as a value
            Val : HAL.UInt2;
         when True =>
            --  PD_FLAM as an array
            Arr : PWRONSTATUS_PD_FLAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWRONSTATUS_PD_FLAM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWRONSTATUS_PD_GRP0_SRAM array
   type PWRONSTATUS_PD_GRP0_SRAM_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWRONSTATUS_PD_GRP0_SRAM
   type PWRONSTATUS_PD_GRP0_SRAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD_GRP0_SRAM as a value
            Val : HAL.UInt4;
         when True =>
            --  PD_GRP0_SRAM as an array
            Arr : PWRONSTATUS_PD_GRP0_SRAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWRONSTATUS_PD_GRP0_SRAM_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  POWER ON Status
   type PWRONSTATUS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  This bit is 1 if power is supplied to power domain A, which supplies
      --  IOS and UART0,1.
      PDA            : Boolean := False;
      --  This bit is 1 if power is supplied to power domain B, which supplies
      --  IOM0-2.
      PDB            : Boolean := False;
      --  This bit is 1 if power is supplied to power domain C, which supplies
      --  IOM3-5.
      PDC            : Boolean := False;
      --  This bit is 1 if power is supplied to domain PD_PDM
      PD_PDM         : Boolean := False;
      --  This bit is 1 if power is supplied to domain PD_FLAM0
      PD_FLAM        : PWRONSTATUS_PD_FLAM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  This bit is 1 if power is supplied to domain PD_ADC
      PDADC          : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain SRAM0_0
      PD_GRP0_SRAM   : PWRONSTATUS_PD_GRP0_SRAM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP1
      PD_GRP1_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP2
      PD_GRP2_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP3
      PD_GRP3_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP4
      PD_GRP4_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP5
      PD_GRP5_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP6
      PD_GRP6_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to SRAM domain PD_GRP7
      PD_GRP7_SRAM   : Boolean := False;
      --  This bit is 1 if power is supplied to CACHE BANK 0
      PD_CACHEB0     : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  This bit is 1 if power is supplied to CACHE BANK 2
      PD_CACHEB2     : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRONSTATUS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      PDA            at 0 range 1 .. 1;
      PDB            at 0 range 2 .. 2;
      PDC            at 0 range 3 .. 3;
      PD_PDM         at 0 range 4 .. 4;
      PD_FLAM        at 0 range 5 .. 6;
      PDADC          at 0 range 7 .. 7;
      PD_GRP0_SRAM   at 0 range 8 .. 11;
      PD_GRP1_SRAM   at 0 range 12 .. 12;
      PD_GRP2_SRAM   at 0 range 13 .. 13;
      PD_GRP3_SRAM   at 0 range 14 .. 14;
      PD_GRP4_SRAM   at 0 range 15 .. 15;
      PD_GRP5_SRAM   at 0 range 16 .. 16;
      PD_GRP6_SRAM   at 0 range 17 .. 17;
      PD_GRP7_SRAM   at 0 range 18 .. 18;
      PD_CACHEB0     at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      PD_CACHEB2     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Enable LS (light sleep) of cache RAMs. When this bit is set, the RAMS
   --  will be put into light sleep mode while inactive. NOTE: if the SRAM is
   --  actively used, this may have an adverse affect on power since
   --  entering/exiting LS mode may consume more power than would be saved.
   type SRAMCTRL_SRAM_LIGHT_SLEEP_Field is
     (
      --  Disables LIGHT SLEEP for SRAMs value.
      Dis,
      --  Enable LIGHT SLEEP for SRAMs value.
      En)
     with Size => 1;
   for SRAMCTRL_SRAM_LIGHT_SLEEP_Field use
     (Dis => 0,
      En => 1);

   --  Enables individual per-RAM clock gating in the SRAM block. This bit
   --  should be enabled for lowest power operation.
   type SRAMCTRL_SRAM_CLKGATE_Field is
     (
      --  Disables Individual SRAM Clock Gating value.
      Dis,
      --  Enable Individual SRAM Clock Gating value.
      En)
     with Size => 1;
   for SRAMCTRL_SRAM_CLKGATE_Field use
     (Dis => 0,
      En => 1);

   --  Enables top-level clock gating in the SRAM block. This bit should be
   --  enabled for lowest power operation.
   type SRAMCTRL_SRAM_MASTER_CLKGATE_Field is
     (
      --  Disables Master SRAM Clock Gating value.
      Dis,
      --  Enable Master SRAM Clock Gate value.
      En)
     with Size => 1;
   for SRAMCTRL_SRAM_MASTER_CLKGATE_Field use
     (Dis => 0,
      En => 1);

   --  SRAM Control register
   type SRAMCTRL_Register is record
      --  Enable LS (light sleep) of cache RAMs. When this bit is set, the RAMS
      --  will be put into light sleep mode while inactive. NOTE: if the SRAM
      --  is actively used, this may have an adverse affect on power since
      --  entering/exiting LS mode may consume more power than would be saved.
      SRAM_LIGHT_SLEEP    : SRAMCTRL_SRAM_LIGHT_SLEEP_Field :=
                             NRF_SVD.PWRCTRL.En;
      --  Enables individual per-RAM clock gating in the SRAM block. This bit
      --  should be enabled for lowest power operation.
      SRAM_CLKGATE        : SRAMCTRL_SRAM_CLKGATE_Field :=
                             NRF_SVD.PWRCTRL.Dis;
      --  Enables top-level clock gating in the SRAM block. This bit should be
      --  enabled for lowest power operation.
      SRAM_MASTER_CLKGATE : SRAMCTRL_SRAM_MASTER_CLKGATE_Field :=
                             NRF_SVD.PWRCTRL.Dis;
      --  unspecified
      Reserved_3_31       : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMCTRL_Register use record
      SRAM_LIGHT_SLEEP    at 0 range 0 .. 0;
      SRAM_CLKGATE        at 0 range 1 .. 1;
      SRAM_MASTER_CLKGATE at 0 range 2 .. 2;
      Reserved_3_31       at 0 range 3 .. 31;
   end record;

   --  Power Status Register for ADC Block
   type ADCSTATUS_Register is record
      --  This bit indicates that the ADC is powered down
      ADC_PWD         : Boolean := False;
      --  This bit indicates that the ADC Band Gap is powered down
      ADC_BGT_PWD     : Boolean := False;
      --  This bit indicates that the ADC temperature sensor input buffer is
      --  powered down
      ADC_VPTAT_PWD   : Boolean := False;
      --  This bit indicates that the ADC VBAT resistor divider is powered down
      ADC_VBAT_PWD    : Boolean := False;
      --  This bit indicates that the ADC REFKEEP is powered down
      ADC_REFKEEP_PWD : Boolean := False;
      --  This bit indicates that the ADC REFBUF is powered down
      ADC_REFBUF_PWD  : Boolean := False;
      --  unspecified
      Reserved_6_31   : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCSTATUS_Register use record
      ADC_PWD         at 0 range 0 .. 0;
      ADC_BGT_PWD     at 0 range 1 .. 1;
      ADC_VPTAT_PWD   at 0 range 2 .. 2;
      ADC_VBAT_PWD    at 0 range 3 .. 3;
      ADC_REFKEEP_PWD at 0 range 4 .. 4;
      ADC_REFBUF_PWD  at 0 range 5 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   --  Power Optimization Control Bits
   type MISCOPT_Register is record
      --  Control Bit to mask the ADC_EN in the adc_pwr_down equation.
      ADC_EN_MASK          : Boolean := False;
      --  Setting this bit will enable the Core LDO to be in LPMODE during deep
      --  sleep even when HFRC is enabled.
      DIS_LDOLPMODE_HFRC   : Boolean := False;
      --  Setting this bit will enable the MEM LDO to be in LPMODE during deep
      --  sleep even when the ctimers or stimers are running
      DIS_LDOLPMODE_TIMERS : Boolean := False;
      --  unspecified
      Reserved_3_31        : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISCOPT_Register use record
      ADC_EN_MASK          at 0 range 0 .. 0;
      DIS_LDOLPMODE_HFRC   at 0 range 1 .. 1;
      DIS_LDOLPMODE_TIMERS at 0 range 2 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWR Controller Register Bank
   type PWRCTRL_Peripheral is record
      --  Memory and Core Voltage Supply Source Select Register
      SUPPLYSRC      : aliased SUPPLYSRC_Register;
      --  Power Status Register for MCU supplies and peripherals
      POWERSTATUS    : aliased POWERSTATUS_Register;
      --  DEVICE ENABLES for SHELBY
      DEVICEEN       : aliased DEVICEEN_Register;
      --  Powerdown an SRAM Banks in Deep Sleep mode
      SRAMPWDINSLEEP : aliased SRAMPWDINSLEEP_Register;
      --  Disables individual banks of the MEMORY array
      MEMEN          : aliased MEMEN_Register;
      --  POWER ON Status
      PWRONSTATUS    : aliased PWRONSTATUS_Register;
      --  SRAM Control register
      SRAMCTRL       : aliased SRAMCTRL_Register;
      --  Power Status Register for ADC Block
      ADCSTATUS      : aliased ADCSTATUS_Register;
      --  Power Optimization Control Bits
      MISCOPT        : aliased MISCOPT_Register;
   end record
     with Volatile;

   for PWRCTRL_Peripheral use record
      SUPPLYSRC      at 16#0# range 0 .. 31;
      POWERSTATUS    at 16#4# range 0 .. 31;
      DEVICEEN       at 16#8# range 0 .. 31;
      SRAMPWDINSLEEP at 16#C# range 0 .. 31;
      MEMEN          at 16#10# range 0 .. 31;
      PWRONSTATUS    at 16#14# range 0 .. 31;
      SRAMCTRL       at 16#18# range 0 .. 31;
      ADCSTATUS      at 16#1C# range 0 .. 31;
      MISCOPT        at 16#20# range 0 .. 31;
   end record;

   --  PWR Controller Register Bank
   PWRCTRL_Periph : aliased PWRCTRL_Peripheral
     with Import, Address => PWRCTRL_Base;

end NRF_SVD.PWRCTRL;
