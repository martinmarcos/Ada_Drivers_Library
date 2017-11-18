--

--  This spec has been automatically generated from AC33GA256.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PWMPRS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PWMPRSn_PRESCALER_Field is HAL.UInt8;

   --  PWM Prescaler Register n
   type PWMPRSn_Register is record
      --  Prescaler value of unit n
      PRESCALER      : PWMPRSn_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Stop/Run prescaler n clock
      CLKEN          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWMPRSn_Register use record
      PRESCALER      at 0 range 0 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      CLKEN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWMPRS0
   type PWMPRS_Peripheral is record
      --  PWM Prescaler Register n
      PWMPRSn : aliased PWMPRSn_Register;
   end record
     with Volatile;

   for PWMPRS_Peripheral use record
      PWMPRSn at 0 range 0 .. 31;
   end record;

   --  PWMPRS0
   PWMPRS0_Periph : aliased PWMPRS_Peripheral
     with Import, Address => System'To_Address (16#4000077C#);

   --  PWMPRS0
   PWMPRS1_Periph : aliased PWMPRS_Peripheral
     with Import, Address => System'To_Address (16#400007FC#);

end NRF_SVD.PWMPRS;
