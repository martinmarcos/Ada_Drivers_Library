--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CSU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Secure user read access control for the second slave
   type CSL_SUR_S2_Field is
     (
      --  The secure user read access is disabled for the second slave.
      Sur_S2_0,
      --  The secure user read access is enabled for the second slave.
      Sur_S2_1)
     with Size => 1;
   for CSL_SUR_S2_Field use
     (Sur_S2_0 => 0,
      Sur_S2_1 => 1);

   --  Secure supervisor read access control for the second slave
   type CSL_SSR_S2_Field is
     (
      --  The secure supervisor read access is disabled for the second slave.
      Ssr_S2_0,
      --  The secure supervisor read access is enabled for the second slave.
      Ssr_S2_1)
     with Size => 1;
   for CSL_SSR_S2_Field use
     (Ssr_S2_0 => 0,
      Ssr_S2_1 => 1);

   --  Non-secure user read access control for the second slave
   type CSL_NUR_S2_Field is
     (
      --  The non-secure user read access is disabled for the second slave.
      Nur_S2_0,
      --  The non-secure user read access is enabled for the second slave.
      Nur_S2_1)
     with Size => 1;
   for CSL_NUR_S2_Field use
     (Nur_S2_0 => 0,
      Nur_S2_1 => 1);

   --  Non-secure supervisor read access control for the second slave
   type CSL_NSR_S2_Field is
     (
      --  The non-secure supervisor read access is disabled for the second
      --  slave.
      Nsr_S2_0,
      --  The non-secure supervisor read access is enabled for the second
      --  slave.
      Nsr_S2_1)
     with Size => 1;
   for CSL_NSR_S2_Field use
     (Nsr_S2_0 => 0,
      Nsr_S2_1 => 1);

   --  Secure user write access control for the second slave
   type CSL_SUW_S2_Field is
     (
      --  The secure user write access is disabled for the second slave.
      Suw_S2_0,
      --  The secure user write access is enabled for the second slave.
      Suw_S2_1)
     with Size => 1;
   for CSL_SUW_S2_Field use
     (Suw_S2_0 => 0,
      Suw_S2_1 => 1);

   --  Secure supervisor write access control for the second slave
   type CSL_SSW_S2_Field is
     (
      --  The secure supervisor write access is disabled for the second slave.
      Ssw_S2_0,
      --  The secure supervisor write access is enabled for the second slave.
      Ssw_S2_1)
     with Size => 1;
   for CSL_SSW_S2_Field use
     (Ssw_S2_0 => 0,
      Ssw_S2_1 => 1);

   --  Non-secure user write access control for the second slave
   type CSL_NUW_S2_Field is
     (
      --  The non-secure user write access is disabled for the second slave.
      Nuw_S2_0,
      --  The non-secure user write access is enabled for the second slave.
      Nuw_S2_1)
     with Size => 1;
   for CSL_NUW_S2_Field use
     (Nuw_S2_0 => 0,
      Nuw_S2_1 => 1);

   --  Non-secure supervisor write access control for the second slave
   type CSL_NSW_S2_Field is
     (
      --  The non-secure supervisor write access is disabled for the second
      --  slave.
      Nsw_S2_0,
      --  The non-secure supervisor write access is enabled for the second
      --  slave.
      Nsw_S2_1)
     with Size => 1;
   for CSL_NSW_S2_Field use
     (Nsw_S2_0 => 0,
      Nsw_S2_1 => 1);

   --  The lock bit corresponding to the second slave. It is written by the
   --  secure software.
   type CSL_LOCK_S2_Field is
     (
      --  Not locked. Bits 7-0 can be written by the software.
      Lock_S2_0,
      --  Bits 7-0 are locked and cannot be written by the software
      Lock_S2_1)
     with Size => 1;
   for CSL_LOCK_S2_Field use
     (Lock_S2_0 => 0,
      Lock_S2_1 => 1);

   --  Secure user read access control for the first slave
   type CSL_SUR_S1_Field is
     (
      --  The secure user read access is disabled for the first slave.
      Sur_S1_0,
      --  The secure user read access is enabled for the first slave.
      Sur_S1_1)
     with Size => 1;
   for CSL_SUR_S1_Field use
     (Sur_S1_0 => 0,
      Sur_S1_1 => 1);

   --  Secure supervisor read access control for the first slave
   type CSL_SSR_S1_Field is
     (
      --  The secure supervisor read access is disabled for the first slave.
      Ssr_S1_0,
      --  The secure supervisor read access is enabled for the first slave.
      Ssr_S1_1)
     with Size => 1;
   for CSL_SSR_S1_Field use
     (Ssr_S1_0 => 0,
      Ssr_S1_1 => 1);

   --  Non-secure user read access control for the first slave
   type CSL_NUR_S1_Field is
     (
      --  The non-secure user read access is disabled for the first slave.
      Nur_S1_0,
      --  The non-secure user read access is enabled for the first slave.
      Nur_S1_1)
     with Size => 1;
   for CSL_NUR_S1_Field use
     (Nur_S1_0 => 0,
      Nur_S1_1 => 1);

   --  Non-secure supervisor read access control for the first slave
   type CSL_NSR_S1_Field is
     (
      --  The non-secure supervisor read access is disabled for the first
      --  slave.
      Nsr_S1_0,
      --  The non-secure supervisor read access is enabled for the first slave.
      Nsr_S1_1)
     with Size => 1;
   for CSL_NSR_S1_Field use
     (Nsr_S1_0 => 0,
      Nsr_S1_1 => 1);

   --  Secure user write access control for the first slave
   type CSL_SUW_S1_Field is
     (
      --  The secure user write access is disabled for the first slave.
      Suw_S1_0,
      --  The secure user write access is enabled for the first slave.
      Suw_S1_1)
     with Size => 1;
   for CSL_SUW_S1_Field use
     (Suw_S1_0 => 0,
      Suw_S1_1 => 1);

   --  Secure supervisor write access control for the first slave
   type CSL_SSW_S1_Field is
     (
      --  The secure supervisor write access is disabled for the first slave.
      Ssw_S1_0,
      --  The secure supervisor write access is enabled for the first slave.
      Ssw_S1_1)
     with Size => 1;
   for CSL_SSW_S1_Field use
     (Ssw_S1_0 => 0,
      Ssw_S1_1 => 1);

   --  Non-secure user write access control for the first slave
   type CSL_NUW_S1_Field is
     (
      --  The non-secure user write access is disabled for the first slave.
      Nuw_S1_0,
      --  The non-secure user write access is enabled for the first slave.
      Nuw_S1_1)
     with Size => 1;
   for CSL_NUW_S1_Field use
     (Nuw_S1_0 => 0,
      Nuw_S1_1 => 1);

   --  Non-secure supervisor write access control for the first slave
   type CSL_NSW_S1_Field is
     (
      --  The non-secure supervisor write access is disabled for the first
      --  slave.
      Nsw_S1_0,
      --  The non-secure supervisor write access is enabled for the first slave
      Nsw_S1_1)
     with Size => 1;
   for CSL_NSW_S1_Field use
     (Nsw_S1_0 => 0,
      Nsw_S1_1 => 1);

   --  The lock bit corresponding to the first slave. It is written by the
   --  secure software.
   type CSL_LOCK_S1_Field is
     (
      --  Not locked. The bits 16-23 can be written by the software.
      Lock_S1_0,
      --  The bits 16-23 are locked and can't be written by the software.
      Lock_S1_1)
     with Size => 1;
   for CSL_LOCK_S1_Field use
     (Lock_S1_0 => 0,
      Lock_S1_1 => 1);

   --  Config security level register
   type CSU_CSL_Register is record
      --  Secure user read access control for the second slave
      SUR_S2         : CSL_SUR_S2_Field := NRF_SVD.CSU.Sur_S2_1;
      --  Secure supervisor read access control for the second slave
      SSR_S2         : CSL_SSR_S2_Field := NRF_SVD.CSU.Ssr_S2_1;
      --  Non-secure user read access control for the second slave
      NUR_S2         : CSL_NUR_S2_Field := NRF_SVD.CSU.Nur_S2_0;
      --  Non-secure supervisor read access control for the second slave
      NSR_S2         : CSL_NSR_S2_Field := NRF_SVD.CSU.Nsr_S2_0;
      --  Secure user write access control for the second slave
      SUW_S2         : CSL_SUW_S2_Field := NRF_SVD.CSU.Suw_S2_1;
      --  Secure supervisor write access control for the second slave
      SSW_S2         : CSL_SSW_S2_Field := NRF_SVD.CSU.Ssw_S2_1;
      --  Non-secure user write access control for the second slave
      NUW_S2         : CSL_NUW_S2_Field := NRF_SVD.CSU.Nuw_S2_0;
      --  Non-secure supervisor write access control for the second slave
      NSW_S2         : CSL_NSW_S2_Field := NRF_SVD.CSU.Nsw_S2_0;
      --  The lock bit corresponding to the second slave. It is written by the
      --  secure software.
      LOCK_S2        : CSL_LOCK_S2_Field := NRF_SVD.CSU.Lock_S2_0;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Secure user read access control for the first slave
      SUR_S1         : CSL_SUR_S1_Field := NRF_SVD.CSU.Sur_S1_1;
      --  Secure supervisor read access control for the first slave
      SSR_S1         : CSL_SSR_S1_Field := NRF_SVD.CSU.Ssr_S1_1;
      --  Non-secure user read access control for the first slave
      NUR_S1         : CSL_NUR_S1_Field := NRF_SVD.CSU.Nur_S1_0;
      --  Non-secure supervisor read access control for the first slave
      NSR_S1         : CSL_NSR_S1_Field := NRF_SVD.CSU.Nsr_S1_0;
      --  Secure user write access control for the first slave
      SUW_S1         : CSL_SUW_S1_Field := NRF_SVD.CSU.Suw_S1_1;
      --  Secure supervisor write access control for the first slave
      SSW_S1         : CSL_SSW_S1_Field := NRF_SVD.CSU.Ssw_S1_1;
      --  Non-secure user write access control for the first slave
      NUW_S1         : CSL_NUW_S1_Field := NRF_SVD.CSU.Nuw_S1_0;
      --  Non-secure supervisor write access control for the first slave
      NSW_S1         : CSL_NSW_S1_Field := NRF_SVD.CSU.Nsw_S1_0;
      --  The lock bit corresponding to the first slave. It is written by the
      --  secure software.
      LOCK_S1        : CSL_LOCK_S1_Field := NRF_SVD.CSU.Lock_S1_0;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSU_CSL_Register use record
      SUR_S2         at 0 range 0 .. 0;
      SSR_S2         at 0 range 1 .. 1;
      NUR_S2         at 0 range 2 .. 2;
      NSR_S2         at 0 range 3 .. 3;
      SUW_S2         at 0 range 4 .. 4;
      SSW_S2         at 0 range 5 .. 5;
      NUW_S2         at 0 range 6 .. 6;
      NSW_S2         at 0 range 7 .. 7;
      LOCK_S2        at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      SUR_S1         at 0 range 16 .. 16;
      SSR_S1         at 0 range 17 .. 17;
      NUR_S1         at 0 range 18 .. 18;
      NSR_S1         at 0 range 19 .. 19;
      SUW_S1         at 0 range 20 .. 20;
      SSW_S1         at 0 range 21 .. 21;
      NUW_S1         at 0 range 22 .. 22;
      NSW_S1         at 0 range 23 .. 23;
      LOCK_S1        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Config security level register
   type CSU_CSL_Registers is array (0 .. 31) of CSU_CSL_Register
     with Volatile;

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the eDMA
   type HP0_HP_DMA_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Dma_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Dma_1)
     with Size => 1;
   for HP0_HP_DMA_Field use
     (Hp_Dma_0 => 0,
      Hp_Dma_1 => 1);

   --  Lock bit set by the TZ software for the eDMA
   type HP0_L_DMA_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Dma_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Dma_1)
     with Size => 1;
   for HP0_L_DMA_Field use
     (L_Dma_0 => 0,
      L_Dma_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the LCDIF
   type HP0_HP_LCDIF_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Lcdif_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Lcdif_1)
     with Size => 1;
   for HP0_HP_LCDIF_Field use
     (Hp_Lcdif_0 => 0,
      Hp_Lcdif_1 => 1);

   --  Lock bit set by the TZ software for the LCDIF
   type HP0_L_LCDIF_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Lcdif_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Lcdif_1)
     with Size => 1;
   for HP0_L_LCDIF_Field use
     (L_Lcdif_0 => 0,
      L_Lcdif_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the CSI
   type HP0_HP_CSI_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Csi_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Csi_1)
     with Size => 1;
   for HP0_HP_CSI_Field use
     (Hp_Csi_0 => 0,
      Hp_Csi_1 => 1);

   --  Lock bit set by the TZ software for the CSI
   type HP0_L_CSI_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Csi_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Csi_1)
     with Size => 1;
   for HP0_L_CSI_Field use
     (L_Csi_0 => 0,
      L_Csi_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the PXP
   type HP0_HP_PXP_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Pxp_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Pxp_1)
     with Size => 1;
   for HP0_HP_PXP_Field use
     (Hp_Pxp_0 => 0,
      Hp_Pxp_1 => 1);

   --  Lock bit set by the TZ software for the PXP
   type HP0_L_PXP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Pxp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Pxp_1)
     with Size => 1;
   for HP0_L_PXP_Field use
     (L_Pxp_0 => 0,
      L_Pxp_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the DCP
   type HP0_HP_DCP_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Dcp_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Dcp_1)
     with Size => 1;
   for HP0_HP_DCP_Field use
     (Hp_Dcp_0 => 0,
      Hp_Dcp_1 => 1);

   --  Lock bit set by the TZ software for the DCP
   type HP0_L_DCP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Dcp_0,
      --  Lock-the adjacent (next lower) bit cannot be written by the software.
      L_Dcp_1)
     with Size => 1;
   for HP0_L_DCP_Field use
     (L_Dcp_0 => 0,
      L_Dcp_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the ENET
   type HP0_HP_ENET_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Enet_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Enet_1)
     with Size => 1;
   for HP0_HP_ENET_Field use
     (Hp_Enet_0 => 0,
      Hp_Enet_1 => 1);

   --  Lock bit set by the TZ software for the ENET
   type HP0_L_ENET_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Enet_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Enet_1)
     with Size => 1;
   for HP0_L_ENET_Field use
     (L_Enet_0 => 0,
      L_Enet_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the USDHC1
   type HP0_HP_USDHC1_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Usdhc1_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Usdhc1_1)
     with Size => 1;
   for HP0_HP_USDHC1_Field use
     (Hp_Usdhc1_0 => 0,
      Hp_Usdhc1_1 => 1);

   --  Lock bit set by the TZ software for the USDHC1
   type HP0_L_USDHC1_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usdhc1_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usdhc1_1)
     with Size => 1;
   for HP0_L_USDHC1_Field use
     (L_Usdhc1_0 => 0,
      L_Usdhc1_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the USDHC2
   type HP0_HP_USDHC2_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Usdhc2_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Usdhc2_1)
     with Size => 1;
   for HP0_HP_USDHC2_Field use
     (Hp_Usdhc2_0 => 0,
      Hp_Usdhc2_1 => 1);

   --  Lock bit set by the TZ software for the USDHC2
   type HP0_L_USDHC2_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usdhc2_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usdhc2_1)
     with Size => 1;
   for HP0_L_USDHC2_Field use
     (L_Usdhc2_0 => 0,
      L_Usdhc2_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the TPSMP
   type HP0_HP_TPSMP_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Tpsmp_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Tpsmp_1)
     with Size => 1;
   for HP0_HP_TPSMP_Field use
     (Hp_Tpsmp_0 => 0,
      Hp_Tpsmp_1 => 1);

   --  Lock bit set by the TZ software for the TPSMP
   type HP0_L_TPSMP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Tpsmp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Tpsmp_1)
     with Size => 1;
   for HP0_L_TPSMP_Field use
     (L_Tpsmp_0 => 0,
      L_Tpsmp_1 => 1);

   --  Determines whether the register value of the corresponding HP field is
   --  passed as the hprot[1] of the USB
   type HP0_HP_USB_Field is
     (
      --  The hprot1 input signal value is routed to the csu_hprot1 output for
      --  the corresponding master.
      Hp_Usb_0,
      --  The HP register bit is routed to the csu_hprot1 output for the
      --  corresponding master.
      Hp_Usb_1)
     with Size => 1;
   for HP0_HP_USB_Field use
     (Hp_Usb_0 => 0,
      Hp_Usb_1 => 1);

   --  Lock bit set by the TZ software for the USB
   type HP0_L_USB_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usb_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usb_1)
     with Size => 1;
   for HP0_L_USB_Field use
     (L_Usb_0 => 0,
      L_Usb_1 => 1);

   --  HP0 register
   type CSU_HP0_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the eDMA
      HP_DMA         : HP0_HP_DMA_Field := NRF_SVD.CSU.Hp_Dma_0;
      --  Lock bit set by the TZ software for the eDMA
      L_DMA          : HP0_L_DMA_Field := NRF_SVD.CSU.L_Dma_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the LCDIF
      HP_LCDIF       : HP0_HP_LCDIF_Field := NRF_SVD.CSU.Hp_Lcdif_0;
      --  Lock bit set by the TZ software for the LCDIF
      L_LCDIF        : HP0_L_LCDIF_Field := NRF_SVD.CSU.L_Lcdif_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the CSI
      HP_CSI         : HP0_HP_CSI_Field := NRF_SVD.CSU.Hp_Csi_0;
      --  Lock bit set by the TZ software for the CSI
      L_CSI          : HP0_L_CSI_Field := NRF_SVD.CSU.L_Csi_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the PXP
      HP_PXP         : HP0_HP_PXP_Field := NRF_SVD.CSU.Hp_Pxp_0;
      --  Lock bit set by the TZ software for the PXP
      L_PXP          : HP0_L_PXP_Field := NRF_SVD.CSU.L_Pxp_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the DCP
      HP_DCP         : HP0_HP_DCP_Field := NRF_SVD.CSU.Hp_Dcp_0;
      --  Lock bit set by the TZ software for the DCP
      L_DCP          : HP0_L_DCP_Field := NRF_SVD.CSU.L_Dcp_0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the ENET
      HP_ENET        : HP0_HP_ENET_Field := NRF_SVD.CSU.Hp_Enet_0;
      --  Lock bit set by the TZ software for the ENET
      L_ENET         : HP0_L_ENET_Field := NRF_SVD.CSU.L_Enet_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the USDHC1
      HP_USDHC1      : HP0_HP_USDHC1_Field := NRF_SVD.CSU.Hp_Usdhc1_0;
      --  Lock bit set by the TZ software for the USDHC1
      L_USDHC1       : HP0_L_USDHC1_Field := NRF_SVD.CSU.L_Usdhc1_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the USDHC2
      HP_USDHC2      : HP0_HP_USDHC2_Field := NRF_SVD.CSU.Hp_Usdhc2_0;
      --  Lock bit set by the TZ software for the USDHC2
      L_USDHC2       : HP0_L_USDHC2_Field := NRF_SVD.CSU.L_Usdhc2_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the TPSMP
      HP_TPSMP       : HP0_HP_TPSMP_Field := NRF_SVD.CSU.Hp_Tpsmp_0;
      --  Lock bit set by the TZ software for the TPSMP
      L_TPSMP        : HP0_L_TPSMP_Field := NRF_SVD.CSU.L_Tpsmp_0;
      --  Determines whether the register value of the corresponding HP field
      --  is passed as the hprot[1] of the USB
      HP_USB         : HP0_HP_USB_Field := NRF_SVD.CSU.Hp_Usb_0;
      --  Lock bit set by the TZ software for the USB
      L_USB          : HP0_L_USB_Field := NRF_SVD.CSU.L_Usb_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSU_HP0_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HP_DMA         at 0 range 2 .. 2;
      L_DMA          at 0 range 3 .. 3;
      HP_LCDIF       at 0 range 4 .. 4;
      L_LCDIF        at 0 range 5 .. 5;
      HP_CSI         at 0 range 6 .. 6;
      L_CSI          at 0 range 7 .. 7;
      HP_PXP         at 0 range 8 .. 8;
      L_PXP          at 0 range 9 .. 9;
      HP_DCP         at 0 range 10 .. 10;
      L_DCP          at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      HP_ENET        at 0 range 14 .. 14;
      L_ENET         at 0 range 15 .. 15;
      HP_USDHC1      at 0 range 16 .. 16;
      L_USDHC1       at 0 range 17 .. 17;
      HP_USDHC2      at 0 range 18 .. 18;
      L_USDHC2       at 0 range 19 .. 19;
      HP_TPSMP       at 0 range 20 .. 20;
      L_TPSMP        at 0 range 21 .. 21;
      HP_USB         at 0 range 22 .. 22;
      L_USB          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Non-secure access policy indicator bit
   type SA_NSA_DMA_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Dma_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Dma_1)
     with Size => 1;
   for SA_NSA_DMA_Field use
     (Nsa_Dma_0 => 0,
      Nsa_Dma_1 => 1);

   --  Lock bit set by the TZ software for the eDMA
   type SA_L_DMA_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Dma_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Dma_1)
     with Size => 1;
   for SA_L_DMA_Field use
     (L_Dma_0 => 0,
      L_Dma_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_LCDIF_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Lcdif_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Lcdif_1)
     with Size => 1;
   for SA_NSA_LCDIF_Field use
     (Nsa_Lcdif_0 => 0,
      Nsa_Lcdif_1 => 1);

   --  Lock bit set by the TZ software for the LCDIF
   type SA_L_LCDIF_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Lcdif_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Lcdif_1)
     with Size => 1;
   for SA_L_LCDIF_Field use
     (L_Lcdif_0 => 0,
      L_Lcdif_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_CSI_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Csi_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Csi_1)
     with Size => 1;
   for SA_NSA_CSI_Field use
     (Nsa_Csi_0 => 0,
      Nsa_Csi_1 => 1);

   --  Lock bit set by the TZ software for the CSI
   type SA_L_CSI_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Csi_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Csi_1)
     with Size => 1;
   for SA_L_CSI_Field use
     (L_Csi_0 => 0,
      L_Csi_1 => 1);

   --  Non-Secure Access Policy indicator bit
   type SA_NSA_PXP_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Pxp_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Pxp_1)
     with Size => 1;
   for SA_NSA_PXP_Field use
     (Nsa_Pxp_0 => 0,
      Nsa_Pxp_1 => 1);

   --  Lock bit set by the TZ software for the PXP
   type SA_L_PXP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Pxp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Pxp_1)
     with Size => 1;
   for SA_L_PXP_Field use
     (L_Pxp_0 => 0,
      L_Pxp_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_DCP_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Dcp_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Dcp_1)
     with Size => 1;
   for SA_NSA_DCP_Field use
     (Nsa_Dcp_0 => 0,
      Nsa_Dcp_1 => 1);

   --  Lock bit set by the TZ software for the DCP
   type SA_L_DCP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Dcp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Dcp_1)
     with Size => 1;
   for SA_L_DCP_Field use
     (L_Dcp_0 => 0,
      L_Dcp_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_ENET_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Enet_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Enet_1)
     with Size => 1;
   for SA_NSA_ENET_Field use
     (Nsa_Enet_0 => 0,
      Nsa_Enet_1 => 1);

   --  Lock bit set by the TZ software for the ENET1 and ENET2
   type SA_L_ENET_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Enet_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Enet_1)
     with Size => 1;
   for SA_L_ENET_Field use
     (L_Enet_0 => 0,
      L_Enet_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_USDHC1_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Usdhc1_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Usdhc1_1)
     with Size => 1;
   for SA_NSA_USDHC1_Field use
     (Nsa_Usdhc1_0 => 0,
      Nsa_Usdhc1_1 => 1);

   --  Lock bit set by the TZ software for the USDHC1
   type SA_L_USDHC1_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usdhc1_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usdhc1_1)
     with Size => 1;
   for SA_L_USDHC1_Field use
     (L_Usdhc1_0 => 0,
      L_Usdhc1_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_USDHC2_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Usdhc2_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Usdhc2_1)
     with Size => 1;
   for SA_NSA_USDHC2_Field use
     (Nsa_Usdhc2_0 => 0,
      Nsa_Usdhc2_1 => 1);

   --  Lock bit set by the TZ software for the USDHC2
   type SA_L_USDHC2_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usdhc2_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usdhc2_1)
     with Size => 1;
   for SA_L_USDHC2_Field use
     (L_Usdhc2_0 => 0,
      L_Usdhc2_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_TPSMP_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Tpsmp_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Tpsmp_1)
     with Size => 1;
   for SA_NSA_TPSMP_Field use
     (Nsa_Tpsmp_0 => 0,
      Nsa_Tpsmp_1 => 1);

   --  Lock bit set by the TZ software for the TPSMP
   type SA_L_TPSMP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Tpsmp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Tpsmp_1)
     with Size => 1;
   for SA_L_TPSMP_Field use
     (L_Tpsmp_0 => 0,
      L_Tpsmp_1 => 1);

   --  Non-secure access policy indicator bit
   type SA_NSA_USB_Field is
     (
      --  Secure access for the corresponding type-1 master
      Nsa_Usb_0,
      --  Non-secure access for the corresponding type-1 master
      Nsa_Usb_1)
     with Size => 1;
   for SA_NSA_USB_Field use
     (Nsa_Usb_0 => 0,
      Nsa_Usb_1 => 1);

   --  Lock bit set by the TZ software for the USB
   type SA_L_USB_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usb_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usb_1)
     with Size => 1;
   for SA_L_USB_Field use
     (L_Usb_0 => 0,
      L_Usb_1 => 1);

   --  Secure access register
   type CSU_SA_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Non-secure access policy indicator bit
      NSA_DMA        : SA_NSA_DMA_Field := NRF_SVD.CSU.Nsa_Dma_0;
      --  Lock bit set by the TZ software for the eDMA
      L_DMA          : SA_L_DMA_Field := NRF_SVD.CSU.L_Dma_0;
      --  Non-secure access policy indicator bit
      NSA_LCDIF      : SA_NSA_LCDIF_Field := NRF_SVD.CSU.Nsa_Lcdif_0;
      --  Lock bit set by the TZ software for the LCDIF
      L_LCDIF        : SA_L_LCDIF_Field := NRF_SVD.CSU.L_Lcdif_0;
      --  Non-secure access policy indicator bit
      NSA_CSI        : SA_NSA_CSI_Field := NRF_SVD.CSU.Nsa_Csi_0;
      --  Lock bit set by the TZ software for the CSI
      L_CSI          : SA_L_CSI_Field := NRF_SVD.CSU.L_Csi_0;
      --  Non-Secure Access Policy indicator bit
      NSA_PXP        : SA_NSA_PXP_Field := NRF_SVD.CSU.Nsa_Pxp_0;
      --  Lock bit set by the TZ software for the PXP
      L_PXP          : SA_L_PXP_Field := NRF_SVD.CSU.L_Pxp_0;
      --  Non-secure access policy indicator bit
      NSA_DCP        : SA_NSA_DCP_Field := NRF_SVD.CSU.Nsa_Dcp_0;
      --  Lock bit set by the TZ software for the DCP
      L_DCP          : SA_L_DCP_Field := NRF_SVD.CSU.L_Dcp_0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Non-secure access policy indicator bit
      NSA_ENET       : SA_NSA_ENET_Field := NRF_SVD.CSU.Nsa_Enet_0;
      --  Lock bit set by the TZ software for the ENET1 and ENET2
      L_ENET         : SA_L_ENET_Field := NRF_SVD.CSU.L_Enet_0;
      --  Non-secure access policy indicator bit
      NSA_USDHC1     : SA_NSA_USDHC1_Field := NRF_SVD.CSU.Nsa_Usdhc1_0;
      --  Lock bit set by the TZ software for the USDHC1
      L_USDHC1       : SA_L_USDHC1_Field := NRF_SVD.CSU.L_Usdhc1_0;
      --  Non-secure access policy indicator bit
      NSA_USDHC2     : SA_NSA_USDHC2_Field := NRF_SVD.CSU.Nsa_Usdhc2_0;
      --  Lock bit set by the TZ software for the USDHC2
      L_USDHC2       : SA_L_USDHC2_Field := NRF_SVD.CSU.L_Usdhc2_0;
      --  Non-secure access policy indicator bit
      NSA_TPSMP      : SA_NSA_TPSMP_Field := NRF_SVD.CSU.Nsa_Tpsmp_0;
      --  Lock bit set by the TZ software for the TPSMP
      L_TPSMP        : SA_L_TPSMP_Field := NRF_SVD.CSU.L_Tpsmp_0;
      --  Non-secure access policy indicator bit
      NSA_USB        : SA_NSA_USB_Field := NRF_SVD.CSU.Nsa_Usb_0;
      --  Lock bit set by the TZ software for the USB
      L_USB          : SA_L_USB_Field := NRF_SVD.CSU.L_Usb_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSU_SA_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      NSA_DMA        at 0 range 2 .. 2;
      L_DMA          at 0 range 3 .. 3;
      NSA_LCDIF      at 0 range 4 .. 4;
      L_LCDIF        at 0 range 5 .. 5;
      NSA_CSI        at 0 range 6 .. 6;
      L_CSI          at 0 range 7 .. 7;
      NSA_PXP        at 0 range 8 .. 8;
      L_PXP          at 0 range 9 .. 9;
      NSA_DCP        at 0 range 10 .. 10;
      L_DCP          at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      NSA_ENET       at 0 range 14 .. 14;
      L_ENET         at 0 range 15 .. 15;
      NSA_USDHC1     at 0 range 16 .. 16;
      L_USDHC1       at 0 range 17 .. 17;
      NSA_USDHC2     at 0 range 18 .. 18;
      L_USDHC2       at 0 range 19 .. 19;
      NSA_TPSMP      at 0 range 20 .. 20;
      L_TPSMP        at 0 range 21 .. 21;
      NSA_USB        at 0 range 22 .. 22;
      L_USB          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Indicates the privilege/user mode for the eDMA
   type HPCONTROL0_HPC_DMA_Field is
     (
      --  User mode for the corresponding master
      Hpc_Dma_0,
      --  Supervisor mode for the corresponding master
      Hpc_Dma_1)
     with Size => 1;
   for HPCONTROL0_HPC_DMA_Field use
     (Hpc_Dma_0 => 0,
      Hpc_Dma_1 => 1);

   --  Lock bit set by the TZ software for the eDMA
   type HPCONTROL0_L_DMA_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Dma_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Dma_1)
     with Size => 1;
   for HPCONTROL0_L_DMA_Field use
     (L_Dma_0 => 0,
      L_Dma_1 => 1);

   --  Indicates the privilege/user mode for the LCDIF
   type HPCONTROL0_HPC_LCDIF_Field is
     (
      --  User mode for the corresponding master
      Hpc_Lcdif_0,
      --  Supervisor mode for the corresponding master
      Hpc_Lcdif_1)
     with Size => 1;
   for HPCONTROL0_HPC_LCDIF_Field use
     (Hpc_Lcdif_0 => 0,
      Hpc_Lcdif_1 => 1);

   --  Lock bit set by the TZ software for the LCDIF
   type HPCONTROL0_L_LCDIF_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Lcdif_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Lcdif_1)
     with Size => 1;
   for HPCONTROL0_L_LCDIF_Field use
     (L_Lcdif_0 => 0,
      L_Lcdif_1 => 1);

   --  Indicates the privilege/user mode for the CSI
   type HPCONTROL0_HPC_CSI_Field is
     (
      --  User mode for the corresponding master
      Hpc_Csi_0,
      --  Supervisor mode for the corresponding master
      Hpc_Csi_1)
     with Size => 1;
   for HPCONTROL0_HPC_CSI_Field use
     (Hpc_Csi_0 => 0,
      Hpc_Csi_1 => 1);

   --  Lock bit set by the TZ software for the CSI
   type HPCONTROL0_L_CSI_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Csi_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Csi_1)
     with Size => 1;
   for HPCONTROL0_L_CSI_Field use
     (L_Csi_0 => 0,
      L_Csi_1 => 1);

   --  Indicates the privilege/user mode for the PXP
   type HPCONTROL0_HPC_PXP_Field is
     (
      --  User mode for the corresponding master
      Hpc_Pxp_0,
      --  Supervisor mode for the corresponding master
      Hpc_Pxp_1)
     with Size => 1;
   for HPCONTROL0_HPC_PXP_Field use
     (Hpc_Pxp_0 => 0,
      Hpc_Pxp_1 => 1);

   --  Lock bit set by the TZ software for the PXP
   type HPCONTROL0_L_PXP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Pxp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Pxp_1)
     with Size => 1;
   for HPCONTROL0_L_PXP_Field use
     (L_Pxp_0 => 0,
      L_Pxp_1 => 1);

   --  Indicates the privilege/user mode for the DCP
   type HPCONTROL0_HPC_DCP_Field is
     (
      --  User mode for the corresponding master
      Hpc_Dcp_0,
      --  Supervisor mode for the corresponding master
      Hpc_Dcp_1)
     with Size => 1;
   for HPCONTROL0_HPC_DCP_Field use
     (Hpc_Dcp_0 => 0,
      Hpc_Dcp_1 => 1);

   --  Lock bit set by the TZ software for the DCP
   type HPCONTROL0_L_DCP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Dcp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Dcp_1)
     with Size => 1;
   for HPCONTROL0_L_DCP_Field use
     (L_Dcp_0 => 0,
      L_Dcp_1 => 1);

   --  Indicates the privilege/user mode for the ENET
   type HPCONTROL0_HPC_ENET_Field is
     (
      --  User mode for the corresponding master
      Hpc_Enet_0,
      --  Supervisor mode for the corresponding master
      Hpc_Enet_1)
     with Size => 1;
   for HPCONTROL0_HPC_ENET_Field use
     (Hpc_Enet_0 => 0,
      Hpc_Enet_1 => 1);

   --  Lock bit set by the TZ software for the ENET
   type HPCONTROL0_L_ENET_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Enet_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Enet_1)
     with Size => 1;
   for HPCONTROL0_L_ENET_Field use
     (L_Enet_0 => 0,
      L_Enet_1 => 1);

   --  Indicates the privilege/user mode for the USDHC1
   type HPCONTROL0_HPC_USDHC1_Field is
     (
      --  User mode for the corresponding master
      Hpc_Usdhc1_0,
      --  Supervisor mode for the corresponding master
      Hpc_Usdhc1_1)
     with Size => 1;
   for HPCONTROL0_HPC_USDHC1_Field use
     (Hpc_Usdhc1_0 => 0,
      Hpc_Usdhc1_1 => 1);

   --  Lock bit set by the TZ software for the USDHC1
   type HPCONTROL0_L_USDHC1_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usdhc1_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usdhc1_1)
     with Size => 1;
   for HPCONTROL0_L_USDHC1_Field use
     (L_Usdhc1_0 => 0,
      L_Usdhc1_1 => 1);

   --  Indicates the privilege/user mode for the USDHC2
   type HPCONTROL0_HPC_USDHC2_Field is
     (
      --  User mode for the corresponding master
      Hpc_Usdhc2_0,
      --  Supervisor mode for the corresponding master
      Hpc_Usdhc2_1)
     with Size => 1;
   for HPCONTROL0_HPC_USDHC2_Field use
     (Hpc_Usdhc2_0 => 0,
      Hpc_Usdhc2_1 => 1);

   --  Lock bit set by the TZ software for the USDHC2.
   type HPCONTROL0_L_USDHC2_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usdhc2_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usdhc2_1)
     with Size => 1;
   for HPCONTROL0_L_USDHC2_Field use
     (L_Usdhc2_0 => 0,
      L_Usdhc2_1 => 1);

   --  Indicates the privilege/user mode for the TPSMP
   type HPCONTROL0_HPC_TPSMP_Field is
     (
      --  User mode for the corresponding master
      Hpc_Tpsmp_0,
      --  Supervisor mode for the corresponding master
      Hpc_Tpsmp_1)
     with Size => 1;
   for HPCONTROL0_HPC_TPSMP_Field use
     (Hpc_Tpsmp_0 => 0,
      Hpc_Tpsmp_1 => 1);

   --  Lock bit set by the TZ software for the TPSMP.
   type HPCONTROL0_L_TPSMP_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Tpsmp_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Tpsmp_1)
     with Size => 1;
   for HPCONTROL0_L_TPSMP_Field use
     (L_Tpsmp_0 => 0,
      L_Tpsmp_1 => 1);

   --  Indicates the privilege/user mode for the USB
   type HPCONTROL0_HPC_USB_Field is
     (
      --  User mode for the corresponding master
      Hpc_Usb_0,
      --  Supervisor mode for the corresponding master
      Hpc_Usb_1)
     with Size => 1;
   for HPCONTROL0_HPC_USB_Field use
     (Hpc_Usb_0 => 0,
      Hpc_Usb_1 => 1);

   --  Lock bit set by the TZ software for the USB.
   type HPCONTROL0_L_USB_Field is
     (
      --  No lock-the adjacent (next lower) bit can be written by the software.
      L_Usb_0,
      --  Lock-the adjacent (next lower) bit can't be written by the software.
      L_Usb_1)
     with Size => 1;
   for HPCONTROL0_L_USB_Field use
     (L_Usb_0 => 0,
      L_Usb_1 => 1);

   --  HPCONTROL0 register
   type CSU_HPCONTROL0_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Indicates the privilege/user mode for the eDMA
      HPC_DMA        : HPCONTROL0_HPC_DMA_Field := NRF_SVD.CSU.Hpc_Dma_0;
      --  Lock bit set by the TZ software for the eDMA
      L_DMA          : HPCONTROL0_L_DMA_Field := NRF_SVD.CSU.L_Dma_0;
      --  Indicates the privilege/user mode for the LCDIF
      HPC_LCDIF      : HPCONTROL0_HPC_LCDIF_Field := NRF_SVD.CSU.Hpc_Lcdif_0;
      --  Lock bit set by the TZ software for the LCDIF
      L_LCDIF        : HPCONTROL0_L_LCDIF_Field := NRF_SVD.CSU.L_Lcdif_0;
      --  Indicates the privilege/user mode for the CSI
      HPC_CSI        : HPCONTROL0_HPC_CSI_Field := NRF_SVD.CSU.Hpc_Csi_0;
      --  Lock bit set by the TZ software for the CSI
      L_CSI          : HPCONTROL0_L_CSI_Field := NRF_SVD.CSU.L_Csi_0;
      --  Indicates the privilege/user mode for the PXP
      HPC_PXP        : HPCONTROL0_HPC_PXP_Field := NRF_SVD.CSU.Hpc_Pxp_0;
      --  Lock bit set by the TZ software for the PXP
      L_PXP          : HPCONTROL0_L_PXP_Field := NRF_SVD.CSU.L_Pxp_0;
      --  Indicates the privilege/user mode for the DCP
      HPC_DCP        : HPCONTROL0_HPC_DCP_Field := NRF_SVD.CSU.Hpc_Dcp_0;
      --  Lock bit set by the TZ software for the DCP
      L_DCP          : HPCONTROL0_L_DCP_Field := NRF_SVD.CSU.L_Dcp_0;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Indicates the privilege/user mode for the ENET
      HPC_ENET       : HPCONTROL0_HPC_ENET_Field := NRF_SVD.CSU.Hpc_Enet_0;
      --  Lock bit set by the TZ software for the ENET
      L_ENET         : HPCONTROL0_L_ENET_Field := NRF_SVD.CSU.L_Enet_0;
      --  Indicates the privilege/user mode for the USDHC1
      HPC_USDHC1     : HPCONTROL0_HPC_USDHC1_Field :=
                        NRF_SVD.CSU.Hpc_Usdhc1_0;
      --  Lock bit set by the TZ software for the USDHC1
      L_USDHC1       : HPCONTROL0_L_USDHC1_Field := NRF_SVD.CSU.L_Usdhc1_0;
      --  Indicates the privilege/user mode for the USDHC2
      HPC_USDHC2     : HPCONTROL0_HPC_USDHC2_Field :=
                        NRF_SVD.CSU.Hpc_Usdhc2_0;
      --  Lock bit set by the TZ software for the USDHC2.
      L_USDHC2       : HPCONTROL0_L_USDHC2_Field := NRF_SVD.CSU.L_Usdhc2_0;
      --  Indicates the privilege/user mode for the TPSMP
      HPC_TPSMP      : HPCONTROL0_HPC_TPSMP_Field := NRF_SVD.CSU.Hpc_Tpsmp_0;
      --  Lock bit set by the TZ software for the TPSMP.
      L_TPSMP        : HPCONTROL0_L_TPSMP_Field := NRF_SVD.CSU.L_Tpsmp_0;
      --  Indicates the privilege/user mode for the USB
      HPC_USB        : HPCONTROL0_HPC_USB_Field := NRF_SVD.CSU.Hpc_Usb_0;
      --  Lock bit set by the TZ software for the USB.
      L_USB          : HPCONTROL0_L_USB_Field := NRF_SVD.CSU.L_Usb_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSU_HPCONTROL0_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      HPC_DMA        at 0 range 2 .. 2;
      L_DMA          at 0 range 3 .. 3;
      HPC_LCDIF      at 0 range 4 .. 4;
      L_LCDIF        at 0 range 5 .. 5;
      HPC_CSI        at 0 range 6 .. 6;
      L_CSI          at 0 range 7 .. 7;
      HPC_PXP        at 0 range 8 .. 8;
      L_PXP          at 0 range 9 .. 9;
      HPC_DCP        at 0 range 10 .. 10;
      L_DCP          at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      HPC_ENET       at 0 range 14 .. 14;
      L_ENET         at 0 range 15 .. 15;
      HPC_USDHC1     at 0 range 16 .. 16;
      L_USDHC1       at 0 range 17 .. 17;
      HPC_USDHC2     at 0 range 18 .. 18;
      L_USDHC2       at 0 range 19 .. 19;
      HPC_TPSMP      at 0 range 20 .. 20;
      L_TPSMP        at 0 range 21 .. 21;
      HPC_USB        at 0 range 22 .. 22;
      L_USB          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CSU registers
   type CSU_Peripheral is record
      --  Config security level register
      CSL        : aliased CSU_CSL_Registers;
      --  HP0 register
      HP0        : aliased CSU_HP0_Register;
      --  Secure access register
      SA         : aliased CSU_SA_Register;
      --  HPCONTROL0 register
      HPCONTROL0 : aliased CSU_HPCONTROL0_Register;
   end record
     with Volatile;

   for CSU_Peripheral use record
      CSL        at 16#0# range 0 .. 1023;
      HP0        at 16#200# range 0 .. 31;
      SA         at 16#218# range 0 .. 31;
      HPCONTROL0 at 16#358# range 0 .. 31;
   end record;

   --  CSU registers
   CSU_Periph : aliased CSU_Peripheral
     with Import, Address => System'To_Address (16#400DC000#);

end NRF_SVD.CSU;
