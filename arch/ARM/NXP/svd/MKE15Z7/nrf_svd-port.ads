--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PORT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Pull Select
   type PCR_PS_Field is
     (
      --  Internal pulldown resistor is enabled on the corresponding pin, if
      --  the corresponding PE field is set.
      Down,
      --  Internal pullup resistor is enabled on the corresponding pin, if the
      --  corresponding PE field is set.
      Up)
     with Size => 1;
   for PCR_PS_Field use
     (Down => 0,
      Up => 1);

   --  Pull Enable
   type PCR_PE_Field is
     (
      --  Internal pullup or pulldown resistor is not enabled on the
      --  corresponding pin.
      Disabled,
      --  Internal pullup or pulldown resistor is enabled on the corresponding
      --  pin, if the pin is configured as a digital input.
      Enabled)
     with Size => 1;
   for PCR_PE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Passive Filter Enable
   type PCR_PFE_Field is
     (
      --  Passive input filter is disabled on the corresponding pin.
      Disabled,
      --  Passive input filter is enabled on the corresponding pin, if the pin
      --  is configured as a digital input. Refer to the device data sheet for
      --  filter characteristics.
      Enabled)
     with Size => 1;
   for PCR_PFE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Drive Strength Enable
   type PCR_DSE_Field is
     (
      --  Low drive strength is configured on the corresponding pin, if pin is
      --  configured as a digital output.
      Low,
      --  High drive strength is configured on the corresponding pin, if pin is
      --  configured as a digital output.
      High)
     with Size => 1;
   for PCR_DSE_Field use
     (Low => 0,
      High => 1);

   --  Pin Mux Control
   type PCR_MUX_Field is
     (
      --  Pin disabled (Alternative 0) (analog).
      Ana_Dis,
      --  Alternative 1 (GPIO).
      Gpio,
      --  Alternative 2 (chip-specific).
      Alt2,
      --  Alternative 3 (chip-specific).
      Alt3,
      --  Alternative 4 (chip-specific).
      Alt4,
      --  Alternative 5 (chip-specific).
      Alt5,
      --  Alternative 6 (chip-specific).
      Alt6,
      --  Alternative 7 (chip-specific).
      Alt7)
     with Size => 3;
   for PCR_MUX_Field use
     (Ana_Dis => 0,
      Gpio => 1,
      Alt2 => 2,
      Alt3 => 3,
      Alt4 => 4,
      Alt5 => 5,
      Alt6 => 6,
      Alt7 => 7);

   --  Lock Register
   type PCR_LK_Field is
     (
      --  Pin Control Register fields [15:0] are not locked.
      Not_Locked,
      --  Pin Control Register fields [15:0] are locked and cannot be updated
      --  until the next system reset.
      Locked)
     with Size => 1;
   for PCR_LK_Field use
     (Not_Locked => 0,
      Locked => 1);

   --  Interrupt Configuration
   type PCR_IRQC_Field is
     (
      --  Interrupt Status Flag (ISF) is disabled.
      Disabled,
      --  ISF flag and DMA request on rising edge.
      Dma_Rising,
      --  ISF flag and DMA request on falling edge.
      Dma_Falling,
      --  ISF flag and DMA request on either edge.
      Dma_Both,
      --  ISF flag and Interrupt when logic 0.
      Int_Zero,
      --  ISF flag and Interrupt on rising-edge.
      Int_Rising,
      --  ISF flag and Interrupt on falling-edge.
      Int_Falling,
      --  ISF flag and Interrupt on either edge.
      Int_Both,
      --  ISF flag and Interrupt when logic 1.
      Int_One)
     with Size => 4;
   for PCR_IRQC_Field use
     (Disabled => 0,
      Dma_Rising => 1,
      Dma_Falling => 2,
      Dma_Both => 3,
      Int_Zero => 8,
      Int_Rising => 9,
      Int_Falling => 10,
      Int_Both => 11,
      Int_One => 12);

   --  Interrupt Status Flag
   type PCR_ISF_Field is
     (
      --  Configured interrupt is not detected.
      Not_Detected,
      --  Configured interrupt is detected. If the pin is configured to
      --  generate a DMA request, then the corresponding flag will be cleared
      --  automatically at the completion of the requested DMA transfer.
      --  Otherwise, the flag remains set until a logic 1 is written to the
      --  flag. If the pin is configured for a level sensitive interrupt and
      --  the pin remains asserted, then the flag is set again immediately
      --  after it is cleared.
      Detected)
     with Size => 1;
   for PCR_ISF_Field use
     (Not_Detected => 0,
      Detected => 1);

   --  Pin Control Register n
   type PORTA_PCR_Register is record
      --  Pull Select
      PS             : PCR_PS_Field := NRF_SVD.PORT.Down;
      --  Pull Enable
      PE             : PCR_PE_Field := NRF_SVD.PORT.Disabled;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Passive Filter Enable
      PFE            : PCR_PFE_Field := NRF_SVD.PORT.Disabled;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Drive Strength Enable
      DSE            : PCR_DSE_Field := NRF_SVD.PORT.Low;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pin Mux Control
      MUX            : PCR_MUX_Field := NRF_SVD.PORT.Ana_Dis;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Lock Register
      LK             : PCR_LK_Field := NRF_SVD.PORT.Not_Locked;
      --  Interrupt Configuration
      IRQC           : PCR_IRQC_Field := NRF_SVD.PORT.Disabled;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Status Flag
      ISF            : PCR_ISF_Field := NRF_SVD.PORT.Not_Detected;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_PCR_Register use record
      PS             at 0 range 0 .. 0;
      PE             at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PFE            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      DSE            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MUX            at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      LK             at 0 range 15 .. 15;
      IRQC           at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ISF            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Pin Control Register n
   type PORTA_PCR_Registers is array (0 .. 31) of PORTA_PCR_Register
     with Volatile;

   subtype PORTA_GPCLR_GPWD_Field is HAL.UInt16;

   --  Global Pin Write Enable
   type GPCLR_GPWE_Field is
     (
      --  Corresponding Pin Control Register is not updated with the value in
      --  GPWD.
      Gpwe_0,
      --  Corresponding Pin Control Register is updated with the value in GPWD.
      Gpwe_1)
     with Size => 16;
   for GPCLR_GPWE_Field use
     (Gpwe_0 => 0,
      Gpwe_1 => 1);

   --  Global Pin Control Low Register
   type PORTA_GPCLR_Register is record
      --  Write-only. Global Pin Write Data
      GPWD : PORTA_GPCLR_GPWD_Field := 16#0#;
      --  Write-only. Global Pin Write Enable
      GPWE : GPCLR_GPWE_Field := NRF_SVD.PORT.Gpwe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_GPCLR_Register use record
      GPWD at 0 range 0 .. 15;
      GPWE at 0 range 16 .. 31;
   end record;

   subtype PORTA_GPCHR_GPWD_Field is HAL.UInt16;

   --  Global Pin Write Enable
   type GPCHR_GPWE_Field is
     (
      --  Corresponding Pin Control Register is not updated with the value in
      --  GPWD.
      Gpwe_0,
      --  Corresponding Pin Control Register is updated with the value in GPWD.
      Gpwe_1)
     with Size => 16;
   for GPCHR_GPWE_Field use
     (Gpwe_0 => 0,
      Gpwe_1 => 1);

   --  Global Pin Control High Register
   type PORTA_GPCHR_Register is record
      --  Write-only. Global Pin Write Data
      GPWD : PORTA_GPCHR_GPWD_Field := 16#0#;
      --  Write-only. Global Pin Write Enable
      GPWE : GPCHR_GPWE_Field := NRF_SVD.PORT.Gpwe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_GPCHR_Register use record
      GPWD at 0 range 0 .. 15;
      GPWE at 0 range 16 .. 31;
   end record;

   --  Clock Source
   type DFCR_CS_Field is
     (
      --  Digital filters are clocked by the bus clock.
      Bus,
      --  Digital filters are clocked by the LPO clock.
      Lpo)
     with Size => 1;
   for DFCR_CS_Field use
     (Bus => 0,
      Lpo => 1);

   --  Digital Filter Clock Register
   type PORTA_DFCR_Register is record
      --  Clock Source
      CS            : DFCR_CS_Field := NRF_SVD.PORT.Bus;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_DFCR_Register use record
      CS            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PORTA_DFWR_FILT_Field is HAL.UInt5;

   --  Digital Filter Width Register
   type PORTA_DFWR_Register is record
      --  Filter Length
      FILT          : PORTA_DFWR_FILT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTA_DFWR_Register use record
      FILT          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pin Control and Interrupts
   type PORT_Peripheral is record
      --  Pin Control Register n
      PCR   : aliased PORTA_PCR_Registers;
      --  Global Pin Control Low Register
      GPCLR : aliased PORTA_GPCLR_Register;
      --  Global Pin Control High Register
      GPCHR : aliased PORTA_GPCHR_Register;
      --  Interrupt Status Flag Register
      ISFR  : aliased HAL.UInt32;
      --  Digital Filter Enable Register
      DFER  : aliased HAL.UInt32;
      --  Digital Filter Clock Register
      DFCR  : aliased PORTA_DFCR_Register;
      --  Digital Filter Width Register
      DFWR  : aliased PORTA_DFWR_Register;
   end record
     with Volatile;

   for PORT_Peripheral use record
      PCR   at 16#0# range 0 .. 1023;
      GPCLR at 16#80# range 0 .. 31;
      GPCHR at 16#84# range 0 .. 31;
      ISFR  at 16#A0# range 0 .. 31;
      DFER  at 16#C0# range 0 .. 31;
      DFCR  at 16#C4# range 0 .. 31;
      DFWR  at 16#C8# range 0 .. 31;
   end record;

   --  Pin Control and Interrupts
   PORTA_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#40049000#);

   --  Pin Control and Interrupts
   PORTB_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#4004A000#);

   --  Pin Control and Interrupts
   PORTC_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#4004B000#);

   --  Pin Control and Interrupts
   PORTD_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#4004C000#);

   --  Pin Control and Interrupts
   PORTE_Periph : aliased PORT_Peripheral
     with Import, Address => System'To_Address (16#4004D000#);

end NRF_SVD.PORT;
