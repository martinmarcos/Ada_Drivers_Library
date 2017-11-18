--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DR_ICDR_Field is HAL.UInt8;

   --  I2C Data Register
   type DR_Register is record
      --  In transmit mode, stored data is sent to data line (SDA)
      ICDR          : DR_ICDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      ICDR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      --  RX ack flag
      RXACK         : Boolean := False;
      --  Transmit/reciever mode flag
      TMODE         : Boolean := False;
      --  busy flag
      BUSY          : Boolean := False;
      --  Mastership lost flag
      MLOST         : Boolean := False;
      --  slave flag
      SSEL          : Boolean := False;
      --  Stop Flag
      STOP          : Boolean := False;
      --  1-byte transmission complete flag
      TEND          : Boolean := False;
      --  General call flag
      GCALL         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      RXACK         at 0 range 0 .. 0;
      TMODE         at 0 range 1 .. 1;
      BUSY          at 0 range 2 .. 2;
      MLOST         at 0 range 3 .. 3;
      SSEL          at 0 range 4 .. 4;
      STOP          at 0 range 5 .. 5;
      TEND          at 0 range 6 .. 6;
      GCALL         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SAR_SVAD_Field is HAL.UInt7;

   --  I2C Slave Address Register
   type SAR_Register is record
      --  General call control
      GCALL         : Boolean := False;
      --  7 bits slave address
      SVAD          : SAR_SVAD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAR_Register use record
      GCALL         at 0 range 0 .. 0;
      SVAD          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  I2C Control Register
   type CR_Register is record
      --  This field is used to start in mater mode.
      START         : Boolean := False;
      --  Stop enable bit
      STOP          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  ACK enabit bit in receiver mode
      ACKEN         : Boolean := False;
      --  Enable interrupt request
      IINTEN        : Boolean := False;
      --  Reset registers in serial devices
      SOFTRESET     : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Read-only. IIF represent interrupt generation
      IIF           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      START         at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      ACKEN         at 0 range 3 .. 3;
      IINTEN        at 0 range 4 .. 4;
      SOFTRESET     at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      IIF           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SCLL_SCLL_Field is HAL.UInt16;

   --  I2C SCL LOW duration Register
   type SCLL_Register is record
      --  SCL Low duration value
      SCLL           : SCLL_SCLL_Field := 16#FF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCLL_Register use record
      SCLL           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SCLH_SCLH_Field is HAL.UInt16;

   --  I2C SCL HIGH duration Register
   type SCLH_Register is record
      --  SCL High duration value
      SCLH           : SCLH_SCLH_Field := 16#FF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCLH_Register use record
      SCLH           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SDH_SDH_Field is HAL.UInt2;

   --  SDA Hold Register
   type SDH_Register is record
      --  Set SDA Hold time
      SDH           : SDH_SDH_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#3F#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDH_Register use record
      SDH           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C Interface
   type I2C_Peripheral is record
      --  I2C Data Register
      DR   : aliased DR_Register;
      --  Status register
      SR   : aliased SR_Register;
      --  I2C Slave Address Register
      SAR  : aliased SAR_Register;
      --  I2C Control Register
      CR   : aliased CR_Register;
      --  I2C SCL LOW duration Register
      SCLL : aliased SCLL_Register;
      --  I2C SCL HIGH duration Register
      SCLH : aliased SCLH_Register;
      --  SDA Hold Register
      SDH  : aliased SDH_Register;
   end record
     with Volatile;

   for I2C_Peripheral use record
      DR   at 16#0# range 0 .. 31;
      SR   at 16#8# range 0 .. 31;
      SAR  at 16#C# range 0 .. 31;
      CR   at 16#14# range 0 .. 31;
      SCLL at 16#18# range 0 .. 31;
      SCLH at 16#1C# range 0 .. 31;
      SDH  at 16#20# range 0 .. 31;
   end record;

   --  I2C Interface
   I2C0_Periph : aliased I2C_Peripheral
     with Import, Address => System'To_Address (16#40000A00#);

   --  I2C Interface
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => System'To_Address (16#40000A80#);

end NRF_SVD.I2C;
