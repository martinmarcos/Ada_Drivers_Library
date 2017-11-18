--  This spec has been automatically generated from XMC1400.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CAN Clock Control Register
   type CLC_Register is record
      --  Module Disable Request Bit
      DISR          : Boolean := True;
      --  Read-only. Module Disable Status Bit
      DISS          : Boolean := True;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Sleep Mode Enable Control
      EDIS          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLC_Register use record
      DISR          at 0 range 0 .. 0;
      DISS          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      EDIS          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ID_MOD_REV_Field is HAL.UInt8;

   --  Module Type
   type ID_MOD_TYPE_Field is
     (
      --  Define the module as a 32-bit module.
      VALUE1)
     with Size => 8;
   for ID_MOD_TYPE_Field use
     (VALUE1 => 192);

   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  Module Identification Register
   type ID_Register is record
      --  Read-only. Module Revision Number
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number Value
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   subtype FDR_STEP_Field is HAL.UInt10;
   subtype FDR_DM_Field is HAL.UInt2;

   --  CAN Fractional Divider Register
   type FDR_Register is record
      --  Step Value
      STEP           : FDR_STEP_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Divider Mode
      DM             : FDR_DM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDR_Register use record
      STEP           at 0 range 0 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      DM             at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LIST_BEGIN_Field is HAL.UInt8;
   subtype LIST_END_Field is HAL.UInt8;
   subtype LIST_SIZE_Field is HAL.UInt8;

   --  List Empty Indication
   type LIST_EMPTY_Field is
     (
      --  At least one message object is allocated to list i.
      VALUE1,
      --  No message object is allocated to the list i. List i is empty.
      VALUE2)
     with Size => 1;
   for LIST_EMPTY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  List Register
   type LIST_Register is record
      --  Read-only. List Begin
      BEGIN_k        : LIST_BEGIN_Field;
      --  Read-only. List End
      END_k          : LIST_END_Field;
      --  Read-only. List Size
      SIZE           : LIST_SIZE_Field;
      --  Read-only. List Empty Indication
      EMPTY          : LIST_EMPTY_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIST_Register use record
      BEGIN_k        at 0 range 0 .. 7;
      END_k          at 0 range 8 .. 15;
      SIZE           at 0 range 16 .. 23;
      EMPTY          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  List Register
   type LIST_Registers is array (0 .. 15) of LIST_Register
     with Volatile;

   --  Message Pending Register

   --  Message Pending Register
   type MSPND_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   subtype MSID_INDEX_Field is HAL.UInt6;

   --  Message Index Register
   type MSID_Register is record
      --  Read-only. Message Pending Index
      INDEX         : MSID_INDEX_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSID_Register use record
      INDEX         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Message Index Register
   type MSID_Registers is array (0 .. 7) of MSID_Register
     with Volatile;

   subtype PANCTR_PANCMD_Field is HAL.UInt8;

   --  Panel Busy Flag
   type PANCTR_BUSY_Field is
     (
      --  Panel has finished command and is ready to accept a new command.
      VALUE1,
      --  Panel operation is in progress.
      VALUE2)
     with Size => 1;
   for PANCTR_BUSY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Result Busy Flag
   type PANCTR_RBUSY_Field is
     (
      --  No update of PANAR1 and PANAR2 is scheduled by the list controller.
      VALUE1,
      --  A list command is running (BUSY = 1) that will write results to
      --  PANAR1 and PANAR2, but the results are not yet available.
      VALUE2)
     with Size => 1;
   for PANCTR_RBUSY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PANCTR_PANAR array element
   subtype PANCTR_PANAR_Element is HAL.UInt8;

   --  PANCTR_PANAR array
   type PANCTR_PANAR_Field_Array is array (1 .. 2) of PANCTR_PANAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for PANCTR_PANAR
   type PANCTR_PANAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PANAR as a value
            Val : HAL.UInt16;
         when True =>
            --  PANAR as an array
            Arr : PANCTR_PANAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PANCTR_PANAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Panel Control Register
   type PANCTR_Register is record
      --  Panel Command
      PANCMD         : PANCTR_PANCMD_Field := 16#1#;
      --  Read-only. Panel Busy Flag
      BUSY           : PANCTR_BUSY_Field := NRF_SVD.CAN.VALUE2;
      --  Read-only. Result Busy Flag
      RBUSY          : PANCTR_RBUSY_Field := NRF_SVD.CAN.VALUE2;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Panel Argument 1
      PANAR          : PANCTR_PANAR_Field :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PANCTR_Register use record
      PANCMD         at 0 range 0 .. 7;
      BUSY           at 0 range 8 .. 8;
      RBUSY          at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PANAR          at 0 range 16 .. 31;
   end record;

   --  Baud Rate Logic Clock Select
   type MCR_CLKSEL_Field is
     (
      --  No clock supplied
      VALUE1,
      --  fMCLK
      VALUE2,
      --  fOSC_HP
      VALUE3,
      --  hard wired to 0
      VALUE4,
      --  hard wired to 0
      VALUE5)
     with Size => 4;
   for MCR_CLKSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 4,
      VALUE5 => 8);

   subtype MCR_MPSEL_Field is HAL.UInt4;

   --  Module Control Register
   type MCR_Register is record
      --  Baud Rate Logic Clock Select
      CLKSEL         : MCR_CLKSEL_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_4_11  : HAL.UInt8 := 16#0#;
      --  Message Pending Selector
      MPSEL          : MCR_MPSEL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      CLKSEL         at 0 range 0 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      MPSEL          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MITR_IT_Field is HAL.UInt8;

   --  Module Interrupt Trigger Register
   type MITR_Register is record
      --  Write-only. Interrupt Trigger
      IT            : MITR_IT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MITR_Register use record
      IT            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --------------------------------
   -- CAN_MO cluster's Registers --
   --------------------------------

   --  Message Mode Control
   type MOFCR_MMC_Field is
     (
      --  Standard Message Object
      VALUE1,
      --  Receive FIFO Base Object
      VALUE2,
      --  Transmit FIFO Base Object
      VALUE3,
      --  Transmit FIFO Slave Object
      VALUE4,
      --  Gateway Source Object
      VALUE5)
     with Size => 4;
   for MOFCR_MMC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4);

   --  Receive Time-Out Enable
   type MOFCR_RXTOE_Field is
     (
      --  Message does not take part in receive time-out check
      VALUE1,
      --  Message takes part in receive time-out check
      VALUE2)
     with Size => 1;
   for MOFCR_RXTOE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Gateway Data Frame Send
   type MOFCR_GDFS_Field is
     (
      --  TXRQ is unchanged in the destination object.
      VALUE1,
      --  TXRQ is set in the gateway destination object after the internal
      --  transfer from the gateway source to the gateway destination object.
      VALUE2)
     with Size => 1;
   for MOFCR_GDFS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Identifier Copy
   type MOFCR_IDC_Field is
     (
      --  The identifier of the gateway source object is not copied.
      VALUE1,
      --  The identifier of the gateway source object (after storing the
      --  received frame in the source) is copied to the gateway destination
      --  object.
      VALUE2)
     with Size => 1;
   for MOFCR_IDC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Length Code Copy
   type MOFCR_DLCC_Field is
     (
      --  Data length code is not copied.
      VALUE1,
      --  Data length code of the gateway source object (after storing the
      --  received frame in the source) is copied to the gateway destination
      --  object.
      VALUE2)
     with Size => 1;
   for MOFCR_DLCC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Copy
   type MOFCR_DATC_Field is
     (
      --  Data fields are not copied.
      VALUE1,
      --  Data fields in registers MODATALn and MODATAHn of the gateway source
      --  object (after storing the received frame in the source) are copied to
      --  the gateway destination.
      VALUE2)
     with Size => 1;
   for MOFCR_DATC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Interrupt Enable
   type MOFCR_RXIE_Field is
     (
      --  Message receive interrupt is disabled.
      VALUE1,
      --  Message receive interrupt is enabled.
      VALUE2)
     with Size => 1;
   for MOFCR_RXIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Interrupt Enable
   type MOFCR_TXIE_Field is
     (
      --  Message transmit interrupt is disabled.
      VALUE1,
      --  Message transmit interrupt is enabled.
      VALUE2)
     with Size => 1;
   for MOFCR_TXIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Overflow Interrupt Enable
   type MOFCR_OVIE_Field is
     (
      --  FIFO full interrupt is disabled.
      VALUE1,
      --  FIFO full interrupt is enabled.
      VALUE2)
     with Size => 1;
   for MOFCR_OVIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Foreign Remote Request Enable
   type MOFCR_FRREN_Field is
     (
      --  TXRQ of message object n is set on reception of a matching Remote
      --  Frame.
      VALUE1,
      --  TXRQ of the message object referenced by the pointer CUR is set on
      --  reception of a matching Remote Frame.
      VALUE2)
     with Size => 1;
   for MOFCR_FRREN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Object Remote Monitoring
   type MOFCR_RMM_Field is
     (
      --  Remote monitoring is disabled: Identifier, IDE bit, and DLC of
      --  message object n remain unchanged upon the reception of a matching
      --  Remote Frame.
      VALUE1,
      --  Remote monitoring is enabled: Identifier, IDE bit, and DLC of a
      --  matching Remote Frame are copied to transmit object n in order to
      --  monitor incoming Remote Frames.
      VALUE2)
     with Size => 1;
   for MOFCR_RMM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype MOFCR_MO_DLC_Field is HAL.UInt4;

   --  Message Object Function Control Register
   type MOFCR_MO_Register is record
      --  Message Mode Control
      MMC            : MOFCR_MMC_Field := NRF_SVD.CAN.VALUE1;
      --  Receive Time-Out Enable
      RXTOE          : MOFCR_RXTOE_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Gateway Data Frame Send
      GDFS           : MOFCR_GDFS_Field := NRF_SVD.CAN.VALUE1;
      --  Identifier Copy
      IDC            : MOFCR_IDC_Field := NRF_SVD.CAN.VALUE1;
      --  Data Length Code Copy
      DLCC           : MOFCR_DLCC_Field := NRF_SVD.CAN.VALUE1;
      --  Data Copy
      DATC           : MOFCR_DATC_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Receive Interrupt Enable
      RXIE           : MOFCR_RXIE_Field := NRF_SVD.CAN.VALUE1;
      --  Transmit Interrupt Enable
      TXIE           : MOFCR_TXIE_Field := NRF_SVD.CAN.VALUE1;
      --  Overflow Interrupt Enable
      OVIE           : MOFCR_OVIE_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Foreign Remote Request Enable
      FRREN          : MOFCR_FRREN_Field := NRF_SVD.CAN.VALUE1;
      --  Transmit Object Remote Monitoring
      RMM            : MOFCR_RMM_Field := NRF_SVD.CAN.VALUE1;
      --  Single Data Transfer
      SDT            : Boolean := False;
      --  Single Transmit Trial
      STT            : Boolean := False;
      --  Data Length Code
      DLC            : MOFCR_MO_DLC_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOFCR_MO_Register use record
      MMC            at 0 range 0 .. 3;
      RXTOE          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      GDFS           at 0 range 8 .. 8;
      IDC            at 0 range 9 .. 9;
      DLCC           at 0 range 10 .. 10;
      DATC           at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RXIE           at 0 range 16 .. 16;
      TXIE           at 0 range 17 .. 17;
      OVIE           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FRREN          at 0 range 20 .. 20;
      RMM            at 0 range 21 .. 21;
      SDT            at 0 range 22 .. 22;
      STT            at 0 range 23 .. 23;
      DLC            at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype MOFGPR_MO_BOT_Field is HAL.UInt8;
   subtype MOFGPR_MO_TOP_Field is HAL.UInt8;
   subtype MOFGPR_MO_CUR_Field is HAL.UInt8;
   subtype MOFGPR_MO_SEL_Field is HAL.UInt8;

   --  Message Object FIFO/Gateway Pointer Register
   type MOFGPR_MO_Register is record
      --  Bottom Pointer
      BOT : MOFGPR_MO_BOT_Field := 16#0#;
      --  Top Pointer
      TOP : MOFGPR_MO_TOP_Field := 16#0#;
      --  Current Object Pointer
      CUR : MOFGPR_MO_CUR_Field := 16#0#;
      --  Object Select Pointer
      SEL : MOFGPR_MO_SEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOFGPR_MO_Register use record
      BOT at 0 range 0 .. 7;
      TOP at 0 range 8 .. 15;
      CUR at 0 range 16 .. 23;
      SEL at 0 range 24 .. 31;
   end record;

   --  Receive Interrupt Node Pointer
   type MOIPR_RXINP_Field is
     (
      --  Interrupt output line INT_O0 is selected.
      VALUE1,
      --  Interrupt output line INT_O1 is selected.
      VALUE2,
      --  Interrupt output line INT_O14 is selected.
      VALUE3,
      --  Interrupt output line INT_O15 is selected.
      VALUE4)
     with Size => 4;
   for MOIPR_RXINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   --  Transmit Interrupt Node Pointer
   type MOIPR_TXINP_Field is
     (
      --  Interrupt output line INT_O0 is selected.
      VALUE1,
      --  Interrupt output line INT_O1 is selected.
      VALUE2,
      --  Interrupt output line INT_O14 is selected.
      VALUE3,
      --  Interrupt output line INT_O15 is selected.
      VALUE4)
     with Size => 4;
   for MOIPR_TXINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   subtype MOIPR_MO_MPN_Field is HAL.UInt8;
   subtype MOIPR_MO_CFCVAL_Field is HAL.UInt16;

   --  Message Object Interrupt Pointer Register
   type MOIPR_MO_Register is record
      --  Receive Interrupt Node Pointer
      RXINP  : MOIPR_RXINP_Field := NRF_SVD.CAN.VALUE1;
      --  Transmit Interrupt Node Pointer
      TXINP  : MOIPR_TXINP_Field := NRF_SVD.CAN.VALUE1;
      --  Message Pending Number
      MPN    : MOIPR_MO_MPN_Field := 16#0#;
      --  CAN Frame Counter Value
      CFCVAL : MOIPR_MO_CFCVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOIPR_MO_Register use record
      RXINP  at 0 range 0 .. 3;
      TXINP  at 0 range 4 .. 7;
      MPN    at 0 range 8 .. 15;
      CFCVAL at 0 range 16 .. 31;
   end record;

   subtype MOAMR_MO_AM_Field is HAL.UInt29;

   --  Acceptance Mask Bit for Message IDE Bit
   type MOAMR_MIDE_Field is
     (
      --  Message object n accepts the reception of both, standard and extended
      --  frames.
      VALUE1,
      --  Message object n receives frames only with matching IDE bit.
      VALUE2)
     with Size => 1;
   for MOAMR_MIDE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Message Object Acceptance Mask Register
   type MOAMR_MO_Register is record
      --  Acceptance Mask for Message Identifier
      AM             : MOAMR_MO_AM_Field := 16#1FFFFFFF#;
      --  Acceptance Mask Bit for Message IDE Bit
      MIDE           : MOAMR_MIDE_Field := NRF_SVD.CAN.VALUE2;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOAMR_MO_Register use record
      AM             at 0 range 0 .. 28;
      MIDE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  MODATAL_MO_DB array element
   subtype MODATAL_MO_DB_Element is HAL.UInt8;

   --  MODATAL_MO_DB array
   type MODATAL_MO_DB_Field_Array is array (0 .. 3) of MODATAL_MO_DB_Element
     with Component_Size => 8, Size => 32;

   --  Message Object Data Register Low
   type MODATAL_MO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DB as a value
            Val : HAL.UInt32;
         when True =>
            --  DB as an array
            Arr : MODATAL_MO_DB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MODATAL_MO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MODATAH_MO_DB array element
   subtype MODATAH_MO_DB_Element is HAL.UInt8;

   --  MODATAH_MO_DB array
   type MODATAH_MO_DB_Field_Array is array (4 .. 7) of MODATAH_MO_DB_Element
     with Component_Size => 8, Size => 32;

   --  Message Object Data Register High
   type MODATAH_MO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DB as a value
            Val : HAL.UInt32;
         when True =>
            --  DB as an array
            Arr : MODATAH_MO_DB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MODATAH_MO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MOAR_MO_ID_Field is HAL.UInt29;

   --  Identifier Extension Bit of Message Object n
   type MOAR_IDE_Field is
     (
      --  Message object n handles standard frames with 11-bit identifier.
      VALUE1,
      --  Message object n handles extended frames with 29-bit identifier.
      VALUE2)
     with Size => 1;
   for MOAR_IDE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Priority Class
   type MOAR_PRI_Field is
     (
      --  Reserved.
      VALUE1,
      --  Transmit acceptance filtering is based on the list order. This means
      --  that message object n is considered for transmission only if there is
      --  no other message object with valid transmit request (MSGVAL & TXEN0 &
      --  TXEN1 = 1) somewhere before this object in the list.
      VALUE2,
      --  Transmit acceptance filtering is based on the CAN identifier. This
      --  means, message object n is considered for transmission only if there
      --  is no other message object with higher priority identifier + IDE +
      --  DIR (with respect to CAN arbitration rules) somewhere in the list
      --  (see).
      VALUE3,
      --  Transmit acceptance filtering is based on the list order (as PRI =
      --  01B).
      VALUE4)
     with Size => 2;
   for MOAR_PRI_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Message Object Arbitration Register
   type MOAR_MO_Register is record
      --  CAN Identifier of Message Object n
      ID  : MOAR_MO_ID_Field := 16#0#;
      --  Identifier Extension Bit of Message Object n
      IDE : MOAR_IDE_Field := NRF_SVD.CAN.VALUE1;
      --  Priority Class
      PRI : MOAR_PRI_Field := NRF_SVD.CAN.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOAR_MO_Register use record
      ID  at 0 range 0 .. 28;
      IDE at 0 range 29 .. 29;
      PRI at 0 range 30 .. 31;
   end record;

   --  MOCTR_MO_RESTXEN array
   type MOCTR_MO_RESTXEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MOCTR_MO_RESTXEN
   type MOCTR_MO_RESTXEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESTXEN as a value
            Val : HAL.UInt2;
         when True =>
            --  RESTXEN as an array
            Arr : MOCTR_MO_RESTXEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MOCTR_MO_RESTXEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  MOCTR_MO_SETTXEN array
   type MOCTR_MO_SETTXEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for MOCTR_MO_SETTXEN
   type MOCTR_MO_SETTXEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETTXEN as a value
            Val : HAL.UInt2;
         when True =>
            --  SETTXEN as an array
            Arr : MOCTR_MO_SETTXEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MOCTR_MO_SETTXEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Message Object Control Register
   type MOCTR_MO_Register is record
      --  Write-only. Reset/Set Receive Pending
      RESRXPND       : Boolean := False;
      --  Write-only. Reset/Set Transmit Pending
      RESTXPND       : Boolean := False;
      --  Write-only. Reset/Set Receive Updating
      RESRXUPD       : Boolean := False;
      --  Write-only. Reset/Set New Data
      RESNEWDAT      : Boolean := False;
      --  Write-only. Reset/Set Message Lost
      RESMSGLST      : Boolean := False;
      --  Write-only. Reset/Set Message Valid
      RESMSGVAL      : Boolean := False;
      --  Write-only. Reset/Set Receive/Transmit Selected
      RESRTSEL       : Boolean := False;
      --  Write-only. Reset/Set Receive Enable
      RESRXEN        : Boolean := False;
      --  Write-only. Reset/Set Transmit Request
      RESTXRQ        : Boolean := False;
      --  Write-only. Reset/Set Transmit Enable 0
      RESTXEN        : MOCTR_MO_RESTXEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Reset/Set Message Direction
      RESDIR         : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Reset/Set Receive Pending
      SETRXPND       : Boolean := False;
      --  Write-only. Reset/Set Transmit Pending
      SETTXPND       : Boolean := False;
      --  Write-only. Reset/Set Receive Updating
      SETRXUPD       : Boolean := False;
      --  Write-only. Reset/Set New Data
      SETNEWDAT      : Boolean := False;
      --  Write-only. Reset/Set Message Lost
      SETMSGLST      : Boolean := False;
      --  Write-only. Reset/Set Message Valid
      SETMSGVAL      : Boolean := False;
      --  Write-only. Reset/Set Receive/Transmit Selected
      SETRTSEL       : Boolean := False;
      --  Write-only. Reset/Set Receive Enable
      SETRXEN        : Boolean := False;
      --  Write-only. Reset/Set Transmit Request
      SETTXRQ        : Boolean := False;
      --  Write-only. Reset/Set Transmit Enable 0
      SETTXEN        : MOCTR_MO_SETTXEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Reset/Set Message Direction
      SETDIR         : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOCTR_MO_Register use record
      RESRXPND       at 0 range 0 .. 0;
      RESTXPND       at 0 range 1 .. 1;
      RESRXUPD       at 0 range 2 .. 2;
      RESNEWDAT      at 0 range 3 .. 3;
      RESMSGLST      at 0 range 4 .. 4;
      RESMSGVAL      at 0 range 5 .. 5;
      RESRTSEL       at 0 range 6 .. 6;
      RESRXEN        at 0 range 7 .. 7;
      RESTXRQ        at 0 range 8 .. 8;
      RESTXEN        at 0 range 9 .. 10;
      RESDIR         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SETRXPND       at 0 range 16 .. 16;
      SETTXPND       at 0 range 17 .. 17;
      SETRXUPD       at 0 range 18 .. 18;
      SETNEWDAT      at 0 range 19 .. 19;
      SETMSGLST      at 0 range 20 .. 20;
      SETMSGVAL      at 0 range 21 .. 21;
      SETRTSEL       at 0 range 22 .. 22;
      SETRXEN        at 0 range 23 .. 23;
      SETTXRQ        at 0 range 24 .. 24;
      SETTXEN        at 0 range 25 .. 26;
      SETDIR         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Receive Pending
   type MOSTAT_RXPND_Field is
     (
      --  No CAN message has been received.
      VALUE1,
      --  A CAN message has been received by the message object n, either
      --  directly or via gateway copy action.
      VALUE2)
     with Size => 1;
   for MOSTAT_RXPND_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Pending
   type MOSTAT_TXPND_Field is
     (
      --  No CAN message has been transmitted.
      VALUE1,
      --  A CAN message from message object n has been transmitted successfully
      --  over the CAN bus.
      VALUE2)
     with Size => 1;
   for MOSTAT_TXPND_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Updating
   type MOSTAT_RXUPD_Field is
     (
      --  No receive update ongoing.
      VALUE1,
      --  Message identifier, DLC, and data of the message object are currently
      --  updated.
      VALUE2)
     with Size => 1;
   for MOSTAT_RXUPD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  New Data
   type MOSTAT_NEWDAT_Field is
     (
      --  No update of the message object n since last flag reset.
      VALUE1,
      --  Message object n has been updated.
      VALUE2)
     with Size => 1;
   for MOSTAT_NEWDAT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Message Lost
   type MOSTAT_MSGLST_Field is
     (
      --  No CAN message is lost.
      VALUE1,
      --  A CAN message is lost because NEWDAT has become set again when it has
      --  already been set.
      VALUE2)
     with Size => 1;
   for MOSTAT_MSGLST_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Message Valid
   type MOSTAT_MSGVAL_Field is
     (
      --  Message object n is not valid.
      VALUE1,
      --  Message object n is valid.
      VALUE2)
     with Size => 1;
   for MOSTAT_MSGVAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive/Transmit Selected
   type MOSTAT_RTSEL_Field is
     (
      --  Message object n is not selected for receive or transmit operation.
      VALUE1,
      --  Message object n is selected for receive or transmit operation.
      VALUE2)
     with Size => 1;
   for MOSTAT_RTSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Receive Enable
   type MOSTAT_RXEN_Field is
     (
      --  Message object n is not enabled for frame reception.
      VALUE1,
      --  Message object n is enabled for frame reception.
      VALUE2)
     with Size => 1;
   for MOSTAT_RXEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Request
   type MOSTAT_TXRQ_Field is
     (
      --  No transmission of message object n is requested.
      VALUE1,
      --  Transmission of message object n on the CAN bus is requested.
      VALUE2)
     with Size => 1;
   for MOSTAT_TXRQ_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transmit Enable 0
   type MOSTAT_TXEN0_Field is
     (
      --  Message object n is not enabled for frame transmission.
      VALUE1,
      --  Message object n is enabled for frame transmission.
      VALUE2)
     with Size => 1;
   for MOSTAT_TXEN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  MOSTAT_MO_TXEN array
   type MOSTAT_MO_TXEN_Field_Array is array (0 .. 1) of MOSTAT_TXEN0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for MOSTAT_MO_TXEN
   type MOSTAT_MO_TXEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXEN as a value
            Val : HAL.UInt2;
         when True =>
            --  TXEN as an array
            Arr : MOSTAT_MO_TXEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MOSTAT_MO_TXEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Message Direction
   type MOSTAT_DIR_Field is
     (
      --  Receive Object selected: With TXRQ = 1, a Remote Frame with the
      --  identifier of message object n is scheduled for transmission. On
      --  reception of a Data Frame with matching identifier, the message is
      --  stored in message object n.
      VALUE1,
      --  Transmit Object selected: If TXRQ = 1, message object n is scheduled
      --  for transmission of a Data Frame. On reception of a Remote Frame with
      --  matching identifier, bit TXRQ is set.
      VALUE2)
     with Size => 1;
   for MOSTAT_DIR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype MOSTAT_MO_LIST_Field is HAL.UInt4;
   subtype MOSTAT_MO_PPREV_Field is HAL.UInt8;
   subtype MOSTAT_MO_PNEXT_Field is HAL.UInt8;

   --  Message Object Status Register
   type MOSTAT_MO_Register is record
      --  Read-only. Receive Pending
      RXPND  : MOSTAT_RXPND_Field;
      --  Read-only. Transmit Pending
      TXPND  : MOSTAT_TXPND_Field;
      --  Read-only. Receive Updating
      RXUPD  : MOSTAT_RXUPD_Field;
      --  Read-only. New Data
      NEWDAT : MOSTAT_NEWDAT_Field;
      --  Read-only. Message Lost
      MSGLST : MOSTAT_MSGLST_Field;
      --  Read-only. Message Valid
      MSGVAL : MOSTAT_MSGVAL_Field;
      --  Read-only. Receive/Transmit Selected
      RTSEL  : MOSTAT_RTSEL_Field;
      --  Read-only. Receive Enable
      RXEN   : MOSTAT_RXEN_Field;
      --  Read-only. Transmit Request
      TXRQ   : MOSTAT_TXRQ_Field;
      --  Read-only. Transmit Enable 0
      TXEN   : MOSTAT_MO_TXEN_Field;
      --  Read-only. Message Direction
      DIR    : MOSTAT_DIR_Field;
      --  Read-only. List Allocation
      LIST   : MOSTAT_MO_LIST_Field;
      --  Read-only. Pointer to Previous Message Object
      PPREV  : MOSTAT_MO_PPREV_Field;
      --  Read-only. Pointer to Next Message Object
      PNEXT  : MOSTAT_MO_PNEXT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOSTAT_MO_Register use record
      RXPND  at 0 range 0 .. 0;
      TXPND  at 0 range 1 .. 1;
      RXUPD  at 0 range 2 .. 2;
      NEWDAT at 0 range 3 .. 3;
      MSGLST at 0 range 4 .. 4;
      MSGVAL at 0 range 5 .. 5;
      RTSEL  at 0 range 6 .. 6;
      RXEN   at 0 range 7 .. 7;
      TXRQ   at 0 range 8 .. 8;
      TXEN   at 0 range 9 .. 10;
      DIR    at 0 range 11 .. 11;
      LIST   at 0 range 12 .. 15;
      PPREV  at 0 range 16 .. 23;
      PNEXT  at 0 range 24 .. 31;
   end record;

   type CAN_MO_Disc is
     (
      Ctr,
      Stat);

   --  Message Object Registers
   type CAN_MO_Cluster
     (Discriminent : CAN_MO_Disc := Ctr)
   is record
      --  Message Object Function Control Register
      MOFCR   : aliased MOFCR_MO_Register;
      --  Message Object FIFO/Gateway Pointer Register
      MOFGPR  : aliased MOFGPR_MO_Register;
      --  Message Object Interrupt Pointer Register
      MOIPR   : aliased MOIPR_MO_Register;
      --  Message Object Acceptance Mask Register
      MOAMR   : aliased MOAMR_MO_Register;
      --  Message Object Data Register Low
      MODATAL : aliased MODATAL_MO_Register;
      --  Message Object Data Register High
      MODATAH : aliased MODATAH_MO_Register;
      --  Message Object Arbitration Register
      MOAR    : aliased MOAR_MO_Register;
      case Discriminent is
         when Ctr =>
            --  Message Object Control Register
            MOCTR : aliased MOCTR_MO_Register;
         when Stat =>
            --  Message Object Status Register
            MOSTAT : aliased MOSTAT_MO_Register;
      end case;
   end record
     with Unchecked_Union, Volatile, Size => 256;

   for CAN_MO_Cluster use record
      MOFCR   at 16#0# range 0 .. 31;
      MOFGPR  at 16#4# range 0 .. 31;
      MOIPR   at 16#8# range 0 .. 31;
      MOAMR   at 16#C# range 0 .. 31;
      MODATAL at 16#10# range 0 .. 31;
      MODATAH at 16#14# range 0 .. 31;
      MOAR    at 16#18# range 0 .. 31;
      MOCTR   at 16#1C# range 0 .. 31;
      MOSTAT  at 16#1C# range 0 .. 31;
   end record;

   --  Message Object Registers
   type CAN_MO_Clusters is array (0 .. 31) of CAN_MO_Cluster;

   --  Node Initialization
   type NCR_INIT_Field is
     (
      --  Resetting bit INIT enables the participation of the node in the CAN
      --  traffic. If the CAN node is in the bus-off state, the ongoing bus-off
      --  recovery (which does not depend on the INIT bit) is continued. With
      --  the end of the bus-off recovery sequence the CAN node is allowed to
      --  take part in the CAN traffic. If the CAN node is not in the bus-off
      --  state, a sequence of 11 consecutive recessive bits must be detected
      --  before the node is allowed to take part in the CAN traffic.
      VALUE1,
      --  Setting this bit terminates the participation of this node in the CAN
      --  traffic. Any ongoing frame transfer is cancelled and the transmit
      --  line goes recessive. If the CAN node is in the bus-off state, then
      --  the running bus-off recovery sequence is continued. If the INIT bit
      --  is still set after the successful completion of the bus-off recovery
      --  sequence, i.e. after detecting 128 sequences of 11 consecutive
      --  recessive bits (11 1), then the CAN node leaves the bus-off state but
      --  remains inactive as long as INIT remains set.
      VALUE2)
     with Size => 1;
   for NCR_INIT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Transfer Interrupt Enable
   type NCR_TRIE_Field is
     (
      --  Transfer interrupt is disabled.
      VALUE1,
      --  Transfer interrupt is enabled.
      VALUE2)
     with Size => 1;
   for NCR_TRIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEC Indicated Error Interrupt Enable
   type NCR_LECIE_Field is
     (
      --  Last error code interrupt is disabled.
      VALUE1,
      --  Last error code interrupt is enabled.
      VALUE2)
     with Size => 1;
   for NCR_LECIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Alert Interrupt Enable
   type NCR_ALIE_Field is
     (
      --  Alert interrupt is disabled.
      VALUE1,
      --  Alert interrupt is enabled.
      VALUE2)
     with Size => 1;
   for NCR_ALIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Configuration Change Enable
   type NCR_CCE_Field is
     (
      --  The Bit Timing Register, the Port Control Register, Error Counter
      --  Register may only be read. All attempts to modify them are ignored.
      VALUE1,
      --  The Bit Timing Register, the Port Control Register, Error Counter
      --  Register may be read and written.
      VALUE2)
     with Size => 1;
   for NCR_CCE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Node Control Register
   type NCR_Register is record
      --  Node Initialization
      INIT          : NCR_INIT_Field := NRF_SVD.CAN.VALUE2;
      --  Transfer Interrupt Enable
      TRIE          : NCR_TRIE_Field := NRF_SVD.CAN.VALUE1;
      --  LEC Indicated Error Interrupt Enable
      LECIE         : NCR_LECIE_Field := NRF_SVD.CAN.VALUE1;
      --  Alert Interrupt Enable
      ALIE          : NCR_ALIE_Field := NRF_SVD.CAN.VALUE1;
      --  CAN Disable
      CANDIS        : Boolean := False;
      --  Transmit Disable
      TXDIS         : Boolean := False;
      --  Configuration Change Enable
      CCE           : NCR_CCE_Field := NRF_SVD.CAN.VALUE2;
      --  CAN Analyzer Mode
      CALM          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NCR_Register use record
      INIT          at 0 range 0 .. 0;
      TRIE          at 0 range 1 .. 1;
      LECIE         at 0 range 2 .. 2;
      ALIE          at 0 range 3 .. 3;
      CANDIS        at 0 range 4 .. 4;
      TXDIS         at 0 range 5 .. 5;
      CCE           at 0 range 6 .. 6;
      CALM          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype NSR_LEC_Field is HAL.UInt3;

   --  Message Transmitted Successfully
   type NSR_TXOK_Field is
     (
      --  No successful transmission since last (most recent) flag reset.
      VALUE1,
      --  A message has been transmitted successfully (error-free and
      --  acknowledged by at least another node).
      VALUE2)
     with Size => 1;
   for NSR_TXOK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Message Received Successfully
   type NSR_RXOK_Field is
     (
      --  No successful reception since last (most recent) flag reset.
      VALUE1,
      --  A message has been received successfully.
      VALUE2)
     with Size => 1;
   for NSR_RXOK_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Error Warning Status
   type NSR_EWRN_Field is
     (
      --  No warning limit exceeded.
      VALUE1,
      --  One of the error counters REC or TEC reached the warning limit
      --  EWRNLVL.
      VALUE2)
     with Size => 1;
   for NSR_EWRN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Bus-off Status
   type NSR_BOFF_Field is
     (
      --  CAN controller is not in the bus-off state.
      VALUE1,
      --  CAN controller is in the bus-off state.
      VALUE2)
     with Size => 1;
   for NSR_BOFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  List Length Error
   type NSR_LLE_Field is
     (
      --  No List Length Error since last (most recent) flag reset.
      VALUE1,
      --  A List Length Error has been detected during message acceptance
      --  filtering. The number of elements in the list that belongs to this
      --  CAN node differs from the list SIZE given in the list termination
      --  pointer.
      VALUE2)
     with Size => 1;
   for NSR_LLE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  List Object Error
   type NSR_LOE_Field is
     (
      --  No List Object Error since last (most recent) flag reset.
      VALUE1,
      --  A List Object Error has been detected during message acceptance
      --  filtering. A message object with wrong LIST index entry in the
      --  Message Object Status Register has been detected.
      VALUE2)
     with Size => 1;
   for NSR_LOE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Node Status Register
   type NSR_Register is record
      --  Last Error Code
      LEC            : NSR_LEC_Field := 16#0#;
      --  Message Transmitted Successfully
      TXOK           : NSR_TXOK_Field := NRF_SVD.CAN.VALUE1;
      --  Message Received Successfully
      RXOK           : NSR_RXOK_Field := NRF_SVD.CAN.VALUE1;
      --  Alert Warning
      ALERT          : Boolean := False;
      --  Read-only. Error Warning Status
      EWRN           : NSR_EWRN_Field := NRF_SVD.CAN.VALUE1;
      --  Read-only. Bus-off Status
      BOFF           : NSR_BOFF_Field := NRF_SVD.CAN.VALUE1;
      --  List Length Error
      LLE            : NSR_LLE_Field := NRF_SVD.CAN.VALUE1;
      --  List Object Error
      LOE            : NSR_LOE_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NSR_Register use record
      LEC            at 0 range 0 .. 2;
      TXOK           at 0 range 3 .. 3;
      RXOK           at 0 range 4 .. 4;
      ALERT          at 0 range 5 .. 5;
      EWRN           at 0 range 6 .. 6;
      BOFF           at 0 range 7 .. 7;
      LLE            at 0 range 8 .. 8;
      LOE            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Alert Interrupt Node Pointer
   type NIPR_ALINP_Field is
     (
      --  Interrupt output line INT_O0 is selected.
      VALUE1,
      --  Interrupt output line INT_O1 is selected.
      VALUE2,
      --  Interrupt output line INT_O14 is selected.
      VALUE3,
      --  Interrupt output line INT_O15 is selected.
      VALUE4)
     with Size => 4;
   for NIPR_ALINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   --  Last Error Code Interrupt Node Pointer
   type NIPR_LECINP_Field is
     (
      --  Interrupt output line INT_O0 is selected.
      VALUE1,
      --  Interrupt output line INT_O1 is selected.
      VALUE2,
      --  Interrupt output line INT_O14 is selected.
      VALUE3,
      --  Interrupt output line INT_O15 is selected.
      VALUE4)
     with Size => 4;
   for NIPR_LECINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   --  Transfer OK Interrupt Node Pointer
   type NIPR_TRINP_Field is
     (
      --  Interrupt output line INT_O0 is selected.
      VALUE1,
      --  Interrupt output line INT_O1 is selected.
      VALUE2,
      --  Interrupt output line INT_O14 is selected.
      VALUE3,
      --  Interrupt output line INT_O15 is selected.
      VALUE4)
     with Size => 4;
   for NIPR_TRINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   --  Frame Counter Interrupt Node Pointer
   type NIPR_CFCINP_Field is
     (
      --  Interrupt output line INT_O0 is selected.
      VALUE1,
      --  Interrupt output line INT_O1 is selected.
      VALUE2,
      --  Interrupt output line INT_O14 is selected.
      VALUE3,
      --  Interrupt output line INT_O15 is selected.
      VALUE4)
     with Size => 4;
   for NIPR_CFCINP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 14,
      VALUE4 => 15);

   --  Node Interrupt Pointer Register
   type NIPR_Register is record
      --  Alert Interrupt Node Pointer
      ALINP          : NIPR_ALINP_Field := NRF_SVD.CAN.VALUE1;
      --  Last Error Code Interrupt Node Pointer
      LECINP         : NIPR_LECINP_Field := NRF_SVD.CAN.VALUE1;
      --  Transfer OK Interrupt Node Pointer
      TRINP          : NIPR_TRINP_Field := NRF_SVD.CAN.VALUE1;
      --  Frame Counter Interrupt Node Pointer
      CFCINP         : NIPR_CFCINP_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NIPR_Register use record
      ALINP          at 0 range 0 .. 3;
      LECINP         at 0 range 4 .. 7;
      TRINP          at 0 range 8 .. 11;
      CFCINP         at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype NPCR_RXSEL_Field is HAL.UInt3;

   --  Loop-Back Mode
   type NPCR_LBM_Field is
     (
      --  Loop-Back Mode is disabled.
      VALUE1,
      --  Loop-Back Mode is enabled. This node is connected to an internal
      --  (virtual) loop-back CAN bus. All CAN nodes which are in Loop-Back
      --  Mode are connected to this virtual CAN bus so that they can
      --  communicate with each other internally. The external transmit line is
      --  forced recessive in Loop-Back Mode.
      VALUE2)
     with Size => 1;
   for NPCR_LBM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Node Port Control Register
   type NPCR_Register is record
      --  Receive Select
      RXSEL         : NPCR_RXSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7  : HAL.UInt5 := 16#0#;
      --  Loop-Back Mode
      LBM           : NPCR_LBM_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NPCR_Register use record
      RXSEL         at 0 range 0 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      LBM           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype NBTR_BRP_Field is HAL.UInt6;
   subtype NBTR_SJW_Field is HAL.UInt2;
   subtype NBTR_TSEG1_Field is HAL.UInt4;
   subtype NBTR_TSEG2_Field is HAL.UInt3;

   --  Divide Prescaler Clock by 8
   type NBTR_DIV8_Field is
     (
      --  A time quantum lasts (BRP+1) clock cycles.
      VALUE1,
      --  A time quantum lasts 8 (BRP+1) clock cycles.
      VALUE2)
     with Size => 1;
   for NBTR_DIV8_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Node Bit Timing Register
   type NBTR_Register is record
      --  Baud Rate Prescaler
      BRP            : NBTR_BRP_Field := 16#0#;
      --  (Re) Synchronization Jump Width
      SJW            : NBTR_SJW_Field := 16#0#;
      --  Time Segment Before Sample Point
      TSEG1          : NBTR_TSEG1_Field := 16#0#;
      --  Time Segment After Sample Point
      TSEG2          : NBTR_TSEG2_Field := 16#0#;
      --  Divide Prescaler Clock by 8
      DIV8           : NBTR_DIV8_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NBTR_Register use record
      BRP            at 0 range 0 .. 5;
      SJW            at 0 range 6 .. 7;
      TSEG1          at 0 range 8 .. 11;
      TSEG2          at 0 range 12 .. 14;
      DIV8           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype NECNT_REC_Field is HAL.UInt8;
   subtype NECNT_TEC_Field is HAL.UInt8;
   subtype NECNT_EWRNLVL_Field is HAL.UInt8;

   --  Last Error Transfer Direction
   type NECNT_LETD_Field is
     (
      --  The last error occurred while the CAN node x was receiver (REC has
      --  been incremented).
      VALUE1,
      --  The last error occurred while the CAN node x was transmitter (TEC has
      --  been incremented).
      VALUE2)
     with Size => 1;
   for NECNT_LETD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Last Error Increment
   type NECNT_LEINC_Field is
     (
      --  The last error led to an error counter increment of 1.
      VALUE1,
      --  The last error led to an error counter increment of 8.
      VALUE2)
     with Size => 1;
   for NECNT_LEINC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Node Error Counter Register
   type NECNT_Register is record
      --  Receive Error Counter
      REC            : NECNT_REC_Field := 16#0#;
      --  Transmit Error Counter
      TEC            : NECNT_TEC_Field := 16#0#;
      --  Error Warning Level
      EWRNLVL        : NECNT_EWRNLVL_Field := 16#60#;
      --  Read-only. Last Error Transfer Direction
      LETD           : NECNT_LETD_Field := NRF_SVD.CAN.VALUE1;
      --  Read-only. Last Error Increment
      LEINC          : NECNT_LEINC_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NECNT_Register use record
      REC            at 0 range 0 .. 7;
      TEC            at 0 range 8 .. 15;
      EWRNLVL        at 0 range 16 .. 23;
      LETD           at 0 range 24 .. 24;
      LEINC          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype NFCR_CFC_Field is HAL.UInt16;
   subtype NFCR_CFSEL_Field is HAL.UInt3;

   --  CAN Frame Counter Mode
   type NFCR_CFMOD_Field is
     (
      --  Frame Count Mode: The frame counter is incremented upon the reception
      --  and transmission of frames.
      VALUE1,
      --  Time Stamp Mode: The frame counter is used to count bit times.
      VALUE2,
      --  Bit Timing Mode: The frame counter is used for analysis of the bit
      --  timing.
      VALUE3,
      --  Error Count Mode: The frame counter is used for counting when an
      --  error frame is received or an error is detected by the node.
      VALUE4)
     with Size => 2;
   for NFCR_CFMOD_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  CAN Frame Count Interrupt Enable
   type NFCR_CFCIE_Field is
     (
      --  CAN frame counter overflow interrupt is disabled.
      VALUE1,
      --  CAN frame counter overflow interrupt is enabled.
      VALUE2)
     with Size => 1;
   for NFCR_CFCIE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CAN Frame Counter Overflow Flag
   type NFCR_CFCOV_Field is
     (
      --  No overflow has occurred since last flag reset.
      VALUE1,
      --  An overflow has occurred since last flag reset.
      VALUE2)
     with Size => 1;
   for NFCR_CFCOV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Node Frame Counter Register
   type NFCR_Register is record
      --  CAN Frame Counter
      CFC            : NFCR_CFC_Field := 16#0#;
      --  CAN Frame Count Selection
      CFSEL          : NFCR_CFSEL_Field := 16#0#;
      --  CAN Frame Counter Mode
      CFMOD          : NFCR_CFMOD_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  CAN Frame Count Interrupt Enable
      CFCIE          : NFCR_CFCIE_Field := NRF_SVD.CAN.VALUE1;
      --  CAN Frame Counter Overflow Flag
      CFCOV          : NFCR_CFCOV_Field := NRF_SVD.CAN.VALUE1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NFCR_Register use record
      CFC            at 0 range 0 .. 15;
      CFSEL          at 0 range 16 .. 18;
      CFMOD          at 0 range 19 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CFCIE          at 0 range 22 .. 22;
      CFCOV          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Controller Area Networks
   type CAN_Peripheral is record
      --  CAN Clock Control Register
      CLC     : aliased CLC_Register;
      --  Module Identification Register
      ID      : aliased ID_Register;
      --  CAN Fractional Divider Register
      FDR     : aliased FDR_Register;
      --  List Register
      LIST    : aliased LIST_Registers;
      --  Message Pending Register
      MSPND   : aliased MSPND_Registers;
      --  Message Index Register
      MSID    : aliased MSID_Registers;
      --  Message Index Mask Register
      MSIMASK : aliased HAL.UInt32;
      --  Panel Control Register
      PANCTR  : aliased PANCTR_Register;
      --  Module Control Register
      MCR     : aliased MCR_Register;
      --  Module Interrupt Trigger Register
      MITR    : aliased MITR_Register;
   end record
     with Volatile;

   for CAN_Peripheral use record
      CLC     at 16#0# range 0 .. 31;
      ID      at 16#8# range 0 .. 31;
      FDR     at 16#C# range 0 .. 31;
      LIST    at 16#100# range 0 .. 511;
      MSPND   at 16#140# range 0 .. 255;
      MSID    at 16#180# range 0 .. 255;
      MSIMASK at 16#1C0# range 0 .. 31;
      PANCTR  at 16#1C4# range 0 .. 31;
      MCR     at 16#1C8# range 0 .. 31;
      MITR    at 16#1CC# range 0 .. 31;
   end record;

   --  Controller Area Networks
   CAN_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#50040000#);

   --  Controller Area Networks
   type CAN_MO_CLUSTER_Peripheral is record
      --  Message Object Registers
      MO : aliased CAN_MO_Clusters;
   end record
     with Volatile;

   for CAN_MO_CLUSTER_Peripheral use record
      MO at 0 range 0 .. 8191;
   end record;

   --  Controller Area Networks
   CAN_MO_Periph : aliased CAN_MO_CLUSTER_Peripheral
     with Import, Address => System'To_Address (16#50041000#);

   --  Controller Area Networks
   type CAN_Peripheral_1 is record
      --  Node Control Register
      NCR   : aliased NCR_Register;
      --  Node Status Register
      NSR   : aliased NSR_Register;
      --  Node Interrupt Pointer Register
      NIPR  : aliased NIPR_Register;
      --  Node Port Control Register
      NPCR  : aliased NPCR_Register;
      --  Node Bit Timing Register
      NBTR  : aliased NBTR_Register;
      --  Node Error Counter Register
      NECNT : aliased NECNT_Register;
      --  Node Frame Counter Register
      NFCR  : aliased NFCR_Register;
   end record
     with Volatile;

   for CAN_Peripheral_1 use record
      NCR   at 16#0# range 0 .. 31;
      NSR   at 16#4# range 0 .. 31;
      NIPR  at 16#8# range 0 .. 31;
      NPCR  at 16#C# range 0 .. 31;
      NBTR  at 16#10# range 0 .. 31;
      NECNT at 16#14# range 0 .. 31;
      NFCR  at 16#18# range 0 .. 31;
   end record;

   --  Controller Area Networks
   CAN_NODE0_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#50040200#);

   --  Controller Area Networks
   CAN_NODE1_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#50040300#);

end NRF_SVD.CAN;
