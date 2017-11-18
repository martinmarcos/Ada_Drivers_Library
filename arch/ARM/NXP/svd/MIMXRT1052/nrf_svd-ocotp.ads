--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.OCOTP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype HW_OCOTP_CTRL_ADDR_Field is HAL.UInt6;
   subtype HW_OCOTP_CTRL_WR_UNLOCK_Field is HAL.UInt16;

   --  OTP Controller Control Register
   type HW_OCOTP_CTRL_Register is record
      --  OTP write and read access address register
      ADDR           : HW_OCOTP_CTRL_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. OTP controller status bit
      BUSY           : Boolean := False;
      --  Set by the controller when an access to a locked region(OTP or shadow
      --  register) is requested
      ERROR          : Boolean := False;
      --  Set to force re-loading the shadow registers (HW/SW capability and
      --  LOCK)
      RELOAD_SHADOWS : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Write 0x3E77 to enable OTP write accesses
      WR_UNLOCK      : HW_OCOTP_CTRL_WR_UNLOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_CTRL_Register use record
      ADDR           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BUSY           at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      RELOAD_SHADOWS at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      WR_UNLOCK      at 0 range 16 .. 31;
   end record;

   subtype HW_OCOTP_CTRL_SET_ADDR_Field is HAL.UInt6;
   subtype HW_OCOTP_CTRL_SET_WR_UNLOCK_Field is HAL.UInt16;

   --  OTP Controller Control Register
   type HW_OCOTP_CTRL_SET_Register is record
      --  OTP write and read access address register
      ADDR           : HW_OCOTP_CTRL_SET_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. OTP controller status bit
      BUSY           : Boolean := False;
      --  Set by the controller when an access to a locked region(OTP or shadow
      --  register) is requested
      ERROR          : Boolean := False;
      --  Set to force re-loading the shadow registers (HW/SW capability and
      --  LOCK)
      RELOAD_SHADOWS : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Write 0x3E77 to enable OTP write accesses
      WR_UNLOCK      : HW_OCOTP_CTRL_SET_WR_UNLOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_CTRL_SET_Register use record
      ADDR           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BUSY           at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      RELOAD_SHADOWS at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      WR_UNLOCK      at 0 range 16 .. 31;
   end record;

   subtype HW_OCOTP_CTRL_CLR_ADDR_Field is HAL.UInt6;
   subtype HW_OCOTP_CTRL_CLR_WR_UNLOCK_Field is HAL.UInt16;

   --  OTP Controller Control Register
   type HW_OCOTP_CTRL_CLR_Register is record
      --  OTP write and read access address register
      ADDR           : HW_OCOTP_CTRL_CLR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. OTP controller status bit
      BUSY           : Boolean := False;
      --  Set by the controller when an access to a locked region(OTP or shadow
      --  register) is requested
      ERROR          : Boolean := False;
      --  Set to force re-loading the shadow registers (HW/SW capability and
      --  LOCK)
      RELOAD_SHADOWS : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Write 0x3E77 to enable OTP write accesses
      WR_UNLOCK      : HW_OCOTP_CTRL_CLR_WR_UNLOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_CTRL_CLR_Register use record
      ADDR           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BUSY           at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      RELOAD_SHADOWS at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      WR_UNLOCK      at 0 range 16 .. 31;
   end record;

   subtype HW_OCOTP_CTRL_TOG_ADDR_Field is HAL.UInt6;
   subtype HW_OCOTP_CTRL_TOG_WR_UNLOCK_Field is HAL.UInt16;

   --  OTP Controller Control Register
   type HW_OCOTP_CTRL_TOG_Register is record
      --  OTP write and read access address register
      ADDR           : HW_OCOTP_CTRL_TOG_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. OTP controller status bit
      BUSY           : Boolean := False;
      --  Set by the controller when an access to a locked region(OTP or shadow
      --  register) is requested
      ERROR          : Boolean := False;
      --  Set to force re-loading the shadow registers (HW/SW capability and
      --  LOCK)
      RELOAD_SHADOWS : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Write 0x3E77 to enable OTP write accesses
      WR_UNLOCK      : HW_OCOTP_CTRL_TOG_WR_UNLOCK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_CTRL_TOG_Register use record
      ADDR           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BUSY           at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      RELOAD_SHADOWS at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      WR_UNLOCK      at 0 range 16 .. 31;
   end record;

   subtype HW_OCOTP_TIMING_STROBE_PROG_Field is HAL.UInt12;
   subtype HW_OCOTP_TIMING_RELAX_Field is HAL.UInt4;
   subtype HW_OCOTP_TIMING_STROBE_READ_Field is HAL.UInt6;
   subtype HW_OCOTP_TIMING_WAIT_Field is HAL.UInt6;

   --  OTP Controller Timing Register
   type HW_OCOTP_TIMING_Register is record
      --  This count value specifies the strobe period in one time write OTP
      STROBE_PROG    : HW_OCOTP_TIMING_STROBE_PROG_Field := 16#755#;
      --  This count value specifies the time to add to all default timing
      --  parameters other than the Tpgm and Trd
      RELAX          : HW_OCOTP_TIMING_RELAX_Field := 16#9#;
      --  This count value specifies the strobe period in one time read OTP
      STROBE_READ    : HW_OCOTP_TIMING_STROBE_READ_Field := 16#D#;
      --  This count value specifies time interval between auto read and write
      --  access in one time program
      WAIT           : HW_OCOTP_TIMING_WAIT_Field := 16#18#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_TIMING_Register use record
      STROBE_PROG    at 0 range 0 .. 11;
      RELAX          at 0 range 12 .. 15;
      STROBE_READ    at 0 range 16 .. 21;
      WAIT           at 0 range 22 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  OTP Controller Write Data Register
   type HW_OCOTP_READ_CTRL_Register is record
      --  Used to initiate a read to OTP
      READ_FUSE     : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_READ_CTRL_Register use record
      READ_FUSE     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Sticky bit Register
   type HW_OCOTP_SW_STICKY_Register is record
      --  Shadow register read and OTP read lock for DTCP_KEY region
      BLOCK_DTCP_KEY     : Boolean := False;
      --  Shadow register write and OTP write lock for SRK_REVOKE region
      SRK_REVOKE_LOCK    : Boolean := False;
      --  Shadow register write and OTP write lock for FIELD_RETURN region
      FIELD_RETURN_LOCK  : Boolean := False;
      --  Set by ARM during Boot after DTCP is initialized and before test mode
      --  entry, if ROM_PART_LOCK=1
      BLOCK_ROM_PART     : Boolean := False;
      --  Set by ARM during Boot after DTCP is initialized and before test mode
      --  entry
      JTAG_BLOCK_RELEASE : Boolean := False;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_SW_STICKY_Register use record
      BLOCK_DTCP_KEY     at 0 range 0 .. 0;
      SRK_REVOKE_LOCK    at 0 range 1 .. 1;
      FIELD_RETURN_LOCK  at 0 range 2 .. 2;
      BLOCK_ROM_PART     at 0 range 3 .. 3;
      JTAG_BLOCK_RELEASE at 0 range 4 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype HW_OCOTP_SCS_SPARE_Field is HAL.UInt30;

   --  Software Controllable Signals Register
   type HW_OCOTP_SCS_Register is record
      --  HAB JTAG Debug Enable
      HAB_JDE : Boolean := False;
      --  Unallocated read/write bits for implementation specific software use.
      SPARE   : HW_OCOTP_SCS_SPARE_Field := 16#0#;
      --  When set, all of the bits in this register are locked and can not be
      --  changed through SW programming
      LOCK    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_SCS_Register use record
      HAB_JDE at 0 range 0 .. 0;
      SPARE   at 0 range 1 .. 30;
      LOCK    at 0 range 31 .. 31;
   end record;

   subtype HW_OCOTP_SCS_SET_SPARE_Field is HAL.UInt30;

   --  Software Controllable Signals Register
   type HW_OCOTP_SCS_SET_Register is record
      --  HAB JTAG Debug Enable
      HAB_JDE : Boolean := False;
      --  Unallocated read/write bits for implementation specific software use.
      SPARE   : HW_OCOTP_SCS_SET_SPARE_Field := 16#0#;
      --  When set, all of the bits in this register are locked and can not be
      --  changed through SW programming
      LOCK    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_SCS_SET_Register use record
      HAB_JDE at 0 range 0 .. 0;
      SPARE   at 0 range 1 .. 30;
      LOCK    at 0 range 31 .. 31;
   end record;

   subtype HW_OCOTP_SCS_CLR_SPARE_Field is HAL.UInt30;

   --  Software Controllable Signals Register
   type HW_OCOTP_SCS_CLR_Register is record
      --  HAB JTAG Debug Enable
      HAB_JDE : Boolean := False;
      --  Unallocated read/write bits for implementation specific software use.
      SPARE   : HW_OCOTP_SCS_CLR_SPARE_Field := 16#0#;
      --  When set, all of the bits in this register are locked and can not be
      --  changed through SW programming
      LOCK    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_SCS_CLR_Register use record
      HAB_JDE at 0 range 0 .. 0;
      SPARE   at 0 range 1 .. 30;
      LOCK    at 0 range 31 .. 31;
   end record;

   subtype HW_OCOTP_SCS_TOG_SPARE_Field is HAL.UInt30;

   --  Software Controllable Signals Register
   type HW_OCOTP_SCS_TOG_Register is record
      --  HAB JTAG Debug Enable
      HAB_JDE : Boolean := False;
      --  Unallocated read/write bits for implementation specific software use.
      SPARE   : HW_OCOTP_SCS_TOG_SPARE_Field := 16#0#;
      --  When set, all of the bits in this register are locked and can not be
      --  changed through SW programming
      LOCK    : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_SCS_TOG_Register use record
      HAB_JDE at 0 range 0 .. 0;
      SPARE   at 0 range 1 .. 30;
      LOCK    at 0 range 31 .. 31;
   end record;

   subtype HW_OCOTP_VERSION_STEP_Field is HAL.UInt16;
   subtype HW_OCOTP_VERSION_MINOR_Field is HAL.UInt8;
   subtype HW_OCOTP_VERSION_MAJOR_Field is HAL.UInt8;

   --  OTP Controller Version Register
   type HW_OCOTP_VERSION_Register is record
      --  Read-only. Fixed read-only value reflecting the stepping of the RTL
      --  version.
      STEP  : HW_OCOTP_VERSION_STEP_Field;
      --  Read-only. Fixed read-only value reflecting the MINOR field of the
      --  RTL version.
      MINOR : HW_OCOTP_VERSION_MINOR_Field;
      --  Read-only. Fixed read-only value reflecting the MAJOR field of the
      --  RTL version.
      MAJOR : HW_OCOTP_VERSION_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_VERSION_Register use record
      STEP  at 0 range 0 .. 15;
      MINOR at 0 range 16 .. 23;
      MAJOR at 0 range 24 .. 31;
   end record;

   subtype HW_OCOTP_TIMING2_RELAX_PROG_Field is HAL.UInt12;
   subtype HW_OCOTP_TIMING2_RELAX_READ_Field is HAL.UInt6;
   subtype HW_OCOTP_TIMING2_RELAX1_Field is HAL.UInt7;

   --  OTP Controller Timing Register 2
   type HW_OCOTP_TIMING2_Register is record
      --  This count value specifies the strobe period in one time write OTP
      RELAX_PROG     : HW_OCOTP_TIMING2_RELAX_PROG_Field := 16#92#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  This count value specifies the strobe period in one time read OTP
      RELAX_READ     : HW_OCOTP_TIMING2_RELAX_READ_Field := 16#3#;
      --  This count value specifies time interval between auto read and write
      --  access in one time program
      RELAX1         : HW_OCOTP_TIMING2_RELAX1_Field := 16#7#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_TIMING2_Register use record
      RELAX_PROG     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RELAX_READ     at 0 range 16 .. 21;
      RELAX1         at 0 range 22 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype HW_OCOTP_LOCK_TESTER_Field is HAL.UInt2;
   subtype HW_OCOTP_LOCK_BOOT_CFG_Field is HAL.UInt2;
   subtype HW_OCOTP_LOCK_MEM_TRIM_Field is HAL.UInt2;
   subtype HW_OCOTP_LOCK_MAC_ADDR_Field is HAL.UInt2;
   --  HW_OCOTP_LOCK_GP array element
   subtype HW_OCOTP_LOCK_GP_Element is HAL.UInt2;

   --  HW_OCOTP_LOCK_GP array
   type HW_OCOTP_LOCK_GP_Field_Array is array (1 .. 2)
     of HW_OCOTP_LOCK_GP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for HW_OCOTP_LOCK_GP
   type HW_OCOTP_LOCK_GP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GP as a value
            Val : HAL.UInt4;
         when True =>
            --  GP as an array
            Arr : HW_OCOTP_LOCK_GP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for HW_OCOTP_LOCK_GP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype HW_OCOTP_LOCK_ANALOG_Field is HAL.UInt2;
   subtype HW_OCOTP_LOCK_GP3_Field is HAL.UInt2;
   subtype HW_OCOTP_LOCK_FIELD_RETURN_Field is HAL.UInt4;

   --  Value of OTP Bank0 Word0 (Lock controls)
   type HW_OCOTP_LOCK_Register is record
      --  Read-only. Status of shadow register and OTP write lock for tester
      --  region
      TESTER         : HW_OCOTP_LOCK_TESTER_Field := 16#0#;
      --  Read-only. Status of shadow register and OTP write lock for boot_cfg
      --  region
      BOOT_CFG       : HW_OCOTP_LOCK_BOOT_CFG_Field := 16#0#;
      --  Read-only. Status of shadow register and OTP write lock for mem_trim
      --  region
      MEM_TRIM       : HW_OCOTP_LOCK_MEM_TRIM_Field := 16#0#;
      --  Read-only. Status of shadow register read and write, OTP read and
      --  write lock for sjc_resp region
      SJC_RESP       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Read-only. Status of shadow register and OTP write lock for mac_addr
      --  region
      MAC_ADDR       : HW_OCOTP_LOCK_MAC_ADDR_Field := 16#0#;
      --  Read-only. Status of shadow register and OTP write lock for gp1
      --  region
      GP             : HW_OCOTP_LOCK_GP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Read-only. Status of shadow register and OTP write lock for srk
      --  region
      SRK            : Boolean := False;
      --  Read-only. Status of shadow register read and write, OTP read and
      --  write lock for otpmk region (MSB)
      OTPMK_MSB      : Boolean := False;
      --  Read-only. Status of shadow register and OTP write lock for sw_gp1
      --  region
      SW_GP1         : Boolean := False;
      --  Read-only. Status of shadow register read and write, OTP read and
      --  write lock for otpmk region (LSB)
      OTPMK_LSB      : Boolean := False;
      --  Read-only. Status of shadow register and OTP write lock for analog
      --  region
      ANALOG         : HW_OCOTP_LOCK_ANALOG_Field := 16#0#;
      --  Read-only. Status of shadow register and OTP write lock for otpmk_crc
      --  region
      OTPMK_CRC      : Boolean := False;
      --  Read-only. Status of shadow register and OTP write lock for sw_gp2
      --  region
      SW_GP2_LOCK    : Boolean := False;
      --  Read-only. Status of shadow register and OTP write lock for misc_conf
      --  region
      MISC_CONF      : Boolean := False;
      --  Read-only. Status of shadow register and OTP read lock for sw_gp2
      --  region
      SW_GP2_RLOCK   : Boolean := False;
      --  unspecified
      Reserved_24_25 : HAL.UInt2 := 16#0#;
      --  Read-only. Status of shadow register and OTP write lock for gp3
      --  region
      GP3            : HW_OCOTP_LOCK_GP3_Field := 16#0#;
      --  Reserved
      FIELD_RETURN   : HW_OCOTP_LOCK_FIELD_RETURN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_OCOTP_LOCK_Register use record
      TESTER         at 0 range 0 .. 1;
      BOOT_CFG       at 0 range 2 .. 3;
      MEM_TRIM       at 0 range 4 .. 5;
      SJC_RESP       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MAC_ADDR       at 0 range 8 .. 9;
      GP             at 0 range 10 .. 13;
      SRK            at 0 range 14 .. 14;
      OTPMK_MSB      at 0 range 15 .. 15;
      SW_GP1         at 0 range 16 .. 16;
      OTPMK_LSB      at 0 range 17 .. 17;
      ANALOG         at 0 range 18 .. 19;
      OTPMK_CRC      at 0 range 20 .. 20;
      SW_GP2_LOCK    at 0 range 21 .. 21;
      MISC_CONF      at 0 range 22 .. 22;
      SW_GP2_RLOCK   at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      GP3            at 0 range 26 .. 27;
      FIELD_RETURN   at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  no description available
   type OCOTP_Peripheral is record
      --  OTP Controller Control Register
      HW_OCOTP_CTRL           : aliased HW_OCOTP_CTRL_Register;
      --  OTP Controller Control Register
      HW_OCOTP_CTRL_SET       : aliased HW_OCOTP_CTRL_SET_Register;
      --  OTP Controller Control Register
      HW_OCOTP_CTRL_CLR       : aliased HW_OCOTP_CTRL_CLR_Register;
      --  OTP Controller Control Register
      HW_OCOTP_CTRL_TOG       : aliased HW_OCOTP_CTRL_TOG_Register;
      --  OTP Controller Timing Register
      HW_OCOTP_TIMING         : aliased HW_OCOTP_TIMING_Register;
      --  OTP Controller Write Data Register
      HW_OCOTP_DATA           : aliased HAL.UInt32;
      --  OTP Controller Write Data Register
      HW_OCOTP_READ_CTRL      : aliased HW_OCOTP_READ_CTRL_Register;
      --  OTP Controller Read Data Register
      HW_OCOTP_READ_FUSE_DATA : aliased HAL.UInt32;
      --  Sticky bit Register
      HW_OCOTP_SW_STICKY      : aliased HW_OCOTP_SW_STICKY_Register;
      --  Software Controllable Signals Register
      HW_OCOTP_SCS            : aliased HW_OCOTP_SCS_Register;
      --  Software Controllable Signals Register
      HW_OCOTP_SCS_SET        : aliased HW_OCOTP_SCS_SET_Register;
      --  Software Controllable Signals Register
      HW_OCOTP_SCS_CLR        : aliased HW_OCOTP_SCS_CLR_Register;
      --  Software Controllable Signals Register
      HW_OCOTP_SCS_TOG        : aliased HW_OCOTP_SCS_TOG_Register;
      --  OTP Controller Version Register
      HW_OCOTP_VERSION        : aliased HW_OCOTP_VERSION_Register;
      --  OTP Controller Timing Register 2
      HW_OCOTP_TIMING2        : aliased HW_OCOTP_TIMING2_Register;
      --  Value of OTP Bank0 Word0 (Lock controls)
      HW_OCOTP_LOCK           : aliased HW_OCOTP_LOCK_Register;
      --  Value of OTP Bank0 Word1 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG0           : aliased HAL.UInt32;
      --  Value of OTP Bank0 Word2 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG1           : aliased HAL.UInt32;
      --  Value of OTP Bank0 Word3 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG2           : aliased HAL.UInt32;
      --  Value of OTP Bank0 Word4 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG3           : aliased HAL.UInt32;
      --  Value of OTP Bank0 Word5 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG4           : aliased HAL.UInt32;
      --  Value of OTP Bank0 Word6 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG5           : aliased HAL.UInt32;
      --  Value of OTP Bank0 Word7 (Configuration and Manufacturing Info.)
      HW_OCOTP_CFG6           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word0 (Memory Related Info.)
      HW_OCOTP_MEM0           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word1 (Memory Related Info.)
      HW_OCOTP_MEM1           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word2 (Memory Related Info.)
      HW_OCOTP_MEM2           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word3 (Memory Related Info.)
      HW_OCOTP_MEM3           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word4 (Memory Related Info.)
      HW_OCOTP_MEM4           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word5 (Analog Info.)
      HW_OCOTP_ANA0           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word6 (Analog Info.)
      HW_OCOTP_ANA1           : aliased HAL.UInt32;
      --  Value of OTP Bank1 Word7 (Analog Info.)
      HW_OCOTP_ANA2           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word0 (SRK Hash)
      HW_OCOTP_SRK0           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word1 (SRK Hash)
      HW_OCOTP_SRK1           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word2 (SRK Hash)
      HW_OCOTP_SRK2           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word3 (SRK Hash)
      HW_OCOTP_SRK3           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word4 (SRK Hash)
      HW_OCOTP_SRK4           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word5 (SRK Hash)
      HW_OCOTP_SRK5           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word6 (SRK Hash)
      HW_OCOTP_SRK6           : aliased HAL.UInt32;
      --  Shadow Register for OTP Bank3 Word7 (SRK Hash)
      HW_OCOTP_SRK7           : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word0 (Secure JTAG Response Field)
      HW_OCOTP_SJC_RESP0      : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word1 (Secure JTAG Response Field)
      HW_OCOTP_SJC_RESP1      : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word2 (MAC Address)
      HW_OCOTP_MAC0           : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word3 (MAC Address)
      HW_OCOTP_MAC1           : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word4 (MAC Address)
      HW_OCOTP_GP3            : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word6 (General Purpose Customer Defined Info)
      HW_OCOTP_GP1            : aliased HAL.UInt32;
      --  Value of OTP Bank4 Word7 (General Purpose Customer Defined Info)
      HW_OCOTP_GP2            : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word0 (SW GP1)
      HW_OCOTP_SW_GP1         : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word1 (SW GP2)
      HW_OCOTP_SW_GP20        : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word2 (SW GP2)
      HW_OCOTP_SW_GP21        : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word3 (SW GP2)
      HW_OCOTP_SW_GP22        : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word4 (SW GP2)
      HW_OCOTP_SW_GP23        : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word5 (Misc Conf)
      HW_OCOTP_MISC_CONF0     : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word6 (Misc Conf)
      HW_OCOTP_MISC_CONF1     : aliased HAL.UInt32;
      --  Value of OTP Bank5 Word7 (SRK Revoke)
      HW_OCOTP_SRK_REVOKE     : aliased HAL.UInt32;
   end record
     with Volatile;

   for OCOTP_Peripheral use record
      HW_OCOTP_CTRL           at 16#0# range 0 .. 31;
      HW_OCOTP_CTRL_SET       at 16#4# range 0 .. 31;
      HW_OCOTP_CTRL_CLR       at 16#8# range 0 .. 31;
      HW_OCOTP_CTRL_TOG       at 16#C# range 0 .. 31;
      HW_OCOTP_TIMING         at 16#10# range 0 .. 31;
      HW_OCOTP_DATA           at 16#20# range 0 .. 31;
      HW_OCOTP_READ_CTRL      at 16#30# range 0 .. 31;
      HW_OCOTP_READ_FUSE_DATA at 16#40# range 0 .. 31;
      HW_OCOTP_SW_STICKY      at 16#50# range 0 .. 31;
      HW_OCOTP_SCS            at 16#60# range 0 .. 31;
      HW_OCOTP_SCS_SET        at 16#64# range 0 .. 31;
      HW_OCOTP_SCS_CLR        at 16#68# range 0 .. 31;
      HW_OCOTP_SCS_TOG        at 16#6C# range 0 .. 31;
      HW_OCOTP_VERSION        at 16#90# range 0 .. 31;
      HW_OCOTP_TIMING2        at 16#100# range 0 .. 31;
      HW_OCOTP_LOCK           at 16#400# range 0 .. 31;
      HW_OCOTP_CFG0           at 16#410# range 0 .. 31;
      HW_OCOTP_CFG1           at 16#420# range 0 .. 31;
      HW_OCOTP_CFG2           at 16#430# range 0 .. 31;
      HW_OCOTP_CFG3           at 16#440# range 0 .. 31;
      HW_OCOTP_CFG4           at 16#450# range 0 .. 31;
      HW_OCOTP_CFG5           at 16#460# range 0 .. 31;
      HW_OCOTP_CFG6           at 16#470# range 0 .. 31;
      HW_OCOTP_MEM0           at 16#480# range 0 .. 31;
      HW_OCOTP_MEM1           at 16#490# range 0 .. 31;
      HW_OCOTP_MEM2           at 16#4A0# range 0 .. 31;
      HW_OCOTP_MEM3           at 16#4B0# range 0 .. 31;
      HW_OCOTP_MEM4           at 16#4C0# range 0 .. 31;
      HW_OCOTP_ANA0           at 16#4D0# range 0 .. 31;
      HW_OCOTP_ANA1           at 16#4E0# range 0 .. 31;
      HW_OCOTP_ANA2           at 16#4F0# range 0 .. 31;
      HW_OCOTP_SRK0           at 16#580# range 0 .. 31;
      HW_OCOTP_SRK1           at 16#590# range 0 .. 31;
      HW_OCOTP_SRK2           at 16#5A0# range 0 .. 31;
      HW_OCOTP_SRK3           at 16#5B0# range 0 .. 31;
      HW_OCOTP_SRK4           at 16#5C0# range 0 .. 31;
      HW_OCOTP_SRK5           at 16#5D0# range 0 .. 31;
      HW_OCOTP_SRK6           at 16#5E0# range 0 .. 31;
      HW_OCOTP_SRK7           at 16#5F0# range 0 .. 31;
      HW_OCOTP_SJC_RESP0      at 16#600# range 0 .. 31;
      HW_OCOTP_SJC_RESP1      at 16#610# range 0 .. 31;
      HW_OCOTP_MAC0           at 16#620# range 0 .. 31;
      HW_OCOTP_MAC1           at 16#630# range 0 .. 31;
      HW_OCOTP_GP3            at 16#640# range 0 .. 31;
      HW_OCOTP_GP1            at 16#660# range 0 .. 31;
      HW_OCOTP_GP2            at 16#670# range 0 .. 31;
      HW_OCOTP_SW_GP1         at 16#680# range 0 .. 31;
      HW_OCOTP_SW_GP20        at 16#690# range 0 .. 31;
      HW_OCOTP_SW_GP21        at 16#6A0# range 0 .. 31;
      HW_OCOTP_SW_GP22        at 16#6B0# range 0 .. 31;
      HW_OCOTP_SW_GP23        at 16#6C0# range 0 .. 31;
      HW_OCOTP_MISC_CONF0     at 16#6D0# range 0 .. 31;
      HW_OCOTP_MISC_CONF1     at 16#6E0# range 0 .. 31;
      HW_OCOTP_SRK_REVOKE     at 16#6F0# range 0 .. 31;
   end record;

   --  no description available
   OCOTP_Periph : aliased OCOTP_Peripheral
     with Import, Address => System'To_Address (16#401F4000#);

end NRF_SVD.OCOTP;
