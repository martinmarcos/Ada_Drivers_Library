--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SNVS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Zeroizable Master Key Write Soft Lock When set, prevents any writes
   --  (software and hardware) to the ZMK registers and the ZMK_HWP, ZMK_VAL,
   --  and ZMK_ECC_EN fields of the LPMKCR
   type HPLR_ZMK_WSL_Field is
     (
      --  Write access is allowed
      Zmk_Wsl_0,
      --  Write access is not allowed
      Zmk_Wsl_1)
     with Size => 1;
   for HPLR_ZMK_WSL_Field use
     (Zmk_Wsl_0 => 0,
      Zmk_Wsl_1 => 1);

   --  Zeroizable Master Key Read Soft Lock When set, prevents any software
   --  reads to the ZMK Registers and ZMK_ECC_VALUE field of the LPMKCR
   type HPLR_ZMK_RSL_Field is
     (
      --  Read access is allowed (only in software Programming mode)
      Zmk_Rsl_0,
      --  Read access is not allowed
      Zmk_Rsl_1)
     with Size => 1;
   for HPLR_ZMK_RSL_Field use
     (Zmk_Rsl_0 => 0,
      Zmk_Rsl_1 => 1);

   --  Secure Real Time Counter Soft Lock When set, prevents any writes to the
   --  SRTC Registers, SRTC_ENV, and SRTC_INV_EN bits
   type HPLR_SRTC_SL_Field is
     (
      --  Write access is allowed
      Srtc_Sl_0,
      --  Write access is not allowed
      Srtc_Sl_1)
     with Size => 1;
   for HPLR_SRTC_SL_Field use
     (Srtc_Sl_0 => 0,
      Srtc_Sl_1 => 1);

   --  LP Calibration Soft Lock When set, prevents any writes to the LP
   --  Calibration Value (LPCALB_VAL) and LP Calibration Enable (LPCALB_EN)
   type HPLR_LPCALB_SL_Field is
     (
      --  Write access is allowed
      Lpcalb_Sl_0,
      --  Write access is not allowed
      Lpcalb_Sl_1)
     with Size => 1;
   for HPLR_LPCALB_SL_Field use
     (Lpcalb_Sl_0 => 0,
      Lpcalb_Sl_1 => 1);

   --  Monotonic Counter Soft Lock When set, prevents any writes (increments)
   --  to the MC Registers and MC_ENV bit
   type HPLR_MC_SL_Field is
     (
      --  Write access (increment) is allowed
      Mc_Sl_0,
      --  Write access (increment) is not allowed
      Mc_Sl_1)
     with Size => 1;
   for HPLR_MC_SL_Field use
     (Mc_Sl_0 => 0,
      Mc_Sl_1 => 1);

   --  General Purpose Register Soft Lock When set, prevents any writes to the
   --  GPR
   type HPLR_GPR_SL_Field is
     (
      --  Write access is allowed
      Gpr_Sl_0,
      --  Write access is not allowed
      Gpr_Sl_1)
     with Size => 1;
   for HPLR_GPR_SL_Field use
     (Gpr_Sl_0 => 0,
      Gpr_Sl_1 => 1);

   --  LP Security Violation Control Register Soft Lock When set, prevents any
   --  writes to the LPSVCR
   type HPLR_LPSVCR_SL_Field is
     (
      --  Write access is allowed
      Lpsvcr_Sl_0,
      --  Write access is not allowed
      Lpsvcr_Sl_1)
     with Size => 1;
   for HPLR_LPSVCR_SL_Field use
     (Lpsvcr_Sl_0 => 0,
      Lpsvcr_Sl_1 => 1);

   --  LP Tamper Detectors Configuration Register Soft Lock When set, prevents
   --  any writes to the LPTDCR
   type HPLR_LPTDCR_SL_Field is
     (
      --  Write access is allowed
      Lptdcr_Sl_0,
      --  Write access is not allowed
      Lptdcr_Sl_1)
     with Size => 1;
   for HPLR_LPTDCR_SL_Field use
     (Lptdcr_Sl_0 => 0,
      Lptdcr_Sl_1 => 1);

   --  Master Key Select Soft Lock When set, prevents any writes to the
   --  MASTER_KEY_SEL field of the LPMKCR
   type HPLR_MKS_SL_Field is
     (
      --  Write access is allowed
      Mks_Sl_0,
      --  Write access is not allowed
      Mks_Sl_1)
     with Size => 1;
   for HPLR_MKS_SL_Field use
     (Mks_Sl_0 => 0,
      Mks_Sl_1 => 1);

   --  HP Security Violation Control Register Lock When set, prevents any
   --  writes to the HPSVCR
   type HPLR_HPSVCR_L_Field is
     (
      --  Write access is allowed
      Hpsvcr_L_0,
      --  Write access is not allowed
      Hpsvcr_L_1)
     with Size => 1;
   for HPLR_HPSVCR_L_Field use
     (Hpsvcr_L_0 => 0,
      Hpsvcr_L_1 => 1);

   --  HP Security Interrupt Control Register Lock When set, prevents any
   --  writes to the HPSICR
   type HPLR_HPSICR_L_Field is
     (
      --  Write access is allowed
      Hpsicr_L_0,
      --  Write access is not allowed
      Hpsicr_L_1)
     with Size => 1;
   for HPLR_HPSICR_L_Field use
     (Hpsicr_L_0 => 0,
      Hpsicr_L_1 => 1);

   --  High Assurance Counter Lock When set, prevents any writes to HPHACIVR,
   --  HPHACR, and HAC_EN bit of HPCOMR
   type HPLR_HAC_L_Field is
     (
      --  Write access is allowed
      Hac_L_0,
      --  Write access is not allowed
      Hac_L_1)
     with Size => 1;
   for HPLR_HAC_L_Field use
     (Hac_L_0 => 0,
      Hac_L_1 => 1);

   --  SNVS_HP Lock Register
   type HPLR_Register is record
      --  Zeroizable Master Key Write Soft Lock When set, prevents any writes
      --  (software and hardware) to the ZMK registers and the ZMK_HWP,
      --  ZMK_VAL, and ZMK_ECC_EN fields of the LPMKCR
      ZMK_WSL        : HPLR_ZMK_WSL_Field := NRF_SVD.SNVS.Zmk_Wsl_0;
      --  Zeroizable Master Key Read Soft Lock When set, prevents any software
      --  reads to the ZMK Registers and ZMK_ECC_VALUE field of the LPMKCR
      ZMK_RSL        : HPLR_ZMK_RSL_Field := NRF_SVD.SNVS.Zmk_Rsl_0;
      --  Secure Real Time Counter Soft Lock When set, prevents any writes to
      --  the SRTC Registers, SRTC_ENV, and SRTC_INV_EN bits
      SRTC_SL        : HPLR_SRTC_SL_Field := NRF_SVD.SNVS.Srtc_Sl_0;
      --  LP Calibration Soft Lock When set, prevents any writes to the LP
      --  Calibration Value (LPCALB_VAL) and LP Calibration Enable (LPCALB_EN)
      LPCALB_SL      : HPLR_LPCALB_SL_Field := NRF_SVD.SNVS.Lpcalb_Sl_0;
      --  Monotonic Counter Soft Lock When set, prevents any writes
      --  (increments) to the MC Registers and MC_ENV bit
      MC_SL          : HPLR_MC_SL_Field := NRF_SVD.SNVS.Mc_Sl_0;
      --  General Purpose Register Soft Lock When set, prevents any writes to
      --  the GPR
      GPR_SL         : HPLR_GPR_SL_Field := NRF_SVD.SNVS.Gpr_Sl_0;
      --  LP Security Violation Control Register Soft Lock When set, prevents
      --  any writes to the LPSVCR
      LPSVCR_SL      : HPLR_LPSVCR_SL_Field := NRF_SVD.SNVS.Lpsvcr_Sl_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  LP Tamper Detectors Configuration Register Soft Lock When set,
      --  prevents any writes to the LPTDCR
      LPTDCR_SL      : HPLR_LPTDCR_SL_Field := NRF_SVD.SNVS.Lptdcr_Sl_0;
      --  Master Key Select Soft Lock When set, prevents any writes to the
      --  MASTER_KEY_SEL field of the LPMKCR
      MKS_SL         : HPLR_MKS_SL_Field := NRF_SVD.SNVS.Mks_Sl_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  HP Security Violation Control Register Lock When set, prevents any
      --  writes to the HPSVCR
      HPSVCR_L       : HPLR_HPSVCR_L_Field := NRF_SVD.SNVS.Hpsvcr_L_0;
      --  HP Security Interrupt Control Register Lock When set, prevents any
      --  writes to the HPSICR
      HPSICR_L       : HPLR_HPSICR_L_Field := NRF_SVD.SNVS.Hpsicr_L_0;
      --  High Assurance Counter Lock When set, prevents any writes to
      --  HPHACIVR, HPHACR, and HAC_EN bit of HPCOMR
      HAC_L          : HPLR_HAC_L_Field := NRF_SVD.SNVS.Hac_L_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPLR_Register use record
      ZMK_WSL        at 0 range 0 .. 0;
      ZMK_RSL        at 0 range 1 .. 1;
      SRTC_SL        at 0 range 2 .. 2;
      LPCALB_SL      at 0 range 3 .. 3;
      MC_SL          at 0 range 4 .. 4;
      GPR_SL         at 0 range 5 .. 5;
      LPSVCR_SL      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LPTDCR_SL      at 0 range 8 .. 8;
      MKS_SL         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HPSVCR_L       at 0 range 16 .. 16;
      HPSICR_L       at 0 range 17 .. 17;
      HAC_L          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  SSM Secure to Trusted State Transition Disable When set, disables the
   --  SSM transition from secure to trusted state
   type HPCOMR_SSM_ST_DIS_Field is
     (
      --  Secure to Trusted State transition is enabled
      Ssm_St_Dis_0,
      --  Secure to Trusted State transition is disabled
      Ssm_St_Dis_1)
     with Size => 1;
   for HPCOMR_SSM_ST_DIS_Field use
     (Ssm_St_Dis_0 => 0,
      Ssm_St_Dis_1 => 1);

   --  SSM Soft Fail to Non-Secure State Transition Disable When set, it
   --  disables the SSM transition from soft fail to non-secure state
   type HPCOMR_SSM_SFNS_DIS_Field is
     (
      --  Soft Fail to Non-Secure State transition is enabled
      Ssm_Sfns_Dis_0,
      --  Soft Fail to Non-Secure State transition is disabled
      Ssm_Sfns_Dis_1)
     with Size => 1;
   for HPCOMR_SSM_SFNS_DIS_Field use
     (Ssm_Sfns_Dis_0 => 0,
      Ssm_Sfns_Dis_1 => 1);

   --  LP Software Reset When set to 1, the registers in the SNVS_LP section
   --  are reset
   type HPCOMR_LP_SWR_Field is
     (
      --  No Action
      Lp_Swr_0,
      --  Reset LP section
      Lp_Swr_1)
     with Size => 1;
   for HPCOMR_LP_SWR_Field use
     (Lp_Swr_0 => 0,
      Lp_Swr_1 => 1);

   --  LP Software Reset Disable When set, disables the LP software reset
   type HPCOMR_LP_SWR_DIS_Field is
     (
      --  LP software reset is enabled
      Lp_Swr_Dis_0,
      --  LP software reset is disabled
      Lp_Swr_Dis_1)
     with Size => 1;
   for HPCOMR_LP_SWR_DIS_Field use
     (Lp_Swr_Dis_0 => 0,
      Lp_Swr_Dis_1 => 1);

   --  Program Zeroizable Master Key This bit activates ZMK hardware
   --  programming mechanism
   type HPCOMR_PROG_ZMK_Field is
     (
      --  No Action
      Prog_Zmk_0,
      --  Activate hardware key programming mechanism
      Prog_Zmk_1)
     with Size => 1;
   for HPCOMR_PROG_ZMK_Field use
     (Prog_Zmk_0 => 0,
      Prog_Zmk_1 => 1);

   --  Master Key Select Enable When not set, the one time programmable (OTP)
   --  master key is selected by default
   type HPCOMR_MKS_EN_Field is
     (
      --  no description available
      Mks_En_0,
      --  no description available
      Mks_En_1)
     with Size => 1;
   for HPCOMR_MKS_EN_Field use
     (Mks_En_0 => 0,
      Mks_En_1 => 1);

   --  High Assurance Counter Enable This bit controls the SSM transition from
   --  the soft fail to the hard fail state
   type HPCOMR_HAC_EN_Field is
     (
      --  High Assurance Counter is disabled
      Hac_En_0,
      --  High Assurance Counter is enabled
      Hac_En_1)
     with Size => 1;
   for HPCOMR_HAC_EN_Field use
     (Hac_En_0 => 0,
      Hac_En_1 => 1);

   --  High Assurance Counter Load When set, it loads the High Assurance
   --  Counter Register with the value of the High Assurance Counter Load
   --  Register
   type HPCOMR_HAC_LOAD_Field is
     (
      --  No Action
      Hac_Load_0,
      --  Load the HAC
      Hac_Load_1)
     with Size => 1;
   for HPCOMR_HAC_LOAD_Field use
     (Hac_Load_0 => 0,
      Hac_Load_1 => 1);

   --  High Assurance Counter Clear When set, it clears the High Assurance
   --  Counter Register
   type HPCOMR_HAC_CLEAR_Field is
     (
      --  No Action
      Hac_Clear_0,
      --  Clear the HAC
      Hac_Clear_1)
     with Size => 1;
   for HPCOMR_HAC_CLEAR_Field use
     (Hac_Clear_0 => 0,
      Hac_Clear_1 => 1);

   --  SNVS_HP Command Register
   type HPCOMR_Register is record
      --  Write-only. SSM State Transition Transition state of the system
      --  security monitor
      SSM_ST         : Boolean := False;
      --  SSM Secure to Trusted State Transition Disable When set, disables the
      --  SSM transition from secure to trusted state
      SSM_ST_DIS     : HPCOMR_SSM_ST_DIS_Field := NRF_SVD.SNVS.Ssm_St_Dis_0;
      --  SSM Soft Fail to Non-Secure State Transition Disable When set, it
      --  disables the SSM transition from soft fail to non-secure state
      SSM_SFNS_DIS   : HPCOMR_SSM_SFNS_DIS_Field :=
                        NRF_SVD.SNVS.Ssm_Sfns_Dis_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. LP Software Reset When set to 1, the registers in the
      --  SNVS_LP section are reset
      LP_SWR         : HPCOMR_LP_SWR_Field := NRF_SVD.SNVS.Lp_Swr_0;
      --  LP Software Reset Disable When set, disables the LP software reset
      LP_SWR_DIS     : HPCOMR_LP_SWR_DIS_Field := NRF_SVD.SNVS.Lp_Swr_Dis_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Software Security Violation When set, the system security monitor
      --  treats this bit as a non-fatal security violation
      SW_SV          : Boolean := False;
      --  Software Fatal Security Violation When set, the system security
      --  monitor treats this bit as a fatal security violation
      SW_FSV         : Boolean := False;
      --  LP Software Security Violation When set, SNVS_LP treats this bit as a
      --  security violation
      SW_LPSV        : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Program Zeroizable Master Key This bit activates ZMK
      --  hardware programming mechanism
      PROG_ZMK       : HPCOMR_PROG_ZMK_Field := NRF_SVD.SNVS.Prog_Zmk_0;
      --  Master Key Select Enable When not set, the one time programmable
      --  (OTP) master key is selected by default
      MKS_EN         : HPCOMR_MKS_EN_Field := NRF_SVD.SNVS.Mks_En_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  High Assurance Counter Enable This bit controls the SSM transition
      --  from the soft fail to the hard fail state
      HAC_EN         : HPCOMR_HAC_EN_Field := NRF_SVD.SNVS.Hac_En_0;
      --  Write-only. High Assurance Counter Load When set, it loads the High
      --  Assurance Counter Register with the value of the High Assurance
      --  Counter Load Register
      HAC_LOAD       : HPCOMR_HAC_LOAD_Field := NRF_SVD.SNVS.Hac_Load_0;
      --  Write-only. High Assurance Counter Clear When set, it clears the High
      --  Assurance Counter Register
      HAC_CLEAR      : HPCOMR_HAC_CLEAR_Field := NRF_SVD.SNVS.Hac_Clear_0;
      --  High Assurance Counter Stop This bit can be set only when SSM is in
      --  soft fail state
      HAC_STOP       : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Non-Privileged Software Access Enable When set, allows non-privileged
      --  software to access all SNVS registers, including those that are
      --  privileged software read/write access only
      NPSWA_EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPCOMR_Register use record
      SSM_ST         at 0 range 0 .. 0;
      SSM_ST_DIS     at 0 range 1 .. 1;
      SSM_SFNS_DIS   at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LP_SWR         at 0 range 4 .. 4;
      LP_SWR_DIS     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SW_SV          at 0 range 8 .. 8;
      SW_FSV         at 0 range 9 .. 9;
      SW_LPSV        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PROG_ZMK       at 0 range 12 .. 12;
      MKS_EN         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      HAC_EN         at 0 range 16 .. 16;
      HAC_LOAD       at 0 range 17 .. 17;
      HAC_CLEAR      at 0 range 18 .. 18;
      HAC_STOP       at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      NPSWA_EN       at 0 range 31 .. 31;
   end record;

   --  HP Real Time Counter Enable
   type HPCR_RTC_EN_Field is
     (
      --  RTC is disabled
      Rtc_En_0,
      --  RTC is enabled
      Rtc_En_1)
     with Size => 1;
   for HPCR_RTC_EN_Field use
     (Rtc_En_0 => 0,
      Rtc_En_1 => 1);

   --  HP Time Alarm Enable When set, the time alarm interrupt is generated if
   --  the value in the HP Time Alarm Registers is equal to the value of the HP
   --  Real Time Counter
   type HPCR_HPTA_EN_Field is
     (
      --  HP Time Alarm Interrupt is disabled
      Hpta_En_0,
      --  HP Time Alarm Interrupt is enabled
      Hpta_En_1)
     with Size => 1;
   for HPCR_HPTA_EN_Field use
     (Hpta_En_0 => 0,
      Hpta_En_1 => 1);

   --  HP Periodic Interrupt Enable The periodic interrupt can be generated
   --  only if the HP Real Time Counter is enabled
   type HPCR_PI_EN_Field is
     (
      --  HP Periodic Interrupt is disabled
      Pi_En_0,
      --  HP Periodic Interrupt is enabled
      Pi_En_1)
     with Size => 1;
   for HPCR_PI_EN_Field use
     (Pi_En_0 => 0,
      Pi_En_1 => 1);

   --  Periodic Interrupt Frequency Defines frequency of the periodic interrupt
   type HPCR_PI_FREQ_Field is
     (
      --  - bit 0 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_0,
      --  - bit 1 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_1,
      --  - bit 2 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_2,
      --  - bit 3 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_3,
      --  - bit 4 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_4,
      --  - bit 5 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_5,
      --  - bit 6 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_6,
      --  - bit 7 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_7,
      --  - bit 8 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_8,
      --  - bit 9 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_9,
      --  - bit 10 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_10,
      --  - bit 11 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_11,
      --  - bit 12 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_12,
      --  - bit 13 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_13,
      --  - bit 14 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_14,
      --  - bit 15 of the HPRTCLR is selected as a source of the periodic
      --  interrupt
      Pi_Freq_15)
     with Size => 4;
   for HPCR_PI_FREQ_Field use
     (Pi_Freq_0 => 0,
      Pi_Freq_1 => 1,
      Pi_Freq_2 => 2,
      Pi_Freq_3 => 3,
      Pi_Freq_4 => 4,
      Pi_Freq_5 => 5,
      Pi_Freq_6 => 6,
      Pi_Freq_7 => 7,
      Pi_Freq_8 => 8,
      Pi_Freq_9 => 9,
      Pi_Freq_10 => 10,
      Pi_Freq_11 => 11,
      Pi_Freq_12 => 12,
      Pi_Freq_13 => 13,
      Pi_Freq_14 => 14,
      Pi_Freq_15 => 15);

   --  HP Real Time Counter Calibration Enabled Indicates that the time
   --  calibration mechanism is enabled.
   type HPCR_HPCALB_EN_Field is
     (
      --  HP Timer calibration disabled
      Hpcalb_En_0,
      --  HP Timer calibration enabled
      Hpcalb_En_1)
     with Size => 1;
   for HPCR_HPCALB_EN_Field use
     (Hpcalb_En_0 => 0,
      Hpcalb_En_1 => 1);

   --  HP Calibration Value Defines signed calibration value for the HP Real
   --  Time Counter
   type HPCR_HPCALB_VAL_Field is
     (
      --  +0 counts per each 32768 ticks of the counter
      Hpcalb_Val_0,
      --  +1 counts per each 32768 ticks of the counter
      Hpcalb_Val_1,
      --  +2 counts per each 32768 ticks of the counter
      Hpcalb_Val_2,
      --  +15 counts per each 32768 ticks of the counter
      Hpcalb_Val_15,
      --  -16 counts per each 32768 ticks of the counter
      Hpcalb_Val_16,
      --  -15 counts per each 32768 ticks of the counter
      Hpcalb_Val_17,
      --  -2 counts per each 32768 ticks of the counter
      Hpcalb_Val_30,
      --  -1 counts per each 32768 ticks of the counter
      Hpcalb_Val_31)
     with Size => 5;
   for HPCR_HPCALB_VAL_Field use
     (Hpcalb_Val_0 => 0,
      Hpcalb_Val_1 => 1,
      Hpcalb_Val_2 => 2,
      Hpcalb_Val_15 => 15,
      Hpcalb_Val_16 => 16,
      Hpcalb_Val_17 => 17,
      Hpcalb_Val_30 => 30,
      Hpcalb_Val_31 => 31);

   --  HP Time Synchronize
   type HPCR_HP_TS_Field is
     (
      --  No Action
      Hp_Ts_0,
      --  Synchronize the HP Time Counter to the LP Time Counter
      Hp_Ts_1)
     with Size => 1;
   for HPCR_HP_TS_Field use
     (Hp_Ts_0 => 0,
      Hp_Ts_1 => 1);

   subtype HPCR_BTN_CONFIG_Field is HAL.UInt3;

   --  SNVS_HP Control Register
   type HPCR_Register is record
      --  HP Real Time Counter Enable
      RTC_EN         : HPCR_RTC_EN_Field := NRF_SVD.SNVS.Rtc_En_0;
      --  HP Time Alarm Enable When set, the time alarm interrupt is generated
      --  if the value in the HP Time Alarm Registers is equal to the value of
      --  the HP Real Time Counter
      HPTA_EN        : HPCR_HPTA_EN_Field := NRF_SVD.SNVS.Hpta_En_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  HP Periodic Interrupt Enable The periodic interrupt can be generated
      --  only if the HP Real Time Counter is enabled
      PI_EN          : HPCR_PI_EN_Field := NRF_SVD.SNVS.Pi_En_0;
      --  Periodic Interrupt Frequency Defines frequency of the periodic
      --  interrupt
      PI_FREQ        : HPCR_PI_FREQ_Field := NRF_SVD.SNVS.Pi_Freq_0;
      --  HP Real Time Counter Calibration Enabled Indicates that the time
      --  calibration mechanism is enabled.
      HPCALB_EN      : HPCR_HPCALB_EN_Field := NRF_SVD.SNVS.Hpcalb_En_0;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  HP Calibration Value Defines signed calibration value for the HP Real
      --  Time Counter
      HPCALB_VAL     : HPCR_HPCALB_VAL_Field := NRF_SVD.SNVS.Hpcalb_Val_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  HP Time Synchronize
      HP_TS          : HPCR_HP_TS_Field := NRF_SVD.SNVS.Hp_Ts_0;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Button Configuration
      BTN_CONFIG     : HPCR_BTN_CONFIG_Field := 16#0#;
      --  Button interrupt mask
      BTN_MASK       : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPCR_Register use record
      RTC_EN         at 0 range 0 .. 0;
      HPTA_EN        at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PI_EN          at 0 range 3 .. 3;
      PI_FREQ        at 0 range 4 .. 7;
      HPCALB_EN      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      HPCALB_VAL     at 0 range 10 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HP_TS          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      BTN_CONFIG     at 0 range 24 .. 26;
      BTN_MASK       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Security Violation 0 Interrupt Enable Setting this bit to 1 enables
   --  generation of the security interrupt to the host processor upon
   --  detection of the Security Violation 0 security violation
   type HPSICR_SV0_EN_Field is
     (
      --  Security Violation 0 Interrupt is Disabled
      Sv0_En_0,
      --  Security Violation 0 Interrupt is Enabled
      Sv0_En_1)
     with Size => 1;
   for HPSICR_SV0_EN_Field use
     (Sv0_En_0 => 0,
      Sv0_En_1 => 1);

   --  Security Violation 1 Interrupt Enable Setting this bit to 1 enables
   --  generation of the security interrupt to the host processor upon
   --  detection of the Security Violation 1 security violation
   type HPSICR_SV1_EN_Field is
     (
      --  Security Violation 1 Interrupt is Disabled
      Sv1_En_0,
      --  Security Violation 1 Interrupt is Enabled
      Sv1_En_1)
     with Size => 1;
   for HPSICR_SV1_EN_Field use
     (Sv1_En_0 => 0,
      Sv1_En_1 => 1);

   --  Security Violation 2 Interrupt Enable Setting this bit to 1 enables
   --  generation of the security interrupt to the host processor upon
   --  detection of the Security Violation 2 security violation
   type HPSICR_SV2_EN_Field is
     (
      --  Security Violation 2 Interrupt is Disabled
      Sv2_En_0,
      --  Security Violation 2 Interrupt is Enabled
      Sv2_En_1)
     with Size => 1;
   for HPSICR_SV2_EN_Field use
     (Sv2_En_0 => 0,
      Sv2_En_1 => 1);

   --  Security Violation 3 Interrupt Enable Setting this bit to 1 enables
   --  generation of the security interrupt to the host processor upon
   --  detection of the Security Violation 3 security violation
   type HPSICR_SV3_EN_Field is
     (
      --  Security Violation 3 Interrupt is Disabled
      Sv3_En_0,
      --  Security Violation 3 Interrupt is Enabled
      Sv3_En_1)
     with Size => 1;
   for HPSICR_SV3_EN_Field use
     (Sv3_En_0 => 0,
      Sv3_En_1 => 1);

   --  Security Violation 4 Interrupt Enable Setting this bit to 1 enables
   --  generation of the security interrupt to the host processor upon
   --  detection of the Security Violation 4 security violation
   type HPSICR_SV4_EN_Field is
     (
      --  Security Violation 4 Interrupt is Disabled
      Sv4_En_0,
      --  Security Violation 4 Interrupt is Enabled
      Sv4_En_1)
     with Size => 1;
   for HPSICR_SV4_EN_Field use
     (Sv4_En_0 => 0,
      Sv4_En_1 => 1);

   --  Security Violation 5 Interrupt Enable Setting this bit to 1 enables
   --  generation of the security interrupt to the host processor upon
   --  detection of the Security Violation 5 security violation
   type HPSICR_SV5_EN_Field is
     (
      --  Security Violation 5 Interrupt is Disabled
      Sv5_En_0,
      --  Security Violation 5 Interrupt is Enabled
      Sv5_En_1)
     with Size => 1;
   for HPSICR_SV5_EN_Field use
     (Sv5_En_0 => 0,
      Sv5_En_1 => 1);

   --  LP Security Violation Interrupt Enable This bit enables generating of
   --  the security interrupt to the host processor upon security violation
   --  signal from the LP section
   type HPSICR_LPSVI_EN_Field is
     (
      --  LP Security Violation Interrupt is Disabled
      Lpsvi_En_0,
      --  LP Security Violation Interrupt is Enabled
      Lpsvi_En_1)
     with Size => 1;
   for HPSICR_LPSVI_EN_Field use
     (Lpsvi_En_0 => 0,
      Lpsvi_En_1 => 1);

   --  SNVS_HP Security Interrupt Control Register
   type HPSICR_Register is record
      --  Security Violation 0 Interrupt Enable Setting this bit to 1 enables
      --  generation of the security interrupt to the host processor upon
      --  detection of the Security Violation 0 security violation
      SV0_EN        : HPSICR_SV0_EN_Field := NRF_SVD.SNVS.Sv0_En_0;
      --  Security Violation 1 Interrupt Enable Setting this bit to 1 enables
      --  generation of the security interrupt to the host processor upon
      --  detection of the Security Violation 1 security violation
      SV1_EN        : HPSICR_SV1_EN_Field := NRF_SVD.SNVS.Sv1_En_0;
      --  Security Violation 2 Interrupt Enable Setting this bit to 1 enables
      --  generation of the security interrupt to the host processor upon
      --  detection of the Security Violation 2 security violation
      SV2_EN        : HPSICR_SV2_EN_Field := NRF_SVD.SNVS.Sv2_En_0;
      --  Security Violation 3 Interrupt Enable Setting this bit to 1 enables
      --  generation of the security interrupt to the host processor upon
      --  detection of the Security Violation 3 security violation
      SV3_EN        : HPSICR_SV3_EN_Field := NRF_SVD.SNVS.Sv3_En_0;
      --  Security Violation 4 Interrupt Enable Setting this bit to 1 enables
      --  generation of the security interrupt to the host processor upon
      --  detection of the Security Violation 4 security violation
      SV4_EN        : HPSICR_SV4_EN_Field := NRF_SVD.SNVS.Sv4_En_0;
      --  Security Violation 5 Interrupt Enable Setting this bit to 1 enables
      --  generation of the security interrupt to the host processor upon
      --  detection of the Security Violation 5 security violation
      SV5_EN        : HPSICR_SV5_EN_Field := NRF_SVD.SNVS.Sv5_En_0;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  LP Security Violation Interrupt Enable This bit enables generating of
      --  the security interrupt to the host processor upon security violation
      --  signal from the LP section
      LPSVI_EN      : HPSICR_LPSVI_EN_Field := NRF_SVD.SNVS.Lpsvi_En_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPSICR_Register use record
      SV0_EN        at 0 range 0 .. 0;
      SV1_EN        at 0 range 1 .. 1;
      SV2_EN        at 0 range 2 .. 2;
      SV3_EN        at 0 range 3 .. 3;
      SV4_EN        at 0 range 4 .. 4;
      SV5_EN        at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LPSVI_EN      at 0 range 31 .. 31;
   end record;

   --  Security Violation 0 Security Violation Configuration This field
   --  configures the Security Violation 0 Security Violation Input
   type HPSVCR_SV0_CFG_Field is
     (
      --  Security Violation 0 is a non-fatal violation
      Sv0_Cfg_0,
      --  Security Violation 0 is a fatal violation
      Sv0_Cfg_1)
     with Size => 1;
   for HPSVCR_SV0_CFG_Field use
     (Sv0_Cfg_0 => 0,
      Sv0_Cfg_1 => 1);

   --  Security Violation 1 Security Violation Configuration This field
   --  configures the Security Violation 1 Security Violation Input
   type HPSVCR_SV1_CFG_Field is
     (
      --  Security Violation 1 is a non-fatal violation
      Sv1_Cfg_0,
      --  Security Violation 1 is a fatal violation
      Sv1_Cfg_1)
     with Size => 1;
   for HPSVCR_SV1_CFG_Field use
     (Sv1_Cfg_0 => 0,
      Sv1_Cfg_1 => 1);

   --  Security Violation 2 Security Violation Configuration This field
   --  configures the Security Violation 2 Security Violation Input
   type HPSVCR_SV2_CFG_Field is
     (
      --  Security Violation 2 is a non-fatal violation
      Sv2_Cfg_0,
      --  Security Violation 2 is a fatal violation
      Sv2_Cfg_1)
     with Size => 1;
   for HPSVCR_SV2_CFG_Field use
     (Sv2_Cfg_0 => 0,
      Sv2_Cfg_1 => 1);

   --  Security Violation 3 Security Violation Configuration This field
   --  configures the Security Violation 3 Security Violation Input
   type HPSVCR_SV3_CFG_Field is
     (
      --  Security Violation 3 is a non-fatal violation
      Sv3_Cfg_0,
      --  Security Violation 3 is a fatal violation
      Sv3_Cfg_1)
     with Size => 1;
   for HPSVCR_SV3_CFG_Field use
     (Sv3_Cfg_0 => 0,
      Sv3_Cfg_1 => 1);

   --  Security Violation 4 Security Violation Configuration This field
   --  configures the Security Violation 4 Security Violation Input
   type HPSVCR_SV4_CFG_Field is
     (
      --  Security Violation 4 is a non-fatal violation
      Sv4_Cfg_0,
      --  Security Violation 4 is a fatal violation
      Sv4_Cfg_1)
     with Size => 1;
   for HPSVCR_SV4_CFG_Field use
     (Sv4_Cfg_0 => 0,
      Sv4_Cfg_1 => 1);

   --  Security Violation 5 Security Violation Configuration This field
   --  configures the Security Violation 5 Security Violation Input
   type HPSVCR_SV5_CFG_Field is
     (
      --  Security Violation 5 is disabled
      Sv5_Cfg_0,
      --  Security Violation 5 is a non-fatal violation
      Sv5_Cfg_1,
      --  Security Violation 5 is a fatal violation
      Sv5_Cfg_20,
      --  Security Violation 5 is a fatal violation
      Sv5_Cfg_21)
     with Size => 2;
   for HPSVCR_SV5_CFG_Field use
     (Sv5_Cfg_0 => 0,
      Sv5_Cfg_1 => 1,
      Sv5_Cfg_20 => 2,
      Sv5_Cfg_21 => 3);

   --  LP Security Violation Configuration This field configures the LP
   --  security violation source.
   type HPSVCR_LPSV_CFG_Field is
     (
      --  LP security violation is disabled
      Lpsv_Cfg_0,
      --  LP security violation is a non-fatal violation
      Lpsv_Cfg_1,
      --  LP security violation is a fatal violation
      Lpsv_Cfg_20,
      --  LP security violation is a fatal violation
      Lpsv_Cfg_21)
     with Size => 2;
   for HPSVCR_LPSV_CFG_Field use
     (Lpsv_Cfg_0 => 0,
      Lpsv_Cfg_1 => 1,
      Lpsv_Cfg_20 => 2,
      Lpsv_Cfg_21 => 3);

   --  SNVS_HP Security Violation Control Register
   type HPSVCR_Register is record
      --  Security Violation 0 Security Violation Configuration This field
      --  configures the Security Violation 0 Security Violation Input
      SV0_CFG       : HPSVCR_SV0_CFG_Field := NRF_SVD.SNVS.Sv0_Cfg_0;
      --  Security Violation 1 Security Violation Configuration This field
      --  configures the Security Violation 1 Security Violation Input
      SV1_CFG       : HPSVCR_SV1_CFG_Field := NRF_SVD.SNVS.Sv1_Cfg_0;
      --  Security Violation 2 Security Violation Configuration This field
      --  configures the Security Violation 2 Security Violation Input
      SV2_CFG       : HPSVCR_SV2_CFG_Field := NRF_SVD.SNVS.Sv2_Cfg_0;
      --  Security Violation 3 Security Violation Configuration This field
      --  configures the Security Violation 3 Security Violation Input
      SV3_CFG       : HPSVCR_SV3_CFG_Field := NRF_SVD.SNVS.Sv3_Cfg_0;
      --  Security Violation 4 Security Violation Configuration This field
      --  configures the Security Violation 4 Security Violation Input
      SV4_CFG       : HPSVCR_SV4_CFG_Field := NRF_SVD.SNVS.Sv4_Cfg_0;
      --  Security Violation 5 Security Violation Configuration This field
      --  configures the Security Violation 5 Security Violation Input
      SV5_CFG       : HPSVCR_SV5_CFG_Field := NRF_SVD.SNVS.Sv5_Cfg_0;
      --  unspecified
      Reserved_7_29 : HAL.UInt23 := 16#0#;
      --  LP Security Violation Configuration This field configures the LP
      --  security violation source.
      LPSV_CFG      : HPSVCR_LPSV_CFG_Field := NRF_SVD.SNVS.Lpsv_Cfg_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPSVCR_Register use record
      SV0_CFG       at 0 range 0 .. 0;
      SV1_CFG       at 0 range 1 .. 1;
      SV2_CFG       at 0 range 2 .. 2;
      SV3_CFG       at 0 range 3 .. 3;
      SV4_CFG       at 0 range 4 .. 4;
      SV5_CFG       at 0 range 5 .. 6;
      Reserved_7_29 at 0 range 7 .. 29;
      LPSV_CFG      at 0 range 30 .. 31;
   end record;

   --  HP Time Alarm Indicates that the HP Time Alarm has occurred since this
   --  bit was last cleared.
   type HPSR_HPTA_Field is
     (
      --  No time alarm interrupt occurred.
      Hpta_0,
      --  A time alarm interrupt occurred.
      Hpta_1)
     with Size => 1;
   for HPSR_HPTA_Field use
     (Hpta_0 => 0,
      Hpta_1 => 1);

   --  Periodic Interrupt Indicates that periodic interrupt has occurred since
   --  this bit was last cleared.
   type HPSR_PI_Field is
     (
      --  No periodic interrupt occurred.
      Pi_0,
      --  A periodic interrupt occurred.
      Pi_1)
     with Size => 1;
   for HPSR_PI_Field use
     (Pi_0 => 0,
      Pi_1 => 1);

   --  System Security Monitor State This field contains the encoded state of
   --  the SSM's state machine
   type HPSR_SSM_STATE_Field is
     (
      --  Init
      Ssm_State_0,
      --  Hard Fail
      Ssm_State_1,
      --  Soft Fail
      Ssm_State_3,
      --  Init Intermediate (transition state between Init and Check - SSM
      --  stays in this state only one clock cycle)
      Ssm_State_8,
      --  Check
      Ssm_State_9,
      --  Non-Secure
      Ssm_State_11,
      --  Trusted
      Ssm_State_13,
      --  Secure
      Ssm_State_15)
     with Size => 4;
   for HPSR_SSM_STATE_Field use
     (Ssm_State_0 => 0,
      Ssm_State_1 => 1,
      Ssm_State_3 => 3,
      Ssm_State_8 => 8,
      Ssm_State_9 => 9,
      Ssm_State_11 => 11,
      Ssm_State_13 => 13,
      Ssm_State_15 => 15);

   --  System Security Configuration This field indicates the security
   --  configuration of SNVS, defined as follows:
   type HPSR_SYS_SECURITY_CFG_Field is
     (
      --  Fab Configuration - the default configuration of newly fabricated
      --  chips
      Sys_Security_Cfg_0,
      --  Open Configuration - the configuration after NXP-programmable fuses
      --  have been blown
      Sys_Security_Cfg_1,
      --  Closed Configuration - the configuration after OEM-programmable fuses
      --  have been blown
      Sys_Security_Cfg_3,
      --  Field Return Configuration - the configuration of chips that are
      --  returned to NXP for analysis
      Sys_Security_Cfg_7)
     with Size => 3;
   for HPSR_SYS_SECURITY_CFG_Field use
     (Sys_Security_Cfg_0 => 0,
      Sys_Security_Cfg_1 => 1,
      Sys_Security_Cfg_3 => 3,
      Sys_Security_Cfg_7 => 7);

   subtype HPSR_OTPMK_SYNDROME_Field is HAL.UInt9;

   --  One Time Programmable Master Key is Equal to Zero
   type HPSR_OTPMK_ZERO_Field is
     (
      --  The OTPMK is not zero.
      Otpmk_Zero_0,
      --  The OTPMK is zero.
      Otpmk_Zero_1)
     with Size => 1;
   for HPSR_OTPMK_ZERO_Field use
     (Otpmk_Zero_0 => 0,
      Otpmk_Zero_1 => 1);

   --  Zeroizable Master Key is Equal to Zero
   type HPSR_ZMK_ZERO_Field is
     (
      --  The ZMK is not zero.
      Zmk_Zero_0,
      --  The ZMK is zero.
      Zmk_Zero_1)
     with Size => 1;
   for HPSR_ZMK_ZERO_Field use
     (Zmk_Zero_0 => 0,
      Zmk_Zero_1 => 1);

   --  SNVS_HP Status Register
   type HPSR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. HP Time Alarm Indicates that the HP Time Alarm has
      --  occurred since this bit was last cleared.
      HPTA             : HPSR_HPTA_Field := NRF_SVD.SNVS.Hpta_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Periodic Interrupt Indicates that periodic interrupt
      --  has occurred since this bit was last cleared.
      PI               : HPSR_PI_Field := NRF_SVD.SNVS.Pi_0;
      --  unspecified
      Reserved_2_3     : HAL.UInt2 := 16#0#;
      --  Read-only. Low Power Disable If 1, the low power section has been
      --  disabled by means of an input signal to SNVS
      LPDIS            : Boolean := False;
      --  unspecified
      Reserved_5_5     : HAL.Bit := 16#0#;
      --  Read-only. Button Value of the BTN input
      BTN              : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Button Interrupt Signal ipi_snvs_btn_int_b was
      --  asserted.
      BI               : Boolean := False;
      --  Read-only. System Security Monitor State This field contains the
      --  encoded state of the SSM's state machine
      SSM_STATE        : HPSR_SSM_STATE_Field := NRF_SVD.SNVS.Ssm_State_0;
      --  Read-only. System Security Configuration This field indicates the
      --  security configuration of SNVS, defined as follows:
      SYS_SECURITY_CFG : HPSR_SYS_SECURITY_CFG_Field :=
                          NRF_SVD.SNVS.Sys_Security_Cfg_3;
      --  Read-only. System Secure Boot If SYS_SECURE_BOOT is 1, the chip boots
      --  from internal ROM.
      SYS_SECURE_BOOT  : Boolean := True;
      --  Read-only. One Time Programmable Master Key Syndrome In the case of a
      --  single-bit error, the eight lower bits of this value indicate the bit
      --  number of error location
      OTPMK_SYNDROME   : HPSR_OTPMK_SYNDROME_Field := 16#0#;
      --  unspecified
      Reserved_25_26   : HAL.UInt2 := 16#0#;
      --  Read-only. One Time Programmable Master Key is Equal to Zero
      OTPMK_ZERO       : HPSR_OTPMK_ZERO_Field := NRF_SVD.SNVS.Otpmk_Zero_0;
      --  unspecified
      Reserved_28_30   : HAL.UInt3 := 16#0#;
      --  Read-only. Zeroizable Master Key is Equal to Zero
      ZMK_ZERO         : HPSR_ZMK_ZERO_Field := NRF_SVD.SNVS.Zmk_Zero_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPSR_Register use record
      HPTA             at 0 range 0 .. 0;
      PI               at 0 range 1 .. 1;
      Reserved_2_3     at 0 range 2 .. 3;
      LPDIS            at 0 range 4 .. 4;
      Reserved_5_5     at 0 range 5 .. 5;
      BTN              at 0 range 6 .. 6;
      BI               at 0 range 7 .. 7;
      SSM_STATE        at 0 range 8 .. 11;
      SYS_SECURITY_CFG at 0 range 12 .. 14;
      SYS_SECURE_BOOT  at 0 range 15 .. 15;
      OTPMK_SYNDROME   at 0 range 16 .. 24;
      Reserved_25_26   at 0 range 25 .. 26;
      OTPMK_ZERO       at 0 range 27 .. 27;
      Reserved_28_30   at 0 range 28 .. 30;
      ZMK_ZERO         at 0 range 31 .. 31;
   end record;

   --  Security Violation 0 security violation was detected.
   type HPSVSR_SV0_Field is
     (
      --  No Security Violation 0 security violation was detected.
      Sv0_0,
      --  Security Violation 0 security violation was detected.
      Sv0_1)
     with Size => 1;
   for HPSVSR_SV0_Field use
     (Sv0_0 => 0,
      Sv0_1 => 1);

   --  Security Violation 1 security violation was detected.
   type HPSVSR_SV1_Field is
     (
      --  No Security Violation 1 security violation was detected.
      Sv1_0,
      --  Security Violation 1 security violation was detected.
      Sv1_1)
     with Size => 1;
   for HPSVSR_SV1_Field use
     (Sv1_0 => 0,
      Sv1_1 => 1);

   --  Security Violation 2 security violation was detected.
   type HPSVSR_SV2_Field is
     (
      --  No Security Violation 2 security violation was detected.
      Sv2_0,
      --  Security Violation 2 security violation was detected.
      Sv2_1)
     with Size => 1;
   for HPSVSR_SV2_Field use
     (Sv2_0 => 0,
      Sv2_1 => 1);

   --  Security Violation 3 security violation was detected.
   type HPSVSR_SV3_Field is
     (
      --  No Security Violation 3 security violation was detected.
      Sv3_0,
      --  Security Violation 3 security violation was detected.
      Sv3_1)
     with Size => 1;
   for HPSVSR_SV3_Field use
     (Sv3_0 => 0,
      Sv3_1 => 1);

   --  Security Violation 4 security violation was detected.
   type HPSVSR_SV4_Field is
     (
      --  No Security Violation 4 security violation was detected.
      Sv4_0,
      --  Security Violation 4 security violation was detected.
      Sv4_1)
     with Size => 1;
   for HPSVSR_SV4_Field use
     (Sv4_0 => 0,
      Sv4_1 => 1);

   --  Security Violation 5 security violation was detected.
   type HPSVSR_SV5_Field is
     (
      --  No Security Violation 5 security violation was detected.
      Sv5_0,
      --  Security Violation 5 security violation was detected.
      Sv5_1)
     with Size => 1;
   for HPSVSR_SV5_Field use
     (Sv5_0 => 0,
      Sv5_1 => 1);

   subtype HPSVSR_ZMK_SYNDROME_Field is HAL.UInt9;

   --  Zeroizable Master Key Error Correcting Code Check Failure When set, this
   --  bit triggers a bad key violation to the SSM and a security violation to
   --  the SNVS_LP section, which clears security sensitive data
   type HPSVSR_ZMK_ECC_FAIL_Field is
     (
      --  ZMK ECC Failure was not detected.
      Zmk_Ecc_Fail_0,
      --  ZMK ECC Failure was detected.
      Zmk_Ecc_Fail_1)
     with Size => 1;
   for HPSVSR_ZMK_ECC_FAIL_Field use
     (Zmk_Ecc_Fail_0 => 0,
      Zmk_Ecc_Fail_1 => 1);

   --  SNVS_HP Security Violation Status Register
   type HPSVSR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Security Violation 0 security violation was detected.
      SV0            : HPSVSR_SV0_Field := NRF_SVD.SNVS.Sv0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Security Violation 1 security violation was detected.
      SV1            : HPSVSR_SV1_Field := NRF_SVD.SNVS.Sv1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Security Violation 2 security violation was detected.
      SV2            : HPSVSR_SV2_Field := NRF_SVD.SNVS.Sv2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Security Violation 3 security violation was detected.
      SV3            : HPSVSR_SV3_Field := NRF_SVD.SNVS.Sv3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Security Violation 4 security violation was detected.
      SV4            : HPSVSR_SV4_Field := NRF_SVD.SNVS.Sv4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Security Violation 5 security violation was detected.
      SV5            : HPSVSR_SV5_Field := NRF_SVD.SNVS.Sv5_0;
      --  unspecified
      Reserved_6_12  : HAL.UInt7 := 16#0#;
      --  Read-only. Software Security Violation This bit is a read-only copy
      --  of the SW_SV bit in the HP Command Register
      SW_SV          : Boolean := False;
      --  Read-only. Software Fatal Security Violation This bit is a read-only
      --  copy of the SW_FSV bit in the HP Command Register
      SW_FSV         : Boolean := False;
      --  Read-only. LP Software Security Violation This bit is a read-only
      --  copy of the SW_LPSV bit in the HP Command Register
      SW_LPSV        : Boolean := False;
      --  Read-only. Zeroizable Master Key Syndrome The ZMK syndrome indicates
      --  the single-bit error location and parity for the ZMK register
      ZMK_SYNDROME   : HPSVSR_ZMK_SYNDROME_Field := 16#0#;
      --  unspecified
      Reserved_25_26 : HAL.UInt2 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Zeroizable Master Key Error Correcting Code Check
      --  Failure When set, this bit triggers a bad key violation to the SSM
      --  and a security violation to the SNVS_LP section, which clears
      --  security sensitive data
      ZMK_ECC_FAIL   : HPSVSR_ZMK_ECC_FAIL_Field :=
                        NRF_SVD.SNVS.Zmk_Ecc_Fail_0;
      --  unspecified
      Reserved_28_30 : HAL.UInt3 := 16#0#;
      --  Read-only. LP Security Violation A security volation was detected in
      --  the SNVS low power section.
      LP_SEC_VIO     : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPSVSR_Register use record
      SV0            at 0 range 0 .. 0;
      SV1            at 0 range 1 .. 1;
      SV2            at 0 range 2 .. 2;
      SV3            at 0 range 3 .. 3;
      SV4            at 0 range 4 .. 4;
      SV5            at 0 range 5 .. 5;
      Reserved_6_12  at 0 range 6 .. 12;
      SW_SV          at 0 range 13 .. 13;
      SW_FSV         at 0 range 14 .. 14;
      SW_LPSV        at 0 range 15 .. 15;
      ZMK_SYNDROME   at 0 range 16 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      ZMK_ECC_FAIL   at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LP_SEC_VIO     at 0 range 31 .. 31;
   end record;

   subtype HPRTCMR_RTC_Field is HAL.UInt15;

   --  SNVS_HP Real Time Counter MSB Register
   type HPRTCMR_Register is record
      --  HP Real Time Counter The most-significant 15 bits of the RTC
      RTC            : HPRTCMR_RTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPRTCMR_Register use record
      RTC            at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HPTAMR_HPTA_MS_Field is HAL.UInt15;

   --  SNVS_HP Time Alarm MSB Register
   type HPTAMR_Register is record
      --  HP Time Alarm, most-significant 15 bits
      HPTA_MS        : HPTAMR_HPTA_MS_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTAMR_Register use record
      HPTA_MS        at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Zeroizable Master Key Write Hard Lock When set, prevents any writes
   --  (software and hardware) to the ZMK registers and ZMK_HWP, ZMK_VAL, and
   --  ZMK_ECC_EN fields of the LPMKCR
   type LPLR_ZMK_WHL_Field is
     (
      --  Write access is allowed.
      Zmk_Whl_0,
      --  Write access is not allowed.
      Zmk_Whl_1)
     with Size => 1;
   for LPLR_ZMK_WHL_Field use
     (Zmk_Whl_0 => 0,
      Zmk_Whl_1 => 1);

   --  Zeroizable Master Key Read Hard Lock When set, prevents any software
   --  reads to the ZMK registers and ZMK_ECC_VALUE field of the LPMKCR
   type LPLR_ZMK_RHL_Field is
     (
      --  Read access is allowed (only in software programming mode).
      Zmk_Rhl_0,
      --  Read access is not allowed.
      Zmk_Rhl_1)
     with Size => 1;
   for LPLR_ZMK_RHL_Field use
     (Zmk_Rhl_0 => 0,
      Zmk_Rhl_1 => 1);

   --  Secure Real Time Counter Hard Lock When set, prevents any writes to the
   --  SRTC registers, SRTC_ENV, and SRTC_INV_EN bits
   type LPLR_SRTC_HL_Field is
     (
      --  Write access is allowed.
      Srtc_Hl_0,
      --  Write access is not allowed.
      Srtc_Hl_1)
     with Size => 1;
   for LPLR_SRTC_HL_Field use
     (Srtc_Hl_0 => 0,
      Srtc_Hl_1 => 1);

   --  LP Calibration Hard Lock When set, prevents any writes to the LP
   --  Calibration Value (LPCALB_VAL) and LP Calibration Enable (LPCALB_EN)
   type LPLR_LPCALB_HL_Field is
     (
      --  Write access is allowed.
      Lpcalb_Hl_0,
      --  Write access is not allowed.
      Lpcalb_Hl_1)
     with Size => 1;
   for LPLR_LPCALB_HL_Field use
     (Lpcalb_Hl_0 => 0,
      Lpcalb_Hl_1 => 1);

   --  Monotonic Counter Hard Lock When set, prevents any writes (increments)
   --  to the MC Registers and MC_ENV bit
   type LPLR_MC_HL_Field is
     (
      --  Write access (increment) is allowed.
      Mc_Hl_0,
      --  Write access (increment) is not allowed.
      Mc_Hl_1)
     with Size => 1;
   for LPLR_MC_HL_Field use
     (Mc_Hl_0 => 0,
      Mc_Hl_1 => 1);

   --  General Purpose Register Hard Lock When set, prevents any writes to the
   --  GPR
   type LPLR_GPR_HL_Field is
     (
      --  Write access is allowed.
      Gpr_Hl_0,
      --  Write access is not allowed.
      Gpr_Hl_1)
     with Size => 1;
   for LPLR_GPR_HL_Field use
     (Gpr_Hl_0 => 0,
      Gpr_Hl_1 => 1);

   --  LP Security Violation Control Register Hard Lock When set, prevents any
   --  writes to the LPSVCR
   type LPLR_LPSVCR_HL_Field is
     (
      --  Write access is allowed.
      Lpsvcr_Hl_0,
      --  Write access is not allowed.
      Lpsvcr_Hl_1)
     with Size => 1;
   for LPLR_LPSVCR_HL_Field use
     (Lpsvcr_Hl_0 => 0,
      Lpsvcr_Hl_1 => 1);

   --  LP Tamper Detectors Configuration Register Hard Lock When set, prevents
   --  any writes to the LPTDCR
   type LPLR_LPTDCR_HL_Field is
     (
      --  Write access is allowed.
      Lptdcr_Hl_0,
      --  Write access is not allowed.
      Lptdcr_Hl_1)
     with Size => 1;
   for LPLR_LPTDCR_HL_Field use
     (Lptdcr_Hl_0 => 0,
      Lptdcr_Hl_1 => 1);

   --  Master Key Select Hard Lock When set, prevents any writes to the
   --  MASTER_KEY_SEL field of the LP Master Key Control Register
   type LPLR_MKS_HL_Field is
     (
      --  Write access is allowed.
      Mks_Hl_0,
      --  Write access is not allowed.
      Mks_Hl_1)
     with Size => 1;
   for LPLR_MKS_HL_Field use
     (Mks_Hl_0 => 0,
      Mks_Hl_1 => 1);

   --  SNVS_LP Lock Register
   type LPLR_Register is record
      --  Zeroizable Master Key Write Hard Lock When set, prevents any writes
      --  (software and hardware) to the ZMK registers and ZMK_HWP, ZMK_VAL,
      --  and ZMK_ECC_EN fields of the LPMKCR
      ZMK_WHL        : LPLR_ZMK_WHL_Field := NRF_SVD.SNVS.Zmk_Whl_0;
      --  Zeroizable Master Key Read Hard Lock When set, prevents any software
      --  reads to the ZMK registers and ZMK_ECC_VALUE field of the LPMKCR
      ZMK_RHL        : LPLR_ZMK_RHL_Field := NRF_SVD.SNVS.Zmk_Rhl_0;
      --  Secure Real Time Counter Hard Lock When set, prevents any writes to
      --  the SRTC registers, SRTC_ENV, and SRTC_INV_EN bits
      SRTC_HL        : LPLR_SRTC_HL_Field := NRF_SVD.SNVS.Srtc_Hl_0;
      --  LP Calibration Hard Lock When set, prevents any writes to the LP
      --  Calibration Value (LPCALB_VAL) and LP Calibration Enable (LPCALB_EN)
      LPCALB_HL      : LPLR_LPCALB_HL_Field := NRF_SVD.SNVS.Lpcalb_Hl_0;
      --  Monotonic Counter Hard Lock When set, prevents any writes
      --  (increments) to the MC Registers and MC_ENV bit
      MC_HL          : LPLR_MC_HL_Field := NRF_SVD.SNVS.Mc_Hl_0;
      --  General Purpose Register Hard Lock When set, prevents any writes to
      --  the GPR
      GPR_HL         : LPLR_GPR_HL_Field := NRF_SVD.SNVS.Gpr_Hl_0;
      --  LP Security Violation Control Register Hard Lock When set, prevents
      --  any writes to the LPSVCR
      LPSVCR_HL      : LPLR_LPSVCR_HL_Field := NRF_SVD.SNVS.Lpsvcr_Hl_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  LP Tamper Detectors Configuration Register Hard Lock When set,
      --  prevents any writes to the LPTDCR
      LPTDCR_HL      : LPLR_LPTDCR_HL_Field := NRF_SVD.SNVS.Lptdcr_Hl_0;
      --  Master Key Select Hard Lock When set, prevents any writes to the
      --  MASTER_KEY_SEL field of the LP Master Key Control Register
      MKS_HL         : LPLR_MKS_HL_Field := NRF_SVD.SNVS.Mks_Hl_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPLR_Register use record
      ZMK_WHL        at 0 range 0 .. 0;
      ZMK_RHL        at 0 range 1 .. 1;
      SRTC_HL        at 0 range 2 .. 2;
      LPCALB_HL      at 0 range 3 .. 3;
      MC_HL          at 0 range 4 .. 4;
      GPR_HL         at 0 range 5 .. 5;
      LPSVCR_HL      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LPTDCR_HL      at 0 range 8 .. 8;
      MKS_HL         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Secure Real Time Counter Enabled and Valid When set, the SRTC becomes
   --  operational
   type LPCR_SRTC_ENV_Field is
     (
      --  SRTC is disabled or invalid.
      Srtc_Env_0,
      --  SRTC is enabled and valid.
      Srtc_Env_1)
     with Size => 1;
   for LPCR_SRTC_ENV_Field use
     (Srtc_Env_0 => 0,
      Srtc_Env_1 => 1);

   --  LP Time Alarm Enable When set, the SNVS functional interrupt is asserted
   --  if the LP Time Alarm Register is equal to the 32 MSBs of the secure real
   --  time counter
   type LPCR_LPTA_EN_Field is
     (
      --  LP time alarm interrupt is disabled.
      Lpta_En_0,
      --  LP time alarm interrupt is enabled.
      Lpta_En_1)
     with Size => 1;
   for LPCR_LPTA_EN_Field use
     (Lpta_En_0 => 0,
      Lpta_En_1 => 1);

   --  Monotonic Counter Enabled and Valid When set, the MC can be incremented
   --  (by write transaction to the LPSMCMR or LPSMCLR)
   type LPCR_MC_ENV_Field is
     (
      --  MC is disabled or invalid.
      Mc_Env_0,
      --  MC is enabled and valid.
      Mc_Env_1)
     with Size => 1;
   for LPCR_MC_ENV_Field use
     (Mc_Env_0 => 0,
      Mc_Env_1 => 1);

   --  If this bit is 1, in the case of a security violation the SRTC stops
   --  counting and the SRTC is invalidated (SRTC_ENV bit is cleared)
   type LPCR_SRTC_INV_EN_Field is
     (
      --  SRTC stays valid in the case of security violation.
      Srtc_Inv_En_0,
      --  SRTC is invalidated in the case of security violation.
      Srtc_Inv_En_1)
     with Size => 1;
   for LPCR_SRTC_INV_EN_Field use
     (Srtc_Inv_En_0 => 0,
      Srtc_Inv_En_1 => 1);

   --  Dumb PMIC Enabled When set, software can control the system power
   type LPCR_DP_EN_Field is
     (
      --  Smart PMIC enabled.
      Dp_En_0,
      --  Dumb PMIC enabled.
      Dp_En_1)
     with Size => 1;
   for LPCR_DP_EN_Field use
     (Dp_En_0 => 0,
      Dp_En_1 => 1);

   --  Turn off System Power Asserting this bit causes a signal to be sent to
   --  the Power Management IC to turn off the system power
   type LPCR_TOP_Field is
     (
      --  Leave system power on.
      Top_0,
      --  Turn off system power.
      Top_1)
     with Size => 1;
   for LPCR_TOP_Field use
     (Top_0 => 0,
      Top_1 => 1);

   --  LP Calibration Enable When set, enables the SRTC calibration mechanism
   type LPCR_LPCALB_EN_Field is
     (
      --  SRTC Time calibration is disabled.
      Lpcalb_En_0,
      --  SRTC Time calibration is enabled.
      Lpcalb_En_1)
     with Size => 1;
   for LPCR_LPCALB_EN_Field use
     (Lpcalb_En_0 => 0,
      Lpcalb_En_1 => 1);

   --  LP Calibration Value Defines signed calibration value for SRTC
   type LPCR_LPCALB_VAL_Field is
     (
      --  +0 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_0,
      --  +1 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_1,
      --  +2 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_2,
      --  +15 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_15,
      --  -16 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_16,
      --  -15 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_17,
      --  -2 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_30,
      --  -1 counts per each 32768 ticks of the counter clock
      Lpcalb_Val_31)
     with Size => 5;
   for LPCR_LPCALB_VAL_Field use
     (Lpcalb_Val_0 => 0,
      Lpcalb_Val_1 => 1,
      Lpcalb_Val_2 => 2,
      Lpcalb_Val_15 => 15,
      Lpcalb_Val_16 => 16,
      Lpcalb_Val_17 => 17,
      Lpcalb_Val_30 => 30,
      Lpcalb_Val_31 => 31);

   subtype LPCR_BTN_PRESS_TIME_Field is HAL.UInt2;
   subtype LPCR_DEBOUNCE_Field is HAL.UInt2;
   subtype LPCR_ON_TIME_Field is HAL.UInt2;

   --  SNVS_LP Control Register
   type LPCR_Register is record
      --  Secure Real Time Counter Enabled and Valid When set, the SRTC becomes
      --  operational
      SRTC_ENV       : LPCR_SRTC_ENV_Field := NRF_SVD.SNVS.Srtc_Env_0;
      --  LP Time Alarm Enable When set, the SNVS functional interrupt is
      --  asserted if the LP Time Alarm Register is equal to the 32 MSBs of the
      --  secure real time counter
      LPTA_EN        : LPCR_LPTA_EN_Field := NRF_SVD.SNVS.Lpta_En_0;
      --  Monotonic Counter Enabled and Valid When set, the MC can be
      --  incremented (by write transaction to the LPSMCMR or LPSMCLR)
      MC_ENV         : LPCR_MC_ENV_Field := NRF_SVD.SNVS.Mc_Env_0;
      --  LP Wake-Up Interrupt Enable This interrupt line should be connected
      --  to the external pin and is intended to inform the external chip about
      --  an SNVS_LP event (tamper event, MC rollover, SRTC rollover, or time
      --  alarm )
      LPWUI_EN       : Boolean := False;
      --  If this bit is 1, in the case of a security violation the SRTC stops
      --  counting and the SRTC is invalidated (SRTC_ENV bit is cleared)
      SRTC_INV_EN    : LPCR_SRTC_INV_EN_Field := NRF_SVD.SNVS.Srtc_Inv_En_0;
      --  Dumb PMIC Enabled When set, software can control the system power
      DP_EN          : LPCR_DP_EN_Field := NRF_SVD.SNVS.Dp_En_0;
      --  Turn off System Power Asserting this bit causes a signal to be sent
      --  to the Power Management IC to turn off the system power
      TOP            : LPCR_TOP_Field := NRF_SVD.SNVS.Top_0;
      --  Power Glitch Enable By default the detection of a power glitch does
      --  not cause the pmic_en_b signal to be asserted
      PWR_GLITCH_EN  : Boolean := False;
      --  LP Calibration Enable When set, enables the SRTC calibration
      --  mechanism
      LPCALB_EN      : LPCR_LPCALB_EN_Field := NRF_SVD.SNVS.Lpcalb_En_0;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  LP Calibration Value Defines signed calibration value for SRTC
      LPCALB_VAL     : LPCR_LPCALB_VAL_Field := NRF_SVD.SNVS.Lpcalb_Val_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  This field configures the button press time out values for the PMIC
      --  Logic
      BTN_PRESS_TIME : LPCR_BTN_PRESS_TIME_Field := 16#0#;
      --  This field configures the amount of debounce time for the BTN input
      --  signal
      DEBOUNCE       : LPCR_DEBOUNCE_Field := 16#0#;
      --  The ON_TIME field is used to configure the period of time after BTN
      --  is asserted before pmic_en_b is asserted to turn on the SoC power
      ON_TIME        : LPCR_ON_TIME_Field := 16#0#;
      --  PMIC On Request Enable The value written to PK_EN will be asserted on
      --  output signal snvs_lp_pk_en
      PK_EN          : Boolean := False;
      --  PMIC On Request Override The value written to PK_OVERRIDE will be
      --  asserted on output signal snvs_lp_pk_override
      PK_OVERRIDE    : Boolean := False;
      --  General Purpose Registers Zeroization Disable
      GPR_Z_DIS      : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPCR_Register use record
      SRTC_ENV       at 0 range 0 .. 0;
      LPTA_EN        at 0 range 1 .. 1;
      MC_ENV         at 0 range 2 .. 2;
      LPWUI_EN       at 0 range 3 .. 3;
      SRTC_INV_EN    at 0 range 4 .. 4;
      DP_EN          at 0 range 5 .. 5;
      TOP            at 0 range 6 .. 6;
      PWR_GLITCH_EN  at 0 range 7 .. 7;
      LPCALB_EN      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      LPCALB_VAL     at 0 range 10 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      BTN_PRESS_TIME at 0 range 16 .. 17;
      DEBOUNCE       at 0 range 18 .. 19;
      ON_TIME        at 0 range 20 .. 21;
      PK_EN          at 0 range 22 .. 22;
      PK_OVERRIDE    at 0 range 23 .. 23;
      GPR_Z_DIS      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Master Key Select These bits select the SNVS Master Key output when
   --  Master Key Select bits are enabled by MKS_EN bit in the HPCOMR
   type LPMKCR_MASTER_KEY_SEL_Field is
     (
      --  Select one time programmable master key.
      Master_Key_Sel_00,
      --  Select one time programmable master key.
      Master_Key_Sel_01,
      --  no description available
      Master_Key_Sel_2,
      --  no description available
      Master_Key_Sel_3)
     with Size => 2;
   for LPMKCR_MASTER_KEY_SEL_Field use
     (Master_Key_Sel_00 => 0,
      Master_Key_Sel_01 => 1,
      Master_Key_Sel_2 => 2,
      Master_Key_Sel_3 => 3);

   --  Zeroizable Master Key hardware Programming mode When set, only the
   --  hardware key programming mechanism can set the ZMK and software cannot
   --  read it
   type LPMKCR_ZMK_HWP_Field is
     (
      --  ZMK is in the software programming mode.
      Zmk_Hwp_0,
      --  ZMK is in the hardware programming mode.
      Zmk_Hwp_1)
     with Size => 1;
   for LPMKCR_ZMK_HWP_Field use
     (Zmk_Hwp_0 => 0,
      Zmk_Hwp_1 => 1);

   --  Zeroizable Master Key Valid When set, the ZMK value can be selected by
   --  the master key control block for use by cryptographic modules
   type LPMKCR_ZMK_VAL_Field is
     (
      --  ZMK is not valid.
      Zmk_Val_0,
      --  ZMK is valid.
      Zmk_Val_1)
     with Size => 1;
   for LPMKCR_ZMK_VAL_Field use
     (Zmk_Val_0 => 0,
      Zmk_Val_1 => 1);

   --  Zeroizable Master Key Error Correcting Code Check Enable Writing one to
   --  this field automatically calculates and sets the ZMK ECC value in the
   --  ZMK_ECC_VALUE field of this register
   type LPMKCR_ZMK_ECC_EN_Field is
     (
      --  ZMK ECC check is disabled.
      Zmk_Ecc_En_0,
      --  ZMK ECC check is enabled.
      Zmk_Ecc_En_1)
     with Size => 1;
   for LPMKCR_ZMK_ECC_EN_Field use
     (Zmk_Ecc_En_0 => 0,
      Zmk_Ecc_En_1 => 1);

   subtype LPMKCR_ZMK_ECC_VALUE_Field is HAL.UInt9;

   --  SNVS_LP Master Key Control Register
   type LPMKCR_Register is record
      --  Master Key Select These bits select the SNVS Master Key output when
      --  Master Key Select bits are enabled by MKS_EN bit in the HPCOMR
      MASTER_KEY_SEL : LPMKCR_MASTER_KEY_SEL_Field :=
                        NRF_SVD.SNVS.Master_Key_Sel_00;
      --  Zeroizable Master Key hardware Programming mode When set, only the
      --  hardware key programming mechanism can set the ZMK and software
      --  cannot read it
      ZMK_HWP        : LPMKCR_ZMK_HWP_Field := NRF_SVD.SNVS.Zmk_Hwp_0;
      --  Zeroizable Master Key Valid When set, the ZMK value can be selected
      --  by the master key control block for use by cryptographic modules
      ZMK_VAL        : LPMKCR_ZMK_VAL_Field := NRF_SVD.SNVS.Zmk_Val_0;
      --  Zeroizable Master Key Error Correcting Code Check Enable Writing one
      --  to this field automatically calculates and sets the ZMK ECC value in
      --  the ZMK_ECC_VALUE field of this register
      ZMK_ECC_EN     : LPMKCR_ZMK_ECC_EN_Field := NRF_SVD.SNVS.Zmk_Ecc_En_0;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Read-only. Zeroizable Master Key Error Correcting Code Value This
      --  field is automatically calculated and set when one is written into
      --  ZMK_ECC_EN bit of this register
      ZMK_ECC_VALUE  : LPMKCR_ZMK_ECC_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMKCR_Register use record
      MASTER_KEY_SEL at 0 range 0 .. 1;
      ZMK_HWP        at 0 range 2 .. 2;
      ZMK_VAL        at 0 range 3 .. 3;
      ZMK_ECC_EN     at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      ZMK_ECC_VALUE  at 0 range 7 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Security Violation 0 Enable This bit enables Security Violation 0 Input
   type LPSVCR_SV0_EN_Field is
     (
      --  Security Violation 0 is disabled in the LP domain.
      Sv0_En_0,
      --  Security Violation 0 is enabled in the LP domain.
      Sv0_En_1)
     with Size => 1;
   for LPSVCR_SV0_EN_Field use
     (Sv0_En_0 => 0,
      Sv0_En_1 => 1);

   --  Security Violation 1 Enable This bit enables Security Violation 1 Input
   type LPSVCR_SV1_EN_Field is
     (
      --  Security Violation 1 is disabled in the LP domain.
      Sv1_En_0,
      --  Security Violation 1 is enabled in the LP domain.
      Sv1_En_1)
     with Size => 1;
   for LPSVCR_SV1_EN_Field use
     (Sv1_En_0 => 0,
      Sv1_En_1 => 1);

   --  Security Violation 2 Enable This bit enables Security Violation 2 Input
   type LPSVCR_SV2_EN_Field is
     (
      --  Security Violation 2 is disabled in the LP domain.
      Sv2_En_0,
      --  Security Violation 2 is enabled in the LP domain.
      Sv2_En_1)
     with Size => 1;
   for LPSVCR_SV2_EN_Field use
     (Sv2_En_0 => 0,
      Sv2_En_1 => 1);

   --  Security Violation 3 Enable This bit enables Security Violation 3 Input
   type LPSVCR_SV3_EN_Field is
     (
      --  Security Violation 3 is disabled in the LP domain.
      Sv3_En_0,
      --  Security Violation 3 is enabled in the LP domain.
      Sv3_En_1)
     with Size => 1;
   for LPSVCR_SV3_EN_Field use
     (Sv3_En_0 => 0,
      Sv3_En_1 => 1);

   --  Security Violation 4 Enable This bit enables Security Violation 4 Input
   type LPSVCR_SV4_EN_Field is
     (
      --  Security Violation 4 is disabled in the LP domain.
      Sv4_En_0,
      --  Security Violation 4 is enabled in the LP domain.
      Sv4_En_1)
     with Size => 1;
   for LPSVCR_SV4_EN_Field use
     (Sv4_En_0 => 0,
      Sv4_En_1 => 1);

   --  Security Violation 5 Enable This bit enables Security Violation 5 Input
   type LPSVCR_SV5_EN_Field is
     (
      --  Security Violation 5 is disabled in the LP domain.
      Sv5_En_0,
      --  Security Violation 5 is enabled in the LP domain.
      Sv5_En_1)
     with Size => 1;
   for LPSVCR_SV5_EN_Field use
     (Sv5_En_0 => 0,
      Sv5_En_1 => 1);

   --  SNVS_LP Security Violation Control Register
   type LPSVCR_Register is record
      --  Security Violation 0 Enable This bit enables Security Violation 0
      --  Input
      SV0_EN        : LPSVCR_SV0_EN_Field := NRF_SVD.SNVS.Sv0_En_0;
      --  Security Violation 1 Enable This bit enables Security Violation 1
      --  Input
      SV1_EN        : LPSVCR_SV1_EN_Field := NRF_SVD.SNVS.Sv1_En_0;
      --  Security Violation 2 Enable This bit enables Security Violation 2
      --  Input
      SV2_EN        : LPSVCR_SV2_EN_Field := NRF_SVD.SNVS.Sv2_En_0;
      --  Security Violation 3 Enable This bit enables Security Violation 3
      --  Input
      SV3_EN        : LPSVCR_SV3_EN_Field := NRF_SVD.SNVS.Sv3_En_0;
      --  Security Violation 4 Enable This bit enables Security Violation 4
      --  Input
      SV4_EN        : LPSVCR_SV4_EN_Field := NRF_SVD.SNVS.Sv4_En_0;
      --  Security Violation 5 Enable This bit enables Security Violation 5
      --  Input
      SV5_EN        : LPSVCR_SV5_EN_Field := NRF_SVD.SNVS.Sv5_En_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSVCR_Register use record
      SV0_EN        at 0 range 0 .. 0;
      SV1_EN        at 0 range 1 .. 1;
      SV2_EN        at 0 range 2 .. 2;
      SV3_EN        at 0 range 3 .. 3;
      SV4_EN        at 0 range 4 .. 4;
      SV5_EN        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  SRTC Rollover Enable When set, an SRTC rollover event generates an LP
   --  security violation.
   type LPTDCR_SRTCR_EN_Field is
     (
      --  SRTC rollover is disabled.
      Srtcr_En_0,
      --  SRTC rollover is enabled.
      Srtcr_En_1)
     with Size => 1;
   for LPTDCR_SRTCR_EN_Field use
     (Srtcr_En_0 => 0,
      Srtcr_En_1 => 1);

   --  MC Rollover Enable When set, an MC Rollover event generates an LP
   --  security violation.
   type LPTDCR_MCR_EN_Field is
     (
      --  MC rollover is disabled.
      Mcr_En_0,
      --  MC rollover is enabled.
      Mcr_En_1)
     with Size => 1;
   for LPTDCR_MCR_EN_Field use
     (Mcr_En_0 => 0,
      Mcr_En_1 => 1);

   --  External Tampering 1 Enable When set, external tampering 1 detection
   --  generates an LP security violation
   type LPTDCR_ET1_EN_Field is
     (
      --  External tamper 1 is disabled.
      Et1_En_0,
      --  External tamper 1 is enabled.
      Et1_En_1)
     with Size => 1;
   for LPTDCR_ET1_EN_Field use
     (Et1_En_0 => 0,
      Et1_En_1 => 1);

   --  External Tampering 1 Polarity This bit is used to determine the polarity
   --  of external tamper 1.
   type LPTDCR_ET1P_Field is
     (
      --  External tamper 1 is active low.
      Et1P_0,
      --  External tamper 1 is active high.
      Et1P_1)
     with Size => 1;
   for LPTDCR_ET1P_Field use
     (Et1P_0 => 0,
      Et1P_1 => 1);

   --  Oscillator Bypass When OSCB=1 the osc_bypass signal is asserted
   type LPTDCR_OSCB_Field is
     (
      --  Normal SRTC clock oscillator not bypassed.
      Oscb_0,
      --  Normal SRTC clock oscillator bypassed. Alternate clock can drive the
      --  SRTC clock source.
      Oscb_1)
     with Size => 1;
   for LPTDCR_OSCB_Field use
     (Oscb_0 => 0,
      Oscb_1 => 1);

   --  SNVS_LP Tamper Detectors Configuration Register
   type LPTDCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  SRTC Rollover Enable When set, an SRTC rollover event generates an LP
      --  security violation.
      SRTCR_EN       : LPTDCR_SRTCR_EN_Field := NRF_SVD.SNVS.Srtcr_En_0;
      --  MC Rollover Enable When set, an MC Rollover event generates an LP
      --  security violation.
      MCR_EN         : LPTDCR_MCR_EN_Field := NRF_SVD.SNVS.Mcr_En_0;
      --  unspecified
      Reserved_3_8   : HAL.UInt6 := 16#0#;
      --  External Tampering 1 Enable When set, external tampering 1 detection
      --  generates an LP security violation
      ET1_EN         : LPTDCR_ET1_EN_Field := NRF_SVD.SNVS.Et1_En_0;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  External Tampering 1 Polarity This bit is used to determine the
      --  polarity of external tamper 1.
      ET1P           : LPTDCR_ET1P_Field := NRF_SVD.SNVS.Et1P_0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  System Power Fail Detector (PFD) Observability Flop The asynchronous
      --  reset input of this flop is connected directly to the inverted output
      --  of the PFD analog circuitry (external to the SNVS block)
      PFD_OBSERV     : Boolean := False;
      --  Power On Reset (POR) Observability Flop The asynchronous reset input
      --  of this flop is connected directly to the output of the POR analog
      --  circuitry (external to the SNVS
      POR_OBSERV     : Boolean := False;
      --  unspecified
      Reserved_16_27 : HAL.UInt12 := 16#0#;
      --  Oscillator Bypass When OSCB=1 the osc_bypass signal is asserted
      OSCB           : LPTDCR_OSCB_Field := NRF_SVD.SNVS.Oscb_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTDCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SRTCR_EN       at 0 range 1 .. 1;
      MCR_EN         at 0 range 2 .. 2;
      Reserved_3_8   at 0 range 3 .. 8;
      ET1_EN         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      ET1P           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      PFD_OBSERV     at 0 range 14 .. 14;
      POR_OBSERV     at 0 range 15 .. 15;
      Reserved_16_27 at 0 range 16 .. 27;
      OSCB           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  LP Time Alarm
   type LPSR_LPTA_Field is
     (
      --  No time alarm interrupt occurred.
      Lpta_0,
      --  A time alarm interrupt occurred.
      Lpta_1)
     with Size => 1;
   for LPSR_LPTA_Field use
     (Lpta_0 => 0,
      Lpta_1 => 1);

   --  Secure Real Time Counter Rollover
   type LPSR_SRTCR_Field is
     (
      --  SRTC has not reached its maximum value.
      Srtcr_0,
      --  SRTC has reached its maximum value.
      Srtcr_1)
     with Size => 1;
   for LPSR_SRTCR_Field use
     (Srtcr_0 => 0,
      Srtcr_1 => 1);

   --  Monotonic Counter Rollover
   type LPSR_MCR_Field is
     (
      --  MC has not reached its maximum value.
      Mcr_0,
      --  MC has reached its maximum value.
      Mcr_1)
     with Size => 1;
   for LPSR_MCR_Field use
     (Mcr_0 => 0,
      Mcr_1 => 1);

   --  External Tampering 1 Detected
   type LPSR_ET1D_Field is
     (
      --  External tampering 1 not detected.
      Et1D_0,
      --  External tampering 1 detected.
      Et1D_1)
     with Size => 1;
   for LPSR_ET1D_Field use
     (Et1D_0 => 0,
      Et1D_1 => 1);

   --  External Security Violation Detected Indicates that a security violation
   --  is detected on one of the HP security violation ports
   type LPSR_ESVD_Field is
     (
      --  No external security violation.
      Esvd_0,
      --  External security violation is detected.
      Esvd_1)
     with Size => 1;
   for LPSR_ESVD_Field use
     (Esvd_0 => 0,
      Esvd_1 => 1);

   --  Emergency Off This bit is set when a power off is requested.
   type LPSR_EO_Field is
     (
      --  Emergency off was not detected.
      Eo_0,
      --  Emergency off was detected.
      Eo_1)
     with Size => 1;
   for LPSR_EO_Field use
     (Eo_0 => 0,
      Eo_1 => 1);

   --  Set Power Off The SPO bit is set when the power button is pressed longer
   --  than the configured debounce time
   type LPSR_SPO_Field is
     (
      --  Set Power Off was not detected.
      Spo_0,
      --  Set Power Off was detected.
      Spo_1)
     with Size => 1;
   for LPSR_SPO_Field use
     (Spo_0 => 0,
      Spo_1 => 1);

   --  Scan Exit Detected
   type LPSR_SED_Field is
     (
      --  Scan exit was not detected.
      Sed_0,
      --  Scan exit was detected.
      Sed_1)
     with Size => 1;
   for LPSR_SED_Field use
     (Sed_0 => 0,
      Sed_1 => 1);

   --  LP Section is Non-Secured Indicates that LP section was
   --  provisioned/programmed in the non-secure state
   type LPSR_LPNS_Field is
     (
      --  LP section was not programmed in the non-secure state.
      Lpns_0,
      --  LP section was programmed in the non-secure state.
      Lpns_1)
     with Size => 1;
   for LPSR_LPNS_Field use
     (Lpns_0 => 0,
      Lpns_1 => 1);

   --  LP Section is Secured Indicates that the LP section is
   --  provisioned/programmed in the secure or trusted state
   type LPSR_LPS_Field is
     (
      --  LP section was not programmed in secure or trusted state.
      Lps_0,
      --  LP section was programmed in secure or trusted state.
      Lps_1)
     with Size => 1;
   for LPSR_LPS_Field use
     (Lps_0 => 0,
      Lps_1 => 1);

   --  SNVS_LP Status Register
   type LPSR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. LP Time Alarm
      LPTA           : LPSR_LPTA_Field := NRF_SVD.SNVS.Lpta_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Secure Real Time Counter Rollover
      SRTCR          : LPSR_SRTCR_Field := NRF_SVD.SNVS.Srtcr_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Monotonic Counter Rollover
      MCR            : LPSR_MCR_Field := NRF_SVD.SNVS.Mcr_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Power Supply Glitch Detected 0 No power supply glitch.
      --  1 Power supply glitch is detected.
      PGD            : Boolean := True;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. External Tampering 1 Detected
      ET1D           : LPSR_ET1D_Field := NRF_SVD.SNVS.Et1D_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. External Security Violation Detected Indicates that a
      --  security violation is detected on one of the HP security violation
      --  ports
      ESVD           : LPSR_ESVD_Field := NRF_SVD.SNVS.Esvd_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Emergency Off This bit is set when a power off is
      --  requested.
      EO             : LPSR_EO_Field := NRF_SVD.SNVS.Eo_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Set Power Off The SPO bit is set when the power button
      --  is pressed longer than the configured debounce time
      SPO            : LPSR_SPO_Field := NRF_SVD.SNVS.Spo_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Scan Exit Detected
      SED            : LPSR_SED_Field := NRF_SVD.SNVS.Sed_0;
      --  unspecified
      Reserved_21_29 : HAL.UInt9 := 16#0#;
      --  Read-only. LP Section is Non-Secured Indicates that LP section was
      --  provisioned/programmed in the non-secure state
      LPNS           : LPSR_LPNS_Field := NRF_SVD.SNVS.Lpns_0;
      --  Read-only. LP Section is Secured Indicates that the LP section is
      --  provisioned/programmed in the secure or trusted state
      LPS            : LPSR_LPS_Field := NRF_SVD.SNVS.Lps_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSR_Register use record
      LPTA           at 0 range 0 .. 0;
      SRTCR          at 0 range 1 .. 1;
      MCR            at 0 range 2 .. 2;
      PGD            at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      ET1D           at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      ESVD           at 0 range 16 .. 16;
      EO             at 0 range 17 .. 17;
      SPO            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SED            at 0 range 20 .. 20;
      Reserved_21_29 at 0 range 21 .. 29;
      LPNS           at 0 range 30 .. 30;
      LPS            at 0 range 31 .. 31;
   end record;

   subtype LPSRTCMR_SRTC_Field is HAL.UInt15;

   --  SNVS_LP Secure Real Time Counter MSB Register
   type LPSRTCMR_Register is record
      --  LP Secure Real Time Counter The most-significant 15 bits of the SRTC
      SRTC           : LPSRTCMR_SRTC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSRTCMR_Register use record
      SRTC           at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LPSMCMR_MON_COUNTER_Field is HAL.UInt16;
   subtype LPSMCMR_MC_ERA_BITS_Field is HAL.UInt16;

   --  SNVS_LP Secure Monotonic Counter MSB Register
   type LPSMCMR_Register is record
      --  Read-only. Monotonic Counter most-significant 16 Bits The MC is
      --  incremented by one when: A write transaction to the LPSMCMR or
      --  LPSMCLR register is detected
      MON_COUNTER : LPSMCMR_MON_COUNTER_Field;
      --  Read-only. Monotonic Counter Era Bits These bits are inputs to the
      --  module and typically connect to fuses.
      MC_ERA_BITS : LPSMCMR_MC_ERA_BITS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPSMCMR_Register use record
      MON_COUNTER at 0 range 0 .. 15;
      MC_ERA_BITS at 0 range 16 .. 31;
   end record;

   --  SNVS_LP Zeroizable Master Key Register

   --  SNVS_LP Zeroizable Master Key Register
   type LPZMKR_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  SNVS_LP General Purpose Registers 0 .. 3

   --  SNVS_LP General Purpose Registers 0 .. 3
   type LPGPR_alias_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  SNVS_LP General Purpose Registers 0 .. 3

   --  SNVS_LP General Purpose Registers 0 .. 3
   type LPGPR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   subtype HPVIDR1_MINOR_REV_Field is HAL.UInt8;
   subtype HPVIDR1_MAJOR_REV_Field is HAL.UInt8;
   subtype HPVIDR1_IP_ID_Field is HAL.UInt16;

   --  SNVS_HP Version ID Register 1
   type HPVIDR1_Register is record
      --  Read-only. SNVS block minor version number
      MINOR_REV : HPVIDR1_MINOR_REV_Field;
      --  Read-only. SNVS block major version number
      MAJOR_REV : HPVIDR1_MAJOR_REV_Field;
      --  Read-only. SNVS block ID
      IP_ID     : HPVIDR1_IP_ID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPVIDR1_Register use record
      MINOR_REV at 0 range 0 .. 7;
      MAJOR_REV at 0 range 8 .. 15;
      IP_ID     at 0 range 16 .. 31;
   end record;

   subtype HPVIDR2_CONFIG_OPT_Field is HAL.UInt8;
   subtype HPVIDR2_ECO_REV_Field is HAL.UInt8;
   subtype HPVIDR2_INTG_OPT_Field is HAL.UInt8;
   subtype HPVIDR2_IP_ERA_Field is HAL.UInt8;

   --  SNVS_HP Version ID Register 2
   type HPVIDR2_Register is record
      --  Read-only. SNVS Configuration Options
      CONFIG_OPT : HPVIDR2_CONFIG_OPT_Field;
      --  Read-only. SNVS ECO Revision
      ECO_REV    : HPVIDR2_ECO_REV_Field;
      --  Read-only. SNVS Integration Options
      INTG_OPT   : HPVIDR2_INTG_OPT_Field;
      --  Read-only. IP Era 00h - Era 1 or 2 03h - Era 3 04h - Era 4 05h - Era
      --  5
      IP_ERA     : HPVIDR2_IP_ERA_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPVIDR2_Register use record
      CONFIG_OPT at 0 range 0 .. 7;
      ECO_REV    at 0 range 8 .. 15;
      INTG_OPT   at 0 range 16 .. 23;
      IP_ERA     at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SNVS
   type SNVS_Peripheral is record
      --  SNVS_HP Lock Register
      HPLR                : aliased HPLR_Register;
      --  SNVS_HP Command Register
      HPCOMR              : aliased HPCOMR_Register;
      --  SNVS_HP Control Register
      HPCR                : aliased HPCR_Register;
      --  SNVS_HP Security Interrupt Control Register
      HPSICR              : aliased HPSICR_Register;
      --  SNVS_HP Security Violation Control Register
      HPSVCR              : aliased HPSVCR_Register;
      --  SNVS_HP Status Register
      HPSR                : aliased HPSR_Register;
      --  SNVS_HP Security Violation Status Register
      HPSVSR              : aliased HPSVSR_Register;
      --  SNVS_HP High Assurance Counter IV Register
      HPHACIVR            : aliased HAL.UInt32;
      --  SNVS_HP High Assurance Counter Register
      HPHACR              : aliased HAL.UInt32;
      --  SNVS_HP Real Time Counter MSB Register
      HPRTCMR             : aliased HPRTCMR_Register;
      --  SNVS_HP Real Time Counter LSB Register
      HPRTCLR             : aliased HAL.UInt32;
      --  SNVS_HP Time Alarm MSB Register
      HPTAMR              : aliased HPTAMR_Register;
      --  SNVS_HP Time Alarm LSB Register
      HPTALR              : aliased HAL.UInt32;
      --  SNVS_LP Lock Register
      LPLR                : aliased LPLR_Register;
      --  SNVS_LP Control Register
      LPCR                : aliased LPCR_Register;
      --  SNVS_LP Master Key Control Register
      LPMKCR              : aliased LPMKCR_Register;
      --  SNVS_LP Security Violation Control Register
      LPSVCR              : aliased LPSVCR_Register;
      --  SNVS_LP Tamper Detectors Configuration Register
      LPTDCR              : aliased LPTDCR_Register;
      --  SNVS_LP Status Register
      LPSR                : aliased LPSR_Register;
      --  SNVS_LP Secure Real Time Counter MSB Register
      LPSRTCMR            : aliased LPSRTCMR_Register;
      --  SNVS_LP Secure Real Time Counter LSB Register
      LPSRTCLR            : aliased HAL.UInt32;
      --  SNVS_LP Time Alarm Register
      LPTAR               : aliased HAL.UInt32;
      --  SNVS_LP Secure Monotonic Counter MSB Register
      LPSMCMR             : aliased LPSMCMR_Register;
      --  SNVS_LP Secure Monotonic Counter LSB Register
      LPSMCLR             : aliased HAL.UInt32;
      --  SNVS_LP Power Glitch Detector Register
      LPPGDR              : aliased HAL.UInt32;
      --  SNVS_LP General Purpose Register 0 (legacy alias)
      LPGPR0_legacy_alias : aliased HAL.UInt32;
      --  SNVS_LP Zeroizable Master Key Register
      LPZMKR              : aliased LPZMKR_Registers;
      --  SNVS_LP General Purpose Registers 0 .. 3
      LPGPR_alias         : aliased LPGPR_alias_Registers;
      --  SNVS_LP General Purpose Registers 0 .. 3
      LPGPR               : aliased LPGPR_Registers;
      --  SNVS_HP Version ID Register 1
      HPVIDR1             : aliased HPVIDR1_Register;
      --  SNVS_HP Version ID Register 2
      HPVIDR2             : aliased HPVIDR2_Register;
   end record
     with Volatile;

   for SNVS_Peripheral use record
      HPLR                at 16#0# range 0 .. 31;
      HPCOMR              at 16#4# range 0 .. 31;
      HPCR                at 16#8# range 0 .. 31;
      HPSICR              at 16#C# range 0 .. 31;
      HPSVCR              at 16#10# range 0 .. 31;
      HPSR                at 16#14# range 0 .. 31;
      HPSVSR              at 16#18# range 0 .. 31;
      HPHACIVR            at 16#1C# range 0 .. 31;
      HPHACR              at 16#20# range 0 .. 31;
      HPRTCMR             at 16#24# range 0 .. 31;
      HPRTCLR             at 16#28# range 0 .. 31;
      HPTAMR              at 16#2C# range 0 .. 31;
      HPTALR              at 16#30# range 0 .. 31;
      LPLR                at 16#34# range 0 .. 31;
      LPCR                at 16#38# range 0 .. 31;
      LPMKCR              at 16#3C# range 0 .. 31;
      LPSVCR              at 16#40# range 0 .. 31;
      LPTDCR              at 16#48# range 0 .. 31;
      LPSR                at 16#4C# range 0 .. 31;
      LPSRTCMR            at 16#50# range 0 .. 31;
      LPSRTCLR            at 16#54# range 0 .. 31;
      LPTAR               at 16#58# range 0 .. 31;
      LPSMCMR             at 16#5C# range 0 .. 31;
      LPSMCLR             at 16#60# range 0 .. 31;
      LPPGDR              at 16#64# range 0 .. 31;
      LPGPR0_legacy_alias at 16#68# range 0 .. 31;
      LPZMKR              at 16#6C# range 0 .. 255;
      LPGPR_alias         at 16#90# range 0 .. 127;
      LPGPR               at 16#100# range 0 .. 127;
      HPVIDR1             at 16#BF8# range 0 .. 31;
      HPVIDR2             at 16#BFC# range 0 .. 31;
   end record;

   --  SNVS
   SNVS_Periph : aliased SNVS_Peripheral
     with Import, Address => System'To_Address (16#400D4000#);

end NRF_SVD.SNVS;
