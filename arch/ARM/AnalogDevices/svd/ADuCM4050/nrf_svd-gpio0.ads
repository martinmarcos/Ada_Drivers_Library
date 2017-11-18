--

--  This spec has been automatically generated from ADuCM4050.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPIO0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CFG_PIN array element
   subtype CFG_PIN_Element is HAL.UInt2;

   --  CFG_PIN array
   type CFG_PIN_Field_Array is array (0 .. 15) of CFG_PIN_Element
     with Component_Size => 2, Size => 32;

   --  Port Configuration
   type CFG_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PIN as a value
            Val : HAL.UInt32;
         when True =>
            --  PIN as an array
            Arr : CFG_PIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Drive Strength Pin 00
   type DS_PIN00_Field is
     (
      --  Single Drive Strength
      Single_Pin00,
      --  Double Drive Strength
      Double_Pin00)
     with Size => 1;
   for DS_PIN00_Field use
     (Single_Pin00 => 0,
      Double_Pin00 => 1);

   --  Drive Strength Pin 01
   type DS_PIN01_Field is
     (
      --  Single Drive Strength
      Single_Pin01,
      --  Double Drive Strength
      Double_Pin01)
     with Size => 1;
   for DS_PIN01_Field use
     (Single_Pin01 => 0,
      Double_Pin01 => 1);

   --  Drive Strength Pin 02
   type DS_PIN02_Field is
     (
      --  Single Drive Strength
      Single_Pin02,
      --  Double Drive Strength
      Double_Pin02)
     with Size => 1;
   for DS_PIN02_Field use
     (Single_Pin02 => 0,
      Double_Pin02 => 1);

   --  Drive Strength Pin 03
   type DS_PIN03_Field is
     (
      --  Single Drive Strength
      Single_Pin03,
      --  Double Drive Strength
      Double_Pin03)
     with Size => 1;
   for DS_PIN03_Field use
     (Single_Pin03 => 0,
      Double_Pin03 => 1);

   --  Drive Strength Pin 04
   type DS_PIN04_Field is
     (
      --  Single Drive Strength
      Single_Pin04,
      --  Double Drive Strength
      Double_Pin04)
     with Size => 1;
   for DS_PIN04_Field use
     (Single_Pin04 => 0,
      Double_Pin04 => 1);

   --  Drive Strength Pin 05
   type DS_PIN05_Field is
     (
      --  Single Drive Strength
      Single_Pin05,
      --  Double Drive Strength
      Double_Pin05)
     with Size => 1;
   for DS_PIN05_Field use
     (Single_Pin05 => 0,
      Double_Pin05 => 1);

   --  Drive Strength Pin 06
   type DS_PIN06_Field is
     (
      --  Single Drive Strength
      Single_Pin06,
      --  Double Drive Strength
      Double_Pin06)
     with Size => 1;
   for DS_PIN06_Field use
     (Single_Pin06 => 0,
      Double_Pin06 => 1);

   --  Drive Strength Pin 07
   type DS_PIN07_Field is
     (
      --  Single Drive Strength
      Single_Pin07,
      --  Double Drive Strength
      Double_Pin07)
     with Size => 1;
   for DS_PIN07_Field use
     (Single_Pin07 => 0,
      Double_Pin07 => 1);

   --  Drive Strength Pin 08
   type DS_PIN08_Field is
     (
      --  Single Drive Strength
      Single_Pin08,
      --  Double Drive Strength
      Double_Pin08)
     with Size => 1;
   for DS_PIN08_Field use
     (Single_Pin08 => 0,
      Double_Pin08 => 1);

   --  Drive Strength Pin 09
   type DS_PIN09_Field is
     (
      --  Single Drive Strength
      Single_Pin09,
      --  Double Drive Strength
      Double_Pin09)
     with Size => 1;
   for DS_PIN09_Field use
     (Single_Pin09 => 0,
      Double_Pin09 => 1);

   --  Drive Strength Pin 10
   type DS_PIN10_Field is
     (
      --  Single Drive Strength
      Single_Pin10,
      --  Double Drive Strength
      Double_Pin10)
     with Size => 1;
   for DS_PIN10_Field use
     (Single_Pin10 => 0,
      Double_Pin10 => 1);

   --  Drive Strength Pin 11
   type DS_PIN11_Field is
     (
      --  Single Drive Strength
      Single_Pin11,
      --  Double Drive Strength
      Double_Pin11)
     with Size => 1;
   for DS_PIN11_Field use
     (Single_Pin11 => 0,
      Double_Pin11 => 1);

   --  Drive Strength Pin 12
   type DS_PIN12_Field is
     (
      --  Single Drive Strength
      Single_Pin12,
      --  Double Drive Strength
      Double_Pin12)
     with Size => 1;
   for DS_PIN12_Field use
     (Single_Pin12 => 0,
      Double_Pin12 => 1);

   --  Drive Strength Pin 13
   type DS_PIN13_Field is
     (
      --  Single Drive Strength
      Single_Pin13,
      --  Double Drive Strength
      Double_Pin13)
     with Size => 1;
   for DS_PIN13_Field use
     (Single_Pin13 => 0,
      Double_Pin13 => 1);

   --  Drive Strength Pin 14
   type DS_PIN14_Field is
     (
      --  Single Drive Strength
      Single_Pin14,
      --  Double Drive Strength
      Double_Pin14)
     with Size => 1;
   for DS_PIN14_Field use
     (Single_Pin14 => 0,
      Double_Pin14 => 1);

   --  Drive Strength Pin 15
   type DS_PIN15_Field is
     (
      --  Single Drive Strength
      Single_Pin15,
      --  Double Drive Strength
      Double_Pin15)
     with Size => 1;
   for DS_PIN15_Field use
     (Single_Pin15 => 0,
      Double_Pin15 => 1);

   --  Port Drive Strength Select
   type DS_Register is record
      --  Drive Strength Pin 00
      PIN00 : DS_PIN00_Field := NRF_SVD.GPIO0.Single_Pin00;
      --  Drive Strength Pin 01
      PIN01 : DS_PIN01_Field := NRF_SVD.GPIO0.Single_Pin01;
      --  Drive Strength Pin 02
      PIN02 : DS_PIN02_Field := NRF_SVD.GPIO0.Single_Pin02;
      --  Drive Strength Pin 03
      PIN03 : DS_PIN03_Field := NRF_SVD.GPIO0.Single_Pin03;
      --  Drive Strength Pin 04
      PIN04 : DS_PIN04_Field := NRF_SVD.GPIO0.Single_Pin04;
      --  Drive Strength Pin 05
      PIN05 : DS_PIN05_Field := NRF_SVD.GPIO0.Single_Pin05;
      --  Drive Strength Pin 06
      PIN06 : DS_PIN06_Field := NRF_SVD.GPIO0.Single_Pin06;
      --  Drive Strength Pin 07
      PIN07 : DS_PIN07_Field := NRF_SVD.GPIO0.Single_Pin07;
      --  Drive Strength Pin 08
      PIN08 : DS_PIN08_Field := NRF_SVD.GPIO0.Single_Pin08;
      --  Drive Strength Pin 09
      PIN09 : DS_PIN09_Field := NRF_SVD.GPIO0.Single_Pin09;
      --  Drive Strength Pin 10
      PIN10 : DS_PIN10_Field := NRF_SVD.GPIO0.Single_Pin10;
      --  Drive Strength Pin 11
      PIN11 : DS_PIN11_Field := NRF_SVD.GPIO0.Single_Pin11;
      --  Drive Strength Pin 12
      PIN12 : DS_PIN12_Field := NRF_SVD.GPIO0.Single_Pin12;
      --  Drive Strength Pin 13
      PIN13 : DS_PIN13_Field := NRF_SVD.GPIO0.Single_Pin13;
      --  Drive Strength Pin 14
      PIN14 : DS_PIN14_Field := NRF_SVD.GPIO0.Single_Pin14;
      --  Drive Strength Pin 15
      PIN15 : DS_PIN15_Field := NRF_SVD.GPIO0.Single_Pin15;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DS_Register use record
      PIN00 at 0 range 0 .. 0;
      PIN01 at 0 range 1 .. 1;
      PIN02 at 0 range 2 .. 2;
      PIN03 at 0 range 3 .. 3;
      PIN04 at 0 range 4 .. 4;
      PIN05 at 0 range 5 .. 5;
      PIN06 at 0 range 6 .. 6;
      PIN07 at 0 range 7 .. 7;
      PIN08 at 0 range 8 .. 8;
      PIN09 at 0 range 9 .. 9;
      PIN10 at 0 range 10 .. 10;
      PIN11 at 0 range 11 .. 11;
      PIN12 at 0 range 12 .. 12;
      PIN13 at 0 range 13 .. 13;
      PIN14 at 0 range 14 .. 14;
      PIN15 at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-Purpose Input/Output
   type GPIO0_Peripheral is record
      --  Port Configuration
      CFG   : aliased CFG_Register;
      --  Port Output Enable
      OEN   : aliased HAL.UInt16;
      --  Port Output Pull-up/Pull-down Enable
      PE    : aliased HAL.UInt16;
      --  Port Input Path Enable
      IEN   : aliased HAL.UInt16;
      --  Port Registered Data Input
      IN_k  : aliased HAL.UInt16;
      --  Port Data Output
      OUT_k : aliased HAL.UInt16;
      --  Port Data Out Set
      SET   : aliased HAL.UInt16;
      --  Port Data Out Clear
      CLR   : aliased HAL.UInt16;
      --  Port Pin Toggle
      TGL   : aliased HAL.UInt16;
      --  Port Interrupt Polarity
      POL   : aliased HAL.UInt16;
      --  Port Interrupt A Enable
      IENA  : aliased HAL.UInt16;
      --  Port Interrupt B Enable
      IENB  : aliased HAL.UInt16;
      --  Port Interrupt Status
      INT   : aliased HAL.UInt16;
      --  Port Drive Strength Select
      DS    : aliased DS_Register;
   end record
     with Volatile;

   for GPIO0_Peripheral use record
      CFG   at 16#0# range 0 .. 31;
      OEN   at 16#4# range 0 .. 15;
      PE    at 16#8# range 0 .. 15;
      IEN   at 16#C# range 0 .. 15;
      IN_k  at 16#10# range 0 .. 15;
      OUT_k at 16#14# range 0 .. 15;
      SET   at 16#18# range 0 .. 15;
      CLR   at 16#1C# range 0 .. 15;
      TGL   at 16#20# range 0 .. 15;
      POL   at 16#24# range 0 .. 15;
      IENA  at 16#28# range 0 .. 15;
      IENB  at 16#2C# range 0 .. 15;
      INT   at 16#30# range 0 .. 15;
      DS    at 16#34# range 0 .. 15;
   end record;

   --  General-Purpose Input/Output
   GPIO0_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40020000#);

   --  General-Purpose Input/Output
   GPIO1_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40020040#);

   --  General-Purpose Input/Output
   GPIO2_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40020080#);

   --  General-Purpose Input/Output
   GPIO3_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#400200C0#);

end NRF_SVD.GPIO0;
