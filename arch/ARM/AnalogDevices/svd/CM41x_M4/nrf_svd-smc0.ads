--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SMC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype B0CTL_MODE_Field is HAL.UInt2;
   subtype B0CTL_SELCTRL_Field is HAL.UInt2;
   subtype B0CTL_PGSZ_Field is HAL.UInt2;

   --  Bank 0 Control Register
   type B0CTL_Register is record
      --  Bank 0 Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Memory Access Mode
      MODE           : B0CTL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Select Control
      SELCTRL        : B0CTL_SELCTRL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  ARDY Enable
      RDYEN          : Boolean := False;
      --  ARDY Polarity
      RDYPOL         : Boolean := False;
      --  ARDY Abort Enable
      RDYABTEN       : Boolean := False;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Flash Page Size
      PGSZ           : B0CTL_PGSZ_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B0CTL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SELCTRL        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDYEN          at 0 range 12 .. 12;
      RDYPOL         at 0 range 13 .. 13;
      RDYABTEN       at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      PGSZ           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype B0TIM_WST_Field is HAL.UInt3;
   subtype B0TIM_WHT_Field is HAL.UInt3;
   subtype B0TIM_WAT_Field is HAL.UInt6;
   subtype B0TIM_RST_Field is HAL.UInt3;
   subtype B0TIM_RHT_Field is HAL.UInt3;
   subtype B0TIM_RAT_Field is HAL.UInt6;

   --  Bank 0 Timing Register
   type B0TIM_Register is record
      --  Write Setup Time
      WST            : B0TIM_WST_Field := 16#1#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write Hold Time
      WHT            : B0TIM_WHT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write Access Time
      WAT            : B0TIM_WAT_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read Setup Time
      RST            : B0TIM_RST_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read Hold Time
      RHT            : B0TIM_RHT_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Read Access Time
      RAT            : B0TIM_RAT_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B0TIM_Register use record
      WST            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WHT            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      WAT            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RST            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RHT            at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RAT            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype B0ETIM_PREST_Field is HAL.UInt2;
   subtype B0ETIM_PREAT_Field is HAL.UInt2;
   subtype B0ETIM_TT_Field is HAL.UInt3;
   subtype B0ETIM_IT_Field is HAL.UInt3;
   subtype B0ETIM_PGWS_Field is HAL.UInt4;

   --  Bank 0 Extended Timing Register
   type B0ETIM_Register is record
      --  Pre Setup Time
      PREST          : B0ETIM_PREST_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Pre Access Time
      PREAT          : B0ETIM_PREAT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transition Time
      TT             : B0ETIM_TT_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Idle Time
      IT             : B0ETIM_IT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Page Wait States
      PGWS           : B0ETIM_PGWS_Field := 16#2#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B0ETIM_Register use record
      PREST          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PREAT          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TT             at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      IT             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PGWS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype B1CTL_MODE_Field is HAL.UInt2;
   subtype B1CTL_SELCTRL_Field is HAL.UInt2;
   subtype B1CTL_PGSZ_Field is HAL.UInt2;

   --  Bank 1 Control Register
   type B1CTL_Register is record
      --  Bank 1 Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Memory Access Mode
      MODE           : B1CTL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Select Control
      SELCTRL        : B1CTL_SELCTRL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  ARDY Enable
      RDYEN          : Boolean := False;
      --  ARDY Polarity
      RDYPOL         : Boolean := False;
      --  ARDY Abort Enable
      RDYABTEN       : Boolean := False;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Flash Page Size
      PGSZ           : B1CTL_PGSZ_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B1CTL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SELCTRL        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDYEN          at 0 range 12 .. 12;
      RDYPOL         at 0 range 13 .. 13;
      RDYABTEN       at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      PGSZ           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype B1TIM_WST_Field is HAL.UInt3;
   subtype B1TIM_WHT_Field is HAL.UInt3;
   subtype B1TIM_WAT_Field is HAL.UInt6;
   subtype B1TIM_RST_Field is HAL.UInt3;
   subtype B1TIM_RHT_Field is HAL.UInt3;
   subtype B1TIM_RAT_Field is HAL.UInt6;

   --  Bank 1 Timing Register
   type B1TIM_Register is record
      --  Write Setup Time
      WST            : B1TIM_WST_Field := 16#1#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write Hold Time
      WHT            : B1TIM_WHT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write Access Time
      WAT            : B1TIM_WAT_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read Setup Time
      RST            : B1TIM_RST_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read Hold Time
      RHT            : B1TIM_RHT_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Read Access Time
      RAT            : B1TIM_RAT_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B1TIM_Register use record
      WST            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WHT            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      WAT            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RST            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RHT            at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RAT            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype B1ETIM_PREST_Field is HAL.UInt2;
   subtype B1ETIM_PREAT_Field is HAL.UInt2;
   subtype B1ETIM_TT_Field is HAL.UInt3;
   subtype B1ETIM_IT_Field is HAL.UInt3;
   subtype B1ETIM_PGWS_Field is HAL.UInt4;

   --  Bank 1 Extended Timing Register
   type B1ETIM_Register is record
      --  Pre Setup Time
      PREST          : B1ETIM_PREST_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Pre Access Time
      PREAT          : B1ETIM_PREAT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transition Time
      TT             : B1ETIM_TT_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Idle Time
      IT             : B1ETIM_IT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Page Wait States
      PGWS           : B1ETIM_PGWS_Field := 16#2#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B1ETIM_Register use record
      PREST          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PREAT          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TT             at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      IT             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PGWS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype B2CTL_MODE_Field is HAL.UInt2;
   subtype B2CTL_SELCTRL_Field is HAL.UInt2;
   subtype B2CTL_PGSZ_Field is HAL.UInt2;

   --  Bank 2 Control Register
   type B2CTL_Register is record
      --  Bank 2 Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Memory Access Mode
      MODE           : B2CTL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Select Control
      SELCTRL        : B2CTL_SELCTRL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  ARDY Enable
      RDYEN          : Boolean := False;
      --  ARDY Polarity
      RDYPOL         : Boolean := False;
      --  ARDY Abort Enable
      RDYABTEN       : Boolean := False;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Flash Page Size
      PGSZ           : B2CTL_PGSZ_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B2CTL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SELCTRL        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDYEN          at 0 range 12 .. 12;
      RDYPOL         at 0 range 13 .. 13;
      RDYABTEN       at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      PGSZ           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype B2TIM_WST_Field is HAL.UInt3;
   subtype B2TIM_WHT_Field is HAL.UInt3;
   subtype B2TIM_WAT_Field is HAL.UInt6;
   subtype B2TIM_RST_Field is HAL.UInt3;
   subtype B2TIM_RHT_Field is HAL.UInt3;
   subtype B2TIM_RAT_Field is HAL.UInt6;

   --  Bank 2 Timing Register
   type B2TIM_Register is record
      --  Write Setup Time
      WST            : B2TIM_WST_Field := 16#1#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write Hold Time
      WHT            : B2TIM_WHT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write Access Time
      WAT            : B2TIM_WAT_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read Setup Time
      RST            : B2TIM_RST_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read Hold Time
      RHT            : B2TIM_RHT_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Read Access Time
      RAT            : B2TIM_RAT_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B2TIM_Register use record
      WST            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WHT            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      WAT            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RST            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RHT            at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RAT            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype B2ETIM_PREST_Field is HAL.UInt2;
   subtype B2ETIM_PREAT_Field is HAL.UInt2;
   subtype B2ETIM_TT_Field is HAL.UInt3;
   subtype B2ETIM_IT_Field is HAL.UInt3;
   subtype B2ETIM_PGWS_Field is HAL.UInt4;

   --  Bank 2 Extended Timing Register
   type B2ETIM_Register is record
      --  Pre Setup Time
      PREST          : B2ETIM_PREST_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Pre Access Time
      PREAT          : B2ETIM_PREAT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transition Time
      TT             : B2ETIM_TT_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Idle Time
      IT             : B2ETIM_IT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Page Wait States
      PGWS           : B2ETIM_PGWS_Field := 16#2#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B2ETIM_Register use record
      PREST          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PREAT          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TT             at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      IT             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PGWS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype B3CTL_MODE_Field is HAL.UInt2;
   subtype B3CTL_SELCTRL_Field is HAL.UInt2;
   subtype B3CTL_PGSZ_Field is HAL.UInt2;

   --  Bank 3 Control Register
   type B3CTL_Register is record
      --  Bank 3 Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Memory Access Mode
      MODE           : B3CTL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Select Control
      SELCTRL        : B3CTL_SELCTRL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  ARDY Enable
      RDYEN          : Boolean := False;
      --  ARDY Polarity
      RDYPOL         : Boolean := False;
      --  ARDY Abort Enable
      RDYABTEN       : Boolean := False;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Flash Page Size
      PGSZ           : B3CTL_PGSZ_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B3CTL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MODE           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SELCTRL        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RDYEN          at 0 range 12 .. 12;
      RDYPOL         at 0 range 13 .. 13;
      RDYABTEN       at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      PGSZ           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype B3TIM_WST_Field is HAL.UInt3;
   subtype B3TIM_WHT_Field is HAL.UInt3;
   subtype B3TIM_WAT_Field is HAL.UInt6;
   subtype B3TIM_RST_Field is HAL.UInt3;
   subtype B3TIM_RHT_Field is HAL.UInt3;
   subtype B3TIM_RAT_Field is HAL.UInt6;

   --  Bank 3 Timing Register
   type B3TIM_Register is record
      --  Write Setup Time
      WST            : B3TIM_WST_Field := 16#1#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write Hold Time
      WHT            : B3TIM_WHT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write Access Time
      WAT            : B3TIM_WAT_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read Setup Time
      RST            : B3TIM_RST_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read Hold Time
      RHT            : B3TIM_RHT_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Read Access Time
      RAT            : B3TIM_RAT_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B3TIM_Register use record
      WST            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WHT            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      WAT            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RST            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RHT            at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RAT            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype B3ETIM_PREST_Field is HAL.UInt2;
   subtype B3ETIM_PREAT_Field is HAL.UInt2;
   subtype B3ETIM_TT_Field is HAL.UInt3;
   subtype B3ETIM_IT_Field is HAL.UInt3;
   subtype B3ETIM_PGWS_Field is HAL.UInt4;

   --  Bank 3 Extended Timing Register
   type B3ETIM_Register is record
      --  Pre Setup Time
      PREST          : B3ETIM_PREST_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Pre Access Time
      PREAT          : B3ETIM_PREAT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Transition Time
      TT             : B3ETIM_TT_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Idle Time
      IT             : B3ETIM_IT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Page Wait States
      PGWS           : B3ETIM_PGWS_Field := 16#2#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B3ETIM_Register use record
      PREST          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PREAT          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TT             at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      IT             at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PGWS           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Static Memory Controller
   type SMC0_Peripheral is record
      --  Bank 0 Control Register
      B0CTL  : aliased B0CTL_Register;
      --  Bank 0 Timing Register
      B0TIM  : aliased B0TIM_Register;
      --  Bank 0 Extended Timing Register
      B0ETIM : aliased B0ETIM_Register;
      --  Bank 1 Control Register
      B1CTL  : aliased B1CTL_Register;
      --  Bank 1 Timing Register
      B1TIM  : aliased B1TIM_Register;
      --  Bank 1 Extended Timing Register
      B1ETIM : aliased B1ETIM_Register;
      --  Bank 2 Control Register
      B2CTL  : aliased B2CTL_Register;
      --  Bank 2 Timing Register
      B2TIM  : aliased B2TIM_Register;
      --  Bank 2 Extended Timing Register
      B2ETIM : aliased B2ETIM_Register;
      --  Bank 3 Control Register
      B3CTL  : aliased B3CTL_Register;
      --  Bank 3 Timing Register
      B3TIM  : aliased B3TIM_Register;
      --  Bank 3 Extended Timing Register
      B3ETIM : aliased B3ETIM_Register;
   end record
     with Volatile;

   for SMC0_Peripheral use record
      B0CTL  at 16#C# range 0 .. 31;
      B0TIM  at 16#10# range 0 .. 31;
      B0ETIM at 16#14# range 0 .. 31;
      B1CTL  at 16#1C# range 0 .. 31;
      B1TIM  at 16#20# range 0 .. 31;
      B1ETIM at 16#24# range 0 .. 31;
      B2CTL  at 16#2C# range 0 .. 31;
      B2TIM  at 16#30# range 0 .. 31;
      B2ETIM at 16#34# range 0 .. 31;
      B3CTL  at 16#3C# range 0 .. 31;
      B3TIM  at 16#40# range 0 .. 31;
      B3ETIM at 16#44# range 0 .. 31;
   end record;

   --  Static Memory Controller
   SMC0_Periph : aliased SMC0_Peripheral
     with Import, Address => System'To_Address (16#4002F000#);

end NRF_SVD.SMC0;
