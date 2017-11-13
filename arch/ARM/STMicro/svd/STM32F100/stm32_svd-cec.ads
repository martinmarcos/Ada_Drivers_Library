--  This spec has been automatically generated from STM32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.CEC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  configuration register
   type CFGR_Register is record
      --  Peripheral enable
      PE            : Boolean := False;
      --  Interrupt enable
      IE            : Boolean := False;
      --  Bit timing error mode
      BTEM          : Boolean := False;
      --  Bit period error mode
      BPEM          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      PE            at 0 range 0 .. 0;
      IE            at 0 range 1 .. 1;
      BTEM          at 0 range 2 .. 2;
      BPEM          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OAR_OA_Field is HAL.UInt4;

   --  CEC own address register
   type OAR_Register is record
      --  Own address
      OA            : OAR_OA_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR_Register use record
      OA            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PRES_PRESC_Field is HAL.UInt14;

   --  Rx Data Register
   type PRES_Register is record
      --  CEC Rx Data Register
      PRESC          : PRES_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRES_Register use record
      PRESC          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  CEC error status register
   type ESR_Register is record
      --  Read-only. Bit timing error
      BTE           : Boolean;
      --  Read-only. Bit period error
      BPE           : Boolean;
      --  Read-only. Rx block transfer finished error
      RBTFE         : Boolean;
      --  Read-only. Start bit error
      SBE           : Boolean;
      --  Read-only. Block acknowledge error
      ACKE          : Boolean;
      --  Read-only. Line error
      LINE          : Boolean;
      --  Read-only. Tx block transfer finished error
      TBTFE         : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESR_Register use record
      BTE           at 0 range 0 .. 0;
      BPE           at 0 range 1 .. 1;
      RBTFE         at 0 range 2 .. 2;
      SBE           at 0 range 3 .. 3;
      ACKE          at 0 range 4 .. 4;
      LINE          at 0 range 5 .. 5;
      TBTFE         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  CEC control and status register
   type CSR_Register is record
      --  Tx start of message
      TSOM          : Boolean := False;
      --  Tx end of message
      TEOM          : Boolean := False;
      --  Tx error
      TERR          : Boolean := False;
      --  Tx byte transfer request or block transfer finished
      TBTRF         : Boolean := False;
      --  Rx start of message
      RSOM          : Boolean := False;
      --  Rx end of message
      REOM          : Boolean := False;
      --  Rx error
      RERR          : Boolean := False;
      --  Rx byte/block transfer finished
      RBTF          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      TSOM          at 0 range 0 .. 0;
      TEOM          at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      TBTRF         at 0 range 3 .. 3;
      RSOM          at 0 range 4 .. 4;
      REOM          at 0 range 5 .. 5;
      RERR          at 0 range 6 .. 6;
      RBTF          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXD_TXD_Field is HAL.UInt8;

   --  CEC Tx data register
   type TXD_Register is record
      --  Tx Data register
      TXD           : TXD_TXD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXD_Register use record
      TXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXD_RXD_Field is HAL.UInt8;

   --  CEC Rx data register
   type RXD_Register is record
      --  Read-only. Rx data
      RXD           : RXD_RXD_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXD_Register use record
      RXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HDMI-CEC controller
   type CEC_Peripheral is record
      --  configuration register
      CFGR : aliased CFGR_Register;
      --  CEC own address register
      OAR  : aliased OAR_Register;
      --  Rx Data Register
      PRES : aliased PRES_Register;
      --  CEC error status register
      ESR  : aliased ESR_Register;
      --  CEC control and status register
      CSR  : aliased CSR_Register;
      --  CEC Tx data register
      TXD  : aliased TXD_Register;
      --  CEC Rx data register
      RXD  : aliased RXD_Register;
   end record
     with Volatile;

   for CEC_Peripheral use record
      CFGR at 16#0# range 0 .. 31;
      OAR  at 16#4# range 0 .. 31;
      PRES at 16#8# range 0 .. 31;
      ESR  at 16#C# range 0 .. 31;
      CSR  at 16#10# range 0 .. 31;
      TXD  at 16#14# range 0 .. 31;
      RXD  at 16#18# range 0 .. 31;
   end record;

   --  HDMI-CEC controller
   CEC_Periph : aliased CEC_Peripheral
     with Import, Address => System'To_Address (16#40007800#);

end STM32_SVD.CEC;
