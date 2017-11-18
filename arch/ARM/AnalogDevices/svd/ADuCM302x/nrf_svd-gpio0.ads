--

--  This spec has been automatically generated from ADuCM302x.svd

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

   -----------------
   -- Peripherals --
   -----------------

   --  Unknown
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
      DS    : aliased HAL.UInt16;
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

   --  Unknown
   GPIO0_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40020000#);

   --  Unknown
   GPIO1_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40020040#);

   --  Unknown
   GPIO2_Periph : aliased GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40020080#);

end NRF_SVD.GPIO0;
