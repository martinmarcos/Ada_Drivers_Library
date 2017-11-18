--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54607.xml

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
   subtype AHBMATPRIO_PRI_DMA_Field is HAL.UInt4;
   subtype AHBMATPRIO_PRI_ETH_Field is HAL.UInt2;
   subtype AHBMATPRIO_PRI_LCD_Field is HAL.UInt2;
   --  AHBMATPRIO_PRI_USB array element
   subtype AHBMATPRIO_PRI_USB_Element is HAL.UInt2;

   --  AHBMATPRIO_PRI_USB array
   type AHBMATPRIO_PRI_USB_Field_Array is array (0 .. 1)
     of AHBMATPRIO_PRI_USB_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for AHBMATPRIO_PRI_USB
   type AHBMATPRIO_PRI_USB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRI_USB as a value
            Val : HAL.UInt4;
         when True =>
            --  PRI_USB as an array
            Arr : AHBMATPRIO_PRI_USB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for AHBMATPRIO_PRI_USB_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype AHBMATPRIO_PRI_SDIO_Field is HAL.UInt2;
   --  AHBMATPRIO_PRI_MCAN array element
   subtype AHBMATPRIO_PRI_MCAN_Element is HAL.UInt2;

   --  AHBMATPRIO_PRI_MCAN array
   type AHBMATPRIO_PRI_MCAN_Field_Array is array (1 .. 2)
     of AHBMATPRIO_PRI_MCAN_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for AHBMATPRIO_PRI_MCAN
   type AHBMATPRIO_PRI_MCAN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRI_MCAN as a value
            Val : HAL.UInt4;
         when True =>
            --  PRI_MCAN as an array
            Arr : AHBMATPRIO_PRI_MCAN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for AHBMATPRIO_PRI_MCAN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype AHBMATPRIO_PRI_SHA_Field is HAL.UInt2;

   --  AHB multilayer matrix priority control
   type AHBMATPRIO_Register is record
      --  I-Code bus priority.
      PRI_ICODE      : AHBMATPRIO_PRI_ICODE_Field := 16#0#;
      --  D-Code bus priority.
      PRI_DCODE      : AHBMATPRIO_PRI_DCODE_Field := 16#0#;
      --  System bus priority.
      PRI_SYS        : AHBMATPRIO_PRI_SYS_Field := 16#0#;
      --  DMA controller priority.
      PRI_DMA        : AHBMATPRIO_PRI_DMA_Field := 16#0#;
      --  Ethernet DMA priority.
      PRI_ETH        : AHBMATPRIO_PRI_ETH_Field := 16#0#;
      --  LCD DMA priority.
      PRI_LCD        : AHBMATPRIO_PRI_LCD_Field := 16#0#;
      --  USB0 DMA priority.
      PRI_USB        : AHBMATPRIO_PRI_USB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SDIO priority.
      PRI_SDIO       : AHBMATPRIO_PRI_SDIO_Field := 16#0#;
      --  MCAN1 priority.
      PRI_MCAN       : AHBMATPRIO_PRI_MCAN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SHA priority.
      PRI_SHA        : AHBMATPRIO_PRI_SHA_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBMATPRIO_Register use record
      PRI_ICODE      at 0 range 0 .. 1;
      PRI_DCODE      at 0 range 2 .. 3;
      PRI_SYS        at 0 range 4 .. 5;
      PRI_DMA        at 0 range 6 .. 9;
      PRI_ETH        at 0 range 10 .. 11;
      PRI_LCD        at 0 range 12 .. 13;
      PRI_USB        at 0 range 14 .. 17;
      PRI_SDIO       at 0 range 18 .. 19;
      PRI_MCAN       at 0 range 20 .. 23;
      PRI_SHA        at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
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

   --  NMI Source Select
   type NMISRC_Register is record
      --  The IRQ number of the interrupt that acts as the Non-Maskable
      --  Interrupt (NMI) for the Cortex-M4, if enabled by NMIENM4.
      IRQM4         : NMISRC_IRQM4_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Write a 1 to this bit to enable the Non-Maskable Interrupt (NMI)
      --  source selected by IRQM4.
      NMIENM4       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMISRC_Register use record
      IRQM4         at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      NMIENM4       at 0 range 31 .. 31;
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
      --  EEPROM reset control.
      EEPROM_RST     : Boolean := False;
      --  SPIFI reset control.
      SPIFI_RST      : Boolean := False;
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
      --  GPIO2 reset control.
      GPIO2_RST      : Boolean := False;
      --  GPIO3 reset control.
      GPIO3_RST      : Boolean := False;
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
      EEPROM_RST     at 0 range 9 .. 9;
      SPIFI_RST      at 0 range 10 .. 10;
      MUX_RST        at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      IOCON_RST      at 0 range 13 .. 13;
      GPIO0_RST      at 0 range 14 .. 14;
      GPIO1_RST      at 0 range 15 .. 15;
      GPIO2_RST      at 0 range 16 .. 16;
      GPIO3_RST      at 0 range 17 .. 17;
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
      --  Multi-rate timer (MRT) reset control. 0 = Clear reset to this
      --  function. 1 = Assert reset to this function.
      MRT_RST        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  State configurable timer 0 (SCT0) reset control. 0 = Clear reset to
      --  this function. 1 = Assert reset to this function.
      SCT0_RST       : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  0 = Clear reset to this function.
      MCAN0_RST      : Boolean := False;
      --  0 = Clear reset to this function.
      MCAN1_RST      : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Micro-tick Timer reset control. 0 = Clear reset to this function. 1 =
      --  Assert reset to this function.
      UTICK_RST      : Boolean := False;
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
      DMIC_RST       : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  CTIMER2 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function
      CTIMER2_RST    : Boolean := False;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  USB0 reset control. 0 = Clear reset to this function. 1 = Assert
      --  reset to this function.
      USB0D_RST      : Boolean := False;
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
      MRT_RST        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SCT0_RST       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      MCAN0_RST      at 0 range 7 .. 7;
      MCAN1_RST      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      UTICK_RST      at 0 range 10 .. 10;
      FC0_RST        at 0 range 11 .. 11;
      FC1_RST        at 0 range 12 .. 12;
      FC2_RST        at 0 range 13 .. 13;
      FC3_RST        at 0 range 14 .. 14;
      FC4_RST        at 0 range 15 .. 15;
      FC5_RST        at 0 range 16 .. 16;
      FC6_RST        at 0 range 17 .. 17;
      FC7_RST        at 0 range 18 .. 18;
      DMIC_RST       at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CTIMER2_RST    at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      USB0D_RST      at 0 range 25 .. 25;
      CTIMER0_RST    at 0 range 26 .. 26;
      CTIMER1_RST    at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Peripheral reset control n
   type PRESETCTRL2_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  LCD reset control.
      LCD_RST        : Boolean := False;
      --  SDIO reset control.
      SDIO_RST       : Boolean := False;
      --  USB1 Host reset control.
      USB1H_RST      : Boolean := False;
      --  USB1 Device reset control.
      USB1D_RST      : Boolean := False;
      --  USB1 RAM reset control.
      USB1RAM_RST    : Boolean := False;
      --  EMC reset control.
      EMC_RESET      : Boolean := False;
      --  Ethernet reset control.
      ETH_RST        : Boolean := False;
      --  GPIO4 reset control.
      GPIO4_RST      : Boolean := False;
      --  GPIO5 reset control.
      GPIO5_RST      : Boolean := False;
      --  AES reset control.
      AES_RST        : Boolean := False;
      --  OTP reset control.
      OTP_RST        : Boolean := False;
      --  RNG reset control.
      RNG_RST        : Boolean := False;
      --  Flexcomm 8 reset control.
      FC8_RST        : Boolean := False;
      --  Flexcomm 9 reset control.
      FC9_RST        : Boolean := False;
      --  USB0 HOST master reset control.
      USB0HMR_RST    : Boolean := False;
      --  USB0 HOST slave reset control.
      USB0HSL_RST    : Boolean := False;
      --  SHA reset control.
      SHA_RST        : Boolean := False;
      --  Smart card 0 reset control.
      SC0_RST        : Boolean := False;
      --  Smart card 1 reset control.
      SC1_RST        : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESETCTRL2_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LCD_RST        at 0 range 2 .. 2;
      SDIO_RST       at 0 range 3 .. 3;
      USB1H_RST      at 0 range 4 .. 4;
      USB1D_RST      at 0 range 5 .. 5;
      USB1RAM_RST    at 0 range 6 .. 6;
      EMC_RESET      at 0 range 7 .. 7;
      ETH_RST        at 0 range 8 .. 8;
      GPIO4_RST      at 0 range 9 .. 9;
      GPIO5_RST      at 0 range 10 .. 10;
      AES_RST        at 0 range 11 .. 11;
      OTP_RST        at 0 range 12 .. 12;
      RNG_RST        at 0 range 13 .. 13;
      FC8_RST        at 0 range 14 .. 14;
      FC9_RST        at 0 range 15 .. 15;
      USB0HMR_RST    at 0 range 16 .. 16;
      USB0HSL_RST    at 0 range 17 .. 17;
      SHA_RST        at 0 range 18 .. 18;
      SC0_RST        at 0 range 19 .. 19;
      SC1_RST        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Set bits in PRESETCTRLn

   --  Set bits in PRESETCTRLn
   type PRESETCTRLSET_Registers is array (0 .. 2) of HAL.UInt32
     with Volatile;

   --  Clear bits in PRESETCTRLn

   --  Clear bits in PRESETCTRLn
   type PRESETCTRLCLR_Registers is array (0 .. 2) of HAL.UInt32
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
   type AHBCLKCTRL0_SRAM_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for AHBCLKCTRL0_SRAM
   type AHBCLKCTRL0_SRAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM as a value
            Val : HAL.UInt3;
         when True =>
            --  SRAM as an array
            Arr : AHBCLKCTRL0_SRAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for AHBCLKCTRL0_SRAM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  AHBCLKCTRL0_GPIO array
   type AHBCLKCTRL0_GPIO_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for AHBCLKCTRL0_GPIO
   type AHBCLKCTRL0_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt4;
         when True =>
            --  GPIO as an array
            Arr : AHBCLKCTRL0_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for AHBCLKCTRL0_GPIO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
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
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Enables the clock for the flash controller. 0 = Disable; 1 = Enable.
      --  This clock is needed for flash programming, not for flash read.
      FLASH          : Boolean := True;
      --  Enables the clock for the Flash accelerator. 0 = Disable; 1 = Enable.
      --  This clock is needed if the flash is being read.
      FMC            : Boolean := True;
      --  Enables the clock for EEPROM.
      EEPROM         : Boolean := False;
      --  Enables the clock for the SPIFI. 0 = Disable; 1 = Enable.
      SPIFI          : Boolean := False;
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
      --  Enables the bus clock for the RTC. 0 = Disable; 1 = Enable.
      RTC            : Boolean := False;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Enables the clock for the ADC0 register interface.
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
      SRAM           at 0 range 3 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      FLASH          at 0 range 7 .. 7;
      FMC            at 0 range 8 .. 8;
      EEPROM         at 0 range 9 .. 9;
      SPIFI          at 0 range 10 .. 10;
      INPUTMUX       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      IOCON          at 0 range 13 .. 13;
      GPIO           at 0 range 14 .. 17;
      PINT           at 0 range 18 .. 18;
      GINT           at 0 range 19 .. 19;
      DMA            at 0 range 20 .. 20;
      CRC            at 0 range 21 .. 21;
      WWDT           at 0 range 22 .. 22;
      RTC            at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      ADC0           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AHBCLKCTRL1_MCAN array
   type AHBCLKCTRL1_MCAN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL1_MCAN
   type AHBCLKCTRL1_MCAN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MCAN as a value
            Val : HAL.UInt2;
         when True =>
            --  MCAN as an array
            Arr : AHBCLKCTRL1_MCAN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL1_MCAN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
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
      --  Enables the clock for the Multi-Rate Timer.
      MRT            : Boolean := False;
      --  Enables the clock for the Repetitive Interrupt Timer.
      RIT            : Boolean := False;
      --  Enables the clock for SCT0.
      SCT0           : Boolean := False;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  Enables the clock for MCAN0.
      MCAN           : AHBCLKCTRL1_MCAN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Enables the clock for the Micro-tick Timer. 0 = Disable; 1 = Enable.
      UTICK          : Boolean := False;
      --  Enables the clock for Flexcomm 0. 0 = Disable; 1 = Enable.
      FLEXCOMM       : AHBCLKCTRL1_FLEXCOMM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enables the clock for the digital microphone interface. 0 = Disable;
      --  1 = Enable.
      DMIC           : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Enables the clock for CTIMER 2. 0 = Disable; 1 = Enable.
      CTIMER2        : Boolean := False;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  Enables the clock for the USB0 device interface. 0 = Disable; 1 =
      --  Enable.
      USB0D          : Boolean := False;
      --  Enables the clock for timer CTIMER0. 0 = Disable; 1 = Enable.
      CTIMER         : AHBCLKCTRL1_CTIMER_Field :=
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
      Reserved_3_6   at 0 range 3 .. 6;
      MCAN           at 0 range 7 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      UTICK          at 0 range 10 .. 10;
      FLEXCOMM       at 0 range 11 .. 18;
      DMIC           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CTIMER2        at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      USB0D          at 0 range 25 .. 25;
      CTIMER         at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  AHBCLKCTRL2_GPIO array
   type AHBCLKCTRL2_GPIO_Field_Array is array (4 .. 5) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL2_GPIO
   type AHBCLKCTRL2_GPIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPIO as a value
            Val : HAL.UInt2;
         when True =>
            --  GPIO as an array
            Arr : AHBCLKCTRL2_GPIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL2_GPIO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHBCLKCTRL2_FLEXCOMM array
   type AHBCLKCTRL2_FLEXCOMM_Field_Array is array (8 .. 9) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL2_FLEXCOMM
   type AHBCLKCTRL2_FLEXCOMM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLEXCOMM as a value
            Val : HAL.UInt2;
         when True =>
            --  FLEXCOMM as an array
            Arr : AHBCLKCTRL2_FLEXCOMM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL2_FLEXCOMM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHBCLKCTRL2_SC array
   type AHBCLKCTRL2_SC_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for AHBCLKCTRL2_SC
   type AHBCLKCTRL2_SC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SC as a value
            Val : HAL.UInt2;
         when True =>
            --  SC as an array
            Arr : AHBCLKCTRL2_SC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for AHBCLKCTRL2_SC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  AHB Clock control n
   type AHBCLKCTRL2_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Enables the clock for the LCD interface.
      LCD            : Boolean := False;
      --  Enables the clock for the SDIO interface.
      SDIO           : Boolean := False;
      --  Enables the clock for the USB1 host interface.
      USB1H          : Boolean := False;
      --  Enables the clock for the USB1 device interface.
      USB1D          : Boolean := False;
      --  Enables the clock for the USB1 RAM interface.
      USB1RAM        : Boolean := False;
      --  Enables the clock for the EMC interface.
      EMC            : Boolean := False;
      --  Enables the clock for the ethernet interface.
      ETH            : Boolean := False;
      --  Enables the clock for the GPIO4 interface.
      GPIO           : AHBCLKCTRL2_GPIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enables the clock for the AES interface.
      AES            : Boolean := False;
      --  Enables the clock for the OTP interface.
      OTP            : Boolean := False;
      --  Enables the clock for the RNG interface.
      RNG            : Boolean := False;
      --  Enables the clock for the Flexcomm8 interface.
      FLEXCOMM       : AHBCLKCTRL2_FLEXCOMM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enables the clock for the USB host master interface.
      USB0HMR        : Boolean := False;
      --  Enables the clock for the USB host slave interface.
      USB0HSL        : Boolean := False;
      --  Enables the clock for the SHA interface.
      SHA0           : Boolean := False;
      --  Enables the clock for the Smart card0 interface.
      SC             : AHBCLKCTRL2_SC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKCTRL2_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      LCD            at 0 range 2 .. 2;
      SDIO           at 0 range 3 .. 3;
      USB1H          at 0 range 4 .. 4;
      USB1D          at 0 range 5 .. 5;
      USB1RAM        at 0 range 6 .. 6;
      EMC            at 0 range 7 .. 7;
      ETH            at 0 range 8 .. 8;
      GPIO           at 0 range 9 .. 10;
      AES            at 0 range 11 .. 11;
      OTP            at 0 range 12 .. 12;
      RNG            at 0 range 13 .. 13;
      FLEXCOMM       at 0 range 14 .. 15;
      USB0HMR        at 0 range 16 .. 16;
      USB0HSL        at 0 range 17 .. 17;
      SHA0           at 0 range 18 .. 18;
      SC             at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Set bits in AHBCLKCTRLn

   --  Set bits in AHBCLKCTRLn
   type AHBCLKCTRLSET_Registers is array (0 .. 2) of HAL.UInt32
     with Volatile;

   --  Clear bits in AHBCLKCTRLn

   --  Clear bits in AHBCLKCTRLn
   type AHBCLKCTRLCLR_Registers is array (0 .. 2) of HAL.UInt32
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
      --  USB PLL clock (usb_pll_clk)
      Usb_Pll_Clock,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  RTC oscillator 32 kHz output (32k_clk)
      Rtc_Osc_Output)
     with Size => 3;
   for CLKOUTSELA_SEL_Field use
     (Main_Clock => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Fro_Hf => 3,
      System_Pll_Output => 4,
      Usb_Pll_Clock => 5,
      Audio_Pll_Output => 6,
      Rtc_Osc_Output => 7);

   --  CLKOUT clock source select A
   type CLKOUTSELA_Register is record
      --  CLKOUT clock source selection
      SEL           : CLKOUTSELA_SEL_Field := NRF_SVD.SYSCON.Rtc_Osc_Output;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTSELA_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  System PLL clock source selection.
   type SYSPLLCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  CLKIN (clk_in)
      Clkin,
      --  Watchdog oscillator (wdt_clk)
      Watchdog_Oscillator,
      --  RTC oscillator 32 kHz output (32k_clk)
      Rtc_Osc_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for SYSPLLCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Clkin => 1,
      Watchdog_Oscillator => 2,
      Rtc_Osc_Output => 3,
      None => 7);

   --  PLL clock source select
   type SYSPLLCLKSEL_Register is record
      --  System PLL clock source selection.
      SEL           : SYSPLLCLKSEL_SEL_Field := NRF_SVD.SYSCON.Fro_12_Mhz;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Audio PLL clock source selection.
   type AUDPLLCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  CLKIN (clk_in)
      Clkin,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for AUDPLLCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Clkin => 1,
      None => 7);

   --  Audio PLL clock source select
   type AUDPLLCLKSEL_Register is record
      --  Audio PLL clock source selection.
      SEL           : AUDPLLCLKSEL_SEL_Field := NRF_SVD.SYSCON.Fro_12_Mhz;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLCLKSEL_Register use record
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
      --  USB PLL clock (usb_pll_clk)
      Usb_Pll_Output,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for SPIFICLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Usb_Pll_Output => 2,
      Fro_Hf => 3,
      Audio_Pll_Output => 4,
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
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  USB PLL clock (usb_pll_clk)
      Usb_Pll_Clock,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Clock,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for ADCCLKSEL_SEL_Field use
     (Fro_Hf => 0,
      System_Pll_Output => 1,
      Usb_Pll_Clock => 2,
      Audio_Pll_Clock => 3,
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

   --  USB0 device clock source selection.
   type USB0CLKSEL_SEL_Field is
     (
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  USB PLL clock (usb_pll_clk)
      Usb_Pll_Clock,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for USB0CLKSEL_SEL_Field use
     (Fro_Hf => 0,
      System_Pll_Output => 1,
      Usb_Pll_Clock => 2,
      None => 7);

   --  USB0 clock source select
   type USB0CLKSEL_Register is record
      --  USB0 device clock source selection.
      SEL           : USB0CLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB0CLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  USB1 PHY clock source selection.
   type USB1CLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  USB PLL clock (usb_pll_clk)
      Usb_Pll_Clock,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for USB1CLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Usb_Pll_Clock => 2,
      None => 7);

   --  USB1 clock source select
   type USB1CLKSEL_Register is record
      --  USB1 PHY clock source selection.
      SEL           : USB1CLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB1CLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flexcomm clock source selection. One per Flexcomm.
   type FCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  FRO HF DIV (fro_hf_div)
      Fro_Hf_Div,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  MCLK pin input, when selected in IOCON (mclk_in)
      Mclk_Input,
      --  FRG clock, the output of the fractional rate generator (frg_clk)
      Frg_Clock_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for FCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Fro_Hf_Div => 1,
      Audio_Pll_Output => 2,
      Mclk_Input => 3,
      Frg_Clock_Output => 4,
      None => 7);

   --  Flexcomm 0 clock source select
   type FCLKSEL_Register is record
      --  Flexcomm clock source selection. One per Flexcomm.
      SEL           : FCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Flexcomm 0 clock source select
   type FCLKSEL_Registers is array (0 .. 9) of FCLKSEL_Register
     with Volatile;

   --  MCLK source select. This may be used by Flexcomms that support I2S,
   --  and/or by the digital microphone subsystem.
   type MCLKCLKSEL_SEL_Field is
     (
      --  FRO HF DIV (fro_hf_div)
      Fro_Hf_Div,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for MCLKCLKSEL_SEL_Field use
     (Fro_Hf_Div => 0,
      Audio_Pll_Output => 1,
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

   --  DMIC (audio subsystem) clock source select.
   type DMICCLKSEL_SEL_Field is
     (
      --  FRO 12 MHz (fro_12m)
      Fro_12_Mhz,
      --  FRO HF DIV (fro_hf_div)
      Fro_Hf_Div,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  MCLK pin input, when selected in IOCON (mclk_in)
      Mclk_Input,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for DMICCLKSEL_SEL_Field use
     (Fro_12_Mhz => 0,
      Fro_Hf_Div => 1,
      Audio_Pll_Output => 2,
      Mclk_Input => 3,
      None => 7);

   --  Digital microphone (DMIC) subsystem clock select
   type DMICCLKSEL_Register is record
      --  DMIC (audio subsystem) clock source select.
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

   --  SCT clock source select.
   type SCTCLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for SCTCLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Fro_Hf => 2,
      Audio_Pll_Output => 3,
      None => 7);

   --  SCTimer/PWM clock source select
   type SCTCLKSEL_Register is record
      --  SCT clock source select.
      SEL           : SCTCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  LCD clock source select.
   type LCDCLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  LCDCLKIN (LCDCLK_EXT)
      Lcdclkin,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 2;
   for LCDCLKSEL_SEL_Field use
     (Main_Clock => 0,
      Lcdclkin => 1,
      Fro_Hf => 2,
      None => 3);

   --  LCD clock source select
   type LCDCLKSEL_Register is record
      --  LCD clock source select.
      SEL           : LCDCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCLKSEL_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SDIO clock source select.
   type SDIOCLKSEL_SEL_Field is
     (
      --  Main clock (main_clk)
      Main_Clock,
      --  System PLL output (pll_clk)
      System_Pll_Output,
      --  USB PLL clock (usb_pll_clk)
      Usb_Pll_Clock,
      --  FRO 96 or 48 MHz (fro_hf)
      Fro_Hf,
      --  Audio PLL clock (audio_pll_clk)
      Audio_Pll_Output,
      --  None, this may be selected in order to reduce power when no output is
      --  needed.
      None)
     with Size => 3;
   for SDIOCLKSEL_SEL_Field use
     (Main_Clock => 0,
      System_Pll_Output => 1,
      Usb_Pll_Clock => 2,
      Fro_Hf => 3,
      Audio_Pll_Output => 4,
      None => 7);

   --  SDIO clock source select
   type SDIOCLKSEL_Register is record
      --  SDIO clock source select.
      SEL           : SDIOCLKSEL_SEL_Field := NRF_SVD.SYSCON.None;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIOCLKSEL_Register use record
      SEL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SYSTICKCLKDIV_DIV_Field is HAL.UInt8;

   --  SYSTICK clock divider
   type SYSTICKCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV           : SYSTICKCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTICKCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype ARMTRACECLKDIV_DIV_Field is HAL.UInt8;

   --  ARM Trace clock divider
   type ARMTRACECLKDIV_Register is record
      --  Clock divider value.
      DIV           : ARMTRACECLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARMTRACECLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype CAN0CLKDIV_DIV_Field is HAL.UInt8;

   --  MCAN0 clock divider
   type CAN0CLKDIV_Register is record
      --  Clock divider value.
      DIV           : CAN0CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype CAN1CLKDIV_DIV_Field is HAL.UInt8;

   --  MCAN1 clock divider
   type CAN1CLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV           : CAN1CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN1CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype SC0CLKDIV_DIV_Field is HAL.UInt8;

   --  Smartcard0 clock divider
   type SC0CLKDIV_Register is record
      --  Clock divider value.
      DIV           : SC0CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SC0CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype SC1CLKDIV_DIV_Field is HAL.UInt8;

   --  Smartcard1 clock divider
   type SC1CLKDIV_Register is record
      --  Clock divider value.
      DIV           : SC1CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SC1CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype AHBCLKDIV_DIV_Field is HAL.UInt8;

   --  AHB clock divider
   type AHBCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV           : AHBCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_30 : HAL.UInt23 := 16#0#;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_30 at 0 range 8 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype CLKOUTDIV_DIV_Field is HAL.UInt8;

   --  CLKOUT clock divider
   type CLKOUTDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV           : CLKOUTDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET         : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKOUTDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype FROHFCLKDIV_DIV_Field is HAL.UInt8;

   --  FROHF clock divider
   type FROHFCLKDIV_Register is record
      --  Clock divider value.
      DIV           : FROHFCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FROHFCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype SPIFICLKDIV_DIV_Field is HAL.UInt8;

   --  SPIFI clock divider
   type SPIFICLKDIV_Register is record
      --  Clock divider value.
      DIV           : SPIFICLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET         : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPIFICLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype ADCCLKDIV_DIV_Field is HAL.UInt8;

   --  ADC clock divider
   type ADCCLKDIV_Register is record
      --  Clock divider value.
      DIV           : ADCCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype USB0CLKDIV_DIV_Field is HAL.UInt8;

   --  USB0 clock divider
   type USB0CLKDIV_Register is record
      --  Clock divider value.
      DIV           : USB0CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB0CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype USB1CLKDIV_DIV_Field is HAL.UInt8;

   --  USB1 clock divider
   type USB1CLKDIV_Register is record
      --  Clock divider value.
      DIV           : USB1CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB1CLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
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
      DIV           : DMICCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter. Can be used to make sure a new divider
      --  value is used right away rather than completing the previous count.
      RESET         : Boolean := False;
      --  Halts the divider counter. The intent is to allow the divider clock
      --  source to be changed without the risk of a glitch at the output.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMICCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype MCLKDIV_DIV_Field is HAL.UInt8;

   --  I2S MCLK clock divider
   type MCLKDIV_Register is record
      --  Clock divider value. 0: Divide by 1 up to 255: Divide by 256.
      DIV           : MCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype LCDCLKDIV_DIV_Field is HAL.UInt8;

   --  LCD clock divider
   type LCDCLKDIV_Register is record
      --  Clock divider value.
      DIV           : LCDCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype SCTCLKDIV_DIV_Field is HAL.UInt8;

   --  SCT/PWM clock divider
   type SCTCLKDIV_Register is record
      --  Clock divider value.
      DIV           : SCTCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype EMCCLKDIV_DIV_Field is HAL.UInt8;

   --  EMC clock divider
   type EMCCLKDIV_Register is record
      --  Clock divider value.
      DIV           : EMCCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
   end record;

   subtype SDIOCLKDIV_DIV_Field is HAL.UInt8;

   --  SDIO clock divider
   type SDIOCLKDIV_Register is record
      --  Clock divider value.
      DIV           : SDIOCLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_8_28 : HAL.UInt21 := 16#0#;
      --  Resets the divider counter.
      RESET         : Boolean := False;
      --  Halts the divider counter.
      HALT          : Boolean := True;
      --  Divider status flag.
      REQFLAG       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIOCLKDIV_Register use record
      DIV           at 0 range 0 .. 7;
      Reserved_8_28 at 0 range 8 .. 28;
      RESET         at 0 range 29 .. 29;
      HALT          at 0 range 30 .. 30;
      REQFLAG       at 0 range 31 .. 31;
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
      Reserved_7_11  : HAL.UInt5 := 16#1A#;
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

   --  USB0 clock control
   type USB0CLKCTRL_Register is record
      --  USB0 Device USB0_NEEDCLK signal control.
      AP_FS_DEV_CLK   : Boolean := False;
      --  USB0 Device USB0_NEEDCLK polarity for triggering the USB0 wake-up
      --  interrupt.
      POL_FS_DEV_CLK  : Boolean := False;
      --  USB0 Host USB0_NEEDCLK signal control.
      AP_FS_HOST_CLK  : Boolean := False;
      --  USB0 Host USB0_NEEDCLK polarity for triggering the USB0 wake-up
      --  interrupt.
      POL_FS_HOST_CLK : Boolean := False;
      --  Internal pull-up disable control.
      PU_DISABLE      : Boolean := False;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB0CLKCTRL_Register use record
      AP_FS_DEV_CLK   at 0 range 0 .. 0;
      POL_FS_DEV_CLK  at 0 range 1 .. 1;
      AP_FS_HOST_CLK  at 0 range 2 .. 2;
      POL_FS_HOST_CLK at 0 range 3 .. 3;
      PU_DISABLE      at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   --  USB0 clock status
   type USB0CLKSTAT_Register is record
      --  USB0 Device USB0_NEEDCLK signal status.
      DEV_NEED_CLKST  : Boolean := False;
      --  USB0 Host USB0_NEEDCLK signal status.
      HOST_NEED_CLKST : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB0CLKSTAT_Register use record
      DEV_NEED_CLKST  at 0 range 0 .. 0;
      HOST_NEED_CLKST at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
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

   --  MCLK input/output control
   type MCLKIO_Register is record
      --  MCLK direction control.
      DIR           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCLKIO_Register use record
      DIR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  USB1 clock control
   type USB1CLKCTRL_Register is record
      --  USB1 Device need_clock signal control.
      AP_FS_DEV_CLK   : Boolean := False;
      --  USB1 Device need_clock polarity for triggering the USB1 wake-up
      --  interrupt.
      POL_FS_DEV_CLK  : Boolean := False;
      --  USB1 Host need_clock signal control.
      AP_FS_HOST_CLK  : Boolean := False;
      --  USB1 Host need_clock polarity for triggering the USB1 wake-up
      --  interrupt.
      POL_FS_HOST_CLK : Boolean := False;
      --  External user wake-up signal for device mode; asserting this signal
      --  (active low) will result in exiting the low power mode; input to
      --  asynchronous control logic.
      HS_DEV_WAKEUP_N : Boolean := True;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB1CLKCTRL_Register use record
      AP_FS_DEV_CLK   at 0 range 0 .. 0;
      POL_FS_DEV_CLK  at 0 range 1 .. 1;
      AP_FS_HOST_CLK  at 0 range 2 .. 2;
      POL_FS_HOST_CLK at 0 range 3 .. 3;
      HS_DEV_WAKEUP_N at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   --  USB1 clock status
   type USB1CLKSTAT_Register is record
      --  USB1 Device USB1_NEEDCLK signal status.
      DEV_NEED_CLKST  : Boolean := False;
      --  USB1 Device host USB1_NEEDCLK signal status.
      HOST_NEED_CLKST : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB1CLKSTAT_Register use record
      DEV_NEED_CLKST  at 0 range 0 .. 0;
      HOST_NEED_CLKST at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  EMC system control
   type EMCSYSCTRL_Register is record
      --  EMC Shift Control.
      EMCSC         : Boolean := True;
      --  EMC Reset Disable.
      EMCRD         : Boolean := False;
      --  External Memory Controller burst control.
      EMCBC         : Boolean := False;
      --  External Memory Controller clock select.
      EMCFBCLKINSEL : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCSYSCTRL_Register use record
      EMCSC         at 0 range 0 .. 0;
      EMCRD         at 0 range 1 .. 1;
      EMCBC         at 0 range 2 .. 2;
      EMCFBCLKINSEL at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype EMCDLYCTRL_CMD_DELAY_Field is HAL.UInt5;
   subtype EMCDLYCTRL_FBCLK_DELAY_Field is HAL.UInt5;

   --  EMC clock delay control
   type EMCDLYCTRL_Register is record
      --  Programmable delay value for EMC outputs in command delayed mode.
      CMD_DELAY      : EMCDLYCTRL_CMD_DELAY_Field := 16#10#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Programmable delay value for the feedback clock that controls input
      --  data sampling.
      FBCLK_DELAY    : EMCDLYCTRL_FBCLK_DELAY_Field := 16#2#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCDLYCTRL_Register use record
      CMD_DELAY      at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FBCLK_DELAY    at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype EMCDLYCAL_CALVALUE_Field is HAL.UInt8;

   --  EMC delay chain calibration control
   type EMCDLYCAL_Register is record
      --  Returns the count of the approximately 50 MHz ring oscillator that
      --  occur during 32 clocks of the FRO 12 MHz.
      CALVALUE       : EMCDLYCAL_CALVALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Start control bit for the EMC calibration counter.
      START          : Boolean := False;
      --  Measurement completion flag.
      DONE           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCDLYCAL_Register use record
      CALVALUE       at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      START          at 0 range 14 .. 14;
      DONE           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Ethernet PHY Selection
   type ETHPHYSEL_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  PHY interface select.
      PHY_SEL       : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHPHYSEL_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PHY_SEL       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ETHSBDCTRL_SBD_CTRL_Field is HAL.UInt2;

   --  Ethernet SBD flow control
   type ETHSBDCTRL_Register is record
      --  Sideband Flow Control.
      SBD_CTRL      : ETHSBDCTRL_SBD_CTRL_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSBDCTRL_Register use record
      SBD_CTRL      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SDIOCLKCTRL_CCLK_DRV_PHASE_Field is HAL.UInt2;
   subtype SDIOCLKCTRL_CCLK_SAMPLE_PHASE_Field is HAL.UInt2;
   subtype SDIOCLKCTRL_CCLK_DRV_DELAY_Field is HAL.UInt5;
   subtype SDIOCLKCTRL_CCLK_SAMPLE_DELAY_Field is HAL.UInt5;

   --  SDIO CCLKIN phase and delay control
   type SDIOCLKCTRL_Register is record
      --  Programmable delay value by which cclk_in_drv is phase-shifted with
      --  regard to cclk_in.
      CCLK_DRV_PHASE           : SDIOCLKCTRL_CCLK_DRV_PHASE_Field := 16#0#;
      --  Programmable delay value by which cclk_in_sample is delayed with
      --  regard to cclk_in.
      CCLK_SAMPLE_PHASE        : SDIOCLKCTRL_CCLK_SAMPLE_PHASE_Field := 16#0#;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  sdio_clk by 2, before feeding into ccl_in, cclk_in_sample, and
      --  cclk_in_drv.
      PHASE_ACTIVE             : Boolean := False;
      --  unspecified
      Reserved_8_15            : HAL.UInt8 := 16#0#;
      --  Programmable delay value by which cclk_in_drv is delayed with regard
      --  to cclk_in.
      CCLK_DRV_DELAY           : SDIOCLKCTRL_CCLK_DRV_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_21_22           : HAL.UInt2 := 16#0#;
      --  Enables drive delay, as controlled by the CCLK_DRV_DELAY field.
      CCLK_DRV_DELAY_ACTIVE    : Boolean := False;
      --  Programmable delay value by which cclk_in_sample is delayed with
      --  regard to cclk_in.
      CCLK_SAMPLE_DELAY        : SDIOCLKCTRL_CCLK_SAMPLE_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_29_30           : HAL.UInt2 := 16#0#;
      --  Enables sample delay, as controlled by the CCLK_SAMPLE_DELAY field.
      CCLK_SAMPLE_DELAY_ACTIVE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIOCLKCTRL_Register use record
      CCLK_DRV_PHASE           at 0 range 0 .. 1;
      CCLK_SAMPLE_PHASE        at 0 range 2 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      PHASE_ACTIVE             at 0 range 7 .. 7;
      Reserved_8_15            at 0 range 8 .. 15;
      CCLK_DRV_DELAY           at 0 range 16 .. 20;
      Reserved_21_22           at 0 range 21 .. 22;
      CCLK_DRV_DELAY_ACTIVE    at 0 range 23 .. 23;
      CCLK_SAMPLE_DELAY        at 0 range 24 .. 28;
      Reserved_29_30           at 0 range 29 .. 30;
      CCLK_SAMPLE_DELAY_ACTIVE at 0 range 31 .. 31;
   end record;

   subtype FROCTRL_TRIM_Field is HAL.UInt14;
   subtype FROCTRL_FREQTRIM_Field is HAL.UInt8;

   --  FRO oscillator control
   type FROCTRL_Register is record
      --  This value is factory trimmed to account for bias and temperature
      --  compensation.
      TRIM           : FROCTRL_TRIM_Field := 16#0#;
      --  Select the FRO HF output frequency.
      SEL            : Boolean := True;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Frequency trim.
      FREQTRIM       : FROCTRL_FREQTRIM_Field := 16#0#;
      --  USB clock adjust mode.
      USBCLKADJ      : Boolean := False;
      --  USB Mode value Change flag.
      USBMODCHG      : Boolean := False;
      --  unspecified
      Reserved_26_29 : HAL.UInt4 := 16#0#;
      --  High speed clock enable.
      HSPDCLK        : Boolean := False;
      --  Write Trim value.
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

   --  System oscillator control
   type SYSOSCCTRL_Register is record
      --  Bypass system oscillator.
      BYPASS        : Boolean := False;
      --  Determines frequency range for system oscillator.
      FREQRANGE     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSOSCCTRL_Register use record
      BYPASS        at 0 range 0 .. 0;
      FREQRANGE     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype WDTOSCCTRL_DIVSEL_Field is HAL.UInt5;
   subtype WDTOSCCTRL_FREQSEL_Field is HAL.UInt5;

   --  Watchdog oscillator control
   type WDTOSCCTRL_Register is record
      --  Divider select.
      DIVSEL         : WDTOSCCTRL_DIVSEL_Field := 16#0#;
      --  Frequency select.
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

   --  RTC oscillator 32 kHz output control
   type RTCOSCCTRL_Register is record
      --  RTC 32 kHz clock enable.
      EN            : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCOSCCTRL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype USBPLLCTRL_MSEL_Field is HAL.UInt8;
   subtype USBPLLCTRL_PSEL_Field is HAL.UInt2;
   subtype USBPLLCTRL_NSEL_Field is HAL.UInt2;

   --  Direct CCO clock output control.
   type USBPLLCTRL_DIRECT_Field is
     (
      --  CCO Clock signal goes through post divider.
      Disabled,
      --  CCO Clock signal goes directly to output(s)..
      Enabled)
     with Size => 1;
   for USBPLLCTRL_DIRECT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Input clock bypass control.
   type USBPLLCTRL_BYPASS_Field is
     (
      --  CCO clock is sent to post dividers..
      Disabled,
      --  PLL input clock is sent to post dividers..
      Enabled)
     with Size => 1;
   for USBPLLCTRL_BYPASS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  USB PLL control
   type USBPLLCTRL_Register is record
      --  PLL feedback Divider value.
      MSEL           : USBPLLCTRL_MSEL_Field := 16#0#;
      --  PLL Divider value.
      PSEL           : USBPLLCTRL_PSEL_Field := 16#0#;
      --  PLL feedback Divider value.
      NSEL           : USBPLLCTRL_NSEL_Field := 16#0#;
      --  Direct CCO clock output control.
      DIRECT         : USBPLLCTRL_DIRECT_Field := NRF_SVD.SYSCON.Disabled;
      --  Input clock bypass control.
      BYPASS         : USBPLLCTRL_BYPASS_Field := NRF_SVD.SYSCON.Disabled;
      --  Feedback divider input clock control.
      FBSEL          : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPLLCTRL_Register use record
      MSEL           at 0 range 0 .. 7;
      PSEL           at 0 range 8 .. 9;
      NSEL           at 0 range 10 .. 11;
      DIRECT         at 0 range 12 .. 12;
      BYPASS         at 0 range 13 .. 13;
      FBSEL          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  USB PLL status
   type USBPLLSTAT_Register is record
      --  USBPLL lock indicator.
      LOCK          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPLLSTAT_Register use record
      LOCK          at 0 range 0 .. 0;
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

   --  System PLL control
   type SYSPLLCTRL_Register is record
      --  Bandwidth select R value.
      SELR           : SYSPLLCTRL_SELR_Field := 16#0#;
      --  Bandwidth select I value.
      SELI           : SYSPLLCTRL_SELI_Field := 16#0#;
      --  Bandwidth select P value.
      SELP           : SYSPLLCTRL_SELP_Field := 16#0#;
      --  PLL bypass control.
      BYPASS         : SYSPLLCTRL_BYPASS_Field := NRF_SVD.SYSCON.Disabled;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Disable upper frequency limiter.
      UPLIMOFF       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  PLL0 direct input enable.
      DIRECTI        : Boolean := False;
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
      Reserved_16_16 at 0 range 16 .. 16;
      UPLIMOFF       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DIRECTI        at 0 range 19 .. 19;
      DIRECTO        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  PLL status
   type SYSPLLSTAT_Register is record
      --  PLL lock indicator.
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

   --  PLL N divider
   type SYSPLLNDEC_Register is record
      --  Decoded N-divider coefficient value.
      NDEC           : SYSPLLNDEC_NDEC_Field := 16#0#;
      --  NDEC reload request.
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

   --  PLL P divider
   type SYSPLLPDEC_Register is record
      --  Decoded P-divider coefficient value.
      PDEC          : SYSPLLPDEC_PDEC_Field := 16#0#;
      --  .
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

   subtype SYSPLLMDEC_MDEC_Field is HAL.UInt17;

   --  System PLL M divider
   type SYSPLLMDEC_Register is record
      --  Decoded M-divider coefficient value.
      MDEC           : SYSPLLMDEC_MDEC_Field := 16#0#;
      --  MDEC reload request.
      MREQ           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSPLLMDEC_Register use record
      MDEC           at 0 range 0 .. 16;
      MREQ           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype AUDPLLCTRL_SELR_Field is HAL.UInt4;
   subtype AUDPLLCTRL_SELI_Field is HAL.UInt6;
   subtype AUDPLLCTRL_SELP_Field is HAL.UInt5;

   --  PLL bypass control.
   type AUDPLLCTRL_BYPASS_Field is
     (
      --  Bypass disabled. PLL CCO is sent to the PLL post-dividers.
      Disabled,
      --  Bypass enabled. PLL input clock is sent directly to the PLL output
      --  (default).
      Enabled)
     with Size => 1;
   for AUDPLLCTRL_BYPASS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PLL direct output enable
   type AUDPLLCTRL_DIRECTO_Field is
     (
      --  Disabled. The PLL output divider (P divider) is used to create the
      --  PLL output.
      Disabled,
      --  Enabled. The PLL output divider (P divider) is bypassed, the PLL CCO
      --  output is used as the PLL output.
      Enabled)
     with Size => 1;
   for AUDPLLCTRL_DIRECTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Audio PLL control
   type AUDPLLCTRL_Register is record
      --  Bandwidth select R value.
      SELR           : AUDPLLCTRL_SELR_Field := 16#0#;
      --  Bandwidth select I value.
      SELI           : AUDPLLCTRL_SELI_Field := 16#0#;
      --  .
      SELP           : AUDPLLCTRL_SELP_Field := 16#0#;
      --  PLL bypass control.
      BYPASS         : AUDPLLCTRL_BYPASS_Field := NRF_SVD.SYSCON.Disabled;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Disable upper frequency limiter.
      UPLIMOFF       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  PLL direct input enable.
      DIRECTI        : Boolean := False;
      --  PLL direct output enable
      DIRECTO        : AUDPLLCTRL_DIRECTO_Field := NRF_SVD.SYSCON.Disabled;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLCTRL_Register use record
      SELR           at 0 range 0 .. 3;
      SELI           at 0 range 4 .. 9;
      SELP           at 0 range 10 .. 14;
      BYPASS         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      UPLIMOFF       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      DIRECTI        at 0 range 19 .. 19;
      DIRECTO        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Audio PLL status
   type AUDPLLSTAT_Register is record
      --  PLL lock indicator.
      LOCK          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLSTAT_Register use record
      LOCK          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype AUDPLLNDEC_NDEC_Field is HAL.UInt10;

   --  Audio PLL N divider
   type AUDPLLNDEC_Register is record
      --  Decoded N-divider coefficient value.
      NDEC           : AUDPLLNDEC_NDEC_Field := 16#0#;
      --  NDEC reload request.
      NREQ           : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLNDEC_Register use record
      NDEC           at 0 range 0 .. 9;
      NREQ           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype AUDPLLPDEC_PDEC_Field is HAL.UInt7;

   --  Audio PLL P divider
   type AUDPLLPDEC_Register is record
      --  Decoded P-divider coefficient value.
      PDEC          : AUDPLLPDEC_PDEC_Field := 16#0#;
      --  PDEC reload request.
      PREQ          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLPDEC_Register use record
      PDEC          at 0 range 0 .. 6;
      PREQ          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AUDPLLMDEC_MDEC_Field is HAL.UInt17;

   --  Audio PLL M divider
   type AUDPLLMDEC_Register is record
      --  Decoded M-divider coefficient value.
      MDEC           : AUDPLLMDEC_MDEC_Field := 16#0#;
      --  MDEC reload request.
      MREQ           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLMDEC_Register use record
      MDEC           at 0 range 0 .. 16;
      MREQ           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype AUDPLLFRAC_CTRL_Field is HAL.UInt22;

   --  Audio PLL fractional divider control
   type AUDPLLFRAC_Register is record
      --  PLL fractional divider control word
      CTRL           : AUDPLLFRAC_CTRL_Field := 16#0#;
      --  Writing 1 to REQ signal loads CTRL value into fractional wrapper
      --  modulator.
      REQ            : Boolean := False;
      --  Select fractional divider.
      SEL_EXT        : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUDPLLFRAC_Register use record
      CTRL           at 0 range 0 .. 21;
      REQ            at 0 range 22 .. 22;
      SEL_EXT        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PDSLEEPCFG0_PDEN_VD array
   type PDSLEEPCFG0_PDEN_VD_Field_Array is array (3 .. 6) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PDSLEEPCFG0_PDEN_VD
   type PDSLEEPCFG0_PDEN_VD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDEN_VD as a value
            Val : HAL.UInt4;
         when True =>
            --  PDEN_VD as an array
            Arr : PDSLEEPCFG0_PDEN_VD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PDSLEEPCFG0_PDEN_VD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Sleep configuration register
   type PDSLEEPCFG0_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  FRO oscillator.
      PDEN_FRO       : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Temp sensor.
      PDEN_TS        : Boolean := True;
      --  Brown-out Detect reset.
      PDEN_BOD_RST   : Boolean := False;
      --  Brown-out Detect interrupt.
      PDEN_BOD_INTR  : Boolean := True;
      --  Analog supply for System Oscillator (also enable/disable bit 3 in
      --  PDRUNCFG1 register), Temperature Sensor (also, enable/disable bit 6),
      --  ADC (also, enable/disable bits 10, 19, and 23).
      PDEN_VD2_ANA   : Boolean := True;
      --  ADC power.
      PDEN_ADC0      : Boolean := True;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#3#;
      --  PDEN_SRAMX controls SRAMX (also enable/disable bit 27).
      PDEN_SRAMX     : Boolean := False;
      --  PDEN_SRAM0 controls SRAM0 (also enable/disable bit 27).
      PDEN_SRAM0     : Boolean := False;
      --  PDEN_SRAM1_2_3 controls SRAM1, SRAM2, and SRAM3 (also enable/disable
      --  bit 27).
      PDEN_SRAM1_2_3 : Boolean := False;
      --  PDEN_USB_SRAM controls USB_RAM (also enable/disable bit 27).
      PDEN_USB_RAM   : Boolean := False;
      --  ROM (also enable/disable bit 27).
      PDEN_ROM       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Vdda to the ADC, must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 23).
      PDEN_VDDA      : Boolean := True;
      --  Watchdog oscillator.
      PDEN_WDT_OSC   : Boolean := True;
      --  USB0 PHY power (also enable/disable bit 28).
      PDEN_USB0_PHY  : Boolean := True;
      --  System PLL (PLL0) power (also enable/disable bit 26).
      PDEN_SYS_PLL   : Boolean := True;
      --  VREFP to the ADC must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 19).
      PDEN_VREFP     : Boolean := True;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Power control for all PLLs.
      PDEN_VD        : PDSLEEPCFG0_PDEN_VD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDSLEEPCFG0_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PDEN_FRO       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      PDEN_TS        at 0 range 6 .. 6;
      PDEN_BOD_RST   at 0 range 7 .. 7;
      PDEN_BOD_INTR  at 0 range 8 .. 8;
      PDEN_VD2_ANA   at 0 range 9 .. 9;
      PDEN_ADC0      at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PDEN_SRAMX     at 0 range 13 .. 13;
      PDEN_SRAM0     at 0 range 14 .. 14;
      PDEN_SRAM1_2_3 at 0 range 15 .. 15;
      PDEN_USB_RAM   at 0 range 16 .. 16;
      PDEN_ROM       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      PDEN_VDDA      at 0 range 19 .. 19;
      PDEN_WDT_OSC   at 0 range 20 .. 20;
      PDEN_USB0_PHY  at 0 range 21 .. 21;
      PDEN_SYS_PLL   at 0 range 22 .. 22;
      PDEN_VREFP     at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      PDEN_VD        at 0 range 26 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Sleep configuration register
   type PDSLEEPCFG1_Register is record
      --  USB1 high speed PHY (also, enable/disable bit 28 in PDRUNCFG0
      --  register).
      PDEN_USB1_PHY : Boolean := False;
      --  USB PLL (PLL1) power (also, enable/disable bit 26 in PDRUNCFG0
      --  register).
      PDEN_USB1_PLL : Boolean := False;
      --  Audio PLL (PLL2) power and fractional divider (also, enable/disable
      --  bit 26 in PDRUNCFG0 register).
      PDEN_AUD_PLL  : Boolean := False;
      --  System Oscillator Power (also, enable/disable bit 9 in PDRUNCFG0
      --  register).
      PDEN_SYSOSC   : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  EEPROM power (also, enable/disable bit 29 in PDRUNCFG0 register).
      PDEN_EEPROM   : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#1#;
      --  Random Number Generator Power.
      PDEN_RNG      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#F81F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDSLEEPCFG1_Register use record
      PDEN_USB1_PHY at 0 range 0 .. 0;
      PDEN_USB1_PLL at 0 range 1 .. 1;
      PDEN_AUD_PLL  at 0 range 2 .. 2;
      PDEN_SYSOSC   at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      PDEN_EEPROM   at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      PDEN_RNG      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PDRUNCFG0_PDEN_VD array
   type PDRUNCFG0_PDEN_VD_Field_Array is array (3 .. 6) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PDRUNCFG0_PDEN_VD
   type PDRUNCFG0_PDEN_VD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDEN_VD as a value
            Val : HAL.UInt4;
         when True =>
            --  PDEN_VD as an array
            Arr : PDRUNCFG0_PDEN_VD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PDRUNCFG0_PDEN_VD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power configuration register
   type PDRUNCFG0_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  FRO oscillator.
      PDEN_FRO       : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Temp sensor.
      PDEN_TS        : Boolean := True;
      --  Brown-out Detect reset.
      PDEN_BOD_RST   : Boolean := False;
      --  Brown-out Detect interrupt.
      PDEN_BOD_INTR  : Boolean := True;
      --  Analog supply for System Oscillator (also enable/disable bit 3 in
      --  PDRUNCFG1 register), Temperature Sensor (also, enable/disable bit 6),
      --  ADC (also, enable/disable bits 10, 19, and 23).
      PDEN_VD2_ANA   : Boolean := True;
      --  ADC power.
      PDEN_ADC0      : Boolean := True;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#3#;
      --  PDEN_SRAMX controls SRAMX (also enable/disable bit 27).
      PDEN_SRAMX     : Boolean := False;
      --  PDEN_SRAM0 controls SRAM0 (also enable/disable bit 27).
      PDEN_SRAM0     : Boolean := False;
      --  PDEN_SRAM1_2_3 controls SRAM1, SRAM2, and SRAM3 (also enable/disable
      --  bit 27).
      PDEN_SRAM1_2_3 : Boolean := False;
      --  PDEN_USB_SRAM controls USB_RAM (also enable/disable bit 27).
      PDEN_USB_RAM   : Boolean := False;
      --  ROM (also enable/disable bit 27).
      PDEN_ROM       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Vdda to the ADC, must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 23).
      PDEN_VDDA      : Boolean := True;
      --  Watchdog oscillator.
      PDEN_WDT_OSC   : Boolean := True;
      --  USB0 PHY power (also enable/disable bit 28).
      PDEN_USB0_PHY  : Boolean := True;
      --  System PLL (PLL0) power (also enable/disable bit 26).
      PDEN_SYS_PLL   : Boolean := True;
      --  VREFP to the ADC must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 19).
      PDEN_VREFP     : Boolean := True;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Power control for all PLLs.
      PDEN_VD        : PDRUNCFG0_PDEN_VD_Field :=
                        (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFG0_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PDEN_FRO       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      PDEN_TS        at 0 range 6 .. 6;
      PDEN_BOD_RST   at 0 range 7 .. 7;
      PDEN_BOD_INTR  at 0 range 8 .. 8;
      PDEN_VD2_ANA   at 0 range 9 .. 9;
      PDEN_ADC0      at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PDEN_SRAMX     at 0 range 13 .. 13;
      PDEN_SRAM0     at 0 range 14 .. 14;
      PDEN_SRAM1_2_3 at 0 range 15 .. 15;
      PDEN_USB_RAM   at 0 range 16 .. 16;
      PDEN_ROM       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      PDEN_VDDA      at 0 range 19 .. 19;
      PDEN_WDT_OSC   at 0 range 20 .. 20;
      PDEN_USB0_PHY  at 0 range 21 .. 21;
      PDEN_SYS_PLL   at 0 range 22 .. 22;
      PDEN_VREFP     at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      PDEN_VD        at 0 range 26 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Power configuration register
   type PDRUNCFG1_Register is record
      --  USB1 high speed PHY (also, enable/disable bit 28 in PDRUNCFG0
      --  register).
      PDEN_USB1_PHY : Boolean := False;
      --  USB PLL (PLL1) power (also, enable/disable bit 26 in PDRUNCFG0
      --  register).
      PDEN_USB1_PLL : Boolean := False;
      --  Audio PLL (PLL2) power and fractional divider (also, enable/disable
      --  bit 26 in PDRUNCFG0 register).
      PDEN_AUD_PLL  : Boolean := False;
      --  System Oscillator Power (also, enable/disable bit 9 in PDRUNCFG0
      --  register).
      PDEN_SYSOSC   : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  EEPROM power (also, enable/disable bit 29 in PDRUNCFG0 register).
      PDEN_EEPROM   : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#1#;
      --  Random Number Generator Power.
      PDEN_RNG      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#14F81F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFG1_Register use record
      PDEN_USB1_PHY at 0 range 0 .. 0;
      PDEN_USB1_PLL at 0 range 1 .. 1;
      PDEN_AUD_PLL  at 0 range 2 .. 2;
      PDEN_SYSOSC   at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      PDEN_EEPROM   at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      PDEN_RNG      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PDRUNCFGSET0_PDEN_VD array
   type PDRUNCFGSET0_PDEN_VD_Field_Array is array (3 .. 6) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PDRUNCFGSET0_PDEN_VD
   type PDRUNCFGSET0_PDEN_VD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDEN_VD as a value
            Val : HAL.UInt4;
         when True =>
            --  PDEN_VD as an array
            Arr : PDRUNCFGSET0_PDEN_VD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PDRUNCFGSET0_PDEN_VD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power configuration set register
   type PDRUNCFGSET0_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  FRO oscillator.
      PDEN_FRO       : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Temp sensor.
      PDEN_TS        : Boolean := False;
      --  Brown-out Detect reset.
      PDEN_BOD_RST   : Boolean := False;
      --  Brown-out Detect interrupt.
      PDEN_BOD_INTR  : Boolean := False;
      --  Analog supply for System Oscillator (also enable/disable bit 3 in
      --  PDRUNCFG1 register), Temperature Sensor (also, enable/disable bit 6),
      --  ADC (also, enable/disable bits 10, 19, and 23).
      PDEN_VD2_ANA   : Boolean := False;
      --  ADC power.
      PDEN_ADC0      : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  PDEN_SRAMX controls SRAMX (also enable/disable bit 27).
      PDEN_SRAMX     : Boolean := False;
      --  PDEN_SRAM0 controls SRAM0 (also enable/disable bit 27).
      PDEN_SRAM0     : Boolean := False;
      --  PDEN_SRAM1_2_3 controls SRAM1, SRAM2, and SRAM3 (also enable/disable
      --  bit 27).
      PDEN_SRAM1_2_3 : Boolean := False;
      --  PDEN_USB_SRAM controls USB_RAM (also enable/disable bit 27).
      PDEN_USB_RAM   : Boolean := False;
      --  ROM (also enable/disable bit 27).
      PDEN_ROM       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Vdda to the ADC, must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 23).
      PDEN_VDDA      : Boolean := False;
      --  Watchdog oscillator.
      PDEN_WDT_OSC   : Boolean := False;
      --  USB0 PHY power (also enable/disable bit 28).
      PDEN_USB0_PHY  : Boolean := False;
      --  System PLL (PLL0) power (also enable/disable bit 26).
      PDEN_SYS_PLL   : Boolean := False;
      --  VREFP to the ADC must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 19).
      PDEN_VREFP     : Boolean := False;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Power control for all PLLs.
      PDEN_VD        : PDRUNCFGSET0_PDEN_VD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFGSET0_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PDEN_FRO       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      PDEN_TS        at 0 range 6 .. 6;
      PDEN_BOD_RST   at 0 range 7 .. 7;
      PDEN_BOD_INTR  at 0 range 8 .. 8;
      PDEN_VD2_ANA   at 0 range 9 .. 9;
      PDEN_ADC0      at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PDEN_SRAMX     at 0 range 13 .. 13;
      PDEN_SRAM0     at 0 range 14 .. 14;
      PDEN_SRAM1_2_3 at 0 range 15 .. 15;
      PDEN_USB_RAM   at 0 range 16 .. 16;
      PDEN_ROM       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      PDEN_VDDA      at 0 range 19 .. 19;
      PDEN_WDT_OSC   at 0 range 20 .. 20;
      PDEN_USB0_PHY  at 0 range 21 .. 21;
      PDEN_SYS_PLL   at 0 range 22 .. 22;
      PDEN_VREFP     at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      PDEN_VD        at 0 range 26 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Power configuration set register
   type PDRUNCFGSET1_Register is record
      --  USB1 high speed PHY (also, enable/disable bit 28 in PDRUNCFG0
      --  register).
      PDEN_USB1_PHY : Boolean := False;
      --  USB PLL (PLL1) power (also, enable/disable bit 26 in PDRUNCFG0
      --  register).
      PDEN_USB1_PLL : Boolean := False;
      --  Audio PLL (PLL2) power and fractional divider (also, enable/disable
      --  bit 26 in PDRUNCFG0 register).
      PDEN_AUD_PLL  : Boolean := False;
      --  System Oscillator Power (also, enable/disable bit 9 in PDRUNCFG0
      --  register).
      PDEN_SYSOSC   : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  EEPROM power (also, enable/disable bit 29 in PDRUNCFG0 register).
      PDEN_EEPROM   : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Random Number Generator Power.
      PDEN_RNG      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFGSET1_Register use record
      PDEN_USB1_PHY at 0 range 0 .. 0;
      PDEN_USB1_PLL at 0 range 1 .. 1;
      PDEN_AUD_PLL  at 0 range 2 .. 2;
      PDEN_SYSOSC   at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      PDEN_EEPROM   at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      PDEN_RNG      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PDRUNCFGCLR0_PDEN_VD array
   type PDRUNCFGCLR0_PDEN_VD_Field_Array is array (3 .. 6) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PDRUNCFGCLR0_PDEN_VD
   type PDRUNCFGCLR0_PDEN_VD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDEN_VD as a value
            Val : HAL.UInt4;
         when True =>
            --  PDEN_VD as an array
            Arr : PDRUNCFGCLR0_PDEN_VD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PDRUNCFGCLR0_PDEN_VD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power configuration clear register
   type PDRUNCFGCLR0_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  FRO oscillator.
      PDEN_FRO       : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Temp sensor.
      PDEN_TS        : Boolean := False;
      --  Brown-out Detect reset.
      PDEN_BOD_RST   : Boolean := False;
      --  Brown-out Detect interrupt.
      PDEN_BOD_INTR  : Boolean := False;
      --  Analog supply for System Oscillator (also enable/disable bit 3 in
      --  PDRUNCFG1 register), Temperature Sensor (also, enable/disable bit 6),
      --  ADC (also, enable/disable bits 10, 19, and 23).
      PDEN_VD2_ANA   : Boolean := False;
      --  ADC power.
      PDEN_ADC0      : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  PDEN_SRAMX controls SRAMX (also enable/disable bit 27).
      PDEN_SRAMX     : Boolean := False;
      --  PDEN_SRAM0 controls SRAM0 (also enable/disable bit 27).
      PDEN_SRAM0     : Boolean := False;
      --  PDEN_SRAM1_2_3 controls SRAM1, SRAM2, and SRAM3 (also enable/disable
      --  bit 27).
      PDEN_SRAM1_2_3 : Boolean := False;
      --  PDEN_USB_SRAM controls USB_RAM (also enable/disable bit 27).
      PDEN_USB_RAM   : Boolean := False;
      --  ROM (also enable/disable bit 27).
      PDEN_ROM       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Vdda to the ADC, must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 23).
      PDEN_VDDA      : Boolean := False;
      --  Watchdog oscillator.
      PDEN_WDT_OSC   : Boolean := False;
      --  USB0 PHY power (also enable/disable bit 28).
      PDEN_USB0_PHY  : Boolean := False;
      --  System PLL (PLL0) power (also enable/disable bit 26).
      PDEN_SYS_PLL   : Boolean := False;
      --  VREFP to the ADC must be enabled for the ADC to work (also
      --  enable/disable bit 9, 10, and 19).
      PDEN_VREFP     : Boolean := False;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Power control for all PLLs.
      PDEN_VD        : PDRUNCFGCLR0_PDEN_VD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFGCLR0_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PDEN_FRO       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      PDEN_TS        at 0 range 6 .. 6;
      PDEN_BOD_RST   at 0 range 7 .. 7;
      PDEN_BOD_INTR  at 0 range 8 .. 8;
      PDEN_VD2_ANA   at 0 range 9 .. 9;
      PDEN_ADC0      at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PDEN_SRAMX     at 0 range 13 .. 13;
      PDEN_SRAM0     at 0 range 14 .. 14;
      PDEN_SRAM1_2_3 at 0 range 15 .. 15;
      PDEN_USB_RAM   at 0 range 16 .. 16;
      PDEN_ROM       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      PDEN_VDDA      at 0 range 19 .. 19;
      PDEN_WDT_OSC   at 0 range 20 .. 20;
      PDEN_USB0_PHY  at 0 range 21 .. 21;
      PDEN_SYS_PLL   at 0 range 22 .. 22;
      PDEN_VREFP     at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      PDEN_VD        at 0 range 26 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Power configuration clear register
   type PDRUNCFGCLR1_Register is record
      --  USB1 high speed PHY (also, enable/disable bit 28 in PDRUNCFG0
      --  register).
      PDEN_USB1_PHY : Boolean := False;
      --  USB PLL (PLL1) power (also, enable/disable bit 26 in PDRUNCFG0
      --  register).
      PDEN_USB1_PLL : Boolean := False;
      --  Audio PLL (PLL2) power and fractional divider (also, enable/disable
      --  bit 26 in PDRUNCFG0 register).
      PDEN_AUD_PLL  : Boolean := False;
      --  System Oscillator Power (also, enable/disable bit 9 in PDRUNCFG0
      --  register).
      PDEN_SYSOSC   : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  EEPROM power (also, enable/disable bit 29 in PDRUNCFG0 register).
      PDEN_EEPROM   : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Random Number Generator Power.
      PDEN_RNG      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDRUNCFGCLR1_Register use record
      PDEN_USB1_PHY at 0 range 0 .. 0;
      PDEN_USB1_PLL at 0 range 1 .. 1;
      PDEN_AUD_PLL  at 0 range 2 .. 2;
      PDEN_SYSOSC   at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      PDEN_EEPROM   at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      PDEN_RNG      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  STARTER0_GINT array
   type STARTER0_GINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER0_GINT
   type STARTER0_GINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GINT as a value
            Val : HAL.UInt2;
         when True =>
            --  GINT as an array
            Arr : STARTER0_GINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER0_GINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTER0_PIN_INT array
   type STARTER0_PIN_INT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STARTER0_PIN_INT
   type STARTER0_PIN_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIN_INT as a value
            Val : HAL.UInt4;
         when True =>
            --  PIN_INT as an array
            Arr : STARTER0_PIN_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STARTER0_PIN_INT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STARTER0_CTIMER array
   type STARTER0_CTIMER_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER0_CTIMER
   type STARTER0_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : STARTER0_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER0_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTER0_FLEXCOMM array
   type STARTER0_FLEXCOMM_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for STARTER0_FLEXCOMM
   type STARTER0_FLEXCOMM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLEXCOMM as a value
            Val : HAL.UInt8;
         when True =>
            --  FLEXCOMM as an array
            Arr : STARTER0_FLEXCOMM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for STARTER0_FLEXCOMM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Start logic 0 wake-up enable register
   type STARTER0_Register is record
      --  WWDT and BOD interrupt wake-up.
      WDT_BOD        : Boolean := False;
      --  DMA wake-up.
      DMA            : Boolean := False;
      --  Group interrupt 0 wake-up.
      GINT           : STARTER0_GINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  GPIO pin interrupt 0 wake-up.
      PIN_INT        : STARTER0_PIN_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Micro-tick Timer wake-up.
      UTICK          : Boolean := False;
      --  Multi-Rate Timer wake-up.
      MRT            : Boolean := False;
      --  Standard counter/timer CTIMER0 wake-up.
      CTIMER         : STARTER0_CTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SCT0 wake-up.
      SCT0           : Boolean := False;
      --  Standard counter/timer CTIMER3 wake-up.
      CTIMER3        : Boolean := False;
      --  Flexcomm0 peripheral interrupt wake-up.
      FLEXCOMM       : STARTER0_FLEXCOMM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  ADC0 sequence A interrupt wake-up.
      ADC0_SEQA      : Boolean := False;
      --  ADC0 sequence B interrupt wake-up.
      ADC0_SEQB      : Boolean := False;
      --  ADC0 threshold and error interrupt wake-up.
      ADC0_THCMP     : Boolean := False;
      --  Digital microphone interrupt wake-up.
      DMIC           : Boolean := False;
      --  Hardware voice activity detect interrupt wake-up.
      HWVAD          : Boolean := False;
      --  USB activity interrupt wake-up.
      USB0_NEEDCLK   : Boolean := False;
      --  USB function interrupt wake-up.
      USB0           : Boolean := False;
      --  RTC interrupt alarm and wake-up timer.
      RTC            : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTER0_Register use record
      WDT_BOD        at 0 range 0 .. 0;
      DMA            at 0 range 1 .. 1;
      GINT           at 0 range 2 .. 3;
      PIN_INT        at 0 range 4 .. 7;
      UTICK          at 0 range 8 .. 8;
      MRT            at 0 range 9 .. 9;
      CTIMER         at 0 range 10 .. 11;
      SCT0           at 0 range 12 .. 12;
      CTIMER3        at 0 range 13 .. 13;
      FLEXCOMM       at 0 range 14 .. 21;
      ADC0_SEQA      at 0 range 22 .. 22;
      ADC0_SEQB      at 0 range 23 .. 23;
      ADC0_THCMP     at 0 range 24 .. 24;
      DMIC           at 0 range 25 .. 25;
      HWVAD          at 0 range 26 .. 26;
      USB0_NEEDCLK   at 0 range 27 .. 27;
      USB0           at 0 range 28 .. 28;
      RTC            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
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

   --  STARTER1_CTIMER array
   type STARTER1_CTIMER_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER1_CTIMER
   type STARTER1_CTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTIMER as a value
            Val : HAL.UInt2;
         when True =>
            --  CTIMER as an array
            Arr : STARTER1_CTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER1_CTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTER1_FLEXCOMM array
   type STARTER1_FLEXCOMM_Field_Array is array (8 .. 9) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER1_FLEXCOMM
   type STARTER1_FLEXCOMM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FLEXCOMM as a value
            Val : HAL.UInt2;
         when True =>
            --  FLEXCOMM as an array
            Arr : STARTER1_FLEXCOMM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER1_FLEXCOMM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTER1_ENET_INT array
   type STARTER1_ENET_INT_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER1_ENET_INT
   type STARTER1_ENET_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENET_INT as a value
            Val : HAL.UInt2;
         when True =>
            --  ENET_INT as an array
            Arr : STARTER1_ENET_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER1_ENET_INT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  STARTER1_SMARTCARD array
   type STARTER1_SMARTCARD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for STARTER1_SMARTCARD
   type STARTER1_SMARTCARD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMARTCARD as a value
            Val : HAL.UInt2;
         when True =>
            --  SMARTCARD as an array
            Arr : STARTER1_SMARTCARD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STARTER1_SMARTCARD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Start logic 0 wake-up enable register
   type STARTER1_Register is record
      --  GPIO pin interrupt 4 wake-up.
      PINT           : STARTER1_PINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Standard counter/timer CTIMER2 wake-up.
      CTIMER         : STARTER1_CTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  SPIFI interrupt wake-up. 0 = Wake-up disabled. 1 = Wake-up enabled.
      SPIFI          : Boolean := False;
      --  Flexcomm Interface 8 wake-up.
      FLEXCOMM       : STARTER1_FLEXCOMM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  USB 1 wake-up.
      USB1           : Boolean := False;
      --  USB 1 activity wake-up.
      USB1_ACT       : Boolean := False;
      --  Ethernet.
      ENET_INT       : STARTER1_ENET_INT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Ethernet.
      ENET_INT0      : Boolean := False;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Smart card 0 wake-up.
      SMARTCARD      : STARTER1_SMARTCARD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTER1_Register use record
      PINT           at 0 range 0 .. 3;
      CTIMER         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SPIFI          at 0 range 7 .. 7;
      FLEXCOMM       at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      USB1           at 0 range 15 .. 15;
      USB1_ACT       at 0 range 16 .. 16;
      ENET_INT       at 0 range 17 .. 18;
      ENET_INT0      at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      SMARTCARD      at 0 range 23 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Set bits in STARTER

   --  Set bits in STARTER
   type STARTERSET_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Clear bits in STARTER0

   --  Clear bits in STARTER0
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

   --  AUTOCGOR_RAM array
   type AUTOCGOR_RAM_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for AUTOCGOR_RAM
   type AUTOCGOR_RAM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RAM as a value
            Val : HAL.UInt3;
         when True =>
            --  RAM as an array
            Arr : AUTOCGOR_RAM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for AUTOCGOR_RAM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Auto Clock-Gate Override Register
   type AUTOCGOR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  When 1, automatic clock gating for RAMX and RAM0 are turned off.
      RAM0X         : Boolean := False;
      --  When 1, automatic clock gating for RAM1 are turned off.
      RAM           : AUTOCGOR_RAM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUTOCGOR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RAM0X         at 0 range 1 .. 1;
      RAM           at 0 range 2 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
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

   --  LPC5460x System configuration (SYSCON)
   type SYSCON_Peripheral is record
      --  AHB multilayer matrix priority control
      AHBMATPRIO     : aliased AHBMATPRIO_Register;
      --  System tick counter calibration
      SYSTCKCAL      : aliased SYSTCKCAL_Register;
      --  NMI Source Select
      NMISRC         : aliased NMISRC_Register;
      --  Asynchronous APB Control
      ASYNCAPBCTRL   : aliased ASYNCAPBCTRL_Register;
      --  POR captured value of port n
      PIOPORCAP      : aliased PIOPORCAP_Registers;
      --  Reset captured value of port n
      PIORESCAP      : aliased PIORESCAP_Registers;
      --  Peripheral reset control n
      PRESETCTRL0    : aliased PRESETCTRL0_Register;
      --  Peripheral reset control n
      PRESETCTRL1    : aliased PRESETCTRL1_Register;
      --  Peripheral reset control n
      PRESETCTRL2    : aliased PRESETCTRL2_Register;
      --  Set bits in PRESETCTRLn
      PRESETCTRLSET  : aliased PRESETCTRLSET_Registers;
      --  Clear bits in PRESETCTRLn
      PRESETCTRLCLR  : aliased PRESETCTRLCLR_Registers;
      --  System reset status register
      SYSRSTSTAT     : aliased SYSRSTSTAT_Register;
      --  AHB Clock control n
      AHBCLKCTRL0    : aliased AHBCLKCTRL0_Register;
      --  AHB Clock control n
      AHBCLKCTRL1    : aliased AHBCLKCTRL1_Register;
      --  AHB Clock control n
      AHBCLKCTRL2    : aliased AHBCLKCTRL2_Register;
      --  Set bits in AHBCLKCTRLn
      AHBCLKCTRLSET  : aliased AHBCLKCTRLSET_Registers;
      --  Clear bits in AHBCLKCTRLn
      AHBCLKCTRLCLR  : aliased AHBCLKCTRLCLR_Registers;
      --  Main clock source select A
      MAINCLKSELA    : aliased MAINCLKSELA_Register;
      --  Main clock source select B
      MAINCLKSELB    : aliased MAINCLKSELB_Register;
      --  CLKOUT clock source select A
      CLKOUTSELA     : aliased CLKOUTSELA_Register;
      --  PLL clock source select
      SYSPLLCLKSEL   : aliased SYSPLLCLKSEL_Register;
      --  Audio PLL clock source select
      AUDPLLCLKSEL   : aliased AUDPLLCLKSEL_Register;
      --  SPIFI clock source select
      SPIFICLKSEL    : aliased SPIFICLKSEL_Register;
      --  ADC clock source select
      ADCCLKSEL      : aliased ADCCLKSEL_Register;
      --  USB0 clock source select
      USB0CLKSEL     : aliased USB0CLKSEL_Register;
      --  USB1 clock source select
      USB1CLKSEL     : aliased USB1CLKSEL_Register;
      --  Flexcomm 0 clock source select
      FCLKSEL        : aliased FCLKSEL_Registers;
      --  MCLK clock source select
      MCLKCLKSEL     : aliased MCLKCLKSEL_Register;
      --  Fractional Rate Generator clock source select
      FRGCLKSEL      : aliased FRGCLKSEL_Register;
      --  Digital microphone (DMIC) subsystem clock select
      DMICCLKSEL     : aliased DMICCLKSEL_Register;
      --  SCTimer/PWM clock source select
      SCTCLKSEL      : aliased SCTCLKSEL_Register;
      --  LCD clock source select
      LCDCLKSEL      : aliased LCDCLKSEL_Register;
      --  SDIO clock source select
      SDIOCLKSEL     : aliased SDIOCLKSEL_Register;
      --  SYSTICK clock divider
      SYSTICKCLKDIV  : aliased SYSTICKCLKDIV_Register;
      --  ARM Trace clock divider
      ARMTRACECLKDIV : aliased ARMTRACECLKDIV_Register;
      --  MCAN0 clock divider
      CAN0CLKDIV     : aliased CAN0CLKDIV_Register;
      --  MCAN1 clock divider
      CAN1CLKDIV     : aliased CAN1CLKDIV_Register;
      --  Smartcard0 clock divider
      SC0CLKDIV      : aliased SC0CLKDIV_Register;
      --  Smartcard1 clock divider
      SC1CLKDIV      : aliased SC1CLKDIV_Register;
      --  AHB clock divider
      AHBCLKDIV      : aliased AHBCLKDIV_Register;
      --  CLKOUT clock divider
      CLKOUTDIV      : aliased CLKOUTDIV_Register;
      --  FROHF clock divider
      FROHFCLKDIV    : aliased FROHFCLKDIV_Register;
      --  SPIFI clock divider
      SPIFICLKDIV    : aliased SPIFICLKDIV_Register;
      --  ADC clock divider
      ADCCLKDIV      : aliased ADCCLKDIV_Register;
      --  USB0 clock divider
      USB0CLKDIV     : aliased USB0CLKDIV_Register;
      --  USB1 clock divider
      USB1CLKDIV     : aliased USB1CLKDIV_Register;
      --  Fractional rate divider
      FRGCTRL        : aliased FRGCTRL_Register;
      --  DMIC clock divider
      DMICCLKDIV     : aliased DMICCLKDIV_Register;
      --  I2S MCLK clock divider
      MCLKDIV        : aliased MCLKDIV_Register;
      --  LCD clock divider
      LCDCLKDIV      : aliased LCDCLKDIV_Register;
      --  SCT/PWM clock divider
      SCTCLKDIV      : aliased SCTCLKDIV_Register;
      --  EMC clock divider
      EMCCLKDIV      : aliased EMCCLKDIV_Register;
      --  SDIO clock divider
      SDIOCLKDIV     : aliased SDIOCLKDIV_Register;
      --  Flash wait states configuration
      FLASHCFG       : aliased FLASHCFG_Register;
      --  USB0 clock control
      USB0CLKCTRL    : aliased USB0CLKCTRL_Register;
      --  USB0 clock status
      USB0CLKSTAT    : aliased USB0CLKSTAT_Register;
      --  Frequency measure register
      FREQMECTRL     : aliased FREQMECTRL_Register;
      --  MCLK input/output control
      MCLKIO         : aliased MCLKIO_Register;
      --  USB1 clock control
      USB1CLKCTRL    : aliased USB1CLKCTRL_Register;
      --  USB1 clock status
      USB1CLKSTAT    : aliased USB1CLKSTAT_Register;
      --  EMC system control
      EMCSYSCTRL     : aliased EMCSYSCTRL_Register;
      --  EMC clock delay control
      EMCDLYCTRL     : aliased EMCDLYCTRL_Register;
      --  EMC delay chain calibration control
      EMCDLYCAL      : aliased EMCDLYCAL_Register;
      --  Ethernet PHY Selection
      ETHPHYSEL      : aliased ETHPHYSEL_Register;
      --  Ethernet SBD flow control
      ETHSBDCTRL     : aliased ETHSBDCTRL_Register;
      --  SDIO CCLKIN phase and delay control
      SDIOCLKCTRL    : aliased SDIOCLKCTRL_Register;
      --  FRO oscillator control
      FROCTRL        : aliased FROCTRL_Register;
      --  System oscillator control
      SYSOSCCTRL     : aliased SYSOSCCTRL_Register;
      --  Watchdog oscillator control
      WDTOSCCTRL     : aliased WDTOSCCTRL_Register;
      --  RTC oscillator 32 kHz output control
      RTCOSCCTRL     : aliased RTCOSCCTRL_Register;
      --  USB PLL control
      USBPLLCTRL     : aliased USBPLLCTRL_Register;
      --  USB PLL status
      USBPLLSTAT     : aliased USBPLLSTAT_Register;
      --  System PLL control
      SYSPLLCTRL     : aliased SYSPLLCTRL_Register;
      --  PLL status
      SYSPLLSTAT     : aliased SYSPLLSTAT_Register;
      --  PLL N divider
      SYSPLLNDEC     : aliased SYSPLLNDEC_Register;
      --  PLL P divider
      SYSPLLPDEC     : aliased SYSPLLPDEC_Register;
      --  System PLL M divider
      SYSPLLMDEC     : aliased SYSPLLMDEC_Register;
      --  Audio PLL control
      AUDPLLCTRL     : aliased AUDPLLCTRL_Register;
      --  Audio PLL status
      AUDPLLSTAT     : aliased AUDPLLSTAT_Register;
      --  Audio PLL N divider
      AUDPLLNDEC     : aliased AUDPLLNDEC_Register;
      --  Audio PLL P divider
      AUDPLLPDEC     : aliased AUDPLLPDEC_Register;
      --  Audio PLL M divider
      AUDPLLMDEC     : aliased AUDPLLMDEC_Register;
      --  Audio PLL fractional divider control
      AUDPLLFRAC     : aliased AUDPLLFRAC_Register;
      --  Sleep configuration register
      PDSLEEPCFG0    : aliased PDSLEEPCFG0_Register;
      --  Sleep configuration register
      PDSLEEPCFG1    : aliased PDSLEEPCFG1_Register;
      --  Power configuration register
      PDRUNCFG0      : aliased PDRUNCFG0_Register;
      --  Power configuration register
      PDRUNCFG1      : aliased PDRUNCFG1_Register;
      --  Power configuration set register
      PDRUNCFGSET0   : aliased PDRUNCFGSET0_Register;
      --  Power configuration set register
      PDRUNCFGSET1   : aliased PDRUNCFGSET1_Register;
      --  Power configuration clear register
      PDRUNCFGCLR0   : aliased PDRUNCFGCLR0_Register;
      --  Power configuration clear register
      PDRUNCFGCLR1   : aliased PDRUNCFGCLR1_Register;
      --  Start logic 0 wake-up enable register
      STARTER0       : aliased STARTER0_Register;
      --  Start logic 0 wake-up enable register
      STARTER1       : aliased STARTER1_Register;
      --  Set bits in STARTER
      STARTERSET     : aliased STARTERSET_Registers;
      --  Clear bits in STARTER0
      STARTERCLR     : aliased STARTERCLR_Registers;
      --  Configures special cases of hardware wake-up
      HWWAKE         : aliased HWWAKE_Register;
      --  Auto Clock-Gate Override Register
      AUTOCGOR       : aliased AUTOCGOR_Register;
      --  JTAG ID code register
      JTAGIDCODE     : aliased HAL.UInt32;
      --  Part ID register
      DEVICE_ID0     : aliased HAL.UInt32;
      --  Boot ROM and die revision register
      DEVICE_ID1     : aliased HAL.UInt32;
      --  Brown-Out Detect control
      BODCTRL        : aliased BODCTRL_Register;
   end record
     with Volatile;

   for SYSCON_Peripheral use record
      AHBMATPRIO     at 16#10# range 0 .. 31;
      SYSTCKCAL      at 16#40# range 0 .. 31;
      NMISRC         at 16#48# range 0 .. 31;
      ASYNCAPBCTRL   at 16#4C# range 0 .. 31;
      PIOPORCAP      at 16#C0# range 0 .. 63;
      PIORESCAP      at 16#D0# range 0 .. 63;
      PRESETCTRL0    at 16#100# range 0 .. 31;
      PRESETCTRL1    at 16#104# range 0 .. 31;
      PRESETCTRL2    at 16#108# range 0 .. 31;
      PRESETCTRLSET  at 16#120# range 0 .. 95;
      PRESETCTRLCLR  at 16#140# range 0 .. 95;
      SYSRSTSTAT     at 16#1F0# range 0 .. 31;
      AHBCLKCTRL0    at 16#200# range 0 .. 31;
      AHBCLKCTRL1    at 16#204# range 0 .. 31;
      AHBCLKCTRL2    at 16#208# range 0 .. 31;
      AHBCLKCTRLSET  at 16#220# range 0 .. 95;
      AHBCLKCTRLCLR  at 16#240# range 0 .. 95;
      MAINCLKSELA    at 16#280# range 0 .. 31;
      MAINCLKSELB    at 16#284# range 0 .. 31;
      CLKOUTSELA     at 16#288# range 0 .. 31;
      SYSPLLCLKSEL   at 16#290# range 0 .. 31;
      AUDPLLCLKSEL   at 16#298# range 0 .. 31;
      SPIFICLKSEL    at 16#2A0# range 0 .. 31;
      ADCCLKSEL      at 16#2A4# range 0 .. 31;
      USB0CLKSEL     at 16#2A8# range 0 .. 31;
      USB1CLKSEL     at 16#2AC# range 0 .. 31;
      FCLKSEL        at 16#2B0# range 0 .. 319;
      MCLKCLKSEL     at 16#2E0# range 0 .. 31;
      FRGCLKSEL      at 16#2E8# range 0 .. 31;
      DMICCLKSEL     at 16#2EC# range 0 .. 31;
      SCTCLKSEL      at 16#2F0# range 0 .. 31;
      LCDCLKSEL      at 16#2F4# range 0 .. 31;
      SDIOCLKSEL     at 16#2F8# range 0 .. 31;
      SYSTICKCLKDIV  at 16#300# range 0 .. 31;
      ARMTRACECLKDIV at 16#304# range 0 .. 31;
      CAN0CLKDIV     at 16#308# range 0 .. 31;
      CAN1CLKDIV     at 16#30C# range 0 .. 31;
      SC0CLKDIV      at 16#310# range 0 .. 31;
      SC1CLKDIV      at 16#314# range 0 .. 31;
      AHBCLKDIV      at 16#380# range 0 .. 31;
      CLKOUTDIV      at 16#384# range 0 .. 31;
      FROHFCLKDIV    at 16#388# range 0 .. 31;
      SPIFICLKDIV    at 16#390# range 0 .. 31;
      ADCCLKDIV      at 16#394# range 0 .. 31;
      USB0CLKDIV     at 16#398# range 0 .. 31;
      USB1CLKDIV     at 16#39C# range 0 .. 31;
      FRGCTRL        at 16#3A0# range 0 .. 31;
      DMICCLKDIV     at 16#3A8# range 0 .. 31;
      MCLKDIV        at 16#3AC# range 0 .. 31;
      LCDCLKDIV      at 16#3B0# range 0 .. 31;
      SCTCLKDIV      at 16#3B4# range 0 .. 31;
      EMCCLKDIV      at 16#3B8# range 0 .. 31;
      SDIOCLKDIV     at 16#3BC# range 0 .. 31;
      FLASHCFG       at 16#400# range 0 .. 31;
      USB0CLKCTRL    at 16#40C# range 0 .. 31;
      USB0CLKSTAT    at 16#410# range 0 .. 31;
      FREQMECTRL     at 16#418# range 0 .. 31;
      MCLKIO         at 16#420# range 0 .. 31;
      USB1CLKCTRL    at 16#424# range 0 .. 31;
      USB1CLKSTAT    at 16#428# range 0 .. 31;
      EMCSYSCTRL     at 16#444# range 0 .. 31;
      EMCDLYCTRL     at 16#448# range 0 .. 31;
      EMCDLYCAL      at 16#44C# range 0 .. 31;
      ETHPHYSEL      at 16#450# range 0 .. 31;
      ETHSBDCTRL     at 16#454# range 0 .. 31;
      SDIOCLKCTRL    at 16#460# range 0 .. 31;
      FROCTRL        at 16#500# range 0 .. 31;
      SYSOSCCTRL     at 16#504# range 0 .. 31;
      WDTOSCCTRL     at 16#508# range 0 .. 31;
      RTCOSCCTRL     at 16#50C# range 0 .. 31;
      USBPLLCTRL     at 16#51C# range 0 .. 31;
      USBPLLSTAT     at 16#520# range 0 .. 31;
      SYSPLLCTRL     at 16#580# range 0 .. 31;
      SYSPLLSTAT     at 16#584# range 0 .. 31;
      SYSPLLNDEC     at 16#588# range 0 .. 31;
      SYSPLLPDEC     at 16#58C# range 0 .. 31;
      SYSPLLMDEC     at 16#590# range 0 .. 31;
      AUDPLLCTRL     at 16#5A0# range 0 .. 31;
      AUDPLLSTAT     at 16#5A4# range 0 .. 31;
      AUDPLLNDEC     at 16#5A8# range 0 .. 31;
      AUDPLLPDEC     at 16#5AC# range 0 .. 31;
      AUDPLLMDEC     at 16#5B0# range 0 .. 31;
      AUDPLLFRAC     at 16#5B4# range 0 .. 31;
      PDSLEEPCFG0    at 16#600# range 0 .. 31;
      PDSLEEPCFG1    at 16#604# range 0 .. 31;
      PDRUNCFG0      at 16#610# range 0 .. 31;
      PDRUNCFG1      at 16#614# range 0 .. 31;
      PDRUNCFGSET0   at 16#620# range 0 .. 31;
      PDRUNCFGSET1   at 16#624# range 0 .. 31;
      PDRUNCFGCLR0   at 16#630# range 0 .. 31;
      PDRUNCFGCLR1   at 16#634# range 0 .. 31;
      STARTER0       at 16#680# range 0 .. 31;
      STARTER1       at 16#684# range 0 .. 31;
      STARTERSET     at 16#6A0# range 0 .. 63;
      STARTERCLR     at 16#6C0# range 0 .. 63;
      HWWAKE         at 16#780# range 0 .. 31;
      AUTOCGOR       at 16#E04# range 0 .. 31;
      JTAGIDCODE     at 16#FF4# range 0 .. 31;
      DEVICE_ID0     at 16#FF8# range 0 .. 31;
      DEVICE_ID1     at 16#FFC# range 0 .. 31;
      BODCTRL        at 16#20044# range 0 .. 31;
   end record;

   --  LPC5460x System configuration (SYSCON)
   SYSCON_Periph : aliased SYSCON_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.SYSCON;
