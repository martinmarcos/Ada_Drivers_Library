--

--  This spec has been automatically generated from apollo2.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Flash Cache Controller
package NRF_SVD.CACHECTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CACHECFG_ENABLE_NC array
   type CACHECFG_ENABLE_NC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CACHECFG_ENABLE_NC
   type CACHECFG_ENABLE_NC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENABLE_NC as a value
            Val : HAL.UInt2;
         when True =>
            --  ENABLE_NC as an array
            Arr : CACHECFG_ENABLE_NC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CACHECFG_ENABLE_NC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Sets the cache configuration
   type CACHECFG_CONFIG_Field is
     (
      --  Two-way set associative, 128-bit linesize, 512 entries (8 SRAMs
      --  active) value.
      W2_128B_512E)
     with Size => 3;
   for CACHECFG_CONFIG_Field use
     (W2_128B_512E => 5);

   subtype CACHECFG_DLY_Field is HAL.UInt4;
   subtype CACHECFG_SMDLY_Field is HAL.UInt4;

   --  Flash Cache Control Register
   type CACHECFG_Register is record
      --  Enables the flash cache controller. I/D caching enabled
      --  independently.
      ENABLE         : Boolean := False;
      --  Sets the cache replacement policy. 0=LRR (least recently replaced),
      --  1=LRU (least recently used). LRR minimizes writes to the TAG SRAM.
      LRU            : Boolean := False;
      --  Enable Non-cacheable region 0
      ENABLE_NC      : CACHECFG_ENABLE_NC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Sets the cache configuration
      CONFIG         : CACHECFG_CONFIG_Field :=
                        NRF_SVD.CACHECTRL.W2_128B_512E;
      --  Bitfield should always be programmed to 0.
      SERIAL         : Boolean := False;
      --  Enable Flash Instruction Caching
      ICACHE_ENABLE  : Boolean := False;
      --  Enable Flash Instruction Caching
      DCACHE_ENABLE  : Boolean := False;
      --  Enable clock gating of cache RAMs
      CACHE_CLKGATE  : Boolean := True;
      --  Enable LS (light sleep) of cache RAMs. When this bit is set, the
      --  cache's RAMS will be put into light sleep mode while inactive. NOTE:
      --  if the cache is actively used, this may have an adverse affect on
      --  power since entering/exiting LS mode may consume more power than
      --  would be saved.
      CACHE_LS       : Boolean := True;
      --  Data RAM delay
      DLY            : CACHECFG_DLY_Field := 16#6#;
      --  Data RAM delay
      SMDLY          : CACHECFG_SMDLY_Field := 16#6#;
      --  Enable clock gating of entire data array
      DATA_CLKGATE   : Boolean := True;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Enable Cache Monitoring Stats
      ENABLE_MONITOR : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHECFG_Register use record
      ENABLE         at 0 range 0 .. 0;
      LRU            at 0 range 1 .. 1;
      ENABLE_NC      at 0 range 2 .. 3;
      CONFIG         at 0 range 4 .. 6;
      SERIAL         at 0 range 7 .. 7;
      ICACHE_ENABLE  at 0 range 8 .. 8;
      DCACHE_ENABLE  at 0 range 9 .. 9;
      CACHE_CLKGATE  at 0 range 10 .. 10;
      CACHE_LS       at 0 range 11 .. 11;
      DLY            at 0 range 12 .. 15;
      SMDLY          at 0 range 16 .. 19;
      DATA_CLKGATE   at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ENABLE_MONITOR at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype FLASHCFG_RD_WAIT_Field is HAL.UInt3;

   --  Flash Control Register
   type FLASHCFG_Register is record
      --  Sets read waitstates (HCLK cycles)
      RD_WAIT       : FLASHCFG_RD_WAIT_Field := 16#1#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCFG_Register use record
      RD_WAIT       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Writing a 1 to this bitfield invalidates the flash cache contents.
   type CACHECTRL_INVALIDATE_Field is
     (
      --  Reset value for the field
      Cachectrl_Invalidate_Field_Reset,
      --  Initiate a programming operation to flash info. value.
      Go)
     with Size => 1;
   for CACHECTRL_INVALIDATE_Field use
     (Cachectrl_Invalidate_Field_Reset => 0,
      Go => 1);

   --  Writing a 1 to this bitfield will reset the cache monitor statistics
   --  (DMON0-3, IMON0-3). Statistic gathering can be paused/stopped by
   --  disabling the MONITOR_ENABLE bit in CACHECFG, which will maintain the
   --  count values until the stats are reset by writing this bitfield.
   type CACHECTRL_RESET_STAT_Field is
     (
      --  Reset value for the field
      Cachectrl_Reset_Stat_Field_Reset,
      --  Clear Cache Stats value.
      Clear)
     with Size => 1;
   for CACHECTRL_RESET_STAT_Field use
     (Cachectrl_Reset_Stat_Field_Reset => 0,
      Clear => 1);

   --  Cache Control
   type CACHECTRL_Register is record
      --  Writing a 1 to this bitfield invalidates the flash cache contents.
      INVALIDATE         : CACHECTRL_INVALIDATE_Field :=
                            Cachectrl_Invalidate_Field_Reset;
      --  Writing a 1 to this bitfield will reset the cache monitor statistics
      --  (DMON0-3, IMON0-3). Statistic gathering can be paused/stopped by
      --  disabling the MONITOR_ENABLE bit in CACHECFG, which will maintain the
      --  count values until the stats are reset by writing this bitfield.
      RESET_STAT         : CACHECTRL_RESET_STAT_Field :=
                            Cachectrl_Reset_Stat_Field_Reset;
      --  Cache Ready Status (enabled and not processing an invalidate
      --  operation)
      CACHE_READY        : Boolean := False;
      --  unspecified
      Reserved_3_3       : HAL.Bit := 16#0#;
      --  Flash Sleep Mode Status
      FLASH0_SLM_STATUS  : Boolean := False;
      --  Disable Flash Sleep Mode
      FLASH0_SLM_DISABLE : Boolean := False;
      --  Enable Flash Sleep Mode
      FLASH0_SLM_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Flash Sleep Mode Status
      FLASH1_SLM_STATUS  : Boolean := False;
      --  Disable Flash Sleep Mode
      FLASH1_SLM_DISABLE : Boolean := False;
      --  Enable Flash Sleep Mode
      FLASH1_SLM_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_11_31     : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHECTRL_Register use record
      INVALIDATE         at 0 range 0 .. 0;
      RESET_STAT         at 0 range 1 .. 1;
      CACHE_READY        at 0 range 2 .. 2;
      Reserved_3_3       at 0 range 3 .. 3;
      FLASH0_SLM_STATUS  at 0 range 4 .. 4;
      FLASH0_SLM_DISABLE at 0 range 5 .. 5;
      FLASH0_SLM_ENABLE  at 0 range 6 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      FLASH1_SLM_STATUS  at 0 range 8 .. 8;
      FLASH1_SLM_DISABLE at 0 range 9 .. 9;
      FLASH1_SLM_ENABLE  at 0 range 10 .. 10;
      Reserved_11_31     at 0 range 11 .. 31;
   end record;

   subtype NCR0START_ADDR_Field is HAL.UInt16;

   --  Flash Cache Noncachable Region 0 Start Address.
   type NCR0START_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Start address for non-cacheable region 0. The physical address of the
      --  start of this region should be programmed to this register and must
      --  be aligned to a 16-byte boundary (thus the lower 4 address bits are
      --  unused).
      ADDR           : NCR0START_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NCR0START_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDR           at 0 range 4 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype NCR0END_ADDR_Field is HAL.UInt16;

   --  Flash Cache Noncachable Region 0 End
   type NCR0END_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  End address for non-cacheable region 0. The physical address of the
      --  end of this region should be programmed to this register and must be
      --  aligned to a 16-byte boundary (thus the lower 4 address bits are
      --  unused).
      ADDR           : NCR0END_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NCR0END_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDR           at 0 range 4 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype NCR1START_ADDR_Field is HAL.UInt16;

   --  Flash Cache Noncachable Region 1 Start
   type NCR1START_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Start address for non-cacheable region 1. The physical address of the
      --  start of this region should be programmed to this register and must
      --  be aligned to a 16-byte boundary (thus the lower 4 address bits are
      --  unused).
      ADDR           : NCR1START_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NCR1START_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDR           at 0 range 4 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype NCR1END_ADDR_Field is HAL.UInt16;

   --  Flash Cache Noncachable Region 1 End
   type NCR1END_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  End address for non-cacheable region 1. The physical address of the
      --  end of this region should be programmed to this register and must be
      --  aligned to a 16-byte boundary (thus the lower 4 address bits are
      --  unused).
      ADDR           : NCR1END_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NCR1END_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDR           at 0 range 4 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  CACHEMODE_THROTTLE array
   type CACHEMODE_THROTTLE_Field_Array is array (1 .. 6) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for CACHEMODE_THROTTLE
   type CACHEMODE_THROTTLE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  THROTTLE as a value
            Val : HAL.UInt6;
         when True =>
            --  THROTTLE as an array
            Arr : CACHEMODE_THROTTLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CACHEMODE_THROTTLE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Flash Cache Mode Register. Used to trim performance/power.
   type CACHEMODE_Register is record
      --  Disallow cache data RAM writes on tag RAM fill cycles
      THROTTLE      : CACHEMODE_THROTTLE_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEMODE_Register use record
      THROTTLE      at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Cache Controller
   type CACHECTRL_Peripheral is record
      --  Flash Cache Control Register
      CACHECFG  : aliased CACHECFG_Register;
      --  Flash Control Register
      FLASHCFG  : aliased FLASHCFG_Register;
      --  Cache Control
      CACHECTRL : aliased CACHECTRL_Register;
      --  Flash Cache Noncachable Region 0 Start Address.
      NCR0START : aliased NCR0START_Register;
      --  Flash Cache Noncachable Region 0 End
      NCR0END   : aliased NCR0END_Register;
      --  Flash Cache Noncachable Region 1 Start
      NCR1START : aliased NCR1START_Register;
      --  Flash Cache Noncachable Region 1 End
      NCR1END   : aliased NCR1END_Register;
      --  Flash Cache Mode Register. Used to trim performance/power.
      CACHEMODE : aliased CACHEMODE_Register;
      --  Data Cache Total Accesses
      DMON0     : aliased HAL.UInt32;
      --  Data Cache Tag Lookups
      DMON1     : aliased HAL.UInt32;
      --  Data Cache Hits
      DMON2     : aliased HAL.UInt32;
      --  Data Cache Line Hits
      DMON3     : aliased HAL.UInt32;
      --  Instruction Cache Total Accesses
      IMON0     : aliased HAL.UInt32;
      --  Instruction Cache Tag Lookups
      IMON1     : aliased HAL.UInt32;
      --  Instruction Cache Hits
      IMON2     : aliased HAL.UInt32;
      --  Instruction Cache Line Hits
      IMON3     : aliased HAL.UInt32;
   end record
     with Volatile;

   for CACHECTRL_Peripheral use record
      CACHECFG  at 16#0# range 0 .. 31;
      FLASHCFG  at 16#4# range 0 .. 31;
      CACHECTRL at 16#8# range 0 .. 31;
      NCR0START at 16#10# range 0 .. 31;
      NCR0END   at 16#14# range 0 .. 31;
      NCR1START at 16#18# range 0 .. 31;
      NCR1END   at 16#1C# range 0 .. 31;
      CACHEMODE at 16#30# range 0 .. 31;
      DMON0     at 16#40# range 0 .. 31;
      DMON1     at 16#44# range 0 .. 31;
      DMON2     at 16#48# range 0 .. 31;
      DMON3     at 16#4C# range 0 .. 31;
      IMON0     at 16#50# range 0 .. 31;
      IMON1     at 16#54# range 0 .. 31;
      IMON2     at 16#58# range 0 .. 31;
      IMON3     at 16#5C# range 0 .. 31;
   end record;

   --  Flash Cache Controller
   CACHECTRL_Periph : aliased CACHECTRL_Peripheral
     with Import, Address => CACHECTRL_Base;

end NRF_SVD.CACHECTRL;
