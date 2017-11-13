--  This spec has been automatically generated from ATSAMG55J19.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.FLEXCOM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FLEXCOM Operating Mode
   type MR_OPMODE_Field is
     (
      --  No communication
      No_Com,
      --  All related USART related protocols are selected (RS232, RS485, IrDA,
      --  ISO7816, LIN,)All SPI/TWI related registers are not accessible and
      --  have no impact on IOs.
      Usart,
      --  SPI operating mode is selected.All USART/TWI related registers are
      --  not accessible and have no impact on IOs.
      Spi,
      --  All related TWI protocols are selected (TWI, SMBUS). All USART/SPI
      --  related registers are not accessible and have no impact on IOs.
      Twi)
     with Size => 2;
   for MR_OPMODE_Field use
     (No_Com => 0,
      Usart => 1,
      Spi => 2,
      Twi => 3);

   --  FLEXCOM Mode register
   type FLEXCOM0_MR_Register is record
      --  FLEXCOM Operating Mode
      OPMODE        : MR_OPMODE_Field := SAM_SVD.FLEXCOM.No_Com;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM0_MR_Register use record
      OPMODE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLEXCOM0_RHR_RXDATA_Field is HAL.UInt16;

   --  FLEXCOM Receive Holding Register
   type FLEXCOM0_RHR_Register is record
      --  Read-only. Receive Data
      RXDATA         : FLEXCOM0_RHR_RXDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM0_RHR_Register use record
      RXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM0_THR_TXDATA_Field is HAL.UInt16;

   --  FLEXCOM Transmit Holding Register
   type FLEXCOM0_THR_Register is record
      --  Transmit Data
      TXDATA         : FLEXCOM0_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM0_THR_Register use record
      TXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible Serial Communication 0
   type FLEXCOM_Peripheral is record
      --  FLEXCOM Mode register
      MR  : aliased FLEXCOM0_MR_Register;
      --  FLEXCOM Receive Holding Register
      RHR : aliased FLEXCOM0_RHR_Register;
      --  FLEXCOM Transmit Holding Register
      THR : aliased FLEXCOM0_THR_Register;
   end record
     with Volatile;

   for FLEXCOM_Peripheral use record
      MR  at 16#0# range 0 .. 31;
      RHR at 16#10# range 0 .. 31;
      THR at 16#20# range 0 .. 31;
   end record;

   --  Flexible Serial Communication 0
   FLEXCOM0_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#4000C000#);

   --  Flexible Serial Communication 1
   FLEXCOM1_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#40020000#);

   --  Flexible Serial Communication 2
   FLEXCOM2_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#40024000#);

   --  Flexible Serial Communication 3
   FLEXCOM3_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

   --  Flexible Serial Communication 4
   FLEXCOM4_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#4001C000#);

   --  Flexible Serial Communication 5
   FLEXCOM5_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#40008000#);

   --  Flexible Serial Communication 6
   FLEXCOM6_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

   --  Flexible Serial Communication 7
   FLEXCOM7_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => System'To_Address (16#40034000#);

end SAM_SVD.FLEXCOM;
