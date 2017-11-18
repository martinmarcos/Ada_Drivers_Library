--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SCG_PARAM_CLKPRES_Field is HAL.UInt8;
   subtype SCG_PARAM_DIVPRES_Field is HAL.UInt5;

   --  Parameter Register
   type SCG_PARAM_Register is record
      --  Read-only. Clock Present
      CLKPRES       : SCG_PARAM_CLKPRES_Field;
      --  unspecified
      Reserved_8_26 : HAL.UInt19;
      --  Read-only. Divider Present
      DIVPRES       : SCG_PARAM_DIVPRES_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_PARAM_Register use record
      CLKPRES       at 0 range 0 .. 7;
      Reserved_8_26 at 0 range 8 .. 26;
      DIVPRES       at 0 range 27 .. 31;
   end record;

   --  Slow Clock Divide Ratio
   type CSR_DIVSLOW_Field is
     (
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8)
     with Size => 4;
   for CSR_DIVSLOW_Field use
     (Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7);

   --  Bus Clock Divide Ratio
   type CSR_DIVBUS_Field is
     (
      --  Divide-by-1
      Divbus_0,
      --  Divide-by-2
      Divbus_1,
      --  Divide-by-3
      Divbus_2,
      --  Divide-by-4
      Divbus_3,
      --  Divide-by-5
      Divbus_4,
      --  Divide-by-6
      Divbus_5,
      --  Divide-by-7
      Divbus_6,
      --  Divide-by-8
      Divbus_7,
      --  Divide-by-9
      Divbus_8,
      --  Divide-by-10
      Divbus_9,
      --  Divide-by-11
      Divbus_10,
      --  Divide-by-12
      Divbus_11,
      --  Divide-by-13
      Divbus_12,
      --  Divide-by-14
      Divbus_13,
      --  Divide-by-15
      Divbus_14,
      --  Divide-by-16
      Divbus_15)
     with Size => 4;
   for CSR_DIVBUS_Field use
     (Divbus_0 => 0,
      Divbus_1 => 1,
      Divbus_2 => 2,
      Divbus_3 => 3,
      Divbus_4 => 4,
      Divbus_5 => 5,
      Divbus_6 => 6,
      Divbus_7 => 7,
      Divbus_8 => 8,
      Divbus_9 => 9,
      Divbus_10 => 10,
      Divbus_11 => 11,
      Divbus_12 => 12,
      Divbus_13 => 13,
      Divbus_14 => 14,
      Divbus_15 => 15);

   --  Core Clock Divide Ratio
   type CSR_DIVCORE_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for CSR_DIVCORE_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  System Clock Source
   type CSR_SCS_Field is
     (
      --  System OSC (SOSC_CLK)
      Socs,
      --  Slow IRC (SIRC_CLK)
      Sirc,
      --  Fast IRC (FIRC_CLK)
      Firc,
      --  System PLL (SPLL_CLK)
      Pll)
     with Size => 4;
   for CSR_SCS_Field use
     (Socs => 1,
      Sirc => 2,
      Firc => 3,
      Pll => 6);

   --  Clock Status Register
   type SCG_CSR_Register is record
      --  Read-only. Slow Clock Divide Ratio
      DIVSLOW        : CSR_DIVSLOW_Field;
      --  Read-only. Bus Clock Divide Ratio
      DIVBUS         : CSR_DIVBUS_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Core Clock Divide Ratio
      DIVCORE        : CSR_DIVCORE_Field;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. System Clock Source
      SCS            : CSR_SCS_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_CSR_Register use record
      DIVSLOW        at 0 range 0 .. 3;
      DIVBUS         at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DIVCORE        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SCS            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Slow Clock Divide Ratio
   type RCCR_DIVSLOW_Field is
     (
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8)
     with Size => 4;
   for RCCR_DIVSLOW_Field use
     (Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7);

   --  Bus Clock Divide Ratio
   type RCCR_DIVBUS_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for RCCR_DIVBUS_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  Core Clock Divide Ratio
   type RCCR_DIVCORE_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for RCCR_DIVCORE_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  System Clock Source
   type RCCR_SCS_Field is
     (
      --  System OSC (SOSC_CLK)
      Socs,
      --  Slow IRC (SIRC_CLK)
      Sirc,
      --  Fast IRC (FIRC_CLK)
      Firc,
      --  System PLL (SPLL_CLK)
      Spll)
     with Size => 4;
   for RCCR_SCS_Field use
     (Socs => 1,
      Sirc => 2,
      Firc => 3,
      Spll => 6);

   --  Run Clock Control Register
   type SCG_RCCR_Register is record
      --  Slow Clock Divide Ratio
      DIVSLOW        : RCCR_DIVSLOW_Field := NRF_SVD.SCG.Div2;
      --  Bus Clock Divide Ratio
      DIVBUS         : RCCR_DIVBUS_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Core Clock Divide Ratio
      DIVCORE        : RCCR_DIVCORE_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  System Clock Source
      SCS            : RCCR_SCS_Field := NRF_SVD.SCG.Firc;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_RCCR_Register use record
      DIVSLOW        at 0 range 0 .. 3;
      DIVBUS         at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DIVCORE        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SCS            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Slow Clock Divide Ratio
   type VCCR_DIVSLOW_Field is
     (
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8)
     with Size => 4;
   for VCCR_DIVSLOW_Field use
     (Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7);

   --  Bus Clock Divide Ratio
   type VCCR_DIVBUS_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for VCCR_DIVBUS_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  Core Clock Divide Ratio
   type VCCR_DIVCORE_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for VCCR_DIVCORE_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  System Clock Source
   type VCCR_SCS_Field is
     (
      --  System OSC (SOSC_CLK)
      Socs,
      --  Slow IRC (SIRC_CLK)
      Sirc)
     with Size => 4;
   for VCCR_SCS_Field use
     (Socs => 1,
      Sirc => 2);

   --  VLPR Clock Control Register
   type SCG_VCCR_Register is record
      --  Slow Clock Divide Ratio
      DIVSLOW        : VCCR_DIVSLOW_Field := NRF_SVD.SCG.Div2;
      --  Bus Clock Divide Ratio
      DIVBUS         : VCCR_DIVBUS_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Core Clock Divide Ratio
      DIVCORE        : VCCR_DIVCORE_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  System Clock Source
      SCS            : VCCR_SCS_Field := NRF_SVD.SCG.Sirc;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_VCCR_Register use record
      DIVSLOW        at 0 range 0 .. 3;
      DIVBUS         at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DIVCORE        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SCS            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Slow Clock Divide Ratio
   type HCCR_DIVSLOW_Field is
     (
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8)
     with Size => 4;
   for HCCR_DIVSLOW_Field use
     (Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7);

   --  Bus Clock Divide Ratio
   type HCCR_DIVBUS_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for HCCR_DIVBUS_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  Core Clock Divide Ratio
   type HCCR_DIVCORE_Field is
     (
      --  Divide-by-1
      Div1,
      --  Divide-by-2
      Div2,
      --  Divide-by-3
      Div3,
      --  Divide-by-4
      Div4,
      --  Divide-by-5
      Div5,
      --  Divide-by-6
      Div6,
      --  Divide-by-7
      Div7,
      --  Divide-by-8
      Div8,
      --  Divide-by-9
      Div9,
      --  Divide-by-10
      Div10,
      --  Divide-by-11
      Div11,
      --  Divide-by-12
      Div12,
      --  Divide-by-13
      Div13,
      --  Divide-by-14
      Div14,
      --  Divide-by-15
      Div15,
      --  Divide-by-16
      Div16)
     with Size => 4;
   for HCCR_DIVCORE_Field use
     (Div1 => 0,
      Div2 => 1,
      Div3 => 2,
      Div4 => 3,
      Div5 => 4,
      Div6 => 5,
      Div7 => 6,
      Div8 => 7,
      Div9 => 8,
      Div10 => 9,
      Div11 => 10,
      Div12 => 11,
      Div13 => 12,
      Div14 => 13,
      Div15 => 14,
      Div16 => 15);

   --  System Clock Source
   type HCCR_SCS_Field is
     (
      --  System OSC (SOSC_CLK)
      Socs,
      --  Slow IRC (SIRC_CLK)
      Sirc,
      --  Fast IRC (FIRC_CLK)
      Firc,
      --  System PLL (SPLL_CLK)
      Pll)
     with Size => 4;
   for HCCR_SCS_Field use
     (Socs => 1,
      Sirc => 2,
      Firc => 3,
      Pll => 6);

   --  HSRUN Clock Control Register
   type SCG_HCCR_Register is record
      --  Slow Clock Divide Ratio
      DIVSLOW        : HCCR_DIVSLOW_Field := NRF_SVD.SCG.Div2;
      --  Bus Clock Divide Ratio
      DIVBUS         : HCCR_DIVBUS_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Core Clock Divide Ratio
      DIVCORE        : HCCR_DIVCORE_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  System Clock Source
      SCS            : HCCR_SCS_Field := NRF_SVD.SCG.Firc;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_HCCR_Register use record
      DIVSLOW        at 0 range 0 .. 3;
      DIVBUS         at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DIVCORE        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SCS            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  SCG Clkout Select
   type CLKOUTCNFG_CLKOUTSEL_Field is
     (
      --  SCG SLOW Clock
      Slow,
      --  System OSC (SOSC_CLK)
      Socs,
      --  Slow IRC (SIRC_CLK)
      Sirc,
      --  Fast IRC (FIRC_CLK)
      Firc,
      --  System PLL (SPLL_CLK)
      Pll)
     with Size => 4;
   for CLKOUTCNFG_CLKOUTSEL_Field use
     (Slow => 0,
      Socs => 1,
      Sirc => 2,
      Firc => 3,
      Pll => 6);

   --  SCG CLKOUT Configuration Register
   type SCG_CLKOUTCNFG_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  SCG Clkout Select
      CLKOUTSEL      : CLKOUTCNFG_CLKOUTSEL_Field := NRF_SVD.SCG.Firc;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_CLKOUTCNFG_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      CLKOUTSEL      at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  System OSC Enable
   type SOSCCSR_SOSCEN_Field is
     (
      --  System OSC is disabled
      Disabled,
      --  System OSC is enabled
      Enabled)
     with Size => 1;
   for SOSCCSR_SOSCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System OSC Stop Enable
   type SOSCCSR_SOSCSTEN_Field is
     (
      --  System OSC is disabled in Stop modes
      Disabled,
      --  System OSC is enabled in Stop modes if SOSCEN=1.
      Enabled)
     with Size => 1;
   for SOSCCSR_SOSCSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System OSC Low Power Enable
   type SOSCCSR_SOSCLPEN_Field is
     (
      --  System OSC is disabled in VLP modes
      Disabled,
      --  System OSC is enabled in VLP modes
      Enabled)
     with Size => 1;
   for SOSCCSR_SOSCLPEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System OSC 3V ERCLK Enable
   type SOSCCSR_SOSCERCLKEN_Field is
     (
      --  System OSC 3V ERCLK output clock is disabled.
      Disabled,
      --  System OSC 3V ERCLK output clock is enabled when SYSOSC is enabled.
      Enabled)
     with Size => 1;
   for SOSCCSR_SOSCERCLKEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System OSC Clock Monitor
   type SOSCCSR_SOSCCM_Field is
     (
      --  System OSC Clock Monitor is disabled
      Disabled,
      --  System OSC Clock Monitor is enabled
      Enabled)
     with Size => 1;
   for SOSCCSR_SOSCCM_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System OSC Clock Monitor Reset Enable
   type SOSCCSR_SOSCCMRE_Field is
     (
      --  Clock Monitor generates interrupt when error detected
      Irq,
      --  Clock Monitor generates reset when error detected
      Reset)
     with Size => 1;
   for SOSCCSR_SOSCCMRE_Field use
     (Irq => 0,
      Reset => 1);

   --  Lock Register
   type SOSCCSR_LK_Field is
     (
      --  This Control Status Register can be written.
      Writeable,
      --  This Control Status Register cannot be written.
      Protected_k)
     with Size => 1;
   for SOSCCSR_LK_Field use
     (Writeable => 0,
      Protected_k => 1);

   --  System OSC Valid
   type SOSCCSR_SOSCVLD_Field is
     (
      --  System OSC is not enabled or clock is not valid
      Invalid,
      --  System OSC is enabled and output clock is valid
      Valid)
     with Size => 1;
   for SOSCCSR_SOSCVLD_Field use
     (Invalid => 0,
      Valid => 1);

   --  System OSC Selected
   type SOSCCSR_SOSCSEL_Field is
     (
      --  System OSC is not the system clock source
      Not_System,
      --  System OSC is the system clock source
      System)
     with Size => 1;
   for SOSCCSR_SOSCSEL_Field use
     (Not_System => 0,
      System => 1);

   --  System OSC Clock Error
   type SOSCCSR_SOSCERR_Field is
     (
      --  System OSC Clock Monitor is disabled or has not detected an error
      Not_Error,
      --  System OSC Clock Monitor is enabled and detected an error
      Error)
     with Size => 1;
   for SOSCCSR_SOSCERR_Field use
     (Not_Error => 0,
      Error => 1);

   --  System OSC Control Status Register
   type SCG_SOSCCSR_Register is record
      --  System OSC Enable
      SOSCEN         : SOSCCSR_SOSCEN_Field := NRF_SVD.SCG.Disabled;
      --  System OSC Stop Enable
      SOSCSTEN       : SOSCCSR_SOSCSTEN_Field := NRF_SVD.SCG.Disabled;
      --  System OSC Low Power Enable
      SOSCLPEN       : SOSCCSR_SOSCLPEN_Field := NRF_SVD.SCG.Disabled;
      --  System OSC 3V ERCLK Enable
      SOSCERCLKEN    : SOSCCSR_SOSCERCLKEN_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  System OSC Clock Monitor
      SOSCCM         : SOSCCSR_SOSCCM_Field := NRF_SVD.SCG.Disabled;
      --  System OSC Clock Monitor Reset Enable
      SOSCCMRE       : SOSCCSR_SOSCCMRE_Field := NRF_SVD.SCG.Irq;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Lock Register
      LK             : SOSCCSR_LK_Field := NRF_SVD.SCG.Writeable;
      --  Read-only. System OSC Valid
      SOSCVLD        : SOSCCSR_SOSCVLD_Field := NRF_SVD.SCG.Invalid;
      --  Read-only. System OSC Selected
      SOSCSEL        : SOSCCSR_SOSCSEL_Field := NRF_SVD.SCG.Not_System;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. System OSC Clock Error
      SOSCERR        : SOSCCSR_SOSCERR_Field := NRF_SVD.SCG.Not_Error;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SOSCCSR_Register use record
      SOSCEN         at 0 range 0 .. 0;
      SOSCSTEN       at 0 range 1 .. 1;
      SOSCLPEN       at 0 range 2 .. 2;
      SOSCERCLKEN    at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOSCCM         at 0 range 16 .. 16;
      SOSCCMRE       at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      LK             at 0 range 23 .. 23;
      SOSCVLD        at 0 range 24 .. 24;
      SOSCSEL        at 0 range 25 .. 25;
      SOSCERR        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  System OSC Clock Divide 1
   type SOSCDIV_SOSCDIV1_Field is
     (
      --  Output disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for SOSCDIV_SOSCDIV1_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  System OSC Clock Divide 2
   type SOSCDIV_SOSCDIV2_Field is
     (
      --  Output disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for SOSCDIV_SOSCDIV2_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  System OSC Divide Register
   type SCG_SOSCDIV_Register is record
      --  System OSC Clock Divide 1
      SOSCDIV1       : SOSCDIV_SOSCDIV1_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  System OSC Clock Divide 2
      SOSCDIV2       : SOSCDIV_SOSCDIV2_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SOSCDIV_Register use record
      SOSCDIV1       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOSCDIV2       at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  External Reference Select
   type SOSCCFG_EREFS_Field is
     (
      --  External reference clock selected
      Erc,
      --  Internal crystal oscillator of OSC requested.
      Osc)
     with Size => 1;
   for SOSCCFG_EREFS_Field use
     (Erc => 0,
      Osc => 1);

   --  High Gain Oscillator Select
   type SOSCCFG_HGO_Field is
     (
      --  Configure crystal oscillator for low-power operation
      Low_Power,
      --  Configure crystal oscillator for high-gain operation
      High_Gain)
     with Size => 1;
   for SOSCCFG_HGO_Field use
     (Low_Power => 0,
      High_Gain => 1);

   --  System OSC Range Select
   type SOSCCFG_RANGE_Field is
     (
      --  Low frequency range selected for the crystal oscillator of 32 kHz to
      --  40 kHz.
      Low,
      --  Medium frequency range selected for the crytstal oscillator of 1 Mhz
      --  to 8 Mhz.
      Medium,
      --  High frequency range selected for the crystal oscillator of 8 Mhz to
      --  32 Mhz.
      High)
     with Size => 2;
   for SOSCCFG_RANGE_Field use
     (Low => 1,
      Medium => 2,
      High => 3);

   --  System Oscillator Configuration Register
   type SCG_SOSCCFG_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  External Reference Select
      EREFS         : SOSCCFG_EREFS_Field := NRF_SVD.SCG.Erc;
      --  High Gain Oscillator Select
      HGO           : SOSCCFG_HGO_Field := NRF_SVD.SCG.Low_Power;
      --  System OSC Range Select
      RANGE_k       : SOSCCFG_RANGE_Field := NRF_SVD.SCG.Low;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SOSCCFG_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      EREFS         at 0 range 2 .. 2;
      HGO           at 0 range 3 .. 3;
      RANGE_k       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Slow IRC Enable
   type SIRCCSR_SIRCEN_Field is
     (
      --  Slow IRC is disabled
      Disabled,
      --  Slow IRC is enabled
      Enabled)
     with Size => 1;
   for SIRCCSR_SIRCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Slow IRC Stop Enable
   type SIRCCSR_SIRCSTEN_Field is
     (
      --  Slow IRC is disabled in supported Stop modes
      Disabled,
      --  Slow IRC is enabled in supported Stop modes
      Enabled)
     with Size => 1;
   for SIRCCSR_SIRCSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Slow IRC Low Power Enable
   type SIRCCSR_SIRCLPEN_Field is
     (
      --  Slow IRC is disabled in VLP modes
      Disabled,
      --  Slow IRC is enabled in VLP modes
      Enabled)
     with Size => 1;
   for SIRCCSR_SIRCLPEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Lock Register
   type SIRCCSR_LK_Field is
     (
      --  Control Status Register can be written.
      Writeable,
      --  Control Status Register cannot be written.
      Protected_k)
     with Size => 1;
   for SIRCCSR_LK_Field use
     (Writeable => 0,
      Protected_k => 1);

   --  Slow IRC Valid
   type SIRCCSR_SIRCVLD_Field is
     (
      --  Slow IRC is not enabled or clock is not valid
      Invalid,
      --  Slow IRC is enabled and output clock is valid
      Valid)
     with Size => 1;
   for SIRCCSR_SIRCVLD_Field use
     (Invalid => 0,
      Valid => 1);

   --  Slow IRC Selected
   type SIRCCSR_SIRCSEL_Field is
     (
      --  Slow IRC is not the system clock source
      Not_System,
      --  Slow IRC is the system clock source
      System)
     with Size => 1;
   for SIRCCSR_SIRCSEL_Field use
     (Not_System => 0,
      System => 1);

   --  Slow IRC Control Status Register
   type SCG_SIRCCSR_Register is record
      --  Slow IRC Enable
      SIRCEN         : SIRCCSR_SIRCEN_Field := NRF_SVD.SCG.Enabled;
      --  Slow IRC Stop Enable
      SIRCSTEN       : SIRCCSR_SIRCSTEN_Field := NRF_SVD.SCG.Disabled;
      --  Slow IRC Low Power Enable
      SIRCLPEN       : SIRCCSR_SIRCLPEN_Field := NRF_SVD.SCG.Enabled;
      --  unspecified
      Reserved_3_22  : HAL.UInt20 := 16#0#;
      --  Lock Register
      LK             : SIRCCSR_LK_Field := NRF_SVD.SCG.Writeable;
      --  Read-only. Slow IRC Valid
      SIRCVLD        : SIRCCSR_SIRCVLD_Field := NRF_SVD.SCG.Valid;
      --  Read-only. Slow IRC Selected
      SIRCSEL        : SIRCCSR_SIRCSEL_Field := NRF_SVD.SCG.Not_System;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SIRCCSR_Register use record
      SIRCEN         at 0 range 0 .. 0;
      SIRCSTEN       at 0 range 1 .. 1;
      SIRCLPEN       at 0 range 2 .. 2;
      Reserved_3_22  at 0 range 3 .. 22;
      LK             at 0 range 23 .. 23;
      SIRCVLD        at 0 range 24 .. 24;
      SIRCSEL        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Slow IRC Clock Divide 1
   type SIRCDIV_SIRCDIV1_Field is
     (
      --  Output disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for SIRCDIV_SIRCDIV1_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  Slow IRC Clock Divide 2
   type SIRCDIV_SIRCDIV2_Field is
     (
      --  Output disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for SIRCDIV_SIRCDIV2_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  Slow IRC Divide Register
   type SCG_SIRCDIV_Register is record
      --  Slow IRC Clock Divide 1
      SIRCDIV1       : SIRCDIV_SIRCDIV1_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Slow IRC Clock Divide 2
      SIRCDIV2       : SIRCDIV_SIRCDIV2_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SIRCDIV_Register use record
      SIRCDIV1       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SIRCDIV2       at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Frequency Range
   type SIRCCFG_RANGE_Field is
     (
      --  Slow IRC low range clock (2 MHz)
      Low,
      --  Slow IRC high range clock (8 MHz )
      High)
     with Size => 1;
   for SIRCCFG_RANGE_Field use
     (Low => 0,
      High => 1);

   --  Slow IRC Configuration Register
   type SCG_SIRCCFG_Register is record
      --  Frequency Range
      RANGE_k       : SIRCCFG_RANGE_Field := NRF_SVD.SCG.High;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SIRCCFG_Register use record
      RANGE_k       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Fast IRC Enable
   type FIRCCSR_FIRCEN_Field is
     (
      --  Fast IRC is disabled
      Disabled,
      --  Fast IRC is enabled
      Enabled)
     with Size => 1;
   for FIRCCSR_FIRCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Fast IRC Stop Enable
   type FIRCCSR_FIRCSTEN_Field is
     (
      --  Fast IRC is disabled in Stop modes. When selected as the reference
      --  clock to the System PLL and if the System PLL is enabled in STOP
      --  mode, the Fast IRC will stay enabled even if FIRCSTEN=0.
      Disabled,
      --  Fast IRC is enabled in Stop modes
      Enabled)
     with Size => 1;
   for FIRCCSR_FIRCSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Fast IRC Low Power Enable
   type FIRCCSR_FIRCLPEN_Field is
     (
      --  Fast IRC is disabled in VLP modes
      Disabled,
      --  Fast IRC is enabled in VLP modes
      Enabled)
     with Size => 1;
   for FIRCCSR_FIRCLPEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Fast IRC Regulator Enable
   type FIRCCSR_FIRCREGOFF_Field is
     (
      --  Fast IRC Regulator is enabled.
      Disabled,
      --  Fast IRC Regulator is disabled.
      Enabled)
     with Size => 1;
   for FIRCCSR_FIRCREGOFF_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Fast IRC Trim Enable
   type FIRCCSR_FIRCTREN_Field is
     (
      --  Disable trimming Fast IRC to an external clock source
      Disable,
      --  Enable trimming Fast IRC to an external clock source
      Enable)
     with Size => 1;
   for FIRCCSR_FIRCTREN_Field use
     (Disable => 0,
      Enable => 1);

   --  Fast IRC Trim Update
   type FIRCCSR_FIRCTRUP_Field is
     (
      --  Disable Fast IRC trimming updates
      Disable,
      --  Enable Fast IRC trimming updates
      Enable)
     with Size => 1;
   for FIRCCSR_FIRCTRUP_Field use
     (Disable => 0,
      Enable => 1);

   --  Lock Register
   type FIRCCSR_LK_Field is
     (
      --  Control Status Register can be written.
      Writeable,
      --  Control Status Register cannot be written.
      Protected_k)
     with Size => 1;
   for FIRCCSR_LK_Field use
     (Writeable => 0,
      Protected_k => 1);

   --  Fast IRC Valid status
   type FIRCCSR_FIRCVLD_Field is
     (
      --  Fast IRC is not enabled or clock is not valid.
      Invalid,
      --  Fast IRC is enabled and output clock is valid. The clock is valid
      --  once there is an output clock from the FIRC analog.
      Valid)
     with Size => 1;
   for FIRCCSR_FIRCVLD_Field use
     (Invalid => 0,
      Valid => 1);

   --  Fast IRC Selected status
   type FIRCCSR_FIRCSEL_Field is
     (
      --  Fast IRC is not the system clock source
      Not_System,
      --  Fast IRC is the system clock source
      System)
     with Size => 1;
   for FIRCCSR_FIRCSEL_Field use
     (Not_System => 0,
      System => 1);

   --  Fast IRC Clock Error
   type FIRCCSR_FIRCERR_Field is
     (
      --  Error not detected with the Fast IRC trimming.
      Not_Error,
      --  Error detected with the Fast IRC trimming.
      Error)
     with Size => 1;
   for FIRCCSR_FIRCERR_Field use
     (Not_Error => 0,
      Error => 1);

   --  Fast IRC Control Status Register
   type SCG_FIRCCSR_Register is record
      --  Fast IRC Enable
      FIRCEN         : FIRCCSR_FIRCEN_Field := NRF_SVD.SCG.Enabled;
      --  Fast IRC Stop Enable
      FIRCSTEN       : FIRCCSR_FIRCSTEN_Field := NRF_SVD.SCG.Disabled;
      --  Fast IRC Low Power Enable
      FIRCLPEN       : FIRCCSR_FIRCLPEN_Field := NRF_SVD.SCG.Disabled;
      --  Fast IRC Regulator Enable
      FIRCREGOFF     : FIRCCSR_FIRCREGOFF_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Fast IRC Trim Enable
      FIRCTREN       : FIRCCSR_FIRCTREN_Field := NRF_SVD.SCG.Disable;
      --  Fast IRC Trim Update
      FIRCTRUP       : FIRCCSR_FIRCTRUP_Field := NRF_SVD.SCG.Disable;
      --  unspecified
      Reserved_10_22 : HAL.UInt13 := 16#0#;
      --  Lock Register
      LK             : FIRCCSR_LK_Field := NRF_SVD.SCG.Writeable;
      --  Read-only. Fast IRC Valid status
      FIRCVLD        : FIRCCSR_FIRCVLD_Field := NRF_SVD.SCG.Invalid;
      --  Read-only. Fast IRC Selected status
      FIRCSEL        : FIRCCSR_FIRCSEL_Field := NRF_SVD.SCG.Not_System;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Fast IRC Clock Error
      FIRCERR        : FIRCCSR_FIRCERR_Field := NRF_SVD.SCG.Not_Error;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_FIRCCSR_Register use record
      FIRCEN         at 0 range 0 .. 0;
      FIRCSTEN       at 0 range 1 .. 1;
      FIRCLPEN       at 0 range 2 .. 2;
      FIRCREGOFF     at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FIRCTREN       at 0 range 8 .. 8;
      FIRCTRUP       at 0 range 9 .. 9;
      Reserved_10_22 at 0 range 10 .. 22;
      LK             at 0 range 23 .. 23;
      FIRCVLD        at 0 range 24 .. 24;
      FIRCSEL        at 0 range 25 .. 25;
      FIRCERR        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Fast IRC Clock Divide 1
   type FIRCDIV_FIRCDIV1_Field is
     (
      --  Output disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for FIRCDIV_FIRCDIV1_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  Fast IRC Clock Divide 2
   type FIRCDIV_FIRCDIV2_Field is
     (
      --  Output disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for FIRCDIV_FIRCDIV2_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  Fast IRC Divide Register
   type SCG_FIRCDIV_Register is record
      --  Fast IRC Clock Divide 1
      FIRCDIV1       : FIRCDIV_FIRCDIV1_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Fast IRC Clock Divide 2
      FIRCDIV2       : FIRCDIV_FIRCDIV2_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_FIRCDIV_Register use record
      FIRCDIV1       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      FIRCDIV2       at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Frequency Range
   type FIRCCFG_RANGE_Field is
     (
      --  Fast IRC is trimmed to 48 MHz
      F48Mhz,
      --  Fast IRC is trimmed to 52 MHz
      F52Mhz,
      --  Fast IRC is trimmed to 56 MHz
      F56Mhz,
      --  Fast IRC is trimmed to 60 MHz
      F60Mhz)
     with Size => 2;
   for FIRCCFG_RANGE_Field use
     (F48Mhz => 0,
      F52Mhz => 1,
      F56Mhz => 2,
      F60Mhz => 3);

   --  Fast IRC Configuration Register
   type SCG_FIRCCFG_Register is record
      --  Frequency Range
      RANGE_k       : FIRCCFG_RANGE_Field := NRF_SVD.SCG.F48Mhz;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_FIRCCFG_Register use record
      RANGE_k       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Trim Source
   type FIRCTCFG_TRIMSRC_Field is
     (
      --  Reset value for the field
      Firctcfg_Trimsrc_Field_Reset,
      --  System OSC
      Socs)
     with Size => 2;
   for FIRCTCFG_TRIMSRC_Field use
     (Firctcfg_Trimsrc_Field_Reset => 0,
      Socs => 2);

   --  Fast IRC Trim Predivide
   type FIRCTCFG_TRIMDIV_Field is
     (
      --  Divide by 1
      Div1,
      --  Divide by 128
      Div128,
      --  Divide by 256
      Div256,
      --  Divide by 512
      Div512,
      --  Divide by 1024
      Div1024,
      --  Divide by 2048
      Div2048)
     with Size => 3;
   for FIRCTCFG_TRIMDIV_Field use
     (Div1 => 0,
      Div128 => 1,
      Div256 => 2,
      Div512 => 3,
      Div1024 => 4,
      Div2048 => 5);

   --  Fast IRC Trim Configuration Register
   type SCG_FIRCTCFG_Register is record
      --  Trim Source
      TRIMSRC        : FIRCTCFG_TRIMSRC_Field := Firctcfg_Trimsrc_Field_Reset;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Fast IRC Trim Predivide
      TRIMDIV        : FIRCTCFG_TRIMDIV_Field := NRF_SVD.SCG.Div1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_FIRCTCFG_Register use record
      TRIMSRC        at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TRIMDIV        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SCG_FIRCSTAT_TRIMFINE_Field is HAL.UInt7;
   subtype SCG_FIRCSTAT_TRIMCOAR_Field is HAL.UInt6;

   --  Fast IRC Status Register
   type SCG_FIRCSTAT_Register is record
      --  Trim Fine Status
      TRIMFINE       : SCG_FIRCSTAT_TRIMFINE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trim Coarse
      TRIMCOAR       : SCG_FIRCSTAT_TRIMCOAR_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_FIRCSTAT_Register use record
      TRIMFINE       at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRIMCOAR       at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  System PLL Enable
   type SPLLCSR_SPLLEN_Field is
     (
      --  System PLL is disabled
      Disabled,
      --  System PLL is enabled
      Enabled)
     with Size => 1;
   for SPLLCSR_SPLLEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System PLL Stop Enable
   type SPLLCSR_SPLLSTEN_Field is
     (
      --  System PLL is disabled in Stop modes
      Disabled,
      --  System PLL is enabled in Stop modes
      Enabled)
     with Size => 1;
   for SPLLCSR_SPLLSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System PLL Clock Monitor
   type SPLLCSR_SPLLCM_Field is
     (
      --  System PLL Clock Monitor is disabled
      Disabled,
      --  System PLL Clock Monitor is enabled
      Enabled)
     with Size => 1;
   for SPLLCSR_SPLLCM_Field use
     (Disabled => 0,
      Enabled => 1);

   --  System PLL Clock Monitor Reset Enable
   type SPLLCSR_SPLLCMRE_Field is
     (
      --  Clock Monitor generates interrupt when error detected
      Irq,
      --  Clock Monitor generates reset when error detected
      Reset)
     with Size => 1;
   for SPLLCSR_SPLLCMRE_Field use
     (Irq => 0,
      Reset => 1);

   --  Lock Register
   type SPLLCSR_LK_Field is
     (
      --  Control Status Register can be written.
      Writeable,
      --  Control Status Register cannot be written.
      Protected_k)
     with Size => 1;
   for SPLLCSR_LK_Field use
     (Writeable => 0,
      Protected_k => 1);

   --  System PLL Valid
   type SPLLCSR_SPLLVLD_Field is
     (
      --  System PLL is not enabled or clock is not valid
      Invalid,
      --  System PLL is enabled and output clock is valid
      Valid)
     with Size => 1;
   for SPLLCSR_SPLLVLD_Field use
     (Invalid => 0,
      Valid => 1);

   --  System PLL Selected
   type SPLLCSR_SPLLSEL_Field is
     (
      --  System PLL is not the system clock source
      Not_System,
      --  System PLL is the system clock source
      System)
     with Size => 1;
   for SPLLCSR_SPLLSEL_Field use
     (Not_System => 0,
      System => 1);

   --  System PLL Clock Error
   type SPLLCSR_SPLLERR_Field is
     (
      --  System PLL Clock Monitor is disabled or has not detected an error
      Not_Error,
      --  System PLL Clock Monitor is enabled and detected an error. System PLL
      --  Clock Error flag will not set when System OSC is selected as its
      --  source and SOSCERR has set.
      Error)
     with Size => 1;
   for SPLLCSR_SPLLERR_Field use
     (Not_Error => 0,
      Error => 1);

   --  System PLL Control Status Register
   type SCG_SPLLCSR_Register is record
      --  System PLL Enable
      SPLLEN         : SPLLCSR_SPLLEN_Field := NRF_SVD.SCG.Disabled;
      --  System PLL Stop Enable
      SPLLSTEN       : SPLLCSR_SPLLSTEN_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  System PLL Clock Monitor
      SPLLCM         : SPLLCSR_SPLLCM_Field := NRF_SVD.SCG.Disabled;
      --  System PLL Clock Monitor Reset Enable
      SPLLCMRE       : SPLLCSR_SPLLCMRE_Field := NRF_SVD.SCG.Irq;
      --  unspecified
      Reserved_18_22 : HAL.UInt5 := 16#0#;
      --  Lock Register
      LK             : SPLLCSR_LK_Field := NRF_SVD.SCG.Writeable;
      --  Read-only. System PLL Valid
      SPLLVLD        : SPLLCSR_SPLLVLD_Field := NRF_SVD.SCG.Invalid;
      --  Read-only. System PLL Selected
      SPLLSEL        : SPLLCSR_SPLLSEL_Field := NRF_SVD.SCG.Not_System;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. System PLL Clock Error
      SPLLERR        : SPLLCSR_SPLLERR_Field := NRF_SVD.SCG.Not_Error;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SPLLCSR_Register use record
      SPLLEN         at 0 range 0 .. 0;
      SPLLSTEN       at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      SPLLCM         at 0 range 16 .. 16;
      SPLLCMRE       at 0 range 17 .. 17;
      Reserved_18_22 at 0 range 18 .. 22;
      LK             at 0 range 23 .. 23;
      SPLLVLD        at 0 range 24 .. 24;
      SPLLSEL        at 0 range 25 .. 25;
      SPLLERR        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  System PLL Clock Divide 1
   type SPLLDIV_SPLLDIV1_Field is
     (
      --  Clock disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for SPLLDIV_SPLLDIV1_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  System PLL Clock Divide 2
   type SPLLDIV_SPLLDIV2_Field is
     (
      --  Clock disabled
      Disabled,
      --  Divide by 1
      Div1,
      --  Divide by 2
      Div2,
      --  Divide by 4
      Div4,
      --  Divide by 8
      Div8,
      --  Divide by 16
      Div16,
      --  Divide by 32
      Div32,
      --  Divide by 64
      Div64)
     with Size => 3;
   for SPLLDIV_SPLLDIV2_Field use
     (Disabled => 0,
      Div1 => 1,
      Div2 => 2,
      Div4 => 3,
      Div8 => 4,
      Div16 => 5,
      Div32 => 6,
      Div64 => 7);

   --  System PLL Divide Register
   type SCG_SPLLDIV_Register is record
      --  System PLL Clock Divide 1
      SPLLDIV1       : SPLLDIV_SPLLDIV1_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  System PLL Clock Divide 2
      SPLLDIV2       : SPLLDIV_SPLLDIV2_Field := NRF_SVD.SCG.Disabled;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SPLLDIV_Register use record
      SPLLDIV1       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SPLLDIV2       at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clock Source
   type SPLLCFG_SOURCE_Field is
     (
      --  System OSC (SOSC)
      Socs,
      --  Fast IRC (FIRC)
      Firc)
     with Size => 1;
   for SPLLCFG_SOURCE_Field use
     (Socs => 0,
      Firc => 1);

   subtype SCG_SPLLCFG_PREDIV_Field is HAL.UInt3;
   subtype SCG_SPLLCFG_MULT_Field is HAL.UInt5;

   --  System PLL Configuration Register
   type SCG_SPLLCFG_Register is record
      --  Clock Source
      SOURCE         : SPLLCFG_SOURCE_Field := NRF_SVD.SCG.Socs;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLL Reference Clock Divider
      PREDIV         : SCG_SPLLCFG_PREDIV_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  System PLL Multiplier
      MULT           : SCG_SPLLCFG_MULT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCG_SPLLCFG_Register use record
      SOURCE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PREDIV         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      MULT           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Clock Generator
   type SCG_Peripheral is record
      --  Version ID Register
      VERID      : aliased HAL.UInt32;
      --  Parameter Register
      PARAM      : aliased SCG_PARAM_Register;
      --  Clock Status Register
      CSR        : aliased SCG_CSR_Register;
      --  Run Clock Control Register
      RCCR       : aliased SCG_RCCR_Register;
      --  VLPR Clock Control Register
      VCCR       : aliased SCG_VCCR_Register;
      --  HSRUN Clock Control Register
      HCCR       : aliased SCG_HCCR_Register;
      --  SCG CLKOUT Configuration Register
      CLKOUTCNFG : aliased SCG_CLKOUTCNFG_Register;
      --  System OSC Control Status Register
      SOSCCSR    : aliased SCG_SOSCCSR_Register;
      --  System OSC Divide Register
      SOSCDIV    : aliased SCG_SOSCDIV_Register;
      --  System Oscillator Configuration Register
      SOSCCFG    : aliased SCG_SOSCCFG_Register;
      --  Slow IRC Control Status Register
      SIRCCSR    : aliased SCG_SIRCCSR_Register;
      --  Slow IRC Divide Register
      SIRCDIV    : aliased SCG_SIRCDIV_Register;
      --  Slow IRC Configuration Register
      SIRCCFG    : aliased SCG_SIRCCFG_Register;
      --  Fast IRC Control Status Register
      FIRCCSR    : aliased SCG_FIRCCSR_Register;
      --  Fast IRC Divide Register
      FIRCDIV    : aliased SCG_FIRCDIV_Register;
      --  Fast IRC Configuration Register
      FIRCCFG    : aliased SCG_FIRCCFG_Register;
      --  Fast IRC Trim Configuration Register
      FIRCTCFG   : aliased SCG_FIRCTCFG_Register;
      --  Fast IRC Status Register
      FIRCSTAT   : aliased SCG_FIRCSTAT_Register;
      --  System PLL Control Status Register
      SPLLCSR    : aliased SCG_SPLLCSR_Register;
      --  System PLL Divide Register
      SPLLDIV    : aliased SCG_SPLLDIV_Register;
      --  System PLL Configuration Register
      SPLLCFG    : aliased SCG_SPLLCFG_Register;
   end record
     with Volatile;

   for SCG_Peripheral use record
      VERID      at 16#0# range 0 .. 31;
      PARAM      at 16#4# range 0 .. 31;
      CSR        at 16#10# range 0 .. 31;
      RCCR       at 16#14# range 0 .. 31;
      VCCR       at 16#18# range 0 .. 31;
      HCCR       at 16#1C# range 0 .. 31;
      CLKOUTCNFG at 16#20# range 0 .. 31;
      SOSCCSR    at 16#100# range 0 .. 31;
      SOSCDIV    at 16#104# range 0 .. 31;
      SOSCCFG    at 16#108# range 0 .. 31;
      SIRCCSR    at 16#200# range 0 .. 31;
      SIRCDIV    at 16#204# range 0 .. 31;
      SIRCCFG    at 16#208# range 0 .. 31;
      FIRCCSR    at 16#300# range 0 .. 31;
      FIRCDIV    at 16#304# range 0 .. 31;
      FIRCCFG    at 16#308# range 0 .. 31;
      FIRCTCFG   at 16#30C# range 0 .. 31;
      FIRCSTAT   at 16#318# range 0 .. 31;
      SPLLCSR    at 16#600# range 0 .. 31;
      SPLLDIV    at 16#604# range 0 .. 31;
      SPLLCFG    at 16#608# range 0 .. 31;
   end record;

   --  System Clock Generator
   SCG_Periph : aliased SCG_Peripheral
     with Import, Address => System'To_Address (16#40064000#);

end NRF_SVD.SCG;
