--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  lockup reset enable bit
   type SCR_lockup_rst_Field is
     (
      --  disabled
      LOCKUP_RST_0,
      --  enabled
      LOCKUP_RST_1)
     with Size => 1;
   for SCR_lockup_rst_Field use
     (LOCKUP_RST_0 => 0,
      LOCKUP_RST_1 => 1);

   --  Mask wdog_rst_b source
   type SCR_mask_wdog_rst_Field is
     (
      --  wdog_rst_b is masked
      MASK_WDOG_RST_5,
      --  wdog_rst_b is not masked (default)
      MASK_WDOG_RST_10)
     with Size => 4;
   for SCR_mask_wdog_rst_Field use
     (MASK_WDOG_RST_5 => 5,
      MASK_WDOG_RST_10 => 10);

   --  Software reset for core0 only
   type SCR_core0_rst_Field is
     (
      --  do not assert core0 reset
      CORE0_RST_0,
      --  assert core0 reset
      CORE0_RST_1)
     with Size => 1;
   for SCR_core0_rst_Field use
     (CORE0_RST_0 => 0,
      CORE0_RST_1 => 1);

   --  Software reset for core0 debug only
   type SCR_core0_dbg_rst_Field is
     (
      --  do not assert core0 debug reset
      CORE0_DBG_RST_0,
      --  assert core0 debug reset
      CORE0_DBG_RST_1)
     with Size => 1;
   for SCR_core0_dbg_rst_Field use
     (CORE0_DBG_RST_0 => 0,
      CORE0_DBG_RST_1 => 1);

   --  Do not assert debug resets after power gating event of core
   type SCR_dbg_rst_msk_pg_Field is
     (
      --  do not mask core debug resets (debug resets will be asserted after
      --  power gating event)
      DBG_RST_MSK_PG_0,
      --  mask core debug resets (debug resets won't be asserted after power
      --  gating event)
      DBG_RST_MSK_PG_1)
     with Size => 1;
   for SCR_dbg_rst_msk_pg_Field use
     (DBG_RST_MSK_PG_0 => 0,
      DBG_RST_MSK_PG_1 => 1);

   --  Mask wdog3_rst_b source
   type SCR_mask_wdog3_rst_Field is
     (
      --  Reset value for the field
      Scr_MASK_WDOG3_RST_Field_Reset,
      --  wdog3_rst_b is masked
      MASK_WDOG3_RST_5,
      --  wdog3_rst_b is not masked
      MASK_WDOG3_RST_10)
     with Size => 4;
   for SCR_mask_wdog3_rst_Field use
     (Scr_MASK_WDOG3_RST_Field_Reset => 0,
      MASK_WDOG3_RST_5 => 5,
      MASK_WDOG3_RST_10 => 10);

   --  SRC Control Register
   type SRC_SCR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  lockup reset enable bit
      lockup_rst     : SCR_lockup_rst_Field := NRF_SVD.SRC.LOCKUP_RST_0;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Mask wdog_rst_b source
      mask_wdog_rst  : SCR_mask_wdog_rst_Field :=
                        NRF_SVD.SRC.MASK_WDOG_RST_10;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Software reset for core0 only
      core0_rst      : SCR_core0_rst_Field := NRF_SVD.SRC.CORE0_RST_0;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Software reset for core0 debug only
      core0_dbg_rst  : SCR_core0_dbg_rst_Field := NRF_SVD.SRC.CORE0_DBG_RST_0;
      --  unspecified
      Reserved_18_24 : HAL.UInt7 := 16#0#;
      --  Do not assert debug resets after power gating event of core
      dbg_rst_msk_pg : SCR_dbg_rst_msk_pg_Field :=
                        NRF_SVD.SRC.DBG_RST_MSK_PG_0;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Mask wdog3_rst_b source
      mask_wdog3_rst : SCR_mask_wdog3_rst_Field :=
                        Scr_MASK_WDOG3_RST_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRC_SCR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      lockup_rst     at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      mask_wdog_rst  at 0 range 7 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      core0_rst      at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      core0_dbg_rst  at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      dbg_rst_msk_pg at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      mask_wdog3_rst at 0 range 28 .. 31;
   end record;

   --  SRC_SBMR1_BOOT_CFG array element
   subtype SRC_SBMR1_BOOT_CFG_Element is HAL.UInt8;

   --  SRC_SBMR1_BOOT_CFG array
   type SRC_SBMR1_BOOT_CFG_Field_Array is array (1 .. 4)
     of SRC_SBMR1_BOOT_CFG_Element
     with Component_Size => 8, Size => 32;

   --  SRC Boot Mode Register 1
   type SRC_SBMR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BOOT_CFG as a value
            Val : HAL.UInt32;
         when True =>
            --  BOOT_CFG as an array
            Arr : SRC_SBMR1_BOOT_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SRC_SBMR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Indicates whether reset was the result of ipp_reset_b pin (Power-up
   --  sequence)
   type SRSR_ipp_reset_b_Field is
     (
      --  Reset is not a result of ipp_reset_b pin.
      IPP_RESET_B_0,
      --  Reset is a result of ipp_reset_b pin.
      IPP_RESET_B_1)
     with Size => 1;
   for SRSR_ipp_reset_b_Field use
     (IPP_RESET_B_0 => 0,
      IPP_RESET_B_1 => 1);

   --  Indicates a reset has been caused by CPU lockup or software setting of
   --  SYSRESETREQ bit in Application Interrupt and Reset Control Register of
   --  the ARM core
   type SRSR_lockup_sysresetreq_Field is
     (
      --  Reset is not a result of the mentioned case.
      LOCKUP_SYSRESETREQ_0,
      --  Reset is a result of the mentioned case.
      LOCKUP_SYSRESETREQ_1)
     with Size => 1;
   for SRSR_lockup_sysresetreq_Field use
     (LOCKUP_SYSRESETREQ_0 => 0,
      LOCKUP_SYSRESETREQ_1 => 1);

   --  Indicates whether the reset was the result of the csu_reset_b input.
   type SRSR_csu_reset_b_Field is
     (
      --  Reset is not a result of the csu_reset_b event.
      CSU_RESET_B_0,
      --  Reset is a result of the csu_reset_b event.
      CSU_RESET_B_1)
     with Size => 1;
   for SRSR_csu_reset_b_Field use
     (CSU_RESET_B_0 => 0,
      CSU_RESET_B_1 => 1);

   --  Indicates whether the reset was the result of the ipp_user_reset_b
   --  qualified reset.
   type SRSR_ipp_user_reset_b_Field is
     (
      --  Reset is not a result of the ipp_user_reset_b qualified as COLD reset
      --  event.
      IPP_USER_RESET_B_0,
      --  Reset is a result of the ipp_user_reset_b qualified as COLD reset
      --  event.
      IPP_USER_RESET_B_1)
     with Size => 1;
   for SRSR_ipp_user_reset_b_Field use
     (IPP_USER_RESET_B_0 => 0,
      IPP_USER_RESET_B_1 => 1);

   --  IC Watchdog Time-out reset
   type SRSR_wdog_rst_b_Field is
     (
      --  Reset is not a result of the watchdog time-out event.
      WDOG_RST_B_0,
      --  Reset is a result of the watchdog time-out event.
      WDOG_RST_B_1)
     with Size => 1;
   for SRSR_wdog_rst_b_Field use
     (WDOG_RST_B_0 => 0,
      WDOG_RST_B_1 => 1);

   --  HIGH - Z JTAG reset. Indicates whether the reset was the result of
   --  HIGH-Z reset from JTAG.
   type SRSR_jtag_rst_b_Field is
     (
      --  Reset is not a result of HIGH-Z reset from JTAG.
      JTAG_RST_B_0,
      --  Reset is a result of HIGH-Z reset from JTAG.
      JTAG_RST_B_1)
     with Size => 1;
   for SRSR_jtag_rst_b_Field use
     (JTAG_RST_B_0 => 0,
      JTAG_RST_B_1 => 1);

   --  JTAG software reset. Indicates whether the reset was the result of
   --  software reset from JTAG.
   type SRSR_jtag_sw_rst_Field is
     (
      --  Reset is not a result of software reset from JTAG.
      JTAG_SW_RST_0,
      --  Reset is a result of software reset from JTAG.
      JTAG_SW_RST_1)
     with Size => 1;
   for SRSR_jtag_sw_rst_Field use
     (JTAG_SW_RST_0 => 0,
      JTAG_SW_RST_1 => 1);

   --  IC Watchdog3 Time-out reset
   type SRSR_wdog3_rst_b_Field is
     (
      --  Reset is not a result of the watchdog3 time-out event.
      WDOG3_RST_B_0,
      --  Reset is a result of the watchdog3 time-out event.
      WDOG3_RST_B_1)
     with Size => 1;
   for SRSR_wdog3_rst_b_Field use
     (WDOG3_RST_B_0 => 0,
      WDOG3_RST_B_1 => 1);

   --  Temper Sensor software reset
   type SRSR_tempsense_rst_b_Field is
     (
      --  Reset is not a result of software reset from Temperature Sensor.
      TEMPSENSE_RST_B_0,
      --  Reset is a result of software reset from Temperature Sensor.
      TEMPSENSE_RST_B_1)
     with Size => 1;
   for SRSR_tempsense_rst_b_Field use
     (TEMPSENSE_RST_B_0 => 0,
      TEMPSENSE_RST_B_1 => 1);

   --  SRC Reset Status Register
   type SRC_SRSR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Indicates whether reset was the result of ipp_reset_b
      --  pin (Power-up sequence)
      ipp_reset_b        : SRSR_ipp_reset_b_Field :=
                            NRF_SVD.SRC.IPP_RESET_B_1;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Indicates a reset has been caused by CPU lockup or
      --  software setting of SYSRESETREQ bit in Application Interrupt and
      --  Reset Control Register of the ARM core
      lockup_sysresetreq : SRSR_lockup_sysresetreq_Field :=
                            NRF_SVD.SRC.LOCKUP_SYSRESETREQ_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Indicates whether the reset was the result of the
      --  csu_reset_b input.
      csu_reset_b        : SRSR_csu_reset_b_Field :=
                            NRF_SVD.SRC.CSU_RESET_B_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Indicates whether the reset was the result of the
      --  ipp_user_reset_b qualified reset.
      ipp_user_reset_b   : SRSR_ipp_user_reset_b_Field :=
                            NRF_SVD.SRC.IPP_USER_RESET_B_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. IC Watchdog Time-out reset
      wdog_rst_b         : SRSR_wdog_rst_b_Field := NRF_SVD.SRC.WDOG_RST_B_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. HIGH - Z JTAG reset. Indicates whether the reset was
      --  the result of HIGH-Z reset from JTAG.
      jtag_rst_b         : SRSR_jtag_rst_b_Field := NRF_SVD.SRC.JTAG_RST_B_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. JTAG software reset. Indicates whether the reset was
      --  the result of software reset from JTAG.
      jtag_sw_rst        : SRSR_jtag_sw_rst_Field :=
                            NRF_SVD.SRC.JTAG_SW_RST_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. IC Watchdog3 Time-out reset
      wdog3_rst_b        : SRSR_wdog3_rst_b_Field :=
                            NRF_SVD.SRC.WDOG3_RST_B_0;
      --  Temper Sensor software reset
      tempsense_rst_b    : SRSR_tempsense_rst_b_Field :=
                            NRF_SVD.SRC.TEMPSENSE_RST_B_0;
      --  unspecified
      Reserved_9_31      : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRC_SRSR_Register use record
      ipp_reset_b        at 0 range 0 .. 0;
      lockup_sysresetreq at 0 range 1 .. 1;
      csu_reset_b        at 0 range 2 .. 2;
      ipp_user_reset_b   at 0 range 3 .. 3;
      wdog_rst_b         at 0 range 4 .. 4;
      jtag_rst_b         at 0 range 5 .. 5;
      jtag_sw_rst        at 0 range 6 .. 6;
      wdog3_rst_b        at 0 range 7 .. 7;
      tempsense_rst_b    at 0 range 8 .. 8;
      Reserved_9_31      at 0 range 9 .. 31;
   end record;

   subtype SRC_SBMR2_SEC_CONFIG_Field is HAL.UInt2;
   subtype SRC_SBMR2_BMOD_Field is HAL.UInt2;

   --  SRC Boot Mode Register 2
   type SRC_SBMR2_Register is record
      --  Read-only. SECONFIG[1] shows the state of the SECONFIG[1] fuse
      SEC_CONFIG     : SRC_SBMR2_SEC_CONFIG_Field;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. DIR_BT_DIS shows the state of the DIR_BT_DIS fuse
      DIR_BT_DIS     : Boolean;
      --  Read-only. BT_FUSE_SEL (connected to gpio bt_fuse_sel) shows the
      --  state of the BT_FUSE_SEL fuse
      BT_FUSE_SEL    : Boolean;
      --  unspecified
      Reserved_5_23  : HAL.UInt19;
      --  Read-only. BMOD[1:0] shows the latched state of the BOOT_MODE1 and
      --  BOOT_MODE0 signals on the rising edge of POR_B
      BMOD           : SRC_SBMR2_BMOD_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRC_SBMR2_Register use record
      SEC_CONFIG     at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DIR_BT_DIS     at 0 range 3 .. 3;
      BT_FUSE_SEL    at 0 range 4 .. 4;
      Reserved_5_23  at 0 range 5 .. 23;
      BMOD           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SRC
   type SRC_Peripheral is record
      --  SRC Control Register
      SCR   : aliased SRC_SCR_Register;
      --  SRC Boot Mode Register 1
      SBMR1 : aliased SRC_SBMR1_Register;
      --  SRC Reset Status Register
      SRSR  : aliased SRC_SRSR_Register;
      --  SRC Boot Mode Register 2
      SBMR2 : aliased SRC_SBMR2_Register;
      --  SRC General Purpose Register 1
      GPR1  : aliased HAL.UInt32;
      --  SRC General Purpose Register 2
      GPR2  : aliased HAL.UInt32;
      --  SRC General Purpose Register 3
      GPR3  : aliased HAL.UInt32;
      --  SRC General Purpose Register 4
      GPR4  : aliased HAL.UInt32;
      --  SRC General Purpose Register 5
      GPR5  : aliased HAL.UInt32;
      --  SRC General Purpose Register 6
      GPR6  : aliased HAL.UInt32;
      --  SRC General Purpose Register 7
      GPR7  : aliased HAL.UInt32;
      --  SRC General Purpose Register 8
      GPR8  : aliased HAL.UInt32;
      --  SRC General Purpose Register 9
      GPR9  : aliased HAL.UInt32;
      --  SRC General Purpose Register 10
      GPR10 : aliased HAL.UInt32;
   end record
     with Volatile;

   for SRC_Peripheral use record
      SCR   at 16#0# range 0 .. 31;
      SBMR1 at 16#4# range 0 .. 31;
      SRSR  at 16#8# range 0 .. 31;
      SBMR2 at 16#1C# range 0 .. 31;
      GPR1  at 16#20# range 0 .. 31;
      GPR2  at 16#24# range 0 .. 31;
      GPR3  at 16#28# range 0 .. 31;
      GPR4  at 16#2C# range 0 .. 31;
      GPR5  at 16#30# range 0 .. 31;
      GPR6  at 16#34# range 0 .. 31;
      GPR7  at 16#38# range 0 .. 31;
      GPR8  at 16#3C# range 0 .. 31;
      GPR9  at 16#40# range 0 .. 31;
      GPR10 at 16#44# range 0 .. 31;
   end record;

   --  SRC
   SRC_Periph : aliased SRC_Peripheral
     with Import, Address => System'To_Address (16#400F8000#);

end NRF_SVD.SRC;
