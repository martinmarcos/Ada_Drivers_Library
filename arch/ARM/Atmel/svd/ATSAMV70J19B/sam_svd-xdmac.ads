--  This spec has been automatically generated from ATSAMV70J19B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Extensible DMA Controller
package SAM_SVD.XDMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype XDMAC_GTYPE_NB_CH_Field is HAL.UInt5;
   subtype XDMAC_GTYPE_FIFO_SZ_Field is HAL.UInt11;
   subtype XDMAC_GTYPE_NB_REQ_Field is HAL.UInt7;

   --  Global Type Register
   type XDMAC_GTYPE_Register is record
      --  Read-only. Number of Channels Minus One
      NB_CH          : XDMAC_GTYPE_NB_CH_Field;
      --  Read-only. Number of Bytes
      FIFO_SZ        : XDMAC_GTYPE_FIFO_SZ_Field;
      --  Read-only. Number of Peripheral Requests Minus One
      NB_REQ         : XDMAC_GTYPE_NB_REQ_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GTYPE_Register use record
      NB_CH          at 0 range 0 .. 4;
      FIFO_SZ        at 0 range 5 .. 15;
      NB_REQ         at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Global Configuration Register
   type XDMAC_GCFG_Register is record
      --  Configuration Registers Clock Gating Disable
      CGDISREG      : Boolean := False;
      --  Pipeline Clock Gating Disable
      CGDISPIPE     : Boolean := False;
      --  FIFO Clock Gating Disable
      CGDISFIFO     : Boolean := False;
      --  Bus Interface Clock Gating Disable
      CGDISIF       : Boolean := False;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Boundary X Kilobyte Enable
      BXKBEN        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GCFG_Register use record
      CGDISREG      at 0 range 0 .. 0;
      CGDISPIPE     at 0 range 1 .. 1;
      CGDISFIFO     at 0 range 2 .. 2;
      CGDISIF       at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      BXKBEN        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  XDMAC_GWAC_PW array element
   subtype XDMAC_GWAC_PW_Element is HAL.UInt4;

   --  XDMAC_GWAC_PW array
   type XDMAC_GWAC_PW_Field_Array is array (0 .. 3) of XDMAC_GWAC_PW_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for XDMAC_GWAC_PW
   type XDMAC_GWAC_PW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PW as a value
            Val : HAL.UInt16;
         when True =>
            --  PW as an array
            Arr : XDMAC_GWAC_PW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for XDMAC_GWAC_PW_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Global Weighted Arbiter Configuration Register
   type XDMAC_GWAC_Register is record
      --  Pool Weight 0
      PW             : XDMAC_GWAC_PW_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GWAC_Register use record
      PW             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  XDMAC_GIE_IE array
   type XDMAC_GIE_IE_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GIE_IE
   type XDMAC_GIE_IE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IE as a value
            Val : HAL.UInt24;
         when True =>
            --  IE as an array
            Arr : XDMAC_GIE_IE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GIE_IE_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Enable Register
   type XDMAC_GIE_Register is record
      --  Write-only. XDMAC Channel 0 Interrupt Enable Bit
      IE             : XDMAC_GIE_IE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GIE_Register use record
      IE             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GID_ID array
   type XDMAC_GID_ID_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GID_ID
   type XDMAC_GID_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt24;
         when True =>
            --  ID as an array
            Arr : XDMAC_GID_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GID_ID_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Disable Register
   type XDMAC_GID_Register is record
      --  Write-only. XDMAC Channel 0 Interrupt Disable Bit
      ID             : XDMAC_GID_ID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GID_Register use record
      ID             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GIM_IM array
   type XDMAC_GIM_IM_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GIM_IM
   type XDMAC_GIM_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt24;
         when True =>
            --  IM as an array
            Arr : XDMAC_GIM_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GIM_IM_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Mask Register
   type XDMAC_GIM_Register is record
      --  Read-only. XDMAC Channel 0 Interrupt Mask Bit
      IM             : XDMAC_GIM_IM_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GIM_Register use record
      IM             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GIS_IS array
   type XDMAC_GIS_IS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GIS_IS
   type XDMAC_GIS_IS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IS as a value
            Val : HAL.UInt24;
         when True =>
            --  IS as an array
            Arr : XDMAC_GIS_IS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GIS_IS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Status Register
   type XDMAC_GIS_Register is record
      --  Read-only. XDMAC Channel 0 Interrupt Status Bit
      IS_k           : XDMAC_GIS_IS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GIS_Register use record
      IS_k           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GE_EN array
   type XDMAC_GE_EN_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GE_EN
   type XDMAC_GE_EN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EN as a value
            Val : HAL.UInt24;
         when True =>
            --  EN as an array
            Arr : XDMAC_GE_EN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GE_EN_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Enable Register
   type XDMAC_GE_Register is record
      --  Write-only. XDMAC Channel 0 Enable Bit
      EN             : XDMAC_GE_EN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GE_Register use record
      EN             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GD_DI array
   type XDMAC_GD_DI_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GD_DI
   type XDMAC_GD_DI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt24;
         when True =>
            --  DI as an array
            Arr : XDMAC_GD_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GD_DI_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Disable Register
   type XDMAC_GD_Register is record
      --  Write-only. XDMAC Channel 0 Disable Bit
      DI             : XDMAC_GD_DI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GD_Register use record
      DI             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GS_ST array
   type XDMAC_GS_ST_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GS_ST
   type XDMAC_GS_ST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ST as a value
            Val : HAL.UInt24;
         when True =>
            --  ST as an array
            Arr : XDMAC_GS_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GS_ST_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Status Register
   type XDMAC_GS_Register is record
      --  Read-only. XDMAC Channel 0 Status Bit
      ST             : XDMAC_GS_ST_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GS_Register use record
      ST             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GRS_RS array
   type XDMAC_GRS_RS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GRS_RS
   type XDMAC_GRS_RS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RS as a value
            Val : HAL.UInt24;
         when True =>
            --  RS as an array
            Arr : XDMAC_GRS_RS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GRS_RS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Read Suspend Register
   type XDMAC_GRS_Register is record
      --  XDMAC Channel 0 Read Suspend Bit
      RS             : XDMAC_GRS_RS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GRS_Register use record
      RS             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GWS_WS array
   type XDMAC_GWS_WS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GWS_WS
   type XDMAC_GWS_WS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WS as a value
            Val : HAL.UInt24;
         when True =>
            --  WS as an array
            Arr : XDMAC_GWS_WS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GWS_WS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Write Suspend Register
   type XDMAC_GWS_Register is record
      --  XDMAC Channel 0 Write Suspend Bit
      WS             : XDMAC_GWS_WS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GWS_Register use record
      WS             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GRWS_RWS array
   type XDMAC_GRWS_RWS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GRWS_RWS
   type XDMAC_GRWS_RWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RWS as a value
            Val : HAL.UInt24;
         when True =>
            --  RWS as an array
            Arr : XDMAC_GRWS_RWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GRWS_RWS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Read Write Suspend Register
   type XDMAC_GRWS_Register is record
      --  Write-only. XDMAC Channel 0 Read Write Suspend Bit
      RWS            : XDMAC_GRWS_RWS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GRWS_Register use record
      RWS            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GRWR_RWR array
   type XDMAC_GRWR_RWR_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GRWR_RWR
   type XDMAC_GRWR_RWR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RWR as a value
            Val : HAL.UInt24;
         when True =>
            --  RWR as an array
            Arr : XDMAC_GRWR_RWR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GRWR_RWR_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Read Write Resume Register
   type XDMAC_GRWR_Register is record
      --  Write-only. XDMAC Channel 0 Read Write Resume Bit
      RWR            : XDMAC_GRWR_RWR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GRWR_Register use record
      RWR            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GSWR_SWREQ array
   type XDMAC_GSWR_SWREQ_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GSWR_SWREQ
   type XDMAC_GSWR_SWREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWREQ as a value
            Val : HAL.UInt24;
         when True =>
            --  SWREQ as an array
            Arr : XDMAC_GSWR_SWREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GSWR_SWREQ_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Software Request Register
   type XDMAC_GSWR_Register is record
      --  Write-only. XDMAC Channel 0 Software Request Bit
      SWREQ          : XDMAC_GSWR_SWREQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GSWR_Register use record
      SWREQ          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GSWS_SWRS array
   type XDMAC_GSWS_SWRS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GSWS_SWRS
   type XDMAC_GSWS_SWRS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWRS as a value
            Val : HAL.UInt24;
         when True =>
            --  SWRS as an array
            Arr : XDMAC_GSWS_SWRS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GSWS_SWRS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Software Request Status Register
   type XDMAC_GSWS_Register is record
      --  Read-only. XDMAC Channel 0 Software Request Status Bit
      SWRS           : XDMAC_GSWS_SWRS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GSWS_Register use record
      SWRS           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GSWF_SWF array
   type XDMAC_GSWF_SWF_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GSWF_SWF
   type XDMAC_GSWF_SWF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWF as a value
            Val : HAL.UInt24;
         when True =>
            --  SWF as an array
            Arr : XDMAC_GSWF_SWF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GSWF_SWF_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Software Flush Request Register
   type XDMAC_GSWF_Register is record
      --  Write-only. XDMAC Channel 0 Software Flush Request Bit
      SWF            : XDMAC_GSWF_SWF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GSWF_Register use record
      SWF            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Channel Interrupt Enable Register (chid = 0)
   type CIE_Register is record
      --  Write-only. End of Block Interrupt Enable Bit
      BIE           : Boolean := False;
      --  Write-only. End of Linked List Interrupt Enable Bit
      LIE           : Boolean := False;
      --  Write-only. End of Disable Interrupt Enable Bit
      DIE           : Boolean := False;
      --  Write-only. End of Flush Interrupt Enable Bit
      FIE           : Boolean := False;
      --  Write-only. Read Bus Error Interrupt Enable Bit
      RBIE          : Boolean := False;
      --  Write-only. Write Bus Error Interrupt Enable Bit
      WBIE          : Boolean := False;
      --  Write-only. Request Overflow Error Interrupt Enable Bit
      ROIE          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIE_Register use record
      BIE           at 0 range 0 .. 0;
      LIE           at 0 range 1 .. 1;
      DIE           at 0 range 2 .. 2;
      FIE           at 0 range 3 .. 3;
      RBIE          at 0 range 4 .. 4;
      WBIE          at 0 range 5 .. 5;
      ROIE          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Channel Interrupt Disable Register (chid = 0)
   type CID_Register is record
      --  Write-only. End of Block Interrupt Disable Bit
      BID           : Boolean := False;
      --  Write-only. End of Linked List Interrupt Disable Bit
      LID           : Boolean := False;
      --  Write-only. End of Disable Interrupt Disable Bit
      DID           : Boolean := False;
      --  Write-only. End of Flush Interrupt Disable Bit
      FID           : Boolean := False;
      --  Write-only. Read Bus Error Interrupt Disable Bit
      RBEID         : Boolean := False;
      --  Write-only. Write Bus Error Interrupt Disable Bit
      WBEID         : Boolean := False;
      --  Write-only. Request Overflow Error Interrupt Disable Bit
      ROID          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CID_Register use record
      BID           at 0 range 0 .. 0;
      LID           at 0 range 1 .. 1;
      DID           at 0 range 2 .. 2;
      FID           at 0 range 3 .. 3;
      RBEID         at 0 range 4 .. 4;
      WBEID         at 0 range 5 .. 5;
      ROID          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Channel Interrupt Mask Register (chid = 0)
   type CIM_Register is record
      --  Read-only. End of Block Interrupt Mask Bit
      BIM           : Boolean;
      --  Read-only. End of Linked List Interrupt Mask Bit
      LIM           : Boolean;
      --  Read-only. End of Disable Interrupt Mask Bit
      DIM           : Boolean;
      --  Read-only. End of Flush Interrupt Mask Bit
      FIM           : Boolean;
      --  Read-only. Read Bus Error Interrupt Mask Bit
      RBEIM         : Boolean;
      --  Read-only. Write Bus Error Interrupt Mask Bit
      WBEIM         : Boolean;
      --  Read-only. Request Overflow Error Interrupt Mask Bit
      ROIM          : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIM_Register use record
      BIM           at 0 range 0 .. 0;
      LIM           at 0 range 1 .. 1;
      DIM           at 0 range 2 .. 2;
      FIM           at 0 range 3 .. 3;
      RBEIM         at 0 range 4 .. 4;
      WBEIM         at 0 range 5 .. 5;
      ROIM          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Channel Interrupt Status Register (chid = 0)
   type CIS_Register is record
      --  Read-only. End of Block Interrupt Status Bit
      BIS           : Boolean;
      --  Read-only. End of Linked List Interrupt Status Bit
      LIS           : Boolean;
      --  Read-only. End of Disable Interrupt Status Bit
      DIS           : Boolean;
      --  Read-only. End of Flush Interrupt Status Bit
      FIS           : Boolean;
      --  Read-only. Read Bus Error Interrupt Status Bit
      RBEIS         : Boolean;
      --  Read-only. Write Bus Error Interrupt Status Bit
      WBEIS         : Boolean;
      --  Read-only. Request Overflow Error Interrupt Status Bit
      ROIS          : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIS_Register use record
      BIS           at 0 range 0 .. 0;
      LIS           at 0 range 1 .. 1;
      DIS           at 0 range 2 .. 2;
      FIS           at 0 range 3 .. 3;
      RBEIS         at 0 range 4 .. 4;
      WBEIS         at 0 range 5 .. 5;
      ROIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CNDA_NDA_Field is HAL.UInt30;

   --  Channel Next Descriptor Address Register (chid = 0)
   type CNDA_Register is record
      --  Channel x Next Descriptor Interface
      NDAIF        : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Channel x Next Descriptor Address
      NDA          : CNDA_NDA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNDA_Register use record
      NDAIF        at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      NDA          at 0 range 2 .. 31;
   end record;

   --  Channel x Next Descriptor Enable
   type CNDC0_NDE_Field is
     (
      --  Descriptor fetch is disabled.
      Dscr_Fetch_Dis,
      --  Descriptor fetch is enabled.
      Dscr_Fetch_En)
     with Size => 1;
   for CNDC0_NDE_Field use
     (Dscr_Fetch_Dis => 0,
      Dscr_Fetch_En => 1);

   --  Channel x Next Descriptor Source Update
   type CNDC0_NDSUP_Field is
     (
      --  Source parameters remain unchanged.
      Src_Params_Unchanged,
      --  Source parameters are updated when the descriptor is retrieved.
      Src_Params_Updated)
     with Size => 1;
   for CNDC0_NDSUP_Field use
     (Src_Params_Unchanged => 0,
      Src_Params_Updated => 1);

   --  Channel x Next Descriptor Destination Update
   type CNDC0_NDDUP_Field is
     (
      --  Destination parameters remain unchanged.
      Dst_Params_Unchanged,
      --  Destination parameters are updated when the descriptor is retrieved.
      Dst_Params_Updated)
     with Size => 1;
   for CNDC0_NDDUP_Field use
     (Dst_Params_Unchanged => 0,
      Dst_Params_Updated => 1);

   --  Channel x Next Descriptor View
   type CNDC0_NDVIEW_Field is
     (
      --  Next Descriptor View 0
      Ndv0,
      --  Next Descriptor View 1
      Ndv1,
      --  Next Descriptor View 2
      Ndv2,
      --  Next Descriptor View 3
      Ndv3)
     with Size => 2;
   for CNDC0_NDVIEW_Field use
     (Ndv0 => 0,
      Ndv1 => 1,
      Ndv2 => 2,
      Ndv3 => 3);

   --  Channel Next Descriptor Control Register (chid = 0)
   type CNDC_Register is record
      --  Channel x Next Descriptor Enable
      NDE           : CNDC0_NDE_Field := SAM_SVD.XDMAC.Dscr_Fetch_Dis;
      --  Channel x Next Descriptor Source Update
      NDSUP         : CNDC0_NDSUP_Field := SAM_SVD.XDMAC.Src_Params_Unchanged;
      --  Channel x Next Descriptor Destination Update
      NDDUP         : CNDC0_NDDUP_Field := SAM_SVD.XDMAC.Dst_Params_Unchanged;
      --  Channel x Next Descriptor View
      NDVIEW        : CNDC0_NDVIEW_Field := SAM_SVD.XDMAC.Ndv0;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNDC_Register use record
      NDE           at 0 range 0 .. 0;
      NDSUP         at 0 range 1 .. 1;
      NDDUP         at 0 range 2 .. 2;
      NDVIEW        at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CUBC_UBLEN_Field is HAL.UInt24;

   --  Channel Microblock Control Register (chid = 0)
   type CUBC_Register is record
      --  Channel x Microblock Length
      UBLEN          : CUBC_UBLEN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CUBC_Register use record
      UBLEN          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CBC_BLEN_Field is HAL.UInt12;

   --  Channel Block Control Register (chid = 0)
   type CBC_Register is record
      --  Channel x Block Length
      BLEN           : CBC_BLEN_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CBC_Register use record
      BLEN           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Channel x Transfer Type
   type CC0_TYPE_Field is
     (
      --  Self-triggered mode (memory-to-memory transfer).
      Mem_Tran,
      --  Synchronized mode (peripheral-to-memory or memory-to-peripheral
      --  transfer).
      Per_Tran)
     with Size => 1;
   for CC0_TYPE_Field use
     (Mem_Tran => 0,
      Per_Tran => 1);

   --  Channel x Memory Burst Size
   type CC0_MBSIZE_Field is
     (
      --  The memory burst size is set to one.
      Single,
      --  The memory burst size is set to four.
      Four,
      --  The memory burst size is set to eight.
      Eight,
      --  The memory burst size is set to sixteen.
      Sixteen)
     with Size => 2;
   for CC0_MBSIZE_Field use
     (Single => 0,
      Four => 1,
      Eight => 2,
      Sixteen => 3);

   --  Channel x Synchronization
   type CC0_DSYNC_Field is
     (
      --  Peripheral-to-memory transfer.
      Per2Mem,
      --  Memory-to-peripheral transfer.
      Mem2Per)
     with Size => 1;
   for CC0_DSYNC_Field use
     (Per2Mem => 0,
      Mem2Per => 1);

   --  Channel x Software Request Trigger
   type CC0_SWREQ_Field is
     (
      --  Hardware request line is connected to the peripheral request line.
      Hwr_Connected,
      --  Software request is connected to the peripheral request line.
      Swr_Connected)
     with Size => 1;
   for CC0_SWREQ_Field use
     (Hwr_Connected => 0,
      Swr_Connected => 1);

   --  Channel x Fill Block of Memory
   type CC0_MEMSET_Field is
     (
      --  Memset is not activated.
      Normal_Mode,
      --  Sets the block of memory pointed by DA field to the specified value.
      --  This operation is performed on 8-, 16- or 32-bit basis.
      Hw_Mode)
     with Size => 1;
   for CC0_MEMSET_Field use
     (Normal_Mode => 0,
      Hw_Mode => 1);

   --  Channel x Chunk Size
   type CC0_CSIZE_Field is
     (
      --  1 data transferred
      Chk_1,
      --  2 data transferred
      Chk_2,
      --  4 data transferred
      Chk_4,
      --  8 data transferred
      Chk_8,
      --  16 data transferred
      Chk_16)
     with Size => 3;
   for CC0_CSIZE_Field use
     (Chk_1 => 0,
      Chk_2 => 1,
      Chk_4 => 2,
      Chk_8 => 3,
      Chk_16 => 4);

   --  Channel x Data Width
   type CC0_DWIDTH_Field is
     (
      --  The data size is set to 8 bits
      Byte,
      --  The data size is set to 16 bits
      Halfword,
      --  The data size is set to 32 bits
      Word)
     with Size => 2;
   for CC0_DWIDTH_Field use
     (Byte => 0,
      Halfword => 1,
      Word => 2);

   --  Channel x Source Interface Identifier
   type CC0_SIF_Field is
     (
      --  The data is read through the system bus interface 0.
      Ahb_If0,
      --  The data is read through the system bus interface 1.
      Ahb_If1)
     with Size => 1;
   for CC0_SIF_Field use
     (Ahb_If0 => 0,
      Ahb_If1 => 1);

   --  Channel x Destination Interface Identifier
   type CC0_DIF_Field is
     (
      --  The data is written through the system bus interface 0.
      Ahb_If0,
      --  The data is written though the system bus interface 1.
      Ahb_If1)
     with Size => 1;
   for CC0_DIF_Field use
     (Ahb_If0 => 0,
      Ahb_If1 => 1);

   --  Channel x Source Addressing Mode
   type CC0_SAM_Field is
     (
      --  The address remains unchanged.
      Fixed_Am,
      --  The addressing mode is incremented (the increment size is set to the
      --  data size).
      Incremented_Am,
      --  The microblock stride is added at the microblock boundary.
      Ubs_Am,
      --  The microblock stride is added at the microblock boundary, the data
      --  stride is added at the data boundary.
      Ubs_Ds_Am)
     with Size => 2;
   for CC0_SAM_Field use
     (Fixed_Am => 0,
      Incremented_Am => 1,
      Ubs_Am => 2,
      Ubs_Ds_Am => 3);

   --  Channel x Destination Addressing Mode
   type CC0_DAM_Field is
     (
      --  The address remains unchanged.
      Fixed_Am,
      --  The addressing mode is incremented (the increment size is set to the
      --  data size).
      Incremented_Am,
      --  The microblock stride is added at the microblock boundary.
      Ubs_Am,
      --  The microblock stride is added at the microblock boundary; the data
      --  stride is added at the data boundary.
      Ubs_Ds_Am)
     with Size => 2;
   for CC0_DAM_Field use
     (Fixed_Am => 0,
      Incremented_Am => 1,
      Ubs_Am => 2,
      Ubs_Ds_Am => 3);

   --  Channel Initialization Done (this bit is read-only)
   type CC0_INITD_Field is
     (
      --  Channel initialization is in progress.
      In_Progress,
      --  Channel initialization is completed.
      Terminated)
     with Size => 1;
   for CC0_INITD_Field use
     (In_Progress => 0,
      Terminated => 1);

   --  Read in Progress (this bit is read-only)
   type CC0_RDIP_Field is
     (
      --  No active read transaction on the bus.
      Done,
      --  A read transaction is in progress.
      In_Progress)
     with Size => 1;
   for CC0_RDIP_Field use
     (Done => 0,
      In_Progress => 1);

   --  Write in Progress (this bit is read-only)
   type CC0_WRIP_Field is
     (
      --  No active write transaction on the bus.
      Done,
      --  A write transaction is in progress.
      In_Progress)
     with Size => 1;
   for CC0_WRIP_Field use
     (Done => 0,
      In_Progress => 1);

   subtype CC_PERID_Field is HAL.UInt7;

   --  Channel Configuration Register (chid = 0)
   type CC_Register is record
      --  Channel x Transfer Type
      TYPE_k         : CC0_TYPE_Field := SAM_SVD.XDMAC.Mem_Tran;
      --  Channel x Memory Burst Size
      MBSIZE         : CC0_MBSIZE_Field := SAM_SVD.XDMAC.Single;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Channel x Synchronization
      DSYNC          : CC0_DSYNC_Field := SAM_SVD.XDMAC.Per2Mem;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Channel x Software Request Trigger
      SWREQ          : CC0_SWREQ_Field := SAM_SVD.XDMAC.Hwr_Connected;
      --  Channel x Fill Block of Memory
      MEMSET         : CC0_MEMSET_Field := SAM_SVD.XDMAC.Normal_Mode;
      --  Channel x Chunk Size
      CSIZE          : CC0_CSIZE_Field := SAM_SVD.XDMAC.Chk_1;
      --  Channel x Data Width
      DWIDTH         : CC0_DWIDTH_Field := SAM_SVD.XDMAC.Byte;
      --  Channel x Source Interface Identifier
      SIF            : CC0_SIF_Field := SAM_SVD.XDMAC.Ahb_If0;
      --  Channel x Destination Interface Identifier
      DIF            : CC0_DIF_Field := SAM_SVD.XDMAC.Ahb_If0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Channel x Source Addressing Mode
      SAM            : CC0_SAM_Field := SAM_SVD.XDMAC.Fixed_Am;
      --  Channel x Destination Addressing Mode
      DAM            : CC0_DAM_Field := SAM_SVD.XDMAC.Fixed_Am;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Channel Initialization Done (this bit is read-only)
      INITD          : CC0_INITD_Field := SAM_SVD.XDMAC.In_Progress;
      --  Read in Progress (this bit is read-only)
      RDIP           : CC0_RDIP_Field := SAM_SVD.XDMAC.Done;
      --  Write in Progress (this bit is read-only)
      WRIP           : CC0_WRIP_Field := SAM_SVD.XDMAC.Done;
      --  Channel x Peripheral Hardware Request Line Identifier
      PERID          : CC_PERID_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC_Register use record
      TYPE_k         at 0 range 0 .. 0;
      MBSIZE         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DSYNC          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SWREQ          at 0 range 6 .. 6;
      MEMSET         at 0 range 7 .. 7;
      CSIZE          at 0 range 8 .. 10;
      DWIDTH         at 0 range 11 .. 12;
      SIF            at 0 range 13 .. 13;
      DIF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 17;
      DAM            at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      INITD          at 0 range 21 .. 21;
      RDIP           at 0 range 22 .. 22;
      WRIP           at 0 range 23 .. 23;
      PERID          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CDS_MSP_SDS_MSP_Field is HAL.UInt16;
   subtype CDS_MSP_DDS_MSP_Field is HAL.UInt16;

   --  Channel Data Stride Memory Set Pattern (chid = 0)
   type CDS_MSP_Register is record
      --  Channel x Source Data stride or Memory Set Pattern
      SDS_MSP : CDS_MSP_SDS_MSP_Field := 16#0#;
      --  Channel x Destination Data Stride or Memory Set Pattern
      DDS_MSP : CDS_MSP_DDS_MSP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDS_MSP_Register use record
      SDS_MSP at 0 range 0 .. 15;
      DDS_MSP at 0 range 16 .. 31;
   end record;

   subtype CSUS_SUBS_Field is HAL.UInt24;

   --  Channel Source Microblock Stride (chid = 0)
   type CSUS_Register is record
      --  Channel x Source Microblock Stride
      SUBS           : CSUS_SUBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSUS_Register use record
      SUBS           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CDUS_DUBS_Field is HAL.UInt24;

   --  Channel Destination Microblock Stride (chid = 0)
   type CDUS_Register is record
      --  Channel x Destination Microblock Stride
      DUBS           : CDUS_DUBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDUS_Register use record
      DUBS           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype XDMAC_VERSION_VERSION_Field is HAL.UInt12;
   subtype XDMAC_VERSION_MFN_Field is HAL.UInt3;

   --  XDMAC Version Register
   type XDMAC_VERSION_Register is record
      --  Version of the Hardware Module
      VERSION        : XDMAC_VERSION_VERSION_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Metal Fix Number
      MFN            : XDMAC_VERSION_MFN_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Extensible DMA Controller
   type XDMAC_Peripheral is record
      --  Global Type Register
      GTYPE     : aliased XDMAC_GTYPE_Register;
      --  Global Configuration Register
      GCFG      : aliased XDMAC_GCFG_Register;
      --  Global Weighted Arbiter Configuration Register
      GWAC      : aliased XDMAC_GWAC_Register;
      --  Global Interrupt Enable Register
      GIE       : aliased XDMAC_GIE_Register;
      --  Global Interrupt Disable Register
      GID       : aliased XDMAC_GID_Register;
      --  Global Interrupt Mask Register
      GIM       : aliased XDMAC_GIM_Register;
      --  Global Interrupt Status Register
      GIS       : aliased XDMAC_GIS_Register;
      --  Global Channel Enable Register
      GE        : aliased XDMAC_GE_Register;
      --  Global Channel Disable Register
      GD        : aliased XDMAC_GD_Register;
      --  Global Channel Status Register
      GS        : aliased XDMAC_GS_Register;
      --  Global Channel Read Suspend Register
      GRS       : aliased XDMAC_GRS_Register;
      --  Global Channel Write Suspend Register
      GWS       : aliased XDMAC_GWS_Register;
      --  Global Channel Read Write Suspend Register
      GRWS      : aliased XDMAC_GRWS_Register;
      --  Global Channel Read Write Resume Register
      GRWR      : aliased XDMAC_GRWR_Register;
      --  Global Channel Software Request Register
      GSWR      : aliased XDMAC_GSWR_Register;
      --  Global Channel Software Request Status Register
      GSWS      : aliased XDMAC_GSWS_Register;
      --  Global Channel Software Flush Request Register
      GSWF      : aliased XDMAC_GSWF_Register;
      --  Channel Interrupt Enable Register (chid = 0)
      CIE0      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 0)
      CID0      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 0)
      CIM0      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 0)
      CIS0      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 0)
      CSA0      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 0)
      CDA0      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 0)
      CNDA0     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 0)
      CNDC0     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 0)
      CUBC0     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 0)
      CBC0      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 0)
      CC0       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 0)
      CDS_MSP0  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 0)
      CSUS0     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 0)
      CDUS0     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 1)
      CIE1      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 1)
      CID1      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 1)
      CIM1      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 1)
      CIS1      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 1)
      CSA1      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 1)
      CDA1      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 1)
      CNDA1     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 1)
      CNDC1     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 1)
      CUBC1     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 1)
      CBC1      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 1)
      CC1       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 1)
      CDS_MSP1  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 1)
      CSUS1     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 1)
      CDUS1     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 2)
      CIE2      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 2)
      CID2      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 2)
      CIM2      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 2)
      CIS2      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 2)
      CSA2      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 2)
      CDA2      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 2)
      CNDA2     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 2)
      CNDC2     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 2)
      CUBC2     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 2)
      CBC2      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 2)
      CC2       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 2)
      CDS_MSP2  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 2)
      CSUS2     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 2)
      CDUS2     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 3)
      CIE3      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 3)
      CID3      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 3)
      CIM3      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 3)
      CIS3      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 3)
      CSA3      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 3)
      CDA3      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 3)
      CNDA3     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 3)
      CNDC3     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 3)
      CUBC3     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 3)
      CBC3      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 3)
      CC3       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 3)
      CDS_MSP3  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 3)
      CSUS3     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 3)
      CDUS3     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 4)
      CIE4      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 4)
      CID4      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 4)
      CIM4      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 4)
      CIS4      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 4)
      CSA4      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 4)
      CDA4      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 4)
      CNDA4     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 4)
      CNDC4     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 4)
      CUBC4     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 4)
      CBC4      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 4)
      CC4       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 4)
      CDS_MSP4  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 4)
      CSUS4     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 4)
      CDUS4     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 5)
      CIE5      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 5)
      CID5      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 5)
      CIM5      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 5)
      CIS5      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 5)
      CSA5      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 5)
      CDA5      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 5)
      CNDA5     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 5)
      CNDC5     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 5)
      CUBC5     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 5)
      CBC5      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 5)
      CC5       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 5)
      CDS_MSP5  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 5)
      CSUS5     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 5)
      CDUS5     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 6)
      CIE6      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 6)
      CID6      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 6)
      CIM6      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 6)
      CIS6      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 6)
      CSA6      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 6)
      CDA6      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 6)
      CNDA6     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 6)
      CNDC6     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 6)
      CUBC6     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 6)
      CBC6      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 6)
      CC6       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 6)
      CDS_MSP6  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 6)
      CSUS6     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 6)
      CDUS6     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 7)
      CIE7      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 7)
      CID7      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 7)
      CIM7      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 7)
      CIS7      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 7)
      CSA7      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 7)
      CDA7      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 7)
      CNDA7     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 7)
      CNDC7     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 7)
      CUBC7     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 7)
      CBC7      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 7)
      CC7       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 7)
      CDS_MSP7  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 7)
      CSUS7     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 7)
      CDUS7     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 8)
      CIE8      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 8)
      CID8      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 8)
      CIM8      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 8)
      CIS8      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 8)
      CSA8      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 8)
      CDA8      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 8)
      CNDA8     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 8)
      CNDC8     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 8)
      CUBC8     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 8)
      CBC8      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 8)
      CC8       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 8)
      CDS_MSP8  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 8)
      CSUS8     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 8)
      CDUS8     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 9)
      CIE9      : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 9)
      CID9      : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 9)
      CIM9      : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 9)
      CIS9      : aliased CIS_Register;
      --  Channel Source Address Register (chid = 9)
      CSA9      : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 9)
      CDA9      : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 9)
      CNDA9     : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 9)
      CNDC9     : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 9)
      CUBC9     : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 9)
      CBC9      : aliased CBC_Register;
      --  Channel Configuration Register (chid = 9)
      CC9       : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 9)
      CDS_MSP9  : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 9)
      CSUS9     : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 9)
      CDUS9     : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 10)
      CIE10     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 10)
      CID10     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 10)
      CIM10     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 10)
      CIS10     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 10)
      CSA10     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 10)
      CDA10     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 10)
      CNDA10    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 10)
      CNDC10    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 10)
      CUBC10    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 10)
      CBC10     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 10)
      CC10      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 10)
      CDS_MSP10 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 10)
      CSUS10    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 10)
      CDUS10    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 11)
      CIE11     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 11)
      CID11     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 11)
      CIM11     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 11)
      CIS11     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 11)
      CSA11     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 11)
      CDA11     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 11)
      CNDA11    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 11)
      CNDC11    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 11)
      CUBC11    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 11)
      CBC11     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 11)
      CC11      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 11)
      CDS_MSP11 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 11)
      CSUS11    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 11)
      CDUS11    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 12)
      CIE12     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 12)
      CID12     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 12)
      CIM12     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 12)
      CIS12     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 12)
      CSA12     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 12)
      CDA12     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 12)
      CNDA12    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 12)
      CNDC12    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 12)
      CUBC12    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 12)
      CBC12     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 12)
      CC12      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 12)
      CDS_MSP12 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 12)
      CSUS12    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 12)
      CDUS12    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 13)
      CIE13     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 13)
      CID13     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 13)
      CIM13     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 13)
      CIS13     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 13)
      CSA13     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 13)
      CDA13     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 13)
      CNDA13    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 13)
      CNDC13    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 13)
      CUBC13    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 13)
      CBC13     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 13)
      CC13      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 13)
      CDS_MSP13 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 13)
      CSUS13    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 13)
      CDUS13    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 14)
      CIE14     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 14)
      CID14     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 14)
      CIM14     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 14)
      CIS14     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 14)
      CSA14     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 14)
      CDA14     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 14)
      CNDA14    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 14)
      CNDC14    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 14)
      CUBC14    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 14)
      CBC14     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 14)
      CC14      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 14)
      CDS_MSP14 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 14)
      CSUS14    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 14)
      CDUS14    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 15)
      CIE15     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 15)
      CID15     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 15)
      CIM15     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 15)
      CIS15     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 15)
      CSA15     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 15)
      CDA15     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 15)
      CNDA15    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 15)
      CNDC15    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 15)
      CUBC15    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 15)
      CBC15     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 15)
      CC15      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 15)
      CDS_MSP15 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 15)
      CSUS15    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 15)
      CDUS15    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 16)
      CIE16     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 16)
      CID16     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 16)
      CIM16     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 16)
      CIS16     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 16)
      CSA16     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 16)
      CDA16     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 16)
      CNDA16    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 16)
      CNDC16    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 16)
      CUBC16    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 16)
      CBC16     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 16)
      CC16      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 16)
      CDS_MSP16 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 16)
      CSUS16    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 16)
      CDUS16    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 17)
      CIE17     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 17)
      CID17     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 17)
      CIM17     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 17)
      CIS17     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 17)
      CSA17     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 17)
      CDA17     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 17)
      CNDA17    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 17)
      CNDC17    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 17)
      CUBC17    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 17)
      CBC17     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 17)
      CC17      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 17)
      CDS_MSP17 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 17)
      CSUS17    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 17)
      CDUS17    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 18)
      CIE18     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 18)
      CID18     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 18)
      CIM18     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 18)
      CIS18     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 18)
      CSA18     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 18)
      CDA18     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 18)
      CNDA18    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 18)
      CNDC18    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 18)
      CUBC18    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 18)
      CBC18     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 18)
      CC18      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 18)
      CDS_MSP18 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 18)
      CSUS18    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 18)
      CDUS18    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 19)
      CIE19     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 19)
      CID19     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 19)
      CIM19     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 19)
      CIS19     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 19)
      CSA19     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 19)
      CDA19     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 19)
      CNDA19    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 19)
      CNDC19    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 19)
      CUBC19    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 19)
      CBC19     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 19)
      CC19      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 19)
      CDS_MSP19 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 19)
      CSUS19    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 19)
      CDUS19    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 20)
      CIE20     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 20)
      CID20     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 20)
      CIM20     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 20)
      CIS20     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 20)
      CSA20     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 20)
      CDA20     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 20)
      CNDA20    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 20)
      CNDC20    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 20)
      CUBC20    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 20)
      CBC20     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 20)
      CC20      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 20)
      CDS_MSP20 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 20)
      CSUS20    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 20)
      CDUS20    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 21)
      CIE21     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 21)
      CID21     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 21)
      CIM21     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 21)
      CIS21     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 21)
      CSA21     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 21)
      CDA21     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 21)
      CNDA21    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 21)
      CNDC21    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 21)
      CUBC21    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 21)
      CBC21     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 21)
      CC21      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 21)
      CDS_MSP21 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 21)
      CSUS21    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 21)
      CDUS21    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 22)
      CIE22     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 22)
      CID22     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 22)
      CIM22     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 22)
      CIS22     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 22)
      CSA22     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 22)
      CDA22     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 22)
      CNDA22    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 22)
      CNDC22    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 22)
      CUBC22    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 22)
      CBC22     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 22)
      CC22      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 22)
      CDS_MSP22 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 22)
      CSUS22    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 22)
      CDUS22    : aliased CDUS_Register;
      --  Channel Interrupt Enable Register (chid = 23)
      CIE23     : aliased CIE_Register;
      --  Channel Interrupt Disable Register (chid = 23)
      CID23     : aliased CID_Register;
      --  Channel Interrupt Mask Register (chid = 23)
      CIM23     : aliased CIM_Register;
      --  Channel Interrupt Status Register (chid = 23)
      CIS23     : aliased CIS_Register;
      --  Channel Source Address Register (chid = 23)
      CSA23     : aliased HAL.UInt32;
      --  Channel Destination Address Register (chid = 23)
      CDA23     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register (chid = 23)
      CNDA23    : aliased CNDA_Register;
      --  Channel Next Descriptor Control Register (chid = 23)
      CNDC23    : aliased CNDC_Register;
      --  Channel Microblock Control Register (chid = 23)
      CUBC23    : aliased CUBC_Register;
      --  Channel Block Control Register (chid = 23)
      CBC23     : aliased CBC_Register;
      --  Channel Configuration Register (chid = 23)
      CC23      : aliased CC_Register;
      --  Channel Data Stride Memory Set Pattern (chid = 23)
      CDS_MSP23 : aliased CDS_MSP_Register;
      --  Channel Source Microblock Stride (chid = 23)
      CSUS23    : aliased CSUS_Register;
      --  Channel Destination Microblock Stride (chid = 23)
      CDUS23    : aliased CDUS_Register;
      --  XDMAC Version Register
      VERSION   : aliased XDMAC_VERSION_Register;
   end record
     with Volatile;

   for XDMAC_Peripheral use record
      GTYPE     at 16#0# range 0 .. 31;
      GCFG      at 16#4# range 0 .. 31;
      GWAC      at 16#8# range 0 .. 31;
      GIE       at 16#C# range 0 .. 31;
      GID       at 16#10# range 0 .. 31;
      GIM       at 16#14# range 0 .. 31;
      GIS       at 16#18# range 0 .. 31;
      GE        at 16#1C# range 0 .. 31;
      GD        at 16#20# range 0 .. 31;
      GS        at 16#24# range 0 .. 31;
      GRS       at 16#28# range 0 .. 31;
      GWS       at 16#2C# range 0 .. 31;
      GRWS      at 16#30# range 0 .. 31;
      GRWR      at 16#34# range 0 .. 31;
      GSWR      at 16#38# range 0 .. 31;
      GSWS      at 16#3C# range 0 .. 31;
      GSWF      at 16#40# range 0 .. 31;
      CIE0      at 16#50# range 0 .. 31;
      CID0      at 16#54# range 0 .. 31;
      CIM0      at 16#58# range 0 .. 31;
      CIS0      at 16#5C# range 0 .. 31;
      CSA0      at 16#60# range 0 .. 31;
      CDA0      at 16#64# range 0 .. 31;
      CNDA0     at 16#68# range 0 .. 31;
      CNDC0     at 16#6C# range 0 .. 31;
      CUBC0     at 16#70# range 0 .. 31;
      CBC0      at 16#74# range 0 .. 31;
      CC0       at 16#78# range 0 .. 31;
      CDS_MSP0  at 16#7C# range 0 .. 31;
      CSUS0     at 16#80# range 0 .. 31;
      CDUS0     at 16#84# range 0 .. 31;
      CIE1      at 16#90# range 0 .. 31;
      CID1      at 16#94# range 0 .. 31;
      CIM1      at 16#98# range 0 .. 31;
      CIS1      at 16#9C# range 0 .. 31;
      CSA1      at 16#A0# range 0 .. 31;
      CDA1      at 16#A4# range 0 .. 31;
      CNDA1     at 16#A8# range 0 .. 31;
      CNDC1     at 16#AC# range 0 .. 31;
      CUBC1     at 16#B0# range 0 .. 31;
      CBC1      at 16#B4# range 0 .. 31;
      CC1       at 16#B8# range 0 .. 31;
      CDS_MSP1  at 16#BC# range 0 .. 31;
      CSUS1     at 16#C0# range 0 .. 31;
      CDUS1     at 16#C4# range 0 .. 31;
      CIE2      at 16#D0# range 0 .. 31;
      CID2      at 16#D4# range 0 .. 31;
      CIM2      at 16#D8# range 0 .. 31;
      CIS2      at 16#DC# range 0 .. 31;
      CSA2      at 16#E0# range 0 .. 31;
      CDA2      at 16#E4# range 0 .. 31;
      CNDA2     at 16#E8# range 0 .. 31;
      CNDC2     at 16#EC# range 0 .. 31;
      CUBC2     at 16#F0# range 0 .. 31;
      CBC2      at 16#F4# range 0 .. 31;
      CC2       at 16#F8# range 0 .. 31;
      CDS_MSP2  at 16#FC# range 0 .. 31;
      CSUS2     at 16#100# range 0 .. 31;
      CDUS2     at 16#104# range 0 .. 31;
      CIE3      at 16#110# range 0 .. 31;
      CID3      at 16#114# range 0 .. 31;
      CIM3      at 16#118# range 0 .. 31;
      CIS3      at 16#11C# range 0 .. 31;
      CSA3      at 16#120# range 0 .. 31;
      CDA3      at 16#124# range 0 .. 31;
      CNDA3     at 16#128# range 0 .. 31;
      CNDC3     at 16#12C# range 0 .. 31;
      CUBC3     at 16#130# range 0 .. 31;
      CBC3      at 16#134# range 0 .. 31;
      CC3       at 16#138# range 0 .. 31;
      CDS_MSP3  at 16#13C# range 0 .. 31;
      CSUS3     at 16#140# range 0 .. 31;
      CDUS3     at 16#144# range 0 .. 31;
      CIE4      at 16#150# range 0 .. 31;
      CID4      at 16#154# range 0 .. 31;
      CIM4      at 16#158# range 0 .. 31;
      CIS4      at 16#15C# range 0 .. 31;
      CSA4      at 16#160# range 0 .. 31;
      CDA4      at 16#164# range 0 .. 31;
      CNDA4     at 16#168# range 0 .. 31;
      CNDC4     at 16#16C# range 0 .. 31;
      CUBC4     at 16#170# range 0 .. 31;
      CBC4      at 16#174# range 0 .. 31;
      CC4       at 16#178# range 0 .. 31;
      CDS_MSP4  at 16#17C# range 0 .. 31;
      CSUS4     at 16#180# range 0 .. 31;
      CDUS4     at 16#184# range 0 .. 31;
      CIE5      at 16#190# range 0 .. 31;
      CID5      at 16#194# range 0 .. 31;
      CIM5      at 16#198# range 0 .. 31;
      CIS5      at 16#19C# range 0 .. 31;
      CSA5      at 16#1A0# range 0 .. 31;
      CDA5      at 16#1A4# range 0 .. 31;
      CNDA5     at 16#1A8# range 0 .. 31;
      CNDC5     at 16#1AC# range 0 .. 31;
      CUBC5     at 16#1B0# range 0 .. 31;
      CBC5      at 16#1B4# range 0 .. 31;
      CC5       at 16#1B8# range 0 .. 31;
      CDS_MSP5  at 16#1BC# range 0 .. 31;
      CSUS5     at 16#1C0# range 0 .. 31;
      CDUS5     at 16#1C4# range 0 .. 31;
      CIE6      at 16#1D0# range 0 .. 31;
      CID6      at 16#1D4# range 0 .. 31;
      CIM6      at 16#1D8# range 0 .. 31;
      CIS6      at 16#1DC# range 0 .. 31;
      CSA6      at 16#1E0# range 0 .. 31;
      CDA6      at 16#1E4# range 0 .. 31;
      CNDA6     at 16#1E8# range 0 .. 31;
      CNDC6     at 16#1EC# range 0 .. 31;
      CUBC6     at 16#1F0# range 0 .. 31;
      CBC6      at 16#1F4# range 0 .. 31;
      CC6       at 16#1F8# range 0 .. 31;
      CDS_MSP6  at 16#1FC# range 0 .. 31;
      CSUS6     at 16#200# range 0 .. 31;
      CDUS6     at 16#204# range 0 .. 31;
      CIE7      at 16#210# range 0 .. 31;
      CID7      at 16#214# range 0 .. 31;
      CIM7      at 16#218# range 0 .. 31;
      CIS7      at 16#21C# range 0 .. 31;
      CSA7      at 16#220# range 0 .. 31;
      CDA7      at 16#224# range 0 .. 31;
      CNDA7     at 16#228# range 0 .. 31;
      CNDC7     at 16#22C# range 0 .. 31;
      CUBC7     at 16#230# range 0 .. 31;
      CBC7      at 16#234# range 0 .. 31;
      CC7       at 16#238# range 0 .. 31;
      CDS_MSP7  at 16#23C# range 0 .. 31;
      CSUS7     at 16#240# range 0 .. 31;
      CDUS7     at 16#244# range 0 .. 31;
      CIE8      at 16#250# range 0 .. 31;
      CID8      at 16#254# range 0 .. 31;
      CIM8      at 16#258# range 0 .. 31;
      CIS8      at 16#25C# range 0 .. 31;
      CSA8      at 16#260# range 0 .. 31;
      CDA8      at 16#264# range 0 .. 31;
      CNDA8     at 16#268# range 0 .. 31;
      CNDC8     at 16#26C# range 0 .. 31;
      CUBC8     at 16#270# range 0 .. 31;
      CBC8      at 16#274# range 0 .. 31;
      CC8       at 16#278# range 0 .. 31;
      CDS_MSP8  at 16#27C# range 0 .. 31;
      CSUS8     at 16#280# range 0 .. 31;
      CDUS8     at 16#284# range 0 .. 31;
      CIE9      at 16#290# range 0 .. 31;
      CID9      at 16#294# range 0 .. 31;
      CIM9      at 16#298# range 0 .. 31;
      CIS9      at 16#29C# range 0 .. 31;
      CSA9      at 16#2A0# range 0 .. 31;
      CDA9      at 16#2A4# range 0 .. 31;
      CNDA9     at 16#2A8# range 0 .. 31;
      CNDC9     at 16#2AC# range 0 .. 31;
      CUBC9     at 16#2B0# range 0 .. 31;
      CBC9      at 16#2B4# range 0 .. 31;
      CC9       at 16#2B8# range 0 .. 31;
      CDS_MSP9  at 16#2BC# range 0 .. 31;
      CSUS9     at 16#2C0# range 0 .. 31;
      CDUS9     at 16#2C4# range 0 .. 31;
      CIE10     at 16#2D0# range 0 .. 31;
      CID10     at 16#2D4# range 0 .. 31;
      CIM10     at 16#2D8# range 0 .. 31;
      CIS10     at 16#2DC# range 0 .. 31;
      CSA10     at 16#2E0# range 0 .. 31;
      CDA10     at 16#2E4# range 0 .. 31;
      CNDA10    at 16#2E8# range 0 .. 31;
      CNDC10    at 16#2EC# range 0 .. 31;
      CUBC10    at 16#2F0# range 0 .. 31;
      CBC10     at 16#2F4# range 0 .. 31;
      CC10      at 16#2F8# range 0 .. 31;
      CDS_MSP10 at 16#2FC# range 0 .. 31;
      CSUS10    at 16#300# range 0 .. 31;
      CDUS10    at 16#304# range 0 .. 31;
      CIE11     at 16#310# range 0 .. 31;
      CID11     at 16#314# range 0 .. 31;
      CIM11     at 16#318# range 0 .. 31;
      CIS11     at 16#31C# range 0 .. 31;
      CSA11     at 16#320# range 0 .. 31;
      CDA11     at 16#324# range 0 .. 31;
      CNDA11    at 16#328# range 0 .. 31;
      CNDC11    at 16#32C# range 0 .. 31;
      CUBC11    at 16#330# range 0 .. 31;
      CBC11     at 16#334# range 0 .. 31;
      CC11      at 16#338# range 0 .. 31;
      CDS_MSP11 at 16#33C# range 0 .. 31;
      CSUS11    at 16#340# range 0 .. 31;
      CDUS11    at 16#344# range 0 .. 31;
      CIE12     at 16#350# range 0 .. 31;
      CID12     at 16#354# range 0 .. 31;
      CIM12     at 16#358# range 0 .. 31;
      CIS12     at 16#35C# range 0 .. 31;
      CSA12     at 16#360# range 0 .. 31;
      CDA12     at 16#364# range 0 .. 31;
      CNDA12    at 16#368# range 0 .. 31;
      CNDC12    at 16#36C# range 0 .. 31;
      CUBC12    at 16#370# range 0 .. 31;
      CBC12     at 16#374# range 0 .. 31;
      CC12      at 16#378# range 0 .. 31;
      CDS_MSP12 at 16#37C# range 0 .. 31;
      CSUS12    at 16#380# range 0 .. 31;
      CDUS12    at 16#384# range 0 .. 31;
      CIE13     at 16#390# range 0 .. 31;
      CID13     at 16#394# range 0 .. 31;
      CIM13     at 16#398# range 0 .. 31;
      CIS13     at 16#39C# range 0 .. 31;
      CSA13     at 16#3A0# range 0 .. 31;
      CDA13     at 16#3A4# range 0 .. 31;
      CNDA13    at 16#3A8# range 0 .. 31;
      CNDC13    at 16#3AC# range 0 .. 31;
      CUBC13    at 16#3B0# range 0 .. 31;
      CBC13     at 16#3B4# range 0 .. 31;
      CC13      at 16#3B8# range 0 .. 31;
      CDS_MSP13 at 16#3BC# range 0 .. 31;
      CSUS13    at 16#3C0# range 0 .. 31;
      CDUS13    at 16#3C4# range 0 .. 31;
      CIE14     at 16#3D0# range 0 .. 31;
      CID14     at 16#3D4# range 0 .. 31;
      CIM14     at 16#3D8# range 0 .. 31;
      CIS14     at 16#3DC# range 0 .. 31;
      CSA14     at 16#3E0# range 0 .. 31;
      CDA14     at 16#3E4# range 0 .. 31;
      CNDA14    at 16#3E8# range 0 .. 31;
      CNDC14    at 16#3EC# range 0 .. 31;
      CUBC14    at 16#3F0# range 0 .. 31;
      CBC14     at 16#3F4# range 0 .. 31;
      CC14      at 16#3F8# range 0 .. 31;
      CDS_MSP14 at 16#3FC# range 0 .. 31;
      CSUS14    at 16#400# range 0 .. 31;
      CDUS14    at 16#404# range 0 .. 31;
      CIE15     at 16#410# range 0 .. 31;
      CID15     at 16#414# range 0 .. 31;
      CIM15     at 16#418# range 0 .. 31;
      CIS15     at 16#41C# range 0 .. 31;
      CSA15     at 16#420# range 0 .. 31;
      CDA15     at 16#424# range 0 .. 31;
      CNDA15    at 16#428# range 0 .. 31;
      CNDC15    at 16#42C# range 0 .. 31;
      CUBC15    at 16#430# range 0 .. 31;
      CBC15     at 16#434# range 0 .. 31;
      CC15      at 16#438# range 0 .. 31;
      CDS_MSP15 at 16#43C# range 0 .. 31;
      CSUS15    at 16#440# range 0 .. 31;
      CDUS15    at 16#444# range 0 .. 31;
      CIE16     at 16#450# range 0 .. 31;
      CID16     at 16#454# range 0 .. 31;
      CIM16     at 16#458# range 0 .. 31;
      CIS16     at 16#45C# range 0 .. 31;
      CSA16     at 16#460# range 0 .. 31;
      CDA16     at 16#464# range 0 .. 31;
      CNDA16    at 16#468# range 0 .. 31;
      CNDC16    at 16#46C# range 0 .. 31;
      CUBC16    at 16#470# range 0 .. 31;
      CBC16     at 16#474# range 0 .. 31;
      CC16      at 16#478# range 0 .. 31;
      CDS_MSP16 at 16#47C# range 0 .. 31;
      CSUS16    at 16#480# range 0 .. 31;
      CDUS16    at 16#484# range 0 .. 31;
      CIE17     at 16#490# range 0 .. 31;
      CID17     at 16#494# range 0 .. 31;
      CIM17     at 16#498# range 0 .. 31;
      CIS17     at 16#49C# range 0 .. 31;
      CSA17     at 16#4A0# range 0 .. 31;
      CDA17     at 16#4A4# range 0 .. 31;
      CNDA17    at 16#4A8# range 0 .. 31;
      CNDC17    at 16#4AC# range 0 .. 31;
      CUBC17    at 16#4B0# range 0 .. 31;
      CBC17     at 16#4B4# range 0 .. 31;
      CC17      at 16#4B8# range 0 .. 31;
      CDS_MSP17 at 16#4BC# range 0 .. 31;
      CSUS17    at 16#4C0# range 0 .. 31;
      CDUS17    at 16#4C4# range 0 .. 31;
      CIE18     at 16#4D0# range 0 .. 31;
      CID18     at 16#4D4# range 0 .. 31;
      CIM18     at 16#4D8# range 0 .. 31;
      CIS18     at 16#4DC# range 0 .. 31;
      CSA18     at 16#4E0# range 0 .. 31;
      CDA18     at 16#4E4# range 0 .. 31;
      CNDA18    at 16#4E8# range 0 .. 31;
      CNDC18    at 16#4EC# range 0 .. 31;
      CUBC18    at 16#4F0# range 0 .. 31;
      CBC18     at 16#4F4# range 0 .. 31;
      CC18      at 16#4F8# range 0 .. 31;
      CDS_MSP18 at 16#4FC# range 0 .. 31;
      CSUS18    at 16#500# range 0 .. 31;
      CDUS18    at 16#504# range 0 .. 31;
      CIE19     at 16#510# range 0 .. 31;
      CID19     at 16#514# range 0 .. 31;
      CIM19     at 16#518# range 0 .. 31;
      CIS19     at 16#51C# range 0 .. 31;
      CSA19     at 16#520# range 0 .. 31;
      CDA19     at 16#524# range 0 .. 31;
      CNDA19    at 16#528# range 0 .. 31;
      CNDC19    at 16#52C# range 0 .. 31;
      CUBC19    at 16#530# range 0 .. 31;
      CBC19     at 16#534# range 0 .. 31;
      CC19      at 16#538# range 0 .. 31;
      CDS_MSP19 at 16#53C# range 0 .. 31;
      CSUS19    at 16#540# range 0 .. 31;
      CDUS19    at 16#544# range 0 .. 31;
      CIE20     at 16#550# range 0 .. 31;
      CID20     at 16#554# range 0 .. 31;
      CIM20     at 16#558# range 0 .. 31;
      CIS20     at 16#55C# range 0 .. 31;
      CSA20     at 16#560# range 0 .. 31;
      CDA20     at 16#564# range 0 .. 31;
      CNDA20    at 16#568# range 0 .. 31;
      CNDC20    at 16#56C# range 0 .. 31;
      CUBC20    at 16#570# range 0 .. 31;
      CBC20     at 16#574# range 0 .. 31;
      CC20      at 16#578# range 0 .. 31;
      CDS_MSP20 at 16#57C# range 0 .. 31;
      CSUS20    at 16#580# range 0 .. 31;
      CDUS20    at 16#584# range 0 .. 31;
      CIE21     at 16#590# range 0 .. 31;
      CID21     at 16#594# range 0 .. 31;
      CIM21     at 16#598# range 0 .. 31;
      CIS21     at 16#59C# range 0 .. 31;
      CSA21     at 16#5A0# range 0 .. 31;
      CDA21     at 16#5A4# range 0 .. 31;
      CNDA21    at 16#5A8# range 0 .. 31;
      CNDC21    at 16#5AC# range 0 .. 31;
      CUBC21    at 16#5B0# range 0 .. 31;
      CBC21     at 16#5B4# range 0 .. 31;
      CC21      at 16#5B8# range 0 .. 31;
      CDS_MSP21 at 16#5BC# range 0 .. 31;
      CSUS21    at 16#5C0# range 0 .. 31;
      CDUS21    at 16#5C4# range 0 .. 31;
      CIE22     at 16#5D0# range 0 .. 31;
      CID22     at 16#5D4# range 0 .. 31;
      CIM22     at 16#5D8# range 0 .. 31;
      CIS22     at 16#5DC# range 0 .. 31;
      CSA22     at 16#5E0# range 0 .. 31;
      CDA22     at 16#5E4# range 0 .. 31;
      CNDA22    at 16#5E8# range 0 .. 31;
      CNDC22    at 16#5EC# range 0 .. 31;
      CUBC22    at 16#5F0# range 0 .. 31;
      CBC22     at 16#5F4# range 0 .. 31;
      CC22      at 16#5F8# range 0 .. 31;
      CDS_MSP22 at 16#5FC# range 0 .. 31;
      CSUS22    at 16#600# range 0 .. 31;
      CDUS22    at 16#604# range 0 .. 31;
      CIE23     at 16#610# range 0 .. 31;
      CID23     at 16#614# range 0 .. 31;
      CIM23     at 16#618# range 0 .. 31;
      CIS23     at 16#61C# range 0 .. 31;
      CSA23     at 16#620# range 0 .. 31;
      CDA23     at 16#624# range 0 .. 31;
      CNDA23    at 16#628# range 0 .. 31;
      CNDC23    at 16#62C# range 0 .. 31;
      CUBC23    at 16#630# range 0 .. 31;
      CBC23     at 16#634# range 0 .. 31;
      CC23      at 16#638# range 0 .. 31;
      CDS_MSP23 at 16#63C# range 0 .. 31;
      CSUS23    at 16#640# range 0 .. 31;
      CDUS23    at 16#644# range 0 .. 31;
      VERSION   at 16#FFC# range 0 .. 31;
   end record;

   --  Extensible DMA Controller
   XDMAC_Periph : aliased XDMAC_Peripheral
     with Import, Address => XDMAC_Base;

end SAM_SVD.XDMAC;
