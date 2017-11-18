--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LPTMR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Timer Enable
   type CSR_TEN_Field is
     (
      --  LPTMR is disabled and internal logic is reset.
      Ten_0,
      --  LPTMR is enabled.
      Ten_1)
     with Size => 1;
   for CSR_TEN_Field use
     (Ten_0 => 0,
      Ten_1 => 1);

   --  Timer Mode Select
   type CSR_TMS_Field is
     (
      --  Time Counter mode.
      Tms_0,
      --  Pulse Counter mode.
      Tms_1)
     with Size => 1;
   for CSR_TMS_Field use
     (Tms_0 => 0,
      Tms_1 => 1);

   --  Timer Free-Running Counter
   type CSR_TFC_Field is
     (
      --  CNR is reset whenever TCF is set.
      Tfc_0,
      --  CNR is reset on overflow.
      Tfc_1)
     with Size => 1;
   for CSR_TFC_Field use
     (Tfc_0 => 0,
      Tfc_1 => 1);

   --  Timer Pin Polarity
   type CSR_TPP_Field is
     (
      --  Pulse Counter input source is active-high, and the CNR will increment
      --  on the rising-edge.
      Tpp_0,
      --  Pulse Counter input source is active-low, and the CNR will increment
      --  on the falling-edge.
      Tpp_1)
     with Size => 1;
   for CSR_TPP_Field use
     (Tpp_0 => 0,
      Tpp_1 => 1);

   --  Timer Pin Select
   type CSR_TPS_Field is
     (
      --  Pulse counter input 0 is selected.
      Tps_0,
      --  Pulse counter input 1 is selected.
      Tps_1,
      --  Pulse counter input 2 is selected.
      Tps_2,
      --  Pulse counter input 3 is selected.
      Tps_3)
     with Size => 2;
   for CSR_TPS_Field use
     (Tps_0 => 0,
      Tps_1 => 1,
      Tps_2 => 2,
      Tps_3 => 3);

   --  Timer Interrupt Enable
   type CSR_TIE_Field is
     (
      --  Timer interrupt disabled.
      Tie_0,
      --  Timer interrupt enabled.
      Tie_1)
     with Size => 1;
   for CSR_TIE_Field use
     (Tie_0 => 0,
      Tie_1 => 1);

   --  Timer Compare Flag
   type CSR_TCF_Field is
     (
      --  The value of CNR is not equal to CMR and increments.
      Tcf_0,
      --  The value of CNR is equal to CMR and increments.
      Tcf_1)
     with Size => 1;
   for CSR_TCF_Field use
     (Tcf_0 => 0,
      Tcf_1 => 1);

   --  Timer DMA Request Enable
   type CSR_TDRE_Field is
     (
      --  Timer DMA Request disabled.
      Tdre_0,
      --  Timer DMA Request enabled.
      Tdre_1)
     with Size => 1;
   for CSR_TDRE_Field use
     (Tdre_0 => 0,
      Tdre_1 => 1);

   --  Low Power Timer Control Status Register
   type LPTMR0_CSR_Register is record
      --  Timer Enable
      TEN           : CSR_TEN_Field := NRF_SVD.LPTMR.Ten_0;
      --  Timer Mode Select
      TMS           : CSR_TMS_Field := NRF_SVD.LPTMR.Tms_0;
      --  Timer Free-Running Counter
      TFC           : CSR_TFC_Field := NRF_SVD.LPTMR.Tfc_0;
      --  Timer Pin Polarity
      TPP           : CSR_TPP_Field := NRF_SVD.LPTMR.Tpp_0;
      --  Timer Pin Select
      TPS           : CSR_TPS_Field := NRF_SVD.LPTMR.Tps_0;
      --  Timer Interrupt Enable
      TIE           : CSR_TIE_Field := NRF_SVD.LPTMR.Tie_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Timer Compare Flag
      TCF           : CSR_TCF_Field := NRF_SVD.LPTMR.Tcf_0;
      --  Timer DMA Request Enable
      TDRE          : CSR_TDRE_Field := NRF_SVD.LPTMR.Tdre_0;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTMR0_CSR_Register use record
      TEN           at 0 range 0 .. 0;
      TMS           at 0 range 1 .. 1;
      TFC           at 0 range 2 .. 2;
      TPP           at 0 range 3 .. 3;
      TPS           at 0 range 4 .. 5;
      TIE           at 0 range 6 .. 6;
      TCF           at 0 range 7 .. 7;
      TDRE          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Prescaler Clock Select
   type PSR_PCS_Field is
     (
      --  Prescaler/glitch filter clock 0 selected.
      Pcs_0,
      --  Prescaler/glitch filter clock 1 selected.
      Pcs_1,
      --  Prescaler/glitch filter clock 2 selected.
      Pcs_2,
      --  Prescaler/glitch filter clock 3 selected.
      Pcs_3)
     with Size => 2;
   for PSR_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3);

   --  Prescaler Bypass
   type PSR_PBYP_Field is
     (
      --  Prescaler/glitch filter is enabled.
      Pbyp_0,
      --  Prescaler/glitch filter is bypassed.
      Pbyp_1)
     with Size => 1;
   for PSR_PBYP_Field use
     (Pbyp_0 => 0,
      Pbyp_1 => 1);

   --  Prescale Value
   type PSR_PRESCALE_Field is
     (
      --  Prescaler divides the prescaler clock by 2; glitch filter does not
      --  support this configuration.
      Prescale_0,
      --  Prescaler divides the prescaler clock by 4; glitch filter recognizes
      --  change on input pin after 2 rising clock edges.
      Prescale_1,
      --  Prescaler divides the prescaler clock by 8; glitch filter recognizes
      --  change on input pin after 4 rising clock edges.
      Prescale_2,
      --  Prescaler divides the prescaler clock by 16; glitch filter recognizes
      --  change on input pin after 8 rising clock edges.
      Prescale_3,
      --  Prescaler divides the prescaler clock by 32; glitch filter recognizes
      --  change on input pin after 16 rising clock edges.
      Prescale_4,
      --  Prescaler divides the prescaler clock by 64; glitch filter recognizes
      --  change on input pin after 32 rising clock edges.
      Prescale_5,
      --  Prescaler divides the prescaler clock by 128; glitch filter
      --  recognizes change on input pin after 64 rising clock edges.
      Prescale_6,
      --  Prescaler divides the prescaler clock by 256; glitch filter
      --  recognizes change on input pin after 128 rising clock edges.
      Prescale_7,
      --  Prescaler divides the prescaler clock by 512; glitch filter
      --  recognizes change on input pin after 256 rising clock edges.
      Prescale_8,
      --  Prescaler divides the prescaler clock by 1024; glitch filter
      --  recognizes change on input pin after 512 rising clock edges.
      Prescale_9,
      --  Prescaler divides the prescaler clock by 2048; glitch filter
      --  recognizes change on input pin after 1024 rising clock edges.
      Prescale_10,
      --  Prescaler divides the prescaler clock by 4096; glitch filter
      --  recognizes change on input pin after 2048 rising clock edges.
      Prescale_11,
      --  Prescaler divides the prescaler clock by 8192; glitch filter
      --  recognizes change on input pin after 4096 rising clock edges.
      Prescale_12,
      --  Prescaler divides the prescaler clock by 16,384; glitch filter
      --  recognizes change on input pin after 8192 rising clock edges.
      Prescale_13,
      --  Prescaler divides the prescaler clock by 32,768; glitch filter
      --  recognizes change on input pin after 16,384 rising clock edges.
      Prescale_14,
      --  Prescaler divides the prescaler clock by 65,536; glitch filter
      --  recognizes change on input pin after 32,768 rising clock edges.
      Prescale_15)
     with Size => 4;
   for PSR_PRESCALE_Field use
     (Prescale_0 => 0,
      Prescale_1 => 1,
      Prescale_2 => 2,
      Prescale_3 => 3,
      Prescale_4 => 4,
      Prescale_5 => 5,
      Prescale_6 => 6,
      Prescale_7 => 7,
      Prescale_8 => 8,
      Prescale_9 => 9,
      Prescale_10 => 10,
      Prescale_11 => 11,
      Prescale_12 => 12,
      Prescale_13 => 13,
      Prescale_14 => 14,
      Prescale_15 => 15);

   --  Low Power Timer Prescale Register
   type LPTMR0_PSR_Register is record
      --  Prescaler Clock Select
      PCS           : PSR_PCS_Field := NRF_SVD.LPTMR.Pcs_0;
      --  Prescaler Bypass
      PBYP          : PSR_PBYP_Field := NRF_SVD.LPTMR.Pbyp_0;
      --  Prescale Value
      PRESCALE      : PSR_PRESCALE_Field := NRF_SVD.LPTMR.Prescale_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTMR0_PSR_Register use record
      PCS           at 0 range 0 .. 1;
      PBYP          at 0 range 2 .. 2;
      PRESCALE      at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype LPTMR0_CMR_COMPARE_Field is HAL.UInt16;

   --  Low Power Timer Compare Register
   type LPTMR0_CMR_Register is record
      --  Compare Value
      COMPARE        : LPTMR0_CMR_COMPARE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTMR0_CMR_Register use record
      COMPARE        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTMR0_CNR_COUNTER_Field is HAL.UInt16;

   --  Low Power Timer Counter Register
   type LPTMR0_CNR_Register is record
      --  Counter Value
      COUNTER        : LPTMR0_CNR_COUNTER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTMR0_CNR_Register use record
      COUNTER        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low Power Timer
   type LPTMR0_Peripheral is record
      --  Low Power Timer Control Status Register
      CSR : aliased LPTMR0_CSR_Register;
      --  Low Power Timer Prescale Register
      PSR : aliased LPTMR0_PSR_Register;
      --  Low Power Timer Compare Register
      CMR : aliased LPTMR0_CMR_Register;
      --  Low Power Timer Counter Register
      CNR : aliased LPTMR0_CNR_Register;
   end record
     with Volatile;

   for LPTMR0_Peripheral use record
      CSR at 16#0# range 0 .. 31;
      PSR at 16#4# range 0 .. 31;
      CMR at 16#8# range 0 .. 31;
      CNR at 16#C# range 0 .. 31;
   end record;

   --  Low Power Timer
   LPTMR0_Periph : aliased LPTMR0_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

end NRF_SVD.LPTMR;
