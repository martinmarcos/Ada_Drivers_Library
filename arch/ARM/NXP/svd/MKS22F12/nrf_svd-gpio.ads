--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKS22F12.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Port Data Output
   type PDOR_PDO0_Field is
     (
      --  Logic level 0 is driven on pin, provided pin is configured for
      --  general-purpose output.
      PDOR_PDO0_Field_0,
      --  Logic level 1 is driven on pin, provided pin is configured for
      --  general-purpose output.
      PDOR_PDO0_Field_1)
     with Size => 1;
   for PDOR_PDO0_Field use
     (PDOR_PDO0_Field_0 => 0,
      PDOR_PDO0_Field_1 => 1);

   --  GPIOA_PDOR_PDO array
   type GPIOA_PDOR_PDO_Field_Array is array (0 .. 31) of PDOR_PDO0_Field
     with Component_Size => 1, Size => 32;

   --  Port Data Output Register
   type GPIOA_PDOR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDO as a value
            Val : HAL.UInt32;
         when True =>
            --  PDO as an array
            Arr : GPIOA_PDOR_PDO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PDOR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port Set Output
   type PSOR_PTSO0_Field is
     (
      --  Corresponding bit in PDORn does not change.
      PSOR_PTSO0_Field_0,
      --  Corresponding bit in PDORn is set to logic 1.
      PSOR_PTSO0_Field_1)
     with Size => 1;
   for PSOR_PTSO0_Field use
     (PSOR_PTSO0_Field_0 => 0,
      PSOR_PTSO0_Field_1 => 1);

   --  GPIOA_PSOR_PTSO array
   type GPIOA_PSOR_PTSO_Field_Array is array (0 .. 31) of PSOR_PTSO0_Field
     with Component_Size => 1, Size => 32;

   --  Port Set Output Register
   type GPIOA_PSOR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PTSO as a value
            Val : HAL.UInt32;
         when True =>
            --  PTSO as an array
            Arr : GPIOA_PSOR_PTSO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PSOR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port Clear Output
   type PCOR_PTCO0_Field is
     (
      --  Corresponding bit in PDORn does not change.
      PCOR_PTCO0_Field_0,
      --  Corresponding bit in PDORn is cleared to logic 0.
      PCOR_PTCO0_Field_1)
     with Size => 1;
   for PCOR_PTCO0_Field use
     (PCOR_PTCO0_Field_0 => 0,
      PCOR_PTCO0_Field_1 => 1);

   --  GPIOA_PCOR_PTCO array
   type GPIOA_PCOR_PTCO_Field_Array is array (0 .. 31) of PCOR_PTCO0_Field
     with Component_Size => 1, Size => 32;

   --  Port Clear Output Register
   type GPIOA_PCOR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PTCO as a value
            Val : HAL.UInt32;
         when True =>
            --  PTCO as an array
            Arr : GPIOA_PCOR_PTCO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PCOR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port Toggle Output
   type PTOR_PTTO0_Field is
     (
      --  Corresponding bit in PDORn does not change.
      PTOR_PTTO0_Field_0,
      --  Corresponding bit in PDORn is set to the inverse of its existing
      --  logic state.
      PTOR_PTTO0_Field_1)
     with Size => 1;
   for PTOR_PTTO0_Field use
     (PTOR_PTTO0_Field_0 => 0,
      PTOR_PTTO0_Field_1 => 1);

   --  GPIOA_PTOR_PTTO array
   type GPIOA_PTOR_PTTO_Field_Array is array (0 .. 31) of PTOR_PTTO0_Field
     with Component_Size => 1, Size => 32;

   --  Port Toggle Output Register
   type GPIOA_PTOR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PTTO as a value
            Val : HAL.UInt32;
         when True =>
            --  PTTO as an array
            Arr : GPIOA_PTOR_PTTO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PTOR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port Data Input
   type PDIR_PDI0_Field is
     (
      --  Pin logic level is logic 0, or is not configured for use by digital
      --  function.
      PDIR_PDI0_Field_0,
      --  Pin logic level is logic 1.
      PDIR_PDI0_Field_1)
     with Size => 1;
   for PDIR_PDI0_Field use
     (PDIR_PDI0_Field_0 => 0,
      PDIR_PDI0_Field_1 => 1);

   --  GPIOA_PDIR_PDI array
   type GPIOA_PDIR_PDI_Field_Array is array (0 .. 31) of PDIR_PDI0_Field
     with Component_Size => 1, Size => 32;

   --  Port Data Input Register
   type GPIOA_PDIR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDI as a value
            Val : HAL.UInt32;
         when True =>
            --  PDI as an array
            Arr : GPIOA_PDIR_PDI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PDIR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port Data Direction
   type PDDR_PDD0_Field is
     (
      --  Pin is configured as general-purpose input, for the GPIO function.
      PDDR_PDD0_Field_0,
      --  Pin is configured as general-purpose output, for the GPIO function.
      PDDR_PDD0_Field_1)
     with Size => 1;
   for PDDR_PDD0_Field use
     (PDDR_PDD0_Field_0 => 0,
      PDDR_PDD0_Field_1 => 1);

   --  GPIOA_PDDR_PDD array
   type GPIOA_PDDR_PDD_Field_Array is array (0 .. 31) of PDDR_PDD0_Field
     with Component_Size => 1, Size => 32;

   --  Port Data Direction Register
   type GPIOA_PDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDD as a value
            Val : HAL.UInt32;
         when True =>
            --  PDD as an array
            Arr : GPIOA_PDDR_PDD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input/Output
   type GPIO_Peripheral is record
      --  Port Data Output Register
      PDOR : aliased GPIOA_PDOR_Register;
      --  Port Set Output Register
      PSOR : aliased GPIOA_PSOR_Register;
      --  Port Clear Output Register
      PCOR : aliased GPIOA_PCOR_Register;
      --  Port Toggle Output Register
      PTOR : aliased GPIOA_PTOR_Register;
      --  Port Data Input Register
      PDIR : aliased GPIOA_PDIR_Register;
      --  Port Data Direction Register
      PDDR : aliased GPIOA_PDDR_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      PDOR at 16#0# range 0 .. 31;
      PSOR at 16#4# range 0 .. 31;
      PCOR at 16#8# range 0 .. 31;
      PTOR at 16#C# range 0 .. 31;
      PDIR at 16#10# range 0 .. 31;
      PDDR at 16#14# range 0 .. 31;
   end record;

   --  General Purpose Input/Output
   GPIOA_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400FF000#);

   --  General Purpose Input/Output
   GPIOB_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400FF040#);

   --  General Purpose Input/Output
   GPIOC_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400FF080#);

   --  General Purpose Input/Output
   GPIOD_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400FF0C0#);

   --  General Purpose Input/Output
   GPIOE_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400FF100#);

end NRF_SVD.GPIO;
