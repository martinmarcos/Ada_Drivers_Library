--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CRC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTL_OPMODE_Field is HAL.UInt4;

   --  Control Register
   type CTL_Register is record
      --  Block Enable
      BLKEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Operation Mode
      OPMODE         : CTL_OPMODE_Field := 16#0#;
      --  Auto Clear to Zero
      AUTOCLRZ       : Boolean := False;
      --  Auto Clear to One
      AUTOCLRF       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Output Buffer Ready Stall
      OBRSTALL       : Boolean := False;
      --  Intermediate Result Ready Stall
      IRRSTALL       : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Bit Mirroring
      BITMIRR        : Boolean := False;
      --  Byte Mirroring
      BYTMIRR        : Boolean := False;
      --  Word16 Swapping
      W16SWP         : Boolean := False;
      --  FIFO Data Select
      FDSEL          : Boolean := False;
      --  Result Register Mirroring
      RSLTMIRR       : Boolean := False;
      --  Polynomial Register Mirroring
      POLYMIRR       : Boolean := False;
      --  COMPARE Register Mirroring
      CMPMIRR        : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      BLKEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OPMODE         at 0 range 4 .. 7;
      AUTOCLRZ       at 0 range 8 .. 8;
      AUTOCLRF       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      OBRSTALL       at 0 range 12 .. 12;
      IRRSTALL       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BITMIRR        at 0 range 16 .. 16;
      BYTMIRR        at 0 range 17 .. 17;
      W16SWP         at 0 range 18 .. 18;
      FDSEL          at 0 range 19 .. 19;
      RSLTMIRR       at 0 range 20 .. 20;
      POLYMIRR       at 0 range 21 .. 21;
      CMPMIRR        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Compare Error Interrupt Enable
   type INEN_CMPERR_Field is
     (
      --  Disable (mask) interrupt
      Cmperr_Msk,
      --  Enable (unmask) interrupt
      Cmperr_Umsk)
     with Size => 1;
   for INEN_CMPERR_Field use
     (Cmperr_Msk => 0,
      Cmperr_Umsk => 1);

   --  Data Count Expired (Status) Interrupt Enable
   type INEN_DCNTEXP_Field is
     (
      --  Disable (mask) interrupt
      Dcntexp_Msk,
      --  Enable (unmask) interrupt
      Dcntexp_Umsk)
     with Size => 1;
   for INEN_DCNTEXP_Field use
     (Dcntexp_Msk => 0,
      Dcntexp_Umsk => 1);

   --  Interrupt Enable Register
   type INEN_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Compare Error Interrupt Enable
      CMPERR        : INEN_CMPERR_Field := NRF_SVD.CRC0.Cmperr_Msk;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Data Count Expired (Status) Interrupt Enable
      DCNTEXP       : INEN_DCNTEXP_Field := NRF_SVD.CRC0.Dcntexp_Msk;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INEN_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CMPERR        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      DCNTEXP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt Enable Set Register
   type INEN_SET_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Compare Error Interrupt
      CMPERR        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Data Count Expired (Status) Interrupt Enable Set
      DCNTEXP       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INEN_SET_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CMPERR        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      DCNTEXP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt Enable Clear Register
   type INEN_CLR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Compare Error Clear
      CMPERR        : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Data Count Expired
      DCNTEXP       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INEN_CLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CMPERR        at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      DCNTEXP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype STAT_FSTAT_Field is HAL.UInt3;

   --  Status Register
   type STAT_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Compare Error
      CMPERR         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Data Count Expired
      DCNTEXP        : Boolean := False;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Read-only. Input Buffer Ready
      IBR            : Boolean := False;
      --  Read-only. Output Buffer Ready
      OBR            : Boolean := False;
      --  Read-only. Intermediate Result Ready
      IRR            : Boolean := False;
      --  Read-only. Look-Up Table Done
      LUTDONE        : Boolean := False;
      --  Read-only. FIFO Status
      FSTAT          : STAT_FSTAT_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      CMPERR         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DCNTEXP        at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      IBR            at 0 range 16 .. 16;
      OBR            at 0 range 17 .. 17;
      IRR            at 0 range 18 .. 18;
      LUTDONE        at 0 range 19 .. 19;
      FSTAT          at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cyclic Redundancy Check Unit
   type CRC0_Peripheral is record
      --  Control Register
      CTL        : aliased CTL_Register;
      --  Data Word Count Register
      DCNT       : aliased HAL.UInt32;
      --  Data Word Count Reload Register
      DCNTRLD    : aliased HAL.UInt32;
      --  Data Compare Register
      COMP       : aliased HAL.UInt32;
      --  Fill Value Register
      FILLVAL    : aliased HAL.UInt32;
      --  Data FIFO Register
      DFIFO      : aliased HAL.UInt32;
      --  Interrupt Enable Register
      INEN       : aliased INEN_Register;
      --  Interrupt Enable Set Register
      INEN_SET   : aliased INEN_SET_Register;
      --  Interrupt Enable Clear Register
      INEN_CLR   : aliased INEN_CLR_Register;
      --  Polynomial Register
      POLY       : aliased HAL.UInt32;
      --  Status Register
      STAT       : aliased STAT_Register;
      --  Data Count Capture Register
      DCNTCAP    : aliased HAL.UInt32;
      --  CRC Final Result Register
      RESULT_FIN : aliased HAL.UInt32;
      --  CRC Current Result Register
      RESULT_CUR : aliased HAL.UInt32;
   end record
     with Volatile;

   for CRC0_Peripheral use record
      CTL        at 16#0# range 0 .. 31;
      DCNT       at 16#4# range 0 .. 31;
      DCNTRLD    at 16#8# range 0 .. 31;
      COMP       at 16#14# range 0 .. 31;
      FILLVAL    at 16#18# range 0 .. 31;
      DFIFO      at 16#1C# range 0 .. 31;
      INEN       at 16#20# range 0 .. 31;
      INEN_SET   at 16#24# range 0 .. 31;
      INEN_CLR   at 16#28# range 0 .. 31;
      POLY       at 16#2C# range 0 .. 31;
      STAT       at 16#40# range 0 .. 31;
      DCNTCAP    at 16#44# range 0 .. 31;
      RESULT_FIN at 16#4C# range 0 .. 31;
      RESULT_CUR at 16#50# range 0 .. 31;
   end record;

   --  Cyclic Redundancy Check Unit
   CRC0_Periph : aliased CRC0_Peripheral
     with Import, Address => System'To_Address (16#4004C000#);

end NRF_SVD.CRC0;
