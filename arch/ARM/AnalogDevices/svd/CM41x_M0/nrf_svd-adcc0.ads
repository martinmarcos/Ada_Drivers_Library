--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADCC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CTL_TRGOE array
   type CTL_TRGOE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_TRGOE
   type CTL_TRGOE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRGOE as a value
            Val : HAL.UInt2;
         when True =>
            --  TRGOE as an array
            Arr : CTL_TRGOE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_TRGOE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CTL_TRGSEL0_Field is HAL.UInt3;
   subtype CTL_TRGSEL1_Field is HAL.UInt3;

   --  CTL_CKPOL array
   type CTL_CKPOL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_CKPOL
   type CTL_CKPOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CKPOL as a value
            Val : HAL.UInt2;
         when True =>
            --  CKPOL as an array
            Arr : CTL_CKPOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_CKPOL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CTL_CSPOL array
   type CTL_CSPOL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_CSPOL
   type CTL_CSPOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CSPOL as a value
            Val : HAL.UInt2;
         when True =>
            --  CSPOL as an array
            Arr : CTL_CSPOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_CSPOL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CTL_TIDLE array
   type CTL_TIDLE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_TIDLE
   type CTL_TIDLE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIDLE as a value
            Val : HAL.UInt2;
         when True =>
            --  TIDLE as an array
            Arr : CTL_TIDLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_TIDLE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CTL_DSWP array
   type CTL_DSWP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_DSWP
   type CTL_DSWP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DSWP as a value
            Val : HAL.UInt2;
         when True =>
            --  DSWP as an array
            Arr : CTL_DSWP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_DSWP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CTL_LSBF array
   type CTL_LSBF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_LSBF
   type CTL_LSBF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LSBF as a value
            Val : HAL.UInt2;
         when True =>
            --  LSBF as an array
            Arr : CTL_LSBF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_LSBF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CTL_TRGIE array
   type CTL_TRGIE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTL_TRGIE
   type CTL_TRGIE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRGIE as a value
            Val : HAL.UInt2;
         when True =>
            --  TRGIE as an array
            Arr : CTL_TRGIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTL_TRGIE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control Register
   type CTL_Register is record
      --  Enable ADCC Operation
      EN             : Boolean := False;
      --  Timer 1 Enable
      TMR1EN         : Boolean := False;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  AFE Type Selection
      MODE           : Boolean := False;
      --  Control Data Size
      CSIZE          : Boolean := False;
      --  Data Size
      DSIZE          : Boolean := False;
      --  Trigger Output Enable 0
      TRGOE          : CTL_TRGOE_Field := (As_Array => False, Val => 16#0#);
      --  Trigger Select 0
      TRGSEL0        : CTL_TRGSEL0_Field := 16#0#;
      --  Trigger Polarity 0
      TRGPOL0        : Boolean := False;
      --  Trigger Select 1
      TRGSEL1        : CTL_TRGSEL1_Field := 16#0#;
      --  Trigger Polarity 1
      TRGPOL1        : Boolean := False;
      --  Clock Polarity 0
      CKPOL          : CTL_CKPOL_Field := (As_Array => False, Val => 16#0#);
      --  Chip Select Polarity 0
      CSPOL          : CTL_CSPOL_Field := (As_Array => False, Val => 16#0#);
      --  Transmit Idle 0
      TIDLE          : CTL_TIDLE_Field := (As_Array => False, Val => 16#0#);
      --  Data Swap 0
      DSWP           : CTL_DSWP_Field := (As_Array => False, Val => 16#0#);
      --  LSB First 0
      LSBF           : CTL_LSBF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Trigger Input Enable 0
      TRGIE          : CTL_TRGIE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN             at 0 range 0 .. 0;
      TMR1EN         at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      MODE           at 0 range 3 .. 3;
      CSIZE          at 0 range 4 .. 4;
      DSIZE          at 0 range 5 .. 5;
      TRGOE          at 0 range 6 .. 7;
      TRGSEL0        at 0 range 8 .. 10;
      TRGPOL0        at 0 range 11 .. 11;
      TRGSEL1        at 0 range 12 .. 14;
      TRGPOL1        at 0 range 15 .. 15;
      CKPOL          at 0 range 16 .. 17;
      CSPOL          at 0 range 18 .. 19;
      TIDLE          at 0 range 20 .. 21;
      DSWP           at 0 range 22 .. 23;
      LSBF           at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      TRGIE          at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ERRSTAT_TRGOV array
   type ERRSTAT_TRGOV_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRSTAT_TRGOV
   type ERRSTAT_TRGOV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRGOV as a value
            Val : HAL.UInt2;
         when True =>
            --  TRGOV as an array
            Arr : ERRSTAT_TRGOV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRSTAT_TRGOV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRSTAT_BWERR array
   type ERRSTAT_BWERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRSTAT_BWERR
   type ERRSTAT_BWERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BWERR as a value
            Val : HAL.UInt2;
         when True =>
            --  BWERR as an array
            Arr : ERRSTAT_BWERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRSTAT_BWERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRSTAT_MERR array
   type ERRSTAT_MERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRSTAT_MERR
   type ERRSTAT_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt2;
         when True =>
            --  MERR as an array
            Arr : ERRSTAT_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRSTAT_MERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Error Status Register
   type ERRSTAT_Register is record
      --  Trigger Overrun 0 Status
      TRGOV         : ERRSTAT_TRGOV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Bandwidth Monitor Error 0 Status
      BWERR         : ERRSTAT_BWERR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Memory Response Error 0 Status
      MERR          : ERRSTAT_MERR_Field := (As_Array => False, Val => 16#0#);
      --  Read-only. Event Collision Error Status
      ECOL          : Boolean := False;
      --  Read-only. Event Miss Error Status
      EMIS          : Boolean := False;
      --  Read-only. Event data Overflow Error Status
      DATOVF        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRSTAT_Register use record
      TRGOV         at 0 range 0 .. 1;
      BWERR         at 0 range 2 .. 3;
      MERR          at 0 range 4 .. 5;
      ECOL          at 0 range 6 .. 6;
      EMIS          at 0 range 7 .. 7;
      DATOVF        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  ERRMSK_TRGOV array
   type ERRMSK_TRGOV_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_TRGOV
   type ERRMSK_TRGOV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRGOV as a value
            Val : HAL.UInt2;
         when True =>
            --  TRGOV as an array
            Arr : ERRMSK_TRGOV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_TRGOV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_BWERR array
   type ERRMSK_BWERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_BWERR
   type ERRMSK_BWERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BWERR as a value
            Val : HAL.UInt2;
         when True =>
            --  BWERR as an array
            Arr : ERRMSK_BWERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_BWERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_MERR array
   type ERRMSK_MERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_MERR
   type ERRMSK_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt2;
         when True =>
            --  MERR as an array
            Arr : ERRMSK_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_MERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Error Mask Register
   type ERRMSK_Register is record
      --  Trigger Overrun 0 Error Mask
      TRGOV         : ERRMSK_TRGOV_Field := (As_Array => False, Val => 16#0#);
      --  Bandwidth Monitor Error 0 Mask
      BWERR         : ERRMSK_BWERR_Field := (As_Array => False, Val => 16#0#);
      --  Memory Response Error 0 Mask
      MERR          : ERRMSK_MERR_Field := (As_Array => False, Val => 16#0#);
      --  Event Collision Error Mask
      ECOL          : Boolean := False;
      --  Event Miss Error Mask
      EMIS          : Boolean := False;
      --  Event data Overflow Error Mask
      DATOVF        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRMSK_Register use record
      TRGOV         at 0 range 0 .. 1;
      BWERR         at 0 range 2 .. 3;
      MERR          at 0 range 4 .. 5;
      ECOL          at 0 range 6 .. 6;
      EMIS          at 0 range 7 .. 7;
      DATOVF        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  ERRMSK_SET_TRGOV array
   type ERRMSK_SET_TRGOV_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_SET_TRGOV
   type ERRMSK_SET_TRGOV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRGOV as a value
            Val : HAL.UInt2;
         when True =>
            --  TRGOV as an array
            Arr : ERRMSK_SET_TRGOV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_SET_TRGOV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_SET_BWERR array
   type ERRMSK_SET_BWERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_SET_BWERR
   type ERRMSK_SET_BWERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BWERR as a value
            Val : HAL.UInt2;
         when True =>
            --  BWERR as an array
            Arr : ERRMSK_SET_BWERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_SET_BWERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_SET_MERR array
   type ERRMSK_SET_MERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_SET_MERR
   type ERRMSK_SET_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt2;
         when True =>
            --  MERR as an array
            Arr : ERRMSK_SET_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_SET_MERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Error Mask Set Register
   type ERRMSK_SET_Register is record
      --  Trigger Overrun 0 Error Mask
      TRGOV         : ERRMSK_SET_TRGOV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Bandwidth Monitor Error 0 Mask
      BWERR         : ERRMSK_SET_BWERR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Memory Response Error 0 Mask
      MERR          : ERRMSK_SET_MERR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Event Collision Error Mask
      ECOL          : Boolean := False;
      --  Event Miss Error Mask
      EMIS          : Boolean := False;
      --  Event data Overflow Error Mask
      DATOVF        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRMSK_SET_Register use record
      TRGOV         at 0 range 0 .. 1;
      BWERR         at 0 range 2 .. 3;
      MERR          at 0 range 4 .. 5;
      ECOL          at 0 range 6 .. 6;
      EMIS          at 0 range 7 .. 7;
      DATOVF        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  ERRMSK_CLR_TRGOV array
   type ERRMSK_CLR_TRGOV_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_CLR_TRGOV
   type ERRMSK_CLR_TRGOV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRGOV as a value
            Val : HAL.UInt2;
         when True =>
            --  TRGOV as an array
            Arr : ERRMSK_CLR_TRGOV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_CLR_TRGOV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_CLR_BWERR array
   type ERRMSK_CLR_BWERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_CLR_BWERR
   type ERRMSK_CLR_BWERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BWERR as a value
            Val : HAL.UInt2;
         when True =>
            --  BWERR as an array
            Arr : ERRMSK_CLR_BWERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_CLR_BWERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ERRMSK_CLR_MERR array
   type ERRMSK_CLR_MERR_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ERRMSK_CLR_MERR
   type ERRMSK_CLR_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt2;
         when True =>
            --  MERR as an array
            Arr : ERRMSK_CLR_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ERRMSK_CLR_MERR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Error Mask Clear Register
   type ERRMSK_CLR_Register is record
      --  Trigger Overrun 0 Error Mask
      TRGOV         : ERRMSK_CLR_TRGOV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Bandwidth Monitor Error 0 Mask
      BWERR         : ERRMSK_CLR_BWERR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Memory Response Error 0 Mask
      MERR          : ERRMSK_CLR_MERR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Event Collision Error Mask
      ECOL          : Boolean := False;
      --  Event Miss Error Mask
      EMIS          : Boolean := False;
      --  Event data Overflow Error Mask
      DATOVF        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRMSK_CLR_Register use record
      TRGOV         at 0 range 0 .. 1;
      BWERR         at 0 range 2 .. 3;
      MERR          at 0 range 4 .. 5;
      ECOL          at 0 range 6 .. 6;
      EMIS          at 0 range 7 .. 7;
      DATOVF        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  FISTAT_FINT array
   type FISTAT_FINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FISTAT_FINT
   type FISTAT_FINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FINT as a value
            Val : HAL.UInt2;
         when True =>
            --  FINT as an array
            Arr : FISTAT_FINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FISTAT_FINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FISTAT_LFINT array
   type FISTAT_LFINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FISTAT_LFINT
   type FISTAT_LFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LFINT as a value
            Val : HAL.UInt2;
         when True =>
            --  LFINT as an array
            Arr : FISTAT_LFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FISTAT_LFINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Frame Interrupt Status Register
   type FISTAT_Register is record
      --  Frame Interrupt 0
      FINT          : FISTAT_FINT_Field := (As_Array => False, Val => 16#0#);
      --  Last Frame Interrupt 0
      LFINT         : FISTAT_LFINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FISTAT_Register use record
      FINT          at 0 range 0 .. 1;
      LFINT         at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  FIMSK_FINT array
   type FIMSK_FINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FIMSK_FINT
   type FIMSK_FINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FINT as a value
            Val : HAL.UInt2;
         when True =>
            --  FINT as an array
            Arr : FIMSK_FINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FIMSK_FINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FIMSK_LFINT array
   type FIMSK_LFINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FIMSK_LFINT
   type FIMSK_LFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LFINT as a value
            Val : HAL.UInt2;
         when True =>
            --  LFINT as an array
            Arr : FIMSK_LFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FIMSK_LFINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Frame Interrupt Mask Register
   type FIMSK_Register is record
      --  Frame Interrupt 0 Mask
      FINT          : FIMSK_FINT_Field := (As_Array => False, Val => 16#0#);
      --  Last Frame Interrupt 0 Mask
      LFINT         : FIMSK_LFINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIMSK_Register use record
      FINT          at 0 range 0 .. 1;
      LFINT         at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  FIMSK_SET_FINT array
   type FIMSK_SET_FINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FIMSK_SET_FINT
   type FIMSK_SET_FINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FINT as a value
            Val : HAL.UInt2;
         when True =>
            --  FINT as an array
            Arr : FIMSK_SET_FINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FIMSK_SET_FINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FIMSK_SET_LFINT array
   type FIMSK_SET_LFINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FIMSK_SET_LFINT
   type FIMSK_SET_LFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LFINT as a value
            Val : HAL.UInt2;
         when True =>
            --  LFINT as an array
            Arr : FIMSK_SET_LFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FIMSK_SET_LFINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Frame Interrupt Mask Set Register
   type FIMSK_SET_Register is record
      --  Frame Interrupt 0 Mask
      FINT          : FIMSK_SET_FINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Last Frame Interrupt 0 Mask
      LFINT         : FIMSK_SET_LFINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIMSK_SET_Register use record
      FINT          at 0 range 0 .. 1;
      LFINT         at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  FIMSK_CLR_FINT array
   type FIMSK_CLR_FINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FIMSK_CLR_FINT
   type FIMSK_CLR_FINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FINT as a value
            Val : HAL.UInt2;
         when True =>
            --  FINT as an array
            Arr : FIMSK_CLR_FINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FIMSK_CLR_FINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FIMSK_CLR_LFINT array
   type FIMSK_CLR_LFINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FIMSK_CLR_LFINT
   type FIMSK_CLR_LFINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LFINT as a value
            Val : HAL.UInt2;
         when True =>
            --  LFINT as an array
            Arr : FIMSK_CLR_LFINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FIMSK_CLR_LFINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Frame Interrupt Mask Clear Register
   type FIMSK_CLR_Register is record
      --  Frame Interrupt 0 Mask
      FINT          : FIMSK_CLR_FINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Last Frame Interrupt 0 Mask
      LFINT         : FIMSK_CLR_LFINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIMSK_CLR_Register use record
      FINT          at 0 range 0 .. 1;
      LFINT         at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CBSIZ_VALUE_Field is HAL.UInt16;

   --  Circular Buffer Size 0 Register
   type CBSIZ_Register is record
      --  Circular Buffer Size 0 Value
      VALUE          : CBSIZ_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CBSIZ_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCA_CKDIV_Field is HAL.UInt16;
   subtype TCA_NCK_Field is HAL.UInt4;
   subtype TCA_CKTRGSEL_Field is HAL.UInt3;

   --  Timing Control A (ADC0) Register
   type TCA_Register is record
      --  Clock Divisor
      CKDIV          : TCA_CKDIV_Field := 16#0#;
      --  Number of Clocks
      NCK            : TCA_NCK_Field := 16#0#;
      --  Enable bit for Clock synchronization based on trigger
      SYNCCK         : Boolean := False;
      --  Trigger polarity for SYNCCK feature
      CKTRGRE        : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger selection for SYNCCK feature
      CKTRGSEL       : TCA_CKTRGSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCA_Register use record
      CKDIV          at 0 range 0 .. 15;
      NCK            at 0 range 16 .. 19;
      SYNCCK         at 0 range 20 .. 20;
      CKTRGRE        at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CKTRGSEL       at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TCB_TCSCK_Field is HAL.UInt8;
   subtype TCB_TCKCS_Field is HAL.UInt8;
   subtype TCB_TCSCS_Field is HAL.UInt8;

   --  Timing Control B (ADC0) Register
   type TCB_Register is record
      --  Time CS to CK Setup
      TCSCK          : TCB_TCSCK_Field := 16#0#;
      --  Time CK to CS Hold
      TCKCS          : TCB_TCKCS_Field := 16#0#;
      --  Timing CS to CS Delay
      TCSCS          : TCB_TCSCS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCB_Register use record
      TCSCK          at 0 range 0 .. 7;
      TCKCS          at 0 range 8 .. 15;
      TCSCS          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ------------------------------
   -- EVTn cluster's Registers --
   ------------------------------

   subtype EVCTL_EVTn_CTLWD_Field is HAL.UInt16;
   subtype EVCTL_EVTn_EVTOFS_Field is HAL.UInt12;

   --  Event n Control Register
   type EVCTL_EVTn_Register is record
      --  Control Word for ADC
      CTLWD          : EVCTL_EVTn_CTLWD_Field := 16#0#;
      --  ADC Select
      ADCSEL         : Boolean := False;
      --  Simultaneous Sampling Enable
      SIMSAMP        : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Timer Select.
      TMRSEL         : Boolean := False;
      --  Event Offset
      EVTOFS         : EVCTL_EVTn_EVTOFS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVCTL_EVTn_Register use record
      CTLWD          at 0 range 0 .. 15;
      ADCSEL         at 0 range 16 .. 16;
      SIMSAMP        at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      TMRSEL         at 0 range 19 .. 19;
      EVTOFS         at 0 range 20 .. 31;
   end record;

   --  Event registers for each event
   type EVTn_Cluster is record
      --  Event n Time Register
      EVT   : aliased HAL.UInt32;
      --  Event n Control Register
      EVCTL : aliased EVCTL_EVTn_Register;
   end record
     with Volatile, Size => 64;

   for EVTn_Cluster use record
      EVT   at 16#0# range 0 .. 31;
      EVCTL at 16#4# range 0 .. 31;
   end record;

   --  Event registers for each event
   type EVTn_Clusters is array (0 .. 31) of EVTn_Cluster;

   subtype NUMFRAM_VALUE_Field is HAL.UInt16;

   --  Timer0 Frame Limit Count Register
   type NUMFRAM_Register is record
      --  Number of TIMER frames
      VALUE          : NUMFRAM_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NUMFRAM_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype T0STAT_CURFR_Field is HAL.UInt16;

   --  Timer 0 Status Register
   type T0STAT_Register is record
      --  Read-only. Current Frame Count
      CURFR          : T0STAT_CURFR_Field;
      --  Read-only. DMA Pending Status
      DPND           : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0STAT_Register use record
      CURFR          at 0 range 0 .. 15;
      DPND           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype T1STAT_CURFR_Field is HAL.UInt16;

   --  Timer 1 Status Register
   type T1STAT_Register is record
      --  Read-only. Current Frame Count
      CURFR          : T1STAT_CURFR_Field;
      --  Read-only. DMA Pending Status
      DPND           : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for T1STAT_Register use record
      CURFR          at 0 range 0 .. 15;
      DPND           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype EVDAT_VALUE_Field is HAL.UInt16;

   --  Event n Data Register
   type EVDAT_Register is record
      --  Read-only. Event Data Sampled from ADC
      VALUE          : EVDAT_VALUE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVDAT_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Event n Data Register
   type EVDAT_Registers is array (0 .. 31) of EVDAT_Register
     with Volatile;

   subtype EVSTAT_DLYCNT_Field is HAL.UInt16;

   --  Event n Status Register
   type EVSTAT_Register is record
      --  Read-only. Delay Count
      DLYCNT         : EVSTAT_DLYCNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSTAT_Register use record
      DLYCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Event n Status Register
   type EVSTAT_Registers is array (0 .. 31) of EVSTAT_Register
     with Volatile;

   subtype CBNUM_VALUE_Field is HAL.UInt16;

   --  Timer0 Circular Buffer DMA Wrap Number Register
   type CBNUM_Register is record
      --  Read-only. CB Value
      VALUE          : CBNUM_VALUE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CBNUM_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRGCNT_TRGCNT_Field is HAL.UInt16;

   --  Trigger Count TIMER0 Register
   type TRGCNT_Register is record
      --  Read-only. Trigger Count
      TRGCNT         : TRGCNT_TRGCNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGCNT_Register use record
      TRGCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADCRW_DAT_Field is HAL.UInt23;
   subtype ADCRW_CTLW_Field is HAL.UInt8;

   --  ADC2 Interface RW Access Register
   type ADCRW_Register is record
      --  Read-only. Pending read/write status bit
      PND  : Boolean := False;
      --  Read/Write data
      DAT  : ADCRW_DAT_Field := 16#0#;
      --  Control Word Sent to the ADC
      CTLW : ADCRW_CTLW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCRW_Register use record
      PND  at 0 range 0 .. 0;
      DAT  at 0 range 1 .. 23;
      CTLW at 0 range 24 .. 31;
   end record;

   subtype NUMFRCNT_NUMFRCNT_Field is HAL.UInt16;

   --  Private register for Engg mode access to TIMER0 frame counter
   type NUMFRCNT_Register is record
      --  Field to read/write NUMFRCNT counter in design, in ENGGMODE
      NUMFRCNT       : NUMFRCNT_NUMFRCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NUMFRCNT_Register use record
      NUMFRCNT       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ------------------------------
   -- EVTn cluster's Registers --
   ------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  ADC Controller
   type ADCC0_Peripheral is record
      --  Control Register
      CTL        : aliased CTL_Register;
      --  Error Status Register
      ERRSTAT    : aliased ERRSTAT_Register;
      --  Error Mask Register
      ERRMSK     : aliased ERRMSK_Register;
      --  Error Mask Set Register
      ERRMSK_SET : aliased ERRMSK_SET_Register;
      --  Error Mask Clear Register
      ERRMSK_CLR : aliased ERRMSK_CLR_Register;
      --  Event Interrupt Status Register
      EISTAT     : aliased HAL.UInt32;
      --  Event Interrupt Mask Register
      EIMSK      : aliased HAL.UInt32;
      --  Event Interrupt Mask Set Register
      EIMSK_SET  : aliased HAL.UInt32;
      --  Event Interrupt Mask Clear Register
      EIMSK_CLR  : aliased HAL.UInt32;
      --  Frame Interrupt Status Register
      FISTAT     : aliased FISTAT_Register;
      --  Frame Interrupt Mask Register
      FIMSK      : aliased FIMSK_Register;
      --  Frame Interrupt Mask Set Register
      FIMSK_SET  : aliased FIMSK_SET_Register;
      --  Frame Interrupt Mask Clear Register
      FIMSK_CLR  : aliased FIMSK_CLR_Register;
      --  Event Enable Register
      EVTEN      : aliased HAL.UInt32;
      --  Event Enable Set Register
      EVTEN_SET  : aliased HAL.UInt32;
      --  Event Enable Clear Register
      EVTEN_CLR  : aliased HAL.UInt32;
      --  Event Collision Status Register
      ECOL       : aliased HAL.UInt32;
      --  Event Miss Status Register
      EMISS      : aliased HAL.UInt32;
      --  Base Pointer 0 Register
      BPTR0      : aliased HAL.UInt32;
      --  Frame Increment 0 Register
      FRINC0     : aliased HAL.UInt32;
      --  Circular Buffer Size 0 Register
      CBSIZ0     : aliased CBSIZ_Register;
      --  Timing Control A (ADC0) Register
      TCA0       : aliased TCA_Register;
      --  Timing Control B (ADC0) Register
      TCB0       : aliased TCB_Register;
      --  Bandwidth Monitor 0 Register
      BWMON0     : aliased HAL.UInt32;
      --  DMA Base Pointer 1 Register
      BPTR1      : aliased HAL.UInt32;
      --  Frame Increment 1 Register
      FRINC1     : aliased HAL.UInt32;
      --  Circular Buffer Size 1 Register
      CBSIZ1     : aliased CBSIZ_Register;
      --  Timing Control A (ADC1) Register
      TCA1       : aliased TCA_Register;
      --  Timing Control B (ADC1) Register
      TCB1       : aliased TCB_Register;
      --  Bandwidth Monitor 1 Register
      BWMON1     : aliased HAL.UInt32;
      --  Event registers for each event
      EVTn       : aliased EVTn_Clusters;
      --  Timer0 Frame Limit Count Register
      NUMFRAM0   : aliased NUMFRAM_Register;
      --  Timer1 Frame Limit Count Register
      NUMFRAM1   : aliased NUMFRAM_Register;
      --  Data overflow indication register
      DATOVF     : aliased HAL.UInt32;
      --  Pending Events Status Register
      EPND       : aliased HAL.UInt32;
      --  Timer 0 Status Register
      T0STAT     : aliased T0STAT_Register;
      --  Timer 0 Current Count Register
      TMR0       : aliased HAL.UInt32;
      --  Timer 1 Status Register
      T1STAT     : aliased T1STAT_Register;
      --  Timer 1 Current Count Register
      TMR1       : aliased HAL.UInt32;
      --  Event n Data Register
      EVDAT      : aliased EVDAT_Registers;
      --  Event n Status Register
      EVSTAT     : aliased EVSTAT_Registers;
      --  Timer0 Circular Buffer DMA Wrap Number Register
      CBNUM0     : aliased CBNUM_Register;
      --  Timer1 Circular Buffer DMA Wrap Number Register
      CBNUM1     : aliased CBNUM_Register;
      --  Trigger Count TIMER0 Register
      TRGCNT0    : aliased TRGCNT_Register;
      --  Trigger Count TIMER1 Register
      TRGCNT1    : aliased TRGCNT_Register;
      --  ADC2 Interface RW Access Register
      ADCRW0     : aliased ADCRW_Register;
      --  ADC2 Interface RW Access Register
      ADCRW1     : aliased ADCRW_Register;
      --  Private register for Engg mode access to TIMER0 frame counter
      NUMFRCNT0  : aliased NUMFRCNT_Register;
      --  Private register for Engg mode access to TIMER1 frame counter
      NUMFRCNT1  : aliased NUMFRCNT_Register;
   end record
     with Volatile;

   for ADCC0_Peripheral use record
      CTL        at 16#0# range 0 .. 31;
      ERRSTAT    at 16#4# range 0 .. 31;
      ERRMSK     at 16#8# range 0 .. 31;
      ERRMSK_SET at 16#C# range 0 .. 31;
      ERRMSK_CLR at 16#10# range 0 .. 31;
      EISTAT     at 16#14# range 0 .. 31;
      EIMSK      at 16#18# range 0 .. 31;
      EIMSK_SET  at 16#1C# range 0 .. 31;
      EIMSK_CLR  at 16#20# range 0 .. 31;
      FISTAT     at 16#24# range 0 .. 31;
      FIMSK      at 16#28# range 0 .. 31;
      FIMSK_SET  at 16#2C# range 0 .. 31;
      FIMSK_CLR  at 16#30# range 0 .. 31;
      EVTEN      at 16#34# range 0 .. 31;
      EVTEN_SET  at 16#38# range 0 .. 31;
      EVTEN_CLR  at 16#3C# range 0 .. 31;
      ECOL       at 16#40# range 0 .. 31;
      EMISS      at 16#44# range 0 .. 31;
      BPTR0      at 16#48# range 0 .. 31;
      FRINC0     at 16#4C# range 0 .. 31;
      CBSIZ0     at 16#50# range 0 .. 31;
      TCA0       at 16#54# range 0 .. 31;
      TCB0       at 16#58# range 0 .. 31;
      BWMON0     at 16#5C# range 0 .. 31;
      BPTR1      at 16#64# range 0 .. 31;
      FRINC1     at 16#68# range 0 .. 31;
      CBSIZ1     at 16#6C# range 0 .. 31;
      TCA1       at 16#70# range 0 .. 31;
      TCB1       at 16#74# range 0 .. 31;
      BWMON1     at 16#78# range 0 .. 31;
      EVTn       at 16#7C# range 0 .. 2047;
      NUMFRAM0   at 16#17C# range 0 .. 31;
      NUMFRAM1   at 16#180# range 0 .. 31;
      DATOVF     at 16#184# range 0 .. 31;
      EPND       at 16#200# range 0 .. 31;
      T0STAT     at 16#204# range 0 .. 31;
      TMR0       at 16#208# range 0 .. 31;
      T1STAT     at 16#20C# range 0 .. 31;
      TMR1       at 16#210# range 0 .. 31;
      EVDAT      at 16#214# range 0 .. 1023;
      EVSTAT     at 16#294# range 0 .. 1023;
      CBNUM0     at 16#314# range 0 .. 31;
      CBNUM1     at 16#318# range 0 .. 31;
      TRGCNT0    at 16#31C# range 0 .. 31;
      TRGCNT1    at 16#320# range 0 .. 31;
      ADCRW0     at 16#404# range 0 .. 31;
      ADCRW1     at 16#408# range 0 .. 31;
      NUMFRCNT0  at 16#430# range 0 .. 31;
      NUMFRCNT1  at 16#434# range 0 .. 31;
   end record;

   --  ADC Controller
   ADCC0_Periph : aliased ADCC0_Peripheral
     with Import, Address => System'To_Address (16#4100B000#);

   --  ADC Controller
   ADCC1_Periph : aliased ADCC0_Peripheral
     with Import, Address => System'To_Address (16#4004A000#);

end NRF_SVD.ADCC0;
