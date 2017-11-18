--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54114_cm4.xml

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

   subtype AHBMATPRIO_PRI_ICODE_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_DCODE_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_SYS_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_M0_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_USB_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_DMA_Field is HAL.UInt2;

   --  AHB multilayer matrix priority control
   type AHBMATPRIO_Register is record
      --  Cortex-M4 I-Code bus priority. Should typically be lower than
      --  PRI_DCODE for best operation.
      PRI_ICODE      : AHBMATPRIO_PRI_ICODE_Field := 16#0#;
      --  Cortex M4 D-Code bus priority.
      PRI_DCODE      : AHBMATPRIO_PRI_DCODE_Field := 16#0#;
      --  Cortex M4 System bus priority.
      PRI_SYS        : AHBMATPRIO_PRI_SYS_Field := 16#0#;
      --  Cortex-M0+ bus priority. Present on selected devices.
      PRI_M0         : AHBMATPRIO_PRI_M0_Field := 16#0#;
      --  USB interface priority.
      PRI_USB        : AHBMATPRIO_PRI_USB_Field := 16#0#;
      --  DMA controller priority.
      PRI_DMA        : AHBMATPRIO_PRI_DMA_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBMATPRIO_Register use record
      PRI_ICODE      at 0 range 0 .. 1;
      PRI_DCODE      at 0 range 2 .. 3;
      PRI_SYS        at 0 range 4 .. 5;
      PRI_M0         at 0 range 6 .. 7;
      PRI_USB        at 0 range 8 .. 9;
      PRI_DMA        at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
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
      --  Interrupt (NMI) for the Cortex-M0+, if enabled by NMIENM0. Present on
      --  selected devices.
      IRQM0          : NMISRC_IRQM0_Field := 16#0#;
      --  unspecified
      Reserved_14_29 : HAL.UInt16 := 16#0#;
      --  Write a 1 to this bit to enable the Non-Maskable Interrupt (NMI)
      --  source selected by IRQM0. Present on selected devices.
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

   --  POR captured value of port n

   --  POR captured value of port n
   type PIOPORCAP_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Reset captured value of port n

   --  Reset captured value of port n
   type PIORESCAP_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Peripheral reset control n
   type PRESETCTRL0_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Flash controller reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FLASH_RST      : Boolean := False;
      --  Flash accelerator reset control. Note that the FMC must not be reset
      --  while executing from flash, and must be reconfigured after reset. 0 =
      --  Clear reset to this function. 1 = Assert reset to this function.
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
      --  DMA0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      DMA0_RST       : Boolean := False;
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
      DMA0_RST       at 0 range 20 .. 20;
      CRC_RST        at 0 range 21 .. 21;
      WWDT_RST       at 0 range 22 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      ADC0_RST       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Peripheral reset control n
   type PRESETCTRL1_Register is record
      --  Multi-rate timer (MRT0) reset control. 0 = Clear reset to this
      --  function. 1 = Assert reset to this function.
      MRT0_RST       : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  State configurable timer 0 (SCT0) reset control. 0 = Clear reset to
      --  this function. 1 = Assert reset to this function.
      SCT0_RST       : Boolean := False;
      --  unspecified
      Reserved_3_9   : HAL.UInt7 := 16#0#;
      --  Micro-tick Timer reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      UTICK0_RST     : Boolean := False;
      --  Flexcomm 0 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC0_RST        : Boolean := False;
      --  Flexcomm 1 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC1_RST        : Boolean := False;
      --  Flexcomm 2 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC2_RST        : Boolean := False;
      --  Flexcomm 3 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC3_RST        : Boolean := False;
      --  Flexcomm 4 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC4_RST        : Boolean := False;
      --  Flexcomm 5 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC5_RST        : Boolean := False;
      --  Flexcomm 6 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC6_RST        : Boolean := False;
      --  Flexcomm 7 reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      FC7_RST        : Boolean := False;
      --  Digital microphone interface reset control. 0 = Clear reset to this
      --  function. 1 = Assert reset to this function.
      DMIC0_RST      : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  CTIMER2 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function
      CTIMER2_RST    : Boolean := False;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  USB0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      USB0_RST       : Boolean := False;
      --  CTIMER0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      CTIMER0_RST    : Boolean := False;
      --  CTIMER1 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      CTIMER1_RST    : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESETCTRL1_Register use record
      MRT0_RST       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SCT0_RST       at 0 range 2 .. 2;
      Reserved_3_9   at 0 range 3 .. 9;
      UTICK0_RST     at 0 range 10 .. 10;
      FC0_RST        at 0 range 11 .. 11;
      FC1_RST        at 0 range 12 .. 12;
      FC2_RST        at 0 range 13 .. 13;
      FC3_RST        at 0 range 14 .. 14;
      FC4_RST        at 0 range 15 .. 15;
      FC5_RST        at 0 range 16 .. 16;
      FC6_RST        at 0 range 17 .. 17;
      FC7_RST        at 0 range 18 .. 18;
      DMIC0_RST      at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CTIMER2_RST    at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      USB0_RST       at 0 range 25 .. 25;
      CTIMER0_RST    at 0 range 26 .. 26;
      CTIMER1_RST    at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Set bits in PRESETCTRLn

   --  Set bits in PRESETCTRLn
   type PRESETCTRLSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in PRESETCTRLn

   --  Clear bits in PRESETCTRLn
   type PRESETCTRLCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

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

   --  Status of the external RESET pin. External reset status
   type SYSRSTSTAT_EXTRST_Field is
     (
      --  No reset event detected.
      No_Reset_Detected,
      --  Reset detected. Writing a one clears this reset.
      Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_EXTRST_Field use
     (No_Reset_Detected => 0,
      Reset_Detected => 1);

   --  Status of the Watchdog reset
   type SYSRSTSTAT_WDT_Field is
     (
      --  No WDT reset detected
      No_Wdt_Reset_Detected,
      --  WDT reset detected. Writing a one clears this reset.
      Wdt_Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_WDT_Field use
     (No_Wdt_Reset_Detected => 0,
      Wdt_Reset_Detected => 1);

   --  Status of the Brown-out detect reset
   type SYSRSTSTAT_BOD_Field is
     (
      --  No BOD reset detected
      No_Bod_Reset_Detected,
      --  BOD reset detected. Writing a one clears this reset.
      Bod_Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_BOD_Field use
     (No_Bod_Reset_Detected => 0,
      Bod_Reset_Detected => 1);

   --  Status of the software system reset
   type SYSRSTSTAT_SYSRST_Field is
     (
      --  No System reset detected
      No_System_Reset_Detected,
      --  System reset detected. Writing a one clears this reset.
      System_Reset_Detected)
     with Size => 1;
   for SYSRSTSTAT_SYSRST_Field use
     (No_System_Reset_Detected => 0,
      System_Reset_Detected => 1);

   --  System reset status register
   type SYSRSTSTAT_Register is record
      --  POR reset status
      POR           : SYSRSTSTAT_POR_Field := NRF_SVD.SYSCON.No_Por_Detected;
      --  Status of the external RESET pin. External reset status
      EXTRST        : SYSRSTSTAT_EXTRST_Field :=
                       NRF_SVD.SYSCON.No_Reset_Detected;
      --  Status of the Watchdog reset
      WDT           : SYSRSTSTAT_WDT_Field :=
                       NRF_SVD.SYSCON.No_Wdt_Reset_Detected;
      --  Status of the Brown-out detect reset
      BOD           : SYSRSTSTAT_BOD_Field :=
                       NRF_SVD.SYSCON.No_Bod_Reset_Detected;
      --  Status of the software system reset
      SYSRST        : SYSRSTSTAT_SYSRST_Field :=
                       NRF_SVD.SYSCON.No_System_Reset_Detected;
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
      Reserved_0_0   : HAL.Bit := 16#0#;
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
      --  This clock is needed for flash programming, not for flash read.
      FLASH          : Boolean := True;
      --  Enables the clock for the Flash accelerator. 0 = Disable; 1 = Enable.
      --  This clock is needed if the flash is being read.
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
      --  Enables the clock for the DMA0 controller. 0 = Disable; 1 = Enable.
      DMA0           : Boolean := False;
      --  Enables the clock for the CRC engine. 0 = Disable; 1 = Enable.
      CRC            : Boolean := False;
      --  Enables the clock for the Watchdog Timer. 0 = Disable; 1 = Enable.
      WWDT           : Boolean := False;
      --  Enables the bus clock for the RTC. 0 = Disable; 1 = Enable.
      RTC            : Boolean := False;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Enables the clock for the Mailbox. 0 = Disable; 1 = Enable. Present
      --  on selected devices
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
      DMA0           at 0 range 20 .. 20;
      CRC            at 0 range 21 .. 21;
      WWDT           at 0 range 22 .. 22;
      RTC            at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      MAILBOX        at 0 range 26 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AHBCLKCTRL1_FLEXCOMM array
   type AHBCLKCTRL1_FLEXCOMM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for AHBCLKCTRL1_FLEXCOMM
   type AHBCLKCTRL1_FLEXCOMM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLEXCOMM as a value
            Val : HAL.UInt8;
         when True =>
            --  FLEXCOMM as an array
            Arr : AHBCLKCTRL1_FLEXCOMM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for AHBCLKCTRL1_FLEXCOMM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  AHBCLKCTRL1_CTIMER array
   type AHBCLKCTRL1_CTIMER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL1_CTIMER
   type AHBCLKCTRL1_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : AHBCLKCTRL1_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL1_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHB Clock control n
   type AHBCLKCTRL1_Register is record
      --  Enables the clock for the Multi-Rate Timer. 0 = Disable; 1 = Enable.
      MRT0           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Enables the clock for SCT0. 0 = Disable; 1 = Enable.
      SCT0           : Boolean := False;
      --  unspecified
      Reserved_3_9   : HAL.UInt7 := 16#0#;
      --  Enables the clock for the Micro-tick Timer. 0 = Disable; 1 = Enable.
      UTICK0         : Boolean := False;
      --  Enables the clock for Flexcomm 0. 0 = Disable; 1 = Enable.
      FLEXCOMM       : AHBCLKCTRL1_FLEXCOMM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enables the clock for the digital microphone interface. 0 = Disable;
      --  1 = Enable.
      DMIC0          : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Enables the clock for CTIMER 2. 0 = Disable; 1 = Enable.
      CTIMER2        : Boolean := False;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  Enables the clock for the USB0 interface. 0 = Disable; 1 = Enable.
      USB0           : Boolean := False;
      --  Enables the clock for timer CTIMER0. 0 = Disable; 1 = Enable.
      CTIMER         : AHBCLKCTRL1_CTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKCTRL1_Register use record
      MRT0           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SCT0           at 0 range 2 .. 2;
      Reserved_3_9   at 0 range 3 .. 9;
      UTICK0         at 0 range 10 .. 10;
      FLEXCOMM       at 0 range 11 .. 18;
      DMIC0          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CTIMER2        at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      USB0           at 0 range 25 .. 25;
      CTIMER         at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Set bits in AHBCLKCTRLn

   --  Set bits in AHBCLKCTRLn
   type AHBCLKCTRLSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in AHBCLKCTRLn

   --  Clear bits in AHBCLKCTRLn
   type AHBCLKCTRLCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clock source for main clock source selector A
   type MAINCLKSELA_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  CLKIN (clk_in)
      Clkin,
      --  Watchdog oscillator (wdt_clk)
      Watchdog_Oscillator,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf)
     with Size => 2;
   for MAINCLKSELA_SEL_Field use
     (Fro_12_Mhz => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Fro_Hf => 3);

   --  Main clock source select A
   type MAINCLKSELA_Register is record
      --  Clock source for main clock source selector A
      SEL           : MAINCLKSELA_SEL_Field := NRF_SVD.SYSCON.Fro_12_Mhz;
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
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  RTC oscillator 32 kHz output (32k_clk)
      Rtc_Osc_Output)
     with Size => 2;
   for MAINCLKSELB_SEL_Field use
     (Mainclksela => 0,
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

   --  CLKOUT clock source selection
   type CLKOUTSELA_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  CLKIN (clk_in)
      Clkin,
      --  Watchdog oscillator (wdt_clk)
      Watchdog_Oscillator,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  PLL output (pll_clk)
      System_Pll_Output,
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  RTC oscillator 32 kHz output (32k_clk)
      Rtc_Osc_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for CLKOUTSELA_SEL_Field use
     (Main_Clock => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Fro_Hf => 3,
      System_Pll_Output => 4,
      Fro_12_Mhz => 5,
      Rtc_Osc_Output => 6,
      None => 7);

   --  CLKOUT clock source select A
   type CLKOUTSELA_Register is record
      --  CLKOUT clock source selection
      SEL           : CLKOUTSELA_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTSELA_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  System PLL clock source selection
   type SYSPLLCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  CLKIN (clk_in)
      Clkin,
      --  Watchdog oscillator (wdt_clk)
      Watchdog_Oscillator,
      --  RTC 32 kHz clock (32k_clk)
      Rtc_32_Khz_Clock,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for SYSPLLCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Rtc_32_Khz_Clock => 3,
      None => 7);

   --  PLL clock source select
   type SYSPLLCLKSEL_Register is record
      --  System PLL clock source selection
      SEL           : SYSPLLCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  System PLL clock source selection
   type SPIFICLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for SPIFICLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Fro_Hf => 3,
      None => 7);

   --  SPIFI clock source select
   type SPIFICLKSEL_Register is record
      --  System PLL clock source selection
      SEL           : SPIFICLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPIFICLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ADC clock source selection
   type ADCCLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for ADCCLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Fro_Hf => 2,
      None => 7);

   --  ADC clock source select
   type ADCCLKSEL_Register is record
      --  ADC clock source selection
      SEL           : ADCCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  USB device clock source selection
   type USBCLKSEL_SEL_Field is
     (
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  Main clock (main_clk)
      Main_Clock,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for USBCLKSEL_SEL_Field use
     (Fro_Hf => 0,
      System_Pll_Output => 1,
      Main_Clock => 2,
      None => 7);

   --  USB clock source select
   type USBCLKSEL_Register is record
      --  USB device clock source selection
      SEL           : USBCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flexcomm clock source selection. One per Flexcomm.
   type FXCOMCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  MCLK pin input, when selected in IOCON (mclk_in)
      Mclk_Input,
      --  FRG clock, the output of the fractional rate generator (frg_clk)
      Frg_Clock_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for FXCOMCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Fro_Hf => 1,
      System_Pll_Output => 2,
      Mclk_Input => 3,
      Frg_Clock_Output => 4,
      None => 7);

   --  Flexcomm 0 clock source select
   type FXCOMCLKSEL_Register is record
      --  Flexcomm clock source selection. One per Flexcomm.
      SEL           : FXCOMCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FXCOMCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flexcomm 0 clock source select
   type FXCOMCLKSEL_Registers is array (0 .. 7) of FXCOMCLKSEL_Register
     with Volatile;

   --  MCLK source select. This may be used by Flexcomms that support I2S,
   --  and/or by the digital microphone subsystem.
   type MCLKCLKSEL_SEL_Field is
     (
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  Main clock (main_clk)
      Main_Clock,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for MCLKCLKSEL_SEL_Field use
     (Fro_Hf => 0,
      System_Pll_Output => 1,
      Main_Clock => 2,
      None => 7);

   --  MCLK clock source select
   type MCLKCLKSEL_Register is record
      --  MCLK source select. This may be used by Flexcomms that support I2S,
      --  and/or by the digital microphone subsystem.
      SEL           : MCLKCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLKCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Fractional Rate Generator clock source select.
   type FRGCLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for FRGCLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Fro_12_Mhz => 2,
      Fro_Hf => 3,
      None => 7);

   --  Fractional Rate Generator clock source select
   type FRGCLKSEL_Register is record
      --  Fractional Rate Generator clock source select.
      SEL           : FRGCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRGCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  D-Mic subsystem clock source select.
   type DMICCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  MCLK pin input, when selected in IOCON (mclk_in)
      Mclk_Input,
      --  Main clock (main_clk)
      Main_Clock,
      --  Watchdog oscillator (wdt_clk)
      Watchdog_Oscillator,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for DMICCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Fro_Hf => 1,
      System_Pll_Output => 2,
      Mclk_Input => 3,
      Main_Clock => 4,
      Watchdog_Oscillator => 5,
      None => 7);

   --  Digital microphone (D-Mic) subsystem clock select
   type DMICCLKSEL_Register is record
      --  D-Mic subsystem clock source select.
      SEL           : DMICCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMICCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SYSTICKCLKDIV_DIV_Field is HAL.UInt8;

   --  SYSTICK clock divider
   type SYSTICKCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : SYSTICKCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTICKCLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRACECLKDIV_DIV_Field is HAL.UInt8;

   --  Trace clock divider
   type TRACECLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : TRACECLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRACECLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype AHBCLKDIV_DIV_Field is HAL.UInt8;

   --  AHB clock divider
   type AHBCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : AHBCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CLKOUTDIV_DIV_Field is HAL.UInt8;

   --  CLKOUT clock divider
   type CLKOUTDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : CLKOUTDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SPIFICLKDIV_DIV_Field is HAL.UInt8;

   --  SPIFI clock divider
   type SPIFICLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : SPIFICLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPIFICLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ADCCLKDIV_DIV_Field is HAL.UInt8;

   --  ADC clock divider
   type ADCCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : ADCCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype USBCLKDIV_DIV_Field is HAL.UInt8;

   --  USB clock divider
   type USBCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : USBCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FRGCTRL_DIV_Field is HAL.UInt8;
   subtype FRGCTRL_MULT_Field is HAL.UInt8;

   --  Fractional rate divider
   type FRGCTRL_Register is record
      --  Denominator of the fractional divider. DIV is equal to the programmed
      --  value +1. Always set to 0xFF to use with the fractional baud rate
      --  generator.
      DIV            : FRGCTRL_DIV_Field := 16#FF#;
      --  Numerator of the fractional divider. MULT is equal to the programmed
      --  value.
      MULT           : FRGCTRL_MULT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRGCTRL_Register use record
      DIV            at 0 range 0 .. 7;
      MULT           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMICCLKDIV_DIV_Field is HAL.UInt8;

   --  DMIC clock divider
   type DMICCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : DMICCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMICCLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MCLKDIV_DIV_Field is HAL.UInt8;

   --  I2S MCLK clock divider
   type MCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV            : MCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET          : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT           : Boolean := True;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLKDIV_Register use record
      DIV            at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      RESET          at 0 range 29 .. 29;
      HALT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Instruction fetch configuration. This field determines how flash
   --  accelerator buffers are used for instruction fetches.
   type FLASHCFG_FETCHCFG_Field is
     (
      --  Instruction fetches from flash are not buffered. Every fetch request
      --  from the CPU results in a read of the flash memory. This setting may
      --  use significantly more power than when buffering is enabled.
      No_Buffer,
      --  One buffer is used for all instruction fetches.
      One_Buffer,
      --  All buffers may be used for instruction fetches.
      All_Buffers)
     with Size => 2;
   for FLASHCFG_FETCHCFG_Field use
     (No_Buffer => 0,
      One_Buffer => 1,
      All_Buffers => 2);

   --  Data read configuration. This field determines how flash accelerator
   --  buffers are used for data accesses.
   type FLASHCFG_DATACFG_Field is
     (
      --  Data accesses from flash are not buffered. Every data access from the
      --  CPU results in a read of the flash memory.
      Not_Buffered,
      --  One buffer is used for all data accesses.
      One_Buffer,
      --  All buffers may be used for data accesses.
      All_Buffers)
     with Size => 2;
   for FLASHCFG_DATACFG_Field use
     (Not_Buffered => 0,
      One_Buffer => 1,
      All_Buffers => 2);

   --  Acceleration enable.
   type FLASHCFG_ACCEL_Field is
     (
      --  Flash acceleration is disabled. Every flash read (including those
      --  fulfilled from a buffer) takes FLASHTIM + 1 system clocks. This
      --  allows more determinism at a cost of performance.
      Disabled,
      --  Flash acceleration is enabled. Performance is enhanced, dependent on
      --  other FLASHCFG settings.
      Enabled)
     with Size => 1;
   for FLASHCFG_ACCEL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Prefetch enable.
   type FLASHCFG_PREFEN_Field is
     (
      --  No instruction prefetch is performed.
      No_Prefetch,
      --  If the FETCHCFG field is not 0, the next flash line following the
      --  current execution address is automatically prefetched if it is not
      --  already buffered.
      Prefetch)
     with Size => 1;
   for FLASHCFG_PREFEN_Field use
     (No_Prefetch => 0,
      Prefetch => 1);

   --  Prefetch override. This bit only applies when PREFEN = 1 and a buffered
   --  instruction is completing for which the next flash line is not already
   --  buffered or being prefetched.
   type FLASHCFG_PREFOVR_Field is
     (
      --  Any previously initiated prefetch will be completed.
      Prefetch_Completed,
      --  Any previously initiated prefetch will be aborted, and the next flash
      --  line following the current execution address will be prefetched if
      --  not already buffered.
      Prefetch_Abort)
     with Size => 1;
   for FLASHCFG_PREFOVR_Field use
     (Prefetch_Completed => 0,
      Prefetch_Abort => 1);

   --  Flash memory access time. The number of system clocks used for flash
   --  accesses is equal to FLASHTIM +1.
   type FLASHCFG_FLASHTIM_Field is
     (
      --  1 system clock flash access time (for system clock rates up to 12
      --  MHz).
      N_1_Clock_Cycle,
      --  2 system clocks flash access time (for system clock rates up to 30
      --  MHz).
      N_2_Clock_Cycles,
      --  3 system clocks flash access time (for system clock rates up to 60
      --  MHz).
      N_3_Clock_Cycles,
      --  4 system clocks flash access time (for system clock rates up to 85
      --  MHz).
      N_4_Clock_Cycles,
      --  5 system clocks flash access time (for system clock rates up to 100
      --  MHz).
      N_5_Clock_Cycles)
     with Size => 4;
   for FLASHCFG_FLASHTIM_Field use
     (N_1_Clock_Cycle => 0,
      N_2_Clock_Cycles => 1,
      N_3_Clock_Cycles => 2,
      N_4_Clock_Cycles => 3,
      N_5_Clock_Cycles => 4);

   --  Flash wait states configuration
   type FLASHCFG_Register is record
      --  Instruction fetch configuration. This field determines how flash
      --  accelerator buffers are used for instruction fetches.
      FETCHCFG       : FLASHCFG_FETCHCFG_Field := NRF_SVD.SYSCON.All_Buffers;
      --  Data read configuration. This field determines how flash accelerator
      --  buffers are used for data accesses.
      DATACFG        : FLASHCFG_DATACFG_Field := NRF_SVD.SYSCON.All_Buffers;
      --  Acceleration enable.
      ACCEL          : FLASHCFG_ACCEL_Field := NRF_SVD.SYSCON.Enabled;
      --  Prefetch enable.
      PREFEN         : FLASHCFG_PREFEN_Field := NRF_SVD.SYSCON.No_Prefetch;
      --  Prefetch override. This bit only applies when PREFEN = 1 and a
      --  buffered instruction is completing for which the next flash line is
      --  not already buffered or being prefetched.
      PREFOVR        : FLASHCFG_PREFOVR_Field :=
                        NRF_SVD.SYSCON.Prefetch_Completed;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Flash memory access time. The number of system clocks used for flash
      --  accesses is equal to FLASHTIM +1.
      FLASHTIM       : FLASHCFG_FLASHTIM_Field :=
                        NRF_SVD.SYSCON.N_1_Clock_Cycle;
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

   --  USB_NEED_CLK polarity for triggering the USB wake-up interrupt
   type USBCLKCTRL_POL_CLK_Field is
     (
      --  Falling edge of the USB_NEED_CLK triggers the USB wake-up (default).
      Falling_Edge,
      --  Rising edge of the USB_NEED_CLK triggers the USB wake-up.
      Rising_Edge)
     with Size => 1;
   for USBCLKCTRL_POL_CLK_Field use
     (Falling_Edge => 0,
      Rising_Edge => 1);

   --  USB clock control
   type USBCLKCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  USB_NEED_CLK polarity for triggering the USB wake-up interrupt
      POL_CLK       : USBCLKCTRL_POL_CLK_Field := NRF_SVD.SYSCON.Falling_Edge;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCLKCTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      POL_CLK       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  USB_NEED_CLK signal status
   type USBCLKSTAT_NEED_CLKST_Field is
     (
      --  Low
      Low,
      --  High
      High)
     with Size => 1;
   for USBCLKSTAT_NEED_CLKST_Field use
     (Low => 0,
      High => 1);

   --  USB clock status
   type USBCLKSTAT_Register is record
      --  USB_NEED_CLK signal status
      NEED_CLKST    : USBCLKSTAT_NEED_CLKST_Field := NRF_SVD.SYSCON.Low;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCLKSTAT_Register use record
      NEED_CLKST    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
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

   --  MCLK direction control.
   type MCLKIO_DIR_Field is
     (
      --  The MCLK function is an input.
      Input,
      --  The MCLK function is an output.
      Output)
     with Size => 1;
   for MCLKIO_DIR_Field use
     (Input => 0,
      Output => 1);

   --  MCLK input/output control
   type MCLKIO_Register is record
      --  MCLK direction control.
      DIR           : MCLKIO_DIR_Field := NRF_SVD.SYSCON.Input;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLKIO_Register use record
      DIR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype FROCTRL_TRIM_Field is HAL.UInt14;

   --  Select the fro_hf output frequency. This bit can only be changed by
   --  software when the WRTRIM bit = 1. Note that the factory trim values are
   --  for the 96 MHz FRO only.
   type FROCTRL_SEL_Field is
     (
      --  48 MHz
      Frq_48_Mhz,
      --  96 MHz
      Frq_96_Mhz)
     with Size => 1;
   for FROCTRL_SEL_Field use
     (Frq_48_Mhz => 0,
      Frq_96_Mhz => 1);

   subtype FROCTRL_FREQTRIM_Field is HAL.UInt8;

   --  USB clock adjust mode.
   type FROCTRL_USBCLKADJ_Field is
     (
      --  Normal operation.
      Normal,
      --  Automatic USB rate adjustment mode. If the USB FS device peripheral
      --  is enabled and connected to a USB host, it provides clock adjustment
      --  information to the FRO based on SOF packets. USB rate adjustment
      --  requires a number of cycles to take place. the USBMODCHG bit (see
      --  below) indicates when initial adjustment is complete, and when later
      --  adjustments are in progress. software must not alter TRIM and
      --  FREQTRIM while USBCLKADJ = 1. see USBCLKADJ usage notes below this
      --  table.
      Auto_Usb_Adjust)
     with Size => 1;
   for FROCTRL_USBCLKADJ_Field use
     (Normal => 0,
      Auto_Usb_Adjust => 1);

   --  High speed clock disable. Allows disabling the highs-speed FRO output if
   --  it is not needed.
   type FROCTRL_HSPDCLK_Field is
     (
      --  The high-speed FRO output is disabled.
      Disabled,
      --  The selected high-speed FRO output (48 MHz or 96 MHz) is enabled.
      Enabled)
     with Size => 1;
   for FROCTRL_HSPDCLK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  FRO oscillator control
   type FROCTRL_Register is record
      --  This value is factory trimmed to account for bias and temperature
      --  compensation. The value should not be changed by software. Also see
      --  the WRTRIM bit description.
      TRIM           : FROCTRL_TRIM_Field := 16#0#;
      --  Select the fro_hf output frequency. This bit can only be changed by
      --  software when the WRTRIM bit = 1. Note that the factory trim values
      --  are for the 96 MHz FRO only.
      SEL            : FROCTRL_SEL_Field := NRF_SVD.SYSCON.Frq_96_Mhz;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Frequency trim. Boot code configures this to a device-specific
      --  factory trim value for the 96 MHz FRO. If USBCLKADJ = 1, this field
      --  is read-only and provides the value resulting from USB rate
      --  adjustment. See the USBMODCFG flag regarding reading this field.
      --  Application code may adjust this field when USBCLKADJ = 0. A single
      --  step of FREQTRIM is roughly equivalent to 0.1% of the selected FRO
      --  frequency.
      FREQTRIM       : FROCTRL_FREQTRIM_Field := 16#0#;
      --  USB clock adjust mode.
      USBCLKADJ      : FROCTRL_USBCLKADJ_Field := NRF_SVD.SYSCON.Normal;
      --  USB Mode value Change flag. When 1, indicates that the USB trim is
      --  currently being updated (or is still starting up) and software should
      --  wait to read FREQTRIM. Update occurs at most once per millisecond.
      USBMODCHG      : Boolean := False;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  High speed clock disable. Allows disabling the highs-speed FRO output
      --  if it is not needed.
      HSPDCLK        : FROCTRL_HSPDCLK_Field := NRF_SVD.SYSCON.Enabled;
      --  Write Trim value. Must be written to 1 to modify the SEL or TRIM
      --  fields, during the same write. This bit always reads as 0.
      WRTRIM         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FROCTRL_Register use record
      TRIM           at 0 range 0 .. 13;
      SEL            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FREQTRIM       at 0 range 16 .. 23;
      USBCLKADJ      at 0 range 24 .. 24;
      USBMODCHG      at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      HSPDCLK        at 0 range 30 .. 30;
      WRTRIM         at 0 range 31 .. 31;
   end record;

   subtype WDTOSCCTRL_DIVSEL_Field is HAL.UInt5;
   subtype WDTOSCCTRL_FREQSEL_Field is HAL.UInt5;

   --  Watchdog oscillator control
   type WDTOSCCTRL_Register is record
      --  Divider select. Selects the value of the divider that adjusts the
      --  output of the oscillator. 0x00 = divide by 2 0x01 = divide by 4 0x02
      --  = divide by 6 up to 0x1E = divide by 62 0x1F = divide by 64
      DIVSEL         : WDTOSCCTRL_DIVSEL_Field := 16#0#;
      --  Frequency select. Selects the frequency of the oscillator. 0x00 =
      --  invalid setting when watchdog oscillator is running 0x01 = 0.4 MHz
      --  0x02 = 0.6 MHz 0x03 = 0.75 MHz 0x04 = 0.9 MHz 0x05 = 1.0 MHz 0x06 =
      --  1.2 MHz 0x07 = 1.3 MHz 0x08 = 1.4 MHz 0x09 = 1.5 MHz 0x0A = 1.6 MHz
      --  0x0B = 1.7 MHz 0x0C = 1.8 MHz 0x0D = 1.9 MHz 0x0E = 2.0 MHz 0x0F =
      --  2.05 MHz 0x10 = 2.1 MHz 0x11 = 2.2 MHz 0x12 = 2.25 MHz 0x13 = 2.3 MHz
      --  0x14 = 2.4 MHz 0x15 = 2.45 MHz 0x16 = 2.5 MHz 0x17 = 2.6 MHz 0x18 =
      --  2.65 MHz 0x19 = 2.7 MHz 0x1A = 2.8 MHz 0x1B = 2.85 MHz 0x1C = 2.9 MHz
      --  0x1D = 2.95 MHz 0x1E = 3.0 MHz 0x1F = 3.05 MHz
      FREQSEL        : WDTOSCCTRL_FREQSEL_Field := 16#5#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTOSCCTRL_Register use record
      DIVSEL         at 0 range 0 .. 4;
      FREQSEL        at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
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

   --  PLL bypass control.
   type SYSPLLCTRL_BYPASS_Field is
     (
      --  Bypass disabled. PLL CCO is sent to the PLL post-dividers.
      Disabled,
      --  Bypass enabled. PLL input clock is sent directly to the PLL output
      --  (default).
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

   --  Disable upper frequency limiter.
   type SYSPLLCTRL_UPLIMOFF_Field is
     (
      --  Normal mode.
      Normal,
      --  Upper frequency limiter disabled.
      Disabled)
     with Size => 1;
   for SYSPLLCTRL_UPLIMOFF_Field use
     (Normal => 0,
      Disabled => 1);

   --  PLL filter control. Set this bit to one when the spread spectrum
   --  controller is disabled or at low frequencies. For spread spectrum mode:
   --  SEL_EXT = 0, BANDSEL = 0, and UPLIMOFF = 1.
   type SYSPLLCTRL_BANDSEL_Field is
     (
      --  SSCG control. The PLL filter uses the parameters derived from the
      --  spread spectrum controller.
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
      --  clock is used directly to drive the PLL CCO input.
      Enabled)
     with Size => 1;
   for SYSPLLCTRL_DIRECTI_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PLL0 direct output enable.
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
      --  Bandwidth select I value.
      SELI           : SYSPLLCTRL_SELI_Field := 16#0#;
      --  Bandwidth select P value
      SELP           : SYSPLLCTRL_SELP_Field := 16#0#;
      --  PLL bypass control.
      BYPASS         : SYSPLLCTRL_BYPASS_Field := NRF_SVD.SYSCON.Enabled;
      --  Bypass feedback clock divide by 2.
      BYPASSCCODIV2  : SYSPLLCTRL_BYPASSCCODIV2_Field :=
                        NRF_SVD.SYSCON.Divide_By_2;
      --  Disable upper frequency limiter.
      UPLIMOFF       : SYSPLLCTRL_UPLIMOFF_Field := NRF_SVD.SYSCON.Normal;
      --  PLL filter control. Set this bit to one when the spread spectrum
      --  controller is disabled or at low frequencies. For spread spectrum
      --  mode: SEL_EXT = 0, BANDSEL = 0, and UPLIMOFF = 1.
      BANDSEL        : SYSPLLCTRL_BANDSEL_Field :=
                        NRF_SVD.SYSCON.Sscg_Control;
      --  PLL0 direct input enable
      DIRECTI        : SYSPLLCTRL_DIRECTI_Field := NRF_SVD.SYSCON.Disabled;
      --  PLL0 direct output enable.
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
      --  Read-only. PLL0 lock indicator
      LOCK          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
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
      --  Decoded N-divider coefficient value.
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
      --  Decoded P-divider coefficient value.
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

   --  PLL spread spectrum control 0
   type SYSPLLSSCTRL0_Register is record
      --  Decoded M-divider coefficient value.
      MDEC           : SYSPLLSSCTRL0_MDEC_Field := 16#0#;
      --  MDEC reload request. When a 1 is written to this bit, the MDEC value
      --  is loaded into the PLL. Must be cleared by software for any
      --  subsequent load, or the PLL can be powered down and back up via the
      --  PDEN_SYS_PLL bit in the PDRUNCFG register if the MDEC value is
      --  changed.
      MREQ           : Boolean := False;
      --  Select spread spectrum mode. Selects the source of the feedback
      --  divider value. For normal mode, this must be the value from the MDEC
      --  field in this register. For spread spectrum mode: SEL_EXT = 0,
      --  BANDSEL = 0, and UPLIMOFF = 1.
      SEL_EXT        : Boolean := True;
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

   --  Spread spectrum power-down.
   type SYSPLLSSCTRL1_PD_Field is
     (
      --  Enabled. Spread spectrum controller is enabled
      Enabled,
      --  Disabled. Spread spectrum controller is disabled.
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
      --  M- divider value with fraction. MD[18:11]: integer portion of the
      --  feedback divider value. MD[10:0]: fractional portion of the feedback
      --  divider value. In fractional mode, fcco = (2 - BYPASSCCODIV2) x (MD x
      --  2^-11) x Fref
      MD             : SYSPLLSSCTRL1_MD_Field := 16#0#;
      --  MD reload request. When a 1 is written to this bit, the MD value is
      --  loaded into the PLL. This bit is cleared when the load is complete
      MDREQ          : Boolean := False;
      --  Programmable modulation frequency fm = Fref/Nss with Fref = Fin/N
      --  0b000 => Nss = 512 (fm _ 3.9 - 7.8 kHz) 0b001 => Nss _ 384 (fm _ 5.2
      --  - 10.4 kHz) 0b010 => Nss = 256 (fm _ 7.8 - 15.6 kHz) 0b011 => Nss =
      --  128 (fm _ 15.6 - 31.3 kHz) 0b100 => Nss = 64 (fm _ 32.3 - 64.5 kHz)
      --  0b101 => Nss = 32 (fm _ 62.5- 125 kHz) 0b110 => Nss _ 24 (fm _ 83.3-
      --  166.6 kHz) 0b111 => Nss = 16 (fm _ 125- 250 kHz)
      MF             : SYSPLLSSCTRL1_MF_Field := 16#0#;
      --  Programmable frequency modulation depth. 0 = no spread. _fmodpk-pk =
      --  Fref x k/Fcco = k/MDdec 0b000 -> k = 0 (no spread spectrum) 0b001 =>
      --  k _ 1 0b010 => k _ 1.5 0b011 => k _ 2 0b100 => k _ 3 0b101 => k _ 4
      --  0b110 => k _ 6 0b111 => k _ 8
      MR             : SYSPLLSSCTRL1_MR_Field := 16#0#;
      --  Modulation waveform control. 0 = no compensation. Compensation for
      --  low pass filtering of the PLL to get a triangular modulation at the
      --  output of the PLL, giving a flat frequency spectrum. 0b00 => no
      --  compensation 0b10 => recommended setting 0b11 => max. compensation
      MC             : SYSPLLSSCTRL1_MC_Field := 16#0#;
      --  Spread spectrum power-down.
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

   --  Sleep configuration register n

   --  Sleep configuration register n
   type PDSLEEPCFG_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  PDRUNCFG0_PDEN_SRAM array
   type PDRUNCFG0_PDEN_SRAM_Field_Array is array (0 .. 2) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PDRUNCFG0_PDEN_SRAM
   type PDRUNCFG0_PDEN_SRAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDEN_SRAM as a value
            Val : HAL.UInt3;
         when True =>
            --  PDEN_SRAM as an array
            Arr : PDRUNCFG0_PDEN_SRAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PDRUNCFG0_PDEN_SRAM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power configuration register n
   type PDRUNCFG0_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  FRO oscillator. 0 = Powered; 1 = Powered down.
      PDEN_FRO       : Boolean := False;
      --  Part of flash power control.
      PD_FLASH       : Boolean := False;
      --  Temp sensor. 0 = Powered; 1 = Powered down.
      PDEN_TS        : Boolean := True;
      --  Brown-out Detect reset. 0 = Powered; 1 = Powered down.
      PDEN_BOD_RST   : Boolean := False;
      --  Brown-out Detect interrupt. 0 = Powered; 1 = Powered down.
      PDEN_BOD_INTR  : Boolean := True;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  ADC0. 0 = Powered; 1 = Powered down.
      PDEN_ADC0      : Boolean := True;
      --  Part of flash power control.
      PD_VDDFLASH    : Boolean := False;
      --  Part of flash power control.
      LP_VDDFLASH    : Boolean := False;
      --  SRAM0. 0 = Powered; 1 = Powered down.
      PDEN_SRAM      : PDRUNCFG0_PDEN_SRAM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SRAMX. 0 = Powered; 1 = Powered down.
      PDEN_SRAMX     : Boolean := False;
      --  ROM. 0 = Powered; 1 = Powered down.
      PDEN_ROM       : Boolean := False;
      --  Part of flash power control.
      PD_VDDHV_ENA   : Boolean := False;
      --  Vdda to the ADC, must be enabled for the ADC to work. Also see bit
      --  23. 0 = Powered; 1 = Powered down.
      PDEN_VDDA      : Boolean := True;
      --  Watchdog oscillator. 0 = Powered; 1 = Powered down.
      PDEN_WDT_OSC   : Boolean := True;
      --  USB pin interface. 0 = Powered; 1 = Powered down.
      PDEN_USB_PHY   : Boolean := True;
      --  PLL0. 0 = Powered; 1 = Powered down.
      PDEN_SYS_PLL   : Boolean := True;
      --  Vrefp to the ADC, must be enabled for the ADC to work. Also see bit
      --  19. 0 = Powered; 1 = Powered down.
      PDEN_VREFP     : Boolean := True;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Part of flash power control.
      PD_FLASH_BG    : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFG0_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PDEN_FRO       at 0 range 4 .. 4;
      PD_FLASH       at 0 range 5 .. 5;
      PDEN_TS        at 0 range 6 .. 6;
      PDEN_BOD_RST   at 0 range 7 .. 7;
      PDEN_BOD_INTR  at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PDEN_ADC0      at 0 range 10 .. 10;
      PD_VDDFLASH    at 0 range 11 .. 11;
      LP_VDDFLASH    at 0 range 12 .. 12;
      PDEN_SRAM      at 0 range 13 .. 15;
      PDEN_SRAMX     at 0 range 16 .. 16;
      PDEN_ROM       at 0 range 17 .. 17;
      PD_VDDHV_ENA   at 0 range 18 .. 18;
      PDEN_VDDA      at 0 range 19 .. 19;
      PDEN_WDT_OSC   at 0 range 20 .. 20;
      PDEN_USB_PHY   at 0 range 21 .. 21;
      PDEN_SYS_PLL   at 0 range 22 .. 22;
      PDEN_VREFP     at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      PD_FLASH_BG    at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Power configuration register n
   type PDRUNCFG1_Register is record
      --  unspecified
      Reserved_0_27     : HAL.UInt28 := 16#0#;
      --  Part of flash power control.
      PD_ALT_FLASH_IBG  : Boolean := True;
      --  Part of flash power control.
      SEL_ALT_FLASH_IBG : Boolean := False;
      --  unspecified
      Reserved_30_31    : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFG1_Register use record
      Reserved_0_27     at 0 range 0 .. 27;
      PD_ALT_FLASH_IBG  at 0 range 28 .. 28;
      SEL_ALT_FLASH_IBG at 0 range 29 .. 29;
      Reserved_30_31    at 0 range 30 .. 31;
   end record;

   --  Set bits in PDRUNCFGn

   --  Set bits in PDRUNCFGn
   type PDRUNCFGSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in PDRUNCFGn

   --  Clear bits in PDRUNCFGn
   type PDRUNCFGCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  STARTERP0_GINT array
   type STARTERP0_GINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTERP0_GINT
   type STARTERP0_GINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GINT as a value
            Val : HAL.UInt2;
         when True =>
            --  GINT as an array
            Arr : STARTERP0_GINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTERP0_GINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTERP0_PIN_INT array
   type STARTERP0_PIN_INT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STARTERP0_PIN_INT
   type STARTERP0_PIN_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIN_INT as a value
            Val : HAL.UInt4;
         when True =>
            --  PIN_INT as an array
            Arr : STARTERP0_PIN_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STARTERP0_PIN_INT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STARTERP0_CTIMER array
   type STARTERP0_CTIMER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTERP0_CTIMER
   type STARTERP0_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : STARTERP0_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTERP0_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTERP0_FLEXCOMM array
   type STARTERP0_FLEXCOMM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for STARTERP0_FLEXCOMM
   type STARTERP0_FLEXCOMM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLEXCOMM as a value
            Val : HAL.UInt8;
         when True =>
            --  FLEXCOMM as an array
            Arr : STARTERP0_FLEXCOMM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for STARTERP0_FLEXCOMM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Start logic n wake-up enable register
   type STARTERP0_Register is record
      --  WWDT and BOD interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.
      WDT_BOD        : Boolean := False;
      --  DMA0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled. Typically
      --  used in sleep mode only since the peripheral clock must be running
      --  for it to function.
      DMA0           : Boolean := False;
      --  Group interrupt 0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      GINT           : STARTERP0_GINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  GPIO pin interrupt 0 wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled. Not for pattern match.
      PIN_INT        : STARTERP0_PIN_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Micro-tick Timer wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      UTICK0         : Boolean := False;
      --  Multi-Rate Timer wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      --  Typically used in sleep mode only since the peripheral clock must be
      --  running for it to function.
      MRT0           : Boolean := False;
      --  Standard counter/timer CTIMER0 wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.Typically used in sleep mode only since the
      --  peripheral clock must be running for it to function.
      CTIMER         : STARTERP0_CTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SCT0 wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.Typically
      --  used in sleep mode only since the peripheral clock must be running
      --  for it to function.
      SCT0           : Boolean := False;
      --  Standard counter/timer CTIMER3 wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.Typically used in sleep mode only since the
      --  peripheral clock must be running for it to function.
      CTIMER3        : Boolean := False;
      --  Flexcomm0 peripheral interrupt wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.
      FLEXCOMM       : STARTERP0_FLEXCOMM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 sequence A interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.Typically used in sleep mode only since the peripheral clock
      --  must be running for it to function.
      ADC0_SEQA      : Boolean := False;
      --  ADC0 sequence B interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.Typically used in sleep mode only since the peripheral clock
      --  must be running for it to function.
      ADC0_SEQB      : Boolean := False;
      --  ADC0 threshold and error interrupt wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.Typically used in sleep mode only since the
      --  peripheral clock must be running for it to function.
      ADC0_THCMP     : Boolean := False;
      --  Digital microphone interrupt wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.
      DMIC0          : Boolean := False;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  USB0 activity interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.
      USB0_NEEDCLK   : Boolean := False;
      --  USB0 function interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.
      USB0           : Boolean := False;
      --  RTC interrupt alarm and wake-up timer. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.
      RTC            : Boolean := False;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Mailbox interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled.At least one CPU must be running in order for a mailbox
      --  interrupt to occur. Present on selected devices.
      MAILBOX        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTERP0_Register use record
      WDT_BOD        at 0 range 0 .. 0;
      DMA0           at 0 range 1 .. 1;
      GINT           at 0 range 2 .. 3;
      PIN_INT        at 0 range 4 .. 7;
      UTICK0         at 0 range 8 .. 8;
      MRT0           at 0 range 9 .. 9;
      CTIMER         at 0 range 10 .. 11;
      SCT0           at 0 range 12 .. 12;
      CTIMER3        at 0 range 13 .. 13;
      FLEXCOMM       at 0 range 14 .. 21;
      ADC0_SEQA      at 0 range 22 .. 22;
      ADC0_SEQB      at 0 range 23 .. 23;
      ADC0_THCMP     at 0 range 24 .. 24;
      DMIC0          at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      USB0_NEEDCLK   at 0 range 27 .. 27;
      USB0           at 0 range 28 .. 28;
      RTC            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      MAILBOX        at 0 range 31 .. 31;
   end record;

   --  STARTERP1_PINT array
   type STARTERP1_PINT_Field_Array is array (4 .. 7) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STARTERP1_PINT
   type STARTERP1_PINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PINT as a value
            Val : HAL.UInt4;
         when True =>
            --  PINT as an array
            Arr : STARTERP1_PINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STARTERP1_PINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STARTERP1_CTIMER array
   type STARTERP1_CTIMER_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTERP1_CTIMER
   type STARTERP1_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : STARTERP1_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTERP1_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Start logic n wake-up enable register
   type STARTERP1_Register is record
      --  GPIO pin interrupt 4 wake-up. 0 = Wake-up disabled. 1 = Wake-up
      --  enabled. Not for pattern match.
      PINT          : STARTERP1_PINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Standard counter/timer CTIMER2 wake-up. 0 = Wake-up disabled. 1 =
      --  Wake-up enabled.Typically used in sleep mode only since the
      --  peripheral clock must be running for it to function.
      CTIMER        : STARTERP1_CTIMER_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTERP1_Register use record
      PINT          at 0 range 0 .. 3;
      CTIMER        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Set bits in STARTERn

   --  Set bits in STARTERn
   type STARTERSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in STARTERn

   --  Clear bits in STARTERn
   type STARTERCLR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Configures special cases of hardware wake-up
   type HWWAKE_Register is record
      --  Force peripheral clocking to stay on during Deep Sleep and Power-down
      --  modes. When 1, clocking to peripherals is prevented from being shut
      --  down when the CPU enters Deep Sleep and Power-down modes. This is
      --  intended to allow a coprocessor to continue operating while the main
      --  CPU(s) are shut down.
      FORCEWAKE     : Boolean := False;
      --  Wake for Flexcomms. When 1, any Flexcomm FIFO reaching the level
      --  specified by its own TXLVL will cause peripheral clocking to wake up
      --  temporarily while the related status is asserted.
      FCWAKE        : Boolean := False;
      --  Wake for Digital Microphone. When 1, the digital microphone input
      --  FIFO reaching the level specified by TRIGLVL of either channel will
      --  cause peripheral clocking to wake up temporarily while the related
      --  status is asserted.
      WAKEDMIC      : Boolean := False;
      --  Wake for DMA. When 1, DMA being busy will cause peripheral clocking
      --  to remain running until DMA completes. This is generally used in
      --  conjunction with bit 1 and/or 2 in order to prevent peripheral
      --  clocking from being shut down as soon as the cause of wake-up is
      --  cleared, but before DMA has completed its related activity.
      WAKEDMA       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWWAKE_Register use record
      FORCEWAKE     at 0 range 0 .. 0;
      FCWAKE        at 0 range 1 .. 1;
      WAKEDMIC      at 0 range 2 .. 2;
      WAKEDMA       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Indicates which CPU is considered the master. This is factory set assign
   --  the Cortex-M4 as the master. The master CPU cannot have its clock turned
   --  off via the related CMnCLKEN bit or be reset via the related CMxRSTEN in
   --  this register. The slave CPU wakes up briefly following device reset,
   --  then goes back to sleep until activated by the master CPU.
   type CPCTRL_MASTERCPU_Field is
     (
      --  M0+. Cortex-M0+ is the master CPU.
      M0Pl,
      --  M4. Cortex-M4 is the master CPU.
      M4)
     with Size => 1;
   for CPCTRL_MASTERCPU_Field use
     (M0Pl => 0,
      M4 => 1);

   --  Cortex-M4 clock enable
   type CPCTRL_CM4CLKEN_Field is
     (
      --  Disabled. The Cortex-M4 clock is not enabled
      Disabled,
      --  Enabled. The Cortex-M4 clock is enabled.
      Enabled)
     with Size => 1;
   for CPCTRL_CM4CLKEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cortex-M0+ clock enable
   type CPCTRL_CM0CLKEN_Field is
     (
      --  Disabled. The Cortex-M0+ clock is not enabled.
      Disabled,
      --  Enabled. The Cortex-M0+ clock is enabled.
      Enabled)
     with Size => 1;
   for CPCTRL_CM0CLKEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cortex-M4 reset.
   type CPCTRL_CM4RSTEN_Field is
     (
      --  Disabled. The Cortex-M4 is not being reset.
      Disabled,
      --  Enabled. The Cortex-M4 is being reset.
      Enabled)
     with Size => 1;
   for CPCTRL_CM4RSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cortex-M0+ reset.
   type CPCTRL_CM0RSTEN_Field is
     (
      --  Disabled. The Cortex-M0+ is not being reset.
      Disabled,
      --  Enabled. The Cortex-M0+ is being reset.
      Enabled)
     with Size => 1;
   for CPCTRL_CM0RSTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Identifies the owner of reduced power mode control: which CPU can cause
   --  the device to enter Deep Sleep, Power-down, and Deep Power-down modes.
   type CPCTRL_POWERCPU_Field is
     (
      --  M0+. Cortex-M0+ is the owner of reduced power mode control.
      M0Pl,
      --  M4. Cortex-M4 is the owner of reduced power mode control.
      M4)
     with Size => 1;
   for CPCTRL_POWERCPU_Field use
     (M0Pl => 0,
      M4 => 1);

   --  CPU Control for multiple processors
   type CPCTRL_Register is record
      --  Indicates which CPU is considered the master. This is factory set
      --  assign the Cortex-M4 as the master. The master CPU cannot have its
      --  clock turned off via the related CMnCLKEN bit or be reset via the
      --  related CMxRSTEN in this register. The slave CPU wakes up briefly
      --  following device reset, then goes back to sleep until activated by
      --  the master CPU.
      MASTERCPU     : CPCTRL_MASTERCPU_Field := NRF_SVD.SYSCON.M4;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Cortex-M4 clock enable
      CM4CLKEN      : CPCTRL_CM4CLKEN_Field := NRF_SVD.SYSCON.Enabled;
      --  Cortex-M0+ clock enable
      CM0CLKEN      : CPCTRL_CM0CLKEN_Field := NRF_SVD.SYSCON.Enabled;
      --  Cortex-M4 reset.
      CM4RSTEN      : CPCTRL_CM4RSTEN_Field := NRF_SVD.SYSCON.Disabled;
      --  Cortex-M0+ reset.
      CM0RSTEN      : CPCTRL_CM0RSTEN_Field := NRF_SVD.SYSCON.Disabled;
      --  Identifies the owner of reduced power mode control: which CPU can
      --  cause the device to enter Deep Sleep, Power-down, and Deep Power-down
      --  modes.
      POWERCPU      : CPCTRL_POWERCPU_Field := NRF_SVD.SYSCON.M4;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPCTRL_Register use record
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
      --  Read-only. When 1, the Cortex-M4 CPU is sleeping
      CM4SLEEPING   : Boolean;
      --  Read-only. When 1, the Cortex-M0+ CPU is sleeping
      CM0SLEEPING   : Boolean;
      --  Read-only. When 1, the Cortex-M4 CPU is in lockup
      CM4LOCKUP     : Boolean;
      --  Read-only. When 1, the Cortex-M0+ CPU is in lockup.
      CM0LOCKUP     : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
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

   --  AUTOCGOR_RAM array
   type AUTOCGOR_RAM_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AUTOCGOR_RAM
   type AUTOCGOR_RAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RAM as a value
            Val : HAL.UInt2;
         when True =>
            --  RAM as an array
            Arr : AUTOCGOR_RAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AUTOCGOR_RAM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Auto Clock-Gate Override Register
   type AUTOCGOR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  When 1, automatic clock gating for RAMX and RAM0 are turned off.
      RAM0X         : Boolean := False;
      --  When 1, automatic clock gating for RAM1 is turned off.
      RAM           : AUTOCGOR_RAM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUTOCGOR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RAM0X         at 0 range 1 .. 1;
      RAM           at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  BOD reset level
   type BODCTRL_BODRSTLEV_Field is
     (
      --  Level 0: 1.5 V
      Level0,
      --  Level 1: 1.85 V
      Level1,
      --  Level 2: 2.0 V
      Level2,
      --  Level 3: 2.3 V
      Level3)
     with Size => 2;
   for BODCTRL_BODRSTLEV_Field use
     (Level0 => 0,
      Level1 => 1,
      Level2 => 2,
      Level3 => 3);

   --  BOD reset enable
   type BODCTRL_BODRSTENA_Field is
     (
      --  Disable reset function.
      Disable,
      --  Enable reset function.
      Enable)
     with Size => 1;
   for BODCTRL_BODRSTENA_Field use
     (Disable => 0,
      Enable => 1);

   --  BOD interrupt level
   type BODCTRL_BODINTLEV_Field is
     (
      --  Level 0: 2.05 V
      Level0,
      --  Level 1: 2.45 V
      Level1,
      --  Level 2: 2.75 V
      Level2,
      --  Level 3: 3.05 V
      Level3)
     with Size => 2;
   for BODCTRL_BODINTLEV_Field use
     (Level0 => 0,
      Level1 => 1,
      Level2 => 2,
      Level3 => 3);

   --  BOD interrupt enable
   type BODCTRL_BODINTENA_Field is
     (
      --  Disable interrupt function.
      Disable,
      --  Enable interrupt function.
      Enable)
     with Size => 1;
   for BODCTRL_BODINTENA_Field use
     (Disable => 0,
      Enable => 1);

   --  Brown-Out Detect control
   type BODCTRL_Register is record
      --  BOD reset level
      BODRSTLEV     : BODCTRL_BODRSTLEV_Field := NRF_SVD.SYSCON.Level0;
      --  BOD reset enable
      BODRSTENA     : BODCTRL_BODRSTENA_Field := NRF_SVD.SYSCON.Disable;
      --  BOD interrupt level
      BODINTLEV     : BODCTRL_BODINTLEV_Field := NRF_SVD.SYSCON.Level0;
      --  BOD interrupt enable
      BODINTENA     : BODCTRL_BODINTENA_Field := NRF_SVD.SYSCON.Disable;
      --  BOD reset status. When 1, a BOD reset has occurred. Cleared by
      --  writing 1 to this bit.
      BODRSTSTAT    : Boolean := False;
      --  BOD interrupt status. When 1, a BOD interrupt has occurred. Cleared
      --  by writing 1 to this bit.
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

   --  LPC5411x System configuration (SYSCON)
   type SYSCON_Peripheral is record
      --  System Remap register
      SYSMEMREMAP   : aliased HAL.UInt32;
      --  AHB multilayer matrix priority control
      AHBMATPRIO    : aliased AHBMATPRIO_Register;
      --  System tick counter calibration
      SYSTCKCAL     : aliased SYSTCKCAL_Register;
      --  NMI Source Select
      NMISRC        : aliased NMISRC_Register;
      --  Asynchronous APB Control
      ASYNCAPBCTRL  : aliased ASYNCAPBCTRL_Register;
      --  POR captured value of port n
      PIOPORCAP     : aliased PIOPORCAP_Registers;
      --  Reset captured value of port n
      PIORESCAP     : aliased PIORESCAP_Registers;
      --  Peripheral reset control n
      PRESETCTRL0   : aliased PRESETCTRL0_Register;
      --  Peripheral reset control n
      PRESETCTRL1   : aliased PRESETCTRL1_Register;
      --  Set bits in PRESETCTRLn
      PRESETCTRLSET : aliased PRESETCTRLSET_Registers;
      --  Clear bits in PRESETCTRLn
      PRESETCTRLCLR : aliased PRESETCTRLCLR_Registers;
      --  System reset status register
      SYSRSTSTAT    : aliased SYSRSTSTAT_Register;
      --  AHB Clock control n
      AHBCLKCTRL0   : aliased AHBCLKCTRL0_Register;
      --  AHB Clock control n
      AHBCLKCTRL1   : aliased AHBCLKCTRL1_Register;
      --  Set bits in AHBCLKCTRLn
      AHBCLKCTRLSET : aliased AHBCLKCTRLSET_Registers;
      --  Clear bits in AHBCLKCTRLn
      AHBCLKCTRLCLR : aliased AHBCLKCTRLCLR_Registers;
      --  Main clock source select A
      MAINCLKSELA   : aliased MAINCLKSELA_Register;
      --  Main clock source select B
      MAINCLKSELB   : aliased MAINCLKSELB_Register;
      --  CLKOUT clock source select A
      CLKOUTSELA    : aliased CLKOUTSELA_Register;
      --  PLL clock source select
      SYSPLLCLKSEL  : aliased SYSPLLCLKSEL_Register;
      --  SPIFI clock source select
      SPIFICLKSEL   : aliased SPIFICLKSEL_Register;
      --  ADC clock source select
      ADCCLKSEL     : aliased ADCCLKSEL_Register;
      --  USB clock source select
      USBCLKSEL     : aliased USBCLKSEL_Register;
      --  Flexcomm 0 clock source select
      FXCOMCLKSEL   : aliased FXCOMCLKSEL_Registers;
      --  MCLK clock source select
      MCLKCLKSEL    : aliased MCLKCLKSEL_Register;
      --  Fractional Rate Generator clock source select
      FRGCLKSEL     : aliased FRGCLKSEL_Register;
      --  Digital microphone (D-Mic) subsystem clock select
      DMICCLKSEL    : aliased DMICCLKSEL_Register;
      --  SYSTICK clock divider
      SYSTICKCLKDIV : aliased SYSTICKCLKDIV_Register;
      --  Trace clock divider
      TRACECLKDIV   : aliased TRACECLKDIV_Register;
      --  AHB clock divider
      AHBCLKDIV     : aliased AHBCLKDIV_Register;
      --  CLKOUT clock divider
      CLKOUTDIV     : aliased CLKOUTDIV_Register;
      --  SPIFI clock divider
      SPIFICLKDIV   : aliased SPIFICLKDIV_Register;
      --  ADC clock divider
      ADCCLKDIV     : aliased ADCCLKDIV_Register;
      --  USB clock divider
      USBCLKDIV     : aliased USBCLKDIV_Register;
      --  Fractional rate divider
      FRGCTRL       : aliased FRGCTRL_Register;
      --  DMIC clock divider
      DMICCLKDIV    : aliased DMICCLKDIV_Register;
      --  I2S MCLK clock divider
      MCLKDIV       : aliased MCLKDIV_Register;
      --  Flash wait states configuration
      FLASHCFG      : aliased FLASHCFG_Register;
      --  USB clock control
      USBCLKCTRL    : aliased USBCLKCTRL_Register;
      --  USB clock status
      USBCLKSTAT    : aliased USBCLKSTAT_Register;
      --  Frequency measure register
      FREQMECTRL    : aliased FREQMECTRL_Register;
      --  MCLK input/output control
      MCLKIO        : aliased MCLKIO_Register;
      --  FRO oscillator control
      FROCTRL       : aliased FROCTRL_Register;
      --  Watchdog oscillator control
      WDTOSCCTRL    : aliased WDTOSCCTRL_Register;
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
      --  Sleep configuration register n
      PDSLEEPCFG    : aliased PDSLEEPCFG_Registers;
      --  Power configuration register n
      PDRUNCFG0     : aliased PDRUNCFG0_Register;
      --  Power configuration register n
      PDRUNCFG1     : aliased PDRUNCFG1_Register;
      --  Set bits in PDRUNCFGn
      PDRUNCFGSET   : aliased PDRUNCFGSET_Registers;
      --  Clear bits in PDRUNCFGn
      PDRUNCFGCLR   : aliased PDRUNCFGCLR_Registers;
      --  Start logic n wake-up enable register
      STARTERP0     : aliased STARTERP0_Register;
      --  Start logic n wake-up enable register
      STARTERP1     : aliased STARTERP1_Register;
      --  Set bits in STARTERn
      STARTERSET    : aliased STARTERSET_Registers;
      --  Clear bits in STARTERn
      STARTERCLR    : aliased STARTERCLR_Registers;
      --  Configures special cases of hardware wake-up
      HWWAKE        : aliased HWWAKE_Register;
      --  CPU Control for multiple processors
      CPCTRL        : aliased CPCTRL_Register;
      --  Coprocessor Boot Address
      CPBOOT        : aliased HAL.UInt32;
      --  Coprocessor Stack Address
      CPSTACK       : aliased HAL.UInt32;
      --  Coprocessor Status
      CPSTAT        : aliased CPSTAT_Register;
      --  Auto Clock-Gate Override Register
      AUTOCGOR      : aliased AUTOCGOR_Register;
      --  JTAG ID code register
      JTAGIDCODE    : aliased HAL.UInt32;
      --  Part ID register
      DEVICE_ID0    : aliased HAL.UInt32;
      --  Boot ROM and die revision register
      DEVICE_ID1    : aliased HAL.UInt32;
      --  Brown-Out Detect control
      BODCTRL       : aliased BODCTRL_Register;
   end record
     with Volatile;

   for SYSCON_Peripheral use record
      SYSMEMREMAP   at 16#0# range 0 .. 31;
      AHBMATPRIO    at 16#10# range 0 .. 31;
      SYSTCKCAL     at 16#40# range 0 .. 31;
      NMISRC        at 16#48# range 0 .. 31;
      ASYNCAPBCTRL  at 16#4C# range 0 .. 31;
      PIOPORCAP     at 16#C0# range 0 .. 63;
      PIORESCAP     at 16#D0# range 0 .. 63;
      PRESETCTRL0   at 16#100# range 0 .. 31;
      PRESETCTRL1   at 16#104# range 0 .. 31;
      PRESETCTRLSET at 16#120# range 0 .. 63;
      PRESETCTRLCLR at 16#140# range 0 .. 63;
      SYSRSTSTAT    at 16#1F0# range 0 .. 31;
      AHBCLKCTRL0   at 16#200# range 0 .. 31;
      AHBCLKCTRL1   at 16#204# range 0 .. 31;
      AHBCLKCTRLSET at 16#220# range 0 .. 63;
      AHBCLKCTRLCLR at 16#240# range 0 .. 63;
      MAINCLKSELA   at 16#280# range 0 .. 31;
      MAINCLKSELB   at 16#284# range 0 .. 31;
      CLKOUTSELA    at 16#288# range 0 .. 31;
      SYSPLLCLKSEL  at 16#290# range 0 .. 31;
      SPIFICLKSEL   at 16#2A0# range 0 .. 31;
      ADCCLKSEL     at 16#2A4# range 0 .. 31;
      USBCLKSEL     at 16#2A8# range 0 .. 31;
      FXCOMCLKSEL   at 16#2B0# range 0 .. 255;
      MCLKCLKSEL    at 16#2E0# range 0 .. 31;
      FRGCLKSEL     at 16#2E8# range 0 .. 31;
      DMICCLKSEL    at 16#2EC# range 0 .. 31;
      SYSTICKCLKDIV at 16#300# range 0 .. 31;
      TRACECLKDIV   at 16#304# range 0 .. 31;
      AHBCLKDIV     at 16#380# range 0 .. 31;
      CLKOUTDIV     at 16#384# range 0 .. 31;
      SPIFICLKDIV   at 16#390# range 0 .. 31;
      ADCCLKDIV     at 16#394# range 0 .. 31;
      USBCLKDIV     at 16#398# range 0 .. 31;
      FRGCTRL       at 16#3A0# range 0 .. 31;
      DMICCLKDIV    at 16#3A8# range 0 .. 31;
      MCLKDIV       at 16#3AC# range 0 .. 31;
      FLASHCFG      at 16#400# range 0 .. 31;
      USBCLKCTRL    at 16#40C# range 0 .. 31;
      USBCLKSTAT    at 16#410# range 0 .. 31;
      FREQMECTRL    at 16#418# range 0 .. 31;
      MCLKIO        at 16#420# range 0 .. 31;
      FROCTRL       at 16#500# range 0 .. 31;
      WDTOSCCTRL    at 16#508# range 0 .. 31;
      RTCOSCCTRL    at 16#50C# range 0 .. 31;
      SYSPLLCTRL    at 16#580# range 0 .. 31;
      SYSPLLSTAT    at 16#584# range 0 .. 31;
      SYSPLLNDEC    at 16#588# range 0 .. 31;
      SYSPLLPDEC    at 16#58C# range 0 .. 31;
      SYSPLLSSCTRL0 at 16#590# range 0 .. 31;
      SYSPLLSSCTRL1 at 16#594# range 0 .. 31;
      PDSLEEPCFG    at 16#600# range 0 .. 63;
      PDRUNCFG0     at 16#610# range 0 .. 31;
      PDRUNCFG1     at 16#614# range 0 .. 31;
      PDRUNCFGSET   at 16#620# range 0 .. 63;
      PDRUNCFGCLR   at 16#630# range 0 .. 63;
      STARTERP0     at 16#680# range 0 .. 31;
      STARTERP1     at 16#684# range 0 .. 31;
      STARTERSET    at 16#6A0# range 0 .. 63;
      STARTERCLR    at 16#6C0# range 0 .. 63;
      HWWAKE        at 16#780# range 0 .. 31;
      CPCTRL        at 16#800# range 0 .. 31;
      CPBOOT        at 16#804# range 0 .. 31;
      CPSTACK       at 16#808# range 0 .. 31;
      CPSTAT        at 16#80C# range 0 .. 31;
      AUTOCGOR      at 16#E04# range 0 .. 31;
      JTAGIDCODE    at 16#FF4# range 0 .. 31;
      DEVICE_ID0    at 16#FF8# range 0 .. 31;
      DEVICE_ID1    at 16#FFC# range 0 .. 31;
      BODCTRL       at 16#20044# range 0 .. 31;
   end record;

   --  LPC5411x System configuration (SYSCON)
   SYSCON_Periph : aliased SYSCON_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.SYSCON;
