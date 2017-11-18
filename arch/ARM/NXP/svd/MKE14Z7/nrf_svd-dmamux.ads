--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DMAMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMA Channel Source (Slot)
   type CHCFG_SOURCE_Field is
     (
      --  Disable_Signal
      Disable_Signal,
      --  LPUART0_Rx_Signal
      Lpuart0_Rx_Signal,
      --  LPUART0_Tx_Signal
      Lpuart0_Tx_Signal,
      --  LPUART1_Rx_Signal
      Lpuart1_Rx_Signal,
      --  LPUART1_Tx_Signal
      Lpuart1_Tx_Signal,
      --  LPUART2_Rx_Signal
      Lpuart2_Rx_Signal,
      --  LPUART2_Tx_Signal
      Lpuart2_Tx_Signal,
      --  FlexIO_Channel0_Signal
      Flexio_Channel0_Signal,
      --  FlexIO_Channel1_Signal
      Flexio_Channel1_Signal,
      --  FlexIO_Channel2_Signal
      Flexio_Channel2_Signal,
      --  FlexIO_Channel3_Signal
      Flexio_Channel3_Signal,
      --  LPSPI0_Rx_Signal
      Lpspi0_Rx_Signal,
      --  LPSPI0_Tx_Signal
      Lpspi0_Tx_Signal,
      --  LPSPI1_Rx_Signal
      Lpspi1_Rx_Signal,
      --  LPSPI1_Tx_Signal
      Lpspi1_Tx_Signal,
      --  LPI2C0_Rx_Signal
      Lpi2C0_Rx_Signal,
      --  LPI2C0_Tx_Signal
      Lpi2C0_Tx_Signal,
      --  FTM0_Channel0_Signal
      Ftm0_Channel0_Signal,
      --  FTM0_Channel1_Signal
      Ftm0_Channel1_Signal,
      --  FTM0_Channel2_Signal
      Ftm0_Channel2_Signal,
      --  FTM0_Channel3_Signal
      Ftm0_Channel3_Signal,
      --  FTM0_Channel4_Signal
      Ftm0_Channel4_Signal,
      --  FTM0_Channel5_Signal
      Ftm0_Channel5_Signal,
      --  FTM0_Channel6_Signal
      Ftm0_Channel6_Signal,
      --  FTM0_Channel7_Signal
      Ftm0_Channel7_Signal,
      --  FTM1_Channel0_Signal
      Ftm1_Channel0_Signal,
      --  FTM1_Channel1_Signal
      Ftm1_Channel1_Signal,
      --  FTM2_Channel0_Signal
      Ftm2_Channel0_Signal,
      --  FTM2_Channel1_Signal
      Ftm2_Channel1_Signal,
      --  LPI2C1_Rx_Signal
      Lpi2C1_Rx_Signal,
      --  LPI2C1_Tx_Signal
      Lpi2C1_Tx_Signal,
      --  ADC0_Signal
      Adc0_Signal,
      --  ADC1_Signal
      Adc1_Signal,
      --  CMP0_Signal
      Cmp0_Signal,
      --  CMP1_Signal
      Cmp1_Signal,
      --  PDB0_Signal
      Pdb0_Signal,
      --  PortA_Signal
      Porta_Signal,
      --  PortB_Signal
      Portb_Signal,
      --  PortC_Signal
      Portc_Signal,
      --  PortD_Signal
      Portd_Signal,
      --  PortE_Signal
      Porte_Signal,
      --  FTM1_Channel2_Signal
      Ftm1_Channel2_Signal,
      --  FTM2_Channel2_Signal
      Ftm2_Channel2_Signal,
      --  LPTMR0_Signal
      Lptmr0_Signal,
      --  AlwaysOn60_Signal
      Alwayson60_Signal,
      --  AlwaysOn61_Signal
      Alwayson61_Signal,
      --  AlwaysOn62_Signal
      Alwayson62_Signal,
      --  AlwaysOn63_Signal
      Alwayson63_Signal)
     with Size => 6;
   for CHCFG_SOURCE_Field use
     (Disable_Signal => 0,
      Lpuart0_Rx_Signal => 2,
      Lpuart0_Tx_Signal => 3,
      Lpuart1_Rx_Signal => 4,
      Lpuart1_Tx_Signal => 5,
      Lpuart2_Rx_Signal => 6,
      Lpuart2_Tx_Signal => 7,
      Flexio_Channel0_Signal => 10,
      Flexio_Channel1_Signal => 11,
      Flexio_Channel2_Signal => 12,
      Flexio_Channel3_Signal => 13,
      Lpspi0_Rx_Signal => 14,
      Lpspi0_Tx_Signal => 15,
      Lpspi1_Rx_Signal => 16,
      Lpspi1_Tx_Signal => 17,
      Lpi2C0_Rx_Signal => 18,
      Lpi2C0_Tx_Signal => 19,
      Ftm0_Channel0_Signal => 20,
      Ftm0_Channel1_Signal => 21,
      Ftm0_Channel2_Signal => 22,
      Ftm0_Channel3_Signal => 23,
      Ftm0_Channel4_Signal => 24,
      Ftm0_Channel5_Signal => 25,
      Ftm0_Channel6_Signal => 26,
      Ftm0_Channel7_Signal => 27,
      Ftm1_Channel0_Signal => 28,
      Ftm1_Channel1_Signal => 29,
      Ftm2_Channel0_Signal => 30,
      Ftm2_Channel1_Signal => 31,
      Lpi2C1_Rx_Signal => 32,
      Lpi2C1_Tx_Signal => 33,
      Adc0_Signal => 40,
      Adc1_Signal => 41,
      Cmp0_Signal => 43,
      Cmp1_Signal => 44,
      Pdb0_Signal => 46,
      Porta_Signal => 49,
      Portb_Signal => 50,
      Portc_Signal => 51,
      Portd_Signal => 52,
      Porte_Signal => 53,
      Ftm1_Channel2_Signal => 57,
      Ftm2_Channel2_Signal => 58,
      Lptmr0_Signal => 59,
      Alwayson60_Signal => 60,
      Alwayson61_Signal => 61,
      Alwayson62_Signal => 62,
      Alwayson63_Signal => 63);

   --  DMA Channel Trigger Enable
   type CHCFG_TRIG_Field is
     (
      --  Triggering is disabled. If triggering is disabled and ENBL is set,
      --  the DMA Channel will simply route the specified source to the DMA
      --  channel. (Normal mode)
      Disabled,
      --  Triggering is enabled. If triggering is enabled and ENBL is set, the
      --  DMAMUX is in Periodic Trigger mode.
      Enabled)
     with Size => 1;
   for CHCFG_TRIG_Field use
     (Disabled => 0,
      Enabled => 1);

   --  DMA Channel Enable
   type CHCFG_ENBL_Field is
     (
      --  DMA channel is disabled. This mode is primarily used during
      --  configuration of the DMAMux. The DMA has separate channel
      --  enables/disables, which should be used to disable or reconfigure a
      --  DMA channel.
      Disabled,
      --  DMA channel is enabled
      Enabled)
     with Size => 1;
   for CHCFG_ENBL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Channel Configuration register
   type DMAMUX_CHCFG_Register is record
      --  DMA Channel Source (Slot)
      SOURCE : CHCFG_SOURCE_Field := NRF_SVD.DMAMUX.Disable_Signal;
      --  DMA Channel Trigger Enable
      TRIG   : CHCFG_TRIG_Field := NRF_SVD.DMAMUX.Disabled;
      --  DMA Channel Enable
      ENBL   : CHCFG_ENBL_Field := NRF_SVD.DMAMUX.Disabled;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DMAMUX_CHCFG_Register use record
      SOURCE at 0 range 0 .. 5;
      TRIG   at 0 range 6 .. 6;
      ENBL   at 0 range 7 .. 7;
   end record;

   --  Channel Configuration register
   type DMAMUX_CHCFG_Registers is array (0 .. 7) of DMAMUX_CHCFG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA channel multiplexor
   type DMAMUX_Peripheral is record
      --  Channel Configuration register
      CHCFG : aliased DMAMUX_CHCFG_Registers;
   end record
     with Volatile;

   for DMAMUX_Peripheral use record
      CHCFG at 0 range 0 .. 63;
   end record;

   --  DMA channel multiplexor
   DMAMUX_Periph : aliased DMAMUX_Peripheral
     with Import, Address => System'To_Address (16#40021000#);

end NRF_SVD.DMAMUX;
