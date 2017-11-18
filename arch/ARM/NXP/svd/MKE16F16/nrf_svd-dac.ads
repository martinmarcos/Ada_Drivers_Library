--  This spec has been automatically generated from MKE16F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DAC0_DAT_DATA0_Field is HAL.UInt12;
   subtype DAC0_DAT_DATA1_Field is HAL.UInt12;

   --  DAC Data Register
   type DAC0_DAT_Register is record
      --  DATA0
      DATA0          : DAC0_DAT_DATA0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  DATA1
      DATA1          : DAC0_DAT_DATA1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC0_DAT_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  DAC Data Register
   type DAC0_DAT_Registers is array (0 .. 7) of DAC0_DAT_Register
     with Volatile;

   --  DAC Buffer Read Pointer Bottom Position Flag
   type STATCTRL_DACBFRPBF_Field is
     (
      --  The DAC buffer read pointer is not equal to DACBFUP.
      Dacbfrpbf_0,
      --  The DAC buffer read pointer is equal to DACBFUP.
      Dacbfrpbf_1)
     with Size => 1;
   for STATCTRL_DACBFRPBF_Field use
     (Dacbfrpbf_0 => 0,
      Dacbfrpbf_1 => 1);

   --  DAC Buffer Read Pointer Top Position Flag
   type STATCTRL_DACBFRPTF_Field is
     (
      --  The DAC buffer read pointer is not zero.
      Dacbfrptf_0,
      --  The DAC buffer read pointer is zero.
      Dacbfrptf_1)
     with Size => 1;
   for STATCTRL_DACBFRPTF_Field use
     (Dacbfrptf_0 => 0,
      Dacbfrptf_1 => 1);

   --  DAC Buffer Watermark Flag
   type STATCTRL_DACBFWMF_Field is
     (
      --  The DAC buffer read pointer has not reached the watermark level.
      Dacbfwmf_0,
      --  The DAC buffer read pointer has reached the watermark level.
      Dacbfwmf_1)
     with Size => 1;
   for STATCTRL_DACBFWMF_Field use
     (Dacbfwmf_0 => 0,
      Dacbfwmf_1 => 1);

   --  DAC Buffer Read Pointer Bottom Flag Interrupt Enable
   type STATCTRL_DACBBIEN_Field is
     (
      --  The DAC buffer read pointer bottom flag interrupt is disabled.
      Dacbbien_0,
      --  The DAC buffer read pointer bottom flag interrupt is enabled.
      Dacbbien_1)
     with Size => 1;
   for STATCTRL_DACBBIEN_Field use
     (Dacbbien_0 => 0,
      Dacbbien_1 => 1);

   --  DAC Buffer Read Pointer Top Flag Interrupt Enable
   type STATCTRL_DACBTIEN_Field is
     (
      --  The DAC buffer read pointer top flag interrupt is disabled.
      Dacbtien_0,
      --  The DAC buffer read pointer top flag interrupt is enabled.
      Dacbtien_1)
     with Size => 1;
   for STATCTRL_DACBTIEN_Field use
     (Dacbtien_0 => 0,
      Dacbtien_1 => 1);

   --  DAC Buffer Watermark Interrupt Enable
   type STATCTRL_DACBWIEN_Field is
     (
      --  The DAC buffer watermark interrupt is disabled.
      Dacbwien_0,
      --  The DAC buffer watermark interrupt is enabled.
      Dacbwien_1)
     with Size => 1;
   for STATCTRL_DACBWIEN_Field use
     (Dacbwien_0 => 0,
      Dacbwien_1 => 1);

   --  DAC Low Power Control
   type STATCTRL_LPEN_Field is
     (
      --  High-Power mode
      Lpen_0,
      --  Low-Power mode
      Lpen_1)
     with Size => 1;
   for STATCTRL_LPEN_Field use
     (Lpen_0 => 0,
      Lpen_1 => 1);

   --  DAC Software Trigger
   type STATCTRL_DACSWTRG_Field is
     (
      --  The DAC soft trigger is not valid.
      Dacswtrg_0,
      --  The DAC soft trigger is valid.
      Dacswtrg_1)
     with Size => 1;
   for STATCTRL_DACSWTRG_Field use
     (Dacswtrg_0 => 0,
      Dacswtrg_1 => 1);

   --  DAC Trigger Select
   type STATCTRL_DACTRGSEL_Field is
     (
      --  The DAC hardware trigger is selected.
      Dactrgsel_0,
      --  The DAC software trigger is selected.
      Dactrgsel_1)
     with Size => 1;
   for STATCTRL_DACTRGSEL_Field use
     (Dactrgsel_0 => 0,
      Dactrgsel_1 => 1);

   --  DAC Reference Select
   type STATCTRL_DACRFS_Field is
     (
      --  The DAC selects DACREF_1 as the reference voltage.
      Dacrfs_0,
      --  The DAC selects DACREF_2 as the reference voltage.
      Dacrfs_1)
     with Size => 1;
   for STATCTRL_DACRFS_Field use
     (Dacrfs_0 => 0,
      Dacrfs_1 => 1);

   --  DAC Enable
   type STATCTRL_DACEN_Field is
     (
      --  The DAC system is disabled.
      Dacen_0,
      --  The DAC system is enabled.
      Dacen_1)
     with Size => 1;
   for STATCTRL_DACEN_Field use
     (Dacen_0 => 0,
      Dacen_1 => 1);

   --  DAC Buffer Enable
   type STATCTRL_DACBFEN_Field is
     (
      --  Buffer read pointer is disabled. The converted data is always the
      --  first word of the buffer.
      Dacbfen_0,
      --  Buffer read pointer is enabled. The converted data is the word that
      --  the read pointer points to. It means converted data can be from any
      --  word of the buffer.
      Dacbfen_1)
     with Size => 1;
   for STATCTRL_DACBFEN_Field use
     (Dacbfen_0 => 0,
      Dacbfen_1 => 1);

   --  DAC Buffer Work Mode Select
   type STATCTRL_DACBFMD_Field is
     (
      --  Normal mode
      Dacbfmd_0,
      --  Swing mode
      Dacbfmd_1,
      --  One-Time Scan mode
      Dacbfmd_2,
      --  FIFO mode
      Dacbfmd_3)
     with Size => 2;
   for STATCTRL_DACBFMD_Field use
     (Dacbfmd_0 => 0,
      Dacbfmd_1 => 1,
      Dacbfmd_2 => 2,
      Dacbfmd_3 => 3);

   --  DAC Buffer Watermark Select
   type STATCTRL_DACBFWM_Field is
     (
      --  In normal mode, 1 word . In FIFO mode, 2 or less than 2 data
      --  remaining in FIFO will set watermark status bit.
      Dacbfwm_0,
      --  In normal mode, 2 words . In FIFO mode, Max/4 or less than Max/4 data
      --  remaining in FIFO will set watermark status bit.
      Dacbfwm_1,
      --  In normal mode, 3 words . In FIFO mode, Max/2 or less than Max/2 data
      --  remaining in FIFO will set watermark status bit.
      Dacbfwm_2,
      --  In normal mode, 4 words . In FIFO mode, Max-2 or less than Max-2 data
      --  remaining in FIFO will set watermark status bit. Max is equal to the
      --  FIFO depth.
      Dacbfwm_3)
     with Size => 2;
   for STATCTRL_DACBFWM_Field use
     (Dacbfwm_0 => 0,
      Dacbfwm_1 => 1,
      Dacbfwm_2 => 2,
      Dacbfwm_3 => 3);

   --  DAC test output enable
   type STATCTRL_TESTOUTEN_Field is
     (
      --  Disable DAC test output
      Testouten_0,
      --  Enable DAC test output
      Testouten_1)
     with Size => 1;
   for STATCTRL_TESTOUTEN_Field use
     (Testouten_0 => 0,
      Testouten_1 => 1);

   --  DAC output buffer enable
   type STATCTRL_BFOUTEN_Field is
     (
      --  Disable DAC output buffer
      Bfouten_0,
      --  Enable DAC output buffer
      Bfouten_1)
     with Size => 1;
   for STATCTRL_BFOUTEN_Field use
     (Bfouten_0 => 0,
      Bfouten_1 => 1);

   --  DMA Enable Select
   type STATCTRL_DMAEN_Field is
     (
      --  DMA is disabled.
      Dmaen_0,
      --  DMA is enabled. When DMA is enabled, the DMA request will be
      --  generated by original interrupts. The interrupts will not be
      --  presented on this module at the same time.
      Dmaen_1)
     with Size => 1;
   for STATCTRL_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   subtype DAC0_STATCTRL_DACBFUP_Field is HAL.UInt4;
   subtype DAC0_STATCTRL_DACBFRP_Field is HAL.UInt4;

   --  DAC Status and Control Register
   type DAC0_STATCTRL_Register is record
      --  DAC Buffer Read Pointer Bottom Position Flag
      DACBFRPBF    : STATCTRL_DACBFRPBF_Field := NRF_SVD.DAC.Dacbfrpbf_0;
      --  DAC Buffer Read Pointer Top Position Flag
      DACBFRPTF    : STATCTRL_DACBFRPTF_Field := NRF_SVD.DAC.Dacbfrptf_1;
      --  DAC Buffer Watermark Flag
      DACBFWMF     : STATCTRL_DACBFWMF_Field := NRF_SVD.DAC.Dacbfwmf_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  DAC Buffer Read Pointer Bottom Flag Interrupt Enable
      DACBBIEN     : STATCTRL_DACBBIEN_Field := NRF_SVD.DAC.Dacbbien_0;
      --  DAC Buffer Read Pointer Top Flag Interrupt Enable
      DACBTIEN     : STATCTRL_DACBTIEN_Field := NRF_SVD.DAC.Dacbtien_0;
      --  DAC Buffer Watermark Interrupt Enable
      DACBWIEN     : STATCTRL_DACBWIEN_Field := NRF_SVD.DAC.Dacbwien_0;
      --  DAC Low Power Control
      LPEN         : STATCTRL_LPEN_Field := NRF_SVD.DAC.Lpen_0;
      --  Write-only. DAC Software Trigger
      DACSWTRG     : STATCTRL_DACSWTRG_Field := NRF_SVD.DAC.Dacswtrg_0;
      --  DAC Trigger Select
      DACTRGSEL    : STATCTRL_DACTRGSEL_Field := NRF_SVD.DAC.Dactrgsel_0;
      --  DAC Reference Select
      DACRFS       : STATCTRL_DACRFS_Field := NRF_SVD.DAC.Dacrfs_0;
      --  DAC Enable
      DACEN        : STATCTRL_DACEN_Field := NRF_SVD.DAC.Dacen_0;
      --  DAC Buffer Enable
      DACBFEN      : STATCTRL_DACBFEN_Field := NRF_SVD.DAC.Dacbfen_0;
      --  DAC Buffer Work Mode Select
      DACBFMD      : STATCTRL_DACBFMD_Field := NRF_SVD.DAC.Dacbfmd_0;
      --  DAC Buffer Watermark Select
      DACBFWM      : STATCTRL_DACBFWM_Field := NRF_SVD.DAC.Dacbfwm_0;
      --  DAC test output enable
      TESTOUTEN    : STATCTRL_TESTOUTEN_Field := NRF_SVD.DAC.Testouten_0;
      --  DAC output buffer enable
      BFOUTEN      : STATCTRL_BFOUTEN_Field := NRF_SVD.DAC.Bfouten_0;
      --  DMA Enable Select
      DMAEN        : STATCTRL_DMAEN_Field := NRF_SVD.DAC.Dmaen_0;
      --  DAC Buffer Upper Limit
      DACBFUP      : DAC0_STATCTRL_DACBFUP_Field := 16#F#;
      --  DAC Buffer Read Pointer
      DACBFRP      : DAC0_STATCTRL_DACBFRP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC0_STATCTRL_Register use record
      DACBFRPBF    at 0 range 0 .. 0;
      DACBFRPTF    at 0 range 1 .. 1;
      DACBFWMF     at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      DACBBIEN     at 0 range 8 .. 8;
      DACBTIEN     at 0 range 9 .. 9;
      DACBWIEN     at 0 range 10 .. 10;
      LPEN         at 0 range 11 .. 11;
      DACSWTRG     at 0 range 12 .. 12;
      DACTRGSEL    at 0 range 13 .. 13;
      DACRFS       at 0 range 14 .. 14;
      DACEN        at 0 range 15 .. 15;
      DACBFEN      at 0 range 16 .. 16;
      DACBFMD      at 0 range 17 .. 18;
      DACBFWM      at 0 range 19 .. 20;
      TESTOUTEN    at 0 range 21 .. 21;
      BFOUTEN      at 0 range 22 .. 22;
      DMAEN        at 0 range 23 .. 23;
      DACBFUP      at 0 range 24 .. 27;
      DACBFRP      at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  12-Bit Digital-to-Analog Converter
   type DAC0_Peripheral is record
      --  DAC Data Register
      DAT      : aliased DAC0_DAT_Registers;
      --  DAC Status and Control Register
      STATCTRL : aliased DAC0_STATCTRL_Register;
   end record
     with Volatile;

   for DAC0_Peripheral use record
      DAT      at 16#0# range 0 .. 255;
      STATCTRL at 16#20# range 0 .. 31;
   end record;

   --  12-Bit Digital-to-Analog Converter
   DAC0_Periph : aliased DAC0_Peripheral
     with Import, Address => System'To_Address (16#4003F000#);

end NRF_SVD.DAC;
