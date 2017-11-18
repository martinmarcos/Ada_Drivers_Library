--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CNT0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Counter Enable
   type CFG_EN_Field is
     (
      --  Counter Disable
      Cntdis,
      --  Counter Enable
      Cnten)
     with Size => 1;
   for CFG_EN_Field use
     (Cntdis => 0,
      Cnten => 1);

   --  Debounce Enable
   type CFG_DEBEN_Field is
     (
      --  Disable
      Debdis,
      --  Enable
      Deben)
     with Size => 1;
   for CFG_DEBEN_Field use
     (Debdis => 0,
      Deben => 1);

   --  CDG Pin Polarity Invert
   type CFG_CDGINV_Field is
     (
      --  Active High, Rising Edge
      Cdginv_Ahi,
      --  Active Low, Falling Edge
      Cdginv_Alo)
     with Size => 1;
   for CFG_CDGINV_Field use
     (Cdginv_Ahi => 0,
      Cdginv_Alo => 1);

   --  CUD Pin Polarity Invert
   type CFG_CUDINV_Field is
     (
      --  Active High, Rising Edge
      Cudinv_Ahi,
      --  Active Low, Falling Edge
      Cudinv_Alo)
     with Size => 1;
   for CFG_CUDINV_Field use
     (Cudinv_Ahi => 0,
      Cudinv_Alo => 1);

   --  CZM Pin Polarity Invert
   type CFG_CZMINV_Field is
     (
      --  Active High, Rising Edge
      Czminv_Ahi,
      --  Active Low, Falling Edge
      Czminv_Alo)
     with Size => 1;
   for CFG_CZMINV_Field use
     (Czminv_Ahi => 0,
      Czminv_Alo => 1);

   --  Counter Operating Mode
   type CFG_CNTMODE_Field is
     (
      --  QUAD_ENC.
      Cntmode_Quadenc,
      --  BIN_ENC.
      Cntmode_Binenc,
      --  UD_CNT.
      Cntmode_Udcnt,
      --  DIR_CNT.
      Cntmode_Dircnt,
      --  DIR_TMR.
      Cntmode_Dirtmr)
     with Size => 3;
   for CFG_CNTMODE_Field use
     (Cntmode_Quadenc => 0,
      Cntmode_Binenc => 1,
      Cntmode_Udcnt => 2,
      Cntmode_Dircnt => 4,
      Cntmode_Dirtmr => 5);

   --  CZM Zeros Counter Enable
   type CFG_ZMZC_Field is
     (
      --  Disable
      Zmzc_Dis,
      --  Enable
      Zmzc_En)
     with Size => 1;
   for CFG_ZMZC_Field use
     (Zmzc_Dis => 0,
      Zmzc_En => 1);

   --  Boundary Register Mode
   type CFG_BNDMODE_Field is
     (
      --  BND_COMP.
      Bndmode_Bndcomp,
      --  BND_ZERO.
      Bndmode_Binenc,
      --  BND_CAPT.
      Bndmode_Bndcapt,
      --  BND_AEXT.
      Bndmode_Bndaext)
     with Size => 2;
   for CFG_BNDMODE_Field use
     (Bndmode_Bndcomp => 0,
      Bndmode_Binenc => 1,
      Bndmode_Bndcapt => 2,
      Bndmode_Bndaext => 3);

   --  CUD and CDG Pin Input Disable
   type CFG_INPDIS_Field is
     (
      --  Enable
      No_Inpdis,
      --  Pin Input Disable
      Inpdis)
     with Size => 1;
   for CFG_INPDIS_Field use
     (No_Inpdis => 0,
      Inpdis => 1);

   --  Configuration Register
   type CFG_Register is record
      --  Counter Enable
      EN             : CFG_EN_Field := NRF_SVD.CNT0.Cntdis;
      --  Debounce Enable
      DEBEN          : CFG_DEBEN_Field := NRF_SVD.CNT0.Debdis;
      --  Divider Enable
      DIVEN          : Boolean := False;
      --  Non-debounced Inputs to Divider Enable
      DIVNTV         : Boolean := False;
      --  CDG Pin Polarity Invert
      CDGINV         : CFG_CDGINV_Field := NRF_SVD.CNT0.Cdginv_Ahi;
      --  CUD Pin Polarity Invert
      CUDINV         : CFG_CUDINV_Field := NRF_SVD.CNT0.Cudinv_Ahi;
      --  CZM Pin Polarity Invert
      CZMINV         : CFG_CZMINV_Field := NRF_SVD.CNT0.Czminv_Ahi;
      --  Divider Mode
      DIVMODE        : Boolean := False;
      --  Counter Operating Mode
      CNTMODE        : CFG_CNTMODE_Field := NRF_SVD.CNT0.Cntmode_Quadenc;
      --  CZM Zeros Counter Enable
      ZMZC           : CFG_ZMZC_Field := NRF_SVD.CNT0.Zmzc_Dis;
      --  Boundary Register Mode
      BNDMODE        : CFG_BNDMODE_Field := NRF_SVD.CNT0.Bndmode_Bndcomp;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  CUD and CDG Pin Input Disable
      INPDIS         : CFG_INPDIS_Field := NRF_SVD.CNT0.No_Inpdis;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      EN             at 0 range 0 .. 0;
      DEBEN          at 0 range 1 .. 1;
      DIVEN          at 0 range 2 .. 2;
      DIVNTV         at 0 range 3 .. 3;
      CDGINV         at 0 range 4 .. 4;
      CUDINV         at 0 range 5 .. 5;
      CZMINV         at 0 range 6 .. 6;
      DIVMODE        at 0 range 7 .. 7;
      CNTMODE        at 0 range 8 .. 10;
      ZMZC           at 0 range 11 .. 11;
      BNDMODE        at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      INPDIS         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Illegal Gray/Binary Code Interrupt Enable
   type IMSK_IC_Field is
     (
      --  Mask Interrupt
      Ic_Msk,
      --  Unmask Interrupt
      Ic_Umsk)
     with Size => 1;
   for IMSK_IC_Field use
     (Ic_Msk => 0,
      Ic_Umsk => 1);

   --  Upcount Interrupt Enable
   type IMSK_UC_Field is
     (
      --  Mask Interrupt
      Uc_Msk,
      --  Unmask Interrupt
      Uc_Umsk)
     with Size => 1;
   for IMSK_UC_Field use
     (Uc_Msk => 0,
      Uc_Umsk => 1);

   --  Downcount Interrupt Enable
   type IMSK_DC_Field is
     (
      --  Mask Interrupt
      Dc_Msk,
      --  Unmask Interrupt
      Dc_Umsk)
     with Size => 1;
   for IMSK_DC_Field use
     (Dc_Msk => 0,
      Dc_Umsk => 1);

   --  Min Count Interrupt Enable
   type IMSK_MINC_Field is
     (
      --  Mask Interrupt
      Minc_Msk,
      --  Unmask Interrupt
      Minc_Umsk)
     with Size => 1;
   for IMSK_MINC_Field use
     (Minc_Msk => 0,
      Minc_Umsk => 1);

   --  Max Count Interrupt Enable
   type IMSK_MAXC_Field is
     (
      --  Mask Interrupt
      Maxc_Msk,
      --  Unmask Interrupt
      Maxc_Umsk)
     with Size => 1;
   for IMSK_MAXC_Field use
     (Maxc_Msk => 0,
      Maxc_Umsk => 1);

   --  Bit 31 Overflow Interrupt Enable
   type IMSK_COV31_Field is
     (
      --  Mask Interrupt
      Cov31_Msk,
      --  Unmask Interrupt
      Cov31_Umsk)
     with Size => 1;
   for IMSK_COV31_Field use
     (Cov31_Msk => 0,
      Cov31_Umsk => 1);

   --  Bit 15 Overflow Interrupt Enable
   type IMSK_COV15_Field is
     (
      --  Mask Interrupt
      Cov15_Msk,
      --  Unmask Interrupt
      Cov15_Umsk)
     with Size => 1;
   for IMSK_COV15_Field use
     (Cov15_Msk => 0,
      Cov15_Umsk => 1);

   --  CNT_CNTR Counts To Zero Interrupt Enable
   type IMSK_CZERO_Field is
     (
      --  Mask Interrupt
      Czero_Msk,
      --  Unmask Interrupt
      Czero_Umsk)
     with Size => 1;
   for IMSK_CZERO_Field use
     (Czero_Msk => 0,
      Czero_Umsk => 1);

   --  CZM Pin/Pushbutton Interrupt Enable
   type IMSK_CZM_Field is
     (
      --  Mask Interrupt
      Czm_Msk,
      --  Unmask Interrupt
      Czm_Umsk)
     with Size => 1;
   for IMSK_CZM_Field use
     (Czm_Msk => 0,
      Czm_Umsk => 1);

   --  Zero Marker Error Interrupt Enable
   type IMSK_CZME_Field is
     (
      --  Mask Interrupt
      Czme_Msk,
      --  Unmask Interrupt
      Czme_Umsk)
     with Size => 1;
   for IMSK_CZME_Field use
     (Czme_Msk => 0,
      Czme_Umsk => 1);

   --  Counter Zeroed by Zero Marker Interrupt Enable
   type IMSK_CZMZ_Field is
     (
      --  Mask Interrupt
      Czmz_Msk,
      --  Unmask Interrupt
      Czmz_Umsk)
     with Size => 1;
   for IMSK_CZMZ_Field use
     (Czmz_Msk => 0,
      Czmz_Umsk => 1);

   --  Interrupt Mask Register
   type IMSK_Register is record
      --  Illegal Gray/Binary Code Interrupt Enable
      IC             : IMSK_IC_Field := NRF_SVD.CNT0.Ic_Msk;
      --  Upcount Interrupt Enable
      UC             : IMSK_UC_Field := NRF_SVD.CNT0.Uc_Msk;
      --  Downcount Interrupt Enable
      DC             : IMSK_DC_Field := NRF_SVD.CNT0.Dc_Msk;
      --  Min Count Interrupt Enable
      MINC           : IMSK_MINC_Field := NRF_SVD.CNT0.Minc_Msk;
      --  Max Count Interrupt Enable
      MAXC           : IMSK_MAXC_Field := NRF_SVD.CNT0.Maxc_Msk;
      --  Bit 31 Overflow Interrupt Enable
      COV31          : IMSK_COV31_Field := NRF_SVD.CNT0.Cov31_Msk;
      --  Bit 15 Overflow Interrupt Enable
      COV15          : IMSK_COV15_Field := NRF_SVD.CNT0.Cov15_Msk;
      --  CNT_CNTR Counts To Zero Interrupt Enable
      CZERO          : IMSK_CZERO_Field := NRF_SVD.CNT0.Czero_Msk;
      --  CZM Pin/Pushbutton Interrupt Enable
      CZM            : IMSK_CZM_Field := NRF_SVD.CNT0.Czm_Msk;
      --  Zero Marker Error Interrupt Enable
      CZME           : IMSK_CZME_Field := NRF_SVD.CNT0.Czme_Msk;
      --  Counter Zeroed by Zero Marker Interrupt Enable
      CZMZ           : IMSK_CZMZ_Field := NRF_SVD.CNT0.Czmz_Msk;
      --  Stop Detect Interrupt Enable
      STP            : Boolean := False;
      --  M Value Programming Error Interrupt Enable
      MERR           : Boolean := False;
      --  Direction Error Interrupt Enable
      DERR           : Boolean := False;
      --  Direction Change Interrupt Enable
      DCHNG          : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      IC             at 0 range 0 .. 0;
      UC             at 0 range 1 .. 1;
      DC             at 0 range 2 .. 2;
      MINC           at 0 range 3 .. 3;
      MAXC           at 0 range 4 .. 4;
      COV31          at 0 range 5 .. 5;
      COV15          at 0 range 6 .. 6;
      CZERO          at 0 range 7 .. 7;
      CZM            at 0 range 8 .. 8;
      CZME           at 0 range 9 .. 9;
      CZMZ           at 0 range 10 .. 10;
      STP            at 0 range 11 .. 11;
      MERR           at 0 range 12 .. 12;
      DERR           at 0 range 13 .. 13;
      DCHNG          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Status Register
   type STAT_Register is record
      --  Illegal Gray/Binary Code Interrupt
      IC             : Boolean := False;
      --  Up Count Interrupt
      UC             : Boolean := False;
      --  Down Count Interrupt
      DC             : Boolean := False;
      --  Min Count Interrupt
      MINC           : Boolean := False;
      --  Max Count Interrupt
      MAXC           : Boolean := False;
      --  Bit 31 Overflow Interrupt
      COV31          : Boolean := False;
      --  Bit 15 Overflow Interrupt
      COV15          : Boolean := False;
      --  CNT_CNTR Counts To Zero Interrupt
      CZERO          : Boolean := False;
      --  CZM Pin/Pushbutton Interrupt
      CZM            : Boolean := False;
      --  Zero Marker Error Interrupt
      CZME           : Boolean := False;
      --  Counter Zeroed By Zero Marker Interrupt
      CZMZ           : Boolean := False;
      --  Stop Detect Interrupt
      STP            : Boolean := False;
      --  M Value Programming Error Interrupt
      MERR           : Boolean := False;
      --  Direction Error Interrupt
      DERR           : Boolean := False;
      --  Direction Change Interrupt Enable
      DCHNG          : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      IC             at 0 range 0 .. 0;
      UC             at 0 range 1 .. 1;
      DC             at 0 range 2 .. 2;
      MINC           at 0 range 3 .. 3;
      MAXC           at 0 range 4 .. 4;
      COV31          at 0 range 5 .. 5;
      COV15          at 0 range 6 .. 6;
      CZERO          at 0 range 7 .. 7;
      CZM            at 0 range 8 .. 8;
      CZME           at 0 range 9 .. 9;
      CZMZ           at 0 range 10 .. 10;
      STP            at 0 range 11 .. 11;
      MERR           at 0 range 12 .. 12;
      DERR           at 0 range 13 .. 13;
      DCHNG          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Command Register
   type CMD_Register is record
      --  Write 1 CNTR to Zero
      W1LCNTZERO     : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Write 1 CNTR Load from MIN
      W1LCNTMIN      : Boolean := False;
      --  Write 1 CNTR Load from MAX
      W1LCNTMAX      : Boolean := False;
      --  Write 1 MIN to Zero
      W1LMINZERO     : Boolean := False;
      --  Write 1 MIN Capture from CNTR
      W1LMINCNT      : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Write 1 MIN Copy from MAX
      W1LMINMAX      : Boolean := False;
      --  Write 1 MAX to Zero
      W1LMAXZERO     : Boolean := False;
      --  Write 1 MAX Capture from CNTR
      W1LMAXCNT      : Boolean := False;
      --  Write 1 MAX Copy from MIN
      W1LMAXMIN      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write 1 Zero Marker Clear Once Enable
      W1ZMONCE       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      W1LCNTZERO     at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      W1LCNTMIN      at 0 range 2 .. 2;
      W1LCNTMAX      at 0 range 3 .. 3;
      W1LMINZERO     at 0 range 4 .. 4;
      W1LMINCNT      at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      W1LMINMAX      at 0 range 7 .. 7;
      W1LMAXZERO     at 0 range 8 .. 8;
      W1LMAXCNT      at 0 range 9 .. 9;
      W1LMAXMIN      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      W1ZMONCE       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype DEBNCE_DPRESCALE_Field is HAL.UInt5;

   --  Debounce Register
   type DEBNCE_Register is record
      --  Debounce Prescale
      DPRESCALE     : DEBNCE_DPRESCALE_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBNCE_Register use record
      DPRESCALE     at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype MDIV_MDIV_Field is HAL.UInt16;

   --  M Value for Divider
   type MDIV_Register is record
      --  M Value for Divider
      MDIV           : MDIV_MDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDIV_Register use record
      MDIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype NDIV_NDIV_Field is HAL.UInt16;

   --  N Value for Divider
   type NDIV_Register is record
      --  N Value for Divider
      NDIV           : NDIV_NDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NDIV_Register use record
      NDIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CNT
   type CNT0_Peripheral is record
      --  Configuration Register
      CFG    : aliased CFG_Register;
      --  Interrupt Mask Register
      IMSK   : aliased IMSK_Register;
      --  Status Register
      STAT   : aliased STAT_Register;
      --  Command Register
      CMD    : aliased CMD_Register;
      --  Debounce Register
      DEBNCE : aliased DEBNCE_Register;
      --  Counter Register
      CNTR   : aliased HAL.UInt32;
      --  Maximum Count Register
      MAX    : aliased HAL.UInt32;
      --  Minimum Count Register
      MIN    : aliased HAL.UInt32;
      --  M Value for Divider
      MDIV   : aliased MDIV_Register;
      --  N Value for Divider
      NDIV   : aliased NDIV_Register;
   end record
     with Volatile;

   for CNT0_Peripheral use record
      CFG    at 16#0# range 0 .. 31;
      IMSK   at 16#4# range 0 .. 31;
      STAT   at 16#8# range 0 .. 31;
      CMD    at 16#C# range 0 .. 31;
      DEBNCE at 16#10# range 0 .. 31;
      CNTR   at 16#14# range 0 .. 31;
      MAX    at 16#18# range 0 .. 31;
      MIN    at 16#1C# range 0 .. 31;
      MDIV   at 16#20# range 0 .. 31;
      NDIV   at 16#24# range 0 .. 31;
   end record;

   --  CNT
   CNT0_Periph : aliased CNT0_Peripheral
     with Import, Address => System'To_Address (16#40022000#);

end NRF_SVD.CNT0;
