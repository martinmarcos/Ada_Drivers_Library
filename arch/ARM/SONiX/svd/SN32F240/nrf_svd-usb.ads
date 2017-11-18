--

--  This spec has been automatically generated from SN32F240.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  EP1 NAK Interrupt Enable
   type INTEN_EP1_NAK_EN_Field is
     (
      --  Disable EP1 NAK interrupt function
      Disable,
      --  Enable EP1 NAK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EP1_NAK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  EP2 NAK Interrupt Enable
   type INTEN_EP2_NAK_EN_Field is
     (
      --  Disable EP2 NAK interrupt function
      Disable,
      --  Enable EP2 NAK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EP2_NAK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  EP3 NAK Interrupt Enable
   type INTEN_EP3_NAK_EN_Field is
     (
      --  Disable EP3 NAK interrupt function
      Disable,
      --  Enable EP3 NAK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EP3_NAK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  EP4 NAK Interrupt Enable
   type INTEN_EP4_NAK_EN_Field is
     (
      --  Disable EP4 NAK interrupt function
      Disable,
      --  Enable EP4 NAK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EP4_NAK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  EP5 NAK Interrupt Enable
   type INTEN_EP5_NAK_EN_Field is
     (
      --  Disable EP5 NAK interrupt function
      Disable,
      --  Enable EP5 NAK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EP5_NAK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  EP6 NAK Interrupt Enable
   type INTEN_EP6_NAK_EN_Field is
     (
      --  Disable EP6 NAK interrupt function
      Disable,
      --  Enable EP6 NAK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EP6_NAK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  USB Event Interrupt Enable
   type INTEN_USB_IE_Field is
     (
      --  Disable USB event interrupt
      Disable,
      --  Enable USB event interrupt
      Enable)
     with Size => 1;
   for INTEN_USB_IE_Field use
     (Disable => 0,
      Enable => 1);

   --  USB SOF Interrupt Enable
   type INTEN_USB_SOF_IE_Field is
     (
      --  Disable USB SOF interrupt
      Disable,
      --  Enable USB SOF interrupt
      Enable)
     with Size => 1;
   for INTEN_USB_SOF_IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Bus Event Interrupt Enable
   type INTEN_BUS_IE_Field is
     (
      --  Disable BUS event interrupt
      Disable,
      --  Enable Bus event interrupt
      Enable)
     with Size => 1;
   for INTEN_BUS_IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 USB Interrupt Enable Register
   type INTEN_Register is record
      --  EP1 NAK Interrupt Enable
      EP1_NAK_EN    : INTEN_EP1_NAK_EN_Field := NRF_SVD.USB.Disable;
      --  EP2 NAK Interrupt Enable
      EP2_NAK_EN    : INTEN_EP2_NAK_EN_Field := NRF_SVD.USB.Disable;
      --  EP3 NAK Interrupt Enable
      EP3_NAK_EN    : INTEN_EP3_NAK_EN_Field := NRF_SVD.USB.Disable;
      --  EP4 NAK Interrupt Enable
      EP4_NAK_EN    : INTEN_EP4_NAK_EN_Field := NRF_SVD.USB.Disable;
      --  EP5 NAK Interrupt Enable
      EP5_NAK_EN    : INTEN_EP5_NAK_EN_Field := NRF_SVD.USB.Disable;
      --  EP6 NAK Interrupt Enable
      EP6_NAK_EN    : INTEN_EP6_NAK_EN_Field := NRF_SVD.USB.Disable;
      --  unspecified
      Reserved_6_28 : HAL.UInt23 := 16#0#;
      --  USB Event Interrupt Enable
      USB_IE        : INTEN_USB_IE_Field := NRF_SVD.USB.Disable;
      --  USB SOF Interrupt Enable
      USB_SOF_IE    : INTEN_USB_SOF_IE_Field := NRF_SVD.USB.Disable;
      --  Bus Event Interrupt Enable
      BUS_IE        : INTEN_BUS_IE_Field := NRF_SVD.USB.Disable;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      EP1_NAK_EN    at 0 range 0 .. 0;
      EP2_NAK_EN    at 0 range 1 .. 1;
      EP3_NAK_EN    at 0 range 2 .. 2;
      EP4_NAK_EN    at 0 range 3 .. 3;
      EP5_NAK_EN    at 0 range 4 .. 4;
      EP6_NAK_EN    at 0 range 5 .. 5;
      Reserved_6_28 at 0 range 6 .. 28;
      USB_IE        at 0 range 29 .. 29;
      USB_SOF_IE    at 0 range 30 .. 30;
      BUS_IE        at 0 range 31 .. 31;
   end record;

   --  Endpoint 1 NAK transaction flag
   type INSTS_EP1_NAK_Field is
     (
      --  No EP1 NAK transacation
      INSTS_EP1_NAK_Field_0,
      --  EP1 NAK transaction completes
      INSTS_EP1_NAK_Field_1)
     with Size => 1;
   for INSTS_EP1_NAK_Field use
     (INSTS_EP1_NAK_Field_0 => 0,
      INSTS_EP1_NAK_Field_1 => 1);

   --  Endpoint 2 NAK transaction flag
   type INSTS_EP2_NAK_Field is
     (
      --  No EP2 NAK transacation
      INSTS_EP2_NAK_Field_0,
      --  EP2 NAK transaction completes
      INSTS_EP2_NAK_Field_1)
     with Size => 1;
   for INSTS_EP2_NAK_Field use
     (INSTS_EP2_NAK_Field_0 => 0,
      INSTS_EP2_NAK_Field_1 => 1);

   --  Endpoint 3 NAK transaction flag
   type INSTS_EP3_NAK_Field is
     (
      --  No EP3 NAK transacation
      INSTS_EP3_NAK_Field_0,
      --  EP3 NAK transaction completes
      INSTS_EP3_NAK_Field_1)
     with Size => 1;
   for INSTS_EP3_NAK_Field use
     (INSTS_EP3_NAK_Field_0 => 0,
      INSTS_EP3_NAK_Field_1 => 1);

   --  Endpoint 4 NAK transaction flag
   type INSTS_EP4_NAK_Field is
     (
      --  No EP4 NAK transacation
      INSTS_EP4_NAK_Field_0,
      --  EP4 NAK transaction completes
      INSTS_EP4_NAK_Field_1)
     with Size => 1;
   for INSTS_EP4_NAK_Field use
     (INSTS_EP4_NAK_Field_0 => 0,
      INSTS_EP4_NAK_Field_1 => 1);

   --  Endpoint 5 NAK transaction flag
   type INSTS_EP5_NAK_Field is
     (
      --  No EP5 NAK transacation
      INSTS_EP5_NAK_Field_0,
      --  EP5 NAK transaction completes
      INSTS_EP5_NAK_Field_1)
     with Size => 1;
   for INSTS_EP5_NAK_Field use
     (INSTS_EP5_NAK_Field_0 => 0,
      INSTS_EP5_NAK_Field_1 => 1);

   --  Endpoint 6 NAK transaction flag
   type INSTS_EP6_NAK_Field is
     (
      --  No EP6 NAK transacation
      INSTS_EP6_NAK_Field_0,
      --  EP6 NAK transaction completes
      INSTS_EP6_NAK_Field_1)
     with Size => 1;
   for INSTS_EP6_NAK_Field use
     (INSTS_EP6_NAK_Field_0 => 0,
      INSTS_EP6_NAK_Field_1 => 1);

   --  Endpoint 1 ACK transaction flag
   type INSTS_EP1_ACK_Field is
     (
      --  No EP1 ACK transacation
      INSTS_EP1_ACK_Field_0,
      --  EP1 ACK transaction completes
      INSTS_EP1_ACK_Field_1)
     with Size => 1;
   for INSTS_EP1_ACK_Field use
     (INSTS_EP1_ACK_Field_0 => 0,
      INSTS_EP1_ACK_Field_1 => 1);

   --  Endpoint 2 ACK transaction flag
   type INSTS_EP2_ACK_Field is
     (
      --  No EP2 ACK transacation
      INSTS_EP2_ACK_Field_0,
      --  EP2 ACK transaction completes
      INSTS_EP2_ACK_Field_1)
     with Size => 1;
   for INSTS_EP2_ACK_Field use
     (INSTS_EP2_ACK_Field_0 => 0,
      INSTS_EP2_ACK_Field_1 => 1);

   --  Endpoint 3 ACK transaction flag
   type INSTS_EP3_ACK_Field is
     (
      --  No EP3 ACK transacation
      INSTS_EP3_ACK_Field_0,
      --  EP3 ACK transaction completes
      INSTS_EP3_ACK_Field_1)
     with Size => 1;
   for INSTS_EP3_ACK_Field use
     (INSTS_EP3_ACK_Field_0 => 0,
      INSTS_EP3_ACK_Field_1 => 1);

   --  Endpoint 4 ACK transaction flag
   type INSTS_EP4_ACK_Field is
     (
      --  No EP4 ACK transacation
      INSTS_EP4_ACK_Field_0,
      --  EP4 ACK transaction completes
      INSTS_EP4_ACK_Field_1)
     with Size => 1;
   for INSTS_EP4_ACK_Field use
     (INSTS_EP4_ACK_Field_0 => 0,
      INSTS_EP4_ACK_Field_1 => 1);

   --  Endpoint 5 ACK transaction flag
   type INSTS_EP5_ACK_Field is
     (
      --  No EP5 ACK transacation
      INSTS_EP5_ACK_Field_0,
      --  EP5 ACK transaction completes
      INSTS_EP5_ACK_Field_1)
     with Size => 1;
   for INSTS_EP5_ACK_Field use
     (INSTS_EP5_ACK_Field_0 => 0,
      INSTS_EP5_ACK_Field_1 => 1);

   --  Endpoint 6 ACK transaction flag
   type INSTS_EP6_ACK_Field is
     (
      --  No EP6 ACK transacation
      INSTS_EP6_ACK_Field_0,
      --  EP6 ACK transaction completes
      INSTS_EP6_ACK_Field_1)
     with Size => 1;
   for INSTS_EP6_ACK_Field use
     (INSTS_EP6_ACK_Field_0 => 0,
      INSTS_EP6_ACK_Field_1 => 1);

   --  Timeout Status
   type INSTS_ERR_TIMEOUT_Field is
     (
      --  No time out
      INSTS_ERR_TIMEOUT_Field_0,
      --  Bus no any response more than 18 bits time
      INSTS_ERR_TIMEOUT_Field_1)
     with Size => 1;
   for INSTS_ERR_TIMEOUT_Field use
     (INSTS_ERR_TIMEOUT_Field_0 => 0,
      INSTS_ERR_TIMEOUT_Field_1 => 1);

   --  Wrong Setup data received
   type INSTS_ERR_SETUP_Field is
     (
      --  Normal 8-byte Setup DATA0 is received
      INSTS_ERR_SETUP_Field_0,
      --  Setup data is not 8-byte or is not DATA0
      INSTS_ERR_SETUP_Field_1)
     with Size => 1;
   for INSTS_ERR_SETUP_Field use
     (INSTS_ERR_SETUP_Field_0 => 0,
      INSTS_ERR_SETUP_Field_1 => 1);

   --  EP0 OUT STALL transaction
   type INSTS_EP0_OUT_STALL_Field is
     (
      --  No EP0 OUT STALL transaction
      INSTS_EP0_OUT_STALL_Field_0,
      --  EP0 OUT STALL transaction is completed
      INSTS_EP0_OUT_STALL_Field_1)
     with Size => 1;
   for INSTS_EP0_OUT_STALL_Field use
     (INSTS_EP0_OUT_STALL_Field_0 => 0,
      INSTS_EP0_OUT_STALL_Field_1 => 1);

   --  EP0 IN STALL Transaction is completed
   type INSTS_EP0_IN_STALL_Field is
     (
      --  No EP0 IN STALL transaction
      INSTS_EP0_IN_STALL_Field_0,
      --  EP0 IN STALL transaction is completed
      INSTS_EP0_IN_STALL_Field_1)
     with Size => 1;
   for INSTS_EP0_IN_STALL_Field use
     (INSTS_EP0_IN_STALL_Field_0 => 0,
      INSTS_EP0_IN_STALL_Field_1 => 1);

   --  EP0 OUT ACK Transaction Flag
   type INSTS_EP0_OUT_Field is
     (
      --  No EP0 OUT ACK transaction
      INSTS_EP0_OUT_Field_0,
      --  EP0 OUT ACK transaction is completed
      INSTS_EP0_OUT_Field_1)
     with Size => 1;
   for INSTS_EP0_OUT_Field use
     (INSTS_EP0_OUT_Field_0 => 0,
      INSTS_EP0_OUT_Field_1 => 1);

   --  EP0 IN ACK Transaction Flag
   type INSTS_EP0_IN_Field is
     (
      --  No EP0 IN Transaction
      INSTS_EP0_IN_Field_0,
      --  EP0 IN Transaction is completed
      INSTS_EP0_IN_Field_1)
     with Size => 1;
   for INSTS_EP0_IN_Field use
     (INSTS_EP0_IN_Field_0 => 0,
      INSTS_EP0_IN_Field_1 => 1);

   --  EP0 Setup Transaction Flag
   type INSTS_EP0_SETUP_Field is
     (
      --  No EP0 Setup transaction
      INSTS_EP0_SETUP_Field_0,
      --  EP0 Setup transaction is completed
      INSTS_EP0_SETUP_Field_1)
     with Size => 1;
   for INSTS_EP0_SETUP_Field use
     (INSTS_EP0_SETUP_Field_0 => 0,
      INSTS_EP0_SETUP_Field_1 => 1);

   --  EP0 Setup Token Packet Flag
   type INSTS_EP0_PRESETUP_Field is
     (
      --  No EP0 Setup token packet
      INSTS_EP0_PRESETUP_Field_0,
      --  EP0 Setup token packet is received
      INSTS_EP0_PRESETUP_Field_1)
     with Size => 1;
   for INSTS_EP0_PRESETUP_Field use
     (INSTS_EP0_PRESETUP_Field_0 => 0,
      INSTS_EP0_PRESETUP_Field_1 => 1);

   --  Bus Wakeup Flag
   type INSTS_BUS_WAKEUP_Field is
     (
      --  No wakeup from suspend mode
      INSTS_BUS_WAKEUP_Field_0,
      --  Wakeup from suspend mode
      INSTS_BUS_WAKEUP_Field_1)
     with Size => 1;
   for INSTS_BUS_WAKEUP_Field use
     (INSTS_BUS_WAKEUP_Field_0 => 0,
      INSTS_BUS_WAKEUP_Field_1 => 1);

   --  USB SOF packet received flag
   type INSTS_USB_SOF_Field is
     (
      --  No USB SOF packet
      INSTS_USB_SOF_Field_0,
      --  USB SOF packet is received
      INSTS_USB_SOF_Field_1)
     with Size => 1;
   for INSTS_USB_SOF_Field use
     (INSTS_USB_SOF_Field_0 => 0,
      INSTS_USB_SOF_Field_1 => 1);

   --  USB Bus Resume signal flag
   type INSTS_BUS_RESUME_Field is
     (
      --  No bus resume signal is detected
      INSTS_BUS_RESUME_Field_0,
      --  Bus resume signal from suspend mode is detected
      INSTS_BUS_RESUME_Field_1)
     with Size => 1;
   for INSTS_BUS_RESUME_Field use
     (INSTS_BUS_RESUME_Field_0 => 0,
      INSTS_BUS_RESUME_Field_1 => 1);

   --  USB Bus Suspend signal flag
   type INSTS_BUS_SUSPEND_Field is
     (
      --  No bus suspend is detected
      INSTS_BUS_SUSPEND_Field_0,
      --  Bus suspend is detected
      INSTS_BUS_SUSPEND_Field_1)
     with Size => 1;
   for INSTS_BUS_SUSPEND_Field use
     (INSTS_BUS_SUSPEND_Field_0 => 0,
      INSTS_BUS_SUSPEND_Field_1 => 1);

   --  USB Bus Reset signal flag
   type INSTS_BUS_RESET_Field is
     (
      --  No bus reset signal is detected
      INSTS_BUS_RESET_Field_0,
      --  Bus reset signal is detected
      INSTS_BUS_RESET_Field_1)
     with Size => 1;
   for INSTS_BUS_RESET_Field use
     (INSTS_BUS_RESET_Field_0 => 0,
      INSTS_BUS_RESET_Field_1 => 1);

   --  Offset:0x04 USB Interrupt Event Status Register
   type INSTS_Register is record
      --  Read-only. Endpoint 1 NAK transaction flag
      EP1_NAK        : INSTS_EP1_NAK_Field;
      --  Read-only. Endpoint 2 NAK transaction flag
      EP2_NAK        : INSTS_EP2_NAK_Field;
      --  Read-only. Endpoint 3 NAK transaction flag
      EP3_NAK        : INSTS_EP3_NAK_Field;
      --  Read-only. Endpoint 4 NAK transaction flag
      EP4_NAK        : INSTS_EP4_NAK_Field;
      --  Read-only. Endpoint 5 NAK transaction flag
      EP5_NAK        : INSTS_EP5_NAK_Field;
      --  Read-only. Endpoint 6 NAK transaction flag
      EP6_NAK        : INSTS_EP6_NAK_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Endpoint 1 ACK transaction flag
      EP1_ACK        : INSTS_EP1_ACK_Field;
      --  Read-only. Endpoint 2 ACK transaction flag
      EP2_ACK        : INSTS_EP2_ACK_Field;
      --  Read-only. Endpoint 3 ACK transaction flag
      EP3_ACK        : INSTS_EP3_ACK_Field;
      --  Read-only. Endpoint 4 ACK transaction flag
      EP4_ACK        : INSTS_EP4_ACK_Field;
      --  Read-only. Endpoint 5 ACK transaction flag
      EP5_ACK        : INSTS_EP5_ACK_Field;
      --  Read-only. Endpoint 6 ACK transaction flag
      EP6_ACK        : INSTS_EP6_ACK_Field;
      --  unspecified
      Reserved_14_16 : HAL.UInt3;
      --  Read-only. Timeout Status
      ERR_TIMEOUT    : INSTS_ERR_TIMEOUT_Field;
      --  Read-only. Wrong Setup data received
      ERR_SETUP      : INSTS_ERR_SETUP_Field;
      --  Read-only. EP0 OUT STALL transaction
      EP0_OUT_STALL  : INSTS_EP0_OUT_STALL_Field;
      --  Read-only. EP0 IN STALL Transaction is completed
      EP0_IN_STALL   : INSTS_EP0_IN_STALL_Field;
      --  Read-only. EP0 OUT ACK Transaction Flag
      EP0_OUT        : INSTS_EP0_OUT_Field;
      --  Read-only. EP0 IN ACK Transaction Flag
      EP0_IN         : INSTS_EP0_IN_Field;
      --  Read-only. EP0 Setup Transaction Flag
      EP0_SETUP      : INSTS_EP0_SETUP_Field;
      --  Read-only. EP0 Setup Token Packet Flag
      EP0_PRESETUP   : INSTS_EP0_PRESETUP_Field;
      --  Read-only. Bus Wakeup Flag
      BUS_WAKEUP     : INSTS_BUS_WAKEUP_Field;
      --  Read-only. USB SOF packet received flag
      USB_SOF        : INSTS_USB_SOF_Field;
      --  unspecified
      Reserved_27_28 : HAL.UInt2;
      --  Read-only. USB Bus Resume signal flag
      BUS_RESUME     : INSTS_BUS_RESUME_Field;
      --  Read-only. USB Bus Suspend signal flag
      BUS_SUSPEND    : INSTS_BUS_SUSPEND_Field;
      --  Read-only. USB Bus Reset signal flag
      BUS_RESET      : INSTS_BUS_RESET_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INSTS_Register use record
      EP1_NAK        at 0 range 0 .. 0;
      EP2_NAK        at 0 range 1 .. 1;
      EP3_NAK        at 0 range 2 .. 2;
      EP4_NAK        at 0 range 3 .. 3;
      EP5_NAK        at 0 range 4 .. 4;
      EP6_NAK        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EP1_ACK        at 0 range 8 .. 8;
      EP2_ACK        at 0 range 9 .. 9;
      EP3_ACK        at 0 range 10 .. 10;
      EP4_ACK        at 0 range 11 .. 11;
      EP5_ACK        at 0 range 12 .. 12;
      EP6_ACK        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ERR_TIMEOUT    at 0 range 17 .. 17;
      ERR_SETUP      at 0 range 18 .. 18;
      EP0_OUT_STALL  at 0 range 19 .. 19;
      EP0_IN_STALL   at 0 range 20 .. 20;
      EP0_OUT        at 0 range 21 .. 21;
      EP0_IN         at 0 range 22 .. 22;
      EP0_SETUP      at 0 range 23 .. 23;
      EP0_PRESETUP   at 0 range 24 .. 24;
      BUS_WAKEUP     at 0 range 25 .. 25;
      USB_SOF        at 0 range 26 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      BUS_RESUME     at 0 range 29 .. 29;
      BUS_SUSPEND    at 0 range 30 .. 30;
      BUS_RESET      at 0 range 31 .. 31;
   end record;

   --  EP1 NAK clear bit
   type INSTSC_EP1_NAKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP1_NAK bit
      Clear)
     with Size => 1;
   for INSTSC_EP1_NAKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP2 NAK clear bit
   type INSTSC_EP2_NAKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP2_NAK bit
      Clear)
     with Size => 1;
   for INSTSC_EP2_NAKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP3 NAK clear bit
   type INSTSC_EP3_NAKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP3_NAK bit
      Clear)
     with Size => 1;
   for INSTSC_EP3_NAKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP4 NAK clear bit
   type INSTSC_EP4_NAKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP4_NAK bit
      Clear)
     with Size => 1;
   for INSTSC_EP4_NAKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP5 NAK clear bit
   type INSTSC_EP5_NAKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP5_NAK bit
      Clear)
     with Size => 1;
   for INSTSC_EP5_NAKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP6 NAK clear bit
   type INSTSC_EP6_NAKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP6_NAK bit
      Clear)
     with Size => 1;
   for INSTSC_EP6_NAKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP1 ACK clear bit
   type INSTSC_EP1_ACKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP1_ACK bit
      Clear)
     with Size => 1;
   for INSTSC_EP1_ACKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP2 ACK clear bit
   type INSTSC_EP2_ACKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP2_ACK bit
      Clear)
     with Size => 1;
   for INSTSC_EP2_ACKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP3 ACK clear bit
   type INSTSC_EP3_ACKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP3_ACK bit
      Clear)
     with Size => 1;
   for INSTSC_EP3_ACKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP4 ACK clear bit
   type INSTSC_EP4_ACKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP4_ACK bit
      Clear)
     with Size => 1;
   for INSTSC_EP4_ACKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP5 ACK clear bit
   type INSTSC_EP5_ACKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP5_ACK bit
      Clear)
     with Size => 1;
   for INSTSC_EP5_ACKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP6 ACK clear bit
   type INSTSC_EP6_ACKC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP6_ACK bit
      Clear)
     with Size => 1;
   for INSTSC_EP6_ACKC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Timeout Error clear bit
   type INSTSC_ERR_TIMEOUTC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear ERR_TIMEOUT bit
      Clear)
     with Size => 1;
   for INSTSC_ERR_TIMEOUTC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Error Setup clear bit
   type INSTSC_ERR_SETUPC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear ERR_SETUP bit
      Clear)
     with Size => 1;
   for INSTSC_ERR_SETUPC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP0 OUT STALL clear bit
   type INSTSC_EP0_OUT_STALLC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP0_OUT_STALL bit
      Clear)
     with Size => 1;
   for INSTSC_EP0_OUT_STALLC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP0 IN STALL clear bit
   type INSTSC_EP0_IN_STALLC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP0_IN_STALL bit
      Clear)
     with Size => 1;
   for INSTSC_EP0_IN_STALLC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP0 OUT clear bit
   type INSTSC_EP0_OUTC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP0_OUT bit
      Clear)
     with Size => 1;
   for INSTSC_EP0_OUTC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP0 IN clear bit
   type INSTSC_EP0_INC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP0_IN bit
      Clear)
     with Size => 1;
   for INSTSC_EP0_INC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP0 SETUP clear bit
   type INSTSC_EP0_SETUPC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP0_SETUP bit
      Clear)
     with Size => 1;
   for INSTSC_EP0_SETUPC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  EP0 PRESETUP clear bit
   type INSTSC_EP0_PRESETUPC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear EP0_PRESETUP bit
      Clear)
     with Size => 1;
   for INSTSC_EP0_PRESETUPC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Bus Wakeup clear bit
   type INSTSC_BUS_WAKEUPC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear BUS_WAKEUP bit
      Clear)
     with Size => 1;
   for INSTSC_BUS_WAKEUPC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  USB SOF clear bit
   type INSTSC_USB_SOFC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear USB_SOF bit
      Clear)
     with Size => 1;
   for INSTSC_USB_SOFC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  USB Bus Resume clear bit
   type INSTSC_BUS_RESUMEC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear BUS_RESUME bit
      Clear)
     with Size => 1;
   for INSTSC_BUS_RESUMEC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  USB Bus Reset clear bit
   type INSTSC_BUS_RESETC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear BUS_RESET bit
      Clear)
     with Size => 1;
   for INSTSC_BUS_RESETC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x08 USB Interrupt Event Status Clear Register
   type INSTSC_Register is record
      --  Write-only. EP1 NAK clear bit
      EP1_NAKC       : INSTSC_EP1_NAKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP2 NAK clear bit
      EP2_NAKC       : INSTSC_EP2_NAKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP3 NAK clear bit
      EP3_NAKC       : INSTSC_EP3_NAKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP4 NAK clear bit
      EP4_NAKC       : INSTSC_EP4_NAKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP5 NAK clear bit
      EP5_NAKC       : INSTSC_EP5_NAKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP6 NAK clear bit
      EP6_NAKC       : INSTSC_EP6_NAKC_Field := NRF_SVD.USB.No EFFECT;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. EP1 ACK clear bit
      EP1_ACKC       : INSTSC_EP1_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP2 ACK clear bit
      EP2_ACKC       : INSTSC_EP2_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP3 ACK clear bit
      EP3_ACKC       : INSTSC_EP3_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP4 ACK clear bit
      EP4_ACKC       : INSTSC_EP4_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP5 ACK clear bit
      EP5_ACKC       : INSTSC_EP5_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP6 ACK clear bit
      EP6_ACKC       : INSTSC_EP6_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. Timeout Error clear bit
      ERR_TIMEOUTC   : INSTSC_ERR_TIMEOUTC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. Error Setup clear bit
      ERR_SETUPC     : INSTSC_ERR_SETUPC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP0 OUT STALL clear bit
      EP0_OUT_STALLC : INSTSC_EP0_OUT_STALLC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP0 IN STALL clear bit
      EP0_IN_STALLC  : INSTSC_EP0_IN_STALLC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP0 OUT clear bit
      EP0_OUTC       : INSTSC_EP0_OUTC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP0 IN clear bit
      EP0_INC        : INSTSC_EP0_INC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP0 SETUP clear bit
      EP0_SETUPC     : INSTSC_EP0_SETUPC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP0 PRESETUP clear bit
      EP0_PRESETUPC  : INSTSC_EP0_PRESETUPC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. Bus Wakeup clear bit
      BUS_WAKEUPC    : INSTSC_BUS_WAKEUPC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. USB SOF clear bit
      USB_SOFC       : INSTSC_USB_SOFC_Field := NRF_SVD.USB.No EFFECT;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Write-only. USB Bus Resume clear bit
      BUS_RESUMEC    : INSTSC_BUS_RESUMEC_Field := NRF_SVD.USB.No EFFECT;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Write-only. USB Bus Reset clear bit
      BUS_RESETC     : INSTSC_BUS_RESETC_Field := NRF_SVD.USB.No EFFECT;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INSTSC_Register use record
      EP1_NAKC       at 0 range 0 .. 0;
      EP2_NAKC       at 0 range 1 .. 1;
      EP3_NAKC       at 0 range 2 .. 2;
      EP4_NAKC       at 0 range 3 .. 3;
      EP5_NAKC       at 0 range 4 .. 4;
      EP6_NAKC       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EP1_ACKC       at 0 range 8 .. 8;
      EP2_ACKC       at 0 range 9 .. 9;
      EP3_ACKC       at 0 range 10 .. 10;
      EP4_ACKC       at 0 range 11 .. 11;
      EP5_ACKC       at 0 range 12 .. 12;
      EP6_ACKC       at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ERR_TIMEOUTC   at 0 range 17 .. 17;
      ERR_SETUPC     at 0 range 18 .. 18;
      EP0_OUT_STALLC at 0 range 19 .. 19;
      EP0_IN_STALLC  at 0 range 20 .. 20;
      EP0_OUTC       at 0 range 21 .. 21;
      EP0_INC        at 0 range 22 .. 22;
      EP0_SETUPC     at 0 range 23 .. 23;
      EP0_PRESETUPC  at 0 range 24 .. 24;
      BUS_WAKEUPC    at 0 range 25 .. 25;
      USB_SOFC       at 0 range 26 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      BUS_RESUMEC    at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      BUS_RESETC     at 0 range 31 .. 31;
   end record;

   subtype ADDR_UADDR_Field is HAL.UInt7;

   --  Offset:0x0C USB Device Address Register
   type ADDR_Register is record
      --  USB device's address
      UADDR         : ADDR_UADDR_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDR_Register use record
      UADDR         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Endpoint 1 IN/OUT direction setting
   type CFG_EP1_DIR_Field is
     (
      --  EP1 only handshakes to IN token packet
      In_k,
      --  EP1 only handshakes to OUT token packet
      Out_k)
     with Size => 1;
   for CFG_EP1_DIR_Field use
     (In_k => 0,
      Out_k => 1);

   --  Endpoint 2 IN/OUT direction setting
   type CFG_EP2_DIR_Field is
     (
      --  EP2 only handshakes to IN token packet
      In_k,
      --  EP2 only handshakes to OUT token packet
      Out_k)
     with Size => 1;
   for CFG_EP2_DIR_Field use
     (In_k => 0,
      Out_k => 1);

   --  Endpoint 3 IN/OUT direction setting
   type CFG_EP3_DIR_Field is
     (
      --  EP3 only handshakes to IN token packet
      In_k,
      --  EP3 only handshakes to OUT token packet
      Out_k)
     with Size => 1;
   for CFG_EP3_DIR_Field use
     (In_k => 0,
      Out_k => 1);

   --  Endpoint 4 IN/OUT direction setting
   type CFG_EP4_DIR_Field is
     (
      --  EP4 only handshakes to IN token packet
      In_k,
      --  EP4 only handshakes to OUT token packet
      Out_k)
     with Size => 1;
   for CFG_EP4_DIR_Field use
     (In_k => 0,
      Out_k => 1);

   --  Endpoint 5 IN/OUT direction setting
   type CFG_EP5_DIR_Field is
     (
      --  EP5 only handshakes to IN token packet
      In_k,
      --  EP5 only handshakes to OUT token packet
      Out_k)
     with Size => 1;
   for CFG_EP5_DIR_Field use
     (In_k => 0,
      Out_k => 1);

   --  Endpoint 6 IN/OUT direction setting
   type CFG_EP6_DIR_Field is
     (
      --  EP6 only handshakes to IN token packet
      In_k,
      --  EP6 only handshakes to OUT token packet
      Out_k)
     with Size => 1;
   for CFG_EP6_DIR_Field use
     (In_k => 0,
      Out_k => 1);

   --  Endpoint 1 ISO mode setting
   type CFG_EP1_ISO_Field is
     (
      --  Enable Interrupt/Bulk mode
      CFG_EP1_ISO_Field_0,
      --  Enable ISO mode
      CFG_EP1_ISO_Field_1)
     with Size => 1;
   for CFG_EP1_ISO_Field use
     (CFG_EP1_ISO_Field_0 => 0,
      CFG_EP1_ISO_Field_1 => 1);

   --  Endpoint 2 ISO mode setting
   type CFG_EP2_ISO_Field is
     (
      --  Enable Interrupt/Bulk mode
      CFG_EP2_ISO_Field_0,
      --  Enable ISO mode
      CFG_EP2_ISO_Field_1)
     with Size => 1;
   for CFG_EP2_ISO_Field use
     (CFG_EP2_ISO_Field_0 => 0,
      CFG_EP2_ISO_Field_1 => 1);

   --  Endpoint 3 ISO mode setting
   type CFG_EP3_ISO_Field is
     (
      --  Enable Interrupt/Bulk mode
      CFG_EP3_ISO_Field_0,
      --  Enable ISO mode
      CFG_EP3_ISO_Field_1)
     with Size => 1;
   for CFG_EP3_ISO_Field use
     (CFG_EP3_ISO_Field_0 => 0,
      CFG_EP3_ISO_Field_1 => 1);

   --  Endpoint 4 ISO mode setting
   type CFG_EP4_ISO_Field is
     (
      --  Enable Interrupt/Bulk mode
      CFG_EP4_ISO_Field_0,
      --  Enable ISO mode
      CFG_EP4_ISO_Field_1)
     with Size => 1;
   for CFG_EP4_ISO_Field use
     (CFG_EP4_ISO_Field_0 => 0,
      CFG_EP4_ISO_Field_1 => 1);

   --  Endpoint 5 ISO mode setting
   type CFG_EP5_ISO_Field is
     (
      --  Enable Interrupt/Bulk mode
      CFG_EP5_ISO_Field_0,
      --  Enable ISO mode
      CFG_EP5_ISO_Field_1)
     with Size => 1;
   for CFG_EP5_ISO_Field use
     (CFG_EP5_ISO_Field_0 => 0,
      CFG_EP5_ISO_Field_1 => 1);

   --  Endpoint 6 ISO mode setting
   type CFG_EP6_ISO_Field is
     (
      --  Enable Interrupt/Bulk mode
      CFG_EP6_ISO_Field_0,
      --  Enable ISO mode
      CFG_EP6_ISO_Field_1)
     with Size => 1;
   for CFG_EP6_ISO_Field use
     (CFG_EP6_ISO_Field_0 => 0,
      CFG_EP6_ISO_Field_1 => 1);

   --  Enable 400ohm discharge path of VREG33 to GND
   type CFG_VREG33DIS_EN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for CFG_VREG33DIS_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable USB 512-byte RAM function
   type CFG_USBRAM_EN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for CFG_USBRAM_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable internal D+ and D- weak pull-up resistor
   type CFG_FLTDET_PUEN_Field is
     (
      --  Enable
      Enable,
      --  Disable
      Disable)
     with Size => 1;
   for CFG_FLTDET_PUEN_Field use
     (Enable => 0,
      Disable => 1);

   --  Enable USB EMC protection
   type CFG_EMC_EN_Field is
     (
      --  Disable EMC protection
      Disable,
      --  Enable EMC protection
      Enable)
     with Size => 1;
   for CFG_EMC_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  USB Serial Interface Engine Enable
   type CFG_SIE_EN_Field is
     (
      --  Disable USB SIE function
      Disable,
      --  Enable USB SIE function
      Enable)
     with Size => 1;
   for CFG_SIE_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable internal D+ 1.5k pull-up resistor
   type CFG_DPPU_EN_Field is
     (
      --  Disable internal D+ pull-up resistor
      Disable,
      --  Enable internal D+ pull-up resistor
      Enable)
     with Size => 1;
   for CFG_DPPU_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  PHY Transceiver Function Enable
   type CFG_PHY_EN_Field is
     (
      --  Disable PHY transceiver function
      Disable,
      --  Enable PHY transceiver function
      Enable)
     with Size => 1;
   for CFG_PHY_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable the internal VREG33 ouput
   type CFG_VREG33_EN_Field is
     (
      --  Disable VREG33 ouput
      Disable,
      --  Enable VREG33 ouput
      Enable)
     with Size => 1;
   for CFG_VREG33_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x10 USB Configuration Register
   type CFG_Register is record
      --  Endpoint 1 IN/OUT direction setting
      EP1_DIR        : CFG_EP1_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 2 IN/OUT direction setting
      EP2_DIR        : CFG_EP2_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 3 IN/OUT direction setting
      EP3_DIR        : CFG_EP3_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 4 IN/OUT direction setting
      EP4_DIR        : CFG_EP4_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 5 IN/OUT direction setting
      EP5_DIR        : CFG_EP5_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 6 IN/OUT direction setting
      EP6_DIR        : CFG_EP6_DIR_Field := NRF_SVD.USB.In_k;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Endpoint 1 ISO mode setting
      EP1_ISO        : CFG_EP1_ISO_Field := NRF_SVD.USB.CFG_EP1_ISO_Field_0;
      --  Endpoint 2 ISO mode setting
      EP2_ISO        : CFG_EP2_ISO_Field := NRF_SVD.USB.CFG_EP2_ISO_Field_0;
      --  Endpoint 3 ISO mode setting
      EP3_ISO        : CFG_EP3_ISO_Field := NRF_SVD.USB.CFG_EP3_ISO_Field_0;
      --  Endpoint 4 ISO mode setting
      EP4_ISO        : CFG_EP4_ISO_Field := NRF_SVD.USB.CFG_EP4_ISO_Field_0;
      --  Endpoint 5 ISO mode setting
      EP5_ISO        : CFG_EP5_ISO_Field := NRF_SVD.USB.CFG_EP5_ISO_Field_0;
      --  Endpoint 6 ISO mode setting
      EP6_ISO        : CFG_EP6_ISO_Field := NRF_SVD.USB.CFG_EP6_ISO_Field_0;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Enable 400ohm discharge path of VREG33 to GND
      VREG33DIS_EN   : CFG_VREG33DIS_EN_Field := NRF_SVD.USB.Disable;
      --  Enable USB 512-byte RAM function
      USBRAM_EN      : CFG_USBRAM_EN_Field := NRF_SVD.USB.Disable;
      --  Enable internal D+ and D- weak pull-up resistor
      FLTDET_PUEN    : CFG_FLTDET_PUEN_Field := NRF_SVD.USB.Enable;
      --  Enable USB EMC protection
      EMC_EN         : CFG_EMC_EN_Field := NRF_SVD.USB.Disable;
      --  USB Serial Interface Engine Enable
      SIE_EN         : CFG_SIE_EN_Field := NRF_SVD.USB.Disable;
      --  Enable internal D+ 1.5k pull-up resistor
      DPPU_EN        : CFG_DPPU_EN_Field := NRF_SVD.USB.Disable;
      --  PHY Transceiver Function Enable
      PHY_EN         : CFG_PHY_EN_Field := NRF_SVD.USB.Disable;
      --  Enable the internal VREG33 ouput
      VREG33_EN      : CFG_VREG33_EN_Field := NRF_SVD.USB.Disable;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      EP1_DIR        at 0 range 0 .. 0;
      EP2_DIR        at 0 range 1 .. 1;
      EP3_DIR        at 0 range 2 .. 2;
      EP4_DIR        at 0 range 3 .. 3;
      EP5_DIR        at 0 range 4 .. 4;
      EP6_DIR        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EP1_ISO        at 0 range 8 .. 8;
      EP2_ISO        at 0 range 9 .. 9;
      EP3_ISO        at 0 range 10 .. 10;
      EP4_ISO        at 0 range 11 .. 11;
      EP5_ISO        at 0 range 12 .. 12;
      EP6_ISO        at 0 range 13 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      VREG33DIS_EN   at 0 range 24 .. 24;
      USBRAM_EN      at 0 range 25 .. 25;
      FLTDET_PUEN    at 0 range 26 .. 26;
      EMC_EN         at 0 range 27 .. 27;
      SIE_EN         at 0 range 28 .. 28;
      DPPU_EN        at 0 range 29 .. 29;
      PHY_EN         at 0 range 30 .. 30;
      VREG33_EN      at 0 range 31 .. 31;
   end record;

   --  USB D- state
   type SGCTL_BUS_DN_Field is
     (
      --  D- state is low
      Low,
      --  D- state is high
      High)
     with Size => 1;
   for SGCTL_BUS_DN_Field use
     (Low => 0,
      High => 1);

   --  USB DP state
   type SGCTL_BUS_DP_Field is
     (
      --  D+ state is low
      Low,
      --  D+ state is high
      High)
     with Size => 1;
   for SGCTL_BUS_DP_Field use
     (Low => 0,
      High => 1);

   --  Enable to drive USB bus
   type SGCTL_BUS_DRVEN_Field is
     (
      --  Not to drive USB bus
      Disable,
      --  Drive USB bus
      Enable)
     with Size => 1;
   for SGCTL_BUS_DRVEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x14 USB Signal Control Register
   type SGCTL_Register is record
      --  USB D- state
      BUS_DN        : SGCTL_BUS_DN_Field := NRF_SVD.USB.Low;
      --  USB DP state
      BUS_DP        : SGCTL_BUS_DP_Field := NRF_SVD.USB.Low;
      --  Enable to drive USB bus
      BUS_DRVEN     : SGCTL_BUS_DRVEN_Field := NRF_SVD.USB.Disable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SGCTL_Register use record
      BUS_DN        at 0 range 0 .. 0;
      BUS_DP        at 0 range 1 .. 1;
      BUS_DRVEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype EP0CTL_ENDP_CNT_Field is HAL.UInt7;

   --  Enable EP0 OUT STALL handshake
   type EP0CTL_OUT_STALL_EN_Field is
     (
      --  Disable
      EP0CTL_OUT_STALL_EN_Field_0,
      --  Enable
      EP0CTL_OUT_STALL_EN_Field_1)
     with Size => 1;
   for EP0CTL_OUT_STALL_EN_Field use
     (EP0CTL_OUT_STALL_EN_Field_0 => 0,
      EP0CTL_OUT_STALL_EN_Field_1 => 1);

   --  Enable EP0 IN STALL handshake
   type EP0CTL_IN_STALL_EN_Field is
     (
      --  Disable
      EP0CTL_IN_STALL_EN_Field_0,
      --  Enable
      EP0CTL_IN_STALL_EN_Field_1)
     with Size => 1;
   for EP0CTL_IN_STALL_EN_Field use
     (EP0CTL_IN_STALL_EN_Field_0 => 0,
      EP0CTL_IN_STALL_EN_Field_1 => 1);

   --  Endpoint Handshake State
   type EP0CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP0CTL_ENDP_STATE_Field_0,
      --  ACK
      EP0CTL_ENDP_STATE_Field_1,
      --  INOUT_STALL
      EP0CTL_ENDP_STATE_Field_2,
      --  INOUT_STALL
      EP0CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP0CTL_ENDP_STATE_Field use
     (EP0CTL_ENDP_STATE_Field_0 => 0,
      EP0CTL_ENDP_STATE_Field_1 => 1,
      EP0CTL_ENDP_STATE_Field_2 => 2,
      EP0CTL_ENDP_STATE_Field_3 => 3);

   --  Enable Endpoint 0 Function
   type EP0CTL_ENDP_EN_Field is
     (
      --  Disable
      EP0CTL_ENDP_EN_Field_0,
      --  Enable
      EP0CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP0CTL_ENDP_EN_Field use
     (EP0CTL_ENDP_EN_Field_0 => 0,
      EP0CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x18 USB Endpoint 0 Control Register
   type EP0CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP0CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_7_26 : HAL.UInt20 := 16#0#;
      --  Enable EP0 OUT STALL handshake
      OUT_STALL_EN  : EP0CTL_OUT_STALL_EN_Field :=
                       NRF_SVD.USB.EP0CTL_OUT_STALL_EN_Field_0;
      --  Enable EP0 IN STALL handshake
      IN_STALL_EN   : EP0CTL_IN_STALL_EN_Field :=
                       NRF_SVD.USB.EP0CTL_IN_STALL_EN_Field_0;
      --  Endpoint Handshake State
      ENDP_STATE    : EP0CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP0CTL_ENDP_STATE_Field_0;
      --  Enable Endpoint 0 Function
      ENDP_EN       : EP0CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP0CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP0CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 6;
      Reserved_7_26 at 0 range 7 .. 26;
      OUT_STALL_EN  at 0 range 27 .. 27;
      IN_STALL_EN   at 0 range 28 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP1CTL_ENDP_CNT_Field is HAL.UInt9;

   --  Endpoint Handshake State
   type EP1CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP1CTL_ENDP_STATE_Field_0,
      --  ACK
      EP1CTL_ENDP_STATE_Field_1,
      --  STALL
      EP1CTL_ENDP_STATE_Field_2,
      --  STALL
      EP1CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP1CTL_ENDP_STATE_Field use
     (EP1CTL_ENDP_STATE_Field_0 => 0,
      EP1CTL_ENDP_STATE_Field_1 => 1,
      EP1CTL_ENDP_STATE_Field_2 => 2,
      EP1CTL_ENDP_STATE_Field_3 => 3);

   --  Endpoint 1 Function enable bit
   type EP1CTL_ENDP_EN_Field is
     (
      --  Disable
      EP1CTL_ENDP_EN_Field_0,
      --  Enable
      EP1CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP1CTL_ENDP_EN_Field use
     (EP1CTL_ENDP_EN_Field_0 => 0,
      EP1CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x1C USB Endpoint 1 Control Register
   type EP1CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP1CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_9_28 : HAL.UInt20 := 16#0#;
      --  Endpoint Handshake State
      ENDP_STATE    : EP1CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP1CTL_ENDP_STATE_Field_0;
      --  Endpoint 1 Function enable bit
      ENDP_EN       : EP1CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP1CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP1CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 8;
      Reserved_9_28 at 0 range 9 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP2CTL_ENDP_CNT_Field is HAL.UInt9;

   --  Endpoint Handshake State
   type EP2CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP2CTL_ENDP_STATE_Field_0,
      --  ACK
      EP2CTL_ENDP_STATE_Field_1,
      --  STALL
      EP2CTL_ENDP_STATE_Field_2,
      --  STALL
      EP2CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP2CTL_ENDP_STATE_Field use
     (EP2CTL_ENDP_STATE_Field_0 => 0,
      EP2CTL_ENDP_STATE_Field_1 => 1,
      EP2CTL_ENDP_STATE_Field_2 => 2,
      EP2CTL_ENDP_STATE_Field_3 => 3);

   --  Endpoint 2 Function enable bit
   type EP2CTL_ENDP_EN_Field is
     (
      --  Disable
      EP2CTL_ENDP_EN_Field_0,
      --  Enable
      EP2CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP2CTL_ENDP_EN_Field use
     (EP2CTL_ENDP_EN_Field_0 => 0,
      EP2CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x20 USB Endpoint 2 Control Register
   type EP2CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP2CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_9_28 : HAL.UInt20 := 16#0#;
      --  Endpoint Handshake State
      ENDP_STATE    : EP2CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP2CTL_ENDP_STATE_Field_0;
      --  Endpoint 2 Function enable bit
      ENDP_EN       : EP2CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP2CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP2CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 8;
      Reserved_9_28 at 0 range 9 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP3CTL_ENDP_CNT_Field is HAL.UInt9;

   --  Endpoint Handshake State
   type EP3CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP3CTL_ENDP_STATE_Field_0,
      --  ACK
      EP3CTL_ENDP_STATE_Field_1,
      --  STALL
      EP3CTL_ENDP_STATE_Field_2,
      --  STALL
      EP3CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP3CTL_ENDP_STATE_Field use
     (EP3CTL_ENDP_STATE_Field_0 => 0,
      EP3CTL_ENDP_STATE_Field_1 => 1,
      EP3CTL_ENDP_STATE_Field_2 => 2,
      EP3CTL_ENDP_STATE_Field_3 => 3);

   --  Endpoint 3 Function enable bit
   type EP3CTL_ENDP_EN_Field is
     (
      --  Disable
      EP3CTL_ENDP_EN_Field_0,
      --  Enable
      EP3CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP3CTL_ENDP_EN_Field use
     (EP3CTL_ENDP_EN_Field_0 => 0,
      EP3CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x24 USB Endpoint 3 Control Register
   type EP3CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP3CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_9_28 : HAL.UInt20 := 16#0#;
      --  Endpoint Handshake State
      ENDP_STATE    : EP3CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP3CTL_ENDP_STATE_Field_0;
      --  Endpoint 3 Function enable bit
      ENDP_EN       : EP3CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP3CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP3CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 8;
      Reserved_9_28 at 0 range 9 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP4CTL_ENDP_CNT_Field is HAL.UInt9;

   --  Endpoint Handshake State
   type EP4CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP4CTL_ENDP_STATE_Field_0,
      --  ACK
      EP4CTL_ENDP_STATE_Field_1,
      --  STALL
      EP4CTL_ENDP_STATE_Field_2,
      --  STALL
      EP4CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP4CTL_ENDP_STATE_Field use
     (EP4CTL_ENDP_STATE_Field_0 => 0,
      EP4CTL_ENDP_STATE_Field_1 => 1,
      EP4CTL_ENDP_STATE_Field_2 => 2,
      EP4CTL_ENDP_STATE_Field_3 => 3);

   --  Endpoint 4 Function enable bit
   type EP4CTL_ENDP_EN_Field is
     (
      --  Disable
      EP4CTL_ENDP_EN_Field_0,
      --  Enable
      EP4CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP4CTL_ENDP_EN_Field use
     (EP4CTL_ENDP_EN_Field_0 => 0,
      EP4CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x28 USB Endpoint 4 Control Register
   type EP4CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP4CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_9_28 : HAL.UInt20 := 16#0#;
      --  Endpoint Handshake State
      ENDP_STATE    : EP4CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP4CTL_ENDP_STATE_Field_0;
      --  Endpoint 4 Function enable bit
      ENDP_EN       : EP4CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP4CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP4CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 8;
      Reserved_9_28 at 0 range 9 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP5CTL_ENDP_CNT_Field is HAL.UInt9;

   --  Endpoint Handshake State
   type EP5CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP5CTL_ENDP_STATE_Field_0,
      --  ACK
      EP5CTL_ENDP_STATE_Field_1,
      --  STALL
      EP5CTL_ENDP_STATE_Field_2,
      --  STALL
      EP5CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP5CTL_ENDP_STATE_Field use
     (EP5CTL_ENDP_STATE_Field_0 => 0,
      EP5CTL_ENDP_STATE_Field_1 => 1,
      EP5CTL_ENDP_STATE_Field_2 => 2,
      EP5CTL_ENDP_STATE_Field_3 => 3);

   --  Endpoint 5 Function enable bit
   type EP5CTL_ENDP_EN_Field is
     (
      --  Disable
      EP5CTL_ENDP_EN_Field_0,
      --  Enable
      EP5CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP5CTL_ENDP_EN_Field use
     (EP5CTL_ENDP_EN_Field_0 => 0,
      EP5CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x2C USB Endpoint 5 Control Register
   type EP5CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP5CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_9_28 : HAL.UInt20 := 16#0#;
      --  Endpoint Handshake State
      ENDP_STATE    : EP5CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP5CTL_ENDP_STATE_Field_0;
      --  Endpoint 5 Function enable bit
      ENDP_EN       : EP5CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP5CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP5CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 8;
      Reserved_9_28 at 0 range 9 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP6CTL_ENDP_CNT_Field is HAL.UInt9;

   --  Endpoint Handshake State
   type EP6CTL_ENDP_STATE_Field is
     (
      --  NAK
      EP6CTL_ENDP_STATE_Field_0,
      --  ACK
      EP6CTL_ENDP_STATE_Field_1,
      --  STALL
      EP6CTL_ENDP_STATE_Field_2,
      --  STALL
      EP6CTL_ENDP_STATE_Field_3)
     with Size => 2;
   for EP6CTL_ENDP_STATE_Field use
     (EP6CTL_ENDP_STATE_Field_0 => 0,
      EP6CTL_ENDP_STATE_Field_1 => 1,
      EP6CTL_ENDP_STATE_Field_2 => 2,
      EP6CTL_ENDP_STATE_Field_3 => 3);

   --  Endpoint 6 Function enable bit
   type EP6CTL_ENDP_EN_Field is
     (
      --  Disable
      EP6CTL_ENDP_EN_Field_0,
      --  Enable
      EP6CTL_ENDP_EN_Field_1)
     with Size => 1;
   for EP6CTL_ENDP_EN_Field use
     (EP6CTL_ENDP_EN_Field_0 => 0,
      EP6CTL_ENDP_EN_Field_1 => 1);

   --  Offset:0x30 USB Endpoint 6 Control Register
   type EP6CTL_Register is record
      --  Endpoint byte count
      ENDP_CNT      : EP6CTL_ENDP_CNT_Field := 16#0#;
      --  unspecified
      Reserved_9_28 : HAL.UInt20 := 16#0#;
      --  Endpoint Handshake State
      ENDP_STATE    : EP6CTL_ENDP_STATE_Field :=
                       NRF_SVD.USB.EP6CTL_ENDP_STATE_Field_0;
      --  Endpoint 6 Function enable bit
      ENDP_EN       : EP6CTL_ENDP_EN_Field :=
                       NRF_SVD.USB.EP6CTL_ENDP_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP6CTL_Register use record
      ENDP_CNT      at 0 range 0 .. 8;
      Reserved_9_28 at 0 range 9 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   --  Endpoint 1 data toggle bit
   type EPTOGGLE_ENDP1_DATA01_Field is
     (
      --  Clear EP1 toggle bit to DATA0
      Disable,
      --  HW sets toggle bit automatically
      Toggle)
     with Size => 1;
   for EPTOGGLE_ENDP1_DATA01_Field use
     (Disable => 0,
      Toggle => 1);

   --  Endpoint 2 data toggle bit
   type EPTOGGLE_ENDP2_DATA01_Field is
     (
      --  Clear EP2 toggle bit to DATA0
      Disable,
      --  HW sets toggle bit automatically
      Toggle)
     with Size => 1;
   for EPTOGGLE_ENDP2_DATA01_Field use
     (Disable => 0,
      Toggle => 1);

   --  Endpoint 3 data toggle bit
   type EPTOGGLE_ENDP3_DATA01_Field is
     (
      --  Clear EP3 toggle bit to DATA0
      Disable,
      --  HW sets toggle bit automatically
      Toggle)
     with Size => 1;
   for EPTOGGLE_ENDP3_DATA01_Field use
     (Disable => 0,
      Toggle => 1);

   --  Endpoint 4 data toggle bit
   type EPTOGGLE_ENDP4_DATA01_Field is
     (
      --  Clear EP4 toggle bit to DATA0
      Disable,
      --  HW sets toggle bit automatically
      Toggle)
     with Size => 1;
   for EPTOGGLE_ENDP4_DATA01_Field use
     (Disable => 0,
      Toggle => 1);

   --  Endpoint 5 data toggle bit
   type EPTOGGLE_ENDP5_DATA01_Field is
     (
      --  Clear EP5 toggle bit to DATA0
      Disable,
      --  HW sets toggle bit automatically
      Toggle)
     with Size => 1;
   for EPTOGGLE_ENDP5_DATA01_Field use
     (Disable => 0,
      Toggle => 1);

   --  Endpoint 6 data toggle bit
   type EPTOGGLE_ENDP6_DATA01_Field is
     (
      --  Clear EP6 toggle bit to DATA0
      Disable,
      --  HW sets toggle bit automatically
      Toggle)
     with Size => 1;
   for EPTOGGLE_ENDP6_DATA01_Field use
     (Disable => 0,
      Toggle => 1);

   --  Offset:0x3C USB Endpoint Data Toggle Register
   type EPTOGGLE_Register is record
      --  Endpoint 1 data toggle bit
      ENDP1_DATA01  : EPTOGGLE_ENDP1_DATA01_Field := NRF_SVD.USB.Toggle;
      --  Endpoint 2 data toggle bit
      ENDP2_DATA01  : EPTOGGLE_ENDP2_DATA01_Field := NRF_SVD.USB.Toggle;
      --  Endpoint 3 data toggle bit
      ENDP3_DATA01  : EPTOGGLE_ENDP3_DATA01_Field := NRF_SVD.USB.Toggle;
      --  Endpoint 4 data toggle bit
      ENDP4_DATA01  : EPTOGGLE_ENDP4_DATA01_Field := NRF_SVD.USB.Toggle;
      --  Endpoint 5 data toggle bit
      ENDP5_DATA01  : EPTOGGLE_ENDP5_DATA01_Field := NRF_SVD.USB.Toggle;
      --  Endpoint 6 data toggle bit
      ENDP6_DATA01  : EPTOGGLE_ENDP6_DATA01_Field := NRF_SVD.USB.Toggle;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTOGGLE_Register use record
      ENDP1_DATA01  at 0 range 0 .. 0;
      ENDP2_DATA01  at 0 range 1 .. 1;
      ENDP3_DATA01  at 0 range 2 .. 2;
      ENDP4_DATA01  at 0 range 3 .. 3;
      ENDP5_DATA01  at 0 range 4 .. 4;
      ENDP6_DATA01  at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype EP1BUFOS_OFFSET_Field is HAL.UInt7;

   --  Offset:0x48 USB Endpoint 1 Buffer Offset Register
   type EP1BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP1BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP1BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype EP2BUFOS_OFFSET_Field is HAL.UInt7;

   --  Offset:0x4C USB Endpoint 2 Buffer Offset Register
   type EP2BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP2BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP2BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype EP3BUFOS_OFFSET_Field is HAL.UInt7;

   --  Offset:0x50 USB Endpoint 3 Buffer Offset Register
   type EP3BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP3BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP3BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype EP4BUFOS_OFFSET_Field is HAL.UInt7;

   --  Offset:0x54 USB Endpoint 4 Buffer Offset Register
   type EP4BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP4BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP4BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype EP5BUFOS_OFFSET_Field is HAL.UInt7;

   --  Offset:0x58 USB Endpoint 5 Buffer Offset Register
   type EP5BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP5BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP5BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype EP6BUFOS_OFFSET_Field is HAL.UInt7;

   --  Offset:0x5C USB Endpoint 6 Buffer Offset Register
   type EP6BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP6BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP6BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype FRMNO_FRAME_NO_Field is HAL.UInt11;

   --  Offset:0x60 USB Frame Number Register
   type FRMNO_Register is record
      --  The 11-bit frame number of the SOF packet
      FRAME_NO       : FRMNO_FRAME_NO_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRMNO_Register use record
      FRAME_NO       at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype PHYPRM_PHY_PARAM_Field is HAL.UInt6;

   --  Offset:0x64 USB PHY Parameter Register
   type PHYPRM_Register is record
      --  unspecified
      Reserved_0_25 : HAL.UInt26 := 16#0#;
      --  The USB PHY parameter value
      PHY_PARAM     : PHYPRM_PHY_PARAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHYPRM_Register use record
      Reserved_0_25 at 0 range 0 .. 25;
      PHY_PARAM     at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Serial Bus Full Speed Device Interface (USB)
   type SN_USB_Peripheral is record
      --  Offset:0x00 USB Interrupt Enable Register
      INTEN    : aliased INTEN_Register;
      --  Offset:0x04 USB Interrupt Event Status Register
      INSTS    : aliased INSTS_Register;
      --  Offset:0x08 USB Interrupt Event Status Clear Register
      INSTSC   : aliased INSTSC_Register;
      --  Offset:0x0C USB Device Address Register
      ADDR     : aliased ADDR_Register;
      --  Offset:0x10 USB Configuration Register
      CFG      : aliased CFG_Register;
      --  Offset:0x14 USB Signal Control Register
      SGCTL    : aliased SGCTL_Register;
      --  Offset:0x18 USB Endpoint 0 Control Register
      EP0CTL   : aliased EP0CTL_Register;
      --  Offset:0x1C USB Endpoint 1 Control Register
      EP1CTL   : aliased EP1CTL_Register;
      --  Offset:0x20 USB Endpoint 2 Control Register
      EP2CTL   : aliased EP2CTL_Register;
      --  Offset:0x24 USB Endpoint 3 Control Register
      EP3CTL   : aliased EP3CTL_Register;
      --  Offset:0x28 USB Endpoint 4 Control Register
      EP4CTL   : aliased EP4CTL_Register;
      --  Offset:0x2C USB Endpoint 5 Control Register
      EP5CTL   : aliased EP5CTL_Register;
      --  Offset:0x30 USB Endpoint 6 Control Register
      EP6CTL   : aliased EP6CTL_Register;
      --  Offset:0x3C USB Endpoint Data Toggle Register
      EPTOGGLE : aliased EPTOGGLE_Register;
      --  Offset:0x48 USB Endpoint 1 Buffer Offset Register
      EP1BUFOS : aliased EP1BUFOS_Register;
      --  Offset:0x4C USB Endpoint 2 Buffer Offset Register
      EP2BUFOS : aliased EP2BUFOS_Register;
      --  Offset:0x50 USB Endpoint 3 Buffer Offset Register
      EP3BUFOS : aliased EP3BUFOS_Register;
      --  Offset:0x54 USB Endpoint 4 Buffer Offset Register
      EP4BUFOS : aliased EP4BUFOS_Register;
      --  Offset:0x58 USB Endpoint 5 Buffer Offset Register
      EP5BUFOS : aliased EP5BUFOS_Register;
      --  Offset:0x5C USB Endpoint 6 Buffer Offset Register
      EP6BUFOS : aliased EP6BUFOS_Register;
      --  Offset:0x60 USB Frame Number Register
      FRMNO    : aliased FRMNO_Register;
      --  Offset:0x64 USB PHY Parameter Register
      PHYPRM   : aliased PHYPRM_Register;
      --  Offset:0x100 USB SRAM starting address
      SRAM     : aliased HAL.UInt32;
   end record
     with Volatile;

   for SN_USB_Peripheral use record
      INTEN    at 16#0# range 0 .. 31;
      INSTS    at 16#4# range 0 .. 31;
      INSTSC   at 16#8# range 0 .. 31;
      ADDR     at 16#C# range 0 .. 31;
      CFG      at 16#10# range 0 .. 31;
      SGCTL    at 16#14# range 0 .. 31;
      EP0CTL   at 16#18# range 0 .. 31;
      EP1CTL   at 16#1C# range 0 .. 31;
      EP2CTL   at 16#20# range 0 .. 31;
      EP3CTL   at 16#24# range 0 .. 31;
      EP4CTL   at 16#28# range 0 .. 31;
      EP5CTL   at 16#2C# range 0 .. 31;
      EP6CTL   at 16#30# range 0 .. 31;
      EPTOGGLE at 16#3C# range 0 .. 31;
      EP1BUFOS at 16#48# range 0 .. 31;
      EP2BUFOS at 16#4C# range 0 .. 31;
      EP3BUFOS at 16#50# range 0 .. 31;
      EP4BUFOS at 16#54# range 0 .. 31;
      EP5BUFOS at 16#58# range 0 .. 31;
      EP6BUFOS at 16#5C# range 0 .. 31;
      FRMNO    at 16#60# range 0 .. 31;
      PHYPRM   at 16#64# range 0 .. 31;
      SRAM     at 16#100# range 0 .. 31;
   end record;

   --  Universal Serial Bus Full Speed Device Interface (USB)
   SN_USB_Periph : aliased SN_USB_Peripheral
     with Import, Address => System'To_Address (16#4005C000#);

end NRF_SVD.USB;
