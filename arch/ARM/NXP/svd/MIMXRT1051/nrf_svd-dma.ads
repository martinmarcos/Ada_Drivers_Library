--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable Debug
   type CR_EDBG_Field is
     (
      --  no description available
      Edbg_0,
      --  no description available
      Edbg_1)
     with Size => 1;
   for CR_EDBG_Field use
     (Edbg_0 => 0,
      Edbg_1 => 1);

   --  Enable Round Robin Channel Arbitration
   type CR_ERCA_Field is
     (
      --  no description available
      Erca_0,
      --  no description available
      Erca_1)
     with Size => 1;
   for CR_ERCA_Field use
     (Erca_0 => 0,
      Erca_1 => 1);

   --  Enable Round Robin Group Arbitration
   type CR_ERGA_Field is
     (
      --  Fixed priority arbitration is used for selection among the groups.
      Erga_0,
      --  Round robin arbitration is used for selection among the groups.
      Erga_1)
     with Size => 1;
   for CR_ERGA_Field use
     (Erga_0 => 0,
      Erga_1 => 1);

   --  Halt On Error
   type CR_HOE_Field is
     (
      --  Normal operation
      Hoe_0,
      --  Any error causes the HALT bit to set. Subsequently, all service
      --  requests are ignored until the HALT bit is cleared.
      Hoe_1)
     with Size => 1;
   for CR_HOE_Field use
     (Hoe_0 => 0,
      Hoe_1 => 1);

   --  Halt DMA Operations
   type CR_HALT_Field is
     (
      --  Normal operation
      Halt_0,
      --  Stall the start of any new channels. Executing channels are allowed
      --  to complete. Channel execution resumes when this bit is cleared.
      Halt_1)
     with Size => 1;
   for CR_HALT_Field use
     (Halt_0 => 0,
      Halt_1 => 1);

   --  Continuous Link Mode
   type CR_CLM_Field is
     (
      --  A minor loop channel link made to itself goes through channel
      --  arbitration before being activated again.
      Clm_0,
      --  A minor loop channel link made to itself does not go through channel
      --  arbitration before being activated again. Upon minor loop completion,
      --  the channel activates again if that channel has a minor loop channel
      --  link enabled and the link channel is itself. This effectively applies
      --  the minor loop offsets and restarts the next minor loop.
      Clm_1)
     with Size => 1;
   for CR_CLM_Field use
     (Clm_0 => 0,
      Clm_1 => 1);

   --  Enable Minor Loop Mapping
   type CR_EMLM_Field is
     (
      --  Disabled. TCDn.word2 is defined as a 32-bit NBYTES field.
      Emlm_0,
      --  Enabled. TCDn.word2 is redefined to include individual enable fields,
      --  an offset field, and the NBYTES field. The individual enable fields
      --  allow the minor loop offset to be applied to the source address, the
      --  destination address, or both. The NBYTES field is reduced when either
      --  offset is enabled.
      Emlm_1)
     with Size => 1;
   for CR_EMLM_Field use
     (Emlm_0 => 0,
      Emlm_1 => 1);

   --  Error Cancel Transfer
   type CR_ECX_Field is
     (
      --  Normal operation
      Ecx_0,
      --  Cancel the remaining data transfer in the same fashion as the CX bit.
      --  Stop the executing channel and force the minor loop to finish. The
      --  cancel takes effect after the last write of the current read/write
      --  sequence. The ECX bit clears itself after the cancel is honored. In
      --  addition to cancelling the transfer, ECX treats the cancel as an
      --  error condition, thus updating the Error Status register (DMAx_ES)
      --  and generating an optional error interrupt.
      Ecx_1)
     with Size => 1;
   for CR_ECX_Field use
     (Ecx_0 => 0,
      Ecx_1 => 1);

   --  Cancel Transfer
   type CR_CX_Field is
     (
      --  Normal operation
      Cx_0,
      --  Cancel the remaining data transfer. Stop the executing channel and
      --  force the minor loop to finish. The cancel takes effect after the
      --  last write of the current read/write sequence. The CX bit clears
      --  itself after the cancel has been honored. This cancel retires the
      --  channel normally as if the minor loop was completed.
      Cx_1)
     with Size => 1;
   for CR_CX_Field use
     (Cx_0 => 0,
      Cx_1 => 1);

   --  DMA Active Status
   type CR_ACTIVE_Field is
     (
      --  eDMA is idle.
      Active_0,
      --  eDMA is executing a channel.
      Active_1)
     with Size => 1;
   for CR_ACTIVE_Field use
     (Active_0 => 0,
      Active_1 => 1);

   --  Control Register
   type CR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Enable Debug
      EDBG           : CR_EDBG_Field := NRF_SVD.DMA.Edbg_0;
      --  Enable Round Robin Channel Arbitration
      ERCA           : CR_ERCA_Field := NRF_SVD.DMA.Erca_0;
      --  Enable Round Robin Group Arbitration
      ERGA           : CR_ERGA_Field := NRF_SVD.DMA.Erga_0;
      --  Halt On Error
      HOE            : CR_HOE_Field := NRF_SVD.DMA.Hoe_0;
      --  Halt DMA Operations
      HALT           : CR_HALT_Field := NRF_SVD.DMA.Halt_0;
      --  Continuous Link Mode
      CLM            : CR_CLM_Field := NRF_SVD.DMA.Clm_0;
      --  Enable Minor Loop Mapping
      EMLM           : CR_EMLM_Field := NRF_SVD.DMA.Emlm_0;
      --  Channel Group 0 Priority
      GRP0PRI        : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Channel Group 1 Priority
      GRP1PRI        : Boolean := True;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Error Cancel Transfer
      ECX            : CR_ECX_Field := NRF_SVD.DMA.Ecx_0;
      --  Cancel Transfer
      CX             : CR_CX_Field := NRF_SVD.DMA.Cx_0;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Read-only. DMA Active Status
      ACTIVE         : CR_ACTIVE_Field := NRF_SVD.DMA.Active_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EDBG           at 0 range 1 .. 1;
      ERCA           at 0 range 2 .. 2;
      ERGA           at 0 range 3 .. 3;
      HOE            at 0 range 4 .. 4;
      HALT           at 0 range 5 .. 5;
      CLM            at 0 range 6 .. 6;
      EMLM           at 0 range 7 .. 7;
      GRP0PRI        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      GRP1PRI        at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      ECX            at 0 range 16 .. 16;
      CX             at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      ACTIVE         at 0 range 31 .. 31;
   end record;

   --  Destination Bus Error
   type ES_DBE_Field is
     (
      --  No destination bus error
      Dbe_0,
      --  The last recorded error was a bus error on a destination write
      Dbe_1)
     with Size => 1;
   for ES_DBE_Field use
     (Dbe_0 => 0,
      Dbe_1 => 1);

   --  Source Bus Error
   type ES_SBE_Field is
     (
      --  No source bus error
      Sbe_0,
      --  The last recorded error was a bus error on a source read
      Sbe_1)
     with Size => 1;
   for ES_SBE_Field use
     (Sbe_0 => 0,
      Sbe_1 => 1);

   --  Scatter/Gather Configuration Error
   type ES_SGE_Field is
     (
      --  No scatter/gather configuration error
      Sge_0,
      --  The last recorded error was a configuration error detected in the
      --  TCDn_DLASTSGA field. This field is checked at the beginning of a
      --  scatter/gather operation after major loop completion if TCDn_CSR[ESG]
      --  is enabled. TCDn_DLASTSGA is not on a 32 byte boundary.
      Sge_1)
     with Size => 1;
   for ES_SGE_Field use
     (Sge_0 => 0,
      Sge_1 => 1);

   --  NBYTES/CITER Configuration Error
   type ES_NCE_Field is
     (
      --  No NBYTES/CITER configuration error
      Nce_0,
      --  no description available
      Nce_1)
     with Size => 1;
   for ES_NCE_Field use
     (Nce_0 => 0,
      Nce_1 => 1);

   --  Destination Offset Error
   type ES_DOE_Field is
     (
      --  No destination offset configuration error
      Doe_0,
      --  The last recorded error was a configuration error detected in the
      --  TCDn_DOFF field. TCDn_DOFF is inconsistent with TCDn_ATTR[DSIZE].
      Doe_1)
     with Size => 1;
   for ES_DOE_Field use
     (Doe_0 => 0,
      Doe_1 => 1);

   --  Destination Address Error
   type ES_DAE_Field is
     (
      --  No destination address configuration error
      Dae_0,
      --  The last recorded error was a configuration error detected in the
      --  TCDn_DADDR field. TCDn_DADDR is inconsistent with TCDn_ATTR[DSIZE].
      Dae_1)
     with Size => 1;
   for ES_DAE_Field use
     (Dae_0 => 0,
      Dae_1 => 1);

   --  Source Offset Error
   type ES_SOE_Field is
     (
      --  No source offset configuration error
      Soe_0,
      --  The last recorded error was a configuration error detected in the
      --  TCDn_SOFF field. TCDn_SOFF is inconsistent with TCDn_ATTR[SSIZE].
      Soe_1)
     with Size => 1;
   for ES_SOE_Field use
     (Soe_0 => 0,
      Soe_1 => 1);

   --  Source Address Error
   type ES_SAE_Field is
     (
      --  No source address configuration error.
      Sae_0,
      --  The last recorded error was a configuration error detected in the
      --  TCDn_SADDR field. TCDn_SADDR is inconsistent with TCDn_ATTR[SSIZE].
      Sae_1)
     with Size => 1;
   for ES_SAE_Field use
     (Sae_0 => 0,
      Sae_1 => 1);

   subtype ES_ERRCHN_Field is HAL.UInt5;

   --  Channel Priority Error
   type ES_CPE_Field is
     (
      --  No channel priority error
      Cpe_0,
      --  no description available
      Cpe_1)
     with Size => 1;
   for ES_CPE_Field use
     (Cpe_0 => 0,
      Cpe_1 => 1);

   --  Group Priority Error
   type ES_GPE_Field is
     (
      --  No group priority error
      Gpe_0,
      --  The last recorded error was a configuration error among the group
      --  priorities. All group priorities are not unique.
      Gpe_1)
     with Size => 1;
   for ES_GPE_Field use
     (Gpe_0 => 0,
      Gpe_1 => 1);

   --  Transfer Canceled
   type ES_ECX_Field is
     (
      --  No canceled transfers
      Ecx_0,
      --  The last recorded entry was a canceled transfer by the error cancel
      --  transfer input
      Ecx_1)
     with Size => 1;
   for ES_ECX_Field use
     (Ecx_0 => 0,
      Ecx_1 => 1);

   --  VLD
   type ES_VLD_Field is
     (
      --  No ERR bits are set.
      Vld_0,
      --  At least one ERR bit is set indicating a valid error exists that has
      --  not been cleared.
      Vld_1)
     with Size => 1;
   for ES_VLD_Field use
     (Vld_0 => 0,
      Vld_1 => 1);

   --  Error Status Register
   type ES_Register is record
      --  Read-only. Destination Bus Error
      DBE            : ES_DBE_Field;
      --  Read-only. Source Bus Error
      SBE            : ES_SBE_Field;
      --  Read-only. Scatter/Gather Configuration Error
      SGE            : ES_SGE_Field;
      --  Read-only. NBYTES/CITER Configuration Error
      NCE            : ES_NCE_Field;
      --  Read-only. Destination Offset Error
      DOE            : ES_DOE_Field;
      --  Read-only. Destination Address Error
      DAE            : ES_DAE_Field;
      --  Read-only. Source Offset Error
      SOE            : ES_SOE_Field;
      --  Read-only. Source Address Error
      SAE            : ES_SAE_Field;
      --  Read-only. Error Channel Number or Canceled Channel Number
      ERRCHN         : ES_ERRCHN_Field;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. Channel Priority Error
      CPE            : ES_CPE_Field;
      --  Read-only. Group Priority Error
      GPE            : ES_GPE_Field;
      --  Read-only. Transfer Canceled
      ECX            : ES_ECX_Field;
      --  unspecified
      Reserved_17_30 : HAL.UInt14;
      --  Read-only. VLD
      VLD            : ES_VLD_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ES_Register use record
      DBE            at 0 range 0 .. 0;
      SBE            at 0 range 1 .. 1;
      SGE            at 0 range 2 .. 2;
      NCE            at 0 range 3 .. 3;
      DOE            at 0 range 4 .. 4;
      DAE            at 0 range 5 .. 5;
      SOE            at 0 range 6 .. 6;
      SAE            at 0 range 7 .. 7;
      ERRCHN         at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CPE            at 0 range 14 .. 14;
      GPE            at 0 range 15 .. 15;
      ECX            at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      VLD            at 0 range 31 .. 31;
   end record;

   --  Enable DMA Request 0
   type ERQ_ERQ0_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq0_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq0_1)
     with Size => 1;
   for ERQ_ERQ0_Field use
     (Erq0_0 => 0,
      Erq0_1 => 1);

   --  Enable DMA Request 1
   type ERQ_ERQ1_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq1_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq1_1)
     with Size => 1;
   for ERQ_ERQ1_Field use
     (Erq1_0 => 0,
      Erq1_1 => 1);

   --  Enable DMA Request 2
   type ERQ_ERQ2_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq2_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq2_1)
     with Size => 1;
   for ERQ_ERQ2_Field use
     (Erq2_0 => 0,
      Erq2_1 => 1);

   --  Enable DMA Request 3
   type ERQ_ERQ3_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq3_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq3_1)
     with Size => 1;
   for ERQ_ERQ3_Field use
     (Erq3_0 => 0,
      Erq3_1 => 1);

   --  Enable DMA Request 4
   type ERQ_ERQ4_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq4_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq4_1)
     with Size => 1;
   for ERQ_ERQ4_Field use
     (Erq4_0 => 0,
      Erq4_1 => 1);

   --  Enable DMA Request 5
   type ERQ_ERQ5_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq5_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq5_1)
     with Size => 1;
   for ERQ_ERQ5_Field use
     (Erq5_0 => 0,
      Erq5_1 => 1);

   --  Enable DMA Request 6
   type ERQ_ERQ6_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq6_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq6_1)
     with Size => 1;
   for ERQ_ERQ6_Field use
     (Erq6_0 => 0,
      Erq6_1 => 1);

   --  Enable DMA Request 7
   type ERQ_ERQ7_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq7_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq7_1)
     with Size => 1;
   for ERQ_ERQ7_Field use
     (Erq7_0 => 0,
      Erq7_1 => 1);

   --  Enable DMA Request 8
   type ERQ_ERQ8_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq8_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq8_1)
     with Size => 1;
   for ERQ_ERQ8_Field use
     (Erq8_0 => 0,
      Erq8_1 => 1);

   --  Enable DMA Request 9
   type ERQ_ERQ9_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq9_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq9_1)
     with Size => 1;
   for ERQ_ERQ9_Field use
     (Erq9_0 => 0,
      Erq9_1 => 1);

   --  Enable DMA Request 10
   type ERQ_ERQ10_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq10_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq10_1)
     with Size => 1;
   for ERQ_ERQ10_Field use
     (Erq10_0 => 0,
      Erq10_1 => 1);

   --  Enable DMA Request 11
   type ERQ_ERQ11_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq11_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq11_1)
     with Size => 1;
   for ERQ_ERQ11_Field use
     (Erq11_0 => 0,
      Erq11_1 => 1);

   --  Enable DMA Request 12
   type ERQ_ERQ12_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq12_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq12_1)
     with Size => 1;
   for ERQ_ERQ12_Field use
     (Erq12_0 => 0,
      Erq12_1 => 1);

   --  Enable DMA Request 13
   type ERQ_ERQ13_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq13_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq13_1)
     with Size => 1;
   for ERQ_ERQ13_Field use
     (Erq13_0 => 0,
      Erq13_1 => 1);

   --  Enable DMA Request 14
   type ERQ_ERQ14_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq14_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq14_1)
     with Size => 1;
   for ERQ_ERQ14_Field use
     (Erq14_0 => 0,
      Erq14_1 => 1);

   --  Enable DMA Request 15
   type ERQ_ERQ15_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq15_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq15_1)
     with Size => 1;
   for ERQ_ERQ15_Field use
     (Erq15_0 => 0,
      Erq15_1 => 1);

   --  Enable DMA Request 16
   type ERQ_ERQ16_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq16_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq16_1)
     with Size => 1;
   for ERQ_ERQ16_Field use
     (Erq16_0 => 0,
      Erq16_1 => 1);

   --  Enable DMA Request 17
   type ERQ_ERQ17_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq17_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq17_1)
     with Size => 1;
   for ERQ_ERQ17_Field use
     (Erq17_0 => 0,
      Erq17_1 => 1);

   --  Enable DMA Request 18
   type ERQ_ERQ18_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq18_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq18_1)
     with Size => 1;
   for ERQ_ERQ18_Field use
     (Erq18_0 => 0,
      Erq18_1 => 1);

   --  Enable DMA Request 19
   type ERQ_ERQ19_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq19_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq19_1)
     with Size => 1;
   for ERQ_ERQ19_Field use
     (Erq19_0 => 0,
      Erq19_1 => 1);

   --  Enable DMA Request 20
   type ERQ_ERQ20_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq20_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq20_1)
     with Size => 1;
   for ERQ_ERQ20_Field use
     (Erq20_0 => 0,
      Erq20_1 => 1);

   --  Enable DMA Request 21
   type ERQ_ERQ21_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq21_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq21_1)
     with Size => 1;
   for ERQ_ERQ21_Field use
     (Erq21_0 => 0,
      Erq21_1 => 1);

   --  Enable DMA Request 22
   type ERQ_ERQ22_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq22_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq22_1)
     with Size => 1;
   for ERQ_ERQ22_Field use
     (Erq22_0 => 0,
      Erq22_1 => 1);

   --  Enable DMA Request 23
   type ERQ_ERQ23_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq23_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq23_1)
     with Size => 1;
   for ERQ_ERQ23_Field use
     (Erq23_0 => 0,
      Erq23_1 => 1);

   --  Enable DMA Request 24
   type ERQ_ERQ24_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq24_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq24_1)
     with Size => 1;
   for ERQ_ERQ24_Field use
     (Erq24_0 => 0,
      Erq24_1 => 1);

   --  Enable DMA Request 25
   type ERQ_ERQ25_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq25_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq25_1)
     with Size => 1;
   for ERQ_ERQ25_Field use
     (Erq25_0 => 0,
      Erq25_1 => 1);

   --  Enable DMA Request 26
   type ERQ_ERQ26_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq26_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq26_1)
     with Size => 1;
   for ERQ_ERQ26_Field use
     (Erq26_0 => 0,
      Erq26_1 => 1);

   --  Enable DMA Request 27
   type ERQ_ERQ27_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq27_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq27_1)
     with Size => 1;
   for ERQ_ERQ27_Field use
     (Erq27_0 => 0,
      Erq27_1 => 1);

   --  Enable DMA Request 28
   type ERQ_ERQ28_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq28_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq28_1)
     with Size => 1;
   for ERQ_ERQ28_Field use
     (Erq28_0 => 0,
      Erq28_1 => 1);

   --  Enable DMA Request 29
   type ERQ_ERQ29_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq29_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq29_1)
     with Size => 1;
   for ERQ_ERQ29_Field use
     (Erq29_0 => 0,
      Erq29_1 => 1);

   --  Enable DMA Request 30
   type ERQ_ERQ30_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq30_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq30_1)
     with Size => 1;
   for ERQ_ERQ30_Field use
     (Erq30_0 => 0,
      Erq30_1 => 1);

   --  Enable DMA Request 31
   type ERQ_ERQ31_Field is
     (
      --  The DMA request signal for the corresponding channel is disabled
      Erq31_0,
      --  The DMA request signal for the corresponding channel is enabled
      Erq31_1)
     with Size => 1;
   for ERQ_ERQ31_Field use
     (Erq31_0 => 0,
      Erq31_1 => 1);

   --  Enable Request Register
   type ERQ_Register is record
      --  Enable DMA Request 0
      ERQ0  : ERQ_ERQ0_Field := NRF_SVD.DMA.Erq0_0;
      --  Enable DMA Request 1
      ERQ1  : ERQ_ERQ1_Field := NRF_SVD.DMA.Erq1_0;
      --  Enable DMA Request 2
      ERQ2  : ERQ_ERQ2_Field := NRF_SVD.DMA.Erq2_0;
      --  Enable DMA Request 3
      ERQ3  : ERQ_ERQ3_Field := NRF_SVD.DMA.Erq3_0;
      --  Enable DMA Request 4
      ERQ4  : ERQ_ERQ4_Field := NRF_SVD.DMA.Erq4_0;
      --  Enable DMA Request 5
      ERQ5  : ERQ_ERQ5_Field := NRF_SVD.DMA.Erq5_0;
      --  Enable DMA Request 6
      ERQ6  : ERQ_ERQ6_Field := NRF_SVD.DMA.Erq6_0;
      --  Enable DMA Request 7
      ERQ7  : ERQ_ERQ7_Field := NRF_SVD.DMA.Erq7_0;
      --  Enable DMA Request 8
      ERQ8  : ERQ_ERQ8_Field := NRF_SVD.DMA.Erq8_0;
      --  Enable DMA Request 9
      ERQ9  : ERQ_ERQ9_Field := NRF_SVD.DMA.Erq9_0;
      --  Enable DMA Request 10
      ERQ10 : ERQ_ERQ10_Field := NRF_SVD.DMA.Erq10_0;
      --  Enable DMA Request 11
      ERQ11 : ERQ_ERQ11_Field := NRF_SVD.DMA.Erq11_0;
      --  Enable DMA Request 12
      ERQ12 : ERQ_ERQ12_Field := NRF_SVD.DMA.Erq12_0;
      --  Enable DMA Request 13
      ERQ13 : ERQ_ERQ13_Field := NRF_SVD.DMA.Erq13_0;
      --  Enable DMA Request 14
      ERQ14 : ERQ_ERQ14_Field := NRF_SVD.DMA.Erq14_0;
      --  Enable DMA Request 15
      ERQ15 : ERQ_ERQ15_Field := NRF_SVD.DMA.Erq15_0;
      --  Enable DMA Request 16
      ERQ16 : ERQ_ERQ16_Field := NRF_SVD.DMA.Erq16_0;
      --  Enable DMA Request 17
      ERQ17 : ERQ_ERQ17_Field := NRF_SVD.DMA.Erq17_0;
      --  Enable DMA Request 18
      ERQ18 : ERQ_ERQ18_Field := NRF_SVD.DMA.Erq18_0;
      --  Enable DMA Request 19
      ERQ19 : ERQ_ERQ19_Field := NRF_SVD.DMA.Erq19_0;
      --  Enable DMA Request 20
      ERQ20 : ERQ_ERQ20_Field := NRF_SVD.DMA.Erq20_0;
      --  Enable DMA Request 21
      ERQ21 : ERQ_ERQ21_Field := NRF_SVD.DMA.Erq21_0;
      --  Enable DMA Request 22
      ERQ22 : ERQ_ERQ22_Field := NRF_SVD.DMA.Erq22_0;
      --  Enable DMA Request 23
      ERQ23 : ERQ_ERQ23_Field := NRF_SVD.DMA.Erq23_0;
      --  Enable DMA Request 24
      ERQ24 : ERQ_ERQ24_Field := NRF_SVD.DMA.Erq24_0;
      --  Enable DMA Request 25
      ERQ25 : ERQ_ERQ25_Field := NRF_SVD.DMA.Erq25_0;
      --  Enable DMA Request 26
      ERQ26 : ERQ_ERQ26_Field := NRF_SVD.DMA.Erq26_0;
      --  Enable DMA Request 27
      ERQ27 : ERQ_ERQ27_Field := NRF_SVD.DMA.Erq27_0;
      --  Enable DMA Request 28
      ERQ28 : ERQ_ERQ28_Field := NRF_SVD.DMA.Erq28_0;
      --  Enable DMA Request 29
      ERQ29 : ERQ_ERQ29_Field := NRF_SVD.DMA.Erq29_0;
      --  Enable DMA Request 30
      ERQ30 : ERQ_ERQ30_Field := NRF_SVD.DMA.Erq30_0;
      --  Enable DMA Request 31
      ERQ31 : ERQ_ERQ31_Field := NRF_SVD.DMA.Erq31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERQ_Register use record
      ERQ0  at 0 range 0 .. 0;
      ERQ1  at 0 range 1 .. 1;
      ERQ2  at 0 range 2 .. 2;
      ERQ3  at 0 range 3 .. 3;
      ERQ4  at 0 range 4 .. 4;
      ERQ5  at 0 range 5 .. 5;
      ERQ6  at 0 range 6 .. 6;
      ERQ7  at 0 range 7 .. 7;
      ERQ8  at 0 range 8 .. 8;
      ERQ9  at 0 range 9 .. 9;
      ERQ10 at 0 range 10 .. 10;
      ERQ11 at 0 range 11 .. 11;
      ERQ12 at 0 range 12 .. 12;
      ERQ13 at 0 range 13 .. 13;
      ERQ14 at 0 range 14 .. 14;
      ERQ15 at 0 range 15 .. 15;
      ERQ16 at 0 range 16 .. 16;
      ERQ17 at 0 range 17 .. 17;
      ERQ18 at 0 range 18 .. 18;
      ERQ19 at 0 range 19 .. 19;
      ERQ20 at 0 range 20 .. 20;
      ERQ21 at 0 range 21 .. 21;
      ERQ22 at 0 range 22 .. 22;
      ERQ23 at 0 range 23 .. 23;
      ERQ24 at 0 range 24 .. 24;
      ERQ25 at 0 range 25 .. 25;
      ERQ26 at 0 range 26 .. 26;
      ERQ27 at 0 range 27 .. 27;
      ERQ28 at 0 range 28 .. 28;
      ERQ29 at 0 range 29 .. 29;
      ERQ30 at 0 range 30 .. 30;
      ERQ31 at 0 range 31 .. 31;
   end record;

   --  Enable Error Interrupt 0
   type EEI_EEI0_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei0_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei0_1)
     with Size => 1;
   for EEI_EEI0_Field use
     (Eei0_0 => 0,
      Eei0_1 => 1);

   --  Enable Error Interrupt 1
   type EEI_EEI1_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei1_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei1_1)
     with Size => 1;
   for EEI_EEI1_Field use
     (Eei1_0 => 0,
      Eei1_1 => 1);

   --  Enable Error Interrupt 2
   type EEI_EEI2_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei2_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei2_1)
     with Size => 1;
   for EEI_EEI2_Field use
     (Eei2_0 => 0,
      Eei2_1 => 1);

   --  Enable Error Interrupt 3
   type EEI_EEI3_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei3_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei3_1)
     with Size => 1;
   for EEI_EEI3_Field use
     (Eei3_0 => 0,
      Eei3_1 => 1);

   --  Enable Error Interrupt 4
   type EEI_EEI4_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei4_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei4_1)
     with Size => 1;
   for EEI_EEI4_Field use
     (Eei4_0 => 0,
      Eei4_1 => 1);

   --  Enable Error Interrupt 5
   type EEI_EEI5_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei5_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei5_1)
     with Size => 1;
   for EEI_EEI5_Field use
     (Eei5_0 => 0,
      Eei5_1 => 1);

   --  Enable Error Interrupt 6
   type EEI_EEI6_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei6_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei6_1)
     with Size => 1;
   for EEI_EEI6_Field use
     (Eei6_0 => 0,
      Eei6_1 => 1);

   --  Enable Error Interrupt 7
   type EEI_EEI7_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei7_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei7_1)
     with Size => 1;
   for EEI_EEI7_Field use
     (Eei7_0 => 0,
      Eei7_1 => 1);

   --  Enable Error Interrupt 8
   type EEI_EEI8_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei8_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei8_1)
     with Size => 1;
   for EEI_EEI8_Field use
     (Eei8_0 => 0,
      Eei8_1 => 1);

   --  Enable Error Interrupt 9
   type EEI_EEI9_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei9_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei9_1)
     with Size => 1;
   for EEI_EEI9_Field use
     (Eei9_0 => 0,
      Eei9_1 => 1);

   --  Enable Error Interrupt 10
   type EEI_EEI10_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei10_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei10_1)
     with Size => 1;
   for EEI_EEI10_Field use
     (Eei10_0 => 0,
      Eei10_1 => 1);

   --  Enable Error Interrupt 11
   type EEI_EEI11_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei11_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei11_1)
     with Size => 1;
   for EEI_EEI11_Field use
     (Eei11_0 => 0,
      Eei11_1 => 1);

   --  Enable Error Interrupt 12
   type EEI_EEI12_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei12_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei12_1)
     with Size => 1;
   for EEI_EEI12_Field use
     (Eei12_0 => 0,
      Eei12_1 => 1);

   --  Enable Error Interrupt 13
   type EEI_EEI13_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei13_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei13_1)
     with Size => 1;
   for EEI_EEI13_Field use
     (Eei13_0 => 0,
      Eei13_1 => 1);

   --  Enable Error Interrupt 14
   type EEI_EEI14_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei14_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei14_1)
     with Size => 1;
   for EEI_EEI14_Field use
     (Eei14_0 => 0,
      Eei14_1 => 1);

   --  Enable Error Interrupt 15
   type EEI_EEI15_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei15_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei15_1)
     with Size => 1;
   for EEI_EEI15_Field use
     (Eei15_0 => 0,
      Eei15_1 => 1);

   --  Enable Error Interrupt 16
   type EEI_EEI16_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei16_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei16_1)
     with Size => 1;
   for EEI_EEI16_Field use
     (Eei16_0 => 0,
      Eei16_1 => 1);

   --  Enable Error Interrupt 17
   type EEI_EEI17_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei17_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei17_1)
     with Size => 1;
   for EEI_EEI17_Field use
     (Eei17_0 => 0,
      Eei17_1 => 1);

   --  Enable Error Interrupt 18
   type EEI_EEI18_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei18_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei18_1)
     with Size => 1;
   for EEI_EEI18_Field use
     (Eei18_0 => 0,
      Eei18_1 => 1);

   --  Enable Error Interrupt 19
   type EEI_EEI19_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei19_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei19_1)
     with Size => 1;
   for EEI_EEI19_Field use
     (Eei19_0 => 0,
      Eei19_1 => 1);

   --  Enable Error Interrupt 20
   type EEI_EEI20_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei20_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei20_1)
     with Size => 1;
   for EEI_EEI20_Field use
     (Eei20_0 => 0,
      Eei20_1 => 1);

   --  Enable Error Interrupt 21
   type EEI_EEI21_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei21_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei21_1)
     with Size => 1;
   for EEI_EEI21_Field use
     (Eei21_0 => 0,
      Eei21_1 => 1);

   --  Enable Error Interrupt 22
   type EEI_EEI22_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei22_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei22_1)
     with Size => 1;
   for EEI_EEI22_Field use
     (Eei22_0 => 0,
      Eei22_1 => 1);

   --  Enable Error Interrupt 23
   type EEI_EEI23_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei23_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei23_1)
     with Size => 1;
   for EEI_EEI23_Field use
     (Eei23_0 => 0,
      Eei23_1 => 1);

   --  Enable Error Interrupt 24
   type EEI_EEI24_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei24_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei24_1)
     with Size => 1;
   for EEI_EEI24_Field use
     (Eei24_0 => 0,
      Eei24_1 => 1);

   --  Enable Error Interrupt 25
   type EEI_EEI25_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei25_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei25_1)
     with Size => 1;
   for EEI_EEI25_Field use
     (Eei25_0 => 0,
      Eei25_1 => 1);

   --  Enable Error Interrupt 26
   type EEI_EEI26_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei26_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei26_1)
     with Size => 1;
   for EEI_EEI26_Field use
     (Eei26_0 => 0,
      Eei26_1 => 1);

   --  Enable Error Interrupt 27
   type EEI_EEI27_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei27_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei27_1)
     with Size => 1;
   for EEI_EEI27_Field use
     (Eei27_0 => 0,
      Eei27_1 => 1);

   --  Enable Error Interrupt 28
   type EEI_EEI28_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei28_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei28_1)
     with Size => 1;
   for EEI_EEI28_Field use
     (Eei28_0 => 0,
      Eei28_1 => 1);

   --  Enable Error Interrupt 29
   type EEI_EEI29_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei29_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei29_1)
     with Size => 1;
   for EEI_EEI29_Field use
     (Eei29_0 => 0,
      Eei29_1 => 1);

   --  Enable Error Interrupt 30
   type EEI_EEI30_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei30_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei30_1)
     with Size => 1;
   for EEI_EEI30_Field use
     (Eei30_0 => 0,
      Eei30_1 => 1);

   --  Enable Error Interrupt 31
   type EEI_EEI31_Field is
     (
      --  The error signal for corresponding channel does not generate an error
      --  interrupt
      Eei31_0,
      --  The assertion of the error signal for corresponding channel generates
      --  an error interrupt request
      Eei31_1)
     with Size => 1;
   for EEI_EEI31_Field use
     (Eei31_0 => 0,
      Eei31_1 => 1);

   --  Enable Error Interrupt Register
   type EEI_Register is record
      --  Enable Error Interrupt 0
      EEI0  : EEI_EEI0_Field := NRF_SVD.DMA.Eei0_0;
      --  Enable Error Interrupt 1
      EEI1  : EEI_EEI1_Field := NRF_SVD.DMA.Eei1_0;
      --  Enable Error Interrupt 2
      EEI2  : EEI_EEI2_Field := NRF_SVD.DMA.Eei2_0;
      --  Enable Error Interrupt 3
      EEI3  : EEI_EEI3_Field := NRF_SVD.DMA.Eei3_0;
      --  Enable Error Interrupt 4
      EEI4  : EEI_EEI4_Field := NRF_SVD.DMA.Eei4_0;
      --  Enable Error Interrupt 5
      EEI5  : EEI_EEI5_Field := NRF_SVD.DMA.Eei5_0;
      --  Enable Error Interrupt 6
      EEI6  : EEI_EEI6_Field := NRF_SVD.DMA.Eei6_0;
      --  Enable Error Interrupt 7
      EEI7  : EEI_EEI7_Field := NRF_SVD.DMA.Eei7_0;
      --  Enable Error Interrupt 8
      EEI8  : EEI_EEI8_Field := NRF_SVD.DMA.Eei8_0;
      --  Enable Error Interrupt 9
      EEI9  : EEI_EEI9_Field := NRF_SVD.DMA.Eei9_0;
      --  Enable Error Interrupt 10
      EEI10 : EEI_EEI10_Field := NRF_SVD.DMA.Eei10_0;
      --  Enable Error Interrupt 11
      EEI11 : EEI_EEI11_Field := NRF_SVD.DMA.Eei11_0;
      --  Enable Error Interrupt 12
      EEI12 : EEI_EEI12_Field := NRF_SVD.DMA.Eei12_0;
      --  Enable Error Interrupt 13
      EEI13 : EEI_EEI13_Field := NRF_SVD.DMA.Eei13_0;
      --  Enable Error Interrupt 14
      EEI14 : EEI_EEI14_Field := NRF_SVD.DMA.Eei14_0;
      --  Enable Error Interrupt 15
      EEI15 : EEI_EEI15_Field := NRF_SVD.DMA.Eei15_0;
      --  Enable Error Interrupt 16
      EEI16 : EEI_EEI16_Field := NRF_SVD.DMA.Eei16_0;
      --  Enable Error Interrupt 17
      EEI17 : EEI_EEI17_Field := NRF_SVD.DMA.Eei17_0;
      --  Enable Error Interrupt 18
      EEI18 : EEI_EEI18_Field := NRF_SVD.DMA.Eei18_0;
      --  Enable Error Interrupt 19
      EEI19 : EEI_EEI19_Field := NRF_SVD.DMA.Eei19_0;
      --  Enable Error Interrupt 20
      EEI20 : EEI_EEI20_Field := NRF_SVD.DMA.Eei20_0;
      --  Enable Error Interrupt 21
      EEI21 : EEI_EEI21_Field := NRF_SVD.DMA.Eei21_0;
      --  Enable Error Interrupt 22
      EEI22 : EEI_EEI22_Field := NRF_SVD.DMA.Eei22_0;
      --  Enable Error Interrupt 23
      EEI23 : EEI_EEI23_Field := NRF_SVD.DMA.Eei23_0;
      --  Enable Error Interrupt 24
      EEI24 : EEI_EEI24_Field := NRF_SVD.DMA.Eei24_0;
      --  Enable Error Interrupt 25
      EEI25 : EEI_EEI25_Field := NRF_SVD.DMA.Eei25_0;
      --  Enable Error Interrupt 26
      EEI26 : EEI_EEI26_Field := NRF_SVD.DMA.Eei26_0;
      --  Enable Error Interrupt 27
      EEI27 : EEI_EEI27_Field := NRF_SVD.DMA.Eei27_0;
      --  Enable Error Interrupt 28
      EEI28 : EEI_EEI28_Field := NRF_SVD.DMA.Eei28_0;
      --  Enable Error Interrupt 29
      EEI29 : EEI_EEI29_Field := NRF_SVD.DMA.Eei29_0;
      --  Enable Error Interrupt 30
      EEI30 : EEI_EEI30_Field := NRF_SVD.DMA.Eei30_0;
      --  Enable Error Interrupt 31
      EEI31 : EEI_EEI31_Field := NRF_SVD.DMA.Eei31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EEI_Register use record
      EEI0  at 0 range 0 .. 0;
      EEI1  at 0 range 1 .. 1;
      EEI2  at 0 range 2 .. 2;
      EEI3  at 0 range 3 .. 3;
      EEI4  at 0 range 4 .. 4;
      EEI5  at 0 range 5 .. 5;
      EEI6  at 0 range 6 .. 6;
      EEI7  at 0 range 7 .. 7;
      EEI8  at 0 range 8 .. 8;
      EEI9  at 0 range 9 .. 9;
      EEI10 at 0 range 10 .. 10;
      EEI11 at 0 range 11 .. 11;
      EEI12 at 0 range 12 .. 12;
      EEI13 at 0 range 13 .. 13;
      EEI14 at 0 range 14 .. 14;
      EEI15 at 0 range 15 .. 15;
      EEI16 at 0 range 16 .. 16;
      EEI17 at 0 range 17 .. 17;
      EEI18 at 0 range 18 .. 18;
      EEI19 at 0 range 19 .. 19;
      EEI20 at 0 range 20 .. 20;
      EEI21 at 0 range 21 .. 21;
      EEI22 at 0 range 22 .. 22;
      EEI23 at 0 range 23 .. 23;
      EEI24 at 0 range 24 .. 24;
      EEI25 at 0 range 25 .. 25;
      EEI26 at 0 range 26 .. 26;
      EEI27 at 0 range 27 .. 27;
      EEI28 at 0 range 28 .. 28;
      EEI29 at 0 range 29 .. 29;
      EEI30 at 0 range 30 .. 30;
      EEI31 at 0 range 31 .. 31;
   end record;

   subtype CEEI_CEEI_Field is HAL.UInt5;

   --  Clear All Enable Error Interrupts
   type CEEI_CAEE_Field is
     (
      --  no description available
      Caee_0,
      --  no description available
      Caee_1)
     with Size => 1;
   for CEEI_CAEE_Field use
     (Caee_0 => 0,
      Caee_1 => 1);

   --  No Op enable
   type CEEI_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for CEEI_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Clear Enable Error Interrupt Register
   type CEEI_Register is record
      --  Write-only. Clear Enable Error Interrupt
      CEEI         : CEEI_CEEI_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Clear All Enable Error Interrupts
      CAEE         : CEEI_CAEE_Field := NRF_SVD.DMA.Caee_0;
      --  Write-only. No Op enable
      NOP          : CEEI_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CEEI_Register use record
      CEEI         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      CAEE         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype SEEI_SEEI_Field is HAL.UInt5;

   --  Sets All Enable Error Interrupts
   type SEEI_SAEE_Field is
     (
      --  no description available
      Saee_0,
      --  no description available
      Saee_1)
     with Size => 1;
   for SEEI_SAEE_Field use
     (Saee_0 => 0,
      Saee_1 => 1);

   --  No Op enable
   type SEEI_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for SEEI_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Set Enable Error Interrupt Register
   type SEEI_Register is record
      --  Write-only. Set Enable Error Interrupt
      SEEI         : SEEI_SEEI_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Sets All Enable Error Interrupts
      SAEE         : SEEI_SAEE_Field := NRF_SVD.DMA.Saee_0;
      --  Write-only. No Op enable
      NOP          : SEEI_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SEEI_Register use record
      SEEI         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      SAEE         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype CERQ_CERQ_Field is HAL.UInt5;

   --  Clear All Enable Requests
   type CERQ_CAER_Field is
     (
      --  no description available
      Caer_0,
      --  no description available
      Caer_1)
     with Size => 1;
   for CERQ_CAER_Field use
     (Caer_0 => 0,
      Caer_1 => 1);

   --  No Op enable
   type CERQ_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for CERQ_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Clear Enable Request Register
   type CERQ_Register is record
      --  Write-only. Clear Enable Request
      CERQ         : CERQ_CERQ_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Clear All Enable Requests
      CAER         : CERQ_CAER_Field := NRF_SVD.DMA.Caer_0;
      --  Write-only. No Op enable
      NOP          : CERQ_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CERQ_Register use record
      CERQ         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      CAER         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype SERQ_SERQ_Field is HAL.UInt5;

   --  Set All Enable Requests
   type SERQ_SAER_Field is
     (
      --  no description available
      Saer_0,
      --  no description available
      Saer_1)
     with Size => 1;
   for SERQ_SAER_Field use
     (Saer_0 => 0,
      Saer_1 => 1);

   --  No Op enable
   type SERQ_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for SERQ_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Set Enable Request Register
   type SERQ_Register is record
      --  Write-only. Set Enable Request
      SERQ         : SERQ_SERQ_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Set All Enable Requests
      SAER         : SERQ_SAER_Field := NRF_SVD.DMA.Saer_0;
      --  Write-only. No Op enable
      NOP          : SERQ_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SERQ_Register use record
      SERQ         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      SAER         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype CDNE_CDNE_Field is HAL.UInt5;

   --  Clears All DONE Bits
   type CDNE_CADN_Field is
     (
      --  Clears only the TCDn_CSR[DONE] bit specified in the CDNE field
      Cadn_0,
      --  Clears all bits in TCDn_CSR[DONE]
      Cadn_1)
     with Size => 1;
   for CDNE_CADN_Field use
     (Cadn_0 => 0,
      Cadn_1 => 1);

   --  No Op enable
   type CDNE_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for CDNE_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Clear DONE Status Bit Register
   type CDNE_Register is record
      --  Write-only. Clear DONE Bit
      CDNE         : CDNE_CDNE_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Clears All DONE Bits
      CADN         : CDNE_CADN_Field := NRF_SVD.DMA.Cadn_0;
      --  Write-only. No Op enable
      NOP          : CDNE_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CDNE_Register use record
      CDNE         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      CADN         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype SSRT_SSRT_Field is HAL.UInt5;

   --  Set All START Bits (activates all channels)
   type SSRT_SAST_Field is
     (
      --  Set only the TCDn_CSR[START] bit specified in the SSRT field
      Sast_0,
      --  Set all bits in TCDn_CSR[START]
      Sast_1)
     with Size => 1;
   for SSRT_SAST_Field use
     (Sast_0 => 0,
      Sast_1 => 1);

   --  No Op enable
   type SSRT_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for SSRT_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Set START Bit Register
   type SSRT_Register is record
      --  Write-only. Set START Bit
      SSRT         : SSRT_SSRT_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Set All START Bits (activates all channels)
      SAST         : SSRT_SAST_Field := NRF_SVD.DMA.Sast_0;
      --  Write-only. No Op enable
      NOP          : SSRT_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SSRT_Register use record
      SSRT         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      SAST         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype CERR_CERR_Field is HAL.UInt5;

   --  Clear All Error Indicators
   type CERR_CAEI_Field is
     (
      --  no description available
      Caei_0,
      --  no description available
      Caei_1)
     with Size => 1;
   for CERR_CAEI_Field use
     (Caei_0 => 0,
      Caei_1 => 1);

   --  No Op enable
   type CERR_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for CERR_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Clear Error Register
   type CERR_Register is record
      --  Write-only. Clear Error Indicator
      CERR         : CERR_CERR_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Clear All Error Indicators
      CAEI         : CERR_CAEI_Field := NRF_SVD.DMA.Caei_0;
      --  Write-only. No Op enable
      NOP          : CERR_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CERR_Register use record
      CERR         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      CAEI         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   subtype CINT_CINT_Field is HAL.UInt5;

   --  Clear All Interrupt Requests
   type CINT_CAIR_Field is
     (
      --  no description available
      Cair_0,
      --  no description available
      Cair_1)
     with Size => 1;
   for CINT_CAIR_Field use
     (Cair_0 => 0,
      Cair_1 => 1);

   --  No Op enable
   type CINT_NOP_Field is
     (
      --  Normal operation
      Nop_0,
      --  No operation, ignore the other bits in this register
      Nop_1)
     with Size => 1;
   for CINT_NOP_Field use
     (Nop_0 => 0,
      Nop_1 => 1);

   --  Clear Interrupt Request Register
   type CINT_Register is record
      --  Write-only. Clear Interrupt Request
      CINT         : CINT_CINT_Field := 16#0#;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Clear All Interrupt Requests
      CAIR         : CINT_CAIR_Field := NRF_SVD.DMA.Cair_0;
      --  Write-only. No Op enable
      NOP          : CINT_NOP_Field := NRF_SVD.DMA.Nop_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CINT_Register use record
      CINT         at 0 range 0 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      CAIR         at 0 range 6 .. 6;
      NOP          at 0 range 7 .. 7;
   end record;

   --  Interrupt Request 0
   type INT_INT0_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int0_0,
      --  The interrupt request for corresponding channel is active
      Int0_1)
     with Size => 1;
   for INT_INT0_Field use
     (Int0_0 => 0,
      Int0_1 => 1);

   --  Interrupt Request 1
   type INT_INT1_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int1_0,
      --  The interrupt request for corresponding channel is active
      Int1_1)
     with Size => 1;
   for INT_INT1_Field use
     (Int1_0 => 0,
      Int1_1 => 1);

   --  Interrupt Request 2
   type INT_INT2_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int2_0,
      --  The interrupt request for corresponding channel is active
      Int2_1)
     with Size => 1;
   for INT_INT2_Field use
     (Int2_0 => 0,
      Int2_1 => 1);

   --  Interrupt Request 3
   type INT_INT3_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int3_0,
      --  The interrupt request for corresponding channel is active
      Int3_1)
     with Size => 1;
   for INT_INT3_Field use
     (Int3_0 => 0,
      Int3_1 => 1);

   --  Interrupt Request 4
   type INT_INT4_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int4_0,
      --  The interrupt request for corresponding channel is active
      Int4_1)
     with Size => 1;
   for INT_INT4_Field use
     (Int4_0 => 0,
      Int4_1 => 1);

   --  Interrupt Request 5
   type INT_INT5_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int5_0,
      --  The interrupt request for corresponding channel is active
      Int5_1)
     with Size => 1;
   for INT_INT5_Field use
     (Int5_0 => 0,
      Int5_1 => 1);

   --  Interrupt Request 6
   type INT_INT6_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int6_0,
      --  The interrupt request for corresponding channel is active
      Int6_1)
     with Size => 1;
   for INT_INT6_Field use
     (Int6_0 => 0,
      Int6_1 => 1);

   --  Interrupt Request 7
   type INT_INT7_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int7_0,
      --  The interrupt request for corresponding channel is active
      Int7_1)
     with Size => 1;
   for INT_INT7_Field use
     (Int7_0 => 0,
      Int7_1 => 1);

   --  Interrupt Request 8
   type INT_INT8_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int8_0,
      --  The interrupt request for corresponding channel is active
      Int8_1)
     with Size => 1;
   for INT_INT8_Field use
     (Int8_0 => 0,
      Int8_1 => 1);

   --  Interrupt Request 9
   type INT_INT9_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int9_0,
      --  The interrupt request for corresponding channel is active
      Int9_1)
     with Size => 1;
   for INT_INT9_Field use
     (Int9_0 => 0,
      Int9_1 => 1);

   --  Interrupt Request 10
   type INT_INT10_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int10_0,
      --  The interrupt request for corresponding channel is active
      Int10_1)
     with Size => 1;
   for INT_INT10_Field use
     (Int10_0 => 0,
      Int10_1 => 1);

   --  Interrupt Request 11
   type INT_INT11_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int11_0,
      --  The interrupt request for corresponding channel is active
      Int11_1)
     with Size => 1;
   for INT_INT11_Field use
     (Int11_0 => 0,
      Int11_1 => 1);

   --  Interrupt Request 12
   type INT_INT12_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int12_0,
      --  The interrupt request for corresponding channel is active
      Int12_1)
     with Size => 1;
   for INT_INT12_Field use
     (Int12_0 => 0,
      Int12_1 => 1);

   --  Interrupt Request 13
   type INT_INT13_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int13_0,
      --  The interrupt request for corresponding channel is active
      Int13_1)
     with Size => 1;
   for INT_INT13_Field use
     (Int13_0 => 0,
      Int13_1 => 1);

   --  Interrupt Request 14
   type INT_INT14_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int14_0,
      --  The interrupt request for corresponding channel is active
      Int14_1)
     with Size => 1;
   for INT_INT14_Field use
     (Int14_0 => 0,
      Int14_1 => 1);

   --  Interrupt Request 15
   type INT_INT15_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int15_0,
      --  The interrupt request for corresponding channel is active
      Int15_1)
     with Size => 1;
   for INT_INT15_Field use
     (Int15_0 => 0,
      Int15_1 => 1);

   --  Interrupt Request 16
   type INT_INT16_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int16_0,
      --  The interrupt request for corresponding channel is active
      Int16_1)
     with Size => 1;
   for INT_INT16_Field use
     (Int16_0 => 0,
      Int16_1 => 1);

   --  Interrupt Request 17
   type INT_INT17_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int17_0,
      --  The interrupt request for corresponding channel is active
      Int17_1)
     with Size => 1;
   for INT_INT17_Field use
     (Int17_0 => 0,
      Int17_1 => 1);

   --  Interrupt Request 18
   type INT_INT18_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int18_0,
      --  The interrupt request for corresponding channel is active
      Int18_1)
     with Size => 1;
   for INT_INT18_Field use
     (Int18_0 => 0,
      Int18_1 => 1);

   --  Interrupt Request 19
   type INT_INT19_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int19_0,
      --  The interrupt request for corresponding channel is active
      Int19_1)
     with Size => 1;
   for INT_INT19_Field use
     (Int19_0 => 0,
      Int19_1 => 1);

   --  Interrupt Request 20
   type INT_INT20_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int20_0,
      --  The interrupt request for corresponding channel is active
      Int20_1)
     with Size => 1;
   for INT_INT20_Field use
     (Int20_0 => 0,
      Int20_1 => 1);

   --  Interrupt Request 21
   type INT_INT21_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int21_0,
      --  The interrupt request for corresponding channel is active
      Int21_1)
     with Size => 1;
   for INT_INT21_Field use
     (Int21_0 => 0,
      Int21_1 => 1);

   --  Interrupt Request 22
   type INT_INT22_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int22_0,
      --  The interrupt request for corresponding channel is active
      Int22_1)
     with Size => 1;
   for INT_INT22_Field use
     (Int22_0 => 0,
      Int22_1 => 1);

   --  Interrupt Request 23
   type INT_INT23_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int23_0,
      --  The interrupt request for corresponding channel is active
      Int23_1)
     with Size => 1;
   for INT_INT23_Field use
     (Int23_0 => 0,
      Int23_1 => 1);

   --  Interrupt Request 24
   type INT_INT24_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int24_0,
      --  The interrupt request for corresponding channel is active
      Int24_1)
     with Size => 1;
   for INT_INT24_Field use
     (Int24_0 => 0,
      Int24_1 => 1);

   --  Interrupt Request 25
   type INT_INT25_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int25_0,
      --  The interrupt request for corresponding channel is active
      Int25_1)
     with Size => 1;
   for INT_INT25_Field use
     (Int25_0 => 0,
      Int25_1 => 1);

   --  Interrupt Request 26
   type INT_INT26_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int26_0,
      --  The interrupt request for corresponding channel is active
      Int26_1)
     with Size => 1;
   for INT_INT26_Field use
     (Int26_0 => 0,
      Int26_1 => 1);

   --  Interrupt Request 27
   type INT_INT27_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int27_0,
      --  The interrupt request for corresponding channel is active
      Int27_1)
     with Size => 1;
   for INT_INT27_Field use
     (Int27_0 => 0,
      Int27_1 => 1);

   --  Interrupt Request 28
   type INT_INT28_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int28_0,
      --  The interrupt request for corresponding channel is active
      Int28_1)
     with Size => 1;
   for INT_INT28_Field use
     (Int28_0 => 0,
      Int28_1 => 1);

   --  Interrupt Request 29
   type INT_INT29_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int29_0,
      --  The interrupt request for corresponding channel is active
      Int29_1)
     with Size => 1;
   for INT_INT29_Field use
     (Int29_0 => 0,
      Int29_1 => 1);

   --  Interrupt Request 30
   type INT_INT30_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int30_0,
      --  The interrupt request for corresponding channel is active
      Int30_1)
     with Size => 1;
   for INT_INT30_Field use
     (Int30_0 => 0,
      Int30_1 => 1);

   --  Interrupt Request 31
   type INT_INT31_Field is
     (
      --  The interrupt request for corresponding channel is cleared
      Int31_0,
      --  The interrupt request for corresponding channel is active
      Int31_1)
     with Size => 1;
   for INT_INT31_Field use
     (Int31_0 => 0,
      Int31_1 => 1);

   --  Interrupt Request Register
   type INT_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 0
      INT0  : INT_INT0_Field := NRF_SVD.DMA.Int0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 1
      INT1  : INT_INT1_Field := NRF_SVD.DMA.Int1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 2
      INT2  : INT_INT2_Field := NRF_SVD.DMA.Int2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 3
      INT3  : INT_INT3_Field := NRF_SVD.DMA.Int3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 4
      INT4  : INT_INT4_Field := NRF_SVD.DMA.Int4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 5
      INT5  : INT_INT5_Field := NRF_SVD.DMA.Int5_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 6
      INT6  : INT_INT6_Field := NRF_SVD.DMA.Int6_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 7
      INT7  : INT_INT7_Field := NRF_SVD.DMA.Int7_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 8
      INT8  : INT_INT8_Field := NRF_SVD.DMA.Int8_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 9
      INT9  : INT_INT9_Field := NRF_SVD.DMA.Int9_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 10
      INT10 : INT_INT10_Field := NRF_SVD.DMA.Int10_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 11
      INT11 : INT_INT11_Field := NRF_SVD.DMA.Int11_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 12
      INT12 : INT_INT12_Field := NRF_SVD.DMA.Int12_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 13
      INT13 : INT_INT13_Field := NRF_SVD.DMA.Int13_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 14
      INT14 : INT_INT14_Field := NRF_SVD.DMA.Int14_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 15
      INT15 : INT_INT15_Field := NRF_SVD.DMA.Int15_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 16
      INT16 : INT_INT16_Field := NRF_SVD.DMA.Int16_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 17
      INT17 : INT_INT17_Field := NRF_SVD.DMA.Int17_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 18
      INT18 : INT_INT18_Field := NRF_SVD.DMA.Int18_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 19
      INT19 : INT_INT19_Field := NRF_SVD.DMA.Int19_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 20
      INT20 : INT_INT20_Field := NRF_SVD.DMA.Int20_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 21
      INT21 : INT_INT21_Field := NRF_SVD.DMA.Int21_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 22
      INT22 : INT_INT22_Field := NRF_SVD.DMA.Int22_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 23
      INT23 : INT_INT23_Field := NRF_SVD.DMA.Int23_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 24
      INT24 : INT_INT24_Field := NRF_SVD.DMA.Int24_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 25
      INT25 : INT_INT25_Field := NRF_SVD.DMA.Int25_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 26
      INT26 : INT_INT26_Field := NRF_SVD.DMA.Int26_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 27
      INT27 : INT_INT27_Field := NRF_SVD.DMA.Int27_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 28
      INT28 : INT_INT28_Field := NRF_SVD.DMA.Int28_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 29
      INT29 : INT_INT29_Field := NRF_SVD.DMA.Int29_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 30
      INT30 : INT_INT30_Field := NRF_SVD.DMA.Int30_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Interrupt Request 31
      INT31 : INT_INT31_Field := NRF_SVD.DMA.Int31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_Register use record
      INT0  at 0 range 0 .. 0;
      INT1  at 0 range 1 .. 1;
      INT2  at 0 range 2 .. 2;
      INT3  at 0 range 3 .. 3;
      INT4  at 0 range 4 .. 4;
      INT5  at 0 range 5 .. 5;
      INT6  at 0 range 6 .. 6;
      INT7  at 0 range 7 .. 7;
      INT8  at 0 range 8 .. 8;
      INT9  at 0 range 9 .. 9;
      INT10 at 0 range 10 .. 10;
      INT11 at 0 range 11 .. 11;
      INT12 at 0 range 12 .. 12;
      INT13 at 0 range 13 .. 13;
      INT14 at 0 range 14 .. 14;
      INT15 at 0 range 15 .. 15;
      INT16 at 0 range 16 .. 16;
      INT17 at 0 range 17 .. 17;
      INT18 at 0 range 18 .. 18;
      INT19 at 0 range 19 .. 19;
      INT20 at 0 range 20 .. 20;
      INT21 at 0 range 21 .. 21;
      INT22 at 0 range 22 .. 22;
      INT23 at 0 range 23 .. 23;
      INT24 at 0 range 24 .. 24;
      INT25 at 0 range 25 .. 25;
      INT26 at 0 range 26 .. 26;
      INT27 at 0 range 27 .. 27;
      INT28 at 0 range 28 .. 28;
      INT29 at 0 range 29 .. 29;
      INT30 at 0 range 30 .. 30;
      INT31 at 0 range 31 .. 31;
   end record;

   --  Error In Channel 0
   type ERR_ERR0_Field is
     (
      --  An error in this channel has not occurred
      Err0_0,
      --  An error in this channel has occurred
      Err0_1)
     with Size => 1;
   for ERR_ERR0_Field use
     (Err0_0 => 0,
      Err0_1 => 1);

   --  Error In Channel 1
   type ERR_ERR1_Field is
     (
      --  An error in this channel has not occurred
      Err1_0,
      --  An error in this channel has occurred
      Err1_1)
     with Size => 1;
   for ERR_ERR1_Field use
     (Err1_0 => 0,
      Err1_1 => 1);

   --  Error In Channel 2
   type ERR_ERR2_Field is
     (
      --  An error in this channel has not occurred
      Err2_0,
      --  An error in this channel has occurred
      Err2_1)
     with Size => 1;
   for ERR_ERR2_Field use
     (Err2_0 => 0,
      Err2_1 => 1);

   --  Error In Channel 3
   type ERR_ERR3_Field is
     (
      --  An error in this channel has not occurred
      Err3_0,
      --  An error in this channel has occurred
      Err3_1)
     with Size => 1;
   for ERR_ERR3_Field use
     (Err3_0 => 0,
      Err3_1 => 1);

   --  Error In Channel 4
   type ERR_ERR4_Field is
     (
      --  An error in this channel has not occurred
      Err4_0,
      --  An error in this channel has occurred
      Err4_1)
     with Size => 1;
   for ERR_ERR4_Field use
     (Err4_0 => 0,
      Err4_1 => 1);

   --  Error In Channel 5
   type ERR_ERR5_Field is
     (
      --  An error in this channel has not occurred
      Err5_0,
      --  An error in this channel has occurred
      Err5_1)
     with Size => 1;
   for ERR_ERR5_Field use
     (Err5_0 => 0,
      Err5_1 => 1);

   --  Error In Channel 6
   type ERR_ERR6_Field is
     (
      --  An error in this channel has not occurred
      Err6_0,
      --  An error in this channel has occurred
      Err6_1)
     with Size => 1;
   for ERR_ERR6_Field use
     (Err6_0 => 0,
      Err6_1 => 1);

   --  Error In Channel 7
   type ERR_ERR7_Field is
     (
      --  An error in this channel has not occurred
      Err7_0,
      --  An error in this channel has occurred
      Err7_1)
     with Size => 1;
   for ERR_ERR7_Field use
     (Err7_0 => 0,
      Err7_1 => 1);

   --  Error In Channel 8
   type ERR_ERR8_Field is
     (
      --  An error in this channel has not occurred
      Err8_0,
      --  An error in this channel has occurred
      Err8_1)
     with Size => 1;
   for ERR_ERR8_Field use
     (Err8_0 => 0,
      Err8_1 => 1);

   --  Error In Channel 9
   type ERR_ERR9_Field is
     (
      --  An error in this channel has not occurred
      Err9_0,
      --  An error in this channel has occurred
      Err9_1)
     with Size => 1;
   for ERR_ERR9_Field use
     (Err9_0 => 0,
      Err9_1 => 1);

   --  Error In Channel 10
   type ERR_ERR10_Field is
     (
      --  An error in this channel has not occurred
      Err10_0,
      --  An error in this channel has occurred
      Err10_1)
     with Size => 1;
   for ERR_ERR10_Field use
     (Err10_0 => 0,
      Err10_1 => 1);

   --  Error In Channel 11
   type ERR_ERR11_Field is
     (
      --  An error in this channel has not occurred
      Err11_0,
      --  An error in this channel has occurred
      Err11_1)
     with Size => 1;
   for ERR_ERR11_Field use
     (Err11_0 => 0,
      Err11_1 => 1);

   --  Error In Channel 12
   type ERR_ERR12_Field is
     (
      --  An error in this channel has not occurred
      Err12_0,
      --  An error in this channel has occurred
      Err12_1)
     with Size => 1;
   for ERR_ERR12_Field use
     (Err12_0 => 0,
      Err12_1 => 1);

   --  Error In Channel 13
   type ERR_ERR13_Field is
     (
      --  An error in this channel has not occurred
      Err13_0,
      --  An error in this channel has occurred
      Err13_1)
     with Size => 1;
   for ERR_ERR13_Field use
     (Err13_0 => 0,
      Err13_1 => 1);

   --  Error In Channel 14
   type ERR_ERR14_Field is
     (
      --  An error in this channel has not occurred
      Err14_0,
      --  An error in this channel has occurred
      Err14_1)
     with Size => 1;
   for ERR_ERR14_Field use
     (Err14_0 => 0,
      Err14_1 => 1);

   --  Error In Channel 15
   type ERR_ERR15_Field is
     (
      --  An error in this channel has not occurred
      Err15_0,
      --  An error in this channel has occurred
      Err15_1)
     with Size => 1;
   for ERR_ERR15_Field use
     (Err15_0 => 0,
      Err15_1 => 1);

   --  Error In Channel 16
   type ERR_ERR16_Field is
     (
      --  An error in this channel has not occurred
      Err16_0,
      --  An error in this channel has occurred
      Err16_1)
     with Size => 1;
   for ERR_ERR16_Field use
     (Err16_0 => 0,
      Err16_1 => 1);

   --  Error In Channel 17
   type ERR_ERR17_Field is
     (
      --  An error in this channel has not occurred
      Err17_0,
      --  An error in this channel has occurred
      Err17_1)
     with Size => 1;
   for ERR_ERR17_Field use
     (Err17_0 => 0,
      Err17_1 => 1);

   --  Error In Channel 18
   type ERR_ERR18_Field is
     (
      --  An error in this channel has not occurred
      Err18_0,
      --  An error in this channel has occurred
      Err18_1)
     with Size => 1;
   for ERR_ERR18_Field use
     (Err18_0 => 0,
      Err18_1 => 1);

   --  Error In Channel 19
   type ERR_ERR19_Field is
     (
      --  An error in this channel has not occurred
      Err19_0,
      --  An error in this channel has occurred
      Err19_1)
     with Size => 1;
   for ERR_ERR19_Field use
     (Err19_0 => 0,
      Err19_1 => 1);

   --  Error In Channel 20
   type ERR_ERR20_Field is
     (
      --  An error in this channel has not occurred
      Err20_0,
      --  An error in this channel has occurred
      Err20_1)
     with Size => 1;
   for ERR_ERR20_Field use
     (Err20_0 => 0,
      Err20_1 => 1);

   --  Error In Channel 21
   type ERR_ERR21_Field is
     (
      --  An error in this channel has not occurred
      Err21_0,
      --  An error in this channel has occurred
      Err21_1)
     with Size => 1;
   for ERR_ERR21_Field use
     (Err21_0 => 0,
      Err21_1 => 1);

   --  Error In Channel 22
   type ERR_ERR22_Field is
     (
      --  An error in this channel has not occurred
      Err22_0,
      --  An error in this channel has occurred
      Err22_1)
     with Size => 1;
   for ERR_ERR22_Field use
     (Err22_0 => 0,
      Err22_1 => 1);

   --  Error In Channel 23
   type ERR_ERR23_Field is
     (
      --  An error in this channel has not occurred
      Err23_0,
      --  An error in this channel has occurred
      Err23_1)
     with Size => 1;
   for ERR_ERR23_Field use
     (Err23_0 => 0,
      Err23_1 => 1);

   --  Error In Channel 24
   type ERR_ERR24_Field is
     (
      --  An error in this channel has not occurred
      Err24_0,
      --  An error in this channel has occurred
      Err24_1)
     with Size => 1;
   for ERR_ERR24_Field use
     (Err24_0 => 0,
      Err24_1 => 1);

   --  Error In Channel 25
   type ERR_ERR25_Field is
     (
      --  An error in this channel has not occurred
      Err25_0,
      --  An error in this channel has occurred
      Err25_1)
     with Size => 1;
   for ERR_ERR25_Field use
     (Err25_0 => 0,
      Err25_1 => 1);

   --  Error In Channel 26
   type ERR_ERR26_Field is
     (
      --  An error in this channel has not occurred
      Err26_0,
      --  An error in this channel has occurred
      Err26_1)
     with Size => 1;
   for ERR_ERR26_Field use
     (Err26_0 => 0,
      Err26_1 => 1);

   --  Error In Channel 27
   type ERR_ERR27_Field is
     (
      --  An error in this channel has not occurred
      Err27_0,
      --  An error in this channel has occurred
      Err27_1)
     with Size => 1;
   for ERR_ERR27_Field use
     (Err27_0 => 0,
      Err27_1 => 1);

   --  Error In Channel 28
   type ERR_ERR28_Field is
     (
      --  An error in this channel has not occurred
      Err28_0,
      --  An error in this channel has occurred
      Err28_1)
     with Size => 1;
   for ERR_ERR28_Field use
     (Err28_0 => 0,
      Err28_1 => 1);

   --  Error In Channel 29
   type ERR_ERR29_Field is
     (
      --  An error in this channel has not occurred
      Err29_0,
      --  An error in this channel has occurred
      Err29_1)
     with Size => 1;
   for ERR_ERR29_Field use
     (Err29_0 => 0,
      Err29_1 => 1);

   --  Error In Channel 30
   type ERR_ERR30_Field is
     (
      --  An error in this channel has not occurred
      Err30_0,
      --  An error in this channel has occurred
      Err30_1)
     with Size => 1;
   for ERR_ERR30_Field use
     (Err30_0 => 0,
      Err30_1 => 1);

   --  Error In Channel 31
   type ERR_ERR31_Field is
     (
      --  An error in this channel has not occurred
      Err31_0,
      --  An error in this channel has occurred
      Err31_1)
     with Size => 1;
   for ERR_ERR31_Field use
     (Err31_0 => 0,
      Err31_1 => 1);

   --  Error Register
   type ERR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 0
      ERR0  : ERR_ERR0_Field := NRF_SVD.DMA.Err0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 1
      ERR1  : ERR_ERR1_Field := NRF_SVD.DMA.Err1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 2
      ERR2  : ERR_ERR2_Field := NRF_SVD.DMA.Err2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 3
      ERR3  : ERR_ERR3_Field := NRF_SVD.DMA.Err3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 4
      ERR4  : ERR_ERR4_Field := NRF_SVD.DMA.Err4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 5
      ERR5  : ERR_ERR5_Field := NRF_SVD.DMA.Err5_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 6
      ERR6  : ERR_ERR6_Field := NRF_SVD.DMA.Err6_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 7
      ERR7  : ERR_ERR7_Field := NRF_SVD.DMA.Err7_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 8
      ERR8  : ERR_ERR8_Field := NRF_SVD.DMA.Err8_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 9
      ERR9  : ERR_ERR9_Field := NRF_SVD.DMA.Err9_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 10
      ERR10 : ERR_ERR10_Field := NRF_SVD.DMA.Err10_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 11
      ERR11 : ERR_ERR11_Field := NRF_SVD.DMA.Err11_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 12
      ERR12 : ERR_ERR12_Field := NRF_SVD.DMA.Err12_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 13
      ERR13 : ERR_ERR13_Field := NRF_SVD.DMA.Err13_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 14
      ERR14 : ERR_ERR14_Field := NRF_SVD.DMA.Err14_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 15
      ERR15 : ERR_ERR15_Field := NRF_SVD.DMA.Err15_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 16
      ERR16 : ERR_ERR16_Field := NRF_SVD.DMA.Err16_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 17
      ERR17 : ERR_ERR17_Field := NRF_SVD.DMA.Err17_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 18
      ERR18 : ERR_ERR18_Field := NRF_SVD.DMA.Err18_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 19
      ERR19 : ERR_ERR19_Field := NRF_SVD.DMA.Err19_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 20
      ERR20 : ERR_ERR20_Field := NRF_SVD.DMA.Err20_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 21
      ERR21 : ERR_ERR21_Field := NRF_SVD.DMA.Err21_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 22
      ERR22 : ERR_ERR22_Field := NRF_SVD.DMA.Err22_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 23
      ERR23 : ERR_ERR23_Field := NRF_SVD.DMA.Err23_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 24
      ERR24 : ERR_ERR24_Field := NRF_SVD.DMA.Err24_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 25
      ERR25 : ERR_ERR25_Field := NRF_SVD.DMA.Err25_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 26
      ERR26 : ERR_ERR26_Field := NRF_SVD.DMA.Err26_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 27
      ERR27 : ERR_ERR27_Field := NRF_SVD.DMA.Err27_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 28
      ERR28 : ERR_ERR28_Field := NRF_SVD.DMA.Err28_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 29
      ERR29 : ERR_ERR29_Field := NRF_SVD.DMA.Err29_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 30
      ERR30 : ERR_ERR30_Field := NRF_SVD.DMA.Err30_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Error In Channel 31
      ERR31 : ERR_ERR31_Field := NRF_SVD.DMA.Err31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_Register use record
      ERR0  at 0 range 0 .. 0;
      ERR1  at 0 range 1 .. 1;
      ERR2  at 0 range 2 .. 2;
      ERR3  at 0 range 3 .. 3;
      ERR4  at 0 range 4 .. 4;
      ERR5  at 0 range 5 .. 5;
      ERR6  at 0 range 6 .. 6;
      ERR7  at 0 range 7 .. 7;
      ERR8  at 0 range 8 .. 8;
      ERR9  at 0 range 9 .. 9;
      ERR10 at 0 range 10 .. 10;
      ERR11 at 0 range 11 .. 11;
      ERR12 at 0 range 12 .. 12;
      ERR13 at 0 range 13 .. 13;
      ERR14 at 0 range 14 .. 14;
      ERR15 at 0 range 15 .. 15;
      ERR16 at 0 range 16 .. 16;
      ERR17 at 0 range 17 .. 17;
      ERR18 at 0 range 18 .. 18;
      ERR19 at 0 range 19 .. 19;
      ERR20 at 0 range 20 .. 20;
      ERR21 at 0 range 21 .. 21;
      ERR22 at 0 range 22 .. 22;
      ERR23 at 0 range 23 .. 23;
      ERR24 at 0 range 24 .. 24;
      ERR25 at 0 range 25 .. 25;
      ERR26 at 0 range 26 .. 26;
      ERR27 at 0 range 27 .. 27;
      ERR28 at 0 range 28 .. 28;
      ERR29 at 0 range 29 .. 29;
      ERR30 at 0 range 30 .. 30;
      ERR31 at 0 range 31 .. 31;
   end record;

   --  Hardware Request Status Channel 0
   type HRS_HRS0_Field is
     (
      --  A hardware service request for channel 0 is not present
      Hrs0_0,
      --  A hardware service request for channel 0 is present
      Hrs0_1)
     with Size => 1;
   for HRS_HRS0_Field use
     (Hrs0_0 => 0,
      Hrs0_1 => 1);

   --  Hardware Request Status Channel 1
   type HRS_HRS1_Field is
     (
      --  A hardware service request for channel 1 is not present
      Hrs1_0,
      --  A hardware service request for channel 1 is present
      Hrs1_1)
     with Size => 1;
   for HRS_HRS1_Field use
     (Hrs1_0 => 0,
      Hrs1_1 => 1);

   --  Hardware Request Status Channel 2
   type HRS_HRS2_Field is
     (
      --  A hardware service request for channel 2 is not present
      Hrs2_0,
      --  A hardware service request for channel 2 is present
      Hrs2_1)
     with Size => 1;
   for HRS_HRS2_Field use
     (Hrs2_0 => 0,
      Hrs2_1 => 1);

   --  Hardware Request Status Channel 3
   type HRS_HRS3_Field is
     (
      --  A hardware service request for channel 3 is not present
      Hrs3_0,
      --  A hardware service request for channel 3 is present
      Hrs3_1)
     with Size => 1;
   for HRS_HRS3_Field use
     (Hrs3_0 => 0,
      Hrs3_1 => 1);

   --  Hardware Request Status Channel 4
   type HRS_HRS4_Field is
     (
      --  A hardware service request for channel 4 is not present
      Hrs4_0,
      --  A hardware service request for channel 4 is present
      Hrs4_1)
     with Size => 1;
   for HRS_HRS4_Field use
     (Hrs4_0 => 0,
      Hrs4_1 => 1);

   --  Hardware Request Status Channel 5
   type HRS_HRS5_Field is
     (
      --  A hardware service request for channel 5 is not present
      Hrs5_0,
      --  A hardware service request for channel 5 is present
      Hrs5_1)
     with Size => 1;
   for HRS_HRS5_Field use
     (Hrs5_0 => 0,
      Hrs5_1 => 1);

   --  Hardware Request Status Channel 6
   type HRS_HRS6_Field is
     (
      --  A hardware service request for channel 6 is not present
      Hrs6_0,
      --  A hardware service request for channel 6 is present
      Hrs6_1)
     with Size => 1;
   for HRS_HRS6_Field use
     (Hrs6_0 => 0,
      Hrs6_1 => 1);

   --  Hardware Request Status Channel 7
   type HRS_HRS7_Field is
     (
      --  A hardware service request for channel 7 is not present
      Hrs7_0,
      --  A hardware service request for channel 7 is present
      Hrs7_1)
     with Size => 1;
   for HRS_HRS7_Field use
     (Hrs7_0 => 0,
      Hrs7_1 => 1);

   --  Hardware Request Status Channel 8
   type HRS_HRS8_Field is
     (
      --  A hardware service request for channel 8 is not present
      Hrs8_0,
      --  A hardware service request for channel 8 is present
      Hrs8_1)
     with Size => 1;
   for HRS_HRS8_Field use
     (Hrs8_0 => 0,
      Hrs8_1 => 1);

   --  Hardware Request Status Channel 9
   type HRS_HRS9_Field is
     (
      --  A hardware service request for channel 9 is not present
      Hrs9_0,
      --  A hardware service request for channel 9 is present
      Hrs9_1)
     with Size => 1;
   for HRS_HRS9_Field use
     (Hrs9_0 => 0,
      Hrs9_1 => 1);

   --  Hardware Request Status Channel 10
   type HRS_HRS10_Field is
     (
      --  A hardware service request for channel 10 is not present
      Hrs10_0,
      --  A hardware service request for channel 10 is present
      Hrs10_1)
     with Size => 1;
   for HRS_HRS10_Field use
     (Hrs10_0 => 0,
      Hrs10_1 => 1);

   --  Hardware Request Status Channel 11
   type HRS_HRS11_Field is
     (
      --  A hardware service request for channel 11 is not present
      Hrs11_0,
      --  A hardware service request for channel 11 is present
      Hrs11_1)
     with Size => 1;
   for HRS_HRS11_Field use
     (Hrs11_0 => 0,
      Hrs11_1 => 1);

   --  Hardware Request Status Channel 12
   type HRS_HRS12_Field is
     (
      --  A hardware service request for channel 12 is not present
      Hrs12_0,
      --  A hardware service request for channel 12 is present
      Hrs12_1)
     with Size => 1;
   for HRS_HRS12_Field use
     (Hrs12_0 => 0,
      Hrs12_1 => 1);

   --  Hardware Request Status Channel 13
   type HRS_HRS13_Field is
     (
      --  A hardware service request for channel 13 is not present
      Hrs13_0,
      --  A hardware service request for channel 13 is present
      Hrs13_1)
     with Size => 1;
   for HRS_HRS13_Field use
     (Hrs13_0 => 0,
      Hrs13_1 => 1);

   --  Hardware Request Status Channel 14
   type HRS_HRS14_Field is
     (
      --  A hardware service request for channel 14 is not present
      Hrs14_0,
      --  A hardware service request for channel 14 is present
      Hrs14_1)
     with Size => 1;
   for HRS_HRS14_Field use
     (Hrs14_0 => 0,
      Hrs14_1 => 1);

   --  Hardware Request Status Channel 15
   type HRS_HRS15_Field is
     (
      --  A hardware service request for channel 15 is not present
      Hrs15_0,
      --  A hardware service request for channel 15 is present
      Hrs15_1)
     with Size => 1;
   for HRS_HRS15_Field use
     (Hrs15_0 => 0,
      Hrs15_1 => 1);

   --  Hardware Request Status Channel 16
   type HRS_HRS16_Field is
     (
      --  A hardware service request for channel 16 is not present
      Hrs16_0,
      --  A hardware service request for channel 16 is present
      Hrs16_1)
     with Size => 1;
   for HRS_HRS16_Field use
     (Hrs16_0 => 0,
      Hrs16_1 => 1);

   --  Hardware Request Status Channel 17
   type HRS_HRS17_Field is
     (
      --  A hardware service request for channel 17 is not present
      Hrs17_0,
      --  A hardware service request for channel 17 is present
      Hrs17_1)
     with Size => 1;
   for HRS_HRS17_Field use
     (Hrs17_0 => 0,
      Hrs17_1 => 1);

   --  Hardware Request Status Channel 18
   type HRS_HRS18_Field is
     (
      --  A hardware service request for channel 18 is not present
      Hrs18_0,
      --  A hardware service request for channel 18 is present
      Hrs18_1)
     with Size => 1;
   for HRS_HRS18_Field use
     (Hrs18_0 => 0,
      Hrs18_1 => 1);

   --  Hardware Request Status Channel 19
   type HRS_HRS19_Field is
     (
      --  A hardware service request for channel 19 is not present
      Hrs19_0,
      --  A hardware service request for channel 19 is present
      Hrs19_1)
     with Size => 1;
   for HRS_HRS19_Field use
     (Hrs19_0 => 0,
      Hrs19_1 => 1);

   --  Hardware Request Status Channel 20
   type HRS_HRS20_Field is
     (
      --  A hardware service request for channel 20 is not present
      Hrs20_0,
      --  A hardware service request for channel 20 is present
      Hrs20_1)
     with Size => 1;
   for HRS_HRS20_Field use
     (Hrs20_0 => 0,
      Hrs20_1 => 1);

   --  Hardware Request Status Channel 21
   type HRS_HRS21_Field is
     (
      --  A hardware service request for channel 21 is not present
      Hrs21_0,
      --  A hardware service request for channel 21 is present
      Hrs21_1)
     with Size => 1;
   for HRS_HRS21_Field use
     (Hrs21_0 => 0,
      Hrs21_1 => 1);

   --  Hardware Request Status Channel 22
   type HRS_HRS22_Field is
     (
      --  A hardware service request for channel 22 is not present
      Hrs22_0,
      --  A hardware service request for channel 22 is present
      Hrs22_1)
     with Size => 1;
   for HRS_HRS22_Field use
     (Hrs22_0 => 0,
      Hrs22_1 => 1);

   --  Hardware Request Status Channel 23
   type HRS_HRS23_Field is
     (
      --  A hardware service request for channel 23 is not present
      Hrs23_0,
      --  A hardware service request for channel 23 is present
      Hrs23_1)
     with Size => 1;
   for HRS_HRS23_Field use
     (Hrs23_0 => 0,
      Hrs23_1 => 1);

   --  Hardware Request Status Channel 24
   type HRS_HRS24_Field is
     (
      --  A hardware service request for channel 24 is not present
      Hrs24_0,
      --  A hardware service request for channel 24 is present
      Hrs24_1)
     with Size => 1;
   for HRS_HRS24_Field use
     (Hrs24_0 => 0,
      Hrs24_1 => 1);

   --  Hardware Request Status Channel 25
   type HRS_HRS25_Field is
     (
      --  A hardware service request for channel 25 is not present
      Hrs25_0,
      --  A hardware service request for channel 25 is present
      Hrs25_1)
     with Size => 1;
   for HRS_HRS25_Field use
     (Hrs25_0 => 0,
      Hrs25_1 => 1);

   --  Hardware Request Status Channel 26
   type HRS_HRS26_Field is
     (
      --  A hardware service request for channel 26 is not present
      Hrs26_0,
      --  A hardware service request for channel 26 is present
      Hrs26_1)
     with Size => 1;
   for HRS_HRS26_Field use
     (Hrs26_0 => 0,
      Hrs26_1 => 1);

   --  Hardware Request Status Channel 27
   type HRS_HRS27_Field is
     (
      --  A hardware service request for channel 27 is not present
      Hrs27_0,
      --  A hardware service request for channel 27 is present
      Hrs27_1)
     with Size => 1;
   for HRS_HRS27_Field use
     (Hrs27_0 => 0,
      Hrs27_1 => 1);

   --  Hardware Request Status Channel 28
   type HRS_HRS28_Field is
     (
      --  A hardware service request for channel 28 is not present
      Hrs28_0,
      --  A hardware service request for channel 28 is present
      Hrs28_1)
     with Size => 1;
   for HRS_HRS28_Field use
     (Hrs28_0 => 0,
      Hrs28_1 => 1);

   --  Hardware Request Status Channel 29
   type HRS_HRS29_Field is
     (
      --  A hardware service request for channel 29 is not preset
      Hrs29_0,
      --  A hardware service request for channel 29 is present
      Hrs29_1)
     with Size => 1;
   for HRS_HRS29_Field use
     (Hrs29_0 => 0,
      Hrs29_1 => 1);

   --  Hardware Request Status Channel 30
   type HRS_HRS30_Field is
     (
      --  A hardware service request for channel 30 is not present
      Hrs30_0,
      --  A hardware service request for channel 30 is present
      Hrs30_1)
     with Size => 1;
   for HRS_HRS30_Field use
     (Hrs30_0 => 0,
      Hrs30_1 => 1);

   --  Hardware Request Status Channel 31
   type HRS_HRS31_Field is
     (
      --  A hardware service request for channel 31 is not present
      Hrs31_0,
      --  A hardware service request for channel 31 is present
      Hrs31_1)
     with Size => 1;
   for HRS_HRS31_Field use
     (Hrs31_0 => 0,
      Hrs31_1 => 1);

   --  Hardware Request Status Register
   type HRS_Register is record
      --  Read-only. Hardware Request Status Channel 0
      HRS0  : HRS_HRS0_Field;
      --  Read-only. Hardware Request Status Channel 1
      HRS1  : HRS_HRS1_Field;
      --  Read-only. Hardware Request Status Channel 2
      HRS2  : HRS_HRS2_Field;
      --  Read-only. Hardware Request Status Channel 3
      HRS3  : HRS_HRS3_Field;
      --  Read-only. Hardware Request Status Channel 4
      HRS4  : HRS_HRS4_Field;
      --  Read-only. Hardware Request Status Channel 5
      HRS5  : HRS_HRS5_Field;
      --  Read-only. Hardware Request Status Channel 6
      HRS6  : HRS_HRS6_Field;
      --  Read-only. Hardware Request Status Channel 7
      HRS7  : HRS_HRS7_Field;
      --  Read-only. Hardware Request Status Channel 8
      HRS8  : HRS_HRS8_Field;
      --  Read-only. Hardware Request Status Channel 9
      HRS9  : HRS_HRS9_Field;
      --  Read-only. Hardware Request Status Channel 10
      HRS10 : HRS_HRS10_Field;
      --  Read-only. Hardware Request Status Channel 11
      HRS11 : HRS_HRS11_Field;
      --  Read-only. Hardware Request Status Channel 12
      HRS12 : HRS_HRS12_Field;
      --  Read-only. Hardware Request Status Channel 13
      HRS13 : HRS_HRS13_Field;
      --  Read-only. Hardware Request Status Channel 14
      HRS14 : HRS_HRS14_Field;
      --  Read-only. Hardware Request Status Channel 15
      HRS15 : HRS_HRS15_Field;
      --  Read-only. Hardware Request Status Channel 16
      HRS16 : HRS_HRS16_Field;
      --  Read-only. Hardware Request Status Channel 17
      HRS17 : HRS_HRS17_Field;
      --  Read-only. Hardware Request Status Channel 18
      HRS18 : HRS_HRS18_Field;
      --  Read-only. Hardware Request Status Channel 19
      HRS19 : HRS_HRS19_Field;
      --  Read-only. Hardware Request Status Channel 20
      HRS20 : HRS_HRS20_Field;
      --  Read-only. Hardware Request Status Channel 21
      HRS21 : HRS_HRS21_Field;
      --  Read-only. Hardware Request Status Channel 22
      HRS22 : HRS_HRS22_Field;
      --  Read-only. Hardware Request Status Channel 23
      HRS23 : HRS_HRS23_Field;
      --  Read-only. Hardware Request Status Channel 24
      HRS24 : HRS_HRS24_Field;
      --  Read-only. Hardware Request Status Channel 25
      HRS25 : HRS_HRS25_Field;
      --  Read-only. Hardware Request Status Channel 26
      HRS26 : HRS_HRS26_Field;
      --  Read-only. Hardware Request Status Channel 27
      HRS27 : HRS_HRS27_Field;
      --  Read-only. Hardware Request Status Channel 28
      HRS28 : HRS_HRS28_Field;
      --  Read-only. Hardware Request Status Channel 29
      HRS29 : HRS_HRS29_Field;
      --  Read-only. Hardware Request Status Channel 30
      HRS30 : HRS_HRS30_Field;
      --  Read-only. Hardware Request Status Channel 31
      HRS31 : HRS_HRS31_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HRS_Register use record
      HRS0  at 0 range 0 .. 0;
      HRS1  at 0 range 1 .. 1;
      HRS2  at 0 range 2 .. 2;
      HRS3  at 0 range 3 .. 3;
      HRS4  at 0 range 4 .. 4;
      HRS5  at 0 range 5 .. 5;
      HRS6  at 0 range 6 .. 6;
      HRS7  at 0 range 7 .. 7;
      HRS8  at 0 range 8 .. 8;
      HRS9  at 0 range 9 .. 9;
      HRS10 at 0 range 10 .. 10;
      HRS11 at 0 range 11 .. 11;
      HRS12 at 0 range 12 .. 12;
      HRS13 at 0 range 13 .. 13;
      HRS14 at 0 range 14 .. 14;
      HRS15 at 0 range 15 .. 15;
      HRS16 at 0 range 16 .. 16;
      HRS17 at 0 range 17 .. 17;
      HRS18 at 0 range 18 .. 18;
      HRS19 at 0 range 19 .. 19;
      HRS20 at 0 range 20 .. 20;
      HRS21 at 0 range 21 .. 21;
      HRS22 at 0 range 22 .. 22;
      HRS23 at 0 range 23 .. 23;
      HRS24 at 0 range 24 .. 24;
      HRS25 at 0 range 25 .. 25;
      HRS26 at 0 range 26 .. 26;
      HRS27 at 0 range 27 .. 27;
      HRS28 at 0 range 28 .. 28;
      HRS29 at 0 range 29 .. 29;
      HRS30 at 0 range 30 .. 30;
      HRS31 at 0 range 31 .. 31;
   end record;

   --  Enable asynchronous DMA request in stop mode for channel 0.
   type EARS_EDREQ_0_Field is
     (
      --  Disable asynchronous DMA request for channel 0.
      Edreq_0_0,
      --  Enable asynchronous DMA request for channel 0.
      Edreq_0_1)
     with Size => 1;
   for EARS_EDREQ_0_Field use
     (Edreq_0_0 => 0,
      Edreq_0_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 1.
   type EARS_EDREQ_1_Field is
     (
      --  Disable asynchronous DMA request for channel 1
      Edreq_1_0,
      --  Enable asynchronous DMA request for channel 1.
      Edreq_1_1)
     with Size => 1;
   for EARS_EDREQ_1_Field use
     (Edreq_1_0 => 0,
      Edreq_1_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 2.
   type EARS_EDREQ_2_Field is
     (
      --  Disable asynchronous DMA request for channel 2.
      Edreq_2_0,
      --  Enable asynchronous DMA request for channel 2.
      Edreq_2_1)
     with Size => 1;
   for EARS_EDREQ_2_Field use
     (Edreq_2_0 => 0,
      Edreq_2_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 3.
   type EARS_EDREQ_3_Field is
     (
      --  Disable asynchronous DMA request for channel 3.
      Edreq_3_0,
      --  Enable asynchronous DMA request for channel 3.
      Edreq_3_1)
     with Size => 1;
   for EARS_EDREQ_3_Field use
     (Edreq_3_0 => 0,
      Edreq_3_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 4
   type EARS_EDREQ_4_Field is
     (
      --  Disable asynchronous DMA request for channel 4.
      Edreq_4_0,
      --  Enable asynchronous DMA request for channel 4.
      Edreq_4_1)
     with Size => 1;
   for EARS_EDREQ_4_Field use
     (Edreq_4_0 => 0,
      Edreq_4_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 5
   type EARS_EDREQ_5_Field is
     (
      --  Disable asynchronous DMA request for channel 5.
      Edreq_5_0,
      --  Enable asynchronous DMA request for channel 5.
      Edreq_5_1)
     with Size => 1;
   for EARS_EDREQ_5_Field use
     (Edreq_5_0 => 0,
      Edreq_5_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 6
   type EARS_EDREQ_6_Field is
     (
      --  Disable asynchronous DMA request for channel 6.
      Edreq_6_0,
      --  Enable asynchronous DMA request for channel 6.
      Edreq_6_1)
     with Size => 1;
   for EARS_EDREQ_6_Field use
     (Edreq_6_0 => 0,
      Edreq_6_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 7
   type EARS_EDREQ_7_Field is
     (
      --  Disable asynchronous DMA request for channel 7.
      Edreq_7_0,
      --  Enable asynchronous DMA request for channel 7.
      Edreq_7_1)
     with Size => 1;
   for EARS_EDREQ_7_Field use
     (Edreq_7_0 => 0,
      Edreq_7_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 8
   type EARS_EDREQ_8_Field is
     (
      --  Disable asynchronous DMA request for channel 8.
      Edreq_8_0,
      --  Enable asynchronous DMA request for channel 8.
      Edreq_8_1)
     with Size => 1;
   for EARS_EDREQ_8_Field use
     (Edreq_8_0 => 0,
      Edreq_8_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 9
   type EARS_EDREQ_9_Field is
     (
      --  Disable asynchronous DMA request for channel 9.
      Edreq_9_0,
      --  Enable asynchronous DMA request for channel 9.
      Edreq_9_1)
     with Size => 1;
   for EARS_EDREQ_9_Field use
     (Edreq_9_0 => 0,
      Edreq_9_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 10
   type EARS_EDREQ_10_Field is
     (
      --  Disable asynchronous DMA request for channel 10.
      Edreq_10_0,
      --  Enable asynchronous DMA request for channel 10.
      Edreq_10_1)
     with Size => 1;
   for EARS_EDREQ_10_Field use
     (Edreq_10_0 => 0,
      Edreq_10_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 11
   type EARS_EDREQ_11_Field is
     (
      --  Disable asynchronous DMA request for channel 11.
      Edreq_11_0,
      --  Enable asynchronous DMA request for channel 11.
      Edreq_11_1)
     with Size => 1;
   for EARS_EDREQ_11_Field use
     (Edreq_11_0 => 0,
      Edreq_11_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 12
   type EARS_EDREQ_12_Field is
     (
      --  Disable asynchronous DMA request for channel 12.
      Edreq_12_0,
      --  Enable asynchronous DMA request for channel 12.
      Edreq_12_1)
     with Size => 1;
   for EARS_EDREQ_12_Field use
     (Edreq_12_0 => 0,
      Edreq_12_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 13
   type EARS_EDREQ_13_Field is
     (
      --  Disable asynchronous DMA request for channel 13.
      Edreq_13_0,
      --  Enable asynchronous DMA request for channel 13.
      Edreq_13_1)
     with Size => 1;
   for EARS_EDREQ_13_Field use
     (Edreq_13_0 => 0,
      Edreq_13_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 14
   type EARS_EDREQ_14_Field is
     (
      --  Disable asynchronous DMA request for channel 14.
      Edreq_14_0,
      --  Enable asynchronous DMA request for channel 14.
      Edreq_14_1)
     with Size => 1;
   for EARS_EDREQ_14_Field use
     (Edreq_14_0 => 0,
      Edreq_14_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 15
   type EARS_EDREQ_15_Field is
     (
      --  Disable asynchronous DMA request for channel 15.
      Edreq_15_0,
      --  Enable asynchronous DMA request for channel 15.
      Edreq_15_1)
     with Size => 1;
   for EARS_EDREQ_15_Field use
     (Edreq_15_0 => 0,
      Edreq_15_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 16
   type EARS_EDREQ_16_Field is
     (
      --  Disable asynchronous DMA request for channel 16
      Edreq_16_0,
      --  Enable asynchronous DMA request for channel 16
      Edreq_16_1)
     with Size => 1;
   for EARS_EDREQ_16_Field use
     (Edreq_16_0 => 0,
      Edreq_16_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 17
   type EARS_EDREQ_17_Field is
     (
      --  Disable asynchronous DMA request for channel 17
      Edreq_17_0,
      --  Enable asynchronous DMA request for channel 17
      Edreq_17_1)
     with Size => 1;
   for EARS_EDREQ_17_Field use
     (Edreq_17_0 => 0,
      Edreq_17_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 18
   type EARS_EDREQ_18_Field is
     (
      --  Disable asynchronous DMA request for channel 18
      Edreq_18_0,
      --  Enable asynchronous DMA request for channel 18
      Edreq_18_1)
     with Size => 1;
   for EARS_EDREQ_18_Field use
     (Edreq_18_0 => 0,
      Edreq_18_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 19
   type EARS_EDREQ_19_Field is
     (
      --  Disable asynchronous DMA request for channel 19
      Edreq_19_0,
      --  Enable asynchronous DMA request for channel 19
      Edreq_19_1)
     with Size => 1;
   for EARS_EDREQ_19_Field use
     (Edreq_19_0 => 0,
      Edreq_19_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 20
   type EARS_EDREQ_20_Field is
     (
      --  Disable asynchronous DMA request for channel 20
      Edreq_20_0,
      --  Enable asynchronous DMA request for channel 20
      Edreq_20_1)
     with Size => 1;
   for EARS_EDREQ_20_Field use
     (Edreq_20_0 => 0,
      Edreq_20_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 21
   type EARS_EDREQ_21_Field is
     (
      --  Disable asynchronous DMA request for channel 21
      Edreq_21_0,
      --  Enable asynchronous DMA request for channel 21
      Edreq_21_1)
     with Size => 1;
   for EARS_EDREQ_21_Field use
     (Edreq_21_0 => 0,
      Edreq_21_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 22
   type EARS_EDREQ_22_Field is
     (
      --  Disable asynchronous DMA request for channel 22
      Edreq_22_0,
      --  Enable asynchronous DMA request for channel 22
      Edreq_22_1)
     with Size => 1;
   for EARS_EDREQ_22_Field use
     (Edreq_22_0 => 0,
      Edreq_22_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 23
   type EARS_EDREQ_23_Field is
     (
      --  Disable asynchronous DMA request for channel 23
      Edreq_23_0,
      --  Enable asynchronous DMA request for channel 23
      Edreq_23_1)
     with Size => 1;
   for EARS_EDREQ_23_Field use
     (Edreq_23_0 => 0,
      Edreq_23_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 24
   type EARS_EDREQ_24_Field is
     (
      --  Disable asynchronous DMA request for channel 24
      Edreq_24_0,
      --  Enable asynchronous DMA request for channel 24
      Edreq_24_1)
     with Size => 1;
   for EARS_EDREQ_24_Field use
     (Edreq_24_0 => 0,
      Edreq_24_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 25
   type EARS_EDREQ_25_Field is
     (
      --  Disable asynchronous DMA request for channel 25
      Edreq_25_0,
      --  Enable asynchronous DMA request for channel 25
      Edreq_25_1)
     with Size => 1;
   for EARS_EDREQ_25_Field use
     (Edreq_25_0 => 0,
      Edreq_25_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 26
   type EARS_EDREQ_26_Field is
     (
      --  Disable asynchronous DMA request for channel 26
      Edreq_26_0,
      --  Enable asynchronous DMA request for channel 26
      Edreq_26_1)
     with Size => 1;
   for EARS_EDREQ_26_Field use
     (Edreq_26_0 => 0,
      Edreq_26_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 27
   type EARS_EDREQ_27_Field is
     (
      --  Disable asynchronous DMA request for channel 27
      Edreq_27_0,
      --  Enable asynchronous DMA request for channel 27
      Edreq_27_1)
     with Size => 1;
   for EARS_EDREQ_27_Field use
     (Edreq_27_0 => 0,
      Edreq_27_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 28
   type EARS_EDREQ_28_Field is
     (
      --  Disable asynchronous DMA request for channel 28
      Edreq_28_0,
      --  Enable asynchronous DMA request for channel 28
      Edreq_28_1)
     with Size => 1;
   for EARS_EDREQ_28_Field use
     (Edreq_28_0 => 0,
      Edreq_28_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 29
   type EARS_EDREQ_29_Field is
     (
      --  Disable asynchronous DMA request for channel 29
      Edreq_29_0,
      --  Enable asynchronous DMA request for channel 29
      Edreq_29_1)
     with Size => 1;
   for EARS_EDREQ_29_Field use
     (Edreq_29_0 => 0,
      Edreq_29_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 30
   type EARS_EDREQ_30_Field is
     (
      --  Disable asynchronous DMA request for channel 30
      Edreq_30_0,
      --  Enable asynchronous DMA request for channel 30
      Edreq_30_1)
     with Size => 1;
   for EARS_EDREQ_30_Field use
     (Edreq_30_0 => 0,
      Edreq_30_1 => 1);

   --  Enable asynchronous DMA request in stop mode for channel 31
   type EARS_EDREQ_31_Field is
     (
      --  Disable asynchronous DMA request for channel 31
      Edreq_31_0,
      --  Enable asynchronous DMA request for channel 31
      Edreq_31_1)
     with Size => 1;
   for EARS_EDREQ_31_Field use
     (Edreq_31_0 => 0,
      Edreq_31_1 => 1);

   --  Enable Asynchronous Request in Stop Register
   type EARS_Register is record
      --  Enable asynchronous DMA request in stop mode for channel 0.
      EDREQ_0  : EARS_EDREQ_0_Field := NRF_SVD.DMA.Edreq_0_0;
      --  Enable asynchronous DMA request in stop mode for channel 1.
      EDREQ_1  : EARS_EDREQ_1_Field := NRF_SVD.DMA.Edreq_1_0;
      --  Enable asynchronous DMA request in stop mode for channel 2.
      EDREQ_2  : EARS_EDREQ_2_Field := NRF_SVD.DMA.Edreq_2_0;
      --  Enable asynchronous DMA request in stop mode for channel 3.
      EDREQ_3  : EARS_EDREQ_3_Field := NRF_SVD.DMA.Edreq_3_0;
      --  Enable asynchronous DMA request in stop mode for channel 4
      EDREQ_4  : EARS_EDREQ_4_Field := NRF_SVD.DMA.Edreq_4_0;
      --  Enable asynchronous DMA request in stop mode for channel 5
      EDREQ_5  : EARS_EDREQ_5_Field := NRF_SVD.DMA.Edreq_5_0;
      --  Enable asynchronous DMA request in stop mode for channel 6
      EDREQ_6  : EARS_EDREQ_6_Field := NRF_SVD.DMA.Edreq_6_0;
      --  Enable asynchronous DMA request in stop mode for channel 7
      EDREQ_7  : EARS_EDREQ_7_Field := NRF_SVD.DMA.Edreq_7_0;
      --  Enable asynchronous DMA request in stop mode for channel 8
      EDREQ_8  : EARS_EDREQ_8_Field := NRF_SVD.DMA.Edreq_8_0;
      --  Enable asynchronous DMA request in stop mode for channel 9
      EDREQ_9  : EARS_EDREQ_9_Field := NRF_SVD.DMA.Edreq_9_0;
      --  Enable asynchronous DMA request in stop mode for channel 10
      EDREQ_10 : EARS_EDREQ_10_Field := NRF_SVD.DMA.Edreq_10_0;
      --  Enable asynchronous DMA request in stop mode for channel 11
      EDREQ_11 : EARS_EDREQ_11_Field := NRF_SVD.DMA.Edreq_11_0;
      --  Enable asynchronous DMA request in stop mode for channel 12
      EDREQ_12 : EARS_EDREQ_12_Field := NRF_SVD.DMA.Edreq_12_0;
      --  Enable asynchronous DMA request in stop mode for channel 13
      EDREQ_13 : EARS_EDREQ_13_Field := NRF_SVD.DMA.Edreq_13_0;
      --  Enable asynchronous DMA request in stop mode for channel 14
      EDREQ_14 : EARS_EDREQ_14_Field := NRF_SVD.DMA.Edreq_14_0;
      --  Enable asynchronous DMA request in stop mode for channel 15
      EDREQ_15 : EARS_EDREQ_15_Field := NRF_SVD.DMA.Edreq_15_0;
      --  Enable asynchronous DMA request in stop mode for channel 16
      EDREQ_16 : EARS_EDREQ_16_Field := NRF_SVD.DMA.Edreq_16_0;
      --  Enable asynchronous DMA request in stop mode for channel 17
      EDREQ_17 : EARS_EDREQ_17_Field := NRF_SVD.DMA.Edreq_17_0;
      --  Enable asynchronous DMA request in stop mode for channel 18
      EDREQ_18 : EARS_EDREQ_18_Field := NRF_SVD.DMA.Edreq_18_0;
      --  Enable asynchronous DMA request in stop mode for channel 19
      EDREQ_19 : EARS_EDREQ_19_Field := NRF_SVD.DMA.Edreq_19_0;
      --  Enable asynchronous DMA request in stop mode for channel 20
      EDREQ_20 : EARS_EDREQ_20_Field := NRF_SVD.DMA.Edreq_20_0;
      --  Enable asynchronous DMA request in stop mode for channel 21
      EDREQ_21 : EARS_EDREQ_21_Field := NRF_SVD.DMA.Edreq_21_0;
      --  Enable asynchronous DMA request in stop mode for channel 22
      EDREQ_22 : EARS_EDREQ_22_Field := NRF_SVD.DMA.Edreq_22_0;
      --  Enable asynchronous DMA request in stop mode for channel 23
      EDREQ_23 : EARS_EDREQ_23_Field := NRF_SVD.DMA.Edreq_23_0;
      --  Enable asynchronous DMA request in stop mode for channel 24
      EDREQ_24 : EARS_EDREQ_24_Field := NRF_SVD.DMA.Edreq_24_0;
      --  Enable asynchronous DMA request in stop mode for channel 25
      EDREQ_25 : EARS_EDREQ_25_Field := NRF_SVD.DMA.Edreq_25_0;
      --  Enable asynchronous DMA request in stop mode for channel 26
      EDREQ_26 : EARS_EDREQ_26_Field := NRF_SVD.DMA.Edreq_26_0;
      --  Enable asynchronous DMA request in stop mode for channel 27
      EDREQ_27 : EARS_EDREQ_27_Field := NRF_SVD.DMA.Edreq_27_0;
      --  Enable asynchronous DMA request in stop mode for channel 28
      EDREQ_28 : EARS_EDREQ_28_Field := NRF_SVD.DMA.Edreq_28_0;
      --  Enable asynchronous DMA request in stop mode for channel 29
      EDREQ_29 : EARS_EDREQ_29_Field := NRF_SVD.DMA.Edreq_29_0;
      --  Enable asynchronous DMA request in stop mode for channel 30
      EDREQ_30 : EARS_EDREQ_30_Field := NRF_SVD.DMA.Edreq_30_0;
      --  Enable asynchronous DMA request in stop mode for channel 31
      EDREQ_31 : EARS_EDREQ_31_Field := NRF_SVD.DMA.Edreq_31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EARS_Register use record
      EDREQ_0  at 0 range 0 .. 0;
      EDREQ_1  at 0 range 1 .. 1;
      EDREQ_2  at 0 range 2 .. 2;
      EDREQ_3  at 0 range 3 .. 3;
      EDREQ_4  at 0 range 4 .. 4;
      EDREQ_5  at 0 range 5 .. 5;
      EDREQ_6  at 0 range 6 .. 6;
      EDREQ_7  at 0 range 7 .. 7;
      EDREQ_8  at 0 range 8 .. 8;
      EDREQ_9  at 0 range 9 .. 9;
      EDREQ_10 at 0 range 10 .. 10;
      EDREQ_11 at 0 range 11 .. 11;
      EDREQ_12 at 0 range 12 .. 12;
      EDREQ_13 at 0 range 13 .. 13;
      EDREQ_14 at 0 range 14 .. 14;
      EDREQ_15 at 0 range 15 .. 15;
      EDREQ_16 at 0 range 16 .. 16;
      EDREQ_17 at 0 range 17 .. 17;
      EDREQ_18 at 0 range 18 .. 18;
      EDREQ_19 at 0 range 19 .. 19;
      EDREQ_20 at 0 range 20 .. 20;
      EDREQ_21 at 0 range 21 .. 21;
      EDREQ_22 at 0 range 22 .. 22;
      EDREQ_23 at 0 range 23 .. 23;
      EDREQ_24 at 0 range 24 .. 24;
      EDREQ_25 at 0 range 25 .. 25;
      EDREQ_26 at 0 range 26 .. 26;
      EDREQ_27 at 0 range 27 .. 27;
      EDREQ_28 at 0 range 28 .. 28;
      EDREQ_29 at 0 range 29 .. 29;
      EDREQ_30 at 0 range 30 .. 30;
      EDREQ_31 at 0 range 31 .. 31;
   end record;

   subtype DCHPRI_CHPRI_Field is HAL.UInt4;
   subtype DCHPRI_GRPPRI_Field is HAL.UInt2;

   --  Disable Preempt Ability. This field resets to 0.
   type DCHPRI_DPA_Field is
     (
      --  Channel n can suspend a lower priority channel.
      Dpa_0,
      --  Channel n cannot suspend any channel, regardless of channel priority.
      Dpa_1)
     with Size => 1;
   for DCHPRI_DPA_Field use
     (Dpa_0 => 0,
      Dpa_1 => 1);

   --  Enable Channel Preemption. This field resets to 0.
   type DCHPRI_ECP_Field is
     (
      --  Channel n cannot be suspended by a higher priority channel's service
      --  request.
      Ecp_0,
      --  Channel n can be temporarily suspended by the service request of a
      --  higher priority channel.
      Ecp_1)
     with Size => 1;
   for DCHPRI_ECP_Field use
     (Ecp_0 => 0,
      Ecp_1 => 1);

   --  Channel n Priority Register
   type DCHPRI_Register is record
      --  Channel n Arbitration Priority
      CHPRI  : DCHPRI_CHPRI_Field := 16#3#;
      --  Read-only. Channel n Current Group Priority
      GRPPRI : DCHPRI_GRPPRI_Field := 16#0#;
      --  Disable Preempt Ability. This field resets to 0.
      DPA    : DCHPRI_DPA_Field := NRF_SVD.DMA.Dpa_0;
      --  Enable Channel Preemption. This field resets to 0.
      ECP    : DCHPRI_ECP_Field := NRF_SVD.DMA.Ecp_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DCHPRI_Register use record
      CHPRI  at 0 range 0 .. 3;
      GRPPRI at 0 range 4 .. 5;
      DPA    at 0 range 6 .. 6;
      ECP    at 0 range 7 .. 7;
   end record;

   --  Channel n Priority Register
   type DCHPRI_Registers is array (0 .. 31) of DCHPRI_Register
     with Volatile;

   subtype TCD0_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD0_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD0_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD0_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD0_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD0_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD0_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD0_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD0_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD0_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD0_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD0_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD0_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD0_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD0_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD0_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD0_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD0_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD0_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD0_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD0_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD0_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD0_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD0_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD0_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD0_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD0_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD0_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD0_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD0_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD0_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD0_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD0_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD0_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD0_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD0_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD0_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD0_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD0_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD0_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD0_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD0_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD0_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD0_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD0_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD0_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD0_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD0_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD0_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD0_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD0_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD0_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD0_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD0_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD0_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD0_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD0_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD0_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD0_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD0_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD0_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD0_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD0_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD0_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD0_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD0_CSR_Register is record
      --  Channel Start
      START          : TCD0_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD0_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD0_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD0_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD0_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD0_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD0_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD0_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD0_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD0_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD0_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD0_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD0_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD0_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD0_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD0_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD0_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD0_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD0_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD0_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD0_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD0_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD0_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD0_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD0_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD1_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD1_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD1_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD1_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD1_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD1_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD1_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD1_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD1_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD1_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD1_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD1_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD1_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD1_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD1_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD1_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD1_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD1_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD1_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD1_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD1_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD1_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD1_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD1_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD1_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD1_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD1_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD1_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD1_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD1_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD1_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD1_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD1_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD1_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD1_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD1_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD1_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD1_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD1_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD1_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD1_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD1_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD1_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD1_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD1_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD1_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD1_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD1_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD1_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD1_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD1_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD1_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD1_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD1_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD1_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD1_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD1_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD1_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD1_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD1_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD1_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD1_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD1_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD1_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD1_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD1_CSR_Register is record
      --  Channel Start
      START          : TCD1_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD1_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD1_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD1_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD1_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD1_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD1_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD1_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD1_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD1_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD1_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD1_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD1_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD1_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD1_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD1_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD1_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD1_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD1_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD1_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD1_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD1_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD1_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD1_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD1_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD2_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD2_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD2_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD2_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD2_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD2_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD2_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD2_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD2_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD2_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD2_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD2_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD2_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD2_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD2_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD2_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD2_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD2_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD2_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD2_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD2_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD2_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD2_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD2_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD2_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD2_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD2_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD2_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD2_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD2_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD2_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD2_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD2_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD2_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD2_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD2_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD2_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD2_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD2_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD2_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD2_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD2_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD2_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD2_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD2_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD2_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD2_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD2_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD2_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD2_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD2_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD2_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD2_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD2_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD2_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD2_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD2_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD2_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD2_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD2_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD2_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD2_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD2_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD2_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD2_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD2_CSR_Register is record
      --  Channel Start
      START          : TCD2_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD2_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD2_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD2_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD2_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD2_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD2_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD2_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD2_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD2_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD2_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD2_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD2_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD2_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD2_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD2_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD2_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD2_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD2_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD2_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD2_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD2_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD2_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD2_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD2_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD3_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD3_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD3_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD3_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD3_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD3_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD3_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD3_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD3_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD3_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD3_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD3_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD3_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD3_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD3_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD3_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD3_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD3_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD3_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD3_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD3_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD3_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD3_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD3_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD3_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD3_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD3_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD3_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD3_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD3_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD3_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD3_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD3_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD3_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD3_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD3_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD3_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD3_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD3_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD3_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD3_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD3_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD3_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD3_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD3_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD3_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD3_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD3_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD3_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD3_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD3_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD3_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD3_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD3_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD3_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD3_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD3_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD3_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD3_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD3_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD3_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD3_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD3_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD3_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD3_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD3_CSR_Register is record
      --  Channel Start
      START          : TCD3_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD3_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD3_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD3_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD3_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD3_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD3_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD3_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD3_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD3_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD3_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD3_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD3_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD3_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD3_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD3_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD3_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD3_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD3_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD3_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD3_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD3_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD3_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD3_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD3_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD4_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD4_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD4_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD4_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD4_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD4_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD4_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD4_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD4_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD4_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD4_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD4_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD4_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD4_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD4_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD4_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD4_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD4_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD4_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD4_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD4_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD4_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD4_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD4_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD4_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD4_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD4_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD4_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD4_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD4_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD4_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD4_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD4_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD4_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD4_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD4_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD4_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD4_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD4_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD4_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD4_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD4_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD4_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD4_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD4_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD4_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD4_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD4_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD4_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD4_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD4_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD4_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD4_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD4_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD4_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD4_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD4_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD4_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD4_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD4_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD4_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD4_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD4_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD4_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD4_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD4_CSR_Register is record
      --  Channel Start
      START          : TCD4_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD4_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD4_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD4_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD4_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD4_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD4_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD4_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD4_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD4_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD4_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD4_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD4_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD4_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD4_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD4_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD4_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD4_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD4_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD4_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD4_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD4_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD4_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD4_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD4_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD5_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD5_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD5_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD5_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD5_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD5_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD5_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD5_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD5_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD5_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD5_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD5_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD5_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD5_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD5_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD5_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD5_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD5_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD5_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD5_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD5_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD5_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD5_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD5_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD5_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD5_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD5_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD5_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD5_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD5_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD5_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD5_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD5_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD5_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD5_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD5_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD5_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD5_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD5_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD5_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD5_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD5_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD5_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD5_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD5_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD5_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD5_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD5_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD5_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD5_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD5_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD5_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD5_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD5_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD5_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD5_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD5_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD5_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD5_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD5_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD5_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD5_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD5_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD5_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD5_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD5_CSR_Register is record
      --  Channel Start
      START          : TCD5_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD5_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD5_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD5_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD5_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD5_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD5_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD5_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD5_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD5_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD5_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD5_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD5_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD5_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD5_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD5_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD5_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD5_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD5_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD5_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD5_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD5_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD5_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD5_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD5_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD6_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD6_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD6_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD6_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD6_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD6_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD6_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD6_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD6_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD6_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD6_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD6_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD6_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD6_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD6_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD6_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD6_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD6_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD6_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD6_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD6_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD6_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD6_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD6_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD6_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD6_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD6_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD6_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD6_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD6_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD6_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD6_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD6_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD6_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD6_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD6_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD6_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD6_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD6_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD6_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD6_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD6_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD6_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD6_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD6_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD6_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD6_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD6_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD6_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD6_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD6_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD6_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD6_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD6_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD6_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD6_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD6_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD6_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD6_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD6_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD6_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD6_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD6_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD6_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD6_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD6_CSR_Register is record
      --  Channel Start
      START          : TCD6_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD6_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD6_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD6_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD6_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD6_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD6_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD6_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD6_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD6_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD6_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD6_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD6_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD6_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD6_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD6_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD6_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD6_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD6_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD6_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD6_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD6_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD6_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD6_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD6_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD7_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD7_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD7_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD7_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD7_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD7_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD7_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD7_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD7_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD7_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD7_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD7_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD7_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD7_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD7_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD7_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD7_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD7_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD7_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD7_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD7_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD7_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD7_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD7_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD7_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD7_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD7_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD7_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD7_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD7_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD7_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD7_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD7_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD7_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD7_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD7_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD7_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD7_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD7_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD7_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD7_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD7_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD7_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD7_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD7_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD7_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD7_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD7_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD7_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD7_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD7_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD7_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD7_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD7_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD7_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD7_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD7_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD7_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD7_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD7_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD7_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD7_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD7_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD7_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD7_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD7_CSR_Register is record
      --  Channel Start
      START          : TCD7_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD7_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD7_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD7_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD7_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD7_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD7_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD7_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD7_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD7_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD7_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD7_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD7_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD7_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD7_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD7_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD7_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD7_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD7_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD7_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD7_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD7_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD7_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD7_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD7_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD8_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD8_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD8_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD8_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD8_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD8_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD8_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD8_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD8_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD8_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD8_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD8_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD8_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD8_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD8_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD8_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD8_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD8_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD8_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD8_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD8_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD8_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD8_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD8_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD8_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD8_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD8_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD8_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD8_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD8_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD8_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD8_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD8_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD8_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD8_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD8_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD8_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD8_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD8_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD8_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD8_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD8_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD8_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD8_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD8_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD8_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD8_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD8_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD8_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD8_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD8_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD8_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD8_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD8_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD8_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD8_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD8_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD8_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD8_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD8_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD8_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD8_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD8_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD8_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD8_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD8_CSR_Register is record
      --  Channel Start
      START          : TCD8_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD8_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD8_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD8_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD8_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD8_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD8_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD8_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD8_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD8_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD8_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD8_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD8_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD8_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD8_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD8_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD8_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD8_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD8_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD8_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD8_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD8_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD8_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD8_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD8_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD9_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD9_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD9_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD9_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD9_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD9_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD9_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD9_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD9_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD9_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD9_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD9_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD9_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD9_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD9_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD9_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD9_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD9_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD9_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD9_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD9_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD9_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD9_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD9_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD9_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD9_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD9_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD9_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD9_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD9_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD9_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD9_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD9_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD9_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD9_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD9_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD9_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD9_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD9_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD9_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD9_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD9_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD9_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD9_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD9_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD9_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD9_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD9_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD9_CITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD9_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD9_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD9_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD9_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD9_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD9_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD9_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD9_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD9_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD9_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD9_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD9_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD9_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD9_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD9_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD9_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD9_CSR_Register is record
      --  Channel Start
      START          : TCD9_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD9_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD9_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD9_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD9_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD9_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD9_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD9_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD9_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD9_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD9_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD9_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD9_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD9_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD9_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD9_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD9_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD9_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD9_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD9_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD9_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD9_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD9_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD9_BITER_ELINKYES_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD9_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD10_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD10_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD10_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD10_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD10_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD10_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD10_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD10_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD10_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD10_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD10_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD10_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD10_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD10_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD10_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD10_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD10_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD10_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD10_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD10_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD10_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD10_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD10_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD10_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD10_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD10_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD10_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD10_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD10_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD10_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD10_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD10_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD10_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD10_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD10_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD10_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD10_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD10_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD10_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD10_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD10_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD10_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD10_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD10_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD10_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD10_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD10_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD10_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD10_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD10_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD10_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD10_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD10_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD10_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD10_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD10_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD10_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD10_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD10_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD10_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD10_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD10_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD10_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD10_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD10_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD10_CSR_Register is record
      --  Channel Start
      START          : TCD10_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD10_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD10_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD10_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD10_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD10_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD10_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD10_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD10_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD10_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD10_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD10_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD10_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD10_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD10_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD10_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD10_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD10_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD10_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD10_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD10_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD10_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD10_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD10_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD10_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD11_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD11_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD11_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD11_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD11_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD11_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD11_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD11_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD11_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD11_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD11_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD11_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD11_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD11_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD11_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD11_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD11_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD11_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD11_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD11_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD11_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD11_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD11_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD11_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD11_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD11_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD11_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD11_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD11_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD11_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD11_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD11_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD11_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD11_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD11_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD11_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD11_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD11_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD11_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD11_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD11_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD11_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD11_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD11_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD11_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD11_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD11_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD11_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD11_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD11_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD11_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD11_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD11_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD11_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD11_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD11_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD11_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD11_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD11_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD11_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD11_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD11_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD11_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD11_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD11_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD11_CSR_Register is record
      --  Channel Start
      START          : TCD11_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD11_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD11_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD11_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD11_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD11_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD11_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD11_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD11_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD11_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD11_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD11_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD11_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD11_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD11_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD11_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD11_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD11_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD11_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD11_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD11_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD11_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD11_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD11_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD11_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD12_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD12_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD12_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD12_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD12_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD12_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD12_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD12_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD12_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD12_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD12_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD12_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD12_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD12_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD12_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD12_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD12_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD12_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD12_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD12_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD12_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD12_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD12_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD12_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD12_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD12_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD12_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD12_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD12_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD12_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD12_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD12_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD12_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD12_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD12_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD12_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD12_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD12_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD12_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD12_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD12_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD12_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD12_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD12_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD12_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD12_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD12_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD12_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD12_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD12_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD12_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD12_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD12_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD12_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD12_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD12_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD12_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD12_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD12_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD12_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD12_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD12_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD12_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD12_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD12_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD12_CSR_Register is record
      --  Channel Start
      START          : TCD12_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD12_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD12_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD12_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD12_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD12_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD12_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD12_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD12_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD12_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD12_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD12_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD12_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD12_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD12_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD12_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD12_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD12_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD12_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD12_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD12_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD12_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD12_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD12_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD12_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD13_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD13_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD13_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD13_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD13_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD13_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD13_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD13_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD13_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD13_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD13_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD13_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD13_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD13_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD13_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD13_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD13_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD13_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD13_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD13_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD13_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD13_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD13_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD13_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD13_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD13_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD13_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD13_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD13_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD13_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD13_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD13_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD13_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD13_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD13_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD13_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD13_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD13_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD13_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD13_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD13_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD13_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD13_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD13_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD13_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD13_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD13_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD13_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD13_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD13_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD13_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD13_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD13_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD13_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD13_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD13_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD13_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD13_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD13_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD13_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD13_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD13_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD13_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD13_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD13_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD13_CSR_Register is record
      --  Channel Start
      START          : TCD13_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD13_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD13_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD13_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD13_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD13_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD13_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD13_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD13_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD13_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD13_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD13_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD13_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD13_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD13_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD13_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD13_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD13_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD13_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD13_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD13_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD13_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD13_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD13_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD13_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD14_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD14_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD14_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD14_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD14_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD14_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD14_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD14_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD14_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD14_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD14_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD14_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD14_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD14_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD14_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD14_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD14_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD14_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD14_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD14_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD14_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD14_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD14_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD14_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD14_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD14_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD14_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD14_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD14_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD14_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD14_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD14_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD14_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD14_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD14_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD14_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD14_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD14_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD14_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD14_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD14_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD14_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD14_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD14_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD14_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD14_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD14_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD14_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD14_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD14_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD14_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD14_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD14_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD14_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD14_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD14_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD14_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD14_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD14_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD14_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD14_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD14_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD14_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD14_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD14_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD14_CSR_Register is record
      --  Channel Start
      START          : TCD14_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD14_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD14_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD14_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD14_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD14_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD14_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD14_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD14_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD14_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD14_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD14_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD14_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD14_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD14_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD14_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD14_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD14_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD14_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD14_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD14_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD14_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD14_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD14_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD14_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD15_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD15_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD15_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD15_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD15_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD15_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD15_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD15_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD15_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD15_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD15_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD15_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD15_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD15_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD15_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD15_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD15_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD15_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD15_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD15_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD15_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD15_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD15_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD15_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD15_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD15_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD15_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD15_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD15_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD15_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD15_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD15_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD15_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD15_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD15_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD15_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD15_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD15_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD15_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD15_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD15_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD15_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD15_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD15_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD15_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD15_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD15_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD15_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD15_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD15_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD15_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD15_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD15_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD15_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD15_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD15_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD15_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD15_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD15_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD15_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD15_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD15_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD15_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD15_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD15_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD15_CSR_Register is record
      --  Channel Start
      START          : TCD15_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD15_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD15_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD15_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD15_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD15_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD15_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD15_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD15_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD15_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD15_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD15_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD15_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD15_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD15_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD15_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD15_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD15_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD15_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD15_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD15_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD15_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD15_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD15_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD15_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD16_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD16_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD16_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD16_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD16_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD16_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD16_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD16_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD16_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD16_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD16_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD16_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD16_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD16_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD16_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD16_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD16_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD16_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD16_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD16_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD16_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD16_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD16_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD16_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD16_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD16_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD16_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD16_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD16_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD16_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD16_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD16_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD16_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD16_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD16_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD16_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD16_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD16_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD16_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD16_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD16_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD16_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD16_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD16_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD16_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD16_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD16_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD16_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD16_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD16_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD16_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD16_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD16_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD16_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD16_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD16_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD16_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD16_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD16_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD16_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD16_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD16_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD16_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD16_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD16_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD16_CSR_Register is record
      --  Channel Start
      START          : TCD16_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD16_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD16_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD16_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD16_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD16_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD16_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD16_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD16_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD16_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD16_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD16_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD16_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD16_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD16_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD16_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD16_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD16_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD16_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD16_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD16_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD16_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD16_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD16_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD16_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD17_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD17_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD17_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD17_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD17_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD17_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD17_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD17_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD17_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD17_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD17_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD17_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD17_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD17_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD17_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD17_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD17_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD17_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD17_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD17_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD17_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD17_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD17_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD17_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD17_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD17_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD17_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD17_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD17_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD17_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD17_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD17_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD17_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD17_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD17_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD17_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD17_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD17_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD17_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD17_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD17_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD17_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD17_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD17_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD17_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD17_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD17_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD17_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD17_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD17_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD17_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD17_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD17_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD17_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD17_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD17_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD17_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD17_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD17_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD17_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD17_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD17_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD17_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD17_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD17_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD17_CSR_Register is record
      --  Channel Start
      START          : TCD17_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD17_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD17_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD17_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD17_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD17_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD17_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD17_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD17_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD17_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD17_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD17_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD17_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD17_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD17_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD17_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD17_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD17_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD17_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD17_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD17_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD17_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD17_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD17_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD17_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD18_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD18_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD18_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD18_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD18_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD18_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD18_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD18_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD18_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD18_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD18_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD18_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD18_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD18_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD18_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD18_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD18_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD18_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD18_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD18_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD18_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD18_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD18_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD18_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD18_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD18_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD18_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD18_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD18_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD18_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD18_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD18_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD18_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD18_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD18_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD18_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD18_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD18_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD18_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD18_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD18_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD18_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD18_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD18_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD18_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD18_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD18_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD18_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD18_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD18_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD18_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD18_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD18_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD18_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD18_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD18_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD18_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD18_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD18_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD18_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD18_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD18_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD18_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD18_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD18_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD18_CSR_Register is record
      --  Channel Start
      START          : TCD18_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD18_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD18_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD18_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD18_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD18_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD18_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD18_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD18_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD18_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD18_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD18_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD18_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD18_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD18_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD18_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD18_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD18_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD18_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD18_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD18_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD18_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD18_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD18_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD18_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD19_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD19_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD19_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD19_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD19_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD19_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD19_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD19_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD19_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD19_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD19_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD19_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD19_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD19_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD19_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD19_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD19_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD19_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD19_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD19_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD19_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD19_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD19_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD19_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD19_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD19_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD19_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD19_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD19_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD19_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD19_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD19_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD19_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD19_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD19_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD19_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD19_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD19_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD19_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD19_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD19_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD19_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD19_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD19_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD19_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD19_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD19_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD19_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD19_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD19_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD19_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD19_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD19_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD19_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD19_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD19_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD19_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD19_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD19_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD19_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD19_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD19_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD19_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD19_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD19_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD19_CSR_Register is record
      --  Channel Start
      START          : TCD19_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD19_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD19_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD19_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD19_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD19_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD19_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD19_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD19_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD19_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD19_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD19_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD19_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD19_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD19_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD19_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD19_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD19_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD19_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD19_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD19_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD19_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD19_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD19_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD19_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD20_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD20_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD20_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD20_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD20_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD20_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD20_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD20_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD20_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD20_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD20_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD20_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD20_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD20_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD20_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD20_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD20_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD20_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD20_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD20_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD20_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD20_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD20_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD20_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD20_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD20_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD20_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD20_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD20_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD20_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD20_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD20_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD20_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD20_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD20_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD20_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD20_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD20_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD20_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD20_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD20_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD20_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD20_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD20_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD20_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD20_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD20_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD20_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD20_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD20_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD20_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD20_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD20_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD20_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD20_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD20_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD20_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD20_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD20_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD20_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD20_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD20_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD20_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD20_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD20_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD20_CSR_Register is record
      --  Channel Start
      START          : TCD20_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD20_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD20_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD20_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD20_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD20_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD20_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD20_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD20_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD20_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD20_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD20_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD20_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD20_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD20_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD20_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD20_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD20_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD20_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD20_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD20_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD20_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD20_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD20_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD20_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD21_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD21_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD21_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD21_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD21_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD21_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD21_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD21_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD21_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD21_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD21_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD21_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD21_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD21_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD21_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD21_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD21_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD21_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD21_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD21_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD21_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD21_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD21_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD21_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD21_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD21_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD21_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD21_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD21_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD21_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD21_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD21_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD21_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD21_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD21_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD21_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD21_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD21_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD21_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD21_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD21_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD21_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD21_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD21_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD21_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD21_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD21_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD21_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD21_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD21_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD21_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD21_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD21_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD21_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD21_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD21_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD21_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD21_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD21_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD21_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD21_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD21_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD21_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD21_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD21_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD21_CSR_Register is record
      --  Channel Start
      START          : TCD21_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD21_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD21_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD21_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD21_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD21_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD21_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD21_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD21_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD21_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD21_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD21_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD21_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD21_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD21_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD21_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD21_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD21_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD21_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD21_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD21_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD21_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD21_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD21_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD21_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD22_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD22_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD22_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD22_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD22_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD22_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD22_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD22_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD22_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD22_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD22_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD22_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD22_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD22_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD22_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD22_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD22_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD22_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD22_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD22_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD22_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD22_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD22_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD22_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD22_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD22_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD22_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD22_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD22_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD22_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD22_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD22_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD22_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD22_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD22_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD22_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD22_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD22_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD22_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD22_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD22_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD22_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD22_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD22_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD22_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD22_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD22_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD22_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD22_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD22_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD22_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD22_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD22_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD22_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD22_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD22_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD22_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD22_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD22_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD22_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD22_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD22_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD22_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD22_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD22_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD22_CSR_Register is record
      --  Channel Start
      START          : TCD22_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD22_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD22_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD22_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD22_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD22_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD22_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD22_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD22_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD22_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD22_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD22_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD22_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD22_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD22_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD22_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD22_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD22_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD22_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD22_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD22_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD22_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD22_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD22_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD22_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD23_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD23_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD23_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD23_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD23_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD23_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD23_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD23_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD23_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD23_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD23_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD23_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD23_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD23_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD23_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD23_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD23_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD23_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD23_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD23_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD23_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD23_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD23_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD23_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD23_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD23_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD23_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD23_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD23_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD23_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD23_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD23_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD23_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD23_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD23_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD23_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD23_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD23_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD23_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD23_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD23_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD23_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD23_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD23_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD23_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD23_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD23_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD23_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD23_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD23_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD23_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD23_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD23_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD23_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD23_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD23_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD23_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD23_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD23_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD23_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD23_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD23_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD23_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD23_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD23_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD23_CSR_Register is record
      --  Channel Start
      START          : TCD23_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD23_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD23_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD23_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD23_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD23_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD23_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD23_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD23_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD23_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD23_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD23_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD23_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD23_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD23_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD23_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD23_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD23_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD23_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD23_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD23_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD23_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD23_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD23_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD23_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD24_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD24_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD24_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD24_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD24_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD24_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD24_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD24_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD24_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD24_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD24_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD24_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD24_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD24_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD24_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD24_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD24_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD24_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD24_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD24_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD24_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD24_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD24_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD24_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD24_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD24_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD24_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD24_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD24_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD24_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD24_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD24_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD24_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD24_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD24_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD24_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD24_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD24_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD24_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD24_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD24_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD24_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD24_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD24_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD24_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD24_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD24_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD24_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD24_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD24_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD24_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD24_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD24_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD24_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD24_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD24_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD24_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD24_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD24_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD24_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD24_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD24_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD24_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD24_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD24_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD24_CSR_Register is record
      --  Channel Start
      START          : TCD24_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD24_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD24_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD24_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD24_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD24_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD24_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD24_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD24_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD24_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD24_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD24_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD24_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD24_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD24_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD24_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD24_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD24_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD24_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD24_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD24_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD24_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD24_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD24_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD24_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD25_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD25_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD25_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD25_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD25_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD25_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD25_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD25_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD25_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD25_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD25_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD25_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD25_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD25_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD25_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD25_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD25_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD25_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD25_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD25_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD25_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD25_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD25_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD25_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD25_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD25_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD25_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD25_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD25_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD25_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD25_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD25_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD25_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD25_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD25_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD25_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD25_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD25_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD25_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD25_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD25_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD25_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD25_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD25_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD25_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD25_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD25_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD25_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD25_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD25_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD25_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD25_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD25_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD25_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD25_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD25_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD25_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD25_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD25_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD25_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD25_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD25_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD25_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD25_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD25_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD25_CSR_Register is record
      --  Channel Start
      START          : TCD25_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD25_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD25_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD25_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD25_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD25_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD25_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD25_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD25_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD25_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD25_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD25_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD25_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD25_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD25_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD25_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD25_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD25_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD25_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD25_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD25_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD25_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD25_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD25_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD25_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD26_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD26_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD26_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD26_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD26_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD26_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD26_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD26_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD26_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD26_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD26_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD26_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD26_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD26_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD26_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD26_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD26_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD26_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD26_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD26_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD26_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD26_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD26_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD26_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD26_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD26_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD26_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD26_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD26_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD26_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD26_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD26_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD26_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD26_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD26_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD26_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD26_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD26_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD26_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD26_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD26_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD26_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD26_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD26_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD26_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD26_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD26_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD26_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD26_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD26_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD26_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD26_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD26_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD26_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD26_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD26_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD26_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD26_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD26_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD26_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD26_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD26_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD26_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD26_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD26_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD26_CSR_Register is record
      --  Channel Start
      START          : TCD26_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD26_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD26_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD26_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD26_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD26_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD26_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD26_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD26_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD26_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD26_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD26_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD26_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD26_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD26_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD26_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD26_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD26_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD26_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD26_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD26_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD26_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD26_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD26_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD26_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD27_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD27_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD27_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD27_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD27_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD27_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD27_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD27_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD27_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD27_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD27_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD27_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD27_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD27_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD27_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD27_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD27_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD27_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD27_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD27_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD27_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD27_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD27_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD27_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD27_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD27_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD27_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD27_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD27_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD27_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD27_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD27_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD27_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD27_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD27_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD27_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD27_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD27_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD27_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD27_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD27_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD27_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD27_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD27_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD27_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD27_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD27_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD27_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD27_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD27_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD27_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD27_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD27_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD27_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD27_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD27_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD27_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD27_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD27_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD27_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD27_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD27_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD27_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD27_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD27_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD27_CSR_Register is record
      --  Channel Start
      START          : TCD27_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD27_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD27_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD27_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD27_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD27_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD27_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD27_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD27_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD27_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD27_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD27_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD27_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD27_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD27_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD27_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD27_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD27_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD27_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD27_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD27_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD27_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD27_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD27_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD27_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD28_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD28_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD28_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD28_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD28_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD28_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD28_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD28_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD28_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD28_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD28_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD28_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD28_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD28_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD28_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD28_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD28_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD28_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD28_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD28_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD28_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD28_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD28_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD28_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD28_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD28_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD28_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD28_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD28_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD28_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD28_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD28_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD28_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD28_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD28_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD28_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD28_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD28_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD28_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD28_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD28_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD28_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD28_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD28_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD28_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD28_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD28_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD28_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD28_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD28_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD28_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD28_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD28_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD28_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD28_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD28_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD28_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD28_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD28_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD28_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD28_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD28_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD28_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD28_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD28_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD28_CSR_Register is record
      --  Channel Start
      START          : TCD28_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD28_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD28_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD28_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD28_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD28_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD28_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD28_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD28_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD28_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD28_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD28_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD28_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD28_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD28_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD28_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD28_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD28_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD28_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD28_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD28_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD28_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD28_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD28_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD28_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD29_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD29_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD29_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD29_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD29_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD29_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD29_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD29_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD29_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD29_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD29_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD29_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD29_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD29_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD29_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD29_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD29_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD29_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD29_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD29_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD29_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD29_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD29_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD29_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD29_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD29_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD29_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD29_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD29_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD29_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD29_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD29_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD29_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD29_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD29_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD29_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD29_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD29_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD29_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD29_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD29_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD29_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD29_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD29_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD29_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD29_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD29_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD29_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD29_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD29_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD29_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD29_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD29_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD29_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD29_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD29_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD29_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD29_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD29_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD29_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD29_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD29_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD29_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD29_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD29_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD29_CSR_Register is record
      --  Channel Start
      START          : TCD29_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD29_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD29_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD29_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD29_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD29_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD29_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD29_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD29_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD29_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD29_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD29_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD29_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD29_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD29_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD29_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD29_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD29_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD29_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD29_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD29_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD29_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD29_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD29_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD29_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD30_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD30_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD30_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD30_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD30_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD30_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD30_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD30_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD30_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD30_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD30_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD30_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD30_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD30_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD30_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD30_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD30_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD30_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD30_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD30_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD30_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD30_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD30_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD30_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD30_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD30_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD30_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD30_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD30_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD30_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD30_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD30_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD30_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD30_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD30_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD30_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD30_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD30_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD30_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD30_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD30_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD30_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD30_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD30_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD30_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD30_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD30_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD30_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD30_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD30_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD30_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD30_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD30_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD30_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD30_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD30_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD30_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD30_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD30_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD30_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD30_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD30_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD30_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD30_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD30_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD30_CSR_Register is record
      --  Channel Start
      START          : TCD30_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD30_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD30_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD30_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD30_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD30_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD30_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD30_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD30_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD30_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD30_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD30_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD30_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD30_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD30_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD30_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD30_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD30_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD30_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD30_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD30_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD30_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD30_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD30_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD30_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   subtype TCD31_ATTR_DSIZE_Field is HAL.UInt3;
   subtype TCD31_ATTR_DMOD_Field is HAL.UInt5;

   --  Source data transfer size
   type TCD31_ATTR_SSIZE_Field is
     (
      --  8-bit
      Ssize_0,
      --  16-bit
      Ssize_1,
      --  32-bit
      Ssize_2,
      --  no description available
      Ssize_3,
      --  no description available
      Ssize_5)
     with Size => 3;
   for TCD31_ATTR_SSIZE_Field use
     (Ssize_0 => 0,
      Ssize_1 => 1,
      Ssize_2 => 2,
      Ssize_3 => 3,
      Ssize_5 => 5);

   --  Source Address Modulo
   type TCD31_ATTR_SMOD_Field is
     (
      --  Source address modulo feature is disabled
      Smod_0,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_1,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_2,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_3,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_4,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_5,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_6,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_7,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_8,
      --  This value defines a specific address range specified to be the value
      --  after SADDR + SOFF calculation is performed on the original register
      --  value. Setting this field provides the ability to implement a
      --  circular data queue easily. For data queues requiring power-of-2 size
      --  bytes, the queue should start at a 0-modulo-size address and the SMOD
      --  field should be set to the appropriate value for the queue, freezing
      --  the desired number of upper address bits. The value programmed into
      --  this field specifies the number of lower address bits allowed to
      --  change. For a circular queue application, the SOFF is typically set
      --  to the transfer size to implement post-increment addressing with the
      --  SMOD function constraining the addresses to a 0-modulo-size range.
      Smod_9)
     with Size => 5;
   for TCD31_ATTR_SMOD_Field use
     (Smod_0 => 0,
      Smod_1 => 1,
      Smod_2 => 2,
      Smod_3 => 3,
      Smod_4 => 4,
      Smod_5 => 5,
      Smod_6 => 6,
      Smod_7 => 7,
      Smod_8 => 8,
      Smod_9 => 9);

   --  TCD Transfer Attributes
   type TCD31_ATTR_Register is record
      --  Destination data transfer size
      DSIZE : TCD31_ATTR_DSIZE_Field := 16#0#;
      --  Destination Address Modulo
      DMOD  : TCD31_ATTR_DMOD_Field := 16#0#;
      --  Source data transfer size
      SSIZE : TCD31_ATTR_SSIZE_Field := NRF_SVD.DMA.Ssize_0;
      --  Source Address Modulo
      SMOD  : TCD31_ATTR_SMOD_Field := NRF_SVD.DMA.Smod_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD31_ATTR_Register use record
      DSIZE at 0 range 0 .. 2;
      DMOD  at 0 range 3 .. 7;
      SSIZE at 0 range 8 .. 10;
      SMOD  at 0 range 11 .. 15;
   end record;

   subtype TCD31_NBYTES_MLOFFNO_NBYTES_Field is HAL.UInt30;

   --  Destination Minor Loop Offset enable
   type TCD31_NBYTES_MLOFFNO_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD31_NBYTES_MLOFFNO_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD31_NBYTES_MLOFFNO_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD31_NBYTES_MLOFFNO_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and Offset
   --  Disabled)
   type TCD31_NBYTES_MLOFFNO_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD31_NBYTES_MLOFFNO_NBYTES_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD31_NBYTES_MLOFFNO_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD31_NBYTES_MLOFFNO_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD31_NBYTES_MLOFFNO_Register use record
      NBYTES at 0 range 0 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD31_NBYTES_MLOFFYES_NBYTES_Field is HAL.UInt10;
   subtype TCD31_NBYTES_MLOFFYES_MLOFF_Field is HAL.UInt20;

   --  Destination Minor Loop Offset enable
   type TCD31_NBYTES_MLOFFYES_DMLOE_Field is
     (
      --  The minor loop offset is not applied to the DADDR
      Dmloe_0,
      --  The minor loop offset is applied to the DADDR
      Dmloe_1)
     with Size => 1;
   for TCD31_NBYTES_MLOFFYES_DMLOE_Field use
     (Dmloe_0 => 0,
      Dmloe_1 => 1);

   --  Source Minor Loop Offset Enable
   type TCD31_NBYTES_MLOFFYES_SMLOE_Field is
     (
      --  The minor loop offset is not applied to the SADDR
      Smloe_0,
      --  The minor loop offset is applied to the SADDR
      Smloe_1)
     with Size => 1;
   for TCD31_NBYTES_MLOFFYES_SMLOE_Field use
     (Smloe_0 => 0,
      Smloe_1 => 1);

   --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset Enabled)
   type TCD31_NBYTES_MLOFFYES_Register is record
      --  Minor Byte Transfer Count
      NBYTES : TCD31_NBYTES_MLOFFYES_NBYTES_Field := 16#0#;
      --  If SMLOE or DMLOE is set, this field represents a sign-extended
      --  offset applied to the source or destination address to form the
      --  next-state value after the minor loop completes.
      MLOFF  : TCD31_NBYTES_MLOFFYES_MLOFF_Field := 16#0#;
      --  Destination Minor Loop Offset enable
      DMLOE  : TCD31_NBYTES_MLOFFYES_DMLOE_Field := NRF_SVD.DMA.Dmloe_0;
      --  Source Minor Loop Offset Enable
      SMLOE  : TCD31_NBYTES_MLOFFYES_SMLOE_Field := NRF_SVD.DMA.Smloe_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCD31_NBYTES_MLOFFYES_Register use record
      NBYTES at 0 range 0 .. 9;
      MLOFF  at 0 range 10 .. 29;
      DMLOE  at 0 range 30 .. 30;
      SMLOE  at 0 range 31 .. 31;
   end record;

   subtype TCD31_CITER_ELINKNO_CITER_Field is HAL.UInt15;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD31_CITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD31_CITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Disabled)
   type TCD31_CITER_ELINKNO_Register is record
      --  Current Major Iteration Count
      CITER : TCD31_CITER_ELINKNO_CITER_Field := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK : TCD31_CITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD31_CITER_ELINKNO_Register use record
      CITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD31_CITER_ELINKYES_CITER_Field is HAL.UInt9;
   subtype TCD31_CITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enable channel-to-channel linking on minor-loop complete
   type TCD31_CITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD31_CITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking Enabled)
   type TCD31_CITER_ELINKYES_Register is record
      --  Current Major Iteration Count
      CITER          : TCD31_CITER_ELINKYES_CITER_Field := 16#0#;
      --  Minor Loop Link Channel Number
      LINKCH         : TCD31_CITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enable channel-to-channel linking on minor-loop complete
      ELINK          : TCD31_CITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD31_CITER_ELINKYES_Register use record
      CITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   --  Channel Start
   type TCD31_CSR_START_Field is
     (
      --  The channel is not explicitly started.
      Start_0,
      --  The channel is explicitly started via a software initiated service
      --  request.
      Start_1)
     with Size => 1;
   for TCD31_CSR_START_Field use
     (Start_0 => 0,
      Start_1 => 1);

   --  Enable an interrupt when major iteration count completes.
   type TCD31_CSR_INTMAJOR_Field is
     (
      --  The end-of-major loop interrupt is disabled.
      Intmajor_0,
      --  The end-of-major loop interrupt is enabled.
      Intmajor_1)
     with Size => 1;
   for TCD31_CSR_INTMAJOR_Field use
     (Intmajor_0 => 0,
      Intmajor_1 => 1);

   --  Enable an interrupt when major counter is half complete.
   type TCD31_CSR_INTHALF_Field is
     (
      --  The half-point interrupt is disabled.
      Inthalf_0,
      --  The half-point interrupt is enabled.
      Inthalf_1)
     with Size => 1;
   for TCD31_CSR_INTHALF_Field use
     (Inthalf_0 => 0,
      Inthalf_1 => 1);

   --  Disable Request
   type TCD31_CSR_DREQ_Field is
     (
      --  no description available
      Dreq_0,
      --  no description available
      Dreq_1)
     with Size => 1;
   for TCD31_CSR_DREQ_Field use
     (Dreq_0 => 0,
      Dreq_1 => 1);

   --  Enable Scatter/Gather Processing
   type TCD31_CSR_ESG_Field is
     (
      --  The current channel's TCD is normal format.
      Esg_0,
      --  The current channel's TCD specifies a scatter gather format. The
      --  DLASTSGA field provides a memory pointer to the next TCD to be loaded
      --  into this channel after the major loop completes its execution.
      Esg_1)
     with Size => 1;
   for TCD31_CSR_ESG_Field use
     (Esg_0 => 0,
      Esg_1 => 1);

   --  Enable channel-to-channel linking on major loop complete
   type TCD31_CSR_MAJORELINK_Field is
     (
      --  The channel-to-channel linking is disabled.
      Majorelink_0,
      --  The channel-to-channel linking is enabled.
      Majorelink_1)
     with Size => 1;
   for TCD31_CSR_MAJORELINK_Field use
     (Majorelink_0 => 0,
      Majorelink_1 => 1);

   subtype TCD31_CSR_MAJORLINKCH_Field is HAL.UInt5;

   --  Bandwidth Control
   type TCD31_CSR_BWC_Field is
     (
      --  No eDMA engine stalls.
      Bwc_0,
      --  eDMA engine stalls for 4 cycles after each R/W.
      Bwc_2,
      --  eDMA engine stalls for 8 cycles after each R/W.
      Bwc_3)
     with Size => 2;
   for TCD31_CSR_BWC_Field use
     (Bwc_0 => 0,
      Bwc_2 => 2,
      Bwc_3 => 3);

   --  TCD Control and Status
   type TCD31_CSR_Register is record
      --  Channel Start
      START          : TCD31_CSR_START_Field := NRF_SVD.DMA.Start_0;
      --  Enable an interrupt when major iteration count completes.
      INTMAJOR       : TCD31_CSR_INTMAJOR_Field := NRF_SVD.DMA.Intmajor_0;
      --  Enable an interrupt when major counter is half complete.
      INTHALF        : TCD31_CSR_INTHALF_Field := NRF_SVD.DMA.Inthalf_0;
      --  Disable Request
      DREQ           : TCD31_CSR_DREQ_Field := NRF_SVD.DMA.Dreq_0;
      --  Enable Scatter/Gather Processing
      ESG            : TCD31_CSR_ESG_Field := NRF_SVD.DMA.Esg_0;
      --  Enable channel-to-channel linking on major loop complete
      MAJORELINK     : TCD31_CSR_MAJORELINK_Field := NRF_SVD.DMA.Majorelink_0;
      --  Read-only. Channel Active
      ACTIVE         : Boolean := False;
      --  Write data bit of zero shall clear (set to zero) the corresponding
      --  bit in the field. Channel Done
      DONE           : Boolean := False;
      --  Major Loop Link Channel Number
      MAJORLINKCH    : TCD31_CSR_MAJORLINKCH_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Bandwidth Control
      BWC            : TCD31_CSR_BWC_Field := NRF_SVD.DMA.Bwc_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD31_CSR_Register use record
      START          at 0 range 0 .. 0;
      INTMAJOR       at 0 range 1 .. 1;
      INTHALF        at 0 range 2 .. 2;
      DREQ           at 0 range 3 .. 3;
      ESG            at 0 range 4 .. 4;
      MAJORELINK     at 0 range 5 .. 5;
      ACTIVE         at 0 range 6 .. 6;
      DONE           at 0 range 7 .. 7;
      MAJORLINKCH    at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BWC            at 0 range 14 .. 15;
   end record;

   subtype TCD31_BITER_ELINKNO_BITER_Field is HAL.UInt15;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD31_BITER_ELINKNO_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD31_BITER_ELINKNO_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Disabled)
   type TCD31_BITER_ELINKNO_Register is record
      --  Starting Major Iteration Count
      BITER : TCD31_BITER_ELINKNO_BITER_Field := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK : TCD31_BITER_ELINKNO_ELINK_Field := NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD31_BITER_ELINKNO_Register use record
      BITER at 0 range 0 .. 14;
      ELINK at 0 range 15 .. 15;
   end record;

   subtype TCD31_BITER_ELINKYES_BITER_Field is HAL.UInt9;
   subtype TCD31_BITER_ELINKYES_LINKCH_Field is HAL.UInt5;

   --  Enables channel-to-channel linking on minor loop complete
   type TCD31_BITER_ELINKYES_ELINK_Field is
     (
      --  The channel-to-channel linking is disabled
      Elink_0,
      --  The channel-to-channel linking is enabled
      Elink_1)
     with Size => 1;
   for TCD31_BITER_ELINKYES_ELINK_Field use
     (Elink_0 => 0,
      Elink_1 => 1);

   --  TCD Beginning Minor Loop Link, Major Loop Count (Channel Linking
   --  Enabled)
   type TCD31_BITER_ELINKYES_Register is record
      --  Starting major iteration count
      BITER          : TCD31_BITER_ELINKYES_BITER_Field := 16#0#;
      --  Link Channel Number
      LINKCH         : TCD31_BITER_ELINKYES_LINKCH_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Enables channel-to-channel linking on minor loop complete
      ELINK          : TCD31_BITER_ELINKYES_ELINK_Field :=
                        NRF_SVD.DMA.Elink_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TCD31_BITER_ELINKYES_Register use record
      BITER          at 0 range 0 .. 8;
      LINKCH         at 0 range 9 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ELINK          at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type DMA0_Disc is
     (
      No,
      Offno,
      Offyes,
      Yes);

   --  DMA
   type DMA0_Peripheral
     (Discriminent : DMA0_Disc := No)
   is record
      --  Control Register
      CR                    : aliased CR_Register;
      --  Error Status Register
      ES                    : aliased ES_Register;
      --  Enable Request Register
      ERQ                   : aliased ERQ_Register;
      --  Enable Error Interrupt Register
      EEI                   : aliased EEI_Register;
      --  Clear Enable Error Interrupt Register
      CEEI                  : aliased CEEI_Register;
      --  Set Enable Error Interrupt Register
      SEEI                  : aliased SEEI_Register;
      --  Clear Enable Request Register
      CERQ                  : aliased CERQ_Register;
      --  Set Enable Request Register
      SERQ                  : aliased SERQ_Register;
      --  Clear DONE Status Bit Register
      CDNE                  : aliased CDNE_Register;
      --  Set START Bit Register
      SSRT                  : aliased SSRT_Register;
      --  Clear Error Register
      CERR                  : aliased CERR_Register;
      --  Clear Interrupt Request Register
      CINT                  : aliased CINT_Register;
      --  Interrupt Request Register
      INT                   : aliased INT_Register;
      --  Error Register
      ERR                   : aliased ERR_Register;
      --  Hardware Request Status Register
      HRS                   : aliased HRS_Register;
      --  Enable Asynchronous Request in Stop Register
      EARS                  : aliased EARS_Register;
      --  Channel n Priority Register
      DCHPRI                : aliased DCHPRI_Registers;
      --  TCD Source Address
      TCD0_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD0_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD0_ATTR             : aliased TCD0_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD0_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD0_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD0_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD0_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD0_CSR              : aliased TCD0_CSR_Register;
      --  TCD Source Address
      TCD1_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD1_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD1_ATTR             : aliased TCD1_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD1_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD1_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD1_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD1_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD1_CSR              : aliased TCD1_CSR_Register;
      --  TCD Source Address
      TCD2_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD2_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD2_ATTR             : aliased TCD2_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD2_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD2_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD2_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD2_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD2_CSR              : aliased TCD2_CSR_Register;
      --  TCD Source Address
      TCD3_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD3_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD3_ATTR             : aliased TCD3_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD3_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD3_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD3_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD3_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD3_CSR              : aliased TCD3_CSR_Register;
      --  TCD Source Address
      TCD4_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD4_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD4_ATTR             : aliased TCD4_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD4_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD4_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD4_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD4_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD4_CSR              : aliased TCD4_CSR_Register;
      --  TCD Source Address
      TCD5_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD5_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD5_ATTR             : aliased TCD5_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD5_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD5_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD5_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD5_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD5_CSR              : aliased TCD5_CSR_Register;
      --  TCD Source Address
      TCD6_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD6_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD6_ATTR             : aliased TCD6_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD6_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD6_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD6_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD6_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD6_CSR              : aliased TCD6_CSR_Register;
      --  TCD Source Address
      TCD7_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD7_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD7_ATTR             : aliased TCD7_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD7_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD7_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD7_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD7_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD7_CSR              : aliased TCD7_CSR_Register;
      --  TCD Source Address
      TCD8_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD8_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD8_ATTR             : aliased TCD8_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD8_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD8_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD8_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD8_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD8_CSR              : aliased TCD8_CSR_Register;
      --  TCD Source Address
      TCD9_SADDR            : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD9_SOFF             : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD9_ATTR             : aliased TCD9_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD9_SLAST            : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD9_DADDR            : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD9_DOFF             : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD9_DLASTSGA         : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD9_CSR              : aliased TCD9_CSR_Register;
      --  TCD Source Address
      TCD10_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD10_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD10_ATTR            : aliased TCD10_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD10_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD10_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD10_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD10_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD10_CSR             : aliased TCD10_CSR_Register;
      --  TCD Source Address
      TCD11_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD11_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD11_ATTR            : aliased TCD11_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD11_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD11_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD11_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD11_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD11_CSR             : aliased TCD11_CSR_Register;
      --  TCD Source Address
      TCD12_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD12_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD12_ATTR            : aliased TCD12_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD12_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD12_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD12_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD12_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD12_CSR             : aliased TCD12_CSR_Register;
      --  TCD Source Address
      TCD13_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD13_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD13_ATTR            : aliased TCD13_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD13_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD13_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD13_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD13_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD13_CSR             : aliased TCD13_CSR_Register;
      --  TCD Source Address
      TCD14_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD14_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD14_ATTR            : aliased TCD14_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD14_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD14_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD14_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD14_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD14_CSR             : aliased TCD14_CSR_Register;
      --  TCD Source Address
      TCD15_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD15_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD15_ATTR            : aliased TCD15_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD15_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD15_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD15_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD15_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD15_CSR             : aliased TCD15_CSR_Register;
      --  TCD Source Address
      TCD16_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD16_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD16_ATTR            : aliased TCD16_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD16_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD16_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD16_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD16_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD16_CSR             : aliased TCD16_CSR_Register;
      --  TCD Source Address
      TCD17_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD17_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD17_ATTR            : aliased TCD17_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD17_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD17_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD17_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD17_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD17_CSR             : aliased TCD17_CSR_Register;
      --  TCD Source Address
      TCD18_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD18_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD18_ATTR            : aliased TCD18_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD18_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD18_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD18_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD18_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD18_CSR             : aliased TCD18_CSR_Register;
      --  TCD Source Address
      TCD19_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD19_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD19_ATTR            : aliased TCD19_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD19_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD19_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD19_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD19_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD19_CSR             : aliased TCD19_CSR_Register;
      --  TCD Source Address
      TCD20_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD20_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD20_ATTR            : aliased TCD20_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD20_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD20_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD20_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD20_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD20_CSR             : aliased TCD20_CSR_Register;
      --  TCD Source Address
      TCD21_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD21_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD21_ATTR            : aliased TCD21_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD21_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD21_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD21_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD21_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD21_CSR             : aliased TCD21_CSR_Register;
      --  TCD Source Address
      TCD22_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD22_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD22_ATTR            : aliased TCD22_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD22_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD22_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD22_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD22_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD22_CSR             : aliased TCD22_CSR_Register;
      --  TCD Source Address
      TCD23_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD23_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD23_ATTR            : aliased TCD23_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD23_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD23_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD23_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD23_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD23_CSR             : aliased TCD23_CSR_Register;
      --  TCD Source Address
      TCD24_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD24_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD24_ATTR            : aliased TCD24_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD24_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD24_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD24_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD24_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD24_CSR             : aliased TCD24_CSR_Register;
      --  TCD Source Address
      TCD25_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD25_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD25_ATTR            : aliased TCD25_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD25_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD25_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD25_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD25_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD25_CSR             : aliased TCD25_CSR_Register;
      --  TCD Source Address
      TCD26_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD26_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD26_ATTR            : aliased TCD26_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD26_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD26_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD26_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD26_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD26_CSR             : aliased TCD26_CSR_Register;
      --  TCD Source Address
      TCD27_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD27_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD27_ATTR            : aliased TCD27_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD27_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD27_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD27_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD27_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD27_CSR             : aliased TCD27_CSR_Register;
      --  TCD Source Address
      TCD28_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD28_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD28_ATTR            : aliased TCD28_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD28_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD28_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD28_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD28_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD28_CSR             : aliased TCD28_CSR_Register;
      --  TCD Source Address
      TCD29_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD29_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD29_ATTR            : aliased TCD29_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD29_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD29_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD29_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD29_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD29_CSR             : aliased TCD29_CSR_Register;
      --  TCD Source Address
      TCD30_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD30_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD30_ATTR            : aliased TCD30_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD30_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD30_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD30_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD30_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD30_CSR             : aliased TCD30_CSR_Register;
      --  TCD Source Address
      TCD31_SADDR           : aliased HAL.UInt32;
      --  TCD Signed Source Address Offset
      TCD31_SOFF            : aliased HAL.UInt16;
      --  TCD Transfer Attributes
      TCD31_ATTR            : aliased TCD31_ATTR_Register;
      --  TCD Last Source Address Adjustment
      TCD31_SLAST           : aliased HAL.UInt32;
      --  TCD Destination Address
      TCD31_DADDR           : aliased HAL.UInt32;
      --  TCD Signed Destination Address Offset
      TCD31_DOFF            : aliased HAL.UInt16;
      --  TCD Last Destination Address Adjustment/Scatter Gather Address
      TCD31_DLASTSGA        : aliased HAL.UInt32;
      --  TCD Control and Status
      TCD31_CSR             : aliased TCD31_CSR_Register;
      case Discriminent is
         when No =>
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD0_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD0_CITER_ELINKNO : aliased TCD0_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD0_BITER_ELINKNO : aliased TCD0_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD1_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD1_CITER_ELINKNO : aliased TCD1_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD1_BITER_ELINKNO : aliased TCD1_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD2_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD2_CITER_ELINKNO : aliased TCD2_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD2_BITER_ELINKNO : aliased TCD2_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD3_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD3_CITER_ELINKNO : aliased TCD3_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD3_BITER_ELINKNO : aliased TCD3_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD4_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD4_CITER_ELINKNO : aliased TCD4_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD4_BITER_ELINKNO : aliased TCD4_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD5_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD5_CITER_ELINKNO : aliased TCD5_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD5_BITER_ELINKNO : aliased TCD5_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD6_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD6_CITER_ELINKNO : aliased TCD6_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD6_BITER_ELINKNO : aliased TCD6_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD7_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD7_CITER_ELINKNO : aliased TCD7_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD7_BITER_ELINKNO : aliased TCD7_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD8_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD8_CITER_ELINKNO : aliased TCD8_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD8_BITER_ELINKNO : aliased TCD8_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD9_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD9_CITER_ELINKNO : aliased TCD9_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD9_BITER_ELINKNO : aliased TCD9_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD10_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD10_CITER_ELINKNO : aliased TCD10_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD10_BITER_ELINKNO : aliased TCD10_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD11_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD11_CITER_ELINKNO : aliased TCD11_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD11_BITER_ELINKNO : aliased TCD11_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD12_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD12_CITER_ELINKNO : aliased TCD12_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD12_BITER_ELINKNO : aliased TCD12_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD13_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD13_CITER_ELINKNO : aliased TCD13_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD13_BITER_ELINKNO : aliased TCD13_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD14_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD14_CITER_ELINKNO : aliased TCD14_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD14_BITER_ELINKNO : aliased TCD14_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD15_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD15_CITER_ELINKNO : aliased TCD15_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD15_BITER_ELINKNO : aliased TCD15_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD16_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD16_CITER_ELINKNO : aliased TCD16_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD16_BITER_ELINKNO : aliased TCD16_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD17_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD17_CITER_ELINKNO : aliased TCD17_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD17_BITER_ELINKNO : aliased TCD17_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD18_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD18_CITER_ELINKNO : aliased TCD18_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD18_BITER_ELINKNO : aliased TCD18_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD19_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD19_CITER_ELINKNO : aliased TCD19_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD19_BITER_ELINKNO : aliased TCD19_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD20_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD20_CITER_ELINKNO : aliased TCD20_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD20_BITER_ELINKNO : aliased TCD20_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD21_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD21_CITER_ELINKNO : aliased TCD21_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD21_BITER_ELINKNO : aliased TCD21_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD22_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD22_CITER_ELINKNO : aliased TCD22_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD22_BITER_ELINKNO : aliased TCD22_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD23_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD23_CITER_ELINKNO : aliased TCD23_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD23_BITER_ELINKNO : aliased TCD23_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD24_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD24_CITER_ELINKNO : aliased TCD24_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD24_BITER_ELINKNO : aliased TCD24_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD25_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD25_CITER_ELINKNO : aliased TCD25_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD25_BITER_ELINKNO : aliased TCD25_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD26_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD26_CITER_ELINKNO : aliased TCD26_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD26_BITER_ELINKNO : aliased TCD26_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD27_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD27_CITER_ELINKNO : aliased TCD27_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD27_BITER_ELINKNO : aliased TCD27_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD28_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD28_CITER_ELINKNO : aliased TCD28_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD28_BITER_ELINKNO : aliased TCD28_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD29_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD29_CITER_ELINKNO : aliased TCD29_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD29_BITER_ELINKNO : aliased TCD29_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD30_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD30_CITER_ELINKNO : aliased TCD30_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD30_BITER_ELINKNO : aliased TCD30_BITER_ELINKNO_Register;
            --  TCD Minor Byte Count (Minor Loop Mapping Disabled)
            TCD31_NBYTES_MLNO : aliased HAL.UInt32;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Disabled)
            TCD31_CITER_ELINKNO : aliased TCD31_CITER_ELINKNO_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Disabled)
            TCD31_BITER_ELINKNO : aliased TCD31_BITER_ELINKNO_Register;
         when Offno =>
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD0_NBYTES_MLOFFNO : aliased TCD0_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD1_NBYTES_MLOFFNO : aliased TCD1_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD2_NBYTES_MLOFFNO : aliased TCD2_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD3_NBYTES_MLOFFNO : aliased TCD3_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD4_NBYTES_MLOFFNO : aliased TCD4_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD5_NBYTES_MLOFFNO : aliased TCD5_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD6_NBYTES_MLOFFNO : aliased TCD6_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD7_NBYTES_MLOFFNO : aliased TCD7_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD8_NBYTES_MLOFFNO : aliased TCD8_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD9_NBYTES_MLOFFNO : aliased TCD9_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD10_NBYTES_MLOFFNO : aliased TCD10_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD11_NBYTES_MLOFFNO : aliased TCD11_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD12_NBYTES_MLOFFNO : aliased TCD12_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD13_NBYTES_MLOFFNO : aliased TCD13_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD14_NBYTES_MLOFFNO : aliased TCD14_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD15_NBYTES_MLOFFNO : aliased TCD15_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD16_NBYTES_MLOFFNO : aliased TCD16_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD17_NBYTES_MLOFFNO : aliased TCD17_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD18_NBYTES_MLOFFNO : aliased TCD18_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD19_NBYTES_MLOFFNO : aliased TCD19_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD20_NBYTES_MLOFFNO : aliased TCD20_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD21_NBYTES_MLOFFNO : aliased TCD21_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD22_NBYTES_MLOFFNO : aliased TCD22_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD23_NBYTES_MLOFFNO : aliased TCD23_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD24_NBYTES_MLOFFNO : aliased TCD24_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD25_NBYTES_MLOFFNO : aliased TCD25_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD26_NBYTES_MLOFFNO : aliased TCD26_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD27_NBYTES_MLOFFNO : aliased TCD27_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD28_NBYTES_MLOFFNO : aliased TCD28_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD29_NBYTES_MLOFFNO : aliased TCD29_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD30_NBYTES_MLOFFNO : aliased TCD30_NBYTES_MLOFFNO_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping Enabled and
            --  Offset Disabled)
            TCD31_NBYTES_MLOFFNO : aliased TCD31_NBYTES_MLOFFNO_Register;
         when Offyes =>
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD0_NBYTES_MLOFFYES : aliased TCD0_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD1_NBYTES_MLOFFYES : aliased TCD1_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD2_NBYTES_MLOFFYES : aliased TCD2_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD3_NBYTES_MLOFFYES : aliased TCD3_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD4_NBYTES_MLOFFYES : aliased TCD4_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD5_NBYTES_MLOFFYES : aliased TCD5_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD6_NBYTES_MLOFFYES : aliased TCD6_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD7_NBYTES_MLOFFYES : aliased TCD7_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD8_NBYTES_MLOFFYES : aliased TCD8_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD9_NBYTES_MLOFFYES : aliased TCD9_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD10_NBYTES_MLOFFYES : aliased TCD10_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD11_NBYTES_MLOFFYES : aliased TCD11_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD12_NBYTES_MLOFFYES : aliased TCD12_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD13_NBYTES_MLOFFYES : aliased TCD13_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD14_NBYTES_MLOFFYES : aliased TCD14_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD15_NBYTES_MLOFFYES : aliased TCD15_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD16_NBYTES_MLOFFYES : aliased TCD16_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD17_NBYTES_MLOFFYES : aliased TCD17_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD18_NBYTES_MLOFFYES : aliased TCD18_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD19_NBYTES_MLOFFYES : aliased TCD19_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD20_NBYTES_MLOFFYES : aliased TCD20_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD21_NBYTES_MLOFFYES : aliased TCD21_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD22_NBYTES_MLOFFYES : aliased TCD22_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD23_NBYTES_MLOFFYES : aliased TCD23_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD24_NBYTES_MLOFFYES : aliased TCD24_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD25_NBYTES_MLOFFYES : aliased TCD25_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD26_NBYTES_MLOFFYES : aliased TCD26_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD27_NBYTES_MLOFFYES : aliased TCD27_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD28_NBYTES_MLOFFYES : aliased TCD28_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD29_NBYTES_MLOFFYES : aliased TCD29_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD30_NBYTES_MLOFFYES : aliased TCD30_NBYTES_MLOFFYES_Register;
            --  TCD Signed Minor Loop Offset (Minor Loop Mapping and Offset
            --  Enabled)
            TCD31_NBYTES_MLOFFYES : aliased TCD31_NBYTES_MLOFFYES_Register;
         when Yes =>
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD0_CITER_ELINKYES : aliased TCD0_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD0_BITER_ELINKYES : aliased TCD0_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD1_CITER_ELINKYES : aliased TCD1_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD1_BITER_ELINKYES : aliased TCD1_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD2_CITER_ELINKYES : aliased TCD2_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD2_BITER_ELINKYES : aliased TCD2_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD3_CITER_ELINKYES : aliased TCD3_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD3_BITER_ELINKYES : aliased TCD3_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD4_CITER_ELINKYES : aliased TCD4_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD4_BITER_ELINKYES : aliased TCD4_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD5_CITER_ELINKYES : aliased TCD5_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD5_BITER_ELINKYES : aliased TCD5_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD6_CITER_ELINKYES : aliased TCD6_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD6_BITER_ELINKYES : aliased TCD6_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD7_CITER_ELINKYES : aliased TCD7_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD7_BITER_ELINKYES : aliased TCD7_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD8_CITER_ELINKYES : aliased TCD8_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD8_BITER_ELINKYES : aliased TCD8_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD9_CITER_ELINKYES : aliased TCD9_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD9_BITER_ELINKYES : aliased TCD9_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD10_CITER_ELINKYES : aliased TCD10_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD10_BITER_ELINKYES : aliased TCD10_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD11_CITER_ELINKYES : aliased TCD11_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD11_BITER_ELINKYES : aliased TCD11_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD12_CITER_ELINKYES : aliased TCD12_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD12_BITER_ELINKYES : aliased TCD12_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD13_CITER_ELINKYES : aliased TCD13_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD13_BITER_ELINKYES : aliased TCD13_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD14_CITER_ELINKYES : aliased TCD14_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD14_BITER_ELINKYES : aliased TCD14_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD15_CITER_ELINKYES : aliased TCD15_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD15_BITER_ELINKYES : aliased TCD15_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD16_CITER_ELINKYES : aliased TCD16_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD16_BITER_ELINKYES : aliased TCD16_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD17_CITER_ELINKYES : aliased TCD17_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD17_BITER_ELINKYES : aliased TCD17_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD18_CITER_ELINKYES : aliased TCD18_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD18_BITER_ELINKYES : aliased TCD18_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD19_CITER_ELINKYES : aliased TCD19_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD19_BITER_ELINKYES : aliased TCD19_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD20_CITER_ELINKYES : aliased TCD20_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD20_BITER_ELINKYES : aliased TCD20_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD21_CITER_ELINKYES : aliased TCD21_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD21_BITER_ELINKYES : aliased TCD21_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD22_CITER_ELINKYES : aliased TCD22_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD22_BITER_ELINKYES : aliased TCD22_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD23_CITER_ELINKYES : aliased TCD23_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD23_BITER_ELINKYES : aliased TCD23_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD24_CITER_ELINKYES : aliased TCD24_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD24_BITER_ELINKYES : aliased TCD24_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD25_CITER_ELINKYES : aliased TCD25_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD25_BITER_ELINKYES : aliased TCD25_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD26_CITER_ELINKYES : aliased TCD26_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD26_BITER_ELINKYES : aliased TCD26_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD27_CITER_ELINKYES : aliased TCD27_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD27_BITER_ELINKYES : aliased TCD27_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD28_CITER_ELINKYES : aliased TCD28_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD28_BITER_ELINKYES : aliased TCD28_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD29_CITER_ELINKYES : aliased TCD29_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD29_BITER_ELINKYES : aliased TCD29_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD30_CITER_ELINKYES : aliased TCD30_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD30_BITER_ELINKYES : aliased TCD30_BITER_ELINKYES_Register;
            --  TCD Current Minor Loop Link, Major Loop Count (Channel Linking
            --  Enabled)
            TCD31_CITER_ELINKYES : aliased TCD31_CITER_ELINKYES_Register;
            --  TCD Beginning Minor Loop Link, Major Loop Count (Channel
            --  Linking Enabled)
            TCD31_BITER_ELINKYES : aliased TCD31_BITER_ELINKYES_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for DMA0_Peripheral use record
      CR                    at 16#0# range 0 .. 31;
      ES                    at 16#4# range 0 .. 31;
      ERQ                   at 16#C# range 0 .. 31;
      EEI                   at 16#14# range 0 .. 31;
      CEEI                  at 16#18# range 0 .. 7;
      SEEI                  at 16#19# range 0 .. 7;
      CERQ                  at 16#1A# range 0 .. 7;
      SERQ                  at 16#1B# range 0 .. 7;
      CDNE                  at 16#1C# range 0 .. 7;
      SSRT                  at 16#1D# range 0 .. 7;
      CERR                  at 16#1E# range 0 .. 7;
      CINT                  at 16#1F# range 0 .. 7;
      INT                   at 16#24# range 0 .. 31;
      ERR                   at 16#2C# range 0 .. 31;
      HRS                   at 16#34# range 0 .. 31;
      EARS                  at 16#44# range 0 .. 31;
      DCHPRI                at 16#100# range 0 .. 255;
      TCD0_SADDR            at 16#1000# range 0 .. 31;
      TCD0_SOFF             at 16#1004# range 0 .. 15;
      TCD0_ATTR             at 16#1006# range 0 .. 15;
      TCD0_SLAST            at 16#100C# range 0 .. 31;
      TCD0_DADDR            at 16#1010# range 0 .. 31;
      TCD0_DOFF             at 16#1014# range 0 .. 15;
      TCD0_DLASTSGA         at 16#1018# range 0 .. 31;
      TCD0_CSR              at 16#101C# range 0 .. 15;
      TCD1_SADDR            at 16#1020# range 0 .. 31;
      TCD1_SOFF             at 16#1024# range 0 .. 15;
      TCD1_ATTR             at 16#1026# range 0 .. 15;
      TCD1_SLAST            at 16#102C# range 0 .. 31;
      TCD1_DADDR            at 16#1030# range 0 .. 31;
      TCD1_DOFF             at 16#1034# range 0 .. 15;
      TCD1_DLASTSGA         at 16#1038# range 0 .. 31;
      TCD1_CSR              at 16#103C# range 0 .. 15;
      TCD2_SADDR            at 16#1040# range 0 .. 31;
      TCD2_SOFF             at 16#1044# range 0 .. 15;
      TCD2_ATTR             at 16#1046# range 0 .. 15;
      TCD2_SLAST            at 16#104C# range 0 .. 31;
      TCD2_DADDR            at 16#1050# range 0 .. 31;
      TCD2_DOFF             at 16#1054# range 0 .. 15;
      TCD2_DLASTSGA         at 16#1058# range 0 .. 31;
      TCD2_CSR              at 16#105C# range 0 .. 15;
      TCD3_SADDR            at 16#1060# range 0 .. 31;
      TCD3_SOFF             at 16#1064# range 0 .. 15;
      TCD3_ATTR             at 16#1066# range 0 .. 15;
      TCD3_SLAST            at 16#106C# range 0 .. 31;
      TCD3_DADDR            at 16#1070# range 0 .. 31;
      TCD3_DOFF             at 16#1074# range 0 .. 15;
      TCD3_DLASTSGA         at 16#1078# range 0 .. 31;
      TCD3_CSR              at 16#107C# range 0 .. 15;
      TCD4_SADDR            at 16#1080# range 0 .. 31;
      TCD4_SOFF             at 16#1084# range 0 .. 15;
      TCD4_ATTR             at 16#1086# range 0 .. 15;
      TCD4_SLAST            at 16#108C# range 0 .. 31;
      TCD4_DADDR            at 16#1090# range 0 .. 31;
      TCD4_DOFF             at 16#1094# range 0 .. 15;
      TCD4_DLASTSGA         at 16#1098# range 0 .. 31;
      TCD4_CSR              at 16#109C# range 0 .. 15;
      TCD5_SADDR            at 16#10A0# range 0 .. 31;
      TCD5_SOFF             at 16#10A4# range 0 .. 15;
      TCD5_ATTR             at 16#10A6# range 0 .. 15;
      TCD5_SLAST            at 16#10AC# range 0 .. 31;
      TCD5_DADDR            at 16#10B0# range 0 .. 31;
      TCD5_DOFF             at 16#10B4# range 0 .. 15;
      TCD5_DLASTSGA         at 16#10B8# range 0 .. 31;
      TCD5_CSR              at 16#10BC# range 0 .. 15;
      TCD6_SADDR            at 16#10C0# range 0 .. 31;
      TCD6_SOFF             at 16#10C4# range 0 .. 15;
      TCD6_ATTR             at 16#10C6# range 0 .. 15;
      TCD6_SLAST            at 16#10CC# range 0 .. 31;
      TCD6_DADDR            at 16#10D0# range 0 .. 31;
      TCD6_DOFF             at 16#10D4# range 0 .. 15;
      TCD6_DLASTSGA         at 16#10D8# range 0 .. 31;
      TCD6_CSR              at 16#10DC# range 0 .. 15;
      TCD7_SADDR            at 16#10E0# range 0 .. 31;
      TCD7_SOFF             at 16#10E4# range 0 .. 15;
      TCD7_ATTR             at 16#10E6# range 0 .. 15;
      TCD7_SLAST            at 16#10EC# range 0 .. 31;
      TCD7_DADDR            at 16#10F0# range 0 .. 31;
      TCD7_DOFF             at 16#10F4# range 0 .. 15;
      TCD7_DLASTSGA         at 16#10F8# range 0 .. 31;
      TCD7_CSR              at 16#10FC# range 0 .. 15;
      TCD8_SADDR            at 16#1100# range 0 .. 31;
      TCD8_SOFF             at 16#1104# range 0 .. 15;
      TCD8_ATTR             at 16#1106# range 0 .. 15;
      TCD8_SLAST            at 16#110C# range 0 .. 31;
      TCD8_DADDR            at 16#1110# range 0 .. 31;
      TCD8_DOFF             at 16#1114# range 0 .. 15;
      TCD8_DLASTSGA         at 16#1118# range 0 .. 31;
      TCD8_CSR              at 16#111C# range 0 .. 15;
      TCD9_SADDR            at 16#1120# range 0 .. 31;
      TCD9_SOFF             at 16#1124# range 0 .. 15;
      TCD9_ATTR             at 16#1126# range 0 .. 15;
      TCD9_SLAST            at 16#112C# range 0 .. 31;
      TCD9_DADDR            at 16#1130# range 0 .. 31;
      TCD9_DOFF             at 16#1134# range 0 .. 15;
      TCD9_DLASTSGA         at 16#1138# range 0 .. 31;
      TCD9_CSR              at 16#113C# range 0 .. 15;
      TCD10_SADDR           at 16#1140# range 0 .. 31;
      TCD10_SOFF            at 16#1144# range 0 .. 15;
      TCD10_ATTR            at 16#1146# range 0 .. 15;
      TCD10_SLAST           at 16#114C# range 0 .. 31;
      TCD10_DADDR           at 16#1150# range 0 .. 31;
      TCD10_DOFF            at 16#1154# range 0 .. 15;
      TCD10_DLASTSGA        at 16#1158# range 0 .. 31;
      TCD10_CSR             at 16#115C# range 0 .. 15;
      TCD11_SADDR           at 16#1160# range 0 .. 31;
      TCD11_SOFF            at 16#1164# range 0 .. 15;
      TCD11_ATTR            at 16#1166# range 0 .. 15;
      TCD11_SLAST           at 16#116C# range 0 .. 31;
      TCD11_DADDR           at 16#1170# range 0 .. 31;
      TCD11_DOFF            at 16#1174# range 0 .. 15;
      TCD11_DLASTSGA        at 16#1178# range 0 .. 31;
      TCD11_CSR             at 16#117C# range 0 .. 15;
      TCD12_SADDR           at 16#1180# range 0 .. 31;
      TCD12_SOFF            at 16#1184# range 0 .. 15;
      TCD12_ATTR            at 16#1186# range 0 .. 15;
      TCD12_SLAST           at 16#118C# range 0 .. 31;
      TCD12_DADDR           at 16#1190# range 0 .. 31;
      TCD12_DOFF            at 16#1194# range 0 .. 15;
      TCD12_DLASTSGA        at 16#1198# range 0 .. 31;
      TCD12_CSR             at 16#119C# range 0 .. 15;
      TCD13_SADDR           at 16#11A0# range 0 .. 31;
      TCD13_SOFF            at 16#11A4# range 0 .. 15;
      TCD13_ATTR            at 16#11A6# range 0 .. 15;
      TCD13_SLAST           at 16#11AC# range 0 .. 31;
      TCD13_DADDR           at 16#11B0# range 0 .. 31;
      TCD13_DOFF            at 16#11B4# range 0 .. 15;
      TCD13_DLASTSGA        at 16#11B8# range 0 .. 31;
      TCD13_CSR             at 16#11BC# range 0 .. 15;
      TCD14_SADDR           at 16#11C0# range 0 .. 31;
      TCD14_SOFF            at 16#11C4# range 0 .. 15;
      TCD14_ATTR            at 16#11C6# range 0 .. 15;
      TCD14_SLAST           at 16#11CC# range 0 .. 31;
      TCD14_DADDR           at 16#11D0# range 0 .. 31;
      TCD14_DOFF            at 16#11D4# range 0 .. 15;
      TCD14_DLASTSGA        at 16#11D8# range 0 .. 31;
      TCD14_CSR             at 16#11DC# range 0 .. 15;
      TCD15_SADDR           at 16#11E0# range 0 .. 31;
      TCD15_SOFF            at 16#11E4# range 0 .. 15;
      TCD15_ATTR            at 16#11E6# range 0 .. 15;
      TCD15_SLAST           at 16#11EC# range 0 .. 31;
      TCD15_DADDR           at 16#11F0# range 0 .. 31;
      TCD15_DOFF            at 16#11F4# range 0 .. 15;
      TCD15_DLASTSGA        at 16#11F8# range 0 .. 31;
      TCD15_CSR             at 16#11FC# range 0 .. 15;
      TCD16_SADDR           at 16#1200# range 0 .. 31;
      TCD16_SOFF            at 16#1204# range 0 .. 15;
      TCD16_ATTR            at 16#1206# range 0 .. 15;
      TCD16_SLAST           at 16#120C# range 0 .. 31;
      TCD16_DADDR           at 16#1210# range 0 .. 31;
      TCD16_DOFF            at 16#1214# range 0 .. 15;
      TCD16_DLASTSGA        at 16#1218# range 0 .. 31;
      TCD16_CSR             at 16#121C# range 0 .. 15;
      TCD17_SADDR           at 16#1220# range 0 .. 31;
      TCD17_SOFF            at 16#1224# range 0 .. 15;
      TCD17_ATTR            at 16#1226# range 0 .. 15;
      TCD17_SLAST           at 16#122C# range 0 .. 31;
      TCD17_DADDR           at 16#1230# range 0 .. 31;
      TCD17_DOFF            at 16#1234# range 0 .. 15;
      TCD17_DLASTSGA        at 16#1238# range 0 .. 31;
      TCD17_CSR             at 16#123C# range 0 .. 15;
      TCD18_SADDR           at 16#1240# range 0 .. 31;
      TCD18_SOFF            at 16#1244# range 0 .. 15;
      TCD18_ATTR            at 16#1246# range 0 .. 15;
      TCD18_SLAST           at 16#124C# range 0 .. 31;
      TCD18_DADDR           at 16#1250# range 0 .. 31;
      TCD18_DOFF            at 16#1254# range 0 .. 15;
      TCD18_DLASTSGA        at 16#1258# range 0 .. 31;
      TCD18_CSR             at 16#125C# range 0 .. 15;
      TCD19_SADDR           at 16#1260# range 0 .. 31;
      TCD19_SOFF            at 16#1264# range 0 .. 15;
      TCD19_ATTR            at 16#1266# range 0 .. 15;
      TCD19_SLAST           at 16#126C# range 0 .. 31;
      TCD19_DADDR           at 16#1270# range 0 .. 31;
      TCD19_DOFF            at 16#1274# range 0 .. 15;
      TCD19_DLASTSGA        at 16#1278# range 0 .. 31;
      TCD19_CSR             at 16#127C# range 0 .. 15;
      TCD20_SADDR           at 16#1280# range 0 .. 31;
      TCD20_SOFF            at 16#1284# range 0 .. 15;
      TCD20_ATTR            at 16#1286# range 0 .. 15;
      TCD20_SLAST           at 16#128C# range 0 .. 31;
      TCD20_DADDR           at 16#1290# range 0 .. 31;
      TCD20_DOFF            at 16#1294# range 0 .. 15;
      TCD20_DLASTSGA        at 16#1298# range 0 .. 31;
      TCD20_CSR             at 16#129C# range 0 .. 15;
      TCD21_SADDR           at 16#12A0# range 0 .. 31;
      TCD21_SOFF            at 16#12A4# range 0 .. 15;
      TCD21_ATTR            at 16#12A6# range 0 .. 15;
      TCD21_SLAST           at 16#12AC# range 0 .. 31;
      TCD21_DADDR           at 16#12B0# range 0 .. 31;
      TCD21_DOFF            at 16#12B4# range 0 .. 15;
      TCD21_DLASTSGA        at 16#12B8# range 0 .. 31;
      TCD21_CSR             at 16#12BC# range 0 .. 15;
      TCD22_SADDR           at 16#12C0# range 0 .. 31;
      TCD22_SOFF            at 16#12C4# range 0 .. 15;
      TCD22_ATTR            at 16#12C6# range 0 .. 15;
      TCD22_SLAST           at 16#12CC# range 0 .. 31;
      TCD22_DADDR           at 16#12D0# range 0 .. 31;
      TCD22_DOFF            at 16#12D4# range 0 .. 15;
      TCD22_DLASTSGA        at 16#12D8# range 0 .. 31;
      TCD22_CSR             at 16#12DC# range 0 .. 15;
      TCD23_SADDR           at 16#12E0# range 0 .. 31;
      TCD23_SOFF            at 16#12E4# range 0 .. 15;
      TCD23_ATTR            at 16#12E6# range 0 .. 15;
      TCD23_SLAST           at 16#12EC# range 0 .. 31;
      TCD23_DADDR           at 16#12F0# range 0 .. 31;
      TCD23_DOFF            at 16#12F4# range 0 .. 15;
      TCD23_DLASTSGA        at 16#12F8# range 0 .. 31;
      TCD23_CSR             at 16#12FC# range 0 .. 15;
      TCD24_SADDR           at 16#1300# range 0 .. 31;
      TCD24_SOFF            at 16#1304# range 0 .. 15;
      TCD24_ATTR            at 16#1306# range 0 .. 15;
      TCD24_SLAST           at 16#130C# range 0 .. 31;
      TCD24_DADDR           at 16#1310# range 0 .. 31;
      TCD24_DOFF            at 16#1314# range 0 .. 15;
      TCD24_DLASTSGA        at 16#1318# range 0 .. 31;
      TCD24_CSR             at 16#131C# range 0 .. 15;
      TCD25_SADDR           at 16#1320# range 0 .. 31;
      TCD25_SOFF            at 16#1324# range 0 .. 15;
      TCD25_ATTR            at 16#1326# range 0 .. 15;
      TCD25_SLAST           at 16#132C# range 0 .. 31;
      TCD25_DADDR           at 16#1330# range 0 .. 31;
      TCD25_DOFF            at 16#1334# range 0 .. 15;
      TCD25_DLASTSGA        at 16#1338# range 0 .. 31;
      TCD25_CSR             at 16#133C# range 0 .. 15;
      TCD26_SADDR           at 16#1340# range 0 .. 31;
      TCD26_SOFF            at 16#1344# range 0 .. 15;
      TCD26_ATTR            at 16#1346# range 0 .. 15;
      TCD26_SLAST           at 16#134C# range 0 .. 31;
      TCD26_DADDR           at 16#1350# range 0 .. 31;
      TCD26_DOFF            at 16#1354# range 0 .. 15;
      TCD26_DLASTSGA        at 16#1358# range 0 .. 31;
      TCD26_CSR             at 16#135C# range 0 .. 15;
      TCD27_SADDR           at 16#1360# range 0 .. 31;
      TCD27_SOFF            at 16#1364# range 0 .. 15;
      TCD27_ATTR            at 16#1366# range 0 .. 15;
      TCD27_SLAST           at 16#136C# range 0 .. 31;
      TCD27_DADDR           at 16#1370# range 0 .. 31;
      TCD27_DOFF            at 16#1374# range 0 .. 15;
      TCD27_DLASTSGA        at 16#1378# range 0 .. 31;
      TCD27_CSR             at 16#137C# range 0 .. 15;
      TCD28_SADDR           at 16#1380# range 0 .. 31;
      TCD28_SOFF            at 16#1384# range 0 .. 15;
      TCD28_ATTR            at 16#1386# range 0 .. 15;
      TCD28_SLAST           at 16#138C# range 0 .. 31;
      TCD28_DADDR           at 16#1390# range 0 .. 31;
      TCD28_DOFF            at 16#1394# range 0 .. 15;
      TCD28_DLASTSGA        at 16#1398# range 0 .. 31;
      TCD28_CSR             at 16#139C# range 0 .. 15;
      TCD29_SADDR           at 16#13A0# range 0 .. 31;
      TCD29_SOFF            at 16#13A4# range 0 .. 15;
      TCD29_ATTR            at 16#13A6# range 0 .. 15;
      TCD29_SLAST           at 16#13AC# range 0 .. 31;
      TCD29_DADDR           at 16#13B0# range 0 .. 31;
      TCD29_DOFF            at 16#13B4# range 0 .. 15;
      TCD29_DLASTSGA        at 16#13B8# range 0 .. 31;
      TCD29_CSR             at 16#13BC# range 0 .. 15;
      TCD30_SADDR           at 16#13C0# range 0 .. 31;
      TCD30_SOFF            at 16#13C4# range 0 .. 15;
      TCD30_ATTR            at 16#13C6# range 0 .. 15;
      TCD30_SLAST           at 16#13CC# range 0 .. 31;
      TCD30_DADDR           at 16#13D0# range 0 .. 31;
      TCD30_DOFF            at 16#13D4# range 0 .. 15;
      TCD30_DLASTSGA        at 16#13D8# range 0 .. 31;
      TCD30_CSR             at 16#13DC# range 0 .. 15;
      TCD31_SADDR           at 16#13E0# range 0 .. 31;
      TCD31_SOFF            at 16#13E4# range 0 .. 15;
      TCD31_ATTR            at 16#13E6# range 0 .. 15;
      TCD31_SLAST           at 16#13EC# range 0 .. 31;
      TCD31_DADDR           at 16#13F0# range 0 .. 31;
      TCD31_DOFF            at 16#13F4# range 0 .. 15;
      TCD31_DLASTSGA        at 16#13F8# range 0 .. 31;
      TCD31_CSR             at 16#13FC# range 0 .. 15;
      TCD0_NBYTES_MLNO      at 16#1008# range 0 .. 31;
      TCD0_CITER_ELINKNO    at 16#1016# range 0 .. 15;
      TCD0_BITER_ELINKNO    at 16#101E# range 0 .. 15;
      TCD1_NBYTES_MLNO      at 16#1028# range 0 .. 31;
      TCD1_CITER_ELINKNO    at 16#1036# range 0 .. 15;
      TCD1_BITER_ELINKNO    at 16#103E# range 0 .. 15;
      TCD2_NBYTES_MLNO      at 16#1048# range 0 .. 31;
      TCD2_CITER_ELINKNO    at 16#1056# range 0 .. 15;
      TCD2_BITER_ELINKNO    at 16#105E# range 0 .. 15;
      TCD3_NBYTES_MLNO      at 16#1068# range 0 .. 31;
      TCD3_CITER_ELINKNO    at 16#1076# range 0 .. 15;
      TCD3_BITER_ELINKNO    at 16#107E# range 0 .. 15;
      TCD4_NBYTES_MLNO      at 16#1088# range 0 .. 31;
      TCD4_CITER_ELINKNO    at 16#1096# range 0 .. 15;
      TCD4_BITER_ELINKNO    at 16#109E# range 0 .. 15;
      TCD5_NBYTES_MLNO      at 16#10A8# range 0 .. 31;
      TCD5_CITER_ELINKNO    at 16#10B6# range 0 .. 15;
      TCD5_BITER_ELINKNO    at 16#10BE# range 0 .. 15;
      TCD6_NBYTES_MLNO      at 16#10C8# range 0 .. 31;
      TCD6_CITER_ELINKNO    at 16#10D6# range 0 .. 15;
      TCD6_BITER_ELINKNO    at 16#10DE# range 0 .. 15;
      TCD7_NBYTES_MLNO      at 16#10E8# range 0 .. 31;
      TCD7_CITER_ELINKNO    at 16#10F6# range 0 .. 15;
      TCD7_BITER_ELINKNO    at 16#10FE# range 0 .. 15;
      TCD8_NBYTES_MLNO      at 16#1108# range 0 .. 31;
      TCD8_CITER_ELINKNO    at 16#1116# range 0 .. 15;
      TCD8_BITER_ELINKNO    at 16#111E# range 0 .. 15;
      TCD9_NBYTES_MLNO      at 16#1128# range 0 .. 31;
      TCD9_CITER_ELINKNO    at 16#1136# range 0 .. 15;
      TCD9_BITER_ELINKNO    at 16#113E# range 0 .. 15;
      TCD10_NBYTES_MLNO     at 16#1148# range 0 .. 31;
      TCD10_CITER_ELINKNO   at 16#1156# range 0 .. 15;
      TCD10_BITER_ELINKNO   at 16#115E# range 0 .. 15;
      TCD11_NBYTES_MLNO     at 16#1168# range 0 .. 31;
      TCD11_CITER_ELINKNO   at 16#1176# range 0 .. 15;
      TCD11_BITER_ELINKNO   at 16#117E# range 0 .. 15;
      TCD12_NBYTES_MLNO     at 16#1188# range 0 .. 31;
      TCD12_CITER_ELINKNO   at 16#1196# range 0 .. 15;
      TCD12_BITER_ELINKNO   at 16#119E# range 0 .. 15;
      TCD13_NBYTES_MLNO     at 16#11A8# range 0 .. 31;
      TCD13_CITER_ELINKNO   at 16#11B6# range 0 .. 15;
      TCD13_BITER_ELINKNO   at 16#11BE# range 0 .. 15;
      TCD14_NBYTES_MLNO     at 16#11C8# range 0 .. 31;
      TCD14_CITER_ELINKNO   at 16#11D6# range 0 .. 15;
      TCD14_BITER_ELINKNO   at 16#11DE# range 0 .. 15;
      TCD15_NBYTES_MLNO     at 16#11E8# range 0 .. 31;
      TCD15_CITER_ELINKNO   at 16#11F6# range 0 .. 15;
      TCD15_BITER_ELINKNO   at 16#11FE# range 0 .. 15;
      TCD16_NBYTES_MLNO     at 16#1208# range 0 .. 31;
      TCD16_CITER_ELINKNO   at 16#1216# range 0 .. 15;
      TCD16_BITER_ELINKNO   at 16#121E# range 0 .. 15;
      TCD17_NBYTES_MLNO     at 16#1228# range 0 .. 31;
      TCD17_CITER_ELINKNO   at 16#1236# range 0 .. 15;
      TCD17_BITER_ELINKNO   at 16#123E# range 0 .. 15;
      TCD18_NBYTES_MLNO     at 16#1248# range 0 .. 31;
      TCD18_CITER_ELINKNO   at 16#1256# range 0 .. 15;
      TCD18_BITER_ELINKNO   at 16#125E# range 0 .. 15;
      TCD19_NBYTES_MLNO     at 16#1268# range 0 .. 31;
      TCD19_CITER_ELINKNO   at 16#1276# range 0 .. 15;
      TCD19_BITER_ELINKNO   at 16#127E# range 0 .. 15;
      TCD20_NBYTES_MLNO     at 16#1288# range 0 .. 31;
      TCD20_CITER_ELINKNO   at 16#1296# range 0 .. 15;
      TCD20_BITER_ELINKNO   at 16#129E# range 0 .. 15;
      TCD21_NBYTES_MLNO     at 16#12A8# range 0 .. 31;
      TCD21_CITER_ELINKNO   at 16#12B6# range 0 .. 15;
      TCD21_BITER_ELINKNO   at 16#12BE# range 0 .. 15;
      TCD22_NBYTES_MLNO     at 16#12C8# range 0 .. 31;
      TCD22_CITER_ELINKNO   at 16#12D6# range 0 .. 15;
      TCD22_BITER_ELINKNO   at 16#12DE# range 0 .. 15;
      TCD23_NBYTES_MLNO     at 16#12E8# range 0 .. 31;
      TCD23_CITER_ELINKNO   at 16#12F6# range 0 .. 15;
      TCD23_BITER_ELINKNO   at 16#12FE# range 0 .. 15;
      TCD24_NBYTES_MLNO     at 16#1308# range 0 .. 31;
      TCD24_CITER_ELINKNO   at 16#1316# range 0 .. 15;
      TCD24_BITER_ELINKNO   at 16#131E# range 0 .. 15;
      TCD25_NBYTES_MLNO     at 16#1328# range 0 .. 31;
      TCD25_CITER_ELINKNO   at 16#1336# range 0 .. 15;
      TCD25_BITER_ELINKNO   at 16#133E# range 0 .. 15;
      TCD26_NBYTES_MLNO     at 16#1348# range 0 .. 31;
      TCD26_CITER_ELINKNO   at 16#1356# range 0 .. 15;
      TCD26_BITER_ELINKNO   at 16#135E# range 0 .. 15;
      TCD27_NBYTES_MLNO     at 16#1368# range 0 .. 31;
      TCD27_CITER_ELINKNO   at 16#1376# range 0 .. 15;
      TCD27_BITER_ELINKNO   at 16#137E# range 0 .. 15;
      TCD28_NBYTES_MLNO     at 16#1388# range 0 .. 31;
      TCD28_CITER_ELINKNO   at 16#1396# range 0 .. 15;
      TCD28_BITER_ELINKNO   at 16#139E# range 0 .. 15;
      TCD29_NBYTES_MLNO     at 16#13A8# range 0 .. 31;
      TCD29_CITER_ELINKNO   at 16#13B6# range 0 .. 15;
      TCD29_BITER_ELINKNO   at 16#13BE# range 0 .. 15;
      TCD30_NBYTES_MLNO     at 16#13C8# range 0 .. 31;
      TCD30_CITER_ELINKNO   at 16#13D6# range 0 .. 15;
      TCD30_BITER_ELINKNO   at 16#13DE# range 0 .. 15;
      TCD31_NBYTES_MLNO     at 16#13E8# range 0 .. 31;
      TCD31_CITER_ELINKNO   at 16#13F6# range 0 .. 15;
      TCD31_BITER_ELINKNO   at 16#13FE# range 0 .. 15;
      TCD0_NBYTES_MLOFFNO   at 16#1008# range 0 .. 31;
      TCD1_NBYTES_MLOFFNO   at 16#1028# range 0 .. 31;
      TCD2_NBYTES_MLOFFNO   at 16#1048# range 0 .. 31;
      TCD3_NBYTES_MLOFFNO   at 16#1068# range 0 .. 31;
      TCD4_NBYTES_MLOFFNO   at 16#1088# range 0 .. 31;
      TCD5_NBYTES_MLOFFNO   at 16#10A8# range 0 .. 31;
      TCD6_NBYTES_MLOFFNO   at 16#10C8# range 0 .. 31;
      TCD7_NBYTES_MLOFFNO   at 16#10E8# range 0 .. 31;
      TCD8_NBYTES_MLOFFNO   at 16#1108# range 0 .. 31;
      TCD9_NBYTES_MLOFFNO   at 16#1128# range 0 .. 31;
      TCD10_NBYTES_MLOFFNO  at 16#1148# range 0 .. 31;
      TCD11_NBYTES_MLOFFNO  at 16#1168# range 0 .. 31;
      TCD12_NBYTES_MLOFFNO  at 16#1188# range 0 .. 31;
      TCD13_NBYTES_MLOFFNO  at 16#11A8# range 0 .. 31;
      TCD14_NBYTES_MLOFFNO  at 16#11C8# range 0 .. 31;
      TCD15_NBYTES_MLOFFNO  at 16#11E8# range 0 .. 31;
      TCD16_NBYTES_MLOFFNO  at 16#1208# range 0 .. 31;
      TCD17_NBYTES_MLOFFNO  at 16#1228# range 0 .. 31;
      TCD18_NBYTES_MLOFFNO  at 16#1248# range 0 .. 31;
      TCD19_NBYTES_MLOFFNO  at 16#1268# range 0 .. 31;
      TCD20_NBYTES_MLOFFNO  at 16#1288# range 0 .. 31;
      TCD21_NBYTES_MLOFFNO  at 16#12A8# range 0 .. 31;
      TCD22_NBYTES_MLOFFNO  at 16#12C8# range 0 .. 31;
      TCD23_NBYTES_MLOFFNO  at 16#12E8# range 0 .. 31;
      TCD24_NBYTES_MLOFFNO  at 16#1308# range 0 .. 31;
      TCD25_NBYTES_MLOFFNO  at 16#1328# range 0 .. 31;
      TCD26_NBYTES_MLOFFNO  at 16#1348# range 0 .. 31;
      TCD27_NBYTES_MLOFFNO  at 16#1368# range 0 .. 31;
      TCD28_NBYTES_MLOFFNO  at 16#1388# range 0 .. 31;
      TCD29_NBYTES_MLOFFNO  at 16#13A8# range 0 .. 31;
      TCD30_NBYTES_MLOFFNO  at 16#13C8# range 0 .. 31;
      TCD31_NBYTES_MLOFFNO  at 16#13E8# range 0 .. 31;
      TCD0_NBYTES_MLOFFYES  at 16#1008# range 0 .. 31;
      TCD1_NBYTES_MLOFFYES  at 16#1028# range 0 .. 31;
      TCD2_NBYTES_MLOFFYES  at 16#1048# range 0 .. 31;
      TCD3_NBYTES_MLOFFYES  at 16#1068# range 0 .. 31;
      TCD4_NBYTES_MLOFFYES  at 16#1088# range 0 .. 31;
      TCD5_NBYTES_MLOFFYES  at 16#10A8# range 0 .. 31;
      TCD6_NBYTES_MLOFFYES  at 16#10C8# range 0 .. 31;
      TCD7_NBYTES_MLOFFYES  at 16#10E8# range 0 .. 31;
      TCD8_NBYTES_MLOFFYES  at 16#1108# range 0 .. 31;
      TCD9_NBYTES_MLOFFYES  at 16#1128# range 0 .. 31;
      TCD10_NBYTES_MLOFFYES at 16#1148# range 0 .. 31;
      TCD11_NBYTES_MLOFFYES at 16#1168# range 0 .. 31;
      TCD12_NBYTES_MLOFFYES at 16#1188# range 0 .. 31;
      TCD13_NBYTES_MLOFFYES at 16#11A8# range 0 .. 31;
      TCD14_NBYTES_MLOFFYES at 16#11C8# range 0 .. 31;
      TCD15_NBYTES_MLOFFYES at 16#11E8# range 0 .. 31;
      TCD16_NBYTES_MLOFFYES at 16#1208# range 0 .. 31;
      TCD17_NBYTES_MLOFFYES at 16#1228# range 0 .. 31;
      TCD18_NBYTES_MLOFFYES at 16#1248# range 0 .. 31;
      TCD19_NBYTES_MLOFFYES at 16#1268# range 0 .. 31;
      TCD20_NBYTES_MLOFFYES at 16#1288# range 0 .. 31;
      TCD21_NBYTES_MLOFFYES at 16#12A8# range 0 .. 31;
      TCD22_NBYTES_MLOFFYES at 16#12C8# range 0 .. 31;
      TCD23_NBYTES_MLOFFYES at 16#12E8# range 0 .. 31;
      TCD24_NBYTES_MLOFFYES at 16#1308# range 0 .. 31;
      TCD25_NBYTES_MLOFFYES at 16#1328# range 0 .. 31;
      TCD26_NBYTES_MLOFFYES at 16#1348# range 0 .. 31;
      TCD27_NBYTES_MLOFFYES at 16#1368# range 0 .. 31;
      TCD28_NBYTES_MLOFFYES at 16#1388# range 0 .. 31;
      TCD29_NBYTES_MLOFFYES at 16#13A8# range 0 .. 31;
      TCD30_NBYTES_MLOFFYES at 16#13C8# range 0 .. 31;
      TCD31_NBYTES_MLOFFYES at 16#13E8# range 0 .. 31;
      TCD0_CITER_ELINKYES   at 16#1016# range 0 .. 15;
      TCD0_BITER_ELINKYES   at 16#101E# range 0 .. 15;
      TCD1_CITER_ELINKYES   at 16#1036# range 0 .. 15;
      TCD1_BITER_ELINKYES   at 16#103E# range 0 .. 15;
      TCD2_CITER_ELINKYES   at 16#1056# range 0 .. 15;
      TCD2_BITER_ELINKYES   at 16#105E# range 0 .. 15;
      TCD3_CITER_ELINKYES   at 16#1076# range 0 .. 15;
      TCD3_BITER_ELINKYES   at 16#107E# range 0 .. 15;
      TCD4_CITER_ELINKYES   at 16#1096# range 0 .. 15;
      TCD4_BITER_ELINKYES   at 16#109E# range 0 .. 15;
      TCD5_CITER_ELINKYES   at 16#10B6# range 0 .. 15;
      TCD5_BITER_ELINKYES   at 16#10BE# range 0 .. 15;
      TCD6_CITER_ELINKYES   at 16#10D6# range 0 .. 15;
      TCD6_BITER_ELINKYES   at 16#10DE# range 0 .. 15;
      TCD7_CITER_ELINKYES   at 16#10F6# range 0 .. 15;
      TCD7_BITER_ELINKYES   at 16#10FE# range 0 .. 15;
      TCD8_CITER_ELINKYES   at 16#1116# range 0 .. 15;
      TCD8_BITER_ELINKYES   at 16#111E# range 0 .. 15;
      TCD9_CITER_ELINKYES   at 16#1136# range 0 .. 15;
      TCD9_BITER_ELINKYES   at 16#113E# range 0 .. 15;
      TCD10_CITER_ELINKYES  at 16#1156# range 0 .. 15;
      TCD10_BITER_ELINKYES  at 16#115E# range 0 .. 15;
      TCD11_CITER_ELINKYES  at 16#1176# range 0 .. 15;
      TCD11_BITER_ELINKYES  at 16#117E# range 0 .. 15;
      TCD12_CITER_ELINKYES  at 16#1196# range 0 .. 15;
      TCD12_BITER_ELINKYES  at 16#119E# range 0 .. 15;
      TCD13_CITER_ELINKYES  at 16#11B6# range 0 .. 15;
      TCD13_BITER_ELINKYES  at 16#11BE# range 0 .. 15;
      TCD14_CITER_ELINKYES  at 16#11D6# range 0 .. 15;
      TCD14_BITER_ELINKYES  at 16#11DE# range 0 .. 15;
      TCD15_CITER_ELINKYES  at 16#11F6# range 0 .. 15;
      TCD15_BITER_ELINKYES  at 16#11FE# range 0 .. 15;
      TCD16_CITER_ELINKYES  at 16#1216# range 0 .. 15;
      TCD16_BITER_ELINKYES  at 16#121E# range 0 .. 15;
      TCD17_CITER_ELINKYES  at 16#1236# range 0 .. 15;
      TCD17_BITER_ELINKYES  at 16#123E# range 0 .. 15;
      TCD18_CITER_ELINKYES  at 16#1256# range 0 .. 15;
      TCD18_BITER_ELINKYES  at 16#125E# range 0 .. 15;
      TCD19_CITER_ELINKYES  at 16#1276# range 0 .. 15;
      TCD19_BITER_ELINKYES  at 16#127E# range 0 .. 15;
      TCD20_CITER_ELINKYES  at 16#1296# range 0 .. 15;
      TCD20_BITER_ELINKYES  at 16#129E# range 0 .. 15;
      TCD21_CITER_ELINKYES  at 16#12B6# range 0 .. 15;
      TCD21_BITER_ELINKYES  at 16#12BE# range 0 .. 15;
      TCD22_CITER_ELINKYES  at 16#12D6# range 0 .. 15;
      TCD22_BITER_ELINKYES  at 16#12DE# range 0 .. 15;
      TCD23_CITER_ELINKYES  at 16#12F6# range 0 .. 15;
      TCD23_BITER_ELINKYES  at 16#12FE# range 0 .. 15;
      TCD24_CITER_ELINKYES  at 16#1316# range 0 .. 15;
      TCD24_BITER_ELINKYES  at 16#131E# range 0 .. 15;
      TCD25_CITER_ELINKYES  at 16#1336# range 0 .. 15;
      TCD25_BITER_ELINKYES  at 16#133E# range 0 .. 15;
      TCD26_CITER_ELINKYES  at 16#1356# range 0 .. 15;
      TCD26_BITER_ELINKYES  at 16#135E# range 0 .. 15;
      TCD27_CITER_ELINKYES  at 16#1376# range 0 .. 15;
      TCD27_BITER_ELINKYES  at 16#137E# range 0 .. 15;
      TCD28_CITER_ELINKYES  at 16#1396# range 0 .. 15;
      TCD28_BITER_ELINKYES  at 16#139E# range 0 .. 15;
      TCD29_CITER_ELINKYES  at 16#13B6# range 0 .. 15;
      TCD29_BITER_ELINKYES  at 16#13BE# range 0 .. 15;
      TCD30_CITER_ELINKYES  at 16#13D6# range 0 .. 15;
      TCD30_BITER_ELINKYES  at 16#13DE# range 0 .. 15;
      TCD31_CITER_ELINKYES  at 16#13F6# range 0 .. 15;
      TCD31_BITER_ELINKYES  at 16#13FE# range 0 .. 15;
   end record;

   --  DMA
   DMA0_Periph : aliased DMA0_Peripheral
     with Import, Address => System'To_Address (16#400E8000#);

end NRF_SVD.DMA;
