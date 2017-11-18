--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SYSBLK1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Mux select for DMA6
   type DMA_MUXCTL_SEL6_Field is
     (
      --  Select SPI[1] TXDMA port
      Spi1_Txdma,
      --  Select UART[2] TXDMA port
      Uart2_Txdma)
     with Size => 1;
   for DMA_MUXCTL_SEL6_Field use
     (Spi1_Txdma => 0,
      Uart2_Txdma => 1);

   --  Mux select for DMA7
   type DMA_MUXCTL_SEL7_Field is
     (
      --  Select SPI[1] RXDMA port
      Spi1_Rxdma,
      --  Select UART[2] RXDMA port
      Uart2_Rxdma)
     with Size => 1;
   for DMA_MUXCTL_SEL7_Field use
     (Spi1_Rxdma => 0,
      Uart2_Rxdma => 1);

   --  Mux select for DMA8
   type DMA_MUXCTL_SEL8_Field is
     (
      --  Select HAE[0] RXDMA_CH0 port
      Hae0_Rxdma_Ch0,
      --  Select UART[3] TXDMA port
      Uart3_Txdma)
     with Size => 1;
   for DMA_MUXCTL_SEL8_Field use
     (Hae0_Rxdma_Ch0 => 0,
      Uart3_Txdma => 1);

   --  Mux select for DMA9
   type DMA_MUXCTL_SEL9_Field is
     (
      --  Select HAE[0] TXDMA port
      Hae0_Txdma,
      --  Select UART[3] RXDMA port
      Uart3_Rxdma)
     with Size => 1;
   for DMA_MUXCTL_SEL9_Field use
     (Hae0_Txdma => 0,
      Uart3_Rxdma => 1);

   --  Mux select for DMA10
   type DMA_MUXCTL_SEL10_Field is
     (
      --  Select HAE[0] RXDMA_CH1 port
      Hae0_Rxdma_Ch1,
      --  Select SPORT[0] A_DMA port
      Sport0_A_Dma,
      --  Select UART[4] TXDMA port
      Uart4_Txdma)
     with Size => 2;
   for DMA_MUXCTL_SEL10_Field use
     (Hae0_Rxdma_Ch1 => 0,
      Sport0_A_Dma => 1,
      Uart4_Txdma => 2);

   --  Mux select for DMA11
   type DMA_MUXCTL_SEL11_Field is
     (
      --  Select SPORT[0] B_DMA port
      Sport0_B_Dma,
      --  Select UART[4] RXDMA port
      Uart4_Rxdma)
     with Size => 1;
   for DMA_MUXCTL_SEL11_Field use
     (Sport0_B_Dma => 0,
      Uart4_Rxdma => 1);

   --  Peripheral DMA Multiplexer Control
   type DMA_MUXCTL_Register is record
      --  Mux select for DMA6
      SEL6          : DMA_MUXCTL_SEL6_Field := NRF_SVD.SYSBLK1.Spi1_Txdma;
      --  Mux select for DMA7
      SEL7          : DMA_MUXCTL_SEL7_Field := NRF_SVD.SYSBLK1.Spi1_Rxdma;
      --  Mux select for DMA8
      SEL8          : DMA_MUXCTL_SEL8_Field := NRF_SVD.SYSBLK1.Hae0_Rxdma_Ch0;
      --  Mux select for DMA9
      SEL9          : DMA_MUXCTL_SEL9_Field := NRF_SVD.SYSBLK1.Hae0_Txdma;
      --  Mux select for DMA10
      SEL10         : DMA_MUXCTL_SEL10_Field :=
                       NRF_SVD.SYSBLK1.Hae0_Rxdma_Ch1;
      --  Mux select for DMA11
      SEL11         : DMA_MUXCTL_SEL11_Field := NRF_SVD.SYSBLK1.Sport0_B_Dma;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_MUXCTL_Register use record
      SEL6          at 0 range 0 .. 0;
      SEL7          at 0 range 1 .. 1;
      SEL8          at 0 range 2 .. 2;
      SEL9          at 0 range 3 .. 3;
      SEL10         at 0 range 4 .. 5;
      SEL11         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWM_SYS_CFG_PWM0TRIPMX_Field is HAL.UInt3;
   subtype PWM_SYS_CFG_PWM1TRIPMX_Field is HAL.UInt3;
   subtype PWM_SYS_CFG_PWM2TRIPMX_Field is HAL.UInt3;

   --  PWM_SYS_CFG_HPPWMDIS array
   type PWM_SYS_CFG_HPPWMDIS_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWM_SYS_CFG_HPPWMDIS
   type PWM_SYS_CFG_HPPWMDIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HPPWMDIS as a value
            Val : HAL.UInt3;
         when True =>
            --  HPPWMDIS as an array
            Arr : PWM_SYS_CFG_HPPWMDIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWM_SYS_CFG_HPPWMDIS_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PWM System Configuration Register
   type PWM_SYS_CFG_Register is record
      --  PWM0 Trip Multiplexer Select
      PWM0TRIPMX     : PWM_SYS_CFG_PWM0TRIPMX_Field := 16#0#;
      --  Fast Over Current Protection PWM Trip Enable 0
      FOCPTRIPEN0    : Boolean := False;
      --  Analog Front End Not OK PWM Trip Enable 0
      AFEOKTRIPEN0   : Boolean := False;
      --  PWM1 Trip Multiplexer Select
      PWM1TRIPMX     : PWM_SYS_CFG_PWM1TRIPMX_Field := 16#0#;
      --  Fast Over Current Protection PWM Trip Enable 1
      FOCPTRIPEN1    : Boolean := False;
      --  Analog Front End Not OK PWM Trip Enable 1
      AFEOKTRIPEN1   : Boolean := False;
      --  PWM2 Trip Multiplexer Select
      PWM2TRIPMX     : PWM_SYS_CFG_PWM2TRIPMX_Field := 16#0#;
      --  Fast Over Current Protection PWM Trip Enable 2
      FOCPTRIPEN2    : Boolean := False;
      --  Analog Front End Not OK PWM Trip Enable 2
      AFEOKTRIPEN2   : Boolean := False;
      --  unspecified
      Reserved_15_18 : HAL.UInt4 := 16#0#;
      --  High Precision PWM Block0 Disable (Reverts HPPWM to Medium Precision)
      HPPWMDIS       : PWM_SYS_CFG_HPPWMDIS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  PWM0 SYNC OUT secondary enable
      PWM0SYNCOE     : Boolean := False;
      --  PWM1 SYNC OUT secondary enable
      PWM1SYNCOE     : Boolean := False;
      --  PWM2 SYNC OUT secondary enable
      PWM2SYNCOE     : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SYS_CFG_Register use record
      PWM0TRIPMX     at 0 range 0 .. 2;
      FOCPTRIPEN0    at 0 range 3 .. 3;
      AFEOKTRIPEN0   at 0 range 4 .. 4;
      PWM1TRIPMX     at 0 range 5 .. 7;
      FOCPTRIPEN1    at 0 range 8 .. 8;
      AFEOKTRIPEN1   at 0 range 9 .. 9;
      PWM2TRIPMX     at 0 range 10 .. 12;
      FOCPTRIPEN2    at 0 range 13 .. 13;
      AFEOKTRIPEN2   at 0 range 14 .. 14;
      Reserved_15_18 at 0 range 15 .. 18;
      HPPWMDIS       at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PWM0SYNCOE     at 0 range 24 .. 24;
      PWM1SYNCOE     at 0 range 25 .. 25;
      PWM2SYNCOE     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Memory Self-Test Control Register
   type MEMST_CTL_Register is record
      --  Memory Self-Test Enable
      EN            : Boolean := False;
      --  Run Control Bit
      RUN           : Boolean := False;
      --  Read-only. Busy Status
      BUSY          : Boolean := False;
      --  Read-only. Test Pass/Fail Status
      FAIL          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMST_CTL_Register use record
      EN            at 0 range 0 .. 0;
      RUN           at 0 range 1 .. 1;
      BUSY          at 0 range 2 .. 2;
      FAIL          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SINC_TEST_EN_Field is HAL.UInt4;

   --  SINC Test Register
   type SINC_TEST_Register is record
      --  SINC Test Enable
      EN            : SINC_TEST_EN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINC_TEST_Register use record
      EN            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  System Status Register
   type SYSSTAT_Register is record
      --  Read-only. Status of AFE_OK signal
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

   --  Clock Not Good Trip Register
   type CLKNG_TRIPEN_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Oscillator Compare Unit Dead Clock Trip Enable
      OCU0CLK       : Boolean := False;
      --  Oscillator Compare Unit Asynchronous Fault Trip Enable
      OCU0FAULT     : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKNG_TRIPEN_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OCU0CLK       at 0 range 1 .. 1;
      OCU0FAULT     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Fault Trip Register
   type FAULT_TRIPEN_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Oscillator Compare Unit Dead Clock Trip Enable
      OCU0CLK       : Boolean := False;
      --  Oscillator Compare Unit Asynchronous Fault Trip Enable
      OCU0FAULT     : Boolean := False;
      --  System Oscillator Clock No Good Trip Enable
      OSC0CLK       : Boolean := False;
      --  System Oscillator Asynchronous Fault Trip Enable
      OSC0FAULT     : Boolean := True;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FAULT_TRIPEN_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OCU0CLK       at 0 range 1 .. 1;
      OCU0FAULT     at 0 range 2 .. 2;
      OSC0CLK       at 0 range 3 .. 3;
      OSC0FAULT     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Input selector for Rotary CNT0 Phase A input
   type ROT_UPDN_CFG_SELA_Field is
     (
      --  Select Pad as input to Rotary Counter
      Pad_TO_A,
      --  Select Pad as input to Rotary Counter
      Pad2_TO_A,
      --  Select Trigger Slave as input to Rotary Counter
      Trig_TO_A,
      --  Select LBA as input to Rotary Counter
      Lba_TO_A)
     with Size => 2;
   for ROT_UPDN_CFG_SELA_Field use
     (Pad_TO_A => 0,
      Pad2_TO_A => 1,
      Trig_TO_A => 2,
      Lba_TO_A => 3);

   --  Input selector for Rotary CNT0 Phase B input
   type ROT_UPDN_CFG_SELB_Field is
     (
      --  Input selects PAD connection
      Pad_TO_B,
      --  Input selects PAD connection
      Pad2_TO_B,
      --  Input selects Trigger Slave connection
      Trig_TO_B,
      --  Input selects LBA output connection
      Lba_TO_B)
     with Size => 2;
   for ROT_UPDN_CFG_SELB_Field use
     (Pad_TO_B => 0,
      Pad2_TO_B => 1,
      Trig_TO_B => 2,
      Lba_TO_B => 3);

   --  Rotary Counter Up/Down Configuration Register
   type ROT_UPDN_CFG_Register is record
      --  Input selector for Rotary CNT0 Phase A input
      SELA          : ROT_UPDN_CFG_SELA_Field := NRF_SVD.SYSBLK1.Pad_TO_A;
      --  Input selector for Rotary CNT0 Phase B input
      SELB          : ROT_UPDN_CFG_SELB_Field := NRF_SVD.SYSBLK1.Pad_TO_B;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROT_UPDN_CFG_Register use record
      SELA          at 0 range 0 .. 1;
      SELB          at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SCB Response Configuration Register
   type SCB_RESP_CFG_Register is record
      --  Enable SCB Timeout Interrupt
      TOENA         : Boolean := False;
      --  Status Error bit indicating SCB bus has timed out
      TOERR         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_RESP_CFG_Register use record
      TOENA         at 0 range 0 .. 0;
      TOERR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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

   subtype LROM_STAT_FLT_BROM_Field is HAL.UInt4;

   --  Logic ROM status register
   type LROM_STAT_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Read-only. State of FSEREG security enable
      FSEREG         : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  BCODE_ERR Fault: Unexpected Exception
      FLT_UEXC       : Boolean := False;
      --  BCODE_ERR Fault: Configuration/Flash Key Timeout
      FLT_FKTMO      : Boolean := False;
      --  BCODE_ERR Fault: Configuration ECC Error
      FLT_EFS_ECC    : Boolean := False;
      --  BCODE_ERR Fault: Flash Key Invalid
      FLT_FKEY_ERR   : Boolean := False;
      --  BCODE_ERR Fault: CRC error in RINIT structure
      FLT_RINIT_ERR  : Boolean := False;
      --  BCODE_ERR Fault: CRC error in RFUNC code section
      FLT_RFUNC_ERR  : Boolean := False;
      --  BCODE_ERR Fault: CRC error in Array Boot ROM
      FLT_ROM_ERR    : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  BCODE_ERR fault, Boot ROM fault code
      FLT_BROM       : LROM_STAT_FLT_BROM_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LROM_STAT_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      FSEREG         at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FLT_UEXC       at 0 range 16 .. 16;
      FLT_FKTMO      at 0 range 17 .. 17;
      FLT_EFS_ECC    at 0 range 18 .. 18;
      FLT_FKEY_ERR   at 0 range 19 .. 19;
      FLT_RINIT_ERR  at 0 range 20 .. 20;
      FLT_RFUNC_ERR  at 0 range 21 .. 21;
      FLT_ROM_ERR    at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FLT_BROM       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pads Controller
   type SYSBLK1_Peripheral is record
      --  Peripheral DMA Multiplexer Control
      DMA_MUXCTL        : aliased DMA_MUXCTL_Register;
      --  PWM System Configuration Register
      PWM_SYS_CFG       : aliased PWM_SYS_CFG_Register;
      --  Memory Self-Test Control Register
      MEMST_CTL         : aliased MEMST_CTL_Register;
      --  SINC Test Register
      SINC_TEST         : aliased SINC_TEST_Register;
      --  System Status Register
      SYSSTAT           : aliased SYSSTAT_Register;
      --  Clock Not Good Trip Register
      CLKNG_TRIPEN      : aliased CLKNG_TRIPEN_Register;
      --  Fault Trip Register
      FAULT_TRIPEN      : aliased FAULT_TRIPEN_Register;
      --  Rotary Counter Up/Down Configuration Register
      ROT_UPDN_CFG      : aliased ROT_UPDN_CFG_Register;
      --  SCB Response Configuration Register
      SCB_RESP_CFG      : aliased SCB_RESP_CFG_Register;
      --  SCB Timeout Value Register
      SCB_TIMEOUT_VALUE : aliased SCB_TIMEOUT_VALUE_Register;
      --  Logic ROM status register
      LROM_STAT         : aliased LROM_STAT_Register;
   end record
     with Volatile;

   for SYSBLK1_Peripheral use record
      DMA_MUXCTL        at 16#10# range 0 .. 31;
      PWM_SYS_CFG       at 16#14# range 0 .. 31;
      MEMST_CTL         at 16#18# range 0 .. 31;
      SINC_TEST         at 16#1C# range 0 .. 31;
      SYSSTAT           at 16#40# range 0 .. 31;
      CLKNG_TRIPEN      at 16#50# range 0 .. 31;
      FAULT_TRIPEN      at 16#58# range 0 .. 31;
      ROT_UPDN_CFG      at 16#60# range 0 .. 31;
      SCB_RESP_CFG      at 16#70# range 0 .. 31;
      SCB_TIMEOUT_VALUE at 16#74# range 0 .. 31;
      LROM_STAT         at 16#84# range 0 .. 31;
   end record;

   --  Pads Controller
   SYSBLK1_Periph : aliased SYSBLK1_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.SYSBLK1;
