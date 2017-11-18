--

--  This spec has been automatically generated from CM41x_M4.svd

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

   --  DMA Channel Enable
   type CFG_EN_Field is
     (
      --  Disable
      Dis,
      --  Enable
      En)
     with Size => 1;
   for CFG_EN_Field use
     (Dis => 0,
      En => 1);

   --  Write/Read Channel Direction
   type CFG_WNR_Field is
     (
      --  Transmit (Read from memory)
      Read,
      --  Receive (Write to memory)
      Write)
     with Size => 1;
   for CFG_WNR_Field use
     (Read => 0,
      Write => 1);

   --  Synchronize Work Unit Transitions
   type CFG_SYNC_Field is
     (
      --  No Synchronization
      No_Sync,
      --  Synchronize Channel
      Sync)
     with Size => 1;
   for CFG_SYNC_Field use
     (No_Sync => 0,
      Sync => 1);

   --  Use Current Address
   type CFG_CADDR_Field is
     (
      --  Load Starting Address
      Ld_Startaddr,
      --  Use Current Address
      Ld_Curaddr)
     with Size => 1;
   for CFG_CADDR_Field use
     (Ld_Startaddr => 0,
      Ld_Curaddr => 1);

   --  Peripheral Transfer Word Size
   type CFG_PSIZE_Field is
     (
      --  1 Byte
      Psize01,
      --  2 Bytes
      Psize02,
      --  4 Bytes
      Psize04,
      --  8 Bytes
      Psize08)
     with Size => 3;
   for CFG_PSIZE_Field use
     (Psize01 => 0,
      Psize02 => 1,
      Psize04 => 2,
      Psize08 => 3);

   --  Memory Transfer Word Size
   type CFG_MSIZE_Field is
     (
      --  1 Byte
      Msize01,
      --  2 Bytes
      Msize02,
      --  4 Bytes
      Msize04,
      --  8 Bytes
      Msize08,
      --  16 Bytes
      Msize16,
      --  32 Bytes
      Msize32)
     with Size => 3;
   for CFG_MSIZE_Field use
     (Msize01 => 0,
      Msize02 => 1,
      Msize04 => 2,
      Msize08 => 3,
      Msize16 => 4,
      Msize32 => 5);

   --  Next Operation
   type CFG_FLOW_Field is
     (
      --  STOP - Stop
      Stop,
      --  AUTO - Autobuffer
      Auto,
      --  DSCL - Descriptor List
      Dsclist,
      --  DSCA - Descriptor Array
      Dscarray,
      --  Descriptor On-Demand List
      Dodlist,
      --  Descriptor On Demand Array
      Dodarray)
     with Size => 3;
   for CFG_FLOW_Field use
     (Stop => 0,
      Auto => 1,
      Dsclist => 4,
      Dscarray => 5,
      Dodlist => 6,
      Dodarray => 7);

   --  Wait for Trigger
   type CFG_TWAIT_Field is
     (
      --  Begin Work Unit Automatically (No Wait)
      No_Trgwait,
      --  Wait for Trigger (Halt before Work Unit)
      Trgwait)
     with Size => 1;
   for CFG_TWAIT_Field use
     (No_Trgwait => 0,
      Trgwait => 1);

   --  Next Descriptor Set Size
   type CFG_NDSIZE_Field is
     (
      --  Fetch one Descriptor Element
      Fetch01,
      --  Fetch two Descriptor Elements
      Fetch02,
      --  Fetch three Descriptor Elements
      Fetch03,
      --  Fetch four Descriptor Elements
      Fetch04,
      --  Fetch five Descriptor Elements
      Fetch05,
      --  Fetch six Descriptor Elements
      Fetch06,
      --  Fetch seven Descriptor Elements
      Fetch07)
     with Size => 3;
   for CFG_NDSIZE_Field use
     (Fetch01 => 0,
      Fetch02 => 1,
      Fetch03 => 2,
      Fetch04 => 3,
      Fetch05 => 4,
      Fetch06 => 5,
      Fetch07 => 6);

   --  Generate Interrupt
   type CFG_INT_Field is
     (
      --  Never assert Interrupt
      No_Int,
      --  Interrupt when X Count Expires
      Xcnt_Int,
      --  Interrupt when Y Count Expires
      Ycnt_Int,
      --  Peripheral Interrupt
      Periph_Int)
     with Size => 2;
   for CFG_INT_Field use
     (No_Int => 0,
      Xcnt_Int => 1,
      Ycnt_Int => 2,
      Periph_Int => 3);

   --  Generate Outgoing Trigger
   type CFG_TRIG_Field is
     (
      --  Never assert Trigger
      No_Trig,
      --  Trigger when XCNTCUR reaches 0
      Xcnt_Trig,
      --  Trigger when YCNTCUR reaches 0
      Ycnt_Trig)
     with Size => 2;
   for CFG_TRIG_Field use
     (No_Trig => 0,
      Xcnt_Trig => 1,
      Ycnt_Trig => 2);

   --  Trigger Overrun Error Enable
   type CFG_TOVEN_Field is
     (
      --  Ignore Trigger Overrun
      Tov_Dis,
      --  Error on Trigger Overrun
      Tov_En)
     with Size => 1;
   for CFG_TOVEN_Field use
     (Tov_Dis => 0,
      Tov_En => 1);

   --  Descriptor ID Copy Control
   type CFG_DESCIDCPY_Field is
     (
      --  Never Copy
      No_Copy,
      --  Copy on Work Unit Complete
      Copy)
     with Size => 1;
   for CFG_DESCIDCPY_Field use
     (No_Copy => 0,
      Copy => 1);

   --  Two Dimension Addressing Enable
   type CFG_TWOD_Field is
     (
      --  One-Dimensional Addressing
      Addr1D,
      --  Two-Dimensional Addressing
      Addr2D)
     with Size => 1;
   for CFG_TWOD_Field use
     (Addr1D => 0,
      Addr2D => 1);

   --  Peripheral Data Request Forward
   type CFG_PDRF_Field is
     (
      --  Peripheral Data Request Not Forwarded
      Pdat_Notfwd,
      --  Peripheral Data Request Forwarded
      Pdat_Fwd)
     with Size => 1;
   for CFG_PDRF_Field use
     (Pdat_Notfwd => 0,
      Pdat_Fwd => 1);

   --  Configuration Register
   type CFG_Register is record
      --  DMA Channel Enable
      EN             : CFG_EN_Field := NRF_SVD.DMA0.Dis;
      --  Write/Read Channel Direction
      WNR            : CFG_WNR_Field := NRF_SVD.DMA0.Read;
      --  Synchronize Work Unit Transitions
      SYNC           : CFG_SYNC_Field := NRF_SVD.DMA0.No_Sync;
      --  Use Current Address
      CADDR          : CFG_CADDR_Field := NRF_SVD.DMA0.Ld_Startaddr;
      --  Peripheral Transfer Word Size
      PSIZE          : CFG_PSIZE_Field := NRF_SVD.DMA0.Psize01;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Memory Transfer Word Size
      MSIZE          : CFG_MSIZE_Field := NRF_SVD.DMA0.Msize01;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Next Operation
      FLOW           : CFG_FLOW_Field := NRF_SVD.DMA0.Stop;
      --  Wait for Trigger
      TWAIT          : CFG_TWAIT_Field := NRF_SVD.DMA0.No_Trgwait;
      --  Next Descriptor Set Size
      NDSIZE         : CFG_NDSIZE_Field := NRF_SVD.DMA0.Fetch01;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Generate Interrupt
      INT            : CFG_INT_Field := NRF_SVD.DMA0.No_Int;
      --  Generate Outgoing Trigger
      TRIG           : CFG_TRIG_Field := NRF_SVD.DMA0.No_Trig;
      --  Trigger Overrun Error Enable
      TOVEN          : CFG_TOVEN_Field := NRF_SVD.DMA0.Tov_Dis;
      --  Descriptor ID Copy Control
      DESCIDCPY      : CFG_DESCIDCPY_Field := NRF_SVD.DMA0.No_Copy;
      --  Two Dimension Addressing Enable
      TWOD           : CFG_TWOD_Field := NRF_SVD.DMA0.Addr1D;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Peripheral Data Request Forward
      PDRF           : CFG_PDRF_Field := NRF_SVD.DMA0.Pdat_Notfwd;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      EN             at 0 range 0 .. 0;
      WNR            at 0 range 1 .. 1;
      SYNC           at 0 range 2 .. 2;
      CADDR          at 0 range 3 .. 3;
      PSIZE          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MSIZE          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      FLOW           at 0 range 12 .. 14;
      TWAIT          at 0 range 15 .. 15;
      NDSIZE         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      INT            at 0 range 20 .. 21;
      TRIG           at 0 range 22 .. 23;
      TOVEN          at 0 range 24 .. 24;
      DESCIDCPY      at 0 range 25 .. 25;
      TWOD           at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PDRF           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DSCPTR_PRV_DESCPPREV_Field is HAL.UInt30;

   --  Previous Initial Descriptor Pointer Register
   type DSCPTR_PRV_Register is record
      --  Read-only. Previous Descriptor Pointer Overrun
      PDPO         : Boolean;
      --  unspecified
      Reserved_1_1 : HAL.Bit;
      --  Read-only. Descriptor Pointer for Previous Element
      DESCPPREV    : DSCPTR_PRV_DESCPPREV_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSCPTR_PRV_Register use record
      PDPO         at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      DESCPPREV    at 0 range 2 .. 31;
   end record;

   --  Work Unit/Row Done Interrupt
   type STAT_IRQDONE_Field is
     (
      --  Inactive
      No_Irq,
      --  Active
      Irqdone)
     with Size => 1;
   for STAT_IRQDONE_Field use
     (No_Irq => 0,
      Irqdone => 1);

   --  Error Interrupt
   type STAT_IRQERR_Field is
     (
      --  No Error
      No_Irqerr,
      --  Error Occurred
      Irqerr)
     with Size => 1;
   for STAT_IRQERR_Field use
     (No_Irqerr => 0,
      Irqerr => 1);

   --  Peripheral Interrupt Request
   type STAT_PIRQ_Field is
     (
      --  No Interrupt
      No_Pirq,
      --  Interrupt Signaled by Peripheral
      Pirq)
     with Size => 1;
   for STAT_PIRQ_Field use
     (No_Pirq => 0,
      Pirq => 1);

   --  Error Cause
   type STAT_ERRC_Field is
     (
      --  Configuration Error
      Cfgerr,
      --  Illegal Write Occurred While Channel Running
      Illwrerr,
      --  Address Alignment Error
      Algnerr,
      --  Memory Access or Fabric Error
      Memerr,
      --  Trigger Overrun
      Trgoverr,
      --  Bandwidth Monitor Error
      Bwmonerr)
     with Size => 3;
   for STAT_ERRC_Field use
     (Cfgerr => 0,
      Illwrerr => 1,
      Algnerr => 2,
      Memerr => 3,
      Trgoverr => 5,
      Bwmonerr => 6);

   --  Run Status
   type STAT_RUN_Field is
     (
      --  Idle/Stop State
      Stopped,
      --  Descriptor Fetch
      Dscfetch,
      --  Data Transfer
      Dataxfer,
      --  Waiting for Trigger
      Trgwait,
      --  Waiting for Write ACK/FIFO Drain to Peripheral
      Ackwait)
     with Size => 3;
   for STAT_RUN_Field use
     (Stopped => 0,
      Dscfetch => 1,
      Dataxfer => 2,
      Trgwait => 3,
      Ackwait => 4);

   --  Peripheral Bus Width
   type STAT_PBWID_Field is
     (
      --  1 Byte
      Pbus01,
      --  2 Bytes
      Pbus02,
      --  4 Bytes
      Pbus04,
      --  8 Bytes
      Pbus08)
     with Size => 2;
   for STAT_PBWID_Field use
     (Pbus01 => 0,
      Pbus02 => 1,
      Pbus04 => 2,
      Pbus08 => 3);

   --  Memory Bus Width
   type STAT_MBWID_Field is
     (
      --  2 Bytes
      Mbus02,
      --  4 Bytes
      Mbus04,
      --  8 Bytes
      Mbus08,
      --  16 Bytes
      Mbus16)
     with Size => 2;
   for STAT_MBWID_Field use
     (Mbus02 => 0,
      Mbus04 => 1,
      Mbus08 => 2,
      Mbus16 => 3);

   --  FIFO Fill Status
   type STAT_FIFOFILL_Field is
     (
      --  Empty
      Fifoempty,
      --  Empty < FIFO = 1/4 Full
      Fifo25,
      --  1/4 Full < FIFO = 1/2 Full
      Fifo50,
      --  1/2 Full < FIFO = 3/4 Full
      Fifo75,
      --  3/4 Full < FIFO = Full
      Fifonearfull,
      --  Full
      Fifofull)
     with Size => 3;
   for STAT_FIFOFILL_Field use
     (Fifoempty => 0,
      Fifo25 => 1,
      Fifo50 => 2,
      Fifo75 => 3,
      Fifonearfull => 4,
      Fifofull => 7);

   --  Trigger Wait Status
   type STAT_TWAIT_Field is
     (
      --  No trigger received
      Notrigrx,
      --  Trigger received
      Trigrx)
     with Size => 1;
   for STAT_TWAIT_Field use
     (Notrigrx => 0,
      Trigrx => 1);

   --  Status Register
   type STAT_Register is record
      --  Work Unit/Row Done Interrupt
      IRQDONE        : STAT_IRQDONE_Field := NRF_SVD.DMA0.No_Irq;
      --  Error Interrupt
      IRQERR         : STAT_IRQERR_Field := NRF_SVD.DMA0.No_Irqerr;
      --  Peripheral Interrupt Request
      PIRQ           : STAT_PIRQ_Field := NRF_SVD.DMA0.No_Pirq;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Read-only. Error Cause
      ERRC           : STAT_ERRC_Field := NRF_SVD.DMA0.Cfgerr;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Read-only. Run Status
      RUN            : STAT_RUN_Field := NRF_SVD.DMA0.Stopped;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. Peripheral Bus Width
      PBWID          : STAT_PBWID_Field := NRF_SVD.DMA0.Pbus04;
      --  Read-only. Memory Bus Width
      MBWID          : STAT_MBWID_Field := NRF_SVD.DMA0.Mbus04;
      --  Read-only. FIFO Fill Status
      FIFOFILL       : STAT_FIFOFILL_Field := NRF_SVD.DMA0.Fifoempty;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read-only. Trigger Wait Status
      TWAIT          : STAT_TWAIT_Field := NRF_SVD.DMA0.Notrigrx;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      IRQDONE        at 0 range 0 .. 0;
      IRQERR         at 0 range 1 .. 1;
      PIRQ           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ERRC           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RUN            at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PBWID          at 0 range 12 .. 13;
      MBWID          at 0 range 14 .. 15;
      FIFOFILL       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TWAIT          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA Channel
   type DMA0_Peripheral is record
      --  Pointer to Next Initial Descriptor Register
      DSCPTR_NXT : aliased HAL.UInt32;
      --  Start Address of Current Buffer Register
      ADDRSTART  : aliased HAL.UInt32;
      --  Configuration Register
      CFG        : aliased CFG_Register;
      --  Inner Loop Count Start Value Register
      XCNT       : aliased HAL.UInt32;
      --  Inner Loop Address Increment Register
      XMOD       : aliased HAL.UInt32;
      --  Outer Loop Count Start Value (2D only) Register
      YCNT       : aliased HAL.UInt32;
      --  Outer Loop Address Increment (2D only) Register
      YMOD       : aliased HAL.UInt32;
      --  Current Descriptor Pointer Register
      DSCPTR_CUR : aliased HAL.UInt32;
      --  Previous Initial Descriptor Pointer Register
      DSCPTR_PRV : aliased DSCPTR_PRV_Register;
      --  Current Address Register
      ADDR_CUR   : aliased HAL.UInt32;
      --  Status Register
      STAT       : aliased STAT_Register;
      --  Current Count(1D) or intra-row XCNT (2D) Register
      XCNT_CUR   : aliased HAL.UInt32;
      --  Current Row Count (2D only) Register
      YCNT_CUR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for DMA0_Peripheral use record
      DSCPTR_NXT at 16#0# range 0 .. 31;
      ADDRSTART  at 16#4# range 0 .. 31;
      CFG        at 16#8# range 0 .. 31;
      XCNT       at 16#C# range 0 .. 31;
      XMOD       at 16#10# range 0 .. 31;
      YCNT       at 16#14# range 0 .. 31;
      YMOD       at 16#18# range 0 .. 31;
      DSCPTR_CUR at 16#24# range 0 .. 31;
      DSCPTR_PRV at 16#28# range 0 .. 31;
      ADDR_CUR   at 16#2C# range 0 .. 31;
      STAT       at 16#30# range 0 .. 31;
      XCNT_CUR   at 16#34# range 0 .. 31;
      YCNT_CUR   at 16#38# range 0 .. 31;
   end record;

   --  DMA Channel
   DMA0_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#4100C000#);

   --  DMA Channel
   DMA1_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#4100D000#);

   --  DMA Channel
   DMA2_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#4100E000#);

   --  DMA Channel
   DMA3_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#4100F000#);

   --  DMA Channel
   DMA4_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40060000#);

   --  DMA Channel
   DMA5_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40061000#);

   --  DMA Channel
   DMA6_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40062000#);

   --  DMA Channel
   DMA7_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40063000#);

   --  DMA Channel
   DMA8_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40064000#);

   --  DMA Channel
   DMA9_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40065000#);

   --  DMA Channel
   DMA10_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40066000#);

   --  DMA Channel
   DMA11_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#40067000#);

end NRF_SVD.DMA0;
