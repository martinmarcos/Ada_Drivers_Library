--

--  This spec has been automatically generated from SN32F240B.svd

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

   --  EPN ACK Interrupt Enable
   type INTEN_EPN_ACK_EN_Field is
     (
      --  Disable EP1~4 ACK interrupt function
      Disable,
      --  Enable EP1~4 ACK interrupt function
      Enable)
     with Size => 1;
   for INTEN_EPN_ACK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  USB Bus Wake Up Interrupt Enable
   type INTEN_BUSWK_IE_Field is
     (
      --  Disable Wake Up event interrupt
      Disable,
      --  Enable Wake Up event interrupt
      Enable)
     with Size => 1;
   for INTEN_BUSWK_IE_Field use
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
      --  EPN ACK Interrupt Enable
      EPN_ACK_EN    : INTEN_EPN_ACK_EN_Field := NRF_SVD.USB.Disable;
      --  unspecified
      Reserved_5_27 : HAL.UInt23 := 16#0#;
      --  USB Bus Wake Up Interrupt Enable
      BUSWK_IE      : INTEN_BUSWK_IE_Field := NRF_SVD.USB.Disable;
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
      EPN_ACK_EN    at 0 range 4 .. 4;
      Reserved_5_27 at 0 range 5 .. 27;
      BUSWK_IE      at 0 range 28 .. 28;
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
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Endpoint 1 ACK transaction flag
      EP1_ACK        : INSTS_EP1_ACK_Field;
      --  Read-only. Endpoint 2 ACK transaction flag
      EP2_ACK        : INSTS_EP2_ACK_Field;
      --  Read-only. Endpoint 3 ACK transaction flag
      EP3_ACK        : INSTS_EP3_ACK_Field;
      --  Read-only. Endpoint 4 ACK transaction flag
      EP4_ACK        : INSTS_EP4_ACK_Field;
      --  unspecified
      Reserved_12_16 : HAL.UInt5;
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
      Reserved_4_7   at 0 range 4 .. 7;
      EP1_ACK        at 0 range 8 .. 8;
      EP2_ACK        at 0 range 9 .. 9;
      EP3_ACK        at 0 range 10 .. 10;
      EP4_ACK        at 0 range 11 .. 11;
      Reserved_12_16 at 0 range 12 .. 16;
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
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. EP1 ACK clear bit
      EP1_ACKC       : INSTSC_EP1_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP2 ACK clear bit
      EP2_ACKC       : INSTSC_EP2_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP3 ACK clear bit
      EP3_ACKC       : INSTSC_EP3_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  Write-only. EP4 ACK clear bit
      EP4_ACKC       : INSTSC_EP4_ACKC_Field := NRF_SVD.USB.No EFFECT;
      --  unspecified
      Reserved_12_16 : HAL.UInt5 := 16#0#;
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
      Reserved_4_7   at 0 range 4 .. 7;
      EP1_ACKC       at 0 range 8 .. 8;
      EP2_ACKC       at 0 range 9 .. 9;
      EP3_ACKC       at 0 range 10 .. 10;
      EP4_ACKC       at 0 range 11 .. 11;
      Reserved_12_16 at 0 range 12 .. 16;
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

   --  Enable internal D+ and D- 175k pull-down resistor
   type CFG_DIS_PDEN_Field is
     (
      --  Disable
      Disable,
      --  Enable
      Enable)
     with Size => 1;
   for CFG_DIS_PDEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable USB anti-ESD protection
   type CFG_ESD_EN_Field is
     (
      --  Disable anti-ESD protection
      Disable,
      --  Enable anti-ESD protection
      Enable)
     with Size => 1;
   for CFG_ESD_EN_Field use
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
      EP1_DIR       : CFG_EP1_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 2 IN/OUT direction setting
      EP2_DIR       : CFG_EP2_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 3 IN/OUT direction setting
      EP3_DIR       : CFG_EP3_DIR_Field := NRF_SVD.USB.In_k;
      --  Endpoint 4 IN/OUT direction setting
      EP4_DIR       : CFG_EP4_DIR_Field := NRF_SVD.USB.In_k;
      --  unspecified
      Reserved_4_25 : HAL.UInt22 := 16#0#;
      --  Enable internal D+ and D- 175k pull-down resistor
      DIS_PDEN      : CFG_DIS_PDEN_Field := NRF_SVD.USB.Disable;
      --  Enable USB anti-ESD protection
      ESD_EN        : CFG_ESD_EN_Field := NRF_SVD.USB.Disable;
      --  USB Serial Interface Engine Enable
      SIE_EN        : CFG_SIE_EN_Field := NRF_SVD.USB.Disable;
      --  Enable internal D+ 1.5k pull-up resistor
      DPPU_EN       : CFG_DPPU_EN_Field := NRF_SVD.USB.Disable;
      --  PHY Transceiver Function Enable
      PHY_EN        : CFG_PHY_EN_Field := NRF_SVD.USB.Disable;
      --  Enable the internal VREG33 ouput
      VREG33_EN     : CFG_VREG33_EN_Field := NRF_SVD.USB.Disable;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      EP1_DIR       at 0 range 0 .. 0;
      EP2_DIR       at 0 range 1 .. 1;
      EP3_DIR       at 0 range 2 .. 2;
      EP4_DIR       at 0 range 3 .. 3;
      Reserved_4_25 at 0 range 4 .. 25;
      DIS_PDEN      at 0 range 26 .. 26;
      ESD_EN        at 0 range 27 .. 27;
      SIE_EN        at 0 range 28 .. 28;
      DPPU_EN       at 0 range 29 .. 29;
      PHY_EN        at 0 range 30 .. 30;
      VREG33_EN     at 0 range 31 .. 31;
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

   subtype EP1CTL_ENDP_CNT_Field is HAL.UInt7;

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
      Reserved_7_28 : HAL.UInt22 := 16#0#;
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
      ENDP_CNT      at 0 range 0 .. 6;
      Reserved_7_28 at 0 range 7 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP2CTL_ENDP_CNT_Field is HAL.UInt7;

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
      Reserved_7_28 : HAL.UInt22 := 16#0#;
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
      ENDP_CNT      at 0 range 0 .. 6;
      Reserved_7_28 at 0 range 7 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP3CTL_ENDP_CNT_Field is HAL.UInt7;

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
      Reserved_7_28 : HAL.UInt22 := 16#0#;
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
      ENDP_CNT      at 0 range 0 .. 6;
      Reserved_7_28 at 0 range 7 .. 28;
      ENDP_STATE    at 0 range 29 .. 30;
      ENDP_EN       at 0 range 31 .. 31;
   end record;

   subtype EP4CTL_ENDP_CNT_Field is HAL.UInt7;

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
      Reserved_7_28 : HAL.UInt22 := 16#0#;
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
      ENDP_CNT      at 0 range 0 .. 6;
      Reserved_7_28 at 0 range 7 .. 28;
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
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPTOGGLE_Register use record
      ENDP1_DATA01  at 0 range 0 .. 0;
      ENDP2_DATA01  at 0 range 1 .. 1;
      ENDP3_DATA01  at 0 range 2 .. 2;
      ENDP4_DATA01  at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype EP1BUFOS_OFFSET_Field is HAL.UInt6;

   --  Offset:0x48 USB Endpoint 1 Buffer Offset Register
   type EP1BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP1BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP1BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EP2BUFOS_OFFSET_Field is HAL.UInt6;

   --  Offset:0x4C USB Endpoint 2 Buffer Offset Register
   type EP2BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP2BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP2BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EP3BUFOS_OFFSET_Field is HAL.UInt6;

   --  Offset:0x50 USB Endpoint 3 Buffer Offset Register
   type EP3BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP3BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP3BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EP4BUFOS_OFFSET_Field is HAL.UInt6;

   --  Offset:0x54 USB Endpoint 4 Buffer Offset Register
   type EP4BUFOS_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  The offset address for endpoint data buffer
      OFFSET        : EP4BUFOS_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP4BUFOS_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      OFFSET        at 0 range 2 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FRMNO_FRAME_NO_Field is HAL.UInt11;

   --  Offset:0x60 USB Frame Number Register
   type FRMNO_Register is record
      --  Read-only. The 11-bit frame number of the SOF packet
      FRAME_NO       : FRMNO_FRAME_NO_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
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
      --  USB PHY parameter
      PHY_PARAM     : PHYPRM_PHY_PARAM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHYPRM_Register use record
      PHY_PARAM     at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype PHYPRM2_PHY_PS_Field is HAL.UInt15;

   --  Offset:0x6C USB PHY Parameter 2 Register
   type PHYPRM2_Register is record
      --  USB PHY parameter 2
      PHY_PS         : PHYPRM2_PHY_PS_Field := 16#4000#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHYPRM2_Register use record
      PHY_PS         at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  PS/2 SCK mode control bit
   type PS2CTL_SCKM_Field is
     (
      --  Disable
      Disable,
      --  Enabled
      Enable)
     with Size => 1;
   for PS2CTL_SCKM_Field use
     (Disable => 0,
      Enable => 1);

   --  PS/2 SDA mode control bit
   type PS2CTL_SDAM_Field is
     (
      --  Disable
      Disable,
      --  Enabled
      Enable)
     with Size => 1;
   for PS2CTL_SDAM_Field use
     (Disable => 0,
      Enable => 1);

   --  PS/2 SCK data buffer
   type PS2CTL_SCK_Field is
     (
      --  Disable
      Disable,
      --  Enabled
      Enable)
     with Size => 1;
   for PS2CTL_SCK_Field use
     (Disable => 0,
      Enable => 1);

   --  PS/2 SDA data buffer
   type PS2CTL_SDA_Field is
     (
      --  Disable
      Disable,
      --  Enabled
      Enable)
     with Size => 1;
   for PS2CTL_SDA_Field use
     (Disable => 0,
      Enable => 1);

   --  PS/2 internal 5kohm pull-up resistor control bit
   type PS2CTL_PS2ENB_Field is
     (
      --  Disable
      Disable,
      --  Enabled
      Enable)
     with Size => 1;
   for PS2CTL_PS2ENB_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x70 PS/2 Control Register
   type PS2CTL_Register is record
      --  PS/2 SCK mode control bit
      SCKM          : PS2CTL_SCKM_Field := NRF_SVD.USB.Disable;
      --  PS/2 SDA mode control bit
      SDAM          : PS2CTL_SDAM_Field := NRF_SVD.USB.Disable;
      --  PS/2 SCK data buffer
      SCK           : PS2CTL_SCK_Field := NRF_SVD.USB.Disable;
      --  PS/2 SDA data buffer
      SDA           : PS2CTL_SDA_Field := NRF_SVD.USB.Disable;
      --  unspecified
      Reserved_4_30 : HAL.UInt27 := 16#0#;
      --  PS/2 internal 5kohm pull-up resistor control bit
      PS2ENB        : PS2CTL_PS2ENB_Field := NRF_SVD.USB.Disable;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PS2CTL_Register use record
      SCKM          at 0 range 0 .. 0;
      SDAM          at 0 range 1 .. 1;
      SCK           at 0 range 2 .. 2;
      SDA           at 0 range 3 .. 3;
      Reserved_4_30 at 0 range 4 .. 30;
      PS2ENB        at 0 range 31 .. 31;
   end record;

   subtype RWADDR_RWADDR_Field is HAL.UInt6;

   --  Offset:0x78 USB Read/Write Address Register
   type RWADDR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  USB FIFO address to be read or written from/to USB FIFO
      RWADDR        : RWADDR_RWADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RWADDR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RWADDR        at 0 range 2 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Write status of USB FIFO
   type RWSTATUS_W_STATUS_Field is
     (
      --  this bit is automatically cleared as '0' by hardware
      OPERATION READY,
      --  F/W is to write data into USB FIFO now
      NOT READY)
     with Size => 1;
   for RWSTATUS_W_STATUS_Field use
     (OPERATION READY => 0,
      NOT READY => 1);

   --  WRead status of USB FIFO
   type RWSTATUS_R_STATUS_Field is
     (
      --  this bit is automatically cleared as '0' by hardware
      OPERATION READY,
      --  If F/W is to read the data from USB FIFO now
      NOT READY)
     with Size => 1;
   for RWSTATUS_R_STATUS_Field use
     (OPERATION READY => 0,
      NOT READY => 1);

   --  Offset:0x80 USB Read/Write Status Register
   type RWSTATUS_Register is record
      --  Write status of USB FIFO
      W_STATUS      : RWSTATUS_W_STATUS_Field := NRF_SVD.USB.OPERATION READY;
      --  WRead status of USB FIFO
      R_STATUS      : RWSTATUS_R_STATUS_Field := NRF_SVD.USB.OPERATION READY;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RWSTATUS_Register use record
      W_STATUS      at 0 range 0 .. 0;
      R_STATUS      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Serial Bus Full Speed Device Interface (USB)
   type SN_USB_Peripheral is record
      --  Offset:0x00 USB Interrupt Enable Register
      INTEN     : aliased INTEN_Register;
      --  Offset:0x04 USB Interrupt Event Status Register
      INSTS     : aliased INSTS_Register;
      --  Offset:0x08 USB Interrupt Event Status Clear Register
      INSTSC    : aliased INSTSC_Register;
      --  Offset:0x0C USB Device Address Register
      ADDR      : aliased ADDR_Register;
      --  Offset:0x10 USB Configuration Register
      CFG       : aliased CFG_Register;
      --  Offset:0x14 USB Signal Control Register
      SGCTL     : aliased SGCTL_Register;
      --  Offset:0x18 USB Endpoint 0 Control Register
      EP0CTL    : aliased EP0CTL_Register;
      --  Offset:0x1C USB Endpoint 1 Control Register
      EP1CTL    : aliased EP1CTL_Register;
      --  Offset:0x20 USB Endpoint 2 Control Register
      EP2CTL    : aliased EP2CTL_Register;
      --  Offset:0x24 USB Endpoint 3 Control Register
      EP3CTL    : aliased EP3CTL_Register;
      --  Offset:0x28 USB Endpoint 4 Control Register
      EP4CTL    : aliased EP4CTL_Register;
      --  Offset:0x3C USB Endpoint Data Toggle Register
      EPTOGGLE  : aliased EPTOGGLE_Register;
      --  Offset:0x48 USB Endpoint 1 Buffer Offset Register
      EP1BUFOS  : aliased EP1BUFOS_Register;
      --  Offset:0x4C USB Endpoint 2 Buffer Offset Register
      EP2BUFOS  : aliased EP2BUFOS_Register;
      --  Offset:0x50 USB Endpoint 3 Buffer Offset Register
      EP3BUFOS  : aliased EP3BUFOS_Register;
      --  Offset:0x54 USB Endpoint 4 Buffer Offset Register
      EP4BUFOS  : aliased EP4BUFOS_Register;
      --  Offset:0x60 USB Frame Number Register
      FRMNO     : aliased FRMNO_Register;
      --  Offset:0x64 USB PHY Parameter Register
      PHYPRM    : aliased PHYPRM_Register;
      --  Offset:0x6C USB PHY Parameter 2 Register
      PHYPRM2   : aliased PHYPRM2_Register;
      --  Offset:0x70 PS/2 Control Register
      PS2CTL    : aliased PS2CTL_Register;
      --  Offset:0x78 USB Read/Write Address Register
      RWADDR    : aliased RWADDR_Register;
      --  Offset:0x7C USB Read/Write Data Register
      RWDATA    : aliased HAL.UInt32;
      --  Offset:0x80 USB Read/Write Status Register
      RWSTATUS  : aliased RWSTATUS_Register;
      --  Offset:0x84 USB Read/Write Address Register 2
      RWADDR2   : aliased RWADDR_Register;
      --  Offset:0x88 USB Read/Write Data Register 2
      RWDATA2   : aliased HAL.UInt32;
      --  Offset:0x8C USB Read/Write Status Register 2
      RWSTATUS2 : aliased RWSTATUS_Register;
   end record
     with Volatile;

   for SN_USB_Peripheral use record
      INTEN     at 16#0# range 0 .. 31;
      INSTS     at 16#4# range 0 .. 31;
      INSTSC    at 16#8# range 0 .. 31;
      ADDR      at 16#C# range 0 .. 31;
      CFG       at 16#10# range 0 .. 31;
      SGCTL     at 16#14# range 0 .. 31;
      EP0CTL    at 16#18# range 0 .. 31;
      EP1CTL    at 16#1C# range 0 .. 31;
      EP2CTL    at 16#20# range 0 .. 31;
      EP3CTL    at 16#24# range 0 .. 31;
      EP4CTL    at 16#28# range 0 .. 31;
      EPTOGGLE  at 16#3C# range 0 .. 31;
      EP1BUFOS  at 16#48# range 0 .. 31;
      EP2BUFOS  at 16#4C# range 0 .. 31;
      EP3BUFOS  at 16#50# range 0 .. 31;
      EP4BUFOS  at 16#54# range 0 .. 31;
      FRMNO     at 16#60# range 0 .. 31;
      PHYPRM    at 16#64# range 0 .. 31;
      PHYPRM2   at 16#6C# range 0 .. 31;
      PS2CTL    at 16#70# range 0 .. 31;
      RWADDR    at 16#78# range 0 .. 31;
      RWDATA    at 16#7C# range 0 .. 31;
      RWSTATUS  at 16#80# range 0 .. 31;
      RWADDR2   at 16#84# range 0 .. 31;
      RWDATA2   at 16#88# range 0 .. 31;
      RWSTATUS2 at 16#8C# range 0 .. 31;
   end record;

   --  Universal Serial Bus Full Speed Device Interface (USB)
   SN_USB_Periph : aliased SN_USB_Peripheral
     with Import, Address => System'To_Address (16#4005C000#);

end NRF_SVD.USB;
