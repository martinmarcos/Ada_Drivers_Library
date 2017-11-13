--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPIOA_MODER_MODE array element
   subtype GPIOA_MODER_MODE_Element is HAL.UInt2;

   --  GPIOA_MODER_MODE array
   type GPIOA_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOA_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOA_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : HAL.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOA_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_OTYPER_OT array
   type GPIOA_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_OTYPER_OT
   type GPIOA_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : HAL.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOA_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOA_OTYPER_Register is record
      --  Port x configuration bits (y = 0..15) These bits are written by
      --  software to configure the I/O output type.
      OT             : GPIOA_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_OSPEEDR_OSPEED array element
   subtype GPIOA_OSPEEDR_OSPEED_Element is HAL.UInt2;

   --  GPIOA_OSPEEDR_OSPEED array
   type GPIOA_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOA_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOA_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : HAL.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOA_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_PUPDR_PUPD array element
   subtype GPIOA_PUPDR_PUPD_Element is HAL.UInt2;

   --  GPIOA_PUPDR_PUPD array
   type GPIOA_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOA_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOA_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : HAL.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOA_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_IDR_ID array
   type GPIOA_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_IDR_ID
   type GPIOA_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOA_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOA_IDR_Register is record
      --  Read-only. Port input data bit (y = 0..15) These bits are read-only.
      --  They contain the input value of the corresponding I/O port.
      ID             : GPIOA_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_ODR_OD array
   type GPIOA_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_ODR_OD
   type GPIOA_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : HAL.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOA_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOA_ODR_Register is record
      --  Port output data bit These bits can be read and written by software.
      --  Note: For atomic bit set/reset, the OD bits can be individually set
      --  and/or reset by writing to the GPIOx_BSRR or GPIOx_BRR registers (x =
      --  A..F).
      OD             : GPIOA_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_BSRR_BS array
   type GPIOA_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BSRR_BS
   type GPIOA_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : HAL.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOA_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOA_BSRR_BR array
   type GPIOA_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BSRR_BR
   type GPIOA_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : HAL.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOA_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOA_BSRR_Register is record
      --  Write-only. Port x set bit y (y= 0..15) These bits are write-only. A
      --  read to these bits returns the value 0x0000.
      BS : GPIOA_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset bit y (y = 0..15) These bits are write-only.
      --  A read to these bits returns the value 0x0000. Note: If both BSx and
      --  BRx are set, BSx has priority.
      BR : GPIOA_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOA_LCKR_LCK array
   type GPIOA_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_LCKR_LCK
   type GPIOA_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOA_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  This register is used to lock the configuration of the port bits when a
   --  correct write sequence is applied to bit 16 (LCKK). The value of bits
   --  [15:0] is used to lock the configuration of the GPIO. During the write
   --  sequence, the value of LCKR[15:0] must not change. When the LOCK
   --  sequence has been applied on a port bit, the value of this port bit can
   --  no longer be modified until the next MCU reset or peripheral reset.A
   --  specific write sequence is used to write to the GPIOx_LCKR register.
   --  Only word access (32-bit long) is allowed during this locking
   --  sequence.Each lock bit freezes a specific configuration register
   --  (control and alternate function registers).
   type GPIOA_LCKR_Register is record
      --  Port x lock bit y (y= 0..15) These bits are read/write but can only
      --  be written when the LCKK bit is 0.
      LCK            : GPIOA_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Any error in
      --  the lock sequence aborts the lock. After the first lock sequence on
      --  any bit of the port, any read access on the LCKK bit will return 1
      --  until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOA_AFRL_AFSEL array element
   subtype GPIOA_AFRL_AFSEL_Element is HAL.UInt4;

   --  GPIOA_AFRL_AFSEL array
   type GPIOA_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOA_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOA_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOA_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_AFRH_AFSEL array element
   subtype GPIOA_AFRH_AFSEL_Element is HAL.UInt4;

   --  GPIOA_AFRH_AFSEL array
   type GPIOA_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOA_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOA_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : HAL.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOA_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPIOA_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO
   type GPIO_Peripheral is record
      --  GPIO port mode register
      GPIOA_MODER   : aliased GPIOA_MODER_Register;
      --  GPIO port output type register
      GPIOA_OTYPER  : aliased GPIOA_OTYPER_Register;
      --  GPIO port output speed register
      GPIOA_OSPEEDR : aliased GPIOA_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOA_PUPDR   : aliased GPIOA_PUPDR_Register;
      --  GPIO port input data register
      GPIOA_IDR     : aliased GPIOA_IDR_Register;
      --  GPIO port output data register
      GPIOA_ODR     : aliased GPIOA_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOA_BSRR    : aliased GPIOA_BSRR_Register;
      --  This register is used to lock the configuration of the port bits when
      --  a correct write sequence is applied to bit 16 (LCKK). The value of
      --  bits [15:0] is used to lock the configuration of the GPIO. During the
      --  write sequence, the value of LCKR[15:0] must not change. When the
      --  LOCK sequence has been applied on a port bit, the value of this port
      --  bit can no longer be modified until the next MCU reset or peripheral
      --  reset.A specific write sequence is used to write to the GPIOx_LCKR
      --  register. Only word access (32-bit long) is allowed during this
      --  locking sequence.Each lock bit freezes a specific configuration
      --  register (control and alternate function registers).
      GPIOA_LCKR    : aliased GPIOA_LCKR_Register;
      --  GPIO alternate function low register
      GPIOA_AFRL    : aliased GPIOA_AFRL_Register;
      --  GPIO alternate function high register
      GPIOA_AFRH    : aliased GPIOA_AFRH_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      GPIOA_MODER   at 16#0# range 0 .. 31;
      GPIOA_OTYPER  at 16#4# range 0 .. 31;
      GPIOA_OSPEEDR at 16#8# range 0 .. 31;
      GPIOA_PUPDR   at 16#C# range 0 .. 31;
      GPIOA_IDR     at 16#10# range 0 .. 31;
      GPIOA_ODR     at 16#14# range 0 .. 31;
      GPIOA_BSRR    at 16#18# range 0 .. 31;
      GPIOA_LCKR    at 16#1C# range 0 .. 31;
      GPIOA_AFRL    at 16#20# range 0 .. 31;
      GPIOA_AFRH    at 16#24# range 0 .. 31;
   end record;

   --  GPIO
   GPIOA_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58020000#);

   --  GPIO
   GPIOB_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58020400#);

   --  GPIO
   GPIOC_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58020800#);

   --  GPIO
   GPIOD_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58020C00#);

   --  GPIO
   GPIOE_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58021000#);

   --  GPIO
   GPIOF_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58021400#);

   --  GPIO
   GPIOG_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58021800#);

   --  GPIO
   GPIOH_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58021C00#);

   --  GPIO
   GPIOI_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58022000#);

   --  GPIO
   GPIOJ_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58022400#);

   --  GPIO
   GPIOK_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#58022800#);

end STM32_SVD.GPIO;
