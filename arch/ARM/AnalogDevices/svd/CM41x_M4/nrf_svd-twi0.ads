--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TWI0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CLKDIV_CLKLO_Field is HAL.UInt8;
   subtype CLKDIV_CLKHI_Field is HAL.UInt8;

   --  SCL Clock Divider Register
   type CLKDIV_Register is record
      --  SCL Clock Low Periods
      CLKLO          : CLKDIV_CLKLO_Field := 16#0#;
      --  SCL Clock High Periods
      CLKHI          : CLKDIV_CLKHI_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      CLKLO          at 0 range 0 .. 7;
      CLKHI          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CTL_PRESCALE_Field is HAL.UInt7;

   --  Enable Module
   type CTL_EN_Field is
     (
      --  Disable
      Dis,
      --  Enable
      En)
     with Size => 1;
   for CTL_EN_Field use
     (Dis => 0,
      En => 1);

   --  SCCB Compatibility
   type CTL_SCCB_Field is
     (
      --  Disable SCCB compatibility
      Sccb_Dis,
      --  Enable SCCB compatibility
      Sccb_En)
     with Size => 1;
   for CTL_SCCB_Field use
     (Sccb_Dis => 0,
      Sccb_En => 1);

   --  Control Register
   type CTL_Register is record
      --  SCLK Prescale Value
      PRESCALE       : CTL_PRESCALE_Field := 16#0#;
      --  Enable Module
      EN             : CTL_EN_Field := NRF_SVD.TWI0.Dis;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  SCCB Compatibility
      SCCB           : CTL_SCCB_Field := NRF_SVD.TWI0.Sccb_Dis;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      PRESCALE       at 0 range 0 .. 6;
      EN             at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SCCB           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Enable Slave Mode
   type SLVCTL_EN_Field is
     (
      --  Disable
      Dis,
      --  Enable
      En)
     with Size => 1;
   for SLVCTL_EN_Field use
     (Dis => 0,
      En => 1);

   --  Transmit Data Valid for Slave
   type SLVCTL_TDVAL_Field is
     (
      --  Data Invalid for Slave Tx
      Invalid,
      --  Data Valid for Slave Tx
      Valid)
     with Size => 1;
   for SLVCTL_TDVAL_Field use
     (Invalid => 0,
      Valid => 1);

   --  Not Acknowledge
   type SLVCTL_NAK_Field is
     (
      --  Generate ACK
      Ackgen,
      --  Generate NAK
      Nakgen)
     with Size => 1;
   for SLVCTL_NAK_Field use
     (Ackgen => 0,
      Nakgen => 1);

   --  General Call Enable
   type SLVCTL_GEN_Field is
     (
      --  Disable General Call Matching
      Gdis,
      --  Enable General Call Matching
      Gen)
     with Size => 1;
   for SLVCTL_GEN_Field use
     (Gdis => 0,
      Gen => 1);

   --  Slave Mode Control Register
   type SLVCTL_Register is record
      --  Enable Slave Mode
      EN            : SLVCTL_EN_Field := NRF_SVD.TWI0.Dis;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Transmit Data Valid for Slave
      TDVAL         : SLVCTL_TDVAL_Field := NRF_SVD.TWI0.Invalid;
      --  Not Acknowledge
      NAK           : SLVCTL_NAK_Field := NRF_SVD.TWI0.Ackgen;
      --  General Call Enable
      GEN           : SLVCTL_GEN_Field := NRF_SVD.TWI0.Gdis;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLVCTL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      TDVAL         at 0 range 2 .. 2;
      NAK           at 0 range 3 .. 3;
      GEN           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Transfer Direction for Slave
   type SLVSTAT_DIR_Field is
     (
      --  Slave Receive
      Rx,
      --  Slave Transmit
      Tx)
     with Size => 1;
   for SLVSTAT_DIR_Field use
     (Rx => 0,
      Tx => 1);

   --  General Call
   type SLVSTAT_GCALL_Field is
     (
      --  Not a General Call Address
      No,
      --  General Call Address
      Yes)
     with Size => 1;
   for SLVSTAT_GCALL_Field use
     (No => 0,
      Yes => 1);

   --  Slave Mode Status Register
   type SLVSTAT_Register is record
      --  Read-only. Transfer Direction for Slave
      DIR           : SLVSTAT_DIR_Field;
      --  Read-only. General Call
      GCALL         : SLVSTAT_GCALL_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLVSTAT_Register use record
      DIR           at 0 range 0 .. 0;
      GCALL         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SLVADDR_ADDR_Field is HAL.UInt7;

   --  Slave Mode Address Register
   type SLVADDR_Register is record
      --  Slave Mode Address
      ADDR          : SLVADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLVADDR_Register use record
      ADDR          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Enable Master Mode
   type MSTRCTL_EN_Field is
     (
      --  Disable
      Dis,
      --  Enable
      En)
     with Size => 1;
   for MSTRCTL_EN_Field use
     (Dis => 0,
      En => 1);

   --  Transfer Direction for Master
   type MSTRCTL_DIR_Field is
     (
      --  Master Transmit
      Tx,
      --  Master Receive
      Rx)
     with Size => 1;
   for MSTRCTL_DIR_Field use
     (Tx => 0,
      Rx => 1);

   --  Fast Mode
   type MSTRCTL_FAST_Field is
     (
      --  Select Standard Mode
      Smode,
      --  Select Fast Mode
      Fast)
     with Size => 1;
   for MSTRCTL_FAST_Field use
     (Smode => 0,
      Fast => 1);

   --  Issue Stop Condition
   type MSTRCTL_STOP_Field is
     (
      --  Permit Normal Operation
      Norm,
      --  Issue Stop
      Stop)
     with Size => 1;
   for MSTRCTL_STOP_Field use
     (Norm => 0,
      Stop => 1);

   --  Repeat Start
   type MSTRCTL_RSTART_Field is
     (
      --  Disable Repeat Start
      End_k,
      --  Enable Repeat Start
      Rpt)
     with Size => 1;
   for MSTRCTL_RSTART_Field use
     (End_k => 0,
      Rpt => 1);

   subtype MSTRCTL_DCNT_Field is HAL.UInt8;

   --  Serial Data Override
   type MSTRCTL_SDAOVR_Field is
     (
      --  Permit Normal SDA Operation
      Sdanorm,
      --  Override Normal SDA Operation
      Sdaover)
     with Size => 1;
   for MSTRCTL_SDAOVR_Field use
     (Sdanorm => 0,
      Sdaover => 1);

   --  Serial Clock Override
   type MSTRCTL_SCLOVR_Field is
     (
      --  Permit Normal SCL Operation
      Sclnorm,
      --  Override Normal SCL Operation
      Sclover)
     with Size => 1;
   for MSTRCTL_SCLOVR_Field use
     (Sclnorm => 0,
      Sclover => 1);

   --  Master Mode Control Registers
   type MSTRCTL_Register is record
      --  Enable Master Mode
      EN             : MSTRCTL_EN_Field := NRF_SVD.TWI0.Dis;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Transfer Direction for Master
      DIR            : MSTRCTL_DIR_Field := NRF_SVD.TWI0.Tx;
      --  Fast Mode
      FAST           : MSTRCTL_FAST_Field := NRF_SVD.TWI0.Smode;
      --  Issue Stop Condition
      STOP           : MSTRCTL_STOP_Field := NRF_SVD.TWI0.Norm;
      --  Repeat Start
      RSTART         : MSTRCTL_RSTART_Field := NRF_SVD.TWI0.End_k;
      --  Data Transfer Count
      DCNT           : MSTRCTL_DCNT_Field := 16#0#;
      --  Serial Data Override
      SDAOVR         : MSTRCTL_SDAOVR_Field := NRF_SVD.TWI0.Sdanorm;
      --  Serial Clock Override
      SCLOVR         : MSTRCTL_SCLOVR_Field := NRF_SVD.TWI0.Sclnorm;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTRCTL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DIR            at 0 range 2 .. 2;
      FAST           at 0 range 3 .. 3;
      STOP           at 0 range 4 .. 4;
      RSTART         at 0 range 5 .. 5;
      DCNT           at 0 range 6 .. 13;
      SDAOVR         at 0 range 14 .. 14;
      SCLOVR         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Master Transfer in Progress
   type MSTRSTAT_MPROG_Field is
     (
      --  No Status
      Mprog_No,
      --  Master Transfer in Progress
      Mprog_Yes)
     with Size => 1;
   for MSTRSTAT_MPROG_Field use
     (Mprog_No => 0,
      Mprog_Yes => 1);

   --  Lost Arbitration
   type MSTRSTAT_LOSTARB_Field is
     (
      --  No Status
      Lostarb_No,
      --  Lost Arbitration
      Lostarb_Yes)
     with Size => 1;
   for MSTRSTAT_LOSTARB_Field use
     (Lostarb_No => 0,
      Lostarb_Yes => 1);

   --  Address Not Acknowledged
   type MSTRSTAT_ANAK_Field is
     (
      --  No Status
      Anak_No,
      --  Address NAK
      Anak_Yes)
     with Size => 1;
   for MSTRSTAT_ANAK_Field use
     (Anak_No => 0,
      Anak_Yes => 1);

   --  Data Not Acknowledged
   type MSTRSTAT_DNAK_Field is
     (
      --  No Status
      Dnak_No,
      --  Data NAK
      Dnak_Yes)
     with Size => 1;
   for MSTRSTAT_DNAK_Field use
     (Dnak_No => 0,
      Dnak_Yes => 1);

   --  Buffer Read Error
   type MSTRSTAT_BUFRDERR_Field is
     (
      --  No Status
      Bufrderr_No,
      --  Buffer Read Error
      Bufrderr_Yes)
     with Size => 1;
   for MSTRSTAT_BUFRDERR_Field use
     (Bufrderr_No => 0,
      Bufrderr_Yes => 1);

   --  Buffer Write Error
   type MSTRSTAT_BUFWRERR_Field is
     (
      --  No Status
      Bufwrerr_No,
      --  Buffer Write Error
      Bufwrerr_Yes)
     with Size => 1;
   for MSTRSTAT_BUFWRERR_Field use
     (Bufwrerr_No => 0,
      Bufwrerr_Yes => 1);

   --  Serial Data Sense
   type MSTRSTAT_SDASEN_Field is
     (
      --  SDA Inactive "One"
      Sdasen_No,
      --  SDA Active "Zero"
      Sdasen_Yes)
     with Size => 1;
   for MSTRSTAT_SDASEN_Field use
     (Sdasen_No => 0,
      Sdasen_Yes => 1);

   --  Serial Clock Sense
   type MSTRSTAT_SCLSEN_Field is
     (
      --  SCL Inactive "One"
      Sclsen_No,
      --  SCL Active "Zero"
      Sclsen_Yes)
     with Size => 1;
   for MSTRSTAT_SCLSEN_Field use
     (Sclsen_No => 0,
      Sclsen_Yes => 1);

   --  Bus Busy
   type MSTRSTAT_BUSBUSY_Field is
     (
      --  Bus Free
      Free,
      --  Bus Busy
      Busy)
     with Size => 1;
   for MSTRSTAT_BUSBUSY_Field use
     (Free => 0,
      Busy => 1);

   --  Master Mode Status Register
   type MSTRSTAT_Register is record
      --  Read-only. Master Transfer in Progress
      MPROG         : MSTRSTAT_MPROG_Field := NRF_SVD.TWI0.Mprog_No;
      --  Lost Arbitration
      LOSTARB       : MSTRSTAT_LOSTARB_Field := NRF_SVD.TWI0.Lostarb_No;
      --  Address Not Acknowledged
      ANAK          : MSTRSTAT_ANAK_Field := NRF_SVD.TWI0.Anak_No;
      --  Data Not Acknowledged
      DNAK          : MSTRSTAT_DNAK_Field := NRF_SVD.TWI0.Dnak_No;
      --  Buffer Read Error
      BUFRDERR      : MSTRSTAT_BUFRDERR_Field := NRF_SVD.TWI0.Bufrderr_No;
      --  Buffer Write Error
      BUFWRERR      : MSTRSTAT_BUFWRERR_Field := NRF_SVD.TWI0.Bufwrerr_No;
      --  Read-only. Serial Data Sense
      SDASEN        : MSTRSTAT_SDASEN_Field := NRF_SVD.TWI0.Sdasen_No;
      --  Read-only. Serial Clock Sense
      SCLSEN        : MSTRSTAT_SCLSEN_Field := NRF_SVD.TWI0.Sclsen_No;
      --  Read-only. Bus Busy
      BUSBUSY       : MSTRSTAT_BUSBUSY_Field := NRF_SVD.TWI0.Free;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTRSTAT_Register use record
      MPROG         at 0 range 0 .. 0;
      LOSTARB       at 0 range 1 .. 1;
      ANAK          at 0 range 2 .. 2;
      DNAK          at 0 range 3 .. 3;
      BUFRDERR      at 0 range 4 .. 4;
      BUFWRERR      at 0 range 5 .. 5;
      SDASEN        at 0 range 6 .. 6;
      SCLSEN        at 0 range 7 .. 7;
      BUSBUSY       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype MSTRADDR_ADDR_Field is HAL.UInt7;

   --  Master Mode Address Register
   type MSTRADDR_Register is record
      --  Master Mode Address
      ADDR          : MSTRADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSTRADDR_Register use record
      ADDR          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Slave Transfer Initiated
   type ISTAT_SINIT_Field is
     (
      --  No Interrupt
      Sinit_No,
      --  Interrupt Detected
      Sinit_Yes)
     with Size => 1;
   for ISTAT_SINIT_Field use
     (Sinit_No => 0,
      Sinit_Yes => 1);

   --  Slave Transfer Complete
   type ISTAT_SCOMP_Field is
     (
      --  No Interrupt
      Scomp_No,
      --  Interrupt Detected
      Scomp_Yes)
     with Size => 1;
   for ISTAT_SCOMP_Field use
     (Scomp_No => 0,
      Scomp_Yes => 1);

   --  Slave Transfer Error
   type ISTAT_SERR_Field is
     (
      --  No Interrupt
      Serr_No,
      --  Interrupt Detected
      Serr_Yes)
     with Size => 1;
   for ISTAT_SERR_Field use
     (Serr_No => 0,
      Serr_Yes => 1);

   --  Slave Overflow
   type ISTAT_SOVF_Field is
     (
      --  No Interrupt
      Sovf_No,
      --  Interrupt Detected
      Sovf_Yes)
     with Size => 1;
   for ISTAT_SOVF_Field use
     (Sovf_No => 0,
      Sovf_Yes => 1);

   --  Master Transfer Complete
   type ISTAT_MCOMP_Field is
     (
      --  No Interrupt
      Mcomp_No,
      --  Interrupt Detected
      Mcomp_Yes)
     with Size => 1;
   for ISTAT_MCOMP_Field use
     (Mcomp_No => 0,
      Mcomp_Yes => 1);

   --  Master Transfer Error
   type ISTAT_MERR_Field is
     (
      --  No Interrupt
      Merr_No,
      --  Interrupt Detected
      Merr_Yes)
     with Size => 1;
   for ISTAT_MERR_Field use
     (Merr_No => 0,
      Merr_Yes => 1);

   --  Tx FIFO Service
   type ISTAT_TXSERV_Field is
     (
      --  No Interrupt
      Txserv_No,
      --  Interrupt Detected
      Txserv_Yes)
     with Size => 1;
   for ISTAT_TXSERV_Field use
     (Txserv_No => 0,
      Txserv_Yes => 1);

   --  Rx FIFO Service
   type ISTAT_RXSERV_Field is
     (
      --  No Interrupt
      Rxserv_No,
      --  Interrupt Detected
      Rxserv_Yes)
     with Size => 1;
   for ISTAT_RXSERV_Field use
     (Rxserv_No => 0,
      Rxserv_Yes => 1);

   --  Serial Data Interrupt
   type ISTAT_SDAI_Field is
     (
      --  No Interrupt
      Sdai_No,
      --  Interrupt Detected
      Sdai_Yes)
     with Size => 1;
   for ISTAT_SDAI_Field use
     (Sdai_No => 0,
      Sdai_Yes => 1);

   --  Serial Clock Interrupt
   type ISTAT_SCLI_Field is
     (
      --  No Interrupt
      Scli_No,
      --  Interrupt Detected
      Scli_Yes)
     with Size => 1;
   for ISTAT_SCLI_Field use
     (Scli_No => 0,
      Scli_Yes => 1);

   --  Interrupt Status Register
   type ISTAT_Register is record
      --  Slave Transfer Initiated
      SINIT          : ISTAT_SINIT_Field := NRF_SVD.TWI0.Sinit_No;
      --  Slave Transfer Complete
      SCOMP          : ISTAT_SCOMP_Field := NRF_SVD.TWI0.Scomp_No;
      --  Slave Transfer Error
      SERR           : ISTAT_SERR_Field := NRF_SVD.TWI0.Serr_No;
      --  Slave Overflow
      SOVF           : ISTAT_SOVF_Field := NRF_SVD.TWI0.Sovf_No;
      --  Master Transfer Complete
      MCOMP          : ISTAT_MCOMP_Field := NRF_SVD.TWI0.Mcomp_No;
      --  Master Transfer Error
      MERR           : ISTAT_MERR_Field := NRF_SVD.TWI0.Merr_No;
      --  Tx FIFO Service
      TXSERV         : ISTAT_TXSERV_Field := NRF_SVD.TWI0.Txserv_No;
      --  Rx FIFO Service
      RXSERV         : ISTAT_RXSERV_Field := NRF_SVD.TWI0.Rxserv_No;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Serial Data Interrupt
      SDAI           : ISTAT_SDAI_Field := NRF_SVD.TWI0.Sdai_No;
      --  Serial Clock Interrupt
      SCLI           : ISTAT_SCLI_Field := NRF_SVD.TWI0.Scli_No;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISTAT_Register use record
      SINIT          at 0 range 0 .. 0;
      SCOMP          at 0 range 1 .. 1;
      SERR           at 0 range 2 .. 2;
      SOVF           at 0 range 3 .. 3;
      MCOMP          at 0 range 4 .. 4;
      MERR           at 0 range 5 .. 5;
      TXSERV         at 0 range 6 .. 6;
      RXSERV         at 0 range 7 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      SDAI           at 0 range 14 .. 14;
      SCLI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Slave Transfer Initiated Interrupt Mask
   type IMSK_SINIT_Field is
     (
      --  Mask (Disable) Interrupt
      Sinit_Msk,
      --  Unmask (Enable) Interrupt
      Sinit_Umsk)
     with Size => 1;
   for IMSK_SINIT_Field use
     (Sinit_Msk => 0,
      Sinit_Umsk => 1);

   --  Slave Transfer Complete Interrupt Mask
   type IMSK_SCOMP_Field is
     (
      --  Mask (Disable) Interrupt
      Scomp_Msk,
      --  Unmask (Enable) Interrupt
      Scomp_Umsk)
     with Size => 1;
   for IMSK_SCOMP_Field use
     (Scomp_Msk => 0,
      Scomp_Umsk => 1);

   --  Slave Transfer Error Interrupt Mask
   type IMSK_SERR_Field is
     (
      --  Mask (Disable) Interrupt
      Serr_Msk,
      --  Unmask (Enable) Interrupt
      Serr_Umsk)
     with Size => 1;
   for IMSK_SERR_Field use
     (Serr_Msk => 0,
      Serr_Umsk => 1);

   --  Slave Overflow Interrupt Mask
   type IMSK_SOVF_Field is
     (
      --  Mask (Disable) Interrupt
      Sovf_Msk,
      --  Unmask (Enable) Interrupt
      Sovf_Umsk)
     with Size => 1;
   for IMSK_SOVF_Field use
     (Sovf_Msk => 0,
      Sovf_Umsk => 1);

   --  Master Transfer Complete Interrupt Mask
   type IMSK_MCOMP_Field is
     (
      --  Mask (Disable) Interrupt
      Mcomp_Msk,
      --  Unmask (Enable) Interrupt
      Mcomp_Umsk)
     with Size => 1;
   for IMSK_MCOMP_Field use
     (Mcomp_Msk => 0,
      Mcomp_Umsk => 1);

   --  Master Transfer Error Interrupt Mask
   type IMSK_MERR_Field is
     (
      --  Mask (Disable) Interrupt
      Merr_Msk,
      --  Unmask (Enable) Interrupt
      Merr_Umsk)
     with Size => 1;
   for IMSK_MERR_Field use
     (Merr_Msk => 0,
      Merr_Umsk => 1);

   --  Tx FIFO Service Interrupt Mask
   type IMSK_TXSERV_Field is
     (
      --  Mask (Disable) Interrupt
      Txserv_Msk,
      --  Unmask (Enable) Interrupt
      Txserv_Umsk)
     with Size => 1;
   for IMSK_TXSERV_Field use
     (Txserv_Msk => 0,
      Txserv_Umsk => 1);

   --  Rx FIFO Service Interrupt Mask
   type IMSK_RXSERV_Field is
     (
      --  Mask (Disable) Interrupt
      Rxserv_Msk,
      --  Unmask (Enable) Interrupt
      Rxserv_Umsk)
     with Size => 1;
   for IMSK_RXSERV_Field use
     (Rxserv_Msk => 0,
      Rxserv_Umsk => 1);

   --  Serial Data Interrupt Mask
   type IMSK_SDAI_Field is
     (
      --  Mask (Disable) Interrupt
      Sdai_Msk,
      --  Unmask (Enable) Interrupt
      Sdai_Umsk)
     with Size => 1;
   for IMSK_SDAI_Field use
     (Sdai_Msk => 0,
      Sdai_Umsk => 1);

   --  Serial Clock Interrupt Mask
   type IMSK_SCLI_Field is
     (
      --  Mask (Disable) Interrupt
      Scli_Msk,
      --  Unmask (Enable) Interrupt
      Scli_Umsk)
     with Size => 1;
   for IMSK_SCLI_Field use
     (Scli_Msk => 0,
      Scli_Umsk => 1);

   --  Interrupt Mask Register
   type IMSK_Register is record
      --  Slave Transfer Initiated Interrupt Mask
      SINIT          : IMSK_SINIT_Field := NRF_SVD.TWI0.Sinit_Msk;
      --  Slave Transfer Complete Interrupt Mask
      SCOMP          : IMSK_SCOMP_Field := NRF_SVD.TWI0.Scomp_Msk;
      --  Slave Transfer Error Interrupt Mask
      SERR           : IMSK_SERR_Field := NRF_SVD.TWI0.Serr_Msk;
      --  Slave Overflow Interrupt Mask
      SOVF           : IMSK_SOVF_Field := NRF_SVD.TWI0.Sovf_Msk;
      --  Master Transfer Complete Interrupt Mask
      MCOMP          : IMSK_MCOMP_Field := NRF_SVD.TWI0.Mcomp_Msk;
      --  Master Transfer Error Interrupt Mask
      MERR           : IMSK_MERR_Field := NRF_SVD.TWI0.Merr_Msk;
      --  Tx FIFO Service Interrupt Mask
      TXSERV         : IMSK_TXSERV_Field := NRF_SVD.TWI0.Txserv_Msk;
      --  Rx FIFO Service Interrupt Mask
      RXSERV         : IMSK_RXSERV_Field := NRF_SVD.TWI0.Rxserv_Msk;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Serial Data Interrupt Mask
      SDAI           : IMSK_SDAI_Field := NRF_SVD.TWI0.Sdai_Msk;
      --  Serial Clock Interrupt Mask
      SCLI           : IMSK_SCLI_Field := NRF_SVD.TWI0.Scli_Msk;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      SINIT          at 0 range 0 .. 0;
      SCOMP          at 0 range 1 .. 1;
      SERR           at 0 range 2 .. 2;
      SOVF           at 0 range 3 .. 3;
      MCOMP          at 0 range 4 .. 4;
      MERR           at 0 range 5 .. 5;
      TXSERV         at 0 range 6 .. 6;
      RXSERV         at 0 range 7 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      SDAI           at 0 range 14 .. 14;
      SCLI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Tx Buffer Flush
   type FIFOCTL_TXFLUSH_Field is
     (
      --  Normal Operation of Tx Buffer
      Txnorm,
      --  Flush Tx Buffer
      Txflush)
     with Size => 1;
   for FIFOCTL_TXFLUSH_Field use
     (Txnorm => 0,
      Txflush => 1);

   --  Rx Buffer Flush
   type FIFOCTL_RXFLUSH_Field is
     (
      --  Normal Operation of Rx Buffer
      Rxnorm,
      --  Flush Rx Buffer
      Rxflush)
     with Size => 1;
   for FIFOCTL_RXFLUSH_Field use
     (Rxnorm => 0,
      Rxflush => 1);

   --  Tx Buffer Interrupt Length
   type FIFOCTL_TXILEN_Field is
     (
      --  TXSERVI on 1 Byte of FIFO Empty
      Txonebyte,
      --  TXSERVI on 2 Bytes of FIFO Empty
      Txtwobyte)
     with Size => 1;
   for FIFOCTL_TXILEN_Field use
     (Txonebyte => 0,
      Txtwobyte => 1);

   --  Rx Buffer Interrupt Length
   type FIFOCTL_RXILEN_Field is
     (
      --  RXSERVI on 1 or 2 Bytes in FIFO
      Rxonebyte,
      --  RXSERVI on 2 Bytes in FIFO
      Rxtwobyte)
     with Size => 1;
   for FIFOCTL_RXILEN_Field use
     (Rxonebyte => 0,
      Rxtwobyte => 1);

   --  FIFO Control Register
   type FIFOCTL_Register is record
      --  Tx Buffer Flush
      TXFLUSH       : FIFOCTL_TXFLUSH_Field := NRF_SVD.TWI0.Txnorm;
      --  Rx Buffer Flush
      RXFLUSH       : FIFOCTL_RXFLUSH_Field := NRF_SVD.TWI0.Rxnorm;
      --  Tx Buffer Interrupt Length
      TXILEN        : FIFOCTL_TXILEN_Field := NRF_SVD.TWI0.Txonebyte;
      --  Rx Buffer Interrupt Length
      RXILEN        : FIFOCTL_RXILEN_Field := NRF_SVD.TWI0.Rxonebyte;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCTL_Register use record
      TXFLUSH       at 0 range 0 .. 0;
      RXFLUSH       at 0 range 1 .. 1;
      TXILEN        at 0 range 2 .. 2;
      RXILEN        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FIFOSTAT_TXSTAT_Field is HAL.UInt2;
   subtype FIFOSTAT_RXSTAT_Field is HAL.UInt2;

   --  FIFO Status Register
   type FIFOSTAT_Register is record
      --  Read-only. Tx FIFO Status
      TXSTAT        : FIFOSTAT_TXSTAT_Field;
      --  Read-only. Rx FIFO Status
      RXSTAT        : FIFOSTAT_RXSTAT_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOSTAT_Register use record
      TXSTAT        at 0 range 0 .. 1;
      RXSTAT        at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TXDATA8_VALUE_Field is HAL.UInt8;

   --  Tx Data Single-Byte Register
   type TXDATA8_Register is record
      --  Tx Data 8-Bit Value
      VALUE         : TXDATA8_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATA8_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXDATA16_VALUE_Field is HAL.UInt16;

   --  Tx Data Double-Byte Register
   type TXDATA16_Register is record
      --  Tx Data 16-Bit Value
      VALUE          : TXDATA16_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATA16_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXDATA8_VALUE_Field is HAL.UInt8;

   --  Rx Data Single-Byte Register
   type RXDATA8_Register is record
      --  Rx Data 8-Bit Value
      VALUE         : RXDATA8_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATA8_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDATA16_VALUE_Field is HAL.UInt16;

   --  Rx Data Double-Byte Register
   type RXDATA16_Register is record
      --  Rx Data 16-Bit Value
      VALUE          : RXDATA16_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATA16_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  2-Wire Interface
   type TWI0_Peripheral is record
      --  SCL Clock Divider Register
      CLKDIV   : aliased CLKDIV_Register;
      --  Control Register
      CTL      : aliased CTL_Register;
      --  Slave Mode Control Register
      SLVCTL   : aliased SLVCTL_Register;
      --  Slave Mode Status Register
      SLVSTAT  : aliased SLVSTAT_Register;
      --  Slave Mode Address Register
      SLVADDR  : aliased SLVADDR_Register;
      --  Master Mode Control Registers
      MSTRCTL  : aliased MSTRCTL_Register;
      --  Master Mode Status Register
      MSTRSTAT : aliased MSTRSTAT_Register;
      --  Master Mode Address Register
      MSTRADDR : aliased MSTRADDR_Register;
      --  Interrupt Status Register
      ISTAT    : aliased ISTAT_Register;
      --  Interrupt Mask Register
      IMSK     : aliased IMSK_Register;
      --  FIFO Control Register
      FIFOCTL  : aliased FIFOCTL_Register;
      --  FIFO Status Register
      FIFOSTAT : aliased FIFOSTAT_Register;
      --  Tx Data Single-Byte Register
      TXDATA8  : aliased TXDATA8_Register;
      --  Tx Data Double-Byte Register
      TXDATA16 : aliased TXDATA16_Register;
      --  Rx Data Single-Byte Register
      RXDATA8  : aliased RXDATA8_Register;
      --  Rx Data Double-Byte Register
      RXDATA16 : aliased RXDATA16_Register;
   end record
     with Volatile;

   for TWI0_Peripheral use record
      CLKDIV   at 16#0# range 0 .. 31;
      CTL      at 16#4# range 0 .. 31;
      SLVCTL   at 16#8# range 0 .. 31;
      SLVSTAT  at 16#C# range 0 .. 31;
      SLVADDR  at 16#10# range 0 .. 31;
      MSTRCTL  at 16#14# range 0 .. 31;
      MSTRSTAT at 16#18# range 0 .. 31;
      MSTRADDR at 16#1C# range 0 .. 31;
      ISTAT    at 16#20# range 0 .. 31;
      IMSK     at 16#24# range 0 .. 31;
      FIFOCTL  at 16#28# range 0 .. 31;
      FIFOSTAT at 16#2C# range 0 .. 31;
      TXDATA8  at 16#80# range 0 .. 31;
      TXDATA16 at 16#84# range 0 .. 31;
      RXDATA8  at 16#88# range 0 .. 31;
      RXDATA16 at 16#8C# range 0 .. 31;
   end record;

   --  2-Wire Interface
   TWI0_Periph : aliased TWI0_Peripheral
     with Import, Address => System'To_Address (16#40023000#);

end NRF_SVD.TWI0;
