--  This spec has been automatically generated from XMC1300.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.BCCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Trigger Mode
   type GLOBCON_TM_Field is
     (
      --  Mode 0: BCCU trigger occurs if there is any channel trigger (OR
      --  logic)
      VALUE1,
      --  Mode 1: BCCU trigger occurs if there is a channel trigger event on
      --  the active channel. When this happens, the next trigger-enabled
      --  channel will be active following the round robin.
      VALUE2)
     with Size => 1;
   for GLOBCON_TM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger Delay
   type GLOBCON_TRDEL_Field is
     (
      --  No delay
      VALUE1,
      --  BCCU trigger occurs a quarter bit time after the channel trigger that
      --  caused it; only to be used if BCCU_GLOBCLK.BCS is 0
      VALUE2,
      --  BCCU trigger occurs half a bit time after the channel trigger that
      --  caused it; only to be used if BCCU_GLOBCLK.BCS is 0
      VALUE3,
      --  No delay
      VALUE4)
     with Size => 2;
   for GLOBCON_TRDEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Suspend Mode Configuration
   type GLOBCON_SUSCFG_Field is
     (
      --  Suspend request is ignored and the module cannot get suspended
      VALUE1,
      --  All channels stop running immediately and freeze in the last state
      --  without any safe stop
      VALUE2,
      --  All channels stop running immediately and freeze in the last state;
      --  all outputs go to passive state to achieve safe stop
      VALUE3)
     with Size => 2;
   for GLOBCON_SUSCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Trap Input Pin Selector
   type GLOBCON_TRAPIS_Field is
     (
      --  BCCU.TRAPINA
      VALUE1,
      --  BCCU.TRAPINB
      VALUE2,
      --  BCCU.TRAPINC
      VALUE3,
      --  BCCU.TRAPIND
      VALUE4,
      --  BCCU.TRAPINE
      VALUE5,
      --  BCCU.TRAPINF
      VALUE6,
      --  BCCU.TRAPING
      VALUE7,
      --  BCCU.TRAPINH
      VALUE8,
      --  BCCU.TRAPINI
      VALUE9,
      --  BCCU.TRAPING
      VALUE10,
      --  BCCU.TRAPINK
      VALUE11,
      --  BCCU.TRAPINL
      VALUE12,
      --  BCCU.TRAPINM
      VALUE13,
      --  BCCU.TRAPINN
      VALUE14,
      --  BCCU.TRAPINO
      VALUE15,
      --  BCCU.TRAPINP
      VALUE16)
     with Size => 4;
   for GLOBCON_TRAPIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 8,
      VALUE10 => 9,
      VALUE11 => 10,
      VALUE12 => 11,
      VALUE13 => 12,
      VALUE14 => 13,
      VALUE15 => 14,
      VALUE16 => 15);

   --  Trap Edge
   type GLOBCON_TRAPED_Field is
     (
      --  Trap occurs (trap flag is set) on rising edge of the BCCU.TRAPL
      --  signal
      VALUE1,
      --  Trap occurs (trap flag is set) on falling edge of the BCCU.TRAPL
      --  signal
      VALUE2)
     with Size => 1;
   for GLOBCON_TRAPED_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Last Trigger Source
   type GLOBCON_LTRS_Field is
     (
      --  The last trigger occurred in channel turn 0
      VALUE1,
      --  The last trigger occurred in channel turn 1
      VALUE2,
      --  The last trigger occurred in channel turn 2
      VALUE3,
      --  The last trigger occurred in channel turn 3
      VALUE4,
      --  The last trigger occurred in channel turn 4
      VALUE5,
      --  The last trigger occurred in channel turn 5
      VALUE6,
      --  The last trigger occurred in channel turn 6
      VALUE7,
      --  The last trigger occurred in channel turn 7
      VALUE8,
      --  The last trigger occurred in channel turn 8
      VALUE9)
     with Size => 4;
   for GLOBCON_LTRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7,
      VALUE9 => 8);

   subtype GLOBCON_WDMBN_Field is HAL.UInt12;

   --  Global Control
   type GLOBCON_Register is record
      --  Trigger Mode
      TM             : GLOBCON_TM_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Trigger Delay
      TRDEL          : GLOBCON_TRDEL_Field := NRF_SVD.BCCU.VALUE1;
      --  Suspend Mode Configuration
      SUSCFG         : GLOBCON_SUSCFG_Field := NRF_SVD.BCCU.VALUE1;
      --  Trap Input Pin Selector
      TRAPIS         : GLOBCON_TRAPIS_Field := NRF_SVD.BCCU.VALUE1;
      --  Trap Edge
      TRAPED         : GLOBCON_TRAPED_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. Last Trigger Source
      LTRS           : GLOBCON_LTRS_Field := NRF_SVD.BCCU.VALUE1;
      --  Watchdog Maximum Bitnumber
      WDMBN          : GLOBCON_WDMBN_Field := 16#320#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBCON_Register use record
      TM             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TRDEL          at 0 range 2 .. 3;
      SUSCFG         at 0 range 4 .. 5;
      TRAPIS         at 0 range 6 .. 9;
      TRAPED         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LTRS           at 0 range 12 .. 15;
      WDMBN          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Fast Clock Prescaler Factor
   type GLOBCLK_FCLK_PS_Field is
     (
      --  No clock
      VALUE1,
      --  Divide by 1
      VALUE2,
      --  Reset value for the field
      Globclk_Fclk_Ps_Field_Reset,
      --  Divide by 4095
      VALUE3)
     with Size => 12;
   for GLOBCLK_FCLK_PS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      Globclk_Fclk_Ps_Field_Reset => 400,
      VALUE3 => 4095);

   --  Bit-Clock Selector
   type GLOBCLK_BCS_Field is
     (
      --  Normal Mode: BCCU_bclk is generated from BCCU_fclk by a division of 4
      VALUE1,
      --  Fast Mode: BCCU_bclk is the same as BCCU_fclk
      VALUE2)
     with Size => 1;
   for GLOBCLK_BCS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimmer Clock Prescaler Factor
   type GLOBCLK_DCLK_PS_Field is
     (
      --  No clock
      VALUE1,
      --  Divide by 1
      VALUE2,
      --  Reset value for the field
      Globclk_Dclk_Ps_Field_Reset,
      --  Divide by 4095
      VALUE3)
     with Size => 12;
   for GLOBCLK_DCLK_PS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      Globclk_Dclk_Ps_Field_Reset => 219,
      VALUE3 => 4095);

   --  Global Clock
   type GLOBCLK_Register is record
      --  Fast Clock Prescaler Factor
      FCLK_PS        : GLOBCLK_FCLK_PS_Field := Globclk_Fclk_Ps_Field_Reset;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Bit-Clock Selector
      BCS            : GLOBCLK_BCS_Field := NRF_SVD.BCCU.VALUE1;
      --  Dimmer Clock Prescaler Factor
      DCLK_PS        : GLOBCLK_DCLK_PS_Field := Globclk_Dclk_Ps_Field_Reset;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBCLK_Register use record
      FCLK_PS        at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      BCS            at 0 range 15 .. 15;
      DCLK_PS        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE0_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  Module Identification
   type ID_Register is record
      --  Read-only. Module Revision Number
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE0  : ID_MOD_TYPE0_Field;
      --  Read-only. Module Number Value
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE0  at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   --  Channel 0 Enable
   type CHEN_ECH0_Field is
     (
      --  Channel is disabled, the output level is passive; the Linear Walker
      --  and the Sigma-Delta Modulator are reset, the Packer FIFO is flushed;
      --  all internal logic and INTy are reset when the channel gets disabled
      VALUE1,
      --  Channel is enabled
      VALUE2)
     with Size => 1;
   for CHEN_ECH0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CHEN_ECH array
   type CHEN_ECH_Field_Array is array (0 .. 8) of CHEN_ECH0_Field
     with Component_Size => 1, Size => 9;

   --  Type definition for CHEN_ECH
   type CHEN_ECH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ECH as a value
            Val : HAL.UInt9;
         when True =>
            --  ECH as an array
            Arr : CHEN_ECH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for CHEN_ECH_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Channel Enable
   type CHEN_Register is record
      --  Channel 0 Enable
      ECH           : CHEN_ECH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHEN_Register use record
      ECH           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Channel 0 Output Passive Level
   type CHOCON_CH0OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH0OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Output Passive Level
   type CHOCON_CH1OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH1OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Output Passive Level
   type CHOCON_CH2OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH2OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 3 Output Passive Level
   type CHOCON_CH3OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH3OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 4 Output Passive Level
   type CHOCON_CH4OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH4OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 5 Output Passive Level
   type CHOCON_CH5OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH5OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 6 Output Passive Level
   type CHOCON_CH6OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH6OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 7 Output Passive Level
   type CHOCON_CH7OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH7OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 8 Output Passive Level
   type CHOCON_CH8OP_Field is
     (
      --  Active high
      VALUE1,
      --  Active low
      VALUE2)
     with Size => 1;
   for CHOCON_CH8OP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 0 Trap Enable
   type CHOCON_CH0TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH0TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Trap Enable
   type CHOCON_CH1TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH1TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Trap Enable
   type CHOCON_CH2TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH2TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 3 Trap Enable
   type CHOCON_CH3TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH3TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 4 Trap Enable
   type CHOCON_CH4TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH4TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 5 Trap Enable
   type CHOCON_CH5TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH5TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 6 Trap Enable
   type CHOCON_CH6TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH6TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 7 Trap Enable
   type CHOCON_CH7TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH7TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 8 Trap Enable
   type CHOCON_CH8TPE_Field is
     (
      --  Trap function on channel is disabled
      VALUE1,
      --  Trap function on channel is enabled, the output goes to passive level
      --  when trap occurs
      VALUE2)
     with Size => 1;
   for CHOCON_CH8TPE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel Output Control
   type CHOCON_Register is record
      --  Channel 0 Output Passive Level
      CH0OP          : CHOCON_CH0OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 1 Output Passive Level
      CH1OP          : CHOCON_CH1OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 2 Output Passive Level
      CH2OP          : CHOCON_CH2OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 3 Output Passive Level
      CH3OP          : CHOCON_CH3OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 4 Output Passive Level
      CH4OP          : CHOCON_CH4OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 5 Output Passive Level
      CH5OP          : CHOCON_CH5OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 6 Output Passive Level
      CH6OP          : CHOCON_CH6OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 7 Output Passive Level
      CH7OP          : CHOCON_CH7OP_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 8 Output Passive Level
      CH8OP          : CHOCON_CH8OP_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Channel 0 Trap Enable
      CH0TPE         : CHOCON_CH0TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 1 Trap Enable
      CH1TPE         : CHOCON_CH1TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 2 Trap Enable
      CH2TPE         : CHOCON_CH2TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 3 Trap Enable
      CH3TPE         : CHOCON_CH3TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 4 Trap Enable
      CH4TPE         : CHOCON_CH4TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 5 Trap Enable
      CH5TPE         : CHOCON_CH5TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 6 Trap Enable
      CH6TPE         : CHOCON_CH6TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 7 Trap Enable
      CH7TPE         : CHOCON_CH7TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 8 Trap Enable
      CH8TPE         : CHOCON_CH8TPE_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHOCON_Register use record
      CH0OP          at 0 range 0 .. 0;
      CH1OP          at 0 range 1 .. 1;
      CH2OP          at 0 range 2 .. 2;
      CH3OP          at 0 range 3 .. 3;
      CH4OP          at 0 range 4 .. 4;
      CH5OP          at 0 range 5 .. 5;
      CH6OP          at 0 range 6 .. 6;
      CH7OP          at 0 range 7 .. 7;
      CH8OP          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CH0TPE         at 0 range 16 .. 16;
      CH1TPE         at 0 range 17 .. 17;
      CH2TPE         at 0 range 18 .. 18;
      CH3TPE         at 0 range 19 .. 19;
      CH4TPE         at 0 range 20 .. 20;
      CH5TPE         at 0 range 21 .. 21;
      CH6TPE         at 0 range 22 .. 22;
      CH7TPE         at 0 range 23 .. 23;
      CH8TPE         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Channel 0 Trigger Enable
   type CHTRIG_ET0_Field is
     (
      --  Channel trigger is disabled
      VALUE1,
      --  Channel trigger is enabled
      VALUE2)
     with Size => 1;
   for CHTRIG_ET0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CHTRIG_ET array
   type CHTRIG_ET_Field_Array is array (0 .. 8) of CHTRIG_ET0_Field
     with Component_Size => 1, Size => 9;

   --  Type definition for CHTRIG_ET
   type CHTRIG_ET_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ET as a value
            Val : HAL.UInt9;
         when True =>
            --  ET as an array
            Arr : CHTRIG_ET_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for CHTRIG_ET_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Channel 0 Trigger Output Select
   type CHTRIG_TOS0_Field is
     (
      --  The channel trigger pulse will appear on BCCU_TRIGOUT0
      VALUE1,
      --  The channel trigger pulse will appear on BCCU_TRIGOUT1
      VALUE2)
     with Size => 1;
   for CHTRIG_TOS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CHTRIG_TOS array
   type CHTRIG_TOS_Field_Array is array (0 .. 8) of CHTRIG_TOS0_Field
     with Component_Size => 1, Size => 9;

   --  Type definition for CHTRIG_TOS
   type CHTRIG_TOS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TOS as a value
            Val : HAL.UInt9;
         when True =>
            --  TOS as an array
            Arr : CHTRIG_TOS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for CHTRIG_TOS_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Channel Trigger
   type CHTRIG_Register is record
      --  Channel 0 Trigger Enable
      ET             : CHTRIG_ET_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Channel 0 Trigger Output Select
      TOS            : CHTRIG_TOS_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHTRIG_Register use record
      ET             at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      TOS            at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Channel 0 Shadow Transfer
   type CHSTRCON_CH0S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH0S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Shadow Transfer
   type CHSTRCON_CH1S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH1S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Shadow Transfer
   type CHSTRCON_CH2S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH2S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 3 Shadow Transfer
   type CHSTRCON_CH3S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH3S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 4 Shadow Transfer
   type CHSTRCON_CH4S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH4S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 5 Shadow Transfer
   type CHSTRCON_CH5S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH5S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 6 Shadow Transfer
   type CHSTRCON_CH6S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH6S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 7 Shadow Transfer
   type CHSTRCON_CH7S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH7S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 8 Shadow Transfer
   type CHSTRCON_CH8S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate channel y target intensity shadow transfer. The linear walk
      --  will start and channel y intensity will start to change towards the
      --  target. Cleared by hardware when the linear walk is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH8S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 0 Linear Walk Abort
   type CHSTRCON_CH0A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH0A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 1 Linear Walk Abort
   type CHSTRCON_CH1A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH1A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 2 Linear Walk Abort
   type CHSTRCON_CH2A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH2A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 3 Linear Walk Abort
   type CHSTRCON_CH3A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH3A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 4 Linear Walk Abort
   type CHSTRCON_CH4A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH4A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 5 Linear Walk Abort
   type CHSTRCON_CH5A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH5A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 6 Linear Walk Abort
   type CHSTRCON_CH6A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH6A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 7 Linear Walk Abort
   type CHSTRCON_CH7A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH7A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel 8 Linear Walk Abort
   type CHSTRCON_CH8A_Field is
     (
      --  No action
      VALUE1,
      --  Abort linear walk; CHyS is cleared, channel y intensity stops
      --  changing
      VALUE2)
     with Size => 1;
   for CHSTRCON_CH8A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel Shadow Transfer
   type CHSTRCON_Register is record
      --  Channel 0 Shadow Transfer
      CH0S           : CHSTRCON_CH0S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 1 Shadow Transfer
      CH1S           : CHSTRCON_CH1S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 2 Shadow Transfer
      CH2S           : CHSTRCON_CH2S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 3 Shadow Transfer
      CH3S           : CHSTRCON_CH3S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 4 Shadow Transfer
      CH4S           : CHSTRCON_CH4S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 5 Shadow Transfer
      CH5S           : CHSTRCON_CH5S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 6 Shadow Transfer
      CH6S           : CHSTRCON_CH6S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 7 Shadow Transfer
      CH7S           : CHSTRCON_CH7S_Field := NRF_SVD.BCCU.VALUE1;
      --  Channel 8 Shadow Transfer
      CH8S           : CHSTRCON_CH8S_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. Channel 0 Linear Walk Abort
      CH0A           : CHSTRCON_CH0A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 1 Linear Walk Abort
      CH1A           : CHSTRCON_CH1A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 2 Linear Walk Abort
      CH2A           : CHSTRCON_CH2A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 3 Linear Walk Abort
      CH3A           : CHSTRCON_CH3A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 4 Linear Walk Abort
      CH4A           : CHSTRCON_CH4A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 5 Linear Walk Abort
      CH5A           : CHSTRCON_CH5A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 6 Linear Walk Abort
      CH6A           : CHSTRCON_CH6A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 7 Linear Walk Abort
      CH7A           : CHSTRCON_CH7A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Channel 8 Linear Walk Abort
      CH8A           : CHSTRCON_CH8A_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHSTRCON_Register use record
      CH0S           at 0 range 0 .. 0;
      CH1S           at 0 range 1 .. 1;
      CH2S           at 0 range 2 .. 2;
      CH3S           at 0 range 3 .. 3;
      CH4S           at 0 range 4 .. 4;
      CH5S           at 0 range 5 .. 5;
      CH6S           at 0 range 6 .. 6;
      CH7S           at 0 range 7 .. 7;
      CH8S           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CH0A           at 0 range 16 .. 16;
      CH1A           at 0 range 17 .. 17;
      CH2A           at 0 range 18 .. 18;
      CH3A           at 0 range 19 .. 19;
      CH4A           at 0 range 20 .. 20;
      CH5A           at 0 range 21 .. 21;
      CH6A           at 0 range 22 .. 22;
      CH7A           at 0 range 23 .. 23;
      CH8A           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Last Trigger Channel Output
   type LTCHOL_LTOL0_Field is
     (
      --  Passive
      VALUE1,
      --  Active
      VALUE2)
     with Size => 1;
   for LTCHOL_LTOL0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LTCHOL_LTOL array
   type LTCHOL_LTOL_Field_Array is array (0 .. 8) of LTCHOL_LTOL0_Field
     with Component_Size => 1, Size => 9;

   --  Type definition for LTCHOL_LTOL
   type LTCHOL_LTOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LTOL as a value
            Val : HAL.UInt9;
         when True =>
            --  LTOL as an array
            Arr : LTCHOL_LTOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for LTCHOL_LTOL_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Last Trigger Channel Output Level
   type LTCHOL_Register is record
      --  Read-only. Last Trigger Channel Output
      LTOL          : LTCHOL_LTOL_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LTCHOL_Register use record
      LTOL          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Dimming Engine 0 Enable
   type DEEN_EDE0_Field is
     (
      --  Dimming Engine is disabled; the output dimming level (DLz.DLEV) is
      --  reset to 0 when the dimming engine gets disabled
      VALUE1,
      --  Dimming Engine is enabled
      VALUE2)
     with Size => 1;
   for DEEN_EDE0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DEEN_EDE array
   type DEEN_EDE_Field_Array is array (0 .. 2) of DEEN_EDE0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for DEEN_EDE
   type DEEN_EDE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EDE as a value
            Val : HAL.UInt3;
         when True =>
            --  EDE as an array
            Arr : DEEN_EDE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for DEEN_EDE_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Dimming Engine Enable
   type DEEN_Register is record
      --  Dimming Engine 0 Enable
      EDE           : DEEN_EDE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEEN_Register use record
      EDE           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Dimming Engine 0 Shadow Transfer
   type DESTRCON_DE0S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate target dimming level shadow transfer. The dimming process
      --  will start and the dimming level will change towards the target.
      --  Cleared by hardware when the dimming process is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for DESTRCON_DE0S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Engine 1 Shadow Transfer
   type DESTRCON_DE1S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate target dimming level shadow transfer. The dimming process
      --  will start and the dimming level will change towards the target.
      --  Cleared by hardware when the dimming process is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for DESTRCON_DE1S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Engine 2 Shadow Transfer
   type DESTRCON_DE2S_Field is
     (
      --  No action
      VALUE1,
      --  Initiate target dimming level shadow transfer. The dimming process
      --  will start and the dimming level will change towards the target.
      --  Cleared by hardware when the dimming process is complete and the
      --  target has been reached.
      VALUE2)
     with Size => 1;
   for DESTRCON_DE2S_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Engine 0 Dimming Abort
   type DESTRCON_DE0A_Field is
     (
      --  No action
      VALUE1,
      --  Abort dimming; DEzS is cleared, BCCU_DLz.DLEV stops changing
      VALUE2)
     with Size => 1;
   for DESTRCON_DE0A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Engine 1 Dimming Abort
   type DESTRCON_DE1A_Field is
     (
      --  No action
      VALUE1,
      --  Abort dimming; DEzS is cleared, BCCU_DLz.DLEV stops changing
      VALUE2)
     with Size => 1;
   for DESTRCON_DE1A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Engine 2 Dimming Abort
   type DESTRCON_DE2A_Field is
     (
      --  No action
      VALUE1,
      --  Abort dimming; DEzS is cleared, BCCU_DLz.DLEV stops changing
      VALUE2)
     with Size => 1;
   for DESTRCON_DE2A_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Shadow Transfer
   type DESTRCON_Register is record
      --  Dimming Engine 0 Shadow Transfer
      DE0S           : DESTRCON_DE0S_Field := NRF_SVD.BCCU.VALUE1;
      --  Dimming Engine 1 Shadow Transfer
      DE1S           : DESTRCON_DE1S_Field := NRF_SVD.BCCU.VALUE1;
      --  Dimming Engine 2 Shadow Transfer
      DE2S           : DESTRCON_DE2S_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Write-only. Dimming Engine 0 Dimming Abort
      DE0A           : DESTRCON_DE0A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Dimming Engine 1 Dimming Abort
      DE1A           : DESTRCON_DE1A_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Dimming Engine 2 Dimming Abort
      DE2A           : DESTRCON_DE2A_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DESTRCON_Register use record
      DE0S           at 0 range 0 .. 0;
      DE1S           at 0 range 1 .. 1;
      DE2S           at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      DE0A           at 0 range 16 .. 16;
      DE1A           at 0 range 17 .. 17;
      DE2A           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype GLOBDIM_GLOBDIM_Field is HAL.UInt12;

   --  Global Dimming Level
   type GLOBDIM_Register is record
      --  Global Dimming Level
      GLOBDIM        : GLOBDIM_GLOBDIM_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBDIM_Register use record
      GLOBDIM        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Trigger 0 Interrupt Enable
   type EVIER_T0IEN_Field is
     (
      --  Trigger 0 interrupt generation is disabled
      VALUE1,
      --  BCCU trigger 0 (BCCU_TRIGOUT0) generates an interrupt on SR0
      VALUE2)
     with Size => 1;
   for EVIER_T0IEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger 1 Interrupt Enable
   type EVIER_T1IEN_Field is
     (
      --  Trigger 1 interrupt generation is disabled
      VALUE1,
      --  BCCU trigger 1 (BCCU_TRIGOUT1) generates an interrupt on SR0
      VALUE2)
     with Size => 1;
   for EVIER_T1IEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Full Interrupt Enable
   type EVIER_FIEN_Field is
     (
      --  FIFO-full interrupt generation is disabled
      VALUE1,
      --  An interrupt is generated on SR0 if any of the packer FIFOs is full
      --  when there is a write attempt by the on-time or off-time counter
      VALUE2)
     with Size => 1;
   for EVIER_FIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Empty Interrupt Enable
   type EVIER_EIEN_Field is
     (
      --  FIFO-full interrupt generation is disabled
      VALUE1,
      --  An interrupt is generated on SR0 if any of the packer FIFOs is empty
      --  when there is a read attempt by the output generator
      VALUE2)
     with Size => 1;
   for EVIER_EIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Interrupt Enable
   type EVIER_TPIEN_Field is
     (
      --  Trap interrupt generation is disabled
      VALUE1,
      --  An interrupt is generated on SR0 if a trap occurs
      VALUE2)
     with Size => 1;
   for EVIER_TPIEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Interrupt Enable
   type EVIER_Register is record
      --  Trigger 0 Interrupt Enable
      T0IEN         : EVIER_T0IEN_Field := NRF_SVD.BCCU.VALUE1;
      --  Trigger 1 Interrupt Enable
      T1IEN         : EVIER_T1IEN_Field := NRF_SVD.BCCU.VALUE1;
      --  FIFO Full Interrupt Enable
      FIEN          : EVIER_FIEN_Field := NRF_SVD.BCCU.VALUE1;
      --  FIFO Empty Interrupt Enable
      EIEN          : EVIER_EIEN_Field := NRF_SVD.BCCU.VALUE1;
      --  Trap Interrupt Enable
      TPIEN         : EVIER_TPIEN_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVIER_Register use record
      T0IEN         at 0 range 0 .. 0;
      T1IEN         at 0 range 1 .. 1;
      FIEN          at 0 range 2 .. 2;
      EIEN          at 0 range 3 .. 3;
      TPIEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Trigger 0 Flag
   type EVFR_T0F_Field is
     (
      --  No trigger event has been detected on BCCU trigger line 0
      --  (BCCU_TRIGOUT0)
      VALUE1,
      --  A trigger event has been detected on BCCU trigger line 0
      --  (BCCU_TRIGOUT0)
      VALUE2)
     with Size => 1;
   for EVFR_T0F_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger 1 Flag
   type EVFR_T1F_Field is
     (
      --  No trigger event has been detected on BCCU trigger line 1
      --  (BCCU_TRIGOUT1)
      VALUE1,
      --  A trigger event has been detected on BCCU trigger line 1
      --  (BCCU_TRIGOUT1)
      VALUE2)
     with Size => 1;
   for EVFR_T1F_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Full Flag
   type EVFR_FF_Field is
     (
      --  No FIFO full event has been detected
      VALUE1,
      --  A FIFO full event has been detected because one of the packer FIFOs
      --  is full and there has been a write attempt by the on-time or off-time
      --  counter
      VALUE2)
     with Size => 1;
   for EVFR_FF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Empty Flag
   type EVFR_EF_Field is
     (
      --  No FIFO full event has been detected
      VALUE1,
      --  A FIFO full event has been detected because one of the packer FIFOs
      --  is empty and there has been a read attempt by the output generator
      VALUE2)
     with Size => 1;
   for EVFR_EF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Flag
   type EVFR_TPF_Field is
     (
      --  No trap event has been detected
      VALUE1,
      --  A trap event has been detected
      VALUE2)
     with Size => 1;
   for EVFR_TPF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap State Flag
   type EVFR_TPSF_Field is
     (
      --  BCCU is not in a trap state
      VALUE1,
      --  BCCU is in a trap state, the affected channel outputs are at their
      --  passive levels
      VALUE2)
     with Size => 1;
   for EVFR_TPSF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Input Level
   type EVFR_TPINL_Field is
     (
      --  The current level of BCCU.TRAPL is low
      VALUE1,
      --  The current level of BCCU.TRAPL is high
      VALUE2)
     with Size => 1;
   for EVFR_TPINL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag
   type EVFR_Register is record
      --  Read-only. Trigger 0 Flag
      T0F           : EVFR_T0F_Field;
      --  Read-only. Trigger 1 Flag
      T1F           : EVFR_T1F_Field;
      --  Read-only. FIFO Full Flag
      FF            : EVFR_FF_Field;
      --  Read-only. FIFO Empty Flag
      EF            : EVFR_EF_Field;
      --  Read-only. Trap Flag
      TPF           : EVFR_TPF_Field;
      --  unspecified
      Reserved_5_5  : HAL.Bit;
      --  Read-only. Trap State Flag
      TPSF          : EVFR_TPSF_Field;
      --  Read-only. Trap Input Level
      TPINL         : EVFR_TPINL_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFR_Register use record
      T0F           at 0 range 0 .. 0;
      T1F           at 0 range 1 .. 1;
      FF            at 0 range 2 .. 2;
      EF            at 0 range 3 .. 3;
      TPF           at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TPSF          at 0 range 6 .. 6;
      TPINL         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Trigger 0 Flag Set
   type EVFSR_T0FS_Field is
     (
      --  No action
      VALUE1,
      --  Sets the Trigger 0 Flag in EVFR and an interrupt will be generated if
      --  enabled in EVIER
      VALUE2)
     with Size => 1;
   for EVFSR_T0FS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger 1 Flag Set
   type EVFSR_T1FS_Field is
     (
      --  No action
      VALUE1,
      --  Sets the Trigger 1 Flag in EVFR and an interrupt will be generated if
      --  enabled in EVIER
      VALUE2)
     with Size => 1;
   for EVFSR_T1FS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Full Flag Set
   type EVFSR_FFS_Field is
     (
      --  No action
      VALUE1,
      --  Sets the FIFO Full Flag in EVFR and an interrupt will be generated if
      --  enabled in EVIER
      VALUE2)
     with Size => 1;
   for EVFSR_FFS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Empty Flag Set
   type EVFSR_EFS_Field is
     (
      --  No action
      VALUE1,
      --  Sets the FIFO Empty Flag in EVFR and an interrupt will be generated
      --  if enabled in EVIER
      VALUE2)
     with Size => 1;
   for EVFSR_EFS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Flag Set
   type EVFSR_TPFS_Field is
     (
      --  No action
      VALUE1,
      --  Sets the Trap Flag in EVFR and an interrupt will be generated if
      --  enabled in EVIER, no trap will occur
      VALUE2)
     with Size => 1;
   for EVFSR_TPFS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Set
   type EVFSR_TPS_Field is
     (
      --  No action
      VALUE1,
      --  Sets the Trap State Flag and Trap Flag in EVFR, a trap will be
      --  generated and an interrupt will be generated if enabled in EVIER
      VALUE2)
     with Size => 1;
   for EVFSR_TPS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag Set
   type EVFSR_Register is record
      --  Write-only. Trigger 0 Flag Set
      T0FS          : EVFSR_T0FS_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Trigger 1 Flag Set
      T1FS          : EVFSR_T1FS_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. FIFO Full Flag Set
      FFS           : EVFSR_FFS_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. FIFO Empty Flag Set
      EFS           : EVFSR_EFS_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Trap Flag Set
      TPFS          : EVFSR_TPFS_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Write-only. Trap Set
      TPS           : EVFSR_TPS_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFSR_Register use record
      T0FS          at 0 range 0 .. 0;
      T1FS          at 0 range 1 .. 1;
      FFS           at 0 range 2 .. 2;
      EFS           at 0 range 3 .. 3;
      TPFS          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TPS           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Trigger 0 Flag Clear
   type EVFCR_T0FC_Field is
     (
      --  No action
      VALUE1,
      --  Clears the Trigger 0 Flag in EVFR
      VALUE2)
     with Size => 1;
   for EVFCR_T0FC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger 1 Flag Clear
   type EVFCR_T1FC_Field is
     (
      --  No action
      VALUE1,
      --  Clears the Trigger 1 Flag in EVFR
      VALUE2)
     with Size => 1;
   for EVFCR_T1FC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Full Flag Clear
   type EVFCR_FFC_Field is
     (
      --  No action
      VALUE1,
      --  Clears the FIFO Full Flag in EVFR
      VALUE2)
     with Size => 1;
   for EVFCR_FFC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Empty Flag Clear
   type EVFCR_EFC_Field is
     (
      --  No action
      VALUE1,
      --  Clears the FIFO Empty Flag in EVFR
      VALUE2)
     with Size => 1;
   for EVFCR_EFC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Flag Clear
   type EVFCR_TPFC_Field is
     (
      --  No action
      VALUE1,
      --  Clears the Trap Flag in EVFR
      VALUE2)
     with Size => 1;
   for EVFCR_TPFC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trap Clear
   type EVFCR_TPC_Field is
     (
      --  No action
      VALUE1,
      --  Clears the Trap State Flag in EVFR; trap state is exited, the
      --  affected channels will return to their normal output levels
      VALUE2)
     with Size => 1;
   for EVFCR_TPC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag Clear
   type EVFCR_Register is record
      --  Write-only. Trigger 0 Flag Clear
      T0FC          : EVFCR_T0FC_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Trigger 1 Flag Clear
      T1FC          : EVFCR_T1FC_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. FIFO Full Flag Clear
      FFC           : EVFCR_FFC_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. FIFO Empty Flag Clear
      EFC           : EVFCR_EFC_Field := NRF_SVD.BCCU.VALUE1;
      --  Write-only. Trap Flag Clear
      TPFC          : EVFCR_TPFC_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Write-only. Trap Clear
      TPC           : EVFCR_TPC_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFCR_Register use record
      T0FC          at 0 range 0 .. 0;
      T1FC          at 0 range 1 .. 1;
      FFC           at 0 range 2 .. 2;
      EFC           at 0 range 3 .. 3;
      TPFC          at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      TPC           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype INTS_TCHINT_Field is HAL.UInt12;

   --  Channel Intensit0 Shadow
   type INTS_Register is record
      --  Target Channel Intensity
      TCHINT         : INTS_TCHINT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTS_Register use record
      TCHINT         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype INT_CHINT_Field is HAL.UInt12;

   --  Channel Intensit0
   type INT_Register is record
      --  Read-only. Channel Intensity
      CHINT          : INT_CHINT_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_Register use record
      CHINT          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CHCONFIG_PKTH_Field is HAL.UInt3;

   --  Packer Enable
   type CHCONFIG_PEN_Field is
     (
      --  The packer is not used
      VALUE1,
      --  On-time and off-time counters are running and the packed output
      --  bitstream with the packer trigger are generated.
      VALUE2)
     with Size => 1;
   for CHCONFIG_PEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Select
   type CHCONFIG_DSEL_Field is
     (
      --  Dimming Engine 0
      VALUE1,
      --  Dimming Engine 1
      VALUE2,
      --  Dimming Engine 2
      VALUE3,
      --  Global Dimming Level
      VALUE8)
     with Size => 3;
   for CHCONFIG_DSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE8 => 7);

   --  Dimming Input Bypass
   type CHCONFIG_DBP_Field is
     (
      --  Channel brightness is the product of the selected dimming input and
      --  the channel intensity
      VALUE1,
      --  No dimming input is used, channel brightness is only determined by
      --  the channel intensity level
      VALUE2)
     with Size => 1;
   for CHCONFIG_DBP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Gating Enable
   type CHCONFIG_GEN_Field is
     (
      --  Gating function is disabled, the input signal (BCCU.INy) has no
      --  effect
      VALUE1,
      --  Gating function is enabled, the output gating signal is BCCU.INy
      VALUE2)
     with Size => 1;
   for CHCONFIG_GEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Flicker Watchdog Enable
   type CHCONFIG_WEN_Field is
     (
      --  The flicker watchdog is not used
      VALUE1,
      --  The flicker watchdog is active and limits the number of consecutive
      --  zeroes at the sigma-delta modulator output according to GLOBCON.WDMBN
      VALUE2)
     with Size => 1;
   for CHCONFIG_WEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger Edge
   type CHCONFIG_TRED_Field is
     (
      --  Channel triggers occur on channel output transition from passive to
      --  active level
      VALUE1,
      --  Channel triggers occur on channel output transition from active to
      --  passive level
      VALUE2)
     with Size => 1;
   for CHCONFIG_TRED_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Forced Trigger Enable
   type CHCONFIG_ENFT_Field is
     (
      --  No forced trigger is generated
      VALUE1,
      --  The trigger generator generates a trigger if the output of the
      --  sigma-delta modulator hasn't changed state for 256 bit times; only
      --  takes effect if the packer is disabled (PEN=0)
      VALUE2)
     with Size => 1;
   for CHCONFIG_ENFT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype CHCONFIG_LINPRES_Field is HAL.UInt10;

   --  Channel Configuration
   type CHCONFIG_Register is record
      --  Packer Threshold
      PKTH           : CHCONFIG_PKTH_Field := 16#2#;
      --  Packer Enable
      PEN            : CHCONFIG_PEN_Field := NRF_SVD.BCCU.VALUE1;
      --  Dimming Select
      DSEL           : CHCONFIG_DSEL_Field := NRF_SVD.BCCU.VALUE1;
      --  Dimming Input Bypass
      DBP            : CHCONFIG_DBP_Field := NRF_SVD.BCCU.VALUE1;
      --  Gating Enable
      GEN            : CHCONFIG_GEN_Field := NRF_SVD.BCCU.VALUE1;
      --  Flicker Watchdog Enable
      WEN            : CHCONFIG_WEN_Field := NRF_SVD.BCCU.VALUE1;
      --  Trigger Edge
      TRED           : CHCONFIG_TRED_Field := NRF_SVD.BCCU.VALUE1;
      --  Forced Trigger Enable
      ENFT           : CHCONFIG_ENFT_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Linear Walker Clock Prescaler
      LINPRES        : CHCONFIG_LINPRES_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCONFIG_Register use record
      PKTH           at 0 range 0 .. 2;
      PEN            at 0 range 3 .. 3;
      DSEL           at 0 range 4 .. 6;
      DBP            at 0 range 7 .. 7;
      GEN            at 0 range 8 .. 8;
      WEN            at 0 range 9 .. 9;
      TRED           at 0 range 10 .. 10;
      ENFT           at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      LINPRES        at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype PKCMP_OFFCMP_Field is HAL.UInt8;
   subtype PKCMP_ONCMP_Field is HAL.UInt8;

   --  Packer Compare
   type PKCMP_Register is record
      --  Packer Off-Time Compare Level
      OFFCMP         : PKCMP_OFFCMP_Field := 16#60#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Packer On-Time Compare Level
      ONCMP          : PKCMP_ONCMP_Field := 16#4#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKCMP_Register use record
      OFFCMP         at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ONCMP          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PKCNTR_OFFCNTVAL_Field is HAL.UInt8;
   subtype PKCNTR_ONCNTVAL_Field is HAL.UInt8;

   --  Packer Counter
   type PKCNTR_Register is record
      --  Off-Time Counter Value
      OFFCNTVAL      : PKCNTR_OFFCNTVAL_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  On-Time Counter Value
      ONCNTVAL       : PKCNTR_ONCNTVAL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKCNTR_Register use record
      OFFCNTVAL      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ONCNTVAL       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DLS_TDLEV_Field is HAL.UInt12;

   --  Dimming Level Shadow
   type DLS_Register is record
      --  Target Dimming Level
      TDLEV          : DLS_TDLEV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLS_Register use record
      TDLEV          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DL_DLEV_Field is HAL.UInt12;

   --  Dimming Level
   type DL_Register is record
      --  Read-only. Dimming Level
      DLEV           : DL_DLEV_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DL_Register use record
      DLEV           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DTT_DIMDIV_Field is HAL.UInt10;

   --  Dither Enable
   type DTT_DTEN_Field is
     (
      --  No dithering
      VALUE1,
      --  Dithering is added to every dimming step if the dimming level is
      --  below 128; the coarse curve is used for the entire dimming range
      VALUE2)
     with Size => 1;
   for DTT_DTEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Curve Select
   type DTT_CSEL_Field is
     (
      --  Coarse curve
      VALUE1,
      --  Fine curve
      VALUE2)
     with Size => 1;
   for DTT_CSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Dimming Transition Time
   type DTT_Register is record
      --  Dimming Clock Divider
      DIMDIV         : DTT_DIMDIV_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Dither Enable
      DTEN           : DTT_DTEN_Field := NRF_SVD.BCCU.VALUE1;
      --  Curve Select
      CSEL           : DTT_CSEL_Field := NRF_SVD.BCCU.VALUE1;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTT_Register use record
      DIMDIV         at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DTEN           at 0 range 16 .. 16;
      CSEL           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  BCCU Unit 0
   type BCCU_Peripheral is record
      --  Global Control
      GLOBCON  : aliased GLOBCON_Register;
      --  Global Clock
      GLOBCLK  : aliased GLOBCLK_Register;
      --  Module Identification
      ID       : aliased ID_Register;
      --  Channel Enable
      CHEN     : aliased CHEN_Register;
      --  Channel Output Control
      CHOCON   : aliased CHOCON_Register;
      --  Channel Trigger
      CHTRIG   : aliased CHTRIG_Register;
      --  Channel Shadow Transfer
      CHSTRCON : aliased CHSTRCON_Register;
      --  Last Trigger Channel Output Level
      LTCHOL   : aliased LTCHOL_Register;
      --  Dimming Engine Enable
      DEEN     : aliased DEEN_Register;
      --  Dimming Shadow Transfer
      DESTRCON : aliased DESTRCON_Register;
      --  Global Dimming Level
      GLOBDIM  : aliased GLOBDIM_Register;
      --  Event Interrupt Enable
      EVIER    : aliased EVIER_Register;
      --  Event Flag
      EVFR     : aliased EVFR_Register;
      --  Event Flag Set
      EVFSR    : aliased EVFSR_Register;
      --  Event Flag Clear
      EVFCR    : aliased EVFCR_Register;
   end record
     with Volatile;

   for BCCU_Peripheral use record
      GLOBCON  at 16#0# range 0 .. 31;
      GLOBCLK  at 16#4# range 0 .. 31;
      ID       at 16#8# range 0 .. 31;
      CHEN     at 16#C# range 0 .. 31;
      CHOCON   at 16#10# range 0 .. 31;
      CHTRIG   at 16#14# range 0 .. 31;
      CHSTRCON at 16#18# range 0 .. 31;
      LTCHOL   at 16#1C# range 0 .. 31;
      DEEN     at 16#20# range 0 .. 31;
      DESTRCON at 16#24# range 0 .. 31;
      GLOBDIM  at 16#28# range 0 .. 31;
      EVIER    at 16#2C# range 0 .. 31;
      EVFR     at 16#30# range 0 .. 31;
      EVFSR    at 16#34# range 0 .. 31;
      EVFCR    at 16#38# range 0 .. 31;
   end record;

   --  BCCU Unit 0
   BCCU0_Periph : aliased BCCU_Peripheral
     with Import, Address => System'To_Address (16#50030000#);

   --  BCCU Unit 0
   type BCCU_CH_Peripheral is record
      --  Channel Intensit0 Shadow
      INTS     : aliased INTS_Register;
      --  Channel Intensit0
      INT      : aliased INT_Register;
      --  Channel Configuration
      CHCONFIG : aliased CHCONFIG_Register;
      --  Packer Compare
      PKCMP    : aliased PKCMP_Register;
      --  Packer Counter
      PKCNTR   : aliased PKCNTR_Register;
   end record
     with Volatile;

   for BCCU_CH_Peripheral use record
      INTS     at 16#0# range 0 .. 31;
      INT      at 16#4# range 0 .. 31;
      CHCONFIG at 16#8# range 0 .. 31;
      PKCMP    at 16#C# range 0 .. 31;
      PKCNTR   at 16#10# range 0 .. 31;
   end record;

   --  BCCU Unit 0
   BCCU0_CH0_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#5003003C#);

   --  BCCU Unit 0
   BCCU0_CH1_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#50030050#);

   --  BCCU Unit 0
   BCCU0_CH2_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#50030064#);

   --  BCCU Unit 0
   BCCU0_CH3_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#50030078#);

   --  BCCU Unit 0
   BCCU0_CH4_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#5003008C#);

   --  BCCU Unit 0
   BCCU0_CH5_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#500300A0#);

   --  BCCU Unit 0
   BCCU0_CH6_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#500300B4#);

   --  BCCU Unit 0
   BCCU0_CH7_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#500300C8#);

   --  BCCU Unit 0
   BCCU0_CH8_Periph : aliased BCCU_CH_Peripheral
     with Import, Address => System'To_Address (16#500300DC#);

   --  BCCU Unit 0
   type BCCU_DE_Peripheral is record
      --  Dimming Level Shadow
      DLS : aliased DLS_Register;
      --  Dimming Level
      DL  : aliased DL_Register;
      --  Dimming Transition Time
      DTT : aliased DTT_Register;
   end record
     with Volatile;

   for BCCU_DE_Peripheral use record
      DLS at 16#0# range 0 .. 31;
      DL  at 16#4# range 0 .. 31;
      DTT at 16#8# range 0 .. 31;
   end record;

   --  BCCU Unit 0
   BCCU0_DE0_Periph : aliased BCCU_DE_Peripheral
     with Import, Address => System'To_Address (16#5003017C#);

   --  BCCU Unit 0
   BCCU0_DE1_Periph : aliased BCCU_DE_Peripheral
     with Import, Address => System'To_Address (16#50030188#);

   --  BCCU Unit 0
   BCCU0_DE2_Periph : aliased BCCU_DE_Peripheral
     with Import, Address => System'To_Address (16#50030194#);

end NRF_SVD.BCCU;
