--

--  This spec has been automatically generated from SN32F240B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PFPA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CT16B1_PWM00 assigned pin
   type CT16B1_PWM00_Field is
     (
      --  CT16B1_PWM00=P0.0
      P0.0,
      --  CT16B1_PWM00=P1.8
      P1.8)
     with Size => 1;
   for CT16B1_PWM00_Field use
     (P0.0 => 0,
      P1.8 => 1);

   --  CT16B1_PWM01 assigned pin
   type CT16B1_PWM01_Field is
     (
      --  CT16B1_PWM01=P0.1
      P0.1,
      --  CT16B1_PWM01=P1.9
      P1.9)
     with Size => 1;
   for CT16B1_PWM01_Field use
     (P0.1 => 0,
      P1.9 => 1);

   --  CT16B1_PWM02 assigned pin
   type CT16B1_PWM02_Field is
     (
      --  CT16B1_PWM02=P0.2
      P0.2,
      --  CT16B1_PWM02=P1.10
      P1.10)
     with Size => 1;
   for CT16B1_PWM02_Field use
     (P0.2 => 0,
      P1.10 => 1);

   --  CT16B1_PWM03 assigned pin
   type CT16B1_PWM03_Field is
     (
      --  CT16B1_PWM03=P0.3
      P0.3,
      --  CT16B1_PWM03=P1.11
      P1.11)
     with Size => 1;
   for CT16B1_PWM03_Field use
     (P0.3 => 0,
      P1.11 => 1);

   --  CT16B1_PWM04 assigned pin
   type CT16B1_PWM04_Field is
     (
      --  CT16B1_PWM04=P0.4
      P0.4,
      --  CT16B1_PWM04=P1.12
      P1.12)
     with Size => 1;
   for CT16B1_PWM04_Field use
     (P0.4 => 0,
      P1.12 => 1);

   --  CT16B1_PWM05 assigned pin
   type CT16B1_PWM05_Field is
     (
      --  CT16B1_PWM05=P0.5
      P0.5,
      --  CT16B1_PWM05=P1.13
      P1.13)
     with Size => 1;
   for CT16B1_PWM05_Field use
     (P0.5 => 0,
      P1.13 => 1);

   --  CT16B1_PWM06 assigned pin
   type CT16B1_PWM06_Field is
     (
      --  CT16B1_PWM06=P0.6
      P0.6,
      --  CT16B1_PWM06=P1.14
      P1.14)
     with Size => 1;
   for CT16B1_PWM06_Field use
     (P0.6 => 0,
      P1.14 => 1);

   --  CT16B1_PWM07 assigned pin
   type CT16B1_PWM07_Field is
     (
      --  CT16B1_PWM07=P0.7
      P0.7,
      --  CT16B1_PWM07=P1.15
      P1.15)
     with Size => 1;
   for CT16B1_PWM07_Field use
     (P0.7 => 0,
      P1.15 => 1);

   --  CT16B1_PWM08 assigned pin
   type CT16B1_PWM08_Field is
     (
      --  CT16B1_PWM08=P0.8
      P0.8,
      --  CT16B1_PWM08=P2.0
      P2.0)
     with Size => 1;
   for CT16B1_PWM08_Field use
     (P0.8 => 0,
      P2.0 => 1);

   --  CT16B1_PWM09 assigned pin
   type CT16B1_PWM09_Field is
     (
      --  CT16B1_PWM09=P0.9
      P0.9,
      --  CT16B1_PWM09=P2.1
      P2.1)
     with Size => 1;
   for CT16B1_PWM09_Field use
     (P0.9 => 0,
      P2.1 => 1);

   --  CT16B1_PWM10 assigned pin
   type CT16B1_PWM10_Field is
     (
      --  CT16B1_PWM10=P0.10
      P0.10,
      --  CT16B1_PWM10=P2.2
      P2.2)
     with Size => 1;
   for CT16B1_PWM10_Field use
     (P0.10 => 0,
      P2.2 => 1);

   --  CT16B1_PWM11 assigned pin
   type CT16B1_PWM11_Field is
     (
      --  CT16B1_PWM11=P0.11
      P0.11,
      --  CT16B1_PWM11=P2.3
      P2.3)
     with Size => 1;
   for CT16B1_PWM11_Field use
     (P0.11 => 0,
      P2.3 => 1);

   --  CT16B1_PWM12 assigned pin
   type CT16B1_PWM12_Field is
     (
      --  CT16B1_PWM12=P0.12
      P0.12,
      --  CT16B1_PWM12=P2.4
      P2.4)
     with Size => 1;
   for CT16B1_PWM12_Field use
     (P0.12 => 0,
      P2.4 => 1);

   --  CT16B1_PWM13 assigned pin
   type CT16B1_PWM13_Field is
     (
      --  CT16B1_PWM13=P0.13
      P0.13,
      --  CT16B1_PWM13=P2.5
      P2.5)
     with Size => 1;
   for CT16B1_PWM13_Field use
     (P0.13 => 0,
      P2.5 => 1);

   --  CT16B1_PWM14 assigned pin
   type CT16B1_PWM14_Field is
     (
      --  CT16B1_PWM14=P0.14
      P0.14,
      --  CT16B1_PWM14=P2.6
      P2.6)
     with Size => 1;
   for CT16B1_PWM14_Field use
     (P0.14 => 0,
      P2.6 => 1);

   --  CT16B1_PWM15 assigned pin
   type CT16B1_PWM15_Field is
     (
      --  CT16B1_PWM15=P0.15
      P0.15,
      --  CT16B1_PWM15=P2.7
      P2.7)
     with Size => 1;
   for CT16B1_PWM15_Field use
     (P0.15 => 0,
      P2.7 => 1);

   --  CT16B1_PWM16 assigned pin
   type CT16B1_PWM16_Field is
     (
      --  CT16B1_PWM16=P1.0
      P1.0,
      --  CT16B1_PWM16=P2.8
      P2.8)
     with Size => 1;
   for CT16B1_PWM16_Field use
     (P1.0 => 0,
      P2.8 => 1);

   --  CT16B1_PWM17 assigned pin
   type CT16B1_PWM17_Field is
     (
      --  CT16B1_PWM17=P1.1
      P1.1,
      --  CT16B1_PWM17=P2.9
      P2.9)
     with Size => 1;
   for CT16B1_PWM17_Field use
     (P1.1 => 0,
      P2.9 => 1);

   --  CT16B1_PWM18 assigned pin
   type CT16B1_PWM18_Field is
     (
      --  CT16B1_PWM18=P1.2
      P1.2,
      --  CT16B1_PWM18=P2.10
      P2.10)
     with Size => 1;
   for CT16B1_PWM18_Field use
     (P1.2 => 0,
      P2.10 => 1);

   --  CT16B1_PWM19 assigned pin
   type CT16B1_PWM19_Field is
     (
      --  CT16B1_PWM19=P1.3
      P1.3,
      --  CT16B1_PWM19=P2.11
      P2.11)
     with Size => 1;
   for CT16B1_PWM19_Field use
     (P1.3 => 0,
      P2.11 => 1);

   --  CT16B1_PWM20 assigned pin
   type CT16B1_PWM20_Field is
     (
      --  CT16B1_PWM20=P1.4
      P1.4,
      --  CT16B1_PWM20=P2.12
      P2.12)
     with Size => 1;
   for CT16B1_PWM20_Field use
     (P1.4 => 0,
      P2.12 => 1);

   --  CT16B1_PWM21 assigned pin
   type CT16B1_PWM21_Field is
     (
      --  CT16B1_PWM21=P1.5
      P1.5,
      --  CT16B1_PWM21=P2.13
      P2.13)
     with Size => 1;
   for CT16B1_PWM21_Field use
     (P1.5 => 0,
      P2.13 => 1);

   --  CT16B1_PWM22 assigned pin
   type CT16B1_PWM22_Field is
     (
      --  CT16B1_PWM22=P1.6
      P1.6,
      --  CT16B1_PWM22=P2.14
      P2.14)
     with Size => 1;
   for CT16B1_PWM22_Field use
     (P1.6 => 0,
      P2.14 => 1);

   --  CT16B1_PWM23 assigned pin
   type CT16B1_PWM23_Field is
     (
      --  CT16B1_PWM23=P1.7
      P1.7,
      --  CT16B1_PWM23=P2.15
      P2.15)
     with Size => 1;
   for CT16B1_PWM23_Field use
     (P1.7 => 0,
      P2.15 => 1);

   --  Offset:0x00 PFPA for CT16B1 Register
   type CT16B1_Register is record
      --  CT16B1_PWM00 assigned pin
      PWM00          : CT16B1_PWM00_Field := NRF_SVD.PFPA.P0.0;
      --  CT16B1_PWM01 assigned pin
      PWM01          : CT16B1_PWM01_Field := NRF_SVD.PFPA.P0.1;
      --  CT16B1_PWM02 assigned pin
      PWM02          : CT16B1_PWM02_Field := NRF_SVD.PFPA.P0.2;
      --  CT16B1_PWM03 assigned pin
      PWM03          : CT16B1_PWM03_Field := NRF_SVD.PFPA.P0.3;
      --  CT16B1_PWM04 assigned pin
      PWM04          : CT16B1_PWM04_Field := NRF_SVD.PFPA.P0.4;
      --  CT16B1_PWM05 assigned pin
      PWM05          : CT16B1_PWM05_Field := NRF_SVD.PFPA.P0.5;
      --  CT16B1_PWM06 assigned pin
      PWM06          : CT16B1_PWM06_Field := NRF_SVD.PFPA.P0.6;
      --  CT16B1_PWM07 assigned pin
      PWM07          : CT16B1_PWM07_Field := NRF_SVD.PFPA.P0.7;
      --  CT16B1_PWM08 assigned pin
      PWM08          : CT16B1_PWM08_Field := NRF_SVD.PFPA.P0.8;
      --  CT16B1_PWM09 assigned pin
      PWM09          : CT16B1_PWM09_Field := NRF_SVD.PFPA.P0.9;
      --  CT16B1_PWM10 assigned pin
      PWM10          : CT16B1_PWM10_Field := NRF_SVD.PFPA.P0.10;
      --  CT16B1_PWM11 assigned pin
      PWM11          : CT16B1_PWM11_Field := NRF_SVD.PFPA.P0.11;
      --  CT16B1_PWM12 assigned pin
      PWM12          : CT16B1_PWM12_Field := NRF_SVD.PFPA.P0.12;
      --  CT16B1_PWM13 assigned pin
      PWM13          : CT16B1_PWM13_Field := NRF_SVD.PFPA.P0.13;
      --  CT16B1_PWM14 assigned pin
      PWM14          : CT16B1_PWM14_Field := NRF_SVD.PFPA.P0.14;
      --  CT16B1_PWM15 assigned pin
      PWM15          : CT16B1_PWM15_Field := NRF_SVD.PFPA.P0.15;
      --  CT16B1_PWM16 assigned pin
      PWM16          : CT16B1_PWM16_Field := NRF_SVD.PFPA.P1.0;
      --  CT16B1_PWM17 assigned pin
      PWM17          : CT16B1_PWM17_Field := NRF_SVD.PFPA.P1.1;
      --  CT16B1_PWM18 assigned pin
      PWM18          : CT16B1_PWM18_Field := NRF_SVD.PFPA.P1.2;
      --  CT16B1_PWM19 assigned pin
      PWM19          : CT16B1_PWM19_Field := NRF_SVD.PFPA.P1.3;
      --  CT16B1_PWM20 assigned pin
      PWM20          : CT16B1_PWM20_Field := NRF_SVD.PFPA.P1.4;
      --  CT16B1_PWM21 assigned pin
      PWM21          : CT16B1_PWM21_Field := NRF_SVD.PFPA.P1.5;
      --  CT16B1_PWM22 assigned pin
      PWM22          : CT16B1_PWM22_Field := NRF_SVD.PFPA.P1.6;
      --  CT16B1_PWM23 assigned pin
      PWM23          : CT16B1_PWM23_Field := NRF_SVD.PFPA.P1.7;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CT16B1_Register use record
      PWM00          at 0 range 0 .. 0;
      PWM01          at 0 range 1 .. 1;
      PWM02          at 0 range 2 .. 2;
      PWM03          at 0 range 3 .. 3;
      PWM04          at 0 range 4 .. 4;
      PWM05          at 0 range 5 .. 5;
      PWM06          at 0 range 6 .. 6;
      PWM07          at 0 range 7 .. 7;
      PWM08          at 0 range 8 .. 8;
      PWM09          at 0 range 9 .. 9;
      PWM10          at 0 range 10 .. 10;
      PWM11          at 0 range 11 .. 11;
      PWM12          at 0 range 12 .. 12;
      PWM13          at 0 range 13 .. 13;
      PWM14          at 0 range 14 .. 14;
      PWM15          at 0 range 15 .. 15;
      PWM16          at 0 range 16 .. 16;
      PWM17          at 0 range 17 .. 17;
      PWM18          at 0 range 18 .. 18;
      PWM19          at 0 range 19 .. 19;
      PWM20          at 0 range 20 .. 20;
      PWM21          at 0 range 21 .. 21;
      PWM22          at 0 range 22 .. 22;
      PWM23          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral Function Pin Assignment
   type SN_PFPA_Peripheral is record
      --  Offset:0x00 PFPA for CT16B1 Register
      CT16B1 : aliased CT16B1_Register;
   end record
     with Volatile;

   for SN_PFPA_Peripheral use record
      CT16B1 at 0 range 0 .. 31;
   end record;

   --  Peripheral Function Pin Assignment
   SN_PFPA_Periph : aliased SN_PFPA_Peripheral
     with Import, Address => System'To_Address (16#40042000#);

end NRF_SVD.PFPA;
