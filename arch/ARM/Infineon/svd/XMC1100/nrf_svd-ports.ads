--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PORTS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Port 0 Output Bit 0
   type OUT_P0_Field is
     (
      --  The output level of P0.x is 0.
      VALUE1,
      --  The output level of P0.x is 1.
      VALUE2)
     with Size => 1;
   for OUT_P0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  OUT_P array
   type OUT_P_Field_Array is array (0 .. 15) of OUT_P0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for OUT_P
   type OUT_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : OUT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OUT_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port 0 Output Register
   type OUT_Register is record
      --  Port 0 Output Bit 0
      P              : OUT_P_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OMR_PS array
   type OMR_PS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for OMR_PS
   type OMR_PS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PS as a value
            Val : HAL.UInt16;
         when True =>
            --  PS as an array
            Arr : OMR_PS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OMR_PS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  OMR_PR array
   type OMR_PR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for OMR_PR
   type OMR_PR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PR as a value
            Val : HAL.UInt16;
         when True =>
            --  PR as an array
            Arr : OMR_PR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OMR_PR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port 0 Output Modification Register
   type OMR_Register is record
      --  Write-only. Port 0 Set Bit 0
      PS : OMR_PS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port 0 Reset Bit 0
      PR : OMR_PR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OMR_Register use record
      PS at 0 range 0 .. 15;
      PR at 0 range 16 .. 31;
   end record;

   --  Port Control for Port n Pin 0 to 3
   type IOCR0_PC0_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR0_PC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 0 to 3
   type IOCR0_PC1_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR0_PC1_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 0 to 3
   type IOCR0_PC2_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR0_PC2_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 0 to 3
   type IOCR0_PC3_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR0_PC3_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port 0 Input/Output Control Register 0
   type IOCR0_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 0 to 3
      PC0            : IOCR0_PC0_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 0 to 3
      PC1            : IOCR0_PC1_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 0 to 3
      PC2            : IOCR0_PC2_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 0 to 3
      PC3            : IOCR0_PC3_Field := NRF_SVD.PORTS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCR0_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PC0            at 0 range 3 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      PC1            at 0 range 11 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      PC2            at 0 range 19 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      PC3            at 0 range 27 .. 31;
   end record;

   --  Port Control for Port n Pin 4 to 7
   type IOCR4_PC4_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR4_PC4_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 4 to 7
   type IOCR4_PC5_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR4_PC5_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 4 to 7
   type IOCR4_PC6_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR4_PC6_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 4 to 7
   type IOCR4_PC7_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR4_PC7_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port 0 Input/Output Control Register 4
   type IOCR4_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 7
      PC4            : IOCR4_PC4_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 7
      PC5            : IOCR4_PC5_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 7
      PC6            : IOCR4_PC6_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 7
      PC7            : IOCR4_PC7_Field := NRF_SVD.PORTS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCR4_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PC4            at 0 range 3 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      PC5            at 0 range 11 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      PC6            at 0 range 19 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      PC7            at 0 range 27 .. 31;
   end record;

   --  Port Control for Port n Pin 8 to 11
   type IOCR8_PC8_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR8_PC8_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 8 to 11
   type IOCR8_PC9_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR8_PC9_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 8 to 11
   type IOCR8_PC10_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR8_PC10_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 8 to 11
   type IOCR8_PC11_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR8_PC11_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port 0 Input/Output Control Register 8
   type IOCR8_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 8 to 11
      PC8            : IOCR8_PC8_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 8 to 11
      PC9            : IOCR8_PC9_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 8 to 11
      PC10           : IOCR8_PC10_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 8 to 11
      PC11           : IOCR8_PC11_Field := NRF_SVD.PORTS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCR8_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PC8            at 0 range 3 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      PC9            at 0 range 11 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      PC10           at 0 range 19 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      PC11           at 0 range 27 .. 31;
   end record;

   --  Port Control for Port n Pin 12 to 15
   type IOCR12_PC12_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR12_PC12_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 12 to 15
   type IOCR12_PC13_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR12_PC13_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 12 to 15
   type IOCR12_PC14_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR12_PC14_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port Control for Port n Pin 12 to 15
   type IOCR12_PC15_Field is
     (
      --  Input - No internal pull device active
      VALUE1,
      --  Input - Internal pull-down device active
      VALUE2,
      --  Input - Internal pull-up device active
      VALUE3,
      --  Input - No internal pull device, Pn_OUTx = input value
      VALUE4,
      --  Input inverted - No internal pull device active
      VALUE5,
      --  Input inverted - Internal pull-down device active
      VALUE6,
      --  Input inverted - Internal pull-up device active
      VALUE7,
      --  Input inverted - No internal pull device, Pn_OUTx = input value
      VALUE8,
      --  Output Push-Pull - General-purpose output
      VALUE9,
      --  Output Push-Pull - Alternate output function 1
      VALUE10,
      --  Output Push-Pull - Alternate output function 2
      VALUE11,
      --  Output Push-Pull - Alternate output function 3
      VALUE12,
      --  Output Push-Pull - Alternate output function 4
      VALUE13,
      --  Output Push-Pull - Alternate output function 5
      VALUE14,
      --  Output Push-Pull - Alternate output function 6
      VALUE15,
      --  Output Push-Pull - Alternate output function 7
      VALUE16,
      --  Output Open Drain - General-purpose output
      VALUE17,
      --  Output Open Drain - Alternate output function 1
      VALUE18,
      --  Output Open Drain - Alternate output function 2
      VALUE19,
      --  Output Open Drain - Alternate output function 3
      VALUE20,
      --  Output Open Drain - Alternate output function 4
      VALUE21,
      --  Output Open Drain - Alternate output function 5
      VALUE22,
      --  Output Open Drain - Alternate output function 6
      VALUE23,
      --  Output Open Drain - Alternate output function 7
      VALUE24)
     with Size => 5;
   for IOCR12_PC15_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 16,
      VALUE10 => 17,
      VALUE11 => 18,
      VALUE12 => 19,
      VALUE13 => 20,
      VALUE14 => 21,
      VALUE15 => 22,
      VALUE16 => 23,
      VALUE17 => 24,
      VALUE18 => 25,
      VALUE19 => 26,
      VALUE20 => 27,
      VALUE21 => 28,
      VALUE22 => 29,
      VALUE23 => 30,
      VALUE24 => 31);

   --  Port 0 Input/Output Control Register 12
   type IOCR12_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 12 to 15
      PC12           : IOCR12_PC12_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 12 to 15
      PC13           : IOCR12_PC13_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 12 to 15
      PC14           : IOCR12_PC14_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 12 to 15
      PC15           : IOCR12_PC15_Field := NRF_SVD.PORTS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCR12_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PC12           at 0 range 3 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      PC13           at 0 range 11 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      PC14           at 0 range 19 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      PC15           at 0 range 27 .. 31;
   end record;

   --  Port 0 Input Bit 0
   type IN_P0_Field is
     (
      --  The input level of P0.x is 0.
      VALUE1,
      --  The input level of P0.x is 1.
      VALUE2)
     with Size => 1;
   for IN_P0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  IN_P array
   type IN_P_Field_Array is array (0 .. 15) of IN_P0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for IN_P
   type IN_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt16;
         when True =>
            --  P as an array
            Arr : IN_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IN_P_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port 0 Input Register
   type IN_Register is record
      --  Read-only. Port 0 Input Bit 0
      P              : IN_P_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_Register use record
      P              at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Port 0 Pad Hysteresis Control Register 0
   type PHCR0_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Pad Hysteresis for Pn.0
      PH0            : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.1
      PH1            : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.2
      PH2            : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.3
      PH3            : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.4
      PH4            : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.5
      PH5            : Boolean := False;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.6
      PH6            : Boolean := False;
      --  unspecified
      Reserved_27_29 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for Pn.7
      PH7            : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHCR0_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PH0            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PH1            at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      PH2            at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      PH3            at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      PH4            at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      PH5            at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      PH6            at 0 range 26 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      PH7            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Port 0 Pad Hysteresis Control Register 1
   type PHCR1_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Pad Hysteresis for P0.8
      PH8            : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.9
      PH9            : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.10
      PH10           : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.11
      PH11           : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.12
      PH12           : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.13
      PH13           : Boolean := False;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.14
      PH14           : Boolean := False;
      --  unspecified
      Reserved_27_29 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P0.15
      PH15           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHCR1_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PH8            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PH9            at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      PH10           at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      PH11           at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      PH12           at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      PH13           at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      PH14           at 0 range 26 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      PH15           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Pad Disable for Port 0 Pin 0
   type PDISC_PDIS0_Field is
     (
      --  Pad P0.x is enabled.
      VALUE1,
      --  Pad P0.x is disabled.
      VALUE2)
     with Size => 1;
   for PDISC_PDIS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PDISC_PDIS array
   type PDISC_PDIS_Field_Array is array (0 .. 15) of PDISC_PDIS0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for PDISC_PDIS
   type PDISC_PDIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDIS as a value
            Val : HAL.UInt16;
         when True =>
            --  PDIS as an array
            Arr : PDISC_PDIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDISC_PDIS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port 0 Pin Function Decision Control Register
   type PDISC_Register is record
      --  Read-only. Pad Disable for Port 0 Pin 0
      PDIS           : PDISC_PDIS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDISC_Register use record
      PDIS           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Port 0 Pin Power Save Bit 0
   type PPS_PPS0_Field is
     (
      --  Pin Power Save of P0.x is disabled.
      VALUE1,
      --  Pin Power Save of P0.x is enabled.
      VALUE2)
     with Size => 1;
   for PPS_PPS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PPS array
   type PPS_Field_Array is array (0 .. 15) of PPS_PPS0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for PPS
   type PPS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPS as a value
            Val : HAL.UInt16;
         when True =>
            --  PPS as an array
            Arr : PPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PPS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Port 0 Pin Power Save Register
   type PPS_Register is record
      --  Port 0 Pin Power Save Bit 0
      PPS            : PPS_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPS_Register use record
      PPS            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Port 0 Pin Hardware Select Bit 0
   type HWSEL_HW0_Field is
     (
      --  Software control only.
      VALUE1,
      --  HW0 control path can override the software configuration.
      VALUE2,
      --  HW1 control path can override the software configuration.
      VALUE3)
     with Size => 2;
   for HWSEL_HW0_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  HWSEL_HW array
   type HWSEL_HW_Field_Array is array (0 .. 15) of HWSEL_HW0_Field
     with Component_Size => 2, Size => 32;

   --  Port 0 Pin Hardware Select Register
   type HWSEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HW as a value
            Val : HAL.UInt32;
         when True =>
            --  HW as an array
            Arr : HWSEL_HW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HWSEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OUT_P array
   type OUT_P_Field_Array_1 is array (0 .. 6) of OUT_P0_Field
     with Component_Size => 1, Size => 7;

   --  Type definition for OUT_P
   type OUT_P_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt7;
         when True =>
            --  P as an array
            Arr : OUT_P_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for OUT_P_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Port 1 Output Register
   type OUT_Register_1 is record
      --  Port 1 Output Bit 0
      P             : OUT_P_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_Register_1 use record
      P             at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  OMR_PS array
   type OMR_PS_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for OMR_PS
   type OMR_PS_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PS as a value
            Val : HAL.UInt7;
         when True =>
            --  PS as an array
            Arr : OMR_PS_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for OMR_PS_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  OMR_PR array
   type OMR_PR_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for OMR_PR
   type OMR_PR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PR as a value
            Val : HAL.UInt7;
         when True =>
            --  PR as an array
            Arr : OMR_PR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for OMR_PR_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Port 1 Output Modification Register
   type OMR_Register_1 is record
      --  Write-only. Port 1 Set Bit 0
      PS             : OMR_PS_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Write-only. Port 1 Reset Bit 0
      PR             : OMR_PR_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OMR_Register_1 use record
      PS             at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      PR             at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Port 1 Input/Output Control Register 4
   type IOCR4_Register_1 is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 6
      PC4            : IOCR4_PC4_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 6
      PC5            : IOCR4_PC5_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  Port Control for Port n Pin 4 to 6
      PC6            : IOCR4_PC6_Field := NRF_SVD.PORTS.VALUE1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCR4_Register_1 use record
      Reserved_0_2   at 0 range 0 .. 2;
      PC4            at 0 range 3 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      PC5            at 0 range 11 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      PC6            at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  IN_P array
   type IN_P_Field_Array_1 is array (0 .. 6) of IN_P0_Field
     with Component_Size => 1, Size => 7;

   --  Type definition for IN_P
   type IN_P_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt7;
         when True =>
            --  P as an array
            Arr : IN_P_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for IN_P_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Port 1 Input Register
   type IN_Register_1 is record
      --  Read-only. Port 1 Input Bit 0
      P             : IN_P_Field_1;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_Register_1 use record
      P             at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Port 1 Pad Hysteresis Control Register 0
   type PHCR0_Register_1 is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Pad Hysteresis for P1.0
      PH0            : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P1.1
      PH1            : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P1.2
      PH2            : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P1.3
      PH3            : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P1.4
      PH4            : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P1.5
      PH5            : Boolean := False;
      --  unspecified
      Reserved_23_25 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P1.6
      PH6            : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHCR0_Register_1 use record
      Reserved_0_1   at 0 range 0 .. 1;
      PH0            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PH1            at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      PH2            at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      PH3            at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      PH4            at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      PH5            at 0 range 22 .. 22;
      Reserved_23_25 at 0 range 23 .. 25;
      PH6            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  PDISC_PDIS array
   type PDISC_PDIS_Field_Array_1 is array (0 .. 6) of PDISC_PDIS0_Field
     with Component_Size => 1, Size => 7;

   --  Type definition for PDISC_PDIS
   type PDISC_PDIS_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDIS as a value
            Val : HAL.UInt7;
         when True =>
            --  PDIS as an array
            Arr : PDISC_PDIS_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PDISC_PDIS_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Port 1 Pin Function Decision Control Register
   type PDISC_Register_1 is record
      --  Read-only. Pad Disable for Port 1 Pin 0
      PDIS          : PDISC_PDIS_Field_1;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDISC_Register_1 use record
      PDIS          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PPS array
   type PPS_Field_Array_1 is array (0 .. 6) of PPS_PPS0_Field
     with Component_Size => 1, Size => 7;

   --  Type definition for PPS
   type PPS_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPS as a value
            Val : HAL.UInt7;
         when True =>
            --  PPS as an array
            Arr : PPS_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PPS_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Port 1 Pin Power Save Register
   type PPS_Register_1 is record
      --  Port 1 Pin Power Save Bit 0
      PPS           : PPS_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPS_Register_1 use record
      PPS           at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  HWSEL_HW array
   type HWSEL_HW_Field_Array_1 is array (0 .. 6) of HWSEL_HW0_Field
     with Component_Size => 2, Size => 14;

   --  Type definition for HWSEL_HW
   type HWSEL_HW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HW as a value
            Val : HAL.UInt14;
         when True =>
            --  HW as an array
            Arr : HWSEL_HW_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for HWSEL_HW_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  Port 1 Pin Hardware Select Register
   type HWSEL_Register_1 is record
      --  Port 1 Pin Hardware Select Bit 0
      HW             : HWSEL_HW_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWSEL_Register_1 use record
      HW             at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  OUT_P array
   type OUT_P_Field_Array_2 is array (0 .. 11) of OUT_P0_Field
     with Component_Size => 1, Size => 12;

   --  Type definition for OUT_P
   type OUT_P_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt12;
         when True =>
            --  P as an array
            Arr : OUT_P_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for OUT_P_Field_2 use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Port 2 Output Register
   type OUT_Register_2 is record
      --  Port 2 Output Bit 0
      P              : OUT_P_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_Register_2 use record
      P              at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  OMR_PS array
   type OMR_PS_Field_Array_2 is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for OMR_PS
   type OMR_PS_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PS as a value
            Val : HAL.UInt12;
         when True =>
            --  PS as an array
            Arr : OMR_PS_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for OMR_PS_Field_2 use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  OMR_PR array
   type OMR_PR_Field_Array_2 is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for OMR_PR
   type OMR_PR_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PR as a value
            Val : HAL.UInt12;
         when True =>
            --  PR as an array
            Arr : OMR_PR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for OMR_PR_Field_2 use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Port 2 Output Modification Register
   type OMR_Register_2 is record
      --  Write-only. Port 2 Set Bit 0
      PS             : OMR_PS_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Port 2 Reset Bit 0
      PR             : OMR_PR_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OMR_Register_2 use record
      PS             at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PR             at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  IN_P array
   type IN_P_Field_Array_2 is array (0 .. 11) of IN_P0_Field
     with Component_Size => 1, Size => 12;

   --  Type definition for IN_P
   type IN_P_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt12;
         when True =>
            --  P as an array
            Arr : IN_P_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for IN_P_Field_2 use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Port 2 Input Register
   type IN_Register_2 is record
      --  Read-only. Port 2 Input Bit 0
      P              : IN_P_Field_2;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_Register_2 use record
      P              at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Port 2 Pad Hysteresis Control Register 1
   type PHCR1_Register_1 is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Pad Hysteresis for P2.8
      PH8            : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P2.9
      PH9            : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P2.10
      PH10           : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Pad Hysteresis for P2.11
      PH11           : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHCR1_Register_1 use record
      Reserved_0_1   at 0 range 0 .. 1;
      PH8            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PH9            at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      PH10           at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      PH11           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  PDISC_PDIS array
   type PDISC_PDIS_Field_Array_2 is array (0 .. 1) of PDISC_PDIS0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for PDISC_PDIS
   type PDISC_PDIS_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDIS as a value
            Val : HAL.UInt2;
         when True =>
            --  PDIS as an array
            Arr : PDISC_PDIS_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PDISC_PDIS_Field_2 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Pad Disable for Port 2 Pin 2
   type PDISC_PDIS2_Field is
     (
      --  Digital Pad input is enabled. Analog and digital input path active.
      VALUE1,
      --  Digital Pad input is disabled. Analog input path active. (default)
      VALUE2)
     with Size => 1;
   for PDISC_PDIS2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PDISC_PDIS array
   type PDISC_PDIS_Field_Array_3 is array (2 .. 9) of PDISC_PDIS2_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for PDISC_PDIS
   type PDISC_PDIS_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDIS as a value
            Val : HAL.UInt8;
         when True =>
            --  PDIS as an array
            Arr : PDISC_PDIS_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PDISC_PDIS_Field_3 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Pad Disable for Port 2 Pin 10
   type PDISC_PDIS10_Field is
     (
      --  Digital Pad input is enabled. Analog and digital input/output path
      --  active.
      VALUE1,
      --  Digital Pad input is disabled. Analog input path active. (default)
      VALUE2)
     with Size => 1;
   for PDISC_PDIS10_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PDISC_PDIS array
   type PDISC_PDIS_Field_Array_4 is array (10 .. 11) of PDISC_PDIS10_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for PDISC_PDIS
   type PDISC_PDIS_Field_4
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDIS as a value
            Val : HAL.UInt2;
         when True =>
            --  PDIS as an array
            Arr : PDISC_PDIS_Field_Array_4;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PDISC_PDIS_Field_4 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Port 2 Pin Function Decision Control Register
   type PDISC_Register_2 is record
      --  Pad Disable for Port 2 Pin 0
      PDIS           : PDISC_PDIS_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  Pad Disable for Port 2 Pin 2
      PDIS_1         : PDISC_PDIS_Field_3 :=
                        (As_Array => False, Val => 16#0#);
      --  Pad Disable for Port 2 Pin 10
      PDIS_2         : PDISC_PDIS_Field_4 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDISC_Register_2 use record
      PDIS           at 0 range 0 .. 1;
      PDIS_1         at 0 range 2 .. 9;
      PDIS_2         at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PPS array
   type PPS_Field_Array_2 is array (0 .. 11) of PPS_PPS0_Field
     with Component_Size => 1, Size => 12;

   --  Type definition for PPS
   type PPS_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPS as a value
            Val : HAL.UInt12;
         when True =>
            --  PPS as an array
            Arr : PPS_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for PPS_Field_2 use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Port 2 Pin Power Save Register
   type PPS_Register_2 is record
      --  Port 2 Pin Power Save Bit 0
      PPS            : PPS_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPS_Register_2 use record
      PPS            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  HWSEL_HW array
   type HWSEL_HW_Field_Array_2 is array (0 .. 11) of HWSEL_HW0_Field
     with Component_Size => 2, Size => 24;

   --  Type definition for HWSEL_HW
   type HWSEL_HW_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HW as a value
            Val : HAL.UInt24;
         when True =>
            --  HW as an array
            Arr : HWSEL_HW_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for HWSEL_HW_Field_1 use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Port 2 Pin Hardware Select Register
   type HWSEL_Register_2 is record
      --  Port 2 Pin Hardware Select Bit 0
      HW             : HWSEL_HW_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWSEL_Register_2 use record
      HW             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Port 0
   type PORT0_Peripheral is record
      --  Port 0 Output Register
      OUT_k  : aliased OUT_Register;
      --  Port 0 Output Modification Register
      OMR    : aliased OMR_Register;
      --  Port 0 Input/Output Control Register 0
      IOCR0  : aliased IOCR0_Register;
      --  Port 0 Input/Output Control Register 4
      IOCR4  : aliased IOCR4_Register;
      --  Port 0 Input/Output Control Register 8
      IOCR8  : aliased IOCR8_Register;
      --  Port 0 Input/Output Control Register 12
      IOCR12 : aliased IOCR12_Register;
      --  Port 0 Input Register
      IN_k   : aliased IN_Register;
      --  Port 0 Pad Hysteresis Control Register 0
      PHCR0  : aliased PHCR0_Register;
      --  Port 0 Pad Hysteresis Control Register 1
      PHCR1  : aliased PHCR1_Register;
      --  Port 0 Pin Function Decision Control Register
      PDISC  : aliased PDISC_Register;
      --  Port 0 Pin Power Save Register
      PPS    : aliased PPS_Register;
      --  Port 0 Pin Hardware Select Register
      HWSEL  : aliased HWSEL_Register;
   end record
     with Volatile;

   for PORT0_Peripheral use record
      OUT_k  at 16#0# range 0 .. 31;
      OMR    at 16#4# range 0 .. 31;
      IOCR0  at 16#10# range 0 .. 31;
      IOCR4  at 16#14# range 0 .. 31;
      IOCR8  at 16#18# range 0 .. 31;
      IOCR12 at 16#1C# range 0 .. 31;
      IN_k   at 16#24# range 0 .. 31;
      PHCR0  at 16#40# range 0 .. 31;
      PHCR1  at 16#44# range 0 .. 31;
      PDISC  at 16#60# range 0 .. 31;
      PPS    at 16#70# range 0 .. 31;
      HWSEL  at 16#74# range 0 .. 31;
   end record;

   --  Port 0
   PORT0_Periph : aliased PORT0_Peripheral
     with Import, Address => System'To_Address (16#40040000#);

   --  Port 1
   type PORT1_Peripheral is record
      --  Port 1 Output Register
      OUT_k : aliased OUT_Register_1;
      --  Port 1 Output Modification Register
      OMR   : aliased OMR_Register_1;
      --  Port 1 Input/Output Control Register 0
      IOCR0 : aliased IOCR0_Register;
      --  Port 1 Input/Output Control Register 4
      IOCR4 : aliased IOCR4_Register_1;
      --  Port 1 Input Register
      IN_k  : aliased IN_Register_1;
      --  Port 1 Pad Hysteresis Control Register 0
      PHCR0 : aliased PHCR0_Register_1;
      --  Port 1 Pin Function Decision Control Register
      PDISC : aliased PDISC_Register_1;
      --  Port 1 Pin Power Save Register
      PPS   : aliased PPS_Register_1;
      --  Port 1 Pin Hardware Select Register
      HWSEL : aliased HWSEL_Register_1;
   end record
     with Volatile;

   for PORT1_Peripheral use record
      OUT_k at 16#0# range 0 .. 31;
      OMR   at 16#4# range 0 .. 31;
      IOCR0 at 16#10# range 0 .. 31;
      IOCR4 at 16#14# range 0 .. 31;
      IN_k  at 16#24# range 0 .. 31;
      PHCR0 at 16#40# range 0 .. 31;
      PDISC at 16#60# range 0 .. 31;
      PPS   at 16#70# range 0 .. 31;
      HWSEL at 16#74# range 0 .. 31;
   end record;

   --  Port 1
   PORT1_Periph : aliased PORT1_Peripheral
     with Import, Address => System'To_Address (16#40040100#);

   --  Port 2
   type PORT2_Peripheral is record
      --  Port 2 Output Register
      OUT_k : aliased OUT_Register_2;
      --  Port 2 Output Modification Register
      OMR   : aliased OMR_Register_2;
      --  Port 2 Input/Output Control Register 0
      IOCR0 : aliased IOCR0_Register;
      --  Port 2 Input/Output Control Register 4
      IOCR4 : aliased IOCR4_Register;
      --  Port 2 Input/Output Control Register 8
      IOCR8 : aliased IOCR8_Register;
      --  Port 2 Input Register
      IN_k  : aliased IN_Register_2;
      --  Port 2 Pad Hysteresis Control Register 0
      PHCR0 : aliased PHCR0_Register;
      --  Port 2 Pad Hysteresis Control Register 1
      PHCR1 : aliased PHCR1_Register_1;
      --  Port 2 Pin Function Decision Control Register
      PDISC : aliased PDISC_Register_2;
      --  Port 2 Pin Power Save Register
      PPS   : aliased PPS_Register_2;
      --  Port 2 Pin Hardware Select Register
      HWSEL : aliased HWSEL_Register_2;
   end record
     with Volatile;

   for PORT2_Peripheral use record
      OUT_k at 16#0# range 0 .. 31;
      OMR   at 16#4# range 0 .. 31;
      IOCR0 at 16#10# range 0 .. 31;
      IOCR4 at 16#14# range 0 .. 31;
      IOCR8 at 16#18# range 0 .. 31;
      IN_k  at 16#24# range 0 .. 31;
      PHCR0 at 16#40# range 0 .. 31;
      PHCR1 at 16#44# range 0 .. 31;
      PDISC at 16#60# range 0 .. 31;
      PPS   at 16#70# range 0 .. 31;
      HWSEL at 16#74# range 0 .. 31;
   end record;

   --  Port 2
   PORT2_Periph : aliased PORT2_Peripheral
     with Import, Address => System'To_Address (16#40040200#);

end NRF_SVD.PORTS;
