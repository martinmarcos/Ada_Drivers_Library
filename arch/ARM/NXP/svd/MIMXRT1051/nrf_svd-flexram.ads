--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FLEXRAM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  TCM Write Wait Mode Enable
   type TCM_CTRL_TCM_WWAIT_EN_Field is
     (
      --  TCM write fast mode: Write RAM accesses are expected to be finished
      --  in 1-cycle.
      Tcm_Wwait_En_0,
      --  TCM write wait mode: Write RAM accesses are expected to be finished
      --  in 2-cycles.
      Tcm_Wwait_En_1)
     with Size => 1;
   for TCM_CTRL_TCM_WWAIT_EN_Field use
     (Tcm_Wwait_En_0 => 0,
      Tcm_Wwait_En_1 => 1);

   --  TCM Read Wait Mode Enable
   type TCM_CTRL_TCM_RWAIT_EN_Field is
     (
      --  TCM read fast mode: Read RAM accesses are expected to be finished in
      --  1-cycle.
      Tcm_Rwait_En_0,
      --  TCM read wait mode: Read RAM accesses are expected to be finished in
      --  2-cycles.
      Tcm_Rwait_En_1)
     with Size => 1;
   for TCM_CTRL_TCM_RWAIT_EN_Field use
     (Tcm_Rwait_En_0 => 0,
      Tcm_Rwait_En_1 => 1);

   subtype TCM_CTRL_Reserved_Field is HAL.UInt29;

   --  TCM CRTL Register
   type TCM_CTRL_Register is record
      --  TCM Write Wait Mode Enable
      TCM_WWAIT_EN : TCM_CTRL_TCM_WWAIT_EN_Field :=
                      NRF_SVD.FLEXRAM.Tcm_Wwait_En_0;
      --  TCM Read Wait Mode Enable
      TCM_RWAIT_EN : TCM_CTRL_TCM_RWAIT_EN_Field :=
                      NRF_SVD.FLEXRAM.Tcm_Rwait_En_0;
      --  Force RAM Clock Always On
      FORCE_CLK_ON : Boolean := False;
      --  Read-only. Reserved
      Reserved     : TCM_CTRL_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCM_CTRL_Register use record
      TCM_WWAIT_EN at 0 range 0 .. 0;
      TCM_RWAIT_EN at 0 range 1 .. 1;
      FORCE_CLK_ON at 0 range 2 .. 2;
      Reserved     at 0 range 3 .. 31;
   end record;

   --  OCRAM Write Read Select
   type OCRAM_MAGIC_ADDR_OCRAM_WR_RD_SEL_Field is
     (
      --  When OCRAM read access hits magic address, it will generate
      --  interrupt.
      Ocram_Wr_Rd_Sel_0,
      --  When OCRAM write access hits magic address, it will generate
      --  interrupt.
      Ocram_Wr_Rd_Sel_1)
     with Size => 1;
   for OCRAM_MAGIC_ADDR_OCRAM_WR_RD_SEL_Field use
     (Ocram_Wr_Rd_Sel_0 => 0,
      Ocram_Wr_Rd_Sel_1 => 1);

   subtype OCRAM_MAGIC_ADDR_OCRAM_MAGIC_ADDR_Field is HAL.UInt16;
   subtype OCRAM_MAGIC_ADDR_Reserved_Field is HAL.UInt15;

   --  OCRAM Magic Address Register
   type OCRAM_MAGIC_ADDR_Register is record
      --  OCRAM Write Read Select
      OCRAM_WR_RD_SEL  : OCRAM_MAGIC_ADDR_OCRAM_WR_RD_SEL_Field :=
                          NRF_SVD.FLEXRAM.Ocram_Wr_Rd_Sel_0;
      --  OCRAM Magic Address
      OCRAM_MAGIC_ADDR : OCRAM_MAGIC_ADDR_OCRAM_MAGIC_ADDR_Field := 16#0#;
      --  Read-only. Reserved
      Reserved         : OCRAM_MAGIC_ADDR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCRAM_MAGIC_ADDR_Register use record
      OCRAM_WR_RD_SEL  at 0 range 0 .. 0;
      OCRAM_MAGIC_ADDR at 0 range 1 .. 16;
      Reserved         at 0 range 17 .. 31;
   end record;

   --  DTCM Write Read Select
   type DTCM_MAGIC_ADDR_DTCM_WR_RD_SEL_Field is
     (
      --  When DTCM read access hits magic address, it will generate interrupt.
      Dtcm_Wr_Rd_Sel_0,
      --  When DTCM write access hits magic address, it will generate
      --  interrupt.
      Dtcm_Wr_Rd_Sel_1)
     with Size => 1;
   for DTCM_MAGIC_ADDR_DTCM_WR_RD_SEL_Field use
     (Dtcm_Wr_Rd_Sel_0 => 0,
      Dtcm_Wr_Rd_Sel_1 => 1);

   subtype DTCM_MAGIC_ADDR_DTCM_MAGIC_ADDR_Field is HAL.UInt16;
   subtype DTCM_MAGIC_ADDR_Reserved_Field is HAL.UInt15;

   --  DTCM Magic Address Register
   type DTCM_MAGIC_ADDR_Register is record
      --  DTCM Write Read Select
      DTCM_WR_RD_SEL  : DTCM_MAGIC_ADDR_DTCM_WR_RD_SEL_Field :=
                         NRF_SVD.FLEXRAM.Dtcm_Wr_Rd_Sel_0;
      --  DTCM Magic Address
      DTCM_MAGIC_ADDR : DTCM_MAGIC_ADDR_DTCM_MAGIC_ADDR_Field := 16#0#;
      --  Read-only. Reserved
      Reserved        : DTCM_MAGIC_ADDR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTCM_MAGIC_ADDR_Register use record
      DTCM_WR_RD_SEL  at 0 range 0 .. 0;
      DTCM_MAGIC_ADDR at 0 range 1 .. 16;
      Reserved        at 0 range 17 .. 31;
   end record;

   --  ITCM Write Read Select
   type ITCM_MAGIC_ADDR_ITCM_WR_RD_SEL_Field is
     (
      --  When ITCM read access hits magic address, it will generate interrupt.
      Itcm_Wr_Rd_Sel_0,
      --  When ITCM write access hits magic address, it will generate
      --  interrupt.
      Itcm_Wr_Rd_Sel_1)
     with Size => 1;
   for ITCM_MAGIC_ADDR_ITCM_WR_RD_SEL_Field use
     (Itcm_Wr_Rd_Sel_0 => 0,
      Itcm_Wr_Rd_Sel_1 => 1);

   subtype ITCM_MAGIC_ADDR_ITCM_MAGIC_ADDR_Field is HAL.UInt16;
   subtype ITCM_MAGIC_ADDR_Reserved_Field is HAL.UInt15;

   --  ITCM Magic Address Register
   type ITCM_MAGIC_ADDR_Register is record
      --  ITCM Write Read Select
      ITCM_WR_RD_SEL  : ITCM_MAGIC_ADDR_ITCM_WR_RD_SEL_Field :=
                         NRF_SVD.FLEXRAM.Itcm_Wr_Rd_Sel_0;
      --  ITCM Magic Address
      ITCM_MAGIC_ADDR : ITCM_MAGIC_ADDR_ITCM_MAGIC_ADDR_Field := 16#0#;
      --  Read-only. Reserved
      Reserved        : ITCM_MAGIC_ADDR_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITCM_MAGIC_ADDR_Register use record
      ITCM_WR_RD_SEL  at 0 range 0 .. 0;
      ITCM_MAGIC_ADDR at 0 range 1 .. 16;
      Reserved        at 0 range 17 .. 31;
   end record;

   --  ITCM Magic Address Match Status
   type INT_STATUS_ITCM_MAM_STATUS_Field is
     (
      --  ITCM did not access magic address.
      Itcm_Mam_Status_0,
      --  ITCM accessed magic address.
      Itcm_Mam_Status_1)
     with Size => 1;
   for INT_STATUS_ITCM_MAM_STATUS_Field use
     (Itcm_Mam_Status_0 => 0,
      Itcm_Mam_Status_1 => 1);

   --  DTCM Magic Address Match Status
   type INT_STATUS_DTCM_MAM_STATUS_Field is
     (
      --  DTCM did not access magic address.
      Dtcm_Mam_Status_0,
      --  DTCM accessed magic address.
      Dtcm_Mam_Status_1)
     with Size => 1;
   for INT_STATUS_DTCM_MAM_STATUS_Field use
     (Dtcm_Mam_Status_0 => 0,
      Dtcm_Mam_Status_1 => 1);

   --  OCRAM Magic Address Match Status
   type INT_STATUS_OCRAM_MAM_STATUS_Field is
     (
      --  OCRAM did not access magic address.
      Ocram_Mam_Status_0,
      --  OCRAM accessed magic address.
      Ocram_Mam_Status_1)
     with Size => 1;
   for INT_STATUS_OCRAM_MAM_STATUS_Field use
     (Ocram_Mam_Status_0 => 0,
      Ocram_Mam_Status_1 => 1);

   --  ITCM Access Error Status
   type INT_STATUS_ITCM_ERR_STATUS_Field is
     (
      --  ITCM access error does not happen
      Itcm_Err_Status_0,
      --  ITCM access error happens.
      Itcm_Err_Status_1)
     with Size => 1;
   for INT_STATUS_ITCM_ERR_STATUS_Field use
     (Itcm_Err_Status_0 => 0,
      Itcm_Err_Status_1 => 1);

   --  DTCM Access Error Status
   type INT_STATUS_DTCM_ERR_STATUS_Field is
     (
      --  DTCM access error does not happen
      Dtcm_Err_Status_0,
      --  DTCM access error happens.
      Dtcm_Err_Status_1)
     with Size => 1;
   for INT_STATUS_DTCM_ERR_STATUS_Field use
     (Dtcm_Err_Status_0 => 0,
      Dtcm_Err_Status_1 => 1);

   --  OCRAM Access Error Status
   type INT_STATUS_OCRAM_ERR_STATUS_Field is
     (
      --  OCRAM access error does not happen
      Ocram_Err_Status_0,
      --  OCRAM access error happens.
      Ocram_Err_Status_1)
     with Size => 1;
   for INT_STATUS_OCRAM_ERR_STATUS_Field use
     (Ocram_Err_Status_0 => 0,
      Ocram_Err_Status_1 => 1);

   subtype INT_STATUS_Reserved_Field is HAL.UInt26;

   --  Interrupt Status Register
   type INT_STATUS_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. ITCM Magic Address Match Status
      ITCM_MAM_STATUS  : INT_STATUS_ITCM_MAM_STATUS_Field :=
                          NRF_SVD.FLEXRAM.Itcm_Mam_Status_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DTCM Magic Address Match Status
      DTCM_MAM_STATUS  : INT_STATUS_DTCM_MAM_STATUS_Field :=
                          NRF_SVD.FLEXRAM.Dtcm_Mam_Status_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. OCRAM Magic Address Match Status
      OCRAM_MAM_STATUS : INT_STATUS_OCRAM_MAM_STATUS_Field :=
                          NRF_SVD.FLEXRAM.Ocram_Mam_Status_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. ITCM Access Error Status
      ITCM_ERR_STATUS  : INT_STATUS_ITCM_ERR_STATUS_Field :=
                          NRF_SVD.FLEXRAM.Itcm_Err_Status_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DTCM Access Error Status
      DTCM_ERR_STATUS  : INT_STATUS_DTCM_ERR_STATUS_Field :=
                          NRF_SVD.FLEXRAM.Dtcm_Err_Status_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. OCRAM Access Error Status
      OCRAM_ERR_STATUS : INT_STATUS_OCRAM_ERR_STATUS_Field :=
                          NRF_SVD.FLEXRAM.Ocram_Err_Status_0;
      --  Read-only. Reserved
      Reserved         : INT_STATUS_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_STATUS_Register use record
      ITCM_MAM_STATUS  at 0 range 0 .. 0;
      DTCM_MAM_STATUS  at 0 range 1 .. 1;
      OCRAM_MAM_STATUS at 0 range 2 .. 2;
      ITCM_ERR_STATUS  at 0 range 3 .. 3;
      DTCM_ERR_STATUS  at 0 range 4 .. 4;
      OCRAM_ERR_STATUS at 0 range 5 .. 5;
      Reserved         at 0 range 6 .. 31;
   end record;

   --  ITCM Magic Address Match Status Enable
   type INT_STAT_EN_ITCM_MAM_STAT_EN_Field is
     (
      --  Masked
      Itcm_Mam_Stat_En_0,
      --  Enabled
      Itcm_Mam_Stat_En_1)
     with Size => 1;
   for INT_STAT_EN_ITCM_MAM_STAT_EN_Field use
     (Itcm_Mam_Stat_En_0 => 0,
      Itcm_Mam_Stat_En_1 => 1);

   --  DTCM Magic Address Match Status Enable
   type INT_STAT_EN_DTCM_MAM_STAT_EN_Field is
     (
      --  Masked
      Dtcm_Mam_Stat_En_0,
      --  Enabled
      Dtcm_Mam_Stat_En_1)
     with Size => 1;
   for INT_STAT_EN_DTCM_MAM_STAT_EN_Field use
     (Dtcm_Mam_Stat_En_0 => 0,
      Dtcm_Mam_Stat_En_1 => 1);

   --  OCRAM Magic Address Match Status Enable
   type INT_STAT_EN_OCRAM_MAM_STAT_EN_Field is
     (
      --  Masked
      Ocram_Mam_Stat_En_0,
      --  Enabled
      Ocram_Mam_Stat_En_1)
     with Size => 1;
   for INT_STAT_EN_OCRAM_MAM_STAT_EN_Field use
     (Ocram_Mam_Stat_En_0 => 0,
      Ocram_Mam_Stat_En_1 => 1);

   --  ITCM Access Error Status Enable
   type INT_STAT_EN_ITCM_ERR_STAT_EN_Field is
     (
      --  Masked
      Itcm_Err_Stat_En_0,
      --  Enabled
      Itcm_Err_Stat_En_1)
     with Size => 1;
   for INT_STAT_EN_ITCM_ERR_STAT_EN_Field use
     (Itcm_Err_Stat_En_0 => 0,
      Itcm_Err_Stat_En_1 => 1);

   --  DTCM Access Error Status Enable
   type INT_STAT_EN_DTCM_ERR_STAT_EN_Field is
     (
      --  Masked
      Dtcm_Err_Stat_En_0,
      --  Enabled
      Dtcm_Err_Stat_En_1)
     with Size => 1;
   for INT_STAT_EN_DTCM_ERR_STAT_EN_Field use
     (Dtcm_Err_Stat_En_0 => 0,
      Dtcm_Err_Stat_En_1 => 1);

   --  OCRAM Access Error Status Enable
   type INT_STAT_EN_OCRAM_ERR_STAT_EN_Field is
     (
      --  Masked
      Ocram_Err_Stat_En_0,
      --  Enabled
      Ocram_Err_Stat_En_1)
     with Size => 1;
   for INT_STAT_EN_OCRAM_ERR_STAT_EN_Field use
     (Ocram_Err_Stat_En_0 => 0,
      Ocram_Err_Stat_En_1 => 1);

   subtype INT_STAT_EN_Reserved_Field is HAL.UInt26;

   --  Interrupt Status Enable Register
   type INT_STAT_EN_Register is record
      --  ITCM Magic Address Match Status Enable
      ITCM_MAM_STAT_EN  : INT_STAT_EN_ITCM_MAM_STAT_EN_Field :=
                           NRF_SVD.FLEXRAM.Itcm_Mam_Stat_En_0;
      --  DTCM Magic Address Match Status Enable
      DTCM_MAM_STAT_EN  : INT_STAT_EN_DTCM_MAM_STAT_EN_Field :=
                           NRF_SVD.FLEXRAM.Dtcm_Mam_Stat_En_0;
      --  OCRAM Magic Address Match Status Enable
      OCRAM_MAM_STAT_EN : INT_STAT_EN_OCRAM_MAM_STAT_EN_Field :=
                           NRF_SVD.FLEXRAM.Ocram_Mam_Stat_En_0;
      --  ITCM Access Error Status Enable
      ITCM_ERR_STAT_EN  : INT_STAT_EN_ITCM_ERR_STAT_EN_Field :=
                           NRF_SVD.FLEXRAM.Itcm_Err_Stat_En_0;
      --  DTCM Access Error Status Enable
      DTCM_ERR_STAT_EN  : INT_STAT_EN_DTCM_ERR_STAT_EN_Field :=
                           NRF_SVD.FLEXRAM.Dtcm_Err_Stat_En_0;
      --  OCRAM Access Error Status Enable
      OCRAM_ERR_STAT_EN : INT_STAT_EN_OCRAM_ERR_STAT_EN_Field :=
                           NRF_SVD.FLEXRAM.Ocram_Err_Stat_En_0;
      --  Read-only. Reserved
      Reserved          : INT_STAT_EN_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_STAT_EN_Register use record
      ITCM_MAM_STAT_EN  at 0 range 0 .. 0;
      DTCM_MAM_STAT_EN  at 0 range 1 .. 1;
      OCRAM_MAM_STAT_EN at 0 range 2 .. 2;
      ITCM_ERR_STAT_EN  at 0 range 3 .. 3;
      DTCM_ERR_STAT_EN  at 0 range 4 .. 4;
      OCRAM_ERR_STAT_EN at 0 range 5 .. 5;
      Reserved          at 0 range 6 .. 31;
   end record;

   --  ITCM Magic Address Match Interrupt Enable
   type INT_SIG_EN_ITCM_MAM_SIG_EN_Field is
     (
      --  Masked
      Itcm_Mam_Sig_En_0,
      --  Enabled
      Itcm_Mam_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_ITCM_MAM_SIG_EN_Field use
     (Itcm_Mam_Sig_En_0 => 0,
      Itcm_Mam_Sig_En_1 => 1);

   --  DTCM Magic Address Match Interrupt Enable
   type INT_SIG_EN_DTCM_MAM_SIG_EN_Field is
     (
      --  Masked
      Dtcm_Mam_Sig_En_0,
      --  Enabled
      Dtcm_Mam_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_DTCM_MAM_SIG_EN_Field use
     (Dtcm_Mam_Sig_En_0 => 0,
      Dtcm_Mam_Sig_En_1 => 1);

   --  OCRAM Magic Address Match Interrupt Enable
   type INT_SIG_EN_OCRAM_MAM_SIG_EN_Field is
     (
      --  Masked
      Ocram_Mam_Sig_En_0,
      --  Enabled
      Ocram_Mam_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_OCRAM_MAM_SIG_EN_Field use
     (Ocram_Mam_Sig_En_0 => 0,
      Ocram_Mam_Sig_En_1 => 1);

   --  ITCM Access Error Interrupt Enable
   type INT_SIG_EN_ITCM_ERR_SIG_EN_Field is
     (
      --  Masked
      Itcm_Err_Sig_En_0,
      --  Enabled
      Itcm_Err_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_ITCM_ERR_SIG_EN_Field use
     (Itcm_Err_Sig_En_0 => 0,
      Itcm_Err_Sig_En_1 => 1);

   --  DTCM Access Error Interrupt Enable
   type INT_SIG_EN_DTCM_ERR_SIG_EN_Field is
     (
      --  Masked
      Dtcm_Err_Sig_En_0,
      --  Enabled
      Dtcm_Err_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_DTCM_ERR_SIG_EN_Field use
     (Dtcm_Err_Sig_En_0 => 0,
      Dtcm_Err_Sig_En_1 => 1);

   --  OCRAM Access Error Interrupt Enable
   type INT_SIG_EN_OCRAM_ERR_SIG_EN_Field is
     (
      --  Masked
      Ocram_Err_Sig_En_0,
      --  Enabled
      Ocram_Err_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_OCRAM_ERR_SIG_EN_Field use
     (Ocram_Err_Sig_En_0 => 0,
      Ocram_Err_Sig_En_1 => 1);

   subtype INT_SIG_EN_Reserved_Field is HAL.UInt26;

   --  Interrupt Enable Register
   type INT_SIG_EN_Register is record
      --  ITCM Magic Address Match Interrupt Enable
      ITCM_MAM_SIG_EN  : INT_SIG_EN_ITCM_MAM_SIG_EN_Field :=
                          NRF_SVD.FLEXRAM.Itcm_Mam_Sig_En_0;
      --  DTCM Magic Address Match Interrupt Enable
      DTCM_MAM_SIG_EN  : INT_SIG_EN_DTCM_MAM_SIG_EN_Field :=
                          NRF_SVD.FLEXRAM.Dtcm_Mam_Sig_En_0;
      --  OCRAM Magic Address Match Interrupt Enable
      OCRAM_MAM_SIG_EN : INT_SIG_EN_OCRAM_MAM_SIG_EN_Field :=
                          NRF_SVD.FLEXRAM.Ocram_Mam_Sig_En_0;
      --  ITCM Access Error Interrupt Enable
      ITCM_ERR_SIG_EN  : INT_SIG_EN_ITCM_ERR_SIG_EN_Field :=
                          NRF_SVD.FLEXRAM.Itcm_Err_Sig_En_0;
      --  DTCM Access Error Interrupt Enable
      DTCM_ERR_SIG_EN  : INT_SIG_EN_DTCM_ERR_SIG_EN_Field :=
                          NRF_SVD.FLEXRAM.Dtcm_Err_Sig_En_0;
      --  OCRAM Access Error Interrupt Enable
      OCRAM_ERR_SIG_EN : INT_SIG_EN_OCRAM_ERR_SIG_EN_Field :=
                          NRF_SVD.FLEXRAM.Ocram_Err_Sig_En_0;
      --  Read-only. Reserved
      Reserved         : INT_SIG_EN_Reserved_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_SIG_EN_Register use record
      ITCM_MAM_SIG_EN  at 0 range 0 .. 0;
      DTCM_MAM_SIG_EN  at 0 range 1 .. 1;
      OCRAM_MAM_SIG_EN at 0 range 2 .. 2;
      ITCM_ERR_SIG_EN  at 0 range 3 .. 3;
      DTCM_ERR_SIG_EN  at 0 range 4 .. 4;
      OCRAM_ERR_SIG_EN at 0 range 5 .. 5;
      Reserved         at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLEXRAM
   type FLEXRAM_Peripheral is record
      --  TCM CRTL Register
      TCM_CTRL         : aliased TCM_CTRL_Register;
      --  OCRAM Magic Address Register
      OCRAM_MAGIC_ADDR : aliased OCRAM_MAGIC_ADDR_Register;
      --  DTCM Magic Address Register
      DTCM_MAGIC_ADDR  : aliased DTCM_MAGIC_ADDR_Register;
      --  ITCM Magic Address Register
      ITCM_MAGIC_ADDR  : aliased ITCM_MAGIC_ADDR_Register;
      --  Interrupt Status Register
      INT_STATUS       : aliased INT_STATUS_Register;
      --  Interrupt Status Enable Register
      INT_STAT_EN      : aliased INT_STAT_EN_Register;
      --  Interrupt Enable Register
      INT_SIG_EN       : aliased INT_SIG_EN_Register;
   end record
     with Volatile;

   for FLEXRAM_Peripheral use record
      TCM_CTRL         at 16#0# range 0 .. 31;
      OCRAM_MAGIC_ADDR at 16#4# range 0 .. 31;
      DTCM_MAGIC_ADDR  at 16#8# range 0 .. 31;
      ITCM_MAGIC_ADDR  at 16#C# range 0 .. 31;
      INT_STATUS       at 16#10# range 0 .. 31;
      INT_STAT_EN      at 16#14# range 0 .. 31;
      INT_SIG_EN       at 16#18# range 0 .. 31;
   end record;

   --  FLEXRAM
   FLEXRAM_Periph : aliased FLEXRAM_Peripheral
     with Import, Address => System'To_Address (16#400B0000#);

end NRF_SVD.FLEXRAM;
