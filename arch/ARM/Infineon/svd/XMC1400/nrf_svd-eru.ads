--  This spec has been automatically generated from XMC1400.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ERU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Event Source Select for A0 (ERS0)
   type EXISEL_EXS0A_Field is
     (
      --  Input ERU_0A0 is selected
      VALUE1,
      --  Input ERU_0A1 is selected
      VALUE2,
      --  Input ERU_0A2 is selected
      VALUE3,
      --  Input ERU_0A3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS0A_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for B0 (ERS0)
   type EXISEL_EXS0B_Field is
     (
      --  Input ERU_0B0 is selected
      VALUE1,
      --  Input ERU_0B1 is selected
      VALUE2,
      --  Input ERU_0B2 is selected
      VALUE3,
      --  Input ERU_0B3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS0B_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for A1 (ERS1)
   type EXISEL_EXS1A_Field is
     (
      --  Input ERU_1A0 is selected
      VALUE1,
      --  Input ERU_1A1 is selected
      VALUE2,
      --  Input ERU_1A2 is selected
      VALUE3,
      --  Input ERU_1A3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS1A_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for B1 (ERS1)
   type EXISEL_EXS1B_Field is
     (
      --  Input ERU_1B0 is selected
      VALUE1,
      --  Input ERU_1B1 is selected
      VALUE2,
      --  Input ERU_1B2 is selected
      VALUE3,
      --  Input ERU_1B3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS1B_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for A2 (ERS2)
   type EXISEL_EXS2A_Field is
     (
      --  Input ERU_2A0 is selected
      VALUE1,
      --  Input ERU_2A1 is selected
      VALUE2,
      --  Input ERU_2A2 is selected
      VALUE3,
      --  Input ERU_2A3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS2A_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for B2 (ERS2)
   type EXISEL_EXS2B_Field is
     (
      --  Input ERU_2B0 is selected
      VALUE1,
      --  Input ERU_2B1 is selected
      VALUE2,
      --  Input ERU_2B2 is selected
      VALUE3,
      --  Input ERU_2B3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS2B_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for A3 (ERS3)
   type EXISEL_EXS3A_Field is
     (
      --  Input ERU_3A0 is selected
      VALUE1,
      --  Input ERU_3A1 is selected
      VALUE2,
      --  Input ERU_3A2 is selected
      VALUE3,
      --  Input ERU_3A3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS3A_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Source Select for B3 (ERS3)
   type EXISEL_EXS3B_Field is
     (
      --  Input ERU_3B0 is selected
      VALUE1,
      --  Input ERU_3B1 is selected
      VALUE2,
      --  Input ERU_3B2 is selected
      VALUE3,
      --  Input ERU_3B3 is selected
      VALUE4)
     with Size => 2;
   for EXISEL_EXS3B_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Event Input Select
   type EXISEL_Register is record
      --  Event Source Select for A0 (ERS0)
      EXS0A          : EXISEL_EXS0A_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for B0 (ERS0)
      EXS0B          : EXISEL_EXS0B_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for A1 (ERS1)
      EXS1A          : EXISEL_EXS1A_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for B1 (ERS1)
      EXS1B          : EXISEL_EXS1B_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for A2 (ERS2)
      EXS2A          : EXISEL_EXS2A_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for B2 (ERS2)
      EXS2B          : EXISEL_EXS2B_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for A3 (ERS3)
      EXS3A          : EXISEL_EXS3A_Field := NRF_SVD.ERU.VALUE1;
      --  Event Source Select for B3 (ERS3)
      EXS3B          : EXISEL_EXS3B_Field := NRF_SVD.ERU.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXISEL_Register use record
      EXS0A          at 0 range 0 .. 1;
      EXS0B          at 0 range 2 .. 3;
      EXS1A          at 0 range 4 .. 5;
      EXS1B          at 0 range 6 .. 7;
      EXS2A          at 0 range 8 .. 9;
      EXS2B          at 0 range 10 .. 11;
      EXS3A          at 0 range 12 .. 13;
      EXS3B          at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Output Trigger Pulse Enable for ETLx
   type EXICON_PE_Field is
     (
      --  The trigger pulse generation is disabled
      VALUE1,
      --  The trigger pulse generation is enabled
      VALUE2)
     with Size => 1;
   for EXICON_PE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Rebuild Level Detection for Status Flag for ETLx
   type EXICON_LD_Field is
     (
      --  The status flag FL is not cleared by hardware and is used as "sticky"
      --  bit. Once set, it is not influenced by any edge until it becomes
      --  cleared by software.
      VALUE1,
      --  The status flag FL rebuilds a level detection of the desired event.
      --  It becomes automatically set with a rising edge if RE = 1 or with a
      --  falling edge if FE = 1. It becomes automatically cleared with a
      --  rising edge if RE = 0 or with a falling edge if FE = 0.
      VALUE2)
     with Size => 1;
   for EXICON_LD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Rising Edge Detection Enable ETLx
   type EXICON_RE_Field is
     (
      --  A rising edge is not considered as edge event
      VALUE1,
      --  A rising edge is considered as edge event
      VALUE2)
     with Size => 1;
   for EXICON_RE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Falling Edge Detection Enable ETLx
   type EXICON_FE_Field is
     (
      --  A falling edge is not considered as edge event
      VALUE1,
      --  A falling edge is considered as edge event
      VALUE2)
     with Size => 1;
   for EXICON_FE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Output Channel Select for ETLx Output Trigger Pulse
   type EXICON_OCS_Field is
     (
      --  Trigger pulses are sent to OGU0
      VALUE1,
      --  Trigger pulses are sent to OGU1
      VALUE2,
      --  Trigger pulses are sent to OGU2
      VALUE3,
      --  Trigger pulses are sent to OGU3
      VALUE4)
     with Size => 3;
   for EXICON_OCS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Status Flag for ETLx
   type EXICON_FL_Field is
     (
      --  The enabled edge event has not been detected
      VALUE1,
      --  The enabled edge event has been detected
      VALUE2)
     with Size => 1;
   for EXICON_FL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input Source Select for ERSx
   type EXICON_SS_Field is
     (
      --  Input A without additional combination
      VALUE1,
      --  Input B without additional combination
      VALUE2,
      --  Input A OR input B
      VALUE3,
      --  Input A AND input B
      VALUE4)
     with Size => 2;
   for EXICON_SS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Input A Negation Select for ERSx
   type EXICON_NA_Field is
     (
      --  Input A is used directly
      VALUE1,
      --  Input A is inverted
      VALUE2)
     with Size => 1;
   for EXICON_NA_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Input B Negation Select for ERSx
   type EXICON_NB_Field is
     (
      --  Input B is used directly
      VALUE1,
      --  Input B is inverted
      VALUE2)
     with Size => 1;
   for EXICON_NB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Input Control
   type EXICON_Register is record
      --  Output Trigger Pulse Enable for ETLx
      PE             : EXICON_PE_Field := NRF_SVD.ERU.VALUE1;
      --  Rebuild Level Detection for Status Flag for ETLx
      LD             : EXICON_LD_Field := NRF_SVD.ERU.VALUE1;
      --  Rising Edge Detection Enable ETLx
      RE             : EXICON_RE_Field := NRF_SVD.ERU.VALUE1;
      --  Falling Edge Detection Enable ETLx
      FE             : EXICON_FE_Field := NRF_SVD.ERU.VALUE1;
      --  Output Channel Select for ETLx Output Trigger Pulse
      OCS            : EXICON_OCS_Field := NRF_SVD.ERU.VALUE1;
      --  Status Flag for ETLx
      FL             : EXICON_FL_Field := NRF_SVD.ERU.VALUE1;
      --  Input Source Select for ERSx
      SS             : EXICON_SS_Field := NRF_SVD.ERU.VALUE1;
      --  Input A Negation Select for ERSx
      NA             : EXICON_NA_Field := NRF_SVD.ERU.VALUE1;
      --  Input B Negation Select for ERSx
      NB             : EXICON_NB_Field := NRF_SVD.ERU.VALUE1;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXICON_Register use record
      PE             at 0 range 0 .. 0;
      LD             at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      FE             at 0 range 3 .. 3;
      OCS            at 0 range 4 .. 6;
      FL             at 0 range 7 .. 7;
      SS             at 0 range 8 .. 9;
      NA             at 0 range 10 .. 10;
      NB             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Event Input Control
   type EXICON_Registers is array (0 .. 3) of EXICON_Register
     with Volatile;

   --  Internal Trigger Source Selection
   type EXOCON_ISS_Field is
     (
      --  The peripheral trigger function is disabled
      VALUE1,
      --  Input ERU_OGUy1 is selected
      VALUE2,
      --  Input ERU_OGUy2 is selected
      VALUE3,
      --  Input ERU_OGUy3 is selected
      VALUE4)
     with Size => 2;
   for EXOCON_ISS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Gating Event Enable
   type EXOCON_GEEN_Field is
     (
      --  The event detection is disabled
      VALUE1,
      --  The event detection is enabled
      VALUE2)
     with Size => 1;
   for EXOCON_GEEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Pattern Detection Result Flag
   type EXOCON_PDR_Field is
     (
      --  A pattern miss is detected
      VALUE1,
      --  A pattern match is detected
      VALUE2)
     with Size => 1;
   for EXOCON_PDR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Gating Selection for Pattern Detection Result
   type EXOCON_GP_Field is
     (
      --  ERU_GOUTy is always disabled and ERU_IOUTy can not be activated
      VALUE1,
      --  ERU_GOUTy is always enabled and ERU_IOUTy becomes activated with each
      --  activation of ERU_TOUTy
      VALUE2,
      --  ERU_GOUTy is equal to ERU_PDOUTy and ERU_IOUTy becomes activated with
      --  an activation of ERU_TOUTy while the desired pattern is detected
      --  (pattern match PDR = 1)
      VALUE3,
      --  ERU_GOUTy is inverted to ERU_PDOUTy and ERU_IOUTy becomes activated
      --  with an activation of ERU_TOUTy while the desired pattern is not
      --  detected (pattern miss PDR = 0)
      VALUE4)
     with Size => 2;
   for EXOCON_GP_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Pattern Detection Enable for ETL0
   type EXOCON_IPEN0_Field is
     (
      --  Flag EXICONx.FL is excluded from the pattern detection
      VALUE1,
      --  Flag EXICONx.FL is included in the pattern detection
      VALUE2)
     with Size => 1;
   for EXOCON_IPEN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  EXOCON_IPEN array
   type EXOCON_IPEN_Field_Array is array (0 .. 3) of EXOCON_IPEN0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for EXOCON_IPEN
   type EXOCON_IPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPEN as a value
            Val : HAL.UInt4;
         when True =>
            --  IPEN as an array
            Arr : EXOCON_IPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXOCON_IPEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Event Output Trigger Control
   type EXOCON_Register is record
      --  Internal Trigger Source Selection
      ISS            : EXOCON_ISS_Field := NRF_SVD.ERU.VALUE1;
      --  Gating Event Enable
      GEEN           : EXOCON_GEEN_Field := NRF_SVD.ERU.VALUE1;
      --  Read-only. Pattern Detection Result Flag
      PDR            : EXOCON_PDR_Field := NRF_SVD.ERU.VALUE2;
      --  Gating Selection for Pattern Detection Result
      GP             : EXOCON_GP_Field := NRF_SVD.ERU.VALUE1;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Pattern Detection Enable for ETL0
      IPEN           : EXOCON_IPEN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXOCON_Register use record
      ISS            at 0 range 0 .. 1;
      GEEN           at 0 range 2 .. 2;
      PDR            at 0 range 3 .. 3;
      GP             at 0 range 4 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      IPEN           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Event Output Trigger Control
   type EXOCON_Registers is array (0 .. 3) of EXOCON_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Event Request Unit 0
   type ERU_Peripheral is record
      --  Event Input Select
      EXISEL : aliased EXISEL_Register;
      --  Event Input Control
      EXICON : aliased EXICON_Registers;
      --  Event Output Trigger Control
      EXOCON : aliased EXOCON_Registers;
   end record
     with Volatile;

   for ERU_Peripheral use record
      EXISEL at 16#0# range 0 .. 31;
      EXICON at 16#10# range 0 .. 127;
      EXOCON at 16#20# range 0 .. 127;
   end record;

   --  Event Request Unit 0
   ERU0_Periph : aliased ERU_Peripheral
     with Import, Address => System'To_Address (16#40010600#);

   --  Event Request Unit 1
   ERU1_Periph : aliased ERU_Peripheral
     with Import, Address => System'To_Address (16#40010630#);

end NRF_SVD.ERU;
