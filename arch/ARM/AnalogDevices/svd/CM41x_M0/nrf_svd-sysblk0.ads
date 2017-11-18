--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SYSBLK0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  System Status Register
   type SYSSTAT_Register is record
      --  Read-only. Status of AFE_OK Signal
      AFE_OK        : Boolean;
      --  Read-only. Status of AFE_LIMIT signal
      AFE_LIMIT     : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSSTAT_Register use record
      AFE_OK        at 0 range 0 .. 0;
      AFE_LIMIT     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SCB Response Configuration Register
   type SCB_RESP_CFG_Register is record
      --  Enable SCB Timeout Interrupt
      TOENA         : Boolean := False;
      --  Status Error bit indicating SCB bus has timed out
      TOERR         : Boolean := False;
      --  Posted Write Error interrupt enable
      PWENA         : Boolean := False;
      --  Posted Write Error has occurred
      PWERR         : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_RESP_CFG_Register use record
      TOENA         at 0 range 0 .. 0;
      TOERR         at 0 range 1 .. 1;
      PWENA         at 0 range 2 .. 2;
      PWERR         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SCB_TIMEOUT_VALUE_DATA_Field is HAL.UInt16;

   --  SCB Timeout Value Register
   type SCB_TIMEOUT_VALUE_Register is record
      --  Timeout Value
      DATA           : SCB_TIMEOUT_VALUE_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_TIMEOUT_VALUE_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Engineering Mode Configuration Register 0
   type ENG_MODE_CFG0_Register is record
      --  unspecified
      Reserved_0_16  : HAL.UInt17 := 16#0#;
      --  LBA Combinatorial mode
      LBA_COMB_MODE  : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENG_MODE_CFG0_Register use record
      Reserved_0_16  at 0 range 0 .. 16;
      LBA_COMB_MODE  at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype M0_VTOR_TBLOFF_Field is HAL.UInt24;

   --  Vector Table Base Offset Register
   type M0_VTOR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8 := 16#0#;
      --  Vector Table Base Offset
      TBLOFF       : M0_VTOR_TBLOFF_Field := 16#200F00#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_VTOR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      TBLOFF       at 0 range 8 .. 31;
   end record;

   subtype SRAM0_ECC_FADDR_Field is HAL.UInt13;
   subtype SRAM0_ECC_MAPMODE_Field is HAL.UInt2;

   --  M0 SRAM ECC Register
   type SRAM0_ECC_Register is record
      --  Interrupt Enable
      IEN            : Boolean := False;
      --  Fault Status
      FLTST          : Boolean := False;
      --  Read-only. ECC Fault Address
      FADDR          : SRAM0_ECC_FADDR_Field := 16#0#;
      --  unspecified
      Reserved_15_29 : HAL.UInt15 := 16#0#;
      --  ECC Bypass Modes
      MAPMODE        : SRAM0_ECC_MAPMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM0_ECC_Register use record
      IEN            at 0 range 0 .. 0;
      FLTST          at 0 range 1 .. 1;
      FADDR          at 0 range 2 .. 14;
      Reserved_15_29 at 0 range 15 .. 29;
      MAPMODE        at 0 range 30 .. 31;
   end record;

   subtype SYS_STCALIB_TENMS_Field is HAL.UInt24;

   --  System Register
   type SYS_STCALIB_Register is record
      --  Sys Tick Calibration Register Value in units of ten milliseconds
      TENMS          : SYS_STCALIB_TENMS_Field := 16#0#;
      --  Tie low is SCLK can guarantee an exact multiple of 10ms
      SKEW           : Boolean := False;
      --  Read-only. No External Reference
      NOREF          : Boolean := True;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYS_STCALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      SKEW           at 0 range 24 .. 24;
      NOREF          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype IRQ_LATENCY_VALUE_Field is HAL.UInt8;

   --  M0 IRQ Latency Register
   type IRQ_LATENCY_Register is record
      --  IRQ LATENCY VALUE
      VALUE         : IRQ_LATENCY_VALUE_Field := 16#D#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQ_LATENCY_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Shared Interrupt 0 Status Register
   type SISTAT0_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  Shared INTR_0 status bit (From CGU[0]_OSCW_INT)
      CGU0_OSCW_INT   : Boolean := False;
      --  Shared INTR_0 status bit (From OCU[0]_ERR)
      OCU0_ERR        : Boolean := False;
      --  Shared INTR_0 status bit (From VMU[0]_VDDEXT_EVT)
      VMU0_VDDEXT_EVT : Boolean := False;
      --  Shared INTR_0 status bit (From VMU[0]_VDDINT_EVT)
      VMU0_VDDINT_EVT : Boolean := False;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT0_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      CGU0_OSCW_INT   at 0 range 1 .. 1;
      OCU0_ERR        at 0 range 2 .. 2;
      VMU0_VDDEXT_EVT at 0 range 3 .. 3;
      VMU0_VDDINT_EVT at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   --  Shared Interrupt 3 Status Register
   type SISTAT3_Register is record
      --  Shared INTR_3 status bit (From SPU[0]_TIMEOUT)
      SPU0_TIMEOUT        : Boolean := False;
      --  Shared INTR_3 status bit (From SYSBLK[0]_BUS_TIMEOUT)
      SYSBLK0_BUS_TIMEOUT : Boolean := False;
      --  Shared INTR_3 status bit (From SYSBLK[0]_POSTWR_ERR)
      SYSBLK0_POSTWR_ERR  : Boolean := False;
      --  unspecified
      Reserved_3_31       : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT3_Register use record
      SPU0_TIMEOUT        at 0 range 0 .. 0;
      SYSBLK0_BUS_TIMEOUT at 0 range 1 .. 1;
      SYSBLK0_POSTWR_ERR  at 0 range 2 .. 2;
      Reserved_3_31       at 0 range 3 .. 31;
   end record;

   --  Shared Interrupt 5 Status Register
   type SISTAT5_Register is record
      --  Shared INTR_5 status bit (From M4PFLASH[0]_CORE_FLASH_EERR)
      M4PFLASH0_CORE_FLASH_EERR : Boolean := False;
      --  Shared INTR_5 status bit (From M4P_BUS_FAULT)
      M4P_BUS_FAULT             : Boolean := False;
      --  Shared INTR_5 status bit (From M4P_CORE_SRAM_EERR)
      M4P_CORE_SRAM_EERR        : Boolean := False;
      --  Shared INTR_5 status bit (From M4P_LOCKUP)
      M4P_LOCKUP                : Boolean := False;
      --  Shared INTR_5 status bit (From MBOX[0]_PORT1_EERR)
      MBOX0_PORT1_EERR          : Boolean := False;
      --  Shared INTR_5 status bit (From SPU[1]_TIMEOUT)
      SPU1_TIMEOUT              : Boolean := False;
      --  Shared INTR_5 status bit (From SYSBLK[1]_BUS_TIMEOUT)
      SYSBLK1_BUS_TIMEOUT       : Boolean := False;
      --  unspecified
      Reserved_7_31             : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT5_Register use record
      M4PFLASH0_CORE_FLASH_EERR at 0 range 0 .. 0;
      M4P_BUS_FAULT             at 0 range 1 .. 1;
      M4P_CORE_SRAM_EERR        at 0 range 2 .. 2;
      M4P_LOCKUP                at 0 range 3 .. 3;
      MBOX0_PORT1_EERR          at 0 range 4 .. 4;
      SPU1_TIMEOUT              at 0 range 5 .. 5;
      SYSBLK1_BUS_TIMEOUT       at 0 range 6 .. 6;
      Reserved_7_31             at 0 range 7 .. 31;
   end record;

   --  Shared Interrupt 6 Status Register
   type SISTAT6_Register is record
      --  Shared INTR_6 status bit (From FFTB[0]_DPERR)
      FFTB0_DPERR   : Boolean := False;
      --  Shared INTR_6 status bit (From FFTB[0]_SPERR)
      FFTB0_SPERR   : Boolean := False;
      --  Shared INTR_6 status bit (From HAE[0]_PERR)
      HAE0_PERR     : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT6_Register use record
      FFTB0_DPERR   at 0 range 0 .. 0;
      FFTB0_SPERR   at 0 range 1 .. 1;
      HAE0_PERR     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Shared Interrupt 7 Status Register
   type SISTAT7_Register is record
      --  Shared INTR_7 status bit (From CGU[0]_EVT)
      CGU0_EVT      : Boolean := False;
      --  Shared INTR_7 status bit (From DPM[0]_EVT)
      DPM0_EVT      : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT7_Register use record
      CGU0_EVT      at 0 range 0 .. 0;
      DPM0_EVT      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 8 Status Register
   type SISTAT8_Register is record
      --  Shared INTR_8 status bit (From SEC[0]_ERR)
      SEC0_ERR      : Boolean := False;
      --  Shared INTR_8 status bit (From SMPU[0]_ERR)
      SMPU0_ERR     : Boolean := False;
      --  Shared INTR_8 status bit (From SPU[0]_INT)
      SPU0_INT      : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT8_Register use record
      SEC0_ERR      at 0 range 0 .. 0;
      SMPU0_ERR     at 0 range 1 .. 1;
      SPU0_INT      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Shared Interrupt 10 Status Register
   type SISTAT10_Register is record
      --  Shared INTR_10 status bit (From SYS_AFE_LIMIT)
      SYS_AFE_LIMIT : Boolean := False;
      --  Read-only. Shared INTR_10 status bit (From SYS_AFE_NOTOK)
      SYS_AFE_NOTOK : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT10_Register use record
      SYS_AFE_LIMIT at 0 range 0 .. 0;
      SYS_AFE_NOTOK at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 11 Status Register
   type SISTAT11_Register is record
      --  Shared INTR_11 status bit (From SWU[0]_EVT)
      SWU0_EVT      : Boolean := False;
      --  Shared INTR_11 status bit (From SWU[1]_EVT)
      SWU1_EVT      : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT11_Register use record
      SWU0_EVT      at 0 range 0 .. 0;
      SWU1_EVT      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 12 Status Register
   type SISTAT12_Register is record
      --  Shared INTR_12 status bit (From DMA[0]_ERR)
      DMA0_ERR      : Boolean := False;
      --  Shared INTR_12 status bit (From DMA[10]_ERR)
      DMA10_ERR     : Boolean := False;
      --  Shared INTR_12 status bit (From DMA[1]_ERR)
      DMA1_ERR      : Boolean := False;
      --  Shared INTR_12 status bit (From DMA[2]_ERR)
      DMA2_ERR      : Boolean := False;
      --  Shared INTR_12 status bit (From DMA[3]_ERR)
      DMA3_ERR      : Boolean := False;
      --  Shared INTR_12 status bit (From DMA[8]_ERR)
      DMA8_ERR      : Boolean := False;
      --  Shared INTR_12 status bit (From DMA[9]_ERR)
      DMA9_ERR      : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT12_Register use record
      DMA0_ERR      at 0 range 0 .. 0;
      DMA10_ERR     at 0 range 1 .. 1;
      DMA1_ERR      at 0 range 2 .. 2;
      DMA2_ERR      at 0 range 3 .. 3;
      DMA3_ERR      at 0 range 4 .. 4;
      DMA8_ERR      at 0 range 5 .. 5;
      DMA9_ERR      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  SISTAT15_TIMER0_TMR array
   type SISTAT15_TIMER0_TMR_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for SISTAT15_TIMER0_TMR
   type SISTAT15_TIMER0_TMR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER0_TMR as a value
            Val : HAL.UInt8;
         when True =>
            --  TIMER0_TMR as an array
            Arr : SISTAT15_TIMER0_TMR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SISTAT15_TIMER0_TMR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Shared Interrupt 15 Status Register
   type SISTAT15_Register is record
      --  Shared INTR_15 status bit (From TIMER[0]_STAT)
      TIMER0_STAT   : Boolean := False;
      --  Shared INTR_15 status bit (From TIMER[0]_TMR[0])
      TIMER0_TMR    : SISTAT15_TIMER0_TMR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT15_Register use record
      TIMER0_STAT   at 0 range 0 .. 0;
      TIMER0_TMR    at 0 range 1 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Shared Interrupt 16 Status Register
   type SISTAT16_Register is record
      --  Shared INTR_16 status bit (From CPTMR[0]_CPT[0]_MEAS)
      CPTMR0_CPT0_MEAS : Boolean := False;
      --  Shared INTR_16 status bit (From CPTMR[0]_CPT[1]_MEAS)
      CPTMR0_CPT1_MEAS : Boolean := False;
      --  Shared INTR_16 status bit (From CPTMR[0]_CPT[2]_MEAS)
      CPTMR0_CPT2_MEAS : Boolean := False;
      --  unspecified
      Reserved_3_31    : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT16_Register use record
      CPTMR0_CPT0_MEAS at 0 range 0 .. 0;
      CPTMR0_CPT1_MEAS at 0 range 1 .. 1;
      CPTMR0_CPT2_MEAS at 0 range 2 .. 2;
      Reserved_3_31    at 0 range 3 .. 31;
   end record;

   --  Shared Interrupt 17 Status Register
   type SISTAT17_Register is record
      --  Shared INTR_17 status bit (From DMA[0]_INT)
      DMA0_INT      : Boolean := False;
      --  Shared INTR_17 status bit (From DMA[2]_INT)
      DMA2_INT      : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT17_Register use record
      DMA0_INT      at 0 range 0 .. 0;
      DMA2_INT      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 18 Status Register
   type SISTAT18_Register is record
      --  Shared INTR_18 status bit (From DMA[1]_INT)
      DMA1_INT      : Boolean := False;
      --  Shared INTR_18 status bit (From DMA[3]_INT)
      DMA3_INT      : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT18_Register use record
      DMA1_INT      at 0 range 0 .. 0;
      DMA3_INT      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 19 Status Register
   type SISTAT19_Register is record
      --  Shared INTR_19 status bit (From DMA[10]_INT)
      DMA10_INT     : Boolean := False;
      --  Shared INTR_19 status bit (From DMA[8]_INT)
      DMA8_INT      : Boolean := False;
      --  Shared INTR_19 status bit (From DMA[9]_INT)
      DMA9_INT      : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT19_Register use record
      DMA10_INT     at 0 range 0 .. 0;
      DMA8_INT      at 0 range 1 .. 1;
      DMA9_INT      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Shared Interrupt 22 Status Register
   type SISTAT22_Register is record
      --  Shared INTR_22 status bit (From FFTB[0]_DONE)
      FFTB0_DONE    : Boolean := False;
      --  Shared INTR_22 status bit (From FFTB[0]_LIMERR)
      FFTB0_LIMERR  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT22_Register use record
      FFTB0_DONE    at 0 range 0 .. 0;
      FFTB0_LIMERR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 25 Status Register
   type SISTAT25_Register is record
      --  Shared INTR_25 status bit (From SPI[0]_ERR)
      SPI0_ERR      : Boolean := False;
      --  Shared INTR_25 status bit (From SPI[0]_STAT)
      SPI0_STAT     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT25_Register use record
      SPI0_ERR      at 0 range 0 .. 0;
      SPI0_STAT     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Shared Interrupt 28 Status Register
   type SISTAT28_Register is record
      --  Shared INTR_28 status bit (From CAN[0]_RX)
      CAN0_RX       : Boolean := False;
      --  Shared INTR_28 status bit (From CAN[0]_STAT)
      CAN0_STAT     : Boolean := False;
      --  Shared INTR_28 status bit (From CAN[0]_TX)
      CAN0_TX       : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SISTAT28_Register use record
      CAN0_RX       at 0 range 0 .. 0;
      CAN0_STAT     at 0 range 1 .. 1;
      CAN0_TX       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pads Controller
   type SYSBLK0_Peripheral is record
      --  System Status Register
      SYSSTAT           : aliased SYSSTAT_Register;
      --  SCB Response Configuration Register
      SCB_RESP_CFG      : aliased SCB_RESP_CFG_Register;
      --  SCB Timeout Value Register
      SCB_TIMEOUT_VALUE : aliased SCB_TIMEOUT_VALUE_Register;
      --  Engineering Mode Configuration Register 0
      ENG_MODE_CFG0     : aliased ENG_MODE_CFG0_Register;
      --  Vector Table Base Offset Register
      M0_VTOR           : aliased M0_VTOR_Register;
      --  M0 SRAM ECC Register
      SRAM0_ECC         : aliased SRAM0_ECC_Register;
      --  System Register
      SYS_STCALIB       : aliased SYS_STCALIB_Register;
      --  M0 IRQ Latency Register
      IRQ_LATENCY       : aliased IRQ_LATENCY_Register;
      --  Shared Interrupt 0 Status Register
      SISTAT0           : aliased SISTAT0_Register;
      --  Shared Interrupt 3 Status Register
      SISTAT3           : aliased SISTAT3_Register;
      --  Shared Interrupt 5 Status Register
      SISTAT5           : aliased SISTAT5_Register;
      --  Shared Interrupt 6 Status Register
      SISTAT6           : aliased SISTAT6_Register;
      --  Shared Interrupt 7 Status Register
      SISTAT7           : aliased SISTAT7_Register;
      --  Shared Interrupt 8 Status Register
      SISTAT8           : aliased SISTAT8_Register;
      --  Shared Interrupt 10 Status Register
      SISTAT10          : aliased SISTAT10_Register;
      --  Shared Interrupt 11 Status Register
      SISTAT11          : aliased SISTAT11_Register;
      --  Shared Interrupt 12 Status Register
      SISTAT12          : aliased SISTAT12_Register;
      --  Shared Interrupt 15 Status Register
      SISTAT15          : aliased SISTAT15_Register;
      --  Shared Interrupt 16 Status Register
      SISTAT16          : aliased SISTAT16_Register;
      --  Shared Interrupt 17 Status Register
      SISTAT17          : aliased SISTAT17_Register;
      --  Shared Interrupt 18 Status Register
      SISTAT18          : aliased SISTAT18_Register;
      --  Shared Interrupt 19 Status Register
      SISTAT19          : aliased SISTAT19_Register;
      --  Shared Interrupt 22 Status Register
      SISTAT22          : aliased SISTAT22_Register;
      --  Shared Interrupt 25 Status Register
      SISTAT25          : aliased SISTAT25_Register;
      --  Shared Interrupt 28 Status Register
      SISTAT28          : aliased SISTAT28_Register;
   end record
     with Volatile;

   for SYSBLK0_Peripheral use record
      SYSSTAT           at 16#40# range 0 .. 31;
      SCB_RESP_CFG      at 16#70# range 0 .. 31;
      SCB_TIMEOUT_VALUE at 16#74# range 0 .. 31;
      ENG_MODE_CFG0     at 16#80# range 0 .. 31;
      M0_VTOR           at 16#B4# range 0 .. 31;
      SRAM0_ECC         at 16#E0# range 0 .. 31;
      SYS_STCALIB       at 16#E4# range 0 .. 31;
      IRQ_LATENCY       at 16#E8# range 0 .. 31;
      SISTAT0           at 16#200# range 0 .. 31;
      SISTAT3           at 16#20C# range 0 .. 31;
      SISTAT5           at 16#214# range 0 .. 31;
      SISTAT6           at 16#218# range 0 .. 31;
      SISTAT7           at 16#21C# range 0 .. 31;
      SISTAT8           at 16#220# range 0 .. 31;
      SISTAT10          at 16#228# range 0 .. 31;
      SISTAT11          at 16#22C# range 0 .. 31;
      SISTAT12          at 16#230# range 0 .. 31;
      SISTAT15          at 16#23C# range 0 .. 31;
      SISTAT16          at 16#240# range 0 .. 31;
      SISTAT17          at 16#244# range 0 .. 31;
      SISTAT18          at 16#248# range 0 .. 31;
      SISTAT19          at 16#24C# range 0 .. 31;
      SISTAT22          at 16#258# range 0 .. 31;
      SISTAT25          at 16#264# range 0 .. 31;
      SISTAT28          at 16#270# range 0 .. 31;
   end record;

   --  Pads Controller
   SYSBLK0_Periph : aliased SYSBLK0_Peripheral
     with Import, Address => System'To_Address (16#41000000#);

end NRF_SVD.SYSBLK0;
