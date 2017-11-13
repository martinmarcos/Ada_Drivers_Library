--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.IWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IWDG_KR_KEY_Field is HAL.UInt16;

   --  Key register
   type IWDG_KR_Register is record
      --  Write-only. Key value (write only, read 0x0000) These bits must be
      --  written by software at regular intervals with the key value 0xAAAA,
      --  otherwise the watchdog generates a reset when the counter reaches 0.
      --  Writing the key value 0x5555 to enable access to the IWDG_PR,
      --  IWDG_RLR and IWDG_WINR registers (see Section23.3.6: Register access
      --  protection) Writing the key value CCCCh starts the watchdog (except
      --  if the hardware watchdog option is selected)
      KEY            : IWDG_KR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IWDG_PR_PR_Field is HAL.UInt3;

   --  Prescaler register
   type IWDG_PR_Register is record
      --  Prescaler divider These bits are write access protected see
      --  Section23.3.6: Register access protection. They are written by
      --  software to select the prescaler divider feeding the counter clock.
      --  PVU bit of IWDG_SR must be reset in order to be able to change the
      --  prescaler divider. Note: Reading this register returns the prescaler
      --  value from the VDD voltage domain. This value may not be up to
      --  date/valid if a write operation to this register is ongoing. For this
      --  reason the value read from this register is valid only when the PVU
      --  bit in the IWDG_SR register is reset.
      PR            : IWDG_PR_PR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_PR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype IWDG_RLR_RL_Field is HAL.UInt12;

   --  Reload register
   type IWDG_RLR_Register is record
      --  Watchdog counter reload value These bits are write access protected
      --  see Section23.3.6. They are written by software to define the value
      --  to be loaded in the watchdog counter each time the value 0xAAAA is
      --  written in the IWDG_KR register. The watchdog counter counts down
      --  from this value. The timeout period is a function of this value and
      --  the clock prescaler. Refer to the datasheet for the timeout
      --  information. The RVU bit in the IWDG_SR register must be reset in
      --  order to be able to change the reload value. Note: Reading this
      --  register returns the reload value from the VDD voltage domain. This
      --  value may not be up to date/valid if a write operation to this
      --  register is ongoing on this register. For this reason the value read
      --  from this register is valid only when the RVU bit in the IWDG_SR
      --  register is reset.
      RL             : IWDG_RLR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Status register
   type IWDG_SR_Register is record
      --  Read-only. Watchdog prescaler value update This bit is set by
      --  hardware to indicate that an update of the prescaler value is
      --  ongoing. It is reset by hardware when the prescaler update operation
      --  is completed in the VDD voltage domain (takes up to 5 RC 40 kHz
      --  cycles). Prescaler value can be updated only when PVU bit is reset.
      PVU           : Boolean;
      --  Read-only. Watchdog counter reload value update This bit is set by
      --  hardware to indicate that an update of the reload value is ongoing.
      --  It is reset by hardware when the reload value update operation is
      --  completed in the VDD voltage domain (takes up to 5 RC 40 kHz cycles).
      --  Reload value can be updated only when RVU bit is reset.
      RVU           : Boolean;
      --  Read-only. Watchdog counter window value update This bit is set by
      --  hardware to indicate that an update of the window value is ongoing.
      --  It is reset by hardware when the reload value update operation is
      --  completed in the VDD voltage domain (takes up to 5 RC 40 kHz cycles).
      --  Window value can be updated only when WVU bit is reset. This bit is
      --  generated only if generic window = 1
      WVU           : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_SR_Register use record
      PVU           at 0 range 0 .. 0;
      RVU           at 0 range 1 .. 1;
      WVU           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype IWDG_WINR_WIN_Field is HAL.UInt12;

   --  Window register
   type IWDG_WINR_Register is record
      --  Watchdog counter window value These bits are write access protected
      --  see Section23.3.6. These bits contain the high limit of the window
      --  value to be compared to the downcounter. To prevent a reset, the
      --  downcounter must be reloaded when its value is lower than the window
      --  register value and greater than 0x0 The WVU bit in the IWDG_SR
      --  register must be reset in order to be able to change the reload
      --  value. Note: Reading this register returns the reload value from the
      --  VDD voltage domain. This value may not be valid if a write operation
      --  to this register is ongoing. For this reason the value read from this
      --  register is valid only when the WVU bit in the IWDG_SR register is
      --  reset.
      WIN            : IWDG_WINR_WIN_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_WINR_Register use record
      WIN            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IWDG
   type IWDG_Peripheral is record
      --  Key register
      IWDG_KR   : aliased IWDG_KR_Register;
      --  Prescaler register
      IWDG_PR   : aliased IWDG_PR_Register;
      --  Reload register
      IWDG_RLR  : aliased IWDG_RLR_Register;
      --  Status register
      IWDG_SR   : aliased IWDG_SR_Register;
      --  Window register
      IWDG_WINR : aliased IWDG_WINR_Register;
   end record
     with Volatile;

   for IWDG_Peripheral use record
      IWDG_KR   at 16#0# range 0 .. 31;
      IWDG_PR   at 16#4# range 0 .. 31;
      IWDG_RLR  at 16#8# range 0 .. 31;
      IWDG_SR   at 16#C# range 0 .. 31;
      IWDG_WINR at 16#10# range 0 .. 31;
   end record;

   --  IWDG
   IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => System'To_Address (16#58004800#);

end STM32_SVD.IWDG;
