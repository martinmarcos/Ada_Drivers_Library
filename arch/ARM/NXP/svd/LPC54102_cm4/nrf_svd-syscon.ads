--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SYSCON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  System memory remap. Value 0x3 is reserved.
   type SYSMEMREMAP_MAP_Field is
     (
      --  Boot Loader Mode. Interrupt vectors are re-mapped to Boot ROM.
      Boot_Loader_Mode,
      --  User RAM Mode. Interrupt vectors are re-mapped to Static RAM.
      User_Ram_Mode,
      --  User Flash Mode. Interrupt vectors are not re-mapped and reside in
      --  Flash.
      User_Flash_Mode)
     with Size => 2;
   for SYSMEMREMAP_MAP_Field use
     (Boot_Loader_Mode => 0,
      User_Ram_Mode => 1,
      User_Flash_Mode => 2);

   --  System memory remap
   type SYSMEMREMAP_Register is record
      --  System memory remap. Value 0x3 is reserved.
      MAP           : SYSMEMREMAP_MAP_Field :=
                       NRF_SVD.SYSCON.Boot_Loader_Mode;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSMEMREMAP_Register use record
      MAP           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype AHBMATPRIO_PRI_ICODE_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_DCODE_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_SYS_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_DMA_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_FIFO_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_M0_Field is HAL.UInt2;

   --  AHB multilayer matrix priority control
   type AHBMATPRIO_Register is record
      --  I-Code bus priority. Should be lower than PRI_DCODE for proper
      --  operation.
      PRI_ICODE      : AHBMATPRIO_PRI_ICODE_Field := 16#0#;
      --  D-Code bus priority.
      PRI_DCODE      : AHBMATPRIO_PRI_DCODE_Field := 16#0#;
      --  System bus priority.
      PRI_SYS        : AHBMATPRIO_PRI_SYS_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  DMA controller priority.
      PRI_DMA        : AHBMATPRIO_PRI_DMA_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  System FIFO bus priority
      PRI_FIFO       : AHBMATPRIO_PRI_FIFO_Field := 16#0#;
      --  Cortex-M0+ bus priority.
      PRI_M0         : AHBMATPRIO_PRI_M0_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBMATPRIO_Register use record
      PRI_ICODE      at 0 range 0 .. 1;
      PRI_DCODE      at 0 range 2 .. 3;
      PRI_SYS        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PRI_DMA        at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      PRI_FIFO       at 0 range 14 .. 15;
      PRI_M0         at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SYSTCKCAL_CAL_Field is HAL.UInt24;

   --  System tick counter calibration
   type SYSTCKCAL_Register is record
      --  System tick timer calibration value.
      CAL            : SYSTCKCAL_CAL_Field := 16#0#;
      --  Initial value for the Systick timer.
      SKEW           : Boolean := False;
      --  Initial value for the Systick timer.
      NOREF          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTCKCAL_Register use record
      CAL            at 0 range 0 .. 23;
      SKEW           at 0 range 24 .. 24;
      NOREF          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype NMISRC_IRQM4_Field is HAL.UInt6;
   subtype NMISRC_IRQM0_Field is HAL.UInt6;

   --  NMISRC_NMIENM array
   type NMISRC_NMIENM_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for NMISRC_NMIENM
   type NMISRC_NMIENM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NMIENM as a value
            Val : HAL.UInt2;
         when True =>
            --  NMIENM as an array
            Arr : NMISRC_NMIENM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for NMISRC_NMIENM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  NMI Source Select
   type NMISRC_Register is record
      --  The IRQ number of the interrupt that acts as the Non-Maskable
      --  Interrupt (NMI) for the Cortex-M4, if enabled by NMIENM4.
      IRQM4          : NMISRC_IRQM4_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  The IRQ number of the interrupt that acts as the Non-Maskable
      --  Interrupt (NMI) for the Cortex-M0+, if enabled by NMIENM0.
      IRQM0          : NMISRC_IRQM0_Field := 16#0#;
      --  unspecified
      Reserved_14_29 : HAL.UInt16 := 16#0#;
      --  Write a 1 to this bit to enable the Non-Maskable Interrupt (NMI)
      --  source selected by IRQM0.
      NMIENM         : NMISRC_NMIENM_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMISRC_Register use record
      IRQM4          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      IRQM0          at 0 range 8 .. 13;
      Reserved_14_29 at 0 range 14 .. 29;
      NMIENM         at 0 range 30 .. 31;
   end record;

   --  Enables the asynchronous APB bridge and subsystem.
   type ASYNCAPBCTRL_ENABLE_Field is
     (
      --  Disabled. Asynchronous APB bridge is disabled.
      Disabled,
      --  Enabled. Asynchronous APB bridge is enabled.
      Enabled)
     with Size => 1;
   for ASYNCAPBCTRL_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Asynchronous APB Control
   type ASYNCAPBCTRL_Register is record
      --  Enables the asynchronous APB bridge and subsystem.
      ENABLE        : ASYNCAPBCTRL_ENABLE_Field := NRF_SVD.SYSCON.Enabled;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASYNCAPBCTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  POR reset status
   type SYSRSTSTAT_POR_Field is
     (
      --  No POR detected
      No_Por_Detected,
      --  POR detected. Writing a one clears this reset.
      Por_Detected)
     with Size => 1;
   for SYSRSTSTAT_POR_Field use
     (No_Por_Detected => 0,
      Por_Detected => 1);

   --  Status of the external RESET pin. External reset status.
   type SYSRSTSTAT_EXTRST_Field is
     (
      --  No reset event detected.
      No_Reset_Event_Detec,
      --  Reset detected. Writing a one clears this reset.
      Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_EXTRST_Field use
     (No_Reset_Event_Detec => 0,
      Reset_Detected => 1);

   --  Status of the Watchdog reset
   type SYSRSTSTAT_WDT_Field is
     (
      --  No WDT reset detected
      No_Wdt_Reset_Detecte,
      --  WDT reset detected. Writing a one clears this reset.
      Wdt_Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_WDT_Field use
     (No_Wdt_Reset_Detecte => 0,
      Wdt_Reset_Detected => 1);

   --  Status of the Brown-out detect reset
   type SYSRSTSTAT_BOD_Field is
     (
      --  No BOD reset detected
      No_Bod_Reset_Detecte,
      --  BOD reset detected. Writing a one clears this reset.
      Bod_Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_BOD_Field use
     (No_Bod_Reset_Detecte => 0,
      Bod_Reset_Detected => 1);

   --  Status of the software system reset
   type SYSRSTSTAT_SYSRST_Field is
     (
      --  No System reset detected
      No_System_Reset_Dete,
      --  System reset detected. Writing a one clears this reset.
      System_Reset_Detecte)
     with Size => 1;
   for SYSRSTSTAT_SYSRST_Field use
     (No_System_Reset_Dete => 0,
      System_Reset_Detecte => 1);

   --  System reset status register
   type SYSRSTSTAT_Register is record
      --  POR reset status
      POR           : SYSRSTSTAT_POR_Field := NRF_SVD.SYSCON.No_Por_Detected;
      --  Status of the external RESET pin. External reset status.
      EXTRST        : SYSRSTSTAT_EXTRST_Field :=
                       NRF_SVD.SYSCON.No_Reset_Event_Detec;
      --  Status of the Watchdog reset
      WDT           : SYSRSTSTAT_WDT_Field :=
                       NRF_SVD.SYSCON.No_Wdt_Reset_Detecte;
      --  Status of the Brown-out detect reset
      BOD           : SYSRSTSTAT_BOD_Field :=
                       NRF_SVD.SYSCON.No_Bod_Reset_Detecte;
      --  Status of the software system reset
      SYSRST        : SYSRSTSTAT_SYSRST_Field :=
                       NRF_SVD.SYSCON.No_System_Reset_Dete;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSRSTSTAT_Register use record
      POR           at 0 range 0 .. 0;
      EXTRST        at 0 range 1 .. 1;
      WDT           at 0 range 2 .. 2;
      BOD           at 0 range 3 .. 3;
      SYSRST        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Peripheral reset control n
   type PRESETCTRL0_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Flash controller reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FLASH_RST      : Boolean := False;
      --  Flash accelerator reset control. 0 = Clear reset to this function. 1
      --  = Assert reset to this function.
      FMC_RST        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Input mux reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      MUX_RST        : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  IOCON reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      IOCON_RST      : Boolean := False;
      --  GPIO0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      GPIO0_RST      : Boolean := False;
      --  GPIO1 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      GPIO1_RST      : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Pin interrupt (PINT) reset control. 0 = Clear reset to this function.
      --  1 = Assert reset to this function.
      PINT_RST       : Boolean := False;
      --  Grouped interrupt (GINT) reset control. 0 = Clear reset to this
      --  function. 1 = Assert reset to this function.
      GINT_RST       : Boolean := False;
      --  DMA reset control. 0 = Clear reset to this function. 1 = Assert reset
      --  to this function.
      DMA_RST        : Boolean := False;
      --  CRC generator reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      CRC_RST        : Boolean := False;
      --  Watchdog timer reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      WWDT_RST       : Boolean := False;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#0#;
      --  ADC0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      ADC0_RST       : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESETCTRL0_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      FLASH_RST      at 0 range 7 .. 7;
      FMC_RST        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      MUX_RST        at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      IOCON_RST      at 0 range 13 .. 13;
      GPIO0_RST      at 0 range 14 .. 14;
      GPIO1_RST      at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      PINT_RST       at 0 range 18 .. 18;
      GINT_RST       at 0 range 19 .. 19;
      DMA_RST        at 0 range 20 .. 20;
      CRC_RST        at 0 range 21 .. 21;
      WWDT_RST       at 0 range 22 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      ADC0_RST       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Peripheral reset control n
   type PRESETCTRL1_Register is record
      --  Multi-rate timer (MRT) reset control. 0 = Clear reset to this
      --  function. 1 = Assert reset to this function.
      MRT_RST        : Boolean := False;
      --  Repetitive interrupt timer (RIT) reset control. 0 = Clear reset to
      --  this function. 1 = Assert reset to this function.
      RIT_RST        : Boolean := False;
      --  State configurable timer 0 (SCT0) reset control. 0 = Clear reset to
      --  this function. 1 = Assert reset to this function.
      SCT0_RST       : Boolean := False;
      --  unspecified
      Reserved_3_8   : HAL.UInt6 := 16#0#;
      --  System FIFO reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FIFO_RST       : Boolean := False;
      --  Micro-tick Timer reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      UTICK_RST      : Boolean := False;
      --  unspecified
      Reserved_11_21 : HAL.UInt11 := 16#0#;
      --  CT32B 2 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      CT32B2_RST     : Boolean := False;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  CT32B 3 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      CT32B3_RST     : Boolean := False;
      --  CT32B 4 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      CT32B4_RST     : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESETCTRL1_Register use record
      MRT_RST        at 0 range 0 .. 0;
      RIT_RST        at 0 range 1 .. 1;
      SCT0_RST       at 0 range 2 .. 2;
      Reserved_3_8   at 0 range 3 .. 8;
      FIFO_RST       at 0 range 9 .. 9;
      UTICK_RST      at 0 range 10 .. 10;
      Reserved_11_21 at 0 range 11 .. 21;
      CT32B2_RST     at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      CT32B3_RST     at 0 range 26 .. 26;
      CT32B4_RST     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Set bits in PRESETCTRL n

   --  Set bits in PRESETCTRL n
   type PRESETCTRLSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in PRESETCTRL n

   --  Clear bits in PRESETCTRL n
   type PRESETCTRLCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clock source for main clock source selector A
   type MAINCLKSELA_SEL_Field is
     (
      --  IRC Oscillator
      Irc_Oscillator,
      --  CLKIN
      Clkin,
      --  Watchdog oscillator
      Watchdog_Oscillator)
     with Size => 2;
   for MAINCLKSELA_SEL_Field use
     (Irc_Oscillator => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2);

   --  Main clock source select A
   type MAINCLKSELA_Register is record
      --  Clock source for main clock source selector A
      SEL           : MAINCLKSELA_SEL_Field := NRF_SVD.SYSCON.Irc_Oscillator;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAINCLKSELA_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clock source for main clock source selector B. Selects the clock source
   --  for the main clock.
   type MAINCLKSELB_SEL_Field is
     (
      --  MAINCLKSELA. Use the clock source selected in MAINCLKSELA register.
      Mainclksela,
      --  System PLL input.
      System_Pll_Input,
      --  System PLL output.
      System_Pll_Output,
      --  RTC osc output. RTC oscillator 32 kHz output.
      Rtc_Osc_Output)
     with Size => 2;
   for MAINCLKSELB_SEL_Field use
     (Mainclksela => 0,
      System_Pll_Input => 1,
      System_Pll_Output => 2,
      Rtc_Osc_Output => 3);

   --  Main clock source select B
   type MAINCLKSELB_Register is record
      --  Clock source for main clock source selector B. Selects the clock
      --  source for the main clock.
      SEL           : MAINCLKSELB_SEL_Field := NRF_SVD.SYSCON.Mainclksela;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAINCLKSELB_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  ADC clock source.
   type ADCCLKSEL_SEL_Field is
     (
      --  Main clock
      Main_Clock,
      --  System PLL output
      System_Pll_Output,
      --  IRC Oscillator
      Irc_Oscillator)
     with Size => 2;
   for ADCCLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Irc_Oscillator => 2);

   --  ADC clock source select
   type ADCCLKSEL_Register is record
      --  ADC clock source.
      SEL           : ADCCLKSEL_SEL_Field := NRF_SVD.SYSCON.Main_Clock;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCLKSEL_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CLKOUT clock source
   type CLKOUTSELA_SEL_Field is
     (
      --  Main clock
      Main_Clock,
      --  CLKIN
      Clkin,
      --  Watchdog oscillator
      Watchdog_Oscillator,
      --  IRC oscillator
      Irc_Oscillator)
     with Size => 2;
   for CLKOUTSELA_SEL_Field use
     (Main_Clock => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Irc_Oscillator => 3);

   --  CLKOUT clock source select A
   type CLKOUTSELA_Register is record
      --  CLKOUT clock source
      SEL           : CLKOUTSELA_SEL_Field := NRF_SVD.SYSCON.Main_Clock;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTSELA_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CLKOUT clock source
   type CLKOUTSELB_SEL_Field is
     (
      --  CLKOUTSELA. Clock source selected in the CLKOUTSELA register.
      Clkoutsela,
      --  RTC 32 kHz clock
      Rtc_32_Khz_Clock)
     with Size => 2;
   for CLKOUTSELB_SEL_Field use
     (Clkoutsela => 0,
      Rtc_32_Khz_Clock => 3);

   --  CLKOUT clock source select B
   type CLKOUTSELB_Register is record
      --  CLKOUT clock source
      SEL           : CLKOUTSELB_SEL_Field := NRF_SVD.SYSCON.Clkoutsela;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTSELB_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  System PLL clock source
   type SYSPLLCLKSEL_SEL_Field is
     (
      --  IRC Oscillator
      Irc_Oscillator,
      --  CLKIN
      Clkin,
      --  Watchdog oscillator
      Watchdog_Oscillator,
      --  RTC 32 kHz clock
      Rtc_32_Khz_Clock)
     with Size => 2;
   for SYSPLLCLKSEL_SEL_Field use
     (Irc_Oscillator => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Rtc_32_Khz_Clock => 3);

   --  PLL clock source select
   type SYSPLLCLKSEL_Register is record
      --  System PLL clock source
      SEL           : SYSPLLCLKSEL_SEL_Field := NRF_SVD.SYSCON.Irc_Oscillator;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLCLKSEL_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  AHBCLKCTRL0_SRAM array
   type AHBCLKCTRL0_SRAM_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL0_SRAM
   type AHBCLKCTRL0_SRAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM as a value
            Val : HAL.UInt2;
         when True =>
            --  SRAM as an array
            Arr : AHBCLKCTRL0_SRAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL0_SRAM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHBCLKCTRL0_GPIO array
   type AHBCLKCTRL0_GPIO_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL0_GPIO
   type AHBCLKCTRL0_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt2;
         when True =>
            --  GPIO as an array
            Arr : AHBCLKCTRL0_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL0_GPIO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHB Clock control n
   type AHBCLKCTRL0_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#1#;
      --  Enables the clock for the Boot ROM. 0 = Disable; 1 = Enable.
      ROM            : Boolean := True;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Enables the clock for SRAM1. 0 = Disable; 1 = Enable.
      SRAM           : AHBCLKCTRL0_SRAM_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Enables the clock for the flash controller. 0 = Disable; 1 = Enable.
      FLASH          : Boolean := False;
      --  Enables the clock for the Flash accelerator. 0 = Disable; 1 = Enable.
      FMC            : Boolean := True;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Enables the clock for the input muxes. 0 = Disable; 1 = Enable.
      INPUTMUX       : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Enables the clock for the IOCON block. 0 = Disable; 1 = Enable.
      IOCON          : Boolean := False;
      --  Enables the clock for the GPIO0 port registers. 0 = Disable; 1 =
      --  Enable.
      GPIO           : AHBCLKCTRL0_GPIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Enables the clock for the pin interrupt block.0 = Disable; 1 =
      --  Enable.
      PINT           : Boolean := False;
      --  Enables the clock for the grouped pin interrupt block. 0 = Disable; 1
      --  = Enable.
      GINT           : Boolean := False;
      --  Enables the clock for the DMA controller. 0 = Disable; 1 = Enable.
      DMA            : Boolean := False;
      --  Enables the clock for the CRC engine. 0 = Disable; 1 = Enable.
      CRC            : Boolean := False;
      --  Enables the clock for the Watchdog Timer. 0 = Disable; 1 = Enable.
      WWDT           : Boolean := False;
      --  Enables the clock for the RTC. 0 = Disable; 1 = Enable.
      RTC            : Boolean := False;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Enables the clock for the Mailbox. 0 = Disable; 1 = Enable.
      MAILBOX        : Boolean := False;
      --  Enables the clock for the ADC0 register interface. 0 = Disable; 1 =
      --  Enable.
      ADC0           : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKCTRL0_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ROM            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SRAM           at 0 range 3 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      FLASH          at 0 range 7 .. 7;
      FMC            at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      INPUTMUX       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      IOCON          at 0 range 13 .. 13;
      GPIO           at 0 range 14 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      PINT           at 0 range 18 .. 18;
      GINT           at 0 range 19 .. 19;
      DMA            at 0 range 20 .. 20;
      CRC            at 0 range 21 .. 21;
      WWDT           at 0 range 22 .. 22;
      RTC            at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      MAILBOX        at 0 range 26 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AHBCLKCTRL1_CT32B array
   type AHBCLKCTRL1_CT32B_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL1_CT32B
   type AHBCLKCTRL1_CT32B_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CT32B as a value
            Val : HAL.UInt2;
         when True =>
            --  CT32B as an array
            Arr : AHBCLKCTRL1_CT32B_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL1_CT32B_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHB Clock control n
   type AHBCLKCTRL1_Register is record
      --  Enables the clock for the Multi-Rate Timer. 0 = Disable; 1 = Enable.
      MRT            : Boolean := False;
      --  Enables the clock for the repetitive interrupt timer. 0 = Disable; 1
      --  = Enable.
      RIT            : Boolean := False;
      --  Enables the clock for SCT0. 0 = Disable; 1 = Enable.
      SCT0           : Boolean := False;
      --  unspecified
      Reserved_3_8   : HAL.UInt6 := 16#0#;
      --  Enables the clock for system FIFOs. 0 = Disable; 1 = Enable.
      FIFO           : Boolean := False;
      --  Enables the clock for the Micro-tick Timer. 0 = Disable; 1 = Enable.
      UTICK          : Boolean := False;
      --  unspecified
      Reserved_11_21 : HAL.UInt11 := 16#0#;
      --  Enables the clock for CT32B 2. 0 = Disable; 1 = Enable.
      CT32B2         : Boolean := False;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Enables the clock for CT32B 3. 0 = Disable; 1 = Enable.
      CT32B          : AHBCLKCTRL1_CT32B_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKCTRL1_Register use record
      MRT            at 0 range 0 .. 0;
      RIT            at 0 range 1 .. 1;
      SCT0           at 0 range 2 .. 2;
      Reserved_3_8   at 0 range 3 .. 8;
      FIFO           at 0 range 9 .. 9;
      UTICK          at 0 range 10 .. 10;
      Reserved_11_21 at 0 range 11 .. 21;
      CT32B2         at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      CT32B          at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Set bits in AHBCLKCTRL n

   --  Set bits in AHBCLKCTRL n
   type AHBCLKCTRLSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in AHBCLKCTRL n

   --  Clear bits in AHBCLKCTRL n
   type AHBCLKCTRLCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   subtype SYSTICKCLKDIV_DIV_Field is HAL.UInt8;

   --  SYSTICK clock divider
   type SYSTICKCLKDIV_Register is record
      --  SYSTICK clock divider value. 0: Disable SYSTICK timer clock. 1:
      --  Divide by 1. to 255: Divide by 255.
      DIV           : SYSTICKCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTICKCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TRACECLKDIV_DIV_Field is HAL.UInt8;

   --  TRACE clock divider
   type TRACECLKDIV_Register is record
      --  TRACE clock divider value. 0: Disable TRACE clock. 1: Divide by 1. to
      --  255: Divide by 255.
      DIV           : TRACECLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRACECLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AHBCLKDIV_DIV_Field is HAL.UInt8;

   --  System clock divider
   type AHBCLKDIV_Register is record
      --  System AHB clock divider value. 0: System clock disabled. 1: Divide
      --  by 1. to 255: Divide by 255.
      DIV           : AHBCLKDIV_DIV_Field := 16#1#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADCCLKDIV_DIV_Field is HAL.UInt8;

   --  ADC clock divider
   type ADCCLKDIV_Register is record
      --  ADC clock divider value. 0: Disable ADC clock. 1: Divide by 1. to
      --  255: Divide by 255.
      DIV           : ADCCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CLKOUTDIV_DIV_Field is HAL.UInt8;

   --  CLKOUT clock divider
   type CLKOUTDIV_Register is record
      --  CLKOUT clock divider value. 0: Disable CLKOUT clock divider. 1:
      --  Divide by 1. to 255: Divide by 255.
      DIV           : CLKOUTDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FREQMECTRL_CAPVAL_Field is HAL.UInt14;

   --  Frequency measure register
   type FREQMECTRL_Register is record
      --  Stores the capture result which is used to calculate the frequency of
      --  the target clock. This field is read-only.
      CAPVAL         : FREQMECTRL_CAPVAL_Field := 16#0#;
      --  unspecified
      Reserved_14_30 : HAL.UInt17 := 16#0#;
      --  Set this bit to one to initiate a frequency measurement cycle.
      --  Hardware clears this bit when the measurement cycle has completed and
      --  there is valid capture data in the CAPVAL field (bits 13:0).
      PROG           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQMECTRL_Register use record
      CAPVAL         at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      PROG           at 0 range 31 .. 31;
   end record;

   subtype FLASHCFG_FETCHCFG_Field is HAL.UInt2;
   subtype FLASHCFG_DATACFG_Field is HAL.UInt2;

   --  Flash memory access time. FLASHTIM +1 is equal to the number of system
   --  clocks used for flash access.
   type FLASHCFG_FLASHTIM_Field is
     (
      --  1 clock cycle. 1 system clock flash access time (for system clock
      --  frequencies of up to MHz).
      Flashtim_1_Clock_Cycle,
      --  2 clock cycles. 2 system clocks flash access time (for system clock
      --  frequencies of up to MHz).
      Flashtim_2_Clock_Cycles,
      --  3 clock cycles. 3 system clocks flash access time (for system clock
      --  frequencies of up to MHz).
      Flashtim_3_Clock_Cycles,
      --  4 clock cycles. 4 system clocks flash access time.
      Flashtim_4_Clock_Cycles,
      --  5 clock cycles. 5 system clocks flash access time.
      Flashtim_5_Clock_Cycles,
      --  6 clock cycles. 6 system clocks flash access time.
      Flashtim_6_Clock_Cycles,
      --  7 clock cycles. 7 system clocks flash access time.
      Flashtim_7_Clock_Cycles,
      --  8 clock cycles. 8 system clocks flash access time.
      Flashtim_8_Clock_Cycles)
     with Size => 4;
   for FLASHCFG_FLASHTIM_Field use
     (Flashtim_1_Clock_Cycle => 0,
      Flashtim_2_Clock_Cycles => 1,
      Flashtim_3_Clock_Cycles => 2,
      Flashtim_4_Clock_Cycles => 3,
      Flashtim_5_Clock_Cycles => 4,
      Flashtim_6_Clock_Cycles => 5,
      Flashtim_7_Clock_Cycles => 6,
      Flashtim_8_Clock_Cycles => 7);

   --  Flash wait states configuration
   type FLASHCFG_Register is record
      --  Instruction fetch configuration. This field determines how flash
      --  accelerator buffers are used for instruction fetches.
      FETCHCFG       : FLASHCFG_FETCHCFG_Field := 16#0#;
      --  Data read configuration. This field determines how flash accelerator
      --  buffers are used for data accesses.
      DATACFG        : FLASHCFG_DATACFG_Field := 16#0#;
      --  Acceleration enable.
      ACCEL          : Boolean := False;
      --  Prefetch enable.
      PREFEN         : Boolean := False;
      --  Prefetch override.
      PREFOVR        : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Flash memory access time. FLASHTIM +1 is equal to the number of
      --  system clocks used for flash access.
      FLASHTIM       : FLASHCFG_FLASHTIM_Field :=
                        NRF_SVD.SYSCON.Flashtim_6_Clock_Cycles;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCFG_Register use record
      FETCHCFG       at 0 range 0 .. 1;
      DATACFG        at 0 range 2 .. 3;
      ACCEL          at 0 range 4 .. 4;
      PREFEN         at 0 range 5 .. 5;
      PREFOVR        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      FLASHTIM       at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Serial interface FIFO enables
   type FIFOCTRL_Register is record
      --  USART0 transmitter FIFO enable
      U0TXFIFOEN     : Boolean := False;
      --  USART1 transmitter FIFO enable
      U1TXFIFOEN     : Boolean := False;
      --  USART2 transmitter FIFO enable
      U2TXFIFOEN     : Boolean := False;
      --  USART3 transmitter FIFO enable
      U3TXFIFOEN     : Boolean := False;
      --  SPI0 transmitter FIFO enable
      SPI0TXFIFOEN   : Boolean := False;
      --  SPI1 transmitter FIFO enable
      SPI1TXFIFOEN   : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  USART0 receiver FIFO enable
      U0RXFIFOEN     : Boolean := False;
      --  USART1 receiver FIFO enable
      U1RXFIFOEN     : Boolean := False;
      --  USART2 receiver FIFO enable
      U2RXFIFOEN     : Boolean := False;
      --  USART3 receiver FIFO enable
      U3RXFIFOEN     : Boolean := False;
      --  SPI0 receiver FIFO enable
      SPI0RXFIFOEN   : Boolean := False;
      --  SPI1 receiver FIFO enable
      SPI1RXFIFOEN   : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCTRL_Register use record
      U0TXFIFOEN     at 0 range 0 .. 0;
      U1TXFIFOEN     at 0 range 1 .. 1;
      U2TXFIFOEN     at 0 range 2 .. 2;
      U3TXFIFOEN     at 0 range 3 .. 3;
      SPI0TXFIFOEN   at 0 range 4 .. 4;
      SPI1TXFIFOEN   at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      U0RXFIFOEN     at 0 range 8 .. 8;
      U1RXFIFOEN     at 0 range 9 .. 9;
      U2RXFIFOEN     at 0 range 10 .. 10;
      U3RXFIFOEN     at 0 range 11 .. 11;
      SPI0RXFIFOEN   at 0 range 12 .. 12;
      SPI1RXFIFOEN   at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype IRCCTRL_TRIM_Field is HAL.UInt8;

   --  IRC oscillator control
   type IRCCTRL_Register is record
      --  Trim value
      TRIM          : IRCCTRL_TRIM_Field := 16#80#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRCCTRL_Register use record
      TRIM          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RTC 32 kHz clock enable.
   type RTCOSCCTRL_EN_Field is
     (
      --  Disabled. RTC clock off.
      Disabled,
      --  Enabled. RTC clock on.
      Enabled)
     with Size => 1;
   for RTCOSCCTRL_EN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  RTC oscillator 32 kHz output control
   type RTCOSCCTRL_Register is record
      --  RTC 32 kHz clock enable.
      EN            : RTCOSCCTRL_EN_Field := NRF_SVD.SYSCON.Enabled;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCOSCCTRL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSPLLCTRL_SELR_Field is HAL.UInt4;
   subtype SYSPLLCTRL_SELI_Field is HAL.UInt6;
   subtype SYSPLLCTRL_SELP_Field is HAL.UInt5;

   --  PLL bypass control
   type SYSPLLCTRL_BYPASS_Field is
     (
      --  Disabled. PLL CCO is used to create the PLL output.
      Disabled,
      --  Enabled. PLL is bypassed, the PLL input clock is routed directly to
      --  the PLL output (default).
      Enabled)
     with Size => 1;
   for SYSPLLCTRL_BYPASS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Bypass feedback clock divide by 2.
   type SYSPLLCTRL_BYPASSCCODIV2_Field is
     (
      --  Divide by 2. The CCO feedback clock is divided by 2 in addition to
      --  the programmed M divide.
      Divide_By_2,
      --  Bypass. The CCO feedback clock is divided only by the programmed M
      --  divide.
      Bypass)
     with Size => 1;
   for SYSPLLCTRL_BYPASSCCODIV2_Field use
     (Divide_By_2 => 0,
      Bypass => 1);

   --  Enable spread spectrum/fractional mode
   type SYSPLLCTRL_UPLIMOFF_Field is
     (
      --  Normal mode.
      Normal_Mode,
      --  SSGC mode. Spread spectrum/fractional mode.
      Ssgc_Mode)
     with Size => 1;
   for SYSPLLCTRL_UPLIMOFF_Field use
     (Normal_Mode => 0,
      Ssgc_Mode => 1);

   --  PLL filter control. Set this bit to one when the SSGC is disabled or at
   --  low frequencies.
   type SYSPLLCTRL_BANDSEL_Field is
     (
      --  SSCG control. The PLL filter uses the parameters derived from the
      --  SSCG decoder.
      Sscg_Control,
      --  MDEC control. The PLL filter uses the programmable fields SELP, SELR,
      --  and SELI in this register to control the filter constants.
      Mdec_Control)
     with Size => 1;
   for SYSPLLCTRL_BANDSEL_Field use
     (Sscg_Control => 0,
      Mdec_Control => 1);

   --  PLL0 direct input enable
   type SYSPLLCTRL_DIRECTI_Field is
     (
      --  Disabled. The PLL input divider (N divider) output is used to drive
      --  the PLL CCO.
      Disabled,
      --  Enabled. The PLL input divider (N divider) is bypassed. the PLL input
      --  clock is used directly to drive the PLL CCO.
      Enabled)
     with Size => 1;
   for SYSPLLCTRL_DIRECTI_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PLL0 direct output enable
   type SYSPLLCTRL_DIRECTO_Field is
     (
      --  Disabled. The PLL output divider (P divider) is used to create the
      --  PLL output.
      Disabled,
      --  Enabled. The PLL output divider (P divider) is bypassed, the PLL CCO
      --  output is used as the PLL output.
      Enabled)
     with Size => 1;
   for SYSPLLCTRL_DIRECTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PLL control
   type SYSPLLCTRL_Register is record
      --  Bandwidth select R value
      SELR           : SYSPLLCTRL_SELR_Field := 16#0#;
      --  Bandwidth select I value
      SELI           : SYSPLLCTRL_SELI_Field := 16#0#;
      --  Bandwidth select P value
      SELP           : SYSPLLCTRL_SELP_Field := 16#0#;
      --  PLL bypass control
      BYPASS         : SYSPLLCTRL_BYPASS_Field := NRF_SVD.SYSCON.Enabled;
      --  Bypass feedback clock divide by 2.
      BYPASSCCODIV2  : SYSPLLCTRL_BYPASSCCODIV2_Field :=
                        NRF_SVD.SYSCON.Divide_By_2;
      --  Enable spread spectrum/fractional mode
      UPLIMOFF       : SYSPLLCTRL_UPLIMOFF_Field :=
                        NRF_SVD.SYSCON.Normal_Mode;
      --  PLL filter control. Set this bit to one when the SSGC is disabled or
      --  at low frequencies.
      BANDSEL        : SYSPLLCTRL_BANDSEL_Field :=
                        NRF_SVD.SYSCON.Sscg_Control;
      --  PLL0 direct input enable
      DIRECTI        : SYSPLLCTRL_DIRECTI_Field := NRF_SVD.SYSCON.Disabled;
      --  PLL0 direct output enable
      DIRECTO        : SYSPLLCTRL_DIRECTO_Field := NRF_SVD.SYSCON.Disabled;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLCTRL_Register use record
      SELR           at 0 range 0 .. 3;
      SELI           at 0 range 4 .. 9;
      SELP           at 0 range 10 .. 14;
      BYPASS         at 0 range 15 .. 15;
      BYPASSCCODIV2  at 0 range 16 .. 16;
      UPLIMOFF       at 0 range 17 .. 17;
      BANDSEL        at 0 range 18 .. 18;
      DIRECTI        at 0 range 19 .. 19;
      DIRECTO        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  PLL status
   type SYSPLLSTAT_Register is record
      --  PLL0 lock indicator
      LOCK          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLSTAT_Register use record
      LOCK          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSPLLNDEC_NDEC_Field is HAL.UInt10;

   --  PLL N decoder
   type SYSPLLNDEC_Register is record
      --  Decoded N-divider coefficient value
      NDEC           : SYSPLLNDEC_NDEC_Field := 16#0#;
      --  NDEC reload request. When a 1 is written to this bit, the NDEC value
      --  is loaded into the PLL. Must be cleared by software for any
      --  subsequent load, or the PLL can be powered down and back up via the
      --  PDEN_SYS_PLL bit in the PDRUNCFG register if the NDEC value is
      --  changed.
      NREQ           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLNDEC_Register use record
      NDEC           at 0 range 0 .. 9;
      NREQ           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSPLLPDEC_PDEC_Field is HAL.UInt7;

   --  PLL P decoder
   type SYSPLLPDEC_Register is record
      --  Decoded P-divider coefficient value
      PDEC          : SYSPLLPDEC_PDEC_Field := 16#0#;
      --  PDEC reload request. When a 1 is written to this bit, the PDEC value
      --  is loaded into the PLL. Must be cleared by software for any
      --  subsequent load, or the PLL can be powered down and back up via the
      --  PDEN_SYS_PLL bit in the PDRUNCFG register if the PDEC value is
      --  changed.
      PREQ          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLPDEC_Register use record
      PDEC          at 0 range 0 .. 6;
      PREQ          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SYSPLLSSCTRL0_MDEC_Field is HAL.UInt17;

   --  Select spread spectrum mode.
   type SYSPLLSSCTRL0_SEL_EXT_Field is
     (
      --  Spread spectrum mode. Spread spectrum mode enabled.
      Spread_Spectrum_Mode,
      --  MDEC enabled. Spread spectrum clock generator not used.
      Mdec_Enabled)
     with Size => 1;
   for SYSPLLSSCTRL0_SEL_EXT_Field use
     (Spread_Spectrum_Mode => 0,
      Mdec_Enabled => 1);

   --  PLL spread spectrum control 0
   type SYSPLLSSCTRL0_Register is record
      --  Decoded M-divider coefficient value
      MDEC           : SYSPLLSSCTRL0_MDEC_Field := 16#0#;
      --  MDEC reload request. When a 1 is written to this bit, the MDEC value
      --  is loaded into the PLL. Must be cleared by software for any
      --  subsequent load, or the PLL can be powered down and back up via the
      --  PDEN_SYS_PLL bit in the PDRUNCFG register if the MDEC value is
      --  changed.
      MREQ           : Boolean := False;
      --  Select spread spectrum mode.
      SEL_EXT        : SYSPLLSSCTRL0_SEL_EXT_Field :=
                        NRF_SVD.SYSCON.Spread_Spectrum_Mode;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLSSCTRL0_Register use record
      MDEC           at 0 range 0 .. 16;
      MREQ           at 0 range 17 .. 17;
      SEL_EXT        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SYSPLLSSCTRL1_MD_Field is HAL.UInt19;
   subtype SYSPLLSSCTRL1_MF_Field is HAL.UInt3;
   subtype SYSPLLSSCTRL1_MR_Field is HAL.UInt3;
   subtype SYSPLLSSCTRL1_MC_Field is HAL.UInt2;

   --  Power down.
   type SYSPLLSSCTRL1_PD_Field is
     (
      --  Enabled. Spread spectrum controller is enabled
      Enabled,
      --  Disabled. Spread spectrum controller is disabled
      Disabled)
     with Size => 1;
   for SYSPLLSSCTRL1_PD_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Select modulation frequency.
   type SYSPLLSSCTRL1_DITHER_Field is
     (
      --  Fixed. Fixed modulation frequency.
      Fixed,
      --  Dither. Randomly dither between two modulation frequencies.
      Dither)
     with Size => 1;
   for SYSPLLSSCTRL1_DITHER_Field use
     (Fixed => 0,
      Dither => 1);

   --  PLL spread spectrum control 1
   type SYSPLLSSCTRL1_Register is record
      --  M- divider value with fraction. MD[18:11] : integer portion of the
      --  feedback divider value. MD[10:0] : fractional portion of the feedback
      --  divider value.
      MD             : SYSPLLSSCTRL1_MD_Field := 16#0#;
      --  MD reload request. When a 1 is written to this bit, the MD value is
      --  loaded into the PLL. This bit is cleared when the load is complete.
      MDREQ          : Boolean := False;
      --  Programmable modulation frequency fm = Fref/Nss with Fref = Fin/N
      --  0b000 => Nss = 512 (fm = 3.9 - 7.8 kHz) 0b001 => Nss = 384 (fm = 5.2
      --  - 10.4 kHz) 0b010 => Nss = 256 (fm = 7.8 - 15.6 kHz) 0b011 => Nss =
      --  128 (fm = 15.6 - 31.3 kHz) 0b100 => Nss = 64 (fm = 32.3 - 64.5 kHz)
      --  0b101 => Nss = 32 (fm = 62.5- 125 kHz) 0b110 => Nss = 24 (fm = 83.3-
      --  166.6 kHz) 0b111 => Nss = 16 (fm = 125- 250 kHz)
      MF             : SYSPLLSSCTRL1_MF_Field := 16#0#;
      --  Programmable frequency modulation depth deltafmodpk-pk = Fref x
      --  k/Fcco = k/MDdec 0 = no spread 0b000 => k = 0 (no spread spectrum)
      --  0b001 => k = 1 0b010 => k = 1.5 0b011 => k = 2 0b100 => k = 3 0b101
      --  => k = 4 0b110 => k = 6 0b111 => k = 8
      MR             : SYSPLLSSCTRL1_MR_Field := 16#0#;
      --  Modulation waveform control 0 = no compensation Compensation for low
      --  pass filtering of the PLL to get a triangular modulation at the
      --  output of the PLL, giving a flat frequency spectrum. 0b00 => no
      --  compensation 0b10 => recommended setting 0b11 => max. compensation
      MC             : SYSPLLSSCTRL1_MC_Field := 16#0#;
      --  Power down.
      PD             : SYSPLLSSCTRL1_PD_Field := NRF_SVD.SYSCON.Disabled;
      --  Select modulation frequency.
      DITHER         : SYSPLLSSCTRL1_DITHER_Field := NRF_SVD.SYSCON.Fixed;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLSSCTRL1_Register use record
      MD             at 0 range 0 .. 18;
      MDREQ          at 0 range 19 .. 19;
      MF             at 0 range 20 .. 22;
      MR             at 0 range 23 .. 25;
      MC             at 0 range 26 .. 27;
      PD             at 0 range 28 .. 28;
      DITHER         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PDRUNCFG_PDEN_SRAM array
   type PDRUNCFG_PDEN_SRAM_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PDRUNCFG_PDEN_SRAM
   type PDRUNCFG_PDEN_SRAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDEN_SRAM as a value
            Val : HAL.UInt2;
         when True =>
            --  PDEN_SRAM as an array
            Arr : PDRUNCFG_PDEN_SRAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PDRUNCFG_PDEN_SRAM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Power configuration register
   type PDRUNCFG_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  IRC oscillator output. 0 = Powered; 1 = Powered down.
      PDEN_IRC_OSC   : Boolean := False;
      --  IRC oscillator. 0 = Powered; 1 = Powered down.
      PDEN_IRC       : Boolean := False;
      --  Flash memory. 0 = Powered; 1 = Powered down.
      PDEN_FLASH     : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Brown-out Detect reset. 0 = Powered; 1 = Powered down.
      PDEN_BOD_RST   : Boolean := False;
      --  Brown-out Detect interrupt. 0 = Powered; 1 = Powered down.
      PDEN_BOD_INTR  : Boolean := True;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  ADC0. 0 = Powered; 1 = Powered down.
      PDEN_ADC0      : Boolean := True;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  First 8 kB of SRAM0). 0 = Powered; 1 = Powered down.
      PDEN_SRAM0A    : Boolean := False;
      --  Remaining portion of SRAM0). 0 = Powered; 1 = Powered down.
      PDEN_SRAM0B    : Boolean := False;
      --  SRAM1. 0 = Powered; 1 = Powered down.
      PDEN_SRAM      : PDRUNCFG_PDEN_SRAM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ROM. 0 = Powered; 1 = Powered down.
      PDEN_ROM       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Vdda to the ADC, must be enabled for the ADC to work. Also see bit
      --  23. 0 = Powered; 1 = Powered down.
      PDEN_VDDA      : Boolean := True;
      --  Watchdog oscillator. 0 = Powered; 1 = Powered down.
      PDEN_WDT_OSC   : Boolean := True;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  PLL0. 0 = Powered; 1 = Powered down.
      PDEN_SYS_PLL   : Boolean := True;
      --  Vrefp to the ADC, must be enabled for the ADC to work. Also see bit
      --  19. 0 = Powered; 1 = Powered down.
      PDEN_VREFP     : Boolean := True;
      --  32 kHz RTC oscillator. 0 = Powered; 1 = Powered down.
      PDEN_32K_OSC   : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFG_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PDEN_IRC_OSC   at 0 range 3 .. 3;
      PDEN_IRC       at 0 range 4 .. 4;
      PDEN_FLASH     at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PDEN_BOD_RST   at 0 range 7 .. 7;
      PDEN_BOD_INTR  at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PDEN_ADC0      at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PDEN_SRAM0A    at 0 range 13 .. 13;
      PDEN_SRAM0B    at 0 range 14 .. 14;
      PDEN_SRAM      at 0 range 15 .. 16;
      PDEN_ROM       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      PDEN_VDDA      at 0 range 19 .. 19;
      PDEN_WDT_OSC   at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      PDEN_SYS_PLL   at 0 range 22 .. 22;
      PDEN_VREFP     at 0 range 23 .. 23;
      PDEN_32K_OSC   at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  STARTER0_PINT array
   type STARTER0_PINT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STARTER0_PINT
   type STARTER0_PINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PINT as a value
            Val : HAL.UInt4;
         when True =>
            --  PINT as an array
            Arr : STARTER0_PINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STARTER0_PINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STARTER0_CT32B array
   type STARTER0_CT32B_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for STARTER0_CT32B
   type STARTER0_CT32B_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CT32B as a value
            Val : HAL.UInt5;
         when True =>
            --  CT32B as an array
            Arr : STARTER0_CT32B_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for STARTER0_CT32B_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  STARTER0_USART array
   type STARTER0_USART_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STARTER0_USART
   type STARTER0_USART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART as a value
            Val : HAL.UInt4;
         when True =>
            --  USART as an array
            Arr : STARTER0_USART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STARTER0_USART_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STARTER0_I2C array
   type STARTER0_I2C_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for STARTER0_I2C
   type STARTER0_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : HAL.UInt3;
         when True =>
            --  I2C as an array
            Arr : STARTER0_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for STARTER0_I2C_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  STARTER0_SPI array
   type STARTER0_SPI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER0_SPI
   type STARTER0_SPI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SPI as a value
            Val : HAL.UInt2;
         when True =>
            --  SPI as an array
            Arr : STARTER0_SPI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER0_SPI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Start logic n wake-up enable register
   type STARTER0_Register is record
      --  WWDT interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      WWDT           : Boolean := False;
      --  BOD interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      BOD            : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  DMA wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled. Typically
      --  used in sleep mode only.
      DMA            : Boolean := False;
      --  Group interrupt 0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      GINT0          : Boolean := False;
      --  GPIO pin interrupt 0 wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled. Not for pattern match.
      PINT           : STARTER0_PINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Micro-tick Timer wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      UTICK          : Boolean := False;
      --  Multi-Rate Timer wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      --  Typically used in sleep mode only.
      MRT            : Boolean := False;
      --  CT32B 0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.Typically
      --  used in sleep mode only.
      CT32B          : STARTER0_CT32B_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SCT0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.Typically
      --  used in sleep mode only.
      SCT0           : Boolean := False;
      --  USART0 interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      --  Peripheral interrupt.
      USART          : STARTER0_USART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  I2C0 interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      --  Peripheral interrupt.
      I2C            : STARTER0_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SPI0 interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      --  Peripheral interrupt.
      SPI            : STARTER0_SPI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 sequence A interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.Typically used in sleep mode only.
      ADC0_SEQA      : Boolean := False;
      --  ADC0 sequence B interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.Typically used in sleep mode only.
      ADC0_SEQB      : Boolean := False;
      --  ADC0 threshold and error interrupt wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.Typically used in sleep mode only.
      ADC0_THCMP     : Boolean := False;
      --  RTC interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      RTC            : Boolean := False;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Mailbox interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.Typically used in sleep mode only.
      MAILBOX        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTER0_Register use record
      WWDT           at 0 range 0 .. 0;
      BOD            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DMA            at 0 range 3 .. 3;
      GINT0          at 0 range 4 .. 4;
      PINT           at 0 range 5 .. 8;
      UTICK          at 0 range 9 .. 9;
      MRT            at 0 range 10 .. 10;
      CT32B          at 0 range 11 .. 15;
      SCT0           at 0 range 16 .. 16;
      USART          at 0 range 17 .. 20;
      I2C            at 0 range 21 .. 23;
      SPI            at 0 range 24 .. 25;
      ADC0_SEQA      at 0 range 26 .. 26;
      ADC0_SEQB      at 0 range 27 .. 27;
      ADC0_THCMP     at 0 range 28 .. 28;
      RTC            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      MAILBOX        at 0 range 31 .. 31;
   end record;

   --  STARTER1_PINT array
   type STARTER1_PINT_Field_Array is array (4 .. 7) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STARTER1_PINT
   type STARTER1_PINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PINT as a value
            Val : HAL.UInt4;
         when True =>
            --  PINT as an array
            Arr : STARTER1_PINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STARTER1_PINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Start logic n wake-up enable register
   type STARTER1_Register is record
      --  Group interrupt 0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      GINT1         : Boolean := False;
      --  GPIO pin interrupt 4 wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled. Not for pattern match.
      PINT          : STARTER1_PINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Repetitive Interrupt Timer interrupt wake-up. 0 = Wake-up disabled. 1
      --  = Wake-up enabled. Typically used in sleep mode only.
      RIT           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTER1_Register use record
      GINT1         at 0 range 0 .. 0;
      PINT          at 0 range 1 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      RIT           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Set bits in STARTERP n

   --  Set bits in STARTERP n
   type STARTERSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in STARTER n

   --  Clear bits in STARTER n
   type STARTERCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Determines which CPU is considered the master. The master CPU cannot
   --  have its clock turned off via the related CMnCLKEN bit or be reset via
   --  the related CMxRSTEN in this register. The slave CPU wakes up briefly
   --  following device reset, then goes back to sleep until activated by the
   --  master CPU.
   type CPUCTRL_MASTERCPU_Field is
     (
      --  M0+. Cortex-M0+ is the master CPU.
      M0P,
      --  M4. Cortex-M4 is the master CPU.
      M4)
     with Size => 1;
   for CPUCTRL_MASTERCPU_Field use
     (M0P => 0,
      M4 => 1);

   --  Cortex-M4 clock enable.
   type CPUCTRL_CM4CLKEN_Field is
     (
      --  Disabled. The Cortex-M4 clock is not enabled.
      Disabled,
      --  Enabled. The Cortex-M4 clock is enabled.
      Enabled)
     with Size => 1;
   for CPUCTRL_CM4CLKEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cortex-M0+ clock enable.
   type CPUCTRL_CM0CLKEN_Field is
     (
      --  Disabled. The Cortex-M0+ clock is not enabled.
      Disabled,
      --  Enabled. The Cortex-M0+ clock is enabled.
      Enabled)
     with Size => 1;
   for CPUCTRL_CM0CLKEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cortex-M4 reset.
   type CPUCTRL_CM4RSTEN_Field is
     (
      --  Disabled. The Cortex-M4 is not being reset.
      Disabled,
      --  Enabled. The Cortex-M4 is being reset.
      Enabled)
     with Size => 1;
   for CPUCTRL_CM4RSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cortex-M0+ reset.
   type CPUCTRL_CM0RSTEN_Field is
     (
      --  Disabled. The Cortex-M0+ is not being reset.
      Disabled,
      --  Enabled. The Cortex-M0+ is being reset.
      Enabled)
     with Size => 1;
   for CPUCTRL_CM0RSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Identifies the owner of reduced power mode control: which CPU can cause
   --  the device to enter Sleep, Deep Sleep, Power-down, and Deep Power-down
   --  modes.
   type CPUCTRL_POWERCPU_Field is
     (
      --  M0+. Cortex-M0+ is the owner of reduced power mode control.
      M0P,
      --  M4. Cortex-M4 is the owner of reduced power mode control.
      M4)
     with Size => 1;
   for CPUCTRL_POWERCPU_Field use
     (M0P => 0,
      M4 => 1);

   --  CPU Control for multiple processors
   type CPUCTRL_Register is record
      --  Determines which CPU is considered the master. The master CPU cannot
      --  have its clock turned off via the related CMnCLKEN bit or be reset
      --  via the related CMxRSTEN in this register. The slave CPU wakes up
      --  briefly following device reset, then goes back to sleep until
      --  activated by the master CPU.
      MASTERCPU     : CPUCTRL_MASTERCPU_Field := NRF_SVD.SYSCON.M4;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Cortex-M4 clock enable.
      CM4CLKEN      : CPUCTRL_CM4CLKEN_Field := NRF_SVD.SYSCON.Enabled;
      --  Cortex-M0+ clock enable.
      CM0CLKEN      : CPUCTRL_CM0CLKEN_Field := NRF_SVD.SYSCON.Enabled;
      --  Cortex-M4 reset.
      CM4RSTEN      : CPUCTRL_CM4RSTEN_Field := NRF_SVD.SYSCON.Disabled;
      --  Cortex-M0+ reset.
      CM0RSTEN      : CPUCTRL_CM0RSTEN_Field := NRF_SVD.SYSCON.Disabled;
      --  Identifies the owner of reduced power mode control: which CPU can
      --  cause the device to enter Sleep, Deep Sleep, Power-down, and Deep
      --  Power-down modes.
      POWERCPU      : CPUCTRL_POWERCPU_Field := NRF_SVD.SYSCON.M4;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUCTRL_Register use record
      MASTERCPU     at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      CM4CLKEN      at 0 range 2 .. 2;
      CM0CLKEN      at 0 range 3 .. 3;
      CM4RSTEN      at 0 range 4 .. 4;
      CM0RSTEN      at 0 range 5 .. 5;
      POWERCPU      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Coprocessor Status
   type CPSTAT_Register is record
      --  When 1, the Cortex-M4 CPU is sleeping.
      CM4SLEEPING   : Boolean := False;
      --  When 1, the Cortex-M0+ CPU is sleeping.
      CM0SLEEPING   : Boolean := False;
      --  When 1, the Cortex-M4 CPU is in lockup.
      CM4LOCKUP     : Boolean := False;
      --  When 1, the Cortex-M0+ CPU is in lockup.
      CM0LOCKUP     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPSTAT_Register use record
      CM4SLEEPING   at 0 range 0 .. 0;
      CM0SLEEPING   at 0 range 1 .. 1;
      CM4LOCKUP     at 0 range 2 .. 2;
      CM0LOCKUP     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  BOD reset level
   type BODCTRL_BODRSTLEV_Field is
     (
      --  Level 0: 1.5 V
      Level_0_1,
      --  Level 1: 1.85 V
      Level_1_1,
      --  Level 2: 2.0 V
      Level_2_2,
      --  Level 3: 2.3 V
      Level_3_2)
     with Size => 2;
   for BODCTRL_BODRSTLEV_Field use
     (Level_0_1 => 0,
      Level_1_1 => 1,
      Level_2_2 => 2,
      Level_3_2 => 3);

   --  BOD reset enable
   type BODCTRL_BODRSTENA_Field is
     (
      --  Disable reset function.
      Disable_Reset_Functi,
      --  Enable reset function.
      Enable_Reset_Functio)
     with Size => 1;
   for BODCTRL_BODRSTENA_Field use
     (Disable_Reset_Functi => 0,
      Enable_Reset_Functio => 1);

   --  BOD interrupt level
   type BODCTRL_BODINTLEV_Field is
     (
      --  Level 0: 2.05 V
      Level_0_2,
      --  Level 1: 2.45 V
      Level_1_2,
      --  Level 2: 2.75 V
      Level_2_2,
      --  Level 3: 3.05 V
      Level_3_3)
     with Size => 2;
   for BODCTRL_BODINTLEV_Field use
     (Level_0_2 => 0,
      Level_1_2 => 1,
      Level_2_2 => 2,
      Level_3_3 => 3);

   --  BOD interrupt enable
   type BODCTRL_BODINTENA_Field is
     (
      --  Disable interrupt function.
      Disable_Reset_Functi,
      --  Enable reset function.
      Enable_Reset_Functio)
     with Size => 1;
   for BODCTRL_BODINTENA_Field use
     (Disable_Reset_Functi => 0,
      Enable_Reset_Functio => 1);

   --  Brown-Out Detect control
   type BODCTRL_Register is record
      --  BOD reset level
      BODRSTLEV     : BODCTRL_BODRSTLEV_Field := NRF_SVD.SYSCON.Level_0_1;
      --  BOD reset enable
      BODRSTENA     : BODCTRL_BODRSTENA_Field :=
                       NRF_SVD.SYSCON.Disable_Reset_Functi;
      --  BOD interrupt level
      BODINTLEV     : BODCTRL_BODINTLEV_Field := NRF_SVD.SYSCON.Level_0_2;
      --  BOD interrupt enable
      BODINTENA     : BODCTRL_BODINTENA_Field :=
                       NRF_SVD.SYSCON.Disable_Reset_Functi;
      --  BOD reset status
      BODRSTSTAT    : Boolean := False;
      --  BOD interrupt status
      BODINTSTAT    : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BODCTRL_Register use record
      BODRSTLEV     at 0 range 0 .. 1;
      BODRSTENA     at 0 range 2 .. 2;
      BODINTLEV     at 0 range 3 .. 4;
      BODINTENA     at 0 range 5 .. 5;
      BODRSTSTAT    at 0 range 6 .. 6;
      BODINTSTAT    at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration
   type SYSCON_Peripheral is record
      --  System memory remap
      SYSMEMREMAP   : aliased SYSMEMREMAP_Register;
      --  AHB multilayer matrix priority control
      AHBMATPRIO    : aliased AHBMATPRIO_Register;
      --  System tick counter calibration
      SYSTCKCAL     : aliased SYSTCKCAL_Register;
      --  NMI Source Select
      NMISRC        : aliased NMISRC_Register;
      --  Asynchronous APB Control
      ASYNCAPBCTRL  : aliased ASYNCAPBCTRL_Register;
      --  System reset status register
      SYSRSTSTAT    : aliased SYSRSTSTAT_Register;
      --  Peripheral reset control n
      PRESETCTRL0   : aliased PRESETCTRL0_Register;
      --  Peripheral reset control n
      PRESETCTRL1   : aliased PRESETCTRL1_Register;
      --  Set bits in PRESETCTRL n
      PRESETCTRLSET : aliased PRESETCTRLSET_Registers;
      --  Clear bits in PRESETCTRL n
      PRESETCTRLCLR : aliased PRESETCTRLCLR_Registers;
      --  POR captured PIO status 0
      PIOPORCAP0    : aliased HAL.UInt32;
      --  POR captured PIO status 1
      PIOPORCAP1    : aliased HAL.UInt32;
      --  Reset captured PIO status 0
      PIORESCAP0    : aliased HAL.UInt32;
      --  Reset captured PIO status 1
      PIORESCAP1    : aliased HAL.UInt32;
      --  Main clock source select A
      MAINCLKSELA   : aliased MAINCLKSELA_Register;
      --  Main clock source select B
      MAINCLKSELB   : aliased MAINCLKSELB_Register;
      --  ADC clock source select
      ADCCLKSEL     : aliased ADCCLKSEL_Register;
      --  CLKOUT clock source select A
      CLKOUTSELA    : aliased CLKOUTSELA_Register;
      --  CLKOUT clock source select B
      CLKOUTSELB    : aliased CLKOUTSELB_Register;
      --  PLL clock source select
      SYSPLLCLKSEL  : aliased SYSPLLCLKSEL_Register;
      --  AHB Clock control n
      AHBCLKCTRL0   : aliased AHBCLKCTRL0_Register;
      --  AHB Clock control n
      AHBCLKCTRL1   : aliased AHBCLKCTRL1_Register;
      --  Set bits in AHBCLKCTRL n
      AHBCLKCTRLSET : aliased AHBCLKCTRLSET_Registers;
      --  Clear bits in AHBCLKCTRL n
      AHBCLKCTRLCLR : aliased AHBCLKCTRLCLR_Registers;
      --  SYSTICK clock divider
      SYSTICKCLKDIV : aliased SYSTICKCLKDIV_Register;
      --  TRACE clock divider
      TRACECLKDIV   : aliased TRACECLKDIV_Register;
      --  System clock divider
      AHBCLKDIV     : aliased AHBCLKDIV_Register;
      --  ADC clock divider
      ADCCLKDIV     : aliased ADCCLKDIV_Register;
      --  CLKOUT clock divider
      CLKOUTDIV     : aliased CLKOUTDIV_Register;
      --  Frequency measure register
      FREQMECTRL    : aliased FREQMECTRL_Register;
      --  Flash wait states configuration
      FLASHCFG      : aliased FLASHCFG_Register;
      --  Serial interface FIFO enables
      FIFOCTRL      : aliased FIFOCTRL_Register;
      --  IRC oscillator control
      IRCCTRL       : aliased IRCCTRL_Register;
      --  RTC oscillator 32 kHz output control
      RTCOSCCTRL    : aliased RTCOSCCTRL_Register;
      --  PLL control
      SYSPLLCTRL    : aliased SYSPLLCTRL_Register;
      --  PLL status
      SYSPLLSTAT    : aliased SYSPLLSTAT_Register;
      --  PLL N decoder
      SYSPLLNDEC    : aliased SYSPLLNDEC_Register;
      --  PLL P decoder
      SYSPLLPDEC    : aliased SYSPLLPDEC_Register;
      --  PLL spread spectrum control 0
      SYSPLLSSCTRL0 : aliased SYSPLLSSCTRL0_Register;
      --  PLL spread spectrum control 1
      SYSPLLSSCTRL1 : aliased SYSPLLSSCTRL1_Register;
      --  Power configuration register
      PDRUNCFG      : aliased PDRUNCFG_Register;
      --  Set bits in PDRUNCFG
      PDRUNCFGSET   : aliased HAL.UInt32;
      --  Clear bits in PDRUNCFG
      PDRUNCFGCLR   : aliased HAL.UInt32;
      --  Start logic n wake-up enable register
      STARTER0      : aliased STARTER0_Register;
      --  Start logic n wake-up enable register
      STARTER1      : aliased STARTER1_Register;
      --  Set bits in STARTERP n
      STARTERSET    : aliased STARTERSET_Registers;
      --  Clear bits in STARTER n
      STARTERCLR    : aliased STARTERCLR_Registers;
      --  CPU Control for multiple processors
      CPUCTRL       : aliased CPUCTRL_Register;
      --  Coprocessor Boot Address
      CPBOOT        : aliased HAL.UInt32;
      --  Coprocessor Stack Address
      CPSTACK       : aliased HAL.UInt32;
      --  Coprocessor Status
      CPSTAT        : aliased CPSTAT_Register;
      --  JTAG ID code register
      JTAGIDCODE    : aliased HAL.UInt32;
      --  Part ID register
      DEVICE_ID0    : aliased HAL.UInt32;
      --  Part ID register
      DEVICE_ID1    : aliased HAL.UInt32;
      --  Brown-Out Detect control
      BODCTRL       : aliased BODCTRL_Register;
   end record
     with Volatile;

   for SYSCON_Peripheral use record
      SYSMEMREMAP   at 16#0# range 0 .. 31;
      AHBMATPRIO    at 16#4# range 0 .. 31;
      SYSTCKCAL     at 16#14# range 0 .. 31;
      NMISRC        at 16#1C# range 0 .. 31;
      ASYNCAPBCTRL  at 16#20# range 0 .. 31;
      SYSRSTSTAT    at 16#40# range 0 .. 31;
      PRESETCTRL0   at 16#44# range 0 .. 31;
      PRESETCTRL1   at 16#48# range 0 .. 31;
      PRESETCTRLSET at 16#4C# range 0 .. 63;
      PRESETCTRLCLR at 16#54# range 0 .. 63;
      PIOPORCAP0    at 16#5C# range 0 .. 31;
      PIOPORCAP1    at 16#60# range 0 .. 31;
      PIORESCAP0    at 16#68# range 0 .. 31;
      PIORESCAP1    at 16#6C# range 0 .. 31;
      MAINCLKSELA   at 16#80# range 0 .. 31;
      MAINCLKSELB   at 16#84# range 0 .. 31;
      ADCCLKSEL     at 16#8C# range 0 .. 31;
      CLKOUTSELA    at 16#94# range 0 .. 31;
      CLKOUTSELB    at 16#98# range 0 .. 31;
      SYSPLLCLKSEL  at 16#A0# range 0 .. 31;
      AHBCLKCTRL0   at 16#C0# range 0 .. 31;
      AHBCLKCTRL1   at 16#C4# range 0 .. 31;
      AHBCLKCTRLSET at 16#C8# range 0 .. 63;
      AHBCLKCTRLCLR at 16#D0# range 0 .. 63;
      SYSTICKCLKDIV at 16#E0# range 0 .. 31;
      TRACECLKDIV   at 16#E4# range 0 .. 31;
      AHBCLKDIV     at 16#100# range 0 .. 31;
      ADCCLKDIV     at 16#108# range 0 .. 31;
      CLKOUTDIV     at 16#10C# range 0 .. 31;
      FREQMECTRL    at 16#120# range 0 .. 31;
      FLASHCFG      at 16#124# range 0 .. 31;
      FIFOCTRL      at 16#148# range 0 .. 31;
      IRCCTRL       at 16#184# range 0 .. 31;
      RTCOSCCTRL    at 16#190# range 0 .. 31;
      SYSPLLCTRL    at 16#1B0# range 0 .. 31;
      SYSPLLSTAT    at 16#1B4# range 0 .. 31;
      SYSPLLNDEC    at 16#1B8# range 0 .. 31;
      SYSPLLPDEC    at 16#1BC# range 0 .. 31;
      SYSPLLSSCTRL0 at 16#1C0# range 0 .. 31;
      SYSPLLSSCTRL1 at 16#1C4# range 0 .. 31;
      PDRUNCFG      at 16#210# range 0 .. 31;
      PDRUNCFGSET   at 16#214# range 0 .. 31;
      PDRUNCFGCLR   at 16#218# range 0 .. 31;
      STARTER0      at 16#240# range 0 .. 31;
      STARTER1      at 16#244# range 0 .. 31;
      STARTERSET    at 16#248# range 0 .. 63;
      STARTERCLR    at 16#250# range 0 .. 63;
      CPUCTRL       at 16#300# range 0 .. 31;
      CPBOOT        at 16#304# range 0 .. 31;
      CPSTACK       at 16#308# range 0 .. 31;
      CPSTAT        at 16#30C# range 0 .. 31;
      JTAGIDCODE    at 16#3F4# range 0 .. 31;
      DEVICE_ID0    at 16#3F8# range 0 .. 31;
      DEVICE_ID1    at 16#3FC# range 0 .. 31;
      BODCTRL       at 16#2C044# range 0 .. 31;
   end record;

   --  System configuration
   SYSCON_Periph : aliased SYSCON_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.SYSCON;
