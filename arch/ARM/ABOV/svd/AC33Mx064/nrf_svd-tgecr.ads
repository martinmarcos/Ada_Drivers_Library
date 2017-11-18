--

--  This spec has been automatically generated from AC33Mx064.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Timer Group Encoder Control Register
package NRF_SVD.TGECR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_PDPHAEG_Field is HAL.UInt2;
   subtype CR_QDPHBEG_Field is HAL.UInt2;

   --  Timer Group Encoder Control Register
   type CR_Register is record
      --  Quadrature decoder mode
      QDMOD          : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Quadrature mode phase Z count for Revolution
      QDPHSWAP       : Boolean := False;
      --  Quadrature mode phase Z count for Revolution
      QDPHZEG        : Boolean := False;
      --  Quadrature mode phase A count for position count
      PDPHAEG        : CR_PDPHAEG_Field := 16#0#;
      --  Quadrature mode phase B count for position count
      QDPHBEG        : CR_QDPHBEG_Field := 16#0#;
      --  PHASE A counter direction control
      ADIRCON        : Boolean := False;
      --  Phase B counter direction control
      BDIRCON        : Boolean := False;
      --  Position counter direction control
      PDIRCON        : Boolean := False;
      --  Revolution counter direction control
      RDIRCON        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      QDMOD          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      QDPHSWAP       at 0 range 2 .. 2;
      QDPHZEG        at 0 range 3 .. 3;
      PDPHAEG        at 0 range 4 .. 5;
      QDPHBEG        at 0 range 6 .. 7;
      ADIRCON        at 0 range 8 .. 8;
      BDIRCON        at 0 range 9 .. 9;
      PDIRCON        at 0 range 10 .. 10;
      RDIRCON        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Timer Group Encoder Control Register
   type TGECR_Peripheral is record
      --  Timer Group Encoder Control Register
      CR : aliased CR_Register;
   end record
     with Volatile;

   for TGECR_Peripheral use record
      CR at 0 range 0 .. 31;
   end record;

   --  Timer Group Encoder Control Register
   TGECR_Periph : aliased TGECR_Peripheral
     with Import, Address => TGECR_Base;

end NRF_SVD.TGECR;
