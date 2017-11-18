--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ETM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ETMCR_PS_Field is HAL.UInt3;

   --  ETM port selection. This bit can be used to control other trace
   --  components in an implementation. This bit must be set by the trace
   --  software tools to ensure that trace output is enabled from this ETM. An
   --  ETM reset sets this bit to 0.
   type CR_ETMPS_Field is
     (
      --  ETMEN is LOW.
      Etmps_0,
      --  ETMEN is HIGH.
      Etmps_1)
     with Size => 1;
   for CR_ETMPS_Field use
     (Etmps_0 => 0,
      Etmps_1 => 1);

   subtype ETMCR_PM_Field is HAL.UInt2;

   --  Main Control Register
   type ETMCR_Register is record
      --  ETM power down. This bit can be used by an implementation to control
      --  if the ETM is in a low power state. This bit must be cleared by the
      --  trace software tools at the beginning of a debug session. When this
      --  bit is set to 1, writes to some registers and fields might be
      --  ignored.
      ETMPD          : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Port size. The ETM-M4 has no influence over the external pins used
      --  for trace. These bits are implemented but not used. On an ETM reset
      --  these bits reset to 0b001.
      PS             : ETMCR_PS_Field := 16#1#;
      --  Stall processor. The FIFOFULL output can be used to stall the
      --  processor to prevent overflow. The FIFOFULL output is only enabled
      --  when the stall processor bit is set to 1. When the bit is 0 the
      --  FIFOFULL output remains LOW at all times and the FIFO overflows if
      --  there are too many trace packets. Trace resumes without corruption
      --  once the FIFO has drained, if overflow does occur. An ETM reset sets
      --  this bit to 0.
      SP             : Boolean := False;
      --  Branch output. When set to 1 all branch addresses are output, even if
      --  the branch was because of a direct branch instruction. Setting this
      --  bit enables reconstruction of the program flow without having access
      --  to the memory image of the code being executed. When this bit is set
      --  to 1, more trace data is generated, and this may affect the
      --  performance of the trace system. Information about the execution of a
      --  branch is traced regardless of the state of this bit. An ETM reset
      --  sets this bit to 0.
      BO             : Boolean := False;
      --  Debug request control. When set to 1 and the trigger event occurs,
      --  the DBGRQ output is asserted until DBGACK is observed. This enables
      --  the ARM processor to be forced into Debug state. An ETM reset sets
      --  this bit to 0.
      DRC            : Boolean := False;
      --  ETM programming. This bit must be set to 1 at the start of the ETM
      --  programming sequence. Tracing is prevented while this bit is set to
      --  1. On an ETM reset this bit is set to b1.
      ETMP           : Boolean := True;
      --  ETM port selection. This bit can be used to control other trace
      --  components in an implementation. This bit must be set by the trace
      --  software tools to ensure that trace output is enabled from this ETM.
      --  An ETM reset sets this bit to 0.
      ETMPS          : CR_ETMPS_Field := NRF_SVD.ETM.Etmps_0;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  This bit is implemented but has no function. An ETM reset sets this
      --  bit to 0.
      PM2            : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  These bits are implemented but have no function. An ETM reset sets
      --  these bits to 0.
      PM             : ETMCR_PM_Field := 16#0#;
      --  unspecified
      Reserved_18_20 : HAL.UInt3 := 16#0#;
      --  This bit is implemented but has no function. An ETM reset sets this
      --  bit to 0.
      PS3            : Boolean := False;
      --  unspecified
      Reserved_22_27 : HAL.UInt6 := 16#0#;
      --  When set, this bit enables timestamping. An ETM reset sets this bit
      --  to 0.
      TE             : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCR_Register use record
      ETMPD          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PS             at 0 range 4 .. 6;
      SP             at 0 range 7 .. 7;
      BO             at 0 range 8 .. 8;
      DRC            at 0 range 9 .. 9;
      ETMP           at 0 range 10 .. 10;
      ETMPS          at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      PM2            at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PM             at 0 range 16 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      PS3            at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      TE             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETMCCR_NumberOfAddressComparatorPairs_Field is HAL.UInt4;
   subtype ETMCCR_NDVC_Field is HAL.UInt4;
   subtype ETMCCR_NMMD_Field is HAL.UInt5;
   subtype ETMCCR_NC_Field is HAL.UInt3;
   subtype ETMCCR_NEI_Field is HAL.UInt3;
   subtype ETMCCR_NEO_Field is HAL.UInt3;
   subtype ETMCCR_NCIDC_Field is HAL.UInt2;

   --  Configuration Code Register
   type ETMCCR_Register is record
      --  Read-only. Number of address comparator pairs. The value of these
      --  bits is b0000, indicating that address comparator pairs are not
      --  implemented.
      NumberOfAddressComparatorPairs : ETMCCR_NumberOfAddressComparatorPairs_Field;
      --  Read-only. Number of data value comparators. The value of these bits
      --  is b0000, indicating that data value comparators are not implemented.
      NDVC                           : ETMCCR_NDVC_Field;
      --  Read-only. Number of memory map decoders. The value of these bits is
      --  b00000, indicating that memory map decoder inputs are not
      --  implemented.
      NMMD                           : ETMCCR_NMMD_Field;
      --  Read-only. Number of counters. The value of these bits is b001,
      --  indicating that one counter is implemented.
      NC                             : ETMCCR_NC_Field;
      --  Read-only. Sequencer present. The value of this bit is 0, indicating
      --  that the sequencer is not implemented.
      SP                             : Boolean;
      --  Read-only. Number of external inputs. The value of these bits is
      --  between b000 and b010, indicating the number of external inputs, from
      --  0 to 2, implemented in the system.
      NEI                            : ETMCCR_NEI_Field;
      --  Read-only. Number of external outputs. The value of these bits is
      --  b000, indicating that no external outputs are supported.
      NEO                            : ETMCCR_NEO_Field;
      --  Read-only. FIFOFULL logic present. The value of this bit is 1,
      --  indicating that FIFOFULL logic is present in the ETM. To use FIFOFULL
      --  the system must also support the function, as indicated by bit [8] of
      --  ETMSCR.
      FFLP                           : Boolean;
      --  Read-only. Number of Context ID comparators. The value of these bits
      --  is b00, indicating that Context ID comparators are not implemented.
      NCIDC                          : ETMCCR_NCIDC_Field;
      --  Read-only. Trace start/stop block present. The value of this bit is
      --  1, indicating that the Trace start/stop block is present.
      TSSBP                          : Boolean;
      --  Read-only. Coprocessor and memory access. The value of this bit is 1,
      --  indicating that memory-mapped access to registers is supported.
      CMA                            : Boolean;
      --  unspecified
      Reserved_28_30                 : HAL.UInt3;
      --  Read-only. The value of this bit is 1, indicating that the ETMIDR,
      --  register 0x79, is present and defines the ETM architecture version in
      --  use.
      ETMIDRP                        : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCCR_Register use record
      NumberOfAddressComparatorPairs at 0 range 0 .. 3;
      NDVC                           at 0 range 4 .. 7;
      NMMD                           at 0 range 8 .. 12;
      NC                             at 0 range 13 .. 15;
      SP                             at 0 range 16 .. 16;
      NEI                            at 0 range 17 .. 19;
      NEO                            at 0 range 20 .. 22;
      FFLP                           at 0 range 23 .. 23;
      NCIDC                          at 0 range 24 .. 25;
      TSSBP                          at 0 range 26 .. 26;
      CMA                            at 0 range 27 .. 27;
      Reserved_28_30                 at 0 range 28 .. 30;
      ETMIDRP                        at 0 range 31 .. 31;
   end record;

   subtype ETMTRIGGER_TriggerEvent_Field is HAL.UInt17;

   --  Trigger Event Register
   type ETMTRIGGER_Register is record
      --  Trigger event
      TriggerEvent   : ETMTRIGGER_TriggerEvent_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTRIGGER_Register use record
      TriggerEvent   at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  ETM Status Register
   type ETMSR_Register is record
      --  Read-only. Untraced overflow flag. If set to 1, there is an overflow
      --  that has not yet been traced. This bit is cleared to 0 when either: -
      --  trace is restarted - the ETM Power Down bit, bit [0] of the ETM
      --  Control Register, 0x00, is set to 1. Note: Setting or clearing the
      --  ETM programming bit does not cause this bit to be cleared to 0.
      UOF           : Boolean := False;
      --  Read-only. ETM programming bit value (Progbit). The current effective
      --  value of the ETM Programming bit (ETM Control Register bit [10]). Tou
      --  must wait for this bit to go to 1 before you start to program the
      --  ETM.
      Progbit       : Boolean := False;
      --  Holds the current status of the trace start/stop resource. If set to
      --  1, it indicates that a trace on address has been matched, without a
      --  corresponding trace off address match.
      Status        : Boolean := False;
      --  Trigger bit. Set when the trigger occurs, and prevents the trigger
      --  from being output until the ETM is next programmed.
      Trigger       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMSR_Register use record
      UOF           at 0 range 0 .. 0;
      Progbit       at 0 range 1 .. 1;
      Status        at 0 range 2 .. 2;
      Trigger       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETMSCR_MaximumPortSize_Field is HAL.UInt3;
   subtype ETMSCR_N_Field is HAL.UInt3;

   --  System Configuration Register
   type ETMSCR_Register is record
      --  Read-only. Maximum ETM port size bits [2:0]. These bits are used in
      --  conjunction with bit [9]. The value of these bits is b001.
      MaximumPortSize    : ETMSCR_MaximumPortSize_Field;
      --  unspecified
      Reserved_3_7       : HAL.UInt5;
      --  Read-only. FIFOFULL supported. The value of this bit is 1, indicating
      --  that FIFOFULL is supported. This bit is used in conjunction with bit
      --  [23] of the ETMCCR.
      FIFOFULLsupported  : Boolean;
      --  Read-only. Maximum ETM port size bit [3]. This bit is used in
      --  conjunction with bits [2:0]. Its value is 0. This has no effect on
      --  the TPIU trace port.
      MaximumPortSize3   : Boolean;
      --  Read-only. Port size supported. This bit reads as 1 if the currently
      --  selected port size is supported. This has no effect on the TPIU trace
      --  port.
      PortSizeSupported  : Boolean;
      --  Read-only. Port mode supported. This bit reads as 1 if the currently
      --  selected port mode is supported. This has no effect on the TPIU trace
      --  port.
      PortModeSupported  : Boolean;
      --  Read-only. These bits give the number of supported processors minus
      --  1. The value of these bits is b000, indicating that there is only one
      --  processor connected.
      N                  : ETMSCR_N_Field;
      --  unspecified
      Reserved_15_16     : HAL.UInt2;
      --  Read-only. No Fetch comparisons. The value of this bit is 1,
      --  indicating that fetch comparisons are not implemented.
      NoFetchComparisons : Boolean;
      --  unspecified
      Reserved_18_31     : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMSCR_Register use record
      MaximumPortSize    at 0 range 0 .. 2;
      Reserved_3_7       at 0 range 3 .. 7;
      FIFOFULLsupported  at 0 range 8 .. 8;
      MaximumPortSize3   at 0 range 9 .. 9;
      PortSizeSupported  at 0 range 10 .. 10;
      PortModeSupported  at 0 range 11 .. 11;
      N                  at 0 range 12 .. 14;
      Reserved_15_16     at 0 range 15 .. 16;
      NoFetchComparisons at 0 range 17 .. 17;
      Reserved_18_31     at 0 range 18 .. 31;
   end record;

   subtype ETMEEVR_TraceEnableEvent_Field is HAL.UInt17;

   --  Trace Enable Event Register
   type ETMEEVR_Register is record
      --  Trace Enable event.
      TraceEnableEvent : ETMEEVR_TraceEnableEvent_Field := 16#0#;
      --  unspecified
      Reserved_17_31   : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMEEVR_Register use record
      TraceEnableEvent at 0 range 0 .. 16;
      Reserved_17_31   at 0 range 17 .. 31;
   end record;

   --  Trace start/stop enable. The trace start/stop resource, resource 0x5F,
   --  is unaffected by the value of this bit.
   type TECR1_TraceControlEnable_Field is
     (
      --  Tracing is unaffected by the trace start/stop logic.
      Tracecontrolenable_0,
      --  Tracing is controlled by the trace on and off addresses configured
      --  for the trace start/stop logic.
      Tracecontrolenable_1)
     with Size => 1;
   for TECR1_TraceControlEnable_Field use
     (Tracecontrolenable_0 => 0,
      Tracecontrolenable_1 => 1);

   --  Trace Enable Control 1 Register
   type ETMTECR1_Register is record
      --  unspecified
      Reserved_0_24      : HAL.UInt25 := 16#0#;
      --  Trace start/stop enable. The trace start/stop resource, resource
      --  0x5F, is unaffected by the value of this bit.
      TraceControlEnable : TECR1_TraceControlEnable_Field :=
                            NRF_SVD.ETM.Tracecontrolenable_0;
      --  unspecified
      Reserved_26_31     : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTECR1_Register use record
      Reserved_0_24      at 0 range 0 .. 24;
      TraceControlEnable at 0 range 25 .. 25;
      Reserved_26_31     at 0 range 26 .. 31;
   end record;

   subtype ETMFFLR_FIFOFullLevel_Field is HAL.UInt8;

   --  FIFOFULL Level Register
   type ETMFFLR_Register is record
      --  FIFO full level. The number of bytes left in FIFO, below which the
      --  FIFOFULL or SupressData signal is asserted. For example, setting this
      --  value to 15 causes data trace suppression or processor stalling, if
      --  enabled, when there are less than 15 free bytes in the FIFO.
      FIFOFullLevel : ETMFFLR_FIFOFullLevel_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMFFLR_Register use record
      FIFOFullLevel at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMCNTRLDVR1_IntitialCount_Field is HAL.UInt16;

   --  Free-running counter reload value
   type ETMCNTRLDVR1_Register is record
      --  Initial count.
      IntitialCount  : ETMCNTRLDVR1_IntitialCount_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCNTRLDVR1_Register use record
      IntitialCount  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETMSYNCFR_SyncFrequency_Field is HAL.UInt12;

   --  Synchronization Frequency Register
   type ETMSYNCFR_Register is record
      --  Read-only. Synchronization frequency. Default value is 1024.
      SyncFrequency  : ETMSYNCFR_SyncFrequency_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMSYNCFR_Register use record
      SyncFrequency  at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETMIDR_ImplementationRevision_Field is HAL.UInt4;
   subtype ETMIDR_MinorETMarchitectureVersion_Field is HAL.UInt4;
   subtype ETMIDR_MajorETMarchitectureVersion_Field is HAL.UInt4;
   subtype ETMIDR_ProcessorFamily_Field is HAL.UInt4;

   --  32-bit Thumb instruction tracing. The value of this bit is 1, indicating
   --  that a 32-bit Thumb instruction is traced as a single instruction.
   type IDR_ThumbInstructionTracing_Field is
     (
      --  A 32-bit Thumb instruction is traced as two instructions, and
      --  exceptions might occur between these two instructions.
      Thumbinstructiontracing_0,
      --  A 32-bit Thimb instruction is traced as a single instruction.
      Thumbinstructiontracing_1)
     with Size => 1;
   for IDR_ThumbInstructionTracing_Field use
     (Thumbinstructiontracing_0 => 0,
      Thumbinstructiontracing_1 => 1);

   --  Security Extensions support. The value of this bit is 0, indicating that
   --  the ETM behaves as if the processor is in Secure state at all times.
   type IDR_SecurityExtensionSupport_Field is
     (
      --  The ETM behaves as if the processor is in Secure state at all times.
      Securityextensionsupport_0,
      --  The ARM architecture Security Extensions are implemented by the
      --  processor.
      Securityextensionsupport_1)
     with Size => 1;
   for IDR_SecurityExtensionSupport_Field use
     (Securityextensionsupport_0 => 0,
      Securityextensionsupport_1 => 1);

   --  Branch packet encoding. The value of this bit is 1, indicating that
   --  alternative branch packet encoding is implemented.
   type IDR_BranchPacketEncoding_Field is
     (
      --  The ETM implements the original branch packet encoding.
      Branchpacketencoding_0,
      --  The ETM implements the alternative branch packet encoding.
      Branchpacketencoding_1)
     with Size => 1;
   for IDR_BranchPacketEncoding_Field use
     (Branchpacketencoding_0 => 0,
      Branchpacketencoding_1 => 1);

   subtype ETMIDR_ImplementorCode_Field is HAL.UInt8;

   --  ID Register
   type ETMIDR_Register is record
      --  Read-only. Implementation revision. The value of these bits is b0000,
      --  indicating implementation revision, 0.
      ImplementationRevision      : ETMIDR_ImplementationRevision_Field;
      --  Read-only. Minor ETM architecture version. The value of these bits is
      --  0b0101, indicating minor architecture version number 5.
      MinorETMarchitectureVersion : ETMIDR_MinorETMarchitectureVersion_Field;
      --  Read-only. Major ETM architecture version. The value of these bits is
      --  0b0010, indicating major architecture version number 3, ETMv3.
      MajorETMarchitectureVersion : ETMIDR_MajorETMarchitectureVersion_Field;
      --  Read-only. Processor family. The value of these bits is 0b1111,
      --  indicating that the processor family is not identified in this
      --  register.
      ProcessorFamily             : ETMIDR_ProcessorFamily_Field;
      --  Read-only. Load PC first. The value of this bit is 0, indicating that
      --  data tracing is not supported.
      LoadPCfirst                 : Boolean;
      --  unspecified
      Reserved_17_17              : HAL.Bit;
      --  Read-only. 32-bit Thumb instruction tracing. The value of this bit is
      --  1, indicating that a 32-bit Thumb instruction is traced as a single
      --  instruction.
      ThumbInstructionTracing     : IDR_ThumbInstructionTracing_Field;
      --  Read-only. Security Extensions support. The value of this bit is 0,
      --  indicating that the ETM behaves as if the processor is in Secure
      --  state at all times.
      SecurityExtensionSupport    : IDR_SecurityExtensionSupport_Field;
      --  Read-only. Branch packet encoding. The value of this bit is 1,
      --  indicating that alternative branch packet encoding is implemented.
      BranchPacketEncoding        : IDR_BranchPacketEncoding_Field;
      --  unspecified
      Reserved_21_23              : HAL.UInt3;
      --  Read-only. Implementor code. These bits identify ARM as the
      --  implementor of the processor. The value of these bits is 01000001.
      ImplementorCode             : ETMIDR_ImplementorCode_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMIDR_Register use record
      ImplementationRevision      at 0 range 0 .. 3;
      MinorETMarchitectureVersion at 0 range 4 .. 7;
      MajorETMarchitectureVersion at 0 range 8 .. 11;
      ProcessorFamily             at 0 range 12 .. 15;
      LoadPCfirst                 at 0 range 16 .. 16;
      Reserved_17_17              at 0 range 17 .. 17;
      ThumbInstructionTracing     at 0 range 18 .. 18;
      SecurityExtensionSupport    at 0 range 19 .. 19;
      BranchPacketEncoding        at 0 range 20 .. 20;
      Reserved_21_23              at 0 range 21 .. 23;
      ImplementorCode             at 0 range 24 .. 31;
   end record;

   subtype ETMCCER_ExtendedExternalInputSelectors_Field is HAL.UInt3;
   subtype ETMCCER_ExtendedExternalInputBus_Field is HAL.UInt8;
   subtype ETMCCER_InstrumentationResources_Field is HAL.UInt3;
   subtype ETMCCER_EmbeddedICEwatchpointInputs_Field is HAL.UInt4;

   --  Configuration Code Extension Register
   type ETMCCER_Register is record
      --  Read-only. Extended external input selectors. The value of these bits
      --  is 0, indicating that extended external input selectors are not
      --  implemented.
      ExtendedExternalInputSelectors                     : ETMCCER_ExtendedExternalInputSelectors_Field;
      --  Read-only. Extended external input bus. The value of these bits is 0,
      --  indicating that the extended external input bus is not implemented.
      ExtendedExternalInputBus                           : ETMCCER_ExtendedExternalInputBus_Field;
      --  Read-only. Readable registers. The value of this bit is 1, indicating
      --  that all registers are readable.
      ReadableRegisters                                  : Boolean;
      --  Read-only. Data address comparisons. The value of this bit is 1,
      --  indicating that data address comparisons are not supported.
      DataAddressComparisons                             : Boolean;
      --  Read-only. Instrumentation resources. The value of these bits is
      --  0b000, indicating that no Instrumentation resources are supported.
      InstrumentationResources                           : ETMCCER_InstrumentationResources_Field;
      --  Read-only. EmbeddedICE watchpoint inputs. The value of these bits is
      --  0b0100, indicating that the number of EmbeddedICE watchpoint inputs
      --  implemented is four. These inputs come from the DWT.
      EmbeddedICEwatchpointInputs                        : ETMCCER_EmbeddedICEwatchpointInputs_Field;
      --  Read-only. Trace Start/Stop block uses EmbeddedICE watchpoint inputs.
      --  The value of this bit is 1, indicating that the Trace Start/Stop
      --  block uses the EmbeddedICE watchpoint inputs.
      TraceStartStopBlockUsesEmbeddedICEwatchpointInputs : Boolean;
      --  Read-only. EmbeddedICE behavior control implemented. The value of
      --  this bit is 0, indicating that the ETMEIBCR is not implemented.
      EmbeddedICEbehaviorControlImplemented              : Boolean;
      --  Read-only. Timestamping implemented. This bit is set to 1, indicating
      --  that timestamping is implemented.
      TimestampingImplemented                            : Boolean;
      --  unspecified
      Reserved_23_26                                     : HAL.UInt4;
      --  Read-only. Reduced function counter. Set to 1 to indicate that
      --  Counter 1 is a reduced function counter.
      ReducedFunctionCounter                             : Boolean;
      --  Read-only. Timestamp encoding. Set to 1 to indicate that the
      --  timestamp is encoded as a natural binary number.
      TimestampEncoding                                  : Boolean;
      --  Read-only. Timestamp size. Set to 0 to indicate a size of 48 bits.
      TimestampSize                                      : Boolean;
      --  unspecified
      Reserved_30_31                                     : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCCER_Register use record
      ExtendedExternalInputSelectors                     at 0 range 0 .. 2;
      ExtendedExternalInputBus                           at 0 range 3 .. 10;
      ReadableRegisters                                  at 0 range 11 .. 11;
      DataAddressComparisons                             at 0 range 12 .. 12;
      InstrumentationResources                           at 0 range 13 .. 15;
      EmbeddedICEwatchpointInputs                        at 0 range 16 .. 19;
      TraceStartStopBlockUsesEmbeddedICEwatchpointInputs at 0 range 20 .. 20;
      EmbeddedICEbehaviorControlImplemented              at 0 range 21 .. 21;
      TimestampingImplemented                            at 0 range 22 .. 22;
      Reserved_23_26                                     at 0 range 23 .. 26;
      ReducedFunctionCounter                             at 0 range 27 .. 27;
      TimestampEncoding                                  at 0 range 28 .. 28;
      TimestampSize                                      at 0 range 29 .. 29;
      Reserved_30_31                                     at 0 range 30 .. 31;
   end record;

   subtype ETMTESSEICR_StartResourceSelection_Field is HAL.UInt4;
   subtype ETMTESSEICR_StopResourceSelection_Field is HAL.UInt4;

   --  TraceEnable Start/Stop EmbeddedICE Control Register
   type ETMTESSEICR_Register is record
      --  Start resource selection. Setting any of these bits to 1 selects the
      --  corresponding EmbeddedICE watchpoint input as a TraceEnable start
      --  resource. Bit [0] corresponds to input 1, bit [1] corresponds to
      --  input 2, bit [2] corresponds to input 3, and bit [3] corresponds to
      --  input 4.
      StartResourceSelection : ETMTESSEICR_StartResourceSelection_Field :=
                                16#0#;
      --  unspecified
      Reserved_4_15          : HAL.UInt12 := 16#0#;
      --  Stop resource selection. Setting any of these bits to 1 selects the
      --  corresponding EmbeddedICE watchpoint input as a TraceEnable stop
      --  resource. Bit [16] corresponds to input 1, bit [17] corresponds to
      --  input 2, bit [18] corresponds to input 3, and bit [19] corresponds to
      --  input 4.
      StopResourceSelection  : ETMTESSEICR_StopResourceSelection_Field :=
                                16#0#;
      --  unspecified
      Reserved_20_31         : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTESSEICR_Register use record
      StartResourceSelection at 0 range 0 .. 3;
      Reserved_4_15          at 0 range 4 .. 15;
      StopResourceSelection  at 0 range 16 .. 19;
      Reserved_20_31         at 0 range 20 .. 31;
   end record;

   subtype ETMTSEVR_TimestampEvent_Field is HAL.UInt12;

   --  Timestamp Event Register
   type ETMTSEVR_Register is record
      --  Timestamp event.
      TimestampEvent : ETMTSEVR_TimestampEvent_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTSEVR_Register use record
      TimestampEvent at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETMTRACEIDR_TraceID_Field is HAL.UInt7;

   --  CoreSight Trace ID Register
   type ETMTRACEIDR_Register is record
      --  Trace ID to output onto the trace bus. On an ETM reset this field is
      --  cleared to 0x00.
      TraceID       : ETMTRACEIDR_TraceID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTRACEIDR_Register use record
      TraceID       at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Device Power-Down Status Register
   type ETMPDSR_Register is record
      --  Read-only. The value of this bit indicates whether you can access the
      --  ETM Trace Registers. The value of this bit is always 1, indicating
      --  that the ETM Trace Registers can be accessed.
      ETMpoweredup  : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPDSR_Register use record
      ETMpoweredup  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETM_ITMISCIN_EXTIN_Field is HAL.UInt2;

   --  Integration Test Miscelaneous Inputs Register
   type ETM_ITMISCIN_Register is record
      --  Read-only. A read of these bits returns the value of the EXTIN[1:0]
      --  input pins.
      EXTIN         : ETM_ITMISCIN_EXTIN_Field;
      --  unspecified
      Reserved_2_3  : HAL.UInt2;
      --  Read-only. A read of this bit returns the value of the COREHALT input
      --  pin.
      COREHALT      : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_ITMISCIN_Register use record
      EXTIN         at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      COREHALT      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Integration Test Trigger Out Register
   type ETM_ITTRIGOUT_Register is record
      --  Write-only. A write to this bit sets the TRIGGER output.
      TRIGGER       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_ITTRIGOUT_Register use record
      TRIGGER       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ETM Integration Test ATB Control 2 Register
   type ETM_ITATBCTR2_Register is record
      --  Read-only. A read of this bit returns the value of the ETM ATREADY
      --  input.
      ATREADY       : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_ITATBCTR2_Register use record
      ATREADY       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ETM Integration Test ATB Control 0 Register
   type ETM_ITATBCTR0_Register is record
      --  Write-only. A write to this bit sets the value of the ETM ATVALID
      --  output.
      ATVALID       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_ITATBCTR0_Register use record
      ATVALID       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Integration Mode Control Register
   type ETMITCTRL_Register is record
      --  Enable integration mode. When this bit is set to 1, the device enters
      --  integration mode to enable Topology Detection or Integration Testing
      --  to be checked. On an ETM reset this bit is cleared to 0.
      Mode          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMITCTRL_Register use record
      Mode          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMCLAIMSET_CLAIMSET_Field is HAL.UInt4;

   --  Claim Tag Set Register
   type ETMCLAIMSET_Register is record
      --  A bit programmable register bank which sets the Claim Tag Value.
      --  Write 1 to set the bit in the claim tag. A read will return a logic 1
      --  for all implemented locations.
      CLAIMSET      : ETMCLAIMSET_CLAIMSET_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCLAIMSET_Register use record
      CLAIMSET      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETMCLAIMCLR_CLAIMCLR_Field is HAL.UInt4;

   --  Claim Tag Clear Register
   type ETMCLAIMCLR_Register is record
      --  A bit programmable register bank that is zero at reset. Write 1 to
      --  clear the bit in the claim tag. On reads, returns the current setting
      --  of the claim tag.
      CLAIMCLR      : ETMCLAIMCLR_CLAIMCLR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCLAIMCLR_Register use record
      CLAIMCLR      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Lock Status. This bit is HIGH when the device is locked, and LOW when
   --  unlocked.
   type LSR_STATUS_Field is
     (
      --  Access permitted.
      Status_0,
      --  Write access to the component is blocked. All writes to control
      --  registers are ignored. Reads are permitted.
      Status_1)
     with Size => 1;
   for LSR_STATUS_Field use
     (Status_0 => 0,
      Status_1 => 1);

   --  Lock Status Register
   type ETMLSR_Register is record
      --  Read-only. Lock mechanism is implemented. This bit always reads 1.
      IMP           : Boolean;
      --  Read-only. Lock Status. This bit is HIGH when the device is locked,
      --  and LOW when unlocked.
      STATUS        : LSR_STATUS_Field;
      --  Read-only. Access Lock Register size. This bit reads 0 to indicate a
      --  32-bit register is present.
      s8BIT         : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMLSR_Register use record
      IMP           at 0 range 0 .. 0;
      STATUS        at 0 range 1 .. 1;
      s8BIT         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ETMAUTHSTATUS_NSID_Field is HAL.UInt2;

   --  Permission for Non-secure non-invasive debug.
   type AUTHSTATUS_NSNID_Field is
     (
      --  Non-secure non-invasive debug disabled
      Nsnid_2,
      --  Non-secure non-invasive debug enabled
      Nsnid_3)
     with Size => 2;
   for AUTHSTATUS_NSNID_Field use
     (Nsnid_2 => 2,
      Nsnid_3 => 3);

   subtype ETMAUTHSTATUS_SID_Field is HAL.UInt2;
   subtype ETMAUTHSTATUS_SNID_Field is HAL.UInt2;

   --  Authentication Status Register
   type ETMAUTHSTATUS_Register is record
      --  Read-only. Reads as b00, Non-secure invasive debug not supported by
      --  the ETM.
      NSID          : ETMAUTHSTATUS_NSID_Field;
      --  Read-only. Permission for Non-secure non-invasive debug.
      NSNID         : AUTHSTATUS_NSNID_Field;
      --  Read-only. Reads as b00, Secure invasive debug not supported by the
      --  ETM.
      SID           : ETMAUTHSTATUS_SID_Field;
      --  Read-only. Permission for Secure non-invasive debug.
      SNID          : ETMAUTHSTATUS_SNID_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMAUTHSTATUS_Register use record
      NSID          at 0 range 0 .. 1;
      NSNID         at 0 range 2 .. 3;
      SID           at 0 range 4 .. 5;
      SNID          at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Major Type and Class
   type DEVTYPE_MajorType_Field is
     (
      --  Trace source
      Majortype_3)
     with Size => 4;
   for DEVTYPE_MajorType_Field use
     (Majortype_3 => 3);

   --  Sub Type
   type DEVTYPE_SubType_Field is
     (
      --  Processor trace
      Subtype_1)
     with Size => 4;
   for DEVTYPE_SubType_Field use
     (Subtype_1 => 1);

   --  CoreSight Device Type Register
   type ETMDEVTYPE_Register is record
      --  Read-only. Major Type and Class
      MajorType     : DEVTYPE_MajorType_Field;
      --  Read-only. Sub Type
      SubType_k     : DEVTYPE_SubType_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMDEVTYPE_Register use record
      MajorType     at 0 range 0 .. 3;
      SubType_k     at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR4_JEP106_Field is HAL.UInt4;
   subtype ETMPIDR4_c4KB_Field is HAL.UInt4;

   --  Peripheral Identification Register 4
   type ETMPIDR4_Register is record
      --  Read-only. JEP106 continuation code.
      JEP106        : ETMPIDR4_JEP106_Field;
      --  Read-only. 4KB Count
      c4KB          : ETMPIDR4_c4KB_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR4_Register use record
      JEP106        at 0 range 0 .. 3;
      c4KB          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR0_PartNumber_Field is HAL.UInt8;

   --  Peripheral Identification Register 0
   type ETMPIDR0_Register is record
      --  Read-only. Part Number [7:0]
      PartNumber    : ETMPIDR0_PartNumber_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR0_Register use record
      PartNumber    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR1_PartNumber_Field is HAL.UInt4;
   subtype ETMPIDR1_JEP106_identity_code_Field is HAL.UInt4;

   --  Peripheral Identification Register 1
   type ETMPIDR1_Register is record
      --  Read-only. Part Number [11:8]
      PartNumber           : ETMPIDR1_PartNumber_Field;
      --  Read-only. JEP106 identity code [3:0]
      JEP106_identity_code : ETMPIDR1_JEP106_identity_code_Field;
      --  unspecified
      Reserved_8_31        : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR1_Register use record
      PartNumber           at 0 range 0 .. 3;
      JEP106_identity_code at 0 range 4 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR2_JEP106_identity_code_Field is HAL.UInt3;
   subtype ETMPIDR2_Revision_Field is HAL.UInt4;

   --  Peripheral Identification Register 2
   type ETMPIDR2_Register is record
      --  Read-only. JEP106 identity code [6:4]
      JEP106_identity_code : ETMPIDR2_JEP106_identity_code_Field;
      --  unspecified
      Reserved_3_3         : HAL.Bit;
      --  Read-only. Revision
      Revision             : ETMPIDR2_Revision_Field;
      --  unspecified
      Reserved_8_31        : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR2_Register use record
      JEP106_identity_code at 0 range 0 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      Revision             at 0 range 4 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR3_CustomerModified_Field is HAL.UInt4;
   subtype ETMPIDR3_RevAnd_Field is HAL.UInt4;

   --  Peripheral Identification Register 3
   type ETMPIDR3_Register is record
      --  Read-only. Customer Modified.
      CustomerModified : ETMPIDR3_CustomerModified_Field;
      --  Read-only. RevAnd
      RevAnd           : ETMPIDR3_RevAnd_Field;
      --  unspecified
      Reserved_8_31    : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR3_Register use record
      CustomerModified at 0 range 0 .. 3;
      RevAnd           at 0 range 4 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   subtype CIDR_Preamble_Field is HAL.UInt8;

   --  Component Identification Register 0
   type CIDR_Register is record
      --  Read-only. Preamble
      Preamble      : CIDR_Preamble_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIDR_Register use record
      Preamble      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMCIDR1_Preamble_Field is HAL.UInt4;

   --  Component class
   type CIDR1_ComponentClass_Field is
     (
      --  ROM table.
      Componentclass_1,
      --  CoreSight component.
      Componentclass_9,
      --  PrimeCell of system component with no standardized register layout,
      --  for backward compatibility.
      Componentclass_15)
     with Size => 4;
   for CIDR1_ComponentClass_Field use
     (Componentclass_1 => 1,
      Componentclass_9 => 9,
      Componentclass_15 => 15);

   --  Component Identification Register 1
   type ETMCIDR1_Register is record
      --  Read-only. Preamble
      Preamble       : ETMCIDR1_Preamble_Field;
      --  Read-only. Component class
      ComponentClass : CIDR1_ComponentClass_Field;
      --  unspecified
      Reserved_8_31  : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCIDR1_Register use record
      Preamble       at 0 range 0 .. 3;
      ComponentClass at 0 range 4 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Embedded Trace Macrocell Registers
   type ETM_Peripheral is record
      --  Main Control Register
      CR         : aliased ETMCR_Register;
      --  Configuration Code Register
      CCR        : aliased ETMCCR_Register;
      --  Trigger Event Register
      TRIGGER    : aliased ETMTRIGGER_Register;
      --  ETM Status Register
      SR         : aliased ETMSR_Register;
      --  System Configuration Register
      SCR        : aliased ETMSCR_Register;
      --  Trace Enable Event Register
      EEVR       : aliased ETMEEVR_Register;
      --  Trace Enable Control 1 Register
      TECR1      : aliased ETMTECR1_Register;
      --  FIFOFULL Level Register
      FFLR       : aliased ETMFFLR_Register;
      --  Free-running counter reload value
      CNTRLDVR1  : aliased ETMCNTRLDVR1_Register;
      --  Synchronization Frequency Register
      SYNCFR     : aliased ETMSYNCFR_Register;
      --  ID Register
      IDR        : aliased ETMIDR_Register;
      --  Configuration Code Extension Register
      CCER       : aliased ETMCCER_Register;
      --  TraceEnable Start/Stop EmbeddedICE Control Register
      TESSEICR   : aliased ETMTESSEICR_Register;
      --  Timestamp Event Register
      TSEVR      : aliased ETMTSEVR_Register;
      --  CoreSight Trace ID Register
      TRACEIDR   : aliased ETMTRACEIDR_Register;
      --  ETM ID Register 2
      IDR2       : aliased HAL.UInt32;
      --  Device Power-Down Status Register
      PDSR       : aliased ETMPDSR_Register;
      --  Integration Test Miscelaneous Inputs Register
      ITMISCIN   : aliased ETM_ITMISCIN_Register;
      --  Integration Test Trigger Out Register
      ITTRIGOUT  : aliased ETM_ITTRIGOUT_Register;
      --  ETM Integration Test ATB Control 2 Register
      ITATBCTR2  : aliased ETM_ITATBCTR2_Register;
      --  ETM Integration Test ATB Control 0 Register
      ITATBCTR0  : aliased ETM_ITATBCTR0_Register;
      --  Integration Mode Control Register
      ITCTRL     : aliased ETMITCTRL_Register;
      --  Claim Tag Set Register
      CLAIMSET   : aliased ETMCLAIMSET_Register;
      --  Claim Tag Clear Register
      CLAIMCLR   : aliased ETMCLAIMCLR_Register;
      --  Lock Access Register
      LAR        : aliased HAL.UInt32;
      --  Lock Status Register
      LSR        : aliased ETMLSR_Register;
      --  Authentication Status Register
      AUTHSTATUS : aliased ETMAUTHSTATUS_Register;
      --  CoreSight Device Type Register
      DEVTYPE    : aliased ETMDEVTYPE_Register;
      --  Peripheral Identification Register 4
      PIDR4      : aliased ETMPIDR4_Register;
      --  Peripheral Identification Register 5
      PIDR5      : aliased HAL.UInt32;
      --  Peripheral Identification Register 6
      PIDR6      : aliased HAL.UInt32;
      --  Peripheral Identification Register 7
      PIDR7      : aliased HAL.UInt32;
      --  Peripheral Identification Register 0
      PIDR0      : aliased ETMPIDR0_Register;
      --  Peripheral Identification Register 1
      PIDR1      : aliased ETMPIDR1_Register;
      --  Peripheral Identification Register 2
      PIDR2      : aliased ETMPIDR2_Register;
      --  Peripheral Identification Register 3
      PIDR3      : aliased ETMPIDR3_Register;
      --  Component Identification Register 0
      CIDR0      : aliased CIDR_Register;
      --  Component Identification Register 1
      CIDR1      : aliased ETMCIDR1_Register;
      --  Component Identification Register 2
      CIDR2      : aliased CIDR_Register;
      --  Component Identification Register 3
      CIDR3      : aliased CIDR_Register;
   end record
     with Volatile;

   for ETM_Peripheral use record
      CR         at 16#0# range 0 .. 31;
      CCR        at 16#4# range 0 .. 31;
      TRIGGER    at 16#8# range 0 .. 31;
      SR         at 16#10# range 0 .. 31;
      SCR        at 16#14# range 0 .. 31;
      EEVR       at 16#20# range 0 .. 31;
      TECR1      at 16#24# range 0 .. 31;
      FFLR       at 16#28# range 0 .. 31;
      CNTRLDVR1  at 16#140# range 0 .. 31;
      SYNCFR     at 16#1E0# range 0 .. 31;
      IDR        at 16#1E4# range 0 .. 31;
      CCER       at 16#1E8# range 0 .. 31;
      TESSEICR   at 16#1F0# range 0 .. 31;
      TSEVR      at 16#1F8# range 0 .. 31;
      TRACEIDR   at 16#200# range 0 .. 31;
      IDR2       at 16#208# range 0 .. 31;
      PDSR       at 16#314# range 0 .. 31;
      ITMISCIN   at 16#EE0# range 0 .. 31;
      ITTRIGOUT  at 16#EE8# range 0 .. 31;
      ITATBCTR2  at 16#EF0# range 0 .. 31;
      ITATBCTR0  at 16#EF8# range 0 .. 31;
      ITCTRL     at 16#F00# range 0 .. 31;
      CLAIMSET   at 16#FA0# range 0 .. 31;
      CLAIMCLR   at 16#FA4# range 0 .. 31;
      LAR        at 16#FB0# range 0 .. 31;
      LSR        at 16#FB4# range 0 .. 31;
      AUTHSTATUS at 16#FB8# range 0 .. 31;
      DEVTYPE    at 16#FCC# range 0 .. 31;
      PIDR4      at 16#FD0# range 0 .. 31;
      PIDR5      at 16#FD4# range 0 .. 31;
      PIDR6      at 16#FD8# range 0 .. 31;
      PIDR7      at 16#FDC# range 0 .. 31;
      PIDR0      at 16#FE0# range 0 .. 31;
      PIDR1      at 16#FE4# range 0 .. 31;
      PIDR2      at 16#FE8# range 0 .. 31;
      PIDR3      at 16#FEC# range 0 .. 31;
      CIDR0      at 16#FF0# range 0 .. 31;
      CIDR1      at 16#FF4# range 0 .. 31;
      CIDR2      at 16#FF8# range 0 .. 31;
      CIDR3      at 16#FFC# range 0 .. 31;
   end record;

   --  Embedded Trace Macrocell Registers
   ETM_Periph : aliased ETM_Peripheral
     with Import, Address => System'To_Address (16#E0041000#);

end NRF_SVD.ETM;
