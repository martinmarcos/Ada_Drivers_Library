--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DMA0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype STAT_CHANM1_Field is HAL.UInt5;

   --  DMA Status
   type STAT_Register is record
      --  Read-only. Enable Status of the Controller
      MEN            : Boolean;
      --  unspecified
      Reserved_1_15  : HAL.UInt15;
      --  Read-only. Number of Available DMA Channels Minus 1
      CHANM1         : STAT_CHANM1_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      MEN            at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      CHANM1         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  DMA Configuration
   type CFG_Register is record
      --  Write-only. Controller Enable
      MEN           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      MEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SWREQ_CHAN_Field is HAL.UInt27;

   --  DMA Channel Software Request
   type SWREQ_Register is record
      --  Write-only. Generate Software Request
      CHAN           : SWREQ_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWREQ_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype RMSK_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Request Mask Set
   type RMSK_SET_Register is record
      --  Mask Requests from DMA Channels
      CHAN           : RMSK_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMSK_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype RMSK_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Channel Request Mask Clear
   type RMSK_CLR_Register is record
      --  Write-only. Clear Request Mask Set Bits
      CHAN           : RMSK_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMSK_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype EN_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Enable Set
   type EN_SET_Register is record
      --  Enable DMA Channels
      CHAN           : EN_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EN_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype EN_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Channel Enable Clear
   type EN_CLR_Register is record
      --  Write-only. Disable DMA Channels
      CHAN           : EN_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EN_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ALT_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Primary Alternate Set
   type ALT_SET_Register is record
      --  Control Structure Status / Select Alternate Structure
      CHAN           : ALT_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALT_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ALT_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Channel Primary Alternate Clear
   type ALT_CLR_Register is record
      --  Write-only. Select Primary Data Structure
      CHAN           : ALT_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALT_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype PRI_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Priority Set
   type PRI_SET_Register is record
      --  Write-only. Configure Channel for High Priority
      CHAN           : PRI_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRI_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype PRI_CLR_CHPRICLR_Field is HAL.UInt27;

   --  DMA Channel Priority Clear
   type PRI_CLR_Register is record
      --  Write-only. Configure Channel for Default Priority Level
      CHPRICLR       : PRI_CLR_CHPRICLR_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRI_CLR_Register use record
      CHPRICLR       at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ERRCHNL_CLR_CHAN_Field is HAL.UInt27;

   --  DMA per Channel Error Clear
   type ERRCHNL_CLR_Register is record
      --  Per Channel Bus Error Status/Clear
      CHAN           : ERRCHNL_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRCHNL_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype ERR_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Bus Error Clear
   type ERR_CLR_Register is record
      --  Bus Error Status
      CHAN           : ERR_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype INVALIDDESC_CLR_CHAN_Field is HAL.UInt27;

   --  DMA per Channel Invalid Descriptor Clear
   type INVALIDDESC_CLR_Register is record
      --  Per Channel Invalid Descriptor Status/Clear
      CHAN           : INVALIDDESC_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INVALIDDESC_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype BS_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Bytes Swap Enable Set
   type BS_SET_Register is record
      --  Byte Swap Status
      CHAN           : BS_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BS_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype BS_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Channel Bytes Swap Enable Clear
   type BS_CLR_Register is record
      --  Write-only. Disable Byte Swap
      CHAN           : BS_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BS_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype SRCADDR_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Source Address Decrement Enable Set
   type SRCADDR_SET_Register is record
      --  Source Address Decrement Status
      CHAN           : SRCADDR_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRCADDR_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype SRCADDR_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Channel Source Address Decrement Enable Clear
   type SRCADDR_CLR_Register is record
      --  Write-only. Disable Source Address Decrement
      CHAN           : SRCADDR_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRCADDR_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DSTADDR_SET_CHAN_Field is HAL.UInt27;

   --  DMA Channel Destination Address Decrement Enable Set
   type DSTADDR_SET_Register is record
      --  Destination Address Decrement Status
      CHAN           : DSTADDR_SET_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSTADDR_SET_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DSTADDR_CLR_CHAN_Field is HAL.UInt27;

   --  DMA Channel Destination Address Decrement Enable Clear
   type DSTADDR_CLR_Register is record
      --  Write-only. Disable Destination Address Decrement
      CHAN           : DSTADDR_CLR_CHAN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSTADDR_CLR_Register use record
      CHAN           at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype REVID_VALUE_Field is HAL.UInt8;

   --  DMA Controller Revision ID
   type REVID_Register is record
      --  Read-only. DMA Controller Revision ID
      VALUE         : REVID_VALUE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REVID_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA
   type DMA0_Peripheral is record
      --  DMA Status
      STAT            : aliased STAT_Register;
      --  DMA Configuration
      CFG             : aliased CFG_Register;
      --  DMA Channel Primary Control Database Pointer
      PDBPTR          : aliased HAL.UInt32;
      --  DMA Channel Alternate Control Database Pointer
      ADBPTR          : aliased HAL.UInt32;
      --  DMA Channel Software Request
      SWREQ           : aliased SWREQ_Register;
      --  DMA Channel Request Mask Set
      RMSK_SET        : aliased RMSK_SET_Register;
      --  DMA Channel Request Mask Clear
      RMSK_CLR        : aliased RMSK_CLR_Register;
      --  DMA Channel Enable Set
      EN_SET          : aliased EN_SET_Register;
      --  DMA Channel Enable Clear
      EN_CLR          : aliased EN_CLR_Register;
      --  DMA Channel Primary Alternate Set
      ALT_SET         : aliased ALT_SET_Register;
      --  DMA Channel Primary Alternate Clear
      ALT_CLR         : aliased ALT_CLR_Register;
      --  DMA Channel Priority Set
      PRI_SET         : aliased PRI_SET_Register;
      --  DMA Channel Priority Clear
      PRI_CLR         : aliased PRI_CLR_Register;
      --  DMA per Channel Error Clear
      ERRCHNL_CLR     : aliased ERRCHNL_CLR_Register;
      --  DMA Bus Error Clear
      ERR_CLR         : aliased ERR_CLR_Register;
      --  DMA per Channel Invalid Descriptor Clear
      INVALIDDESC_CLR : aliased INVALIDDESC_CLR_Register;
      --  DMA Channel Bytes Swap Enable Set
      BS_SET          : aliased BS_SET_Register;
      --  DMA Channel Bytes Swap Enable Clear
      BS_CLR          : aliased BS_CLR_Register;
      --  DMA Channel Source Address Decrement Enable Set
      SRCADDR_SET     : aliased SRCADDR_SET_Register;
      --  DMA Channel Source Address Decrement Enable Clear
      SRCADDR_CLR     : aliased SRCADDR_CLR_Register;
      --  DMA Channel Destination Address Decrement Enable Set
      DSTADDR_SET     : aliased DSTADDR_SET_Register;
      --  DMA Channel Destination Address Decrement Enable Clear
      DSTADDR_CLR     : aliased DSTADDR_CLR_Register;
      --  DMA Controller Revision ID
      REVID           : aliased REVID_Register;
   end record
     with Volatile;

   for DMA0_Peripheral use record
      STAT            at 16#0# range 0 .. 31;
      CFG             at 16#4# range 0 .. 31;
      PDBPTR          at 16#8# range 0 .. 31;
      ADBPTR          at 16#C# range 0 .. 31;
      SWREQ           at 16#14# range 0 .. 31;
      RMSK_SET        at 16#20# range 0 .. 31;
      RMSK_CLR        at 16#24# range 0 .. 31;
      EN_SET          at 16#28# range 0 .. 31;
      EN_CLR          at 16#2C# range 0 .. 31;
      ALT_SET         at 16#30# range 0 .. 31;
      ALT_CLR         at 16#34# range 0 .. 31;
      PRI_SET         at 16#38# range 0 .. 31;
      PRI_CLR         at 16#3C# range 0 .. 31;
      ERRCHNL_CLR     at 16#48# range 0 .. 31;
      ERR_CLR         at 16#4C# range 0 .. 31;
      INVALIDDESC_CLR at 16#50# range 0 .. 31;
      BS_SET          at 16#800# range 0 .. 31;
      BS_CLR          at 16#804# range 0 .. 31;
      SRCADDR_SET     at 16#810# range 0 .. 31;
      SRCADDR_CLR     at 16#814# range 0 .. 31;
      DSTADDR_SET     at 16#818# range 0 .. 31;
      DSTADDR_CLR     at 16#81C# range 0 .. 31;
      REVID           at 16#FE0# range 0 .. 31;
   end record;

   --  DMA
   DMA0_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

end NRF_SVD.DMA0;
