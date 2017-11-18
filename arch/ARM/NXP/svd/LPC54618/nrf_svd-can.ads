--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54618.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CAN is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DBTP_DSJW_Field is HAL.UInt4;
   subtype DBTP_DTSEG2_Field is HAL.UInt4;
   subtype DBTP_DTSEG1_Field is HAL.UInt5;
   subtype DBTP_DBRP_Field is HAL.UInt5;

   --  Data Bit Timing Prescaler Register
   type DBTP_Register is record
      --  Data (re)synchronization jump width.
      DSJW           : DBTP_DSJW_Field := 16#3#;
      --  Data time segment after sample point.
      DTSEG2         : DBTP_DTSEG2_Field := 16#3#;
      --  Data time segment before sample point.
      DTSEG1         : DBTP_DTSEG1_Field := 16#A#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Data bit rate prescaler.
      DBRP           : DBTP_DBRP_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Transmitter delay compensation.
      TDC            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBTP_Register use record
      DSJW           at 0 range 0 .. 3;
      DTSEG2         at 0 range 4 .. 7;
      DTSEG1         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBRP           at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      TDC            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TEST_TX_Field is HAL.UInt2;

   --  Test Register
   type TEST_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Loop back mode.
      LBCK          : Boolean := False;
      --  Control of transmit pin.
      TX            : TEST_TX_Field := 16#0#;
      --  Monitors the actual value of the CAN_RXD.
      RX            : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEST_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      LBCK          at 0 range 4 .. 4;
      TX            at 0 range 5 .. 6;
      RX            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CC Control Register
   type CCCR_Register is record
      --  Initialization.
      INIT           : Boolean := True;
      --  Configuration change enable.
      CCE            : Boolean := False;
      --  Restricted operational mode.
      ASM            : Boolean := False;
      --  Clock Stop Acknowledge.
      CSA            : Boolean := False;
      --  Clock Stop Request.
      CSR            : Boolean := False;
      --  Bus monitoring mode.
      MON            : Boolean := False;
      --  Disable automatic retransmission.
      DAR            : Boolean := False;
      --  Test mode enable.
      TEST           : Boolean := False;
      --  CAN FD operation enable.
      FDOE           : Boolean := False;
      --  When CAN FD operation is disabled, this bit is not evaluated.
      BRSE           : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Protocol exception handling disable.
      PXHD           : Boolean := False;
      --  Edge filtering during bus integration.
      EFBI           : Boolean := False;
      --  Transmit pause.
      TXP            : Boolean := False;
      --  Non ISO operation.
      NISO           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCCR_Register use record
      INIT           at 0 range 0 .. 0;
      CCE            at 0 range 1 .. 1;
      ASM            at 0 range 2 .. 2;
      CSA            at 0 range 3 .. 3;
      CSR            at 0 range 4 .. 4;
      MON            at 0 range 5 .. 5;
      DAR            at 0 range 6 .. 6;
      TEST           at 0 range 7 .. 7;
      FDOE           at 0 range 8 .. 8;
      BRSE           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PXHD           at 0 range 12 .. 12;
      EFBI           at 0 range 13 .. 13;
      TXP            at 0 range 14 .. 14;
      NISO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype NBTP_NTSEG2_Field is HAL.UInt7;
   subtype NBTP_NTSEG1_Field is HAL.UInt8;
   subtype NBTP_NBRP_Field is HAL.UInt9;
   subtype NBTP_NSJW_Field is HAL.UInt7;

   --  Nominal Bit Timing and Prescaler Register
   type NBTP_Register is record
      --  Nominal time segment after sample point.
      NTSEG2       : NBTP_NTSEG2_Field := 16#3#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
      --  Nominal time segment before sample point.
      NTSEG1       : NBTP_NTSEG1_Field := 16#A#;
      --  Nominal bit rate prescaler.
      NBRP         : NBTP_NBRP_Field := 16#0#;
      --  Nominal (re)synchronization jump width.
      NSJW         : NBTP_NSJW_Field := 16#3#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NBTP_Register use record
      NTSEG2       at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      NTSEG1       at 0 range 8 .. 15;
      NBRP         at 0 range 16 .. 24;
      NSJW         at 0 range 25 .. 31;
   end record;

   subtype TSCC_TSS_Field is HAL.UInt2;
   subtype TSCC_TCP_Field is HAL.UInt4;

   --  Timestamp Counter Configuration
   type TSCC_Register is record
      --  Timestamp select.
      TSS            : TSCC_TSS_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Timestamp counter prescaler Configures the timestamp and timeout
      --  counters time unit in multiple of CAN bit times.
      TCP            : TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TSCV_TSC_Field is HAL.UInt16;

   --  Timestamp Counter Value
   type TSCV_Register is record
      --  Timestamp counter.
      TSC            : TSCV_TSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TOCC_TOS_Field is HAL.UInt2;
   subtype TOCC_TOP_Field is HAL.UInt16;

   --  Timeout Counter Configuration
   type TOCC_Register is record
      --  Enable timeout counter.
      ETOC          : Boolean := False;
      --  Timeout select.
      TOS           : TOCC_TOS_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
      --  Timeout period.
      TOP           : TOCC_TOP_Field := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOCC_Register use record
      ETOC          at 0 range 0 .. 0;
      TOS           at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      TOP           at 0 range 16 .. 31;
   end record;

   subtype TOCV_TOC_Field is HAL.UInt16;

   --  Timeout Counter Value
   type TOCV_Register is record
      --  Read-only. Timeout counter.
      TOC            : TOCV_TOC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ECR_TEC_Field is HAL.UInt8;
   subtype ECR_REC_Field is HAL.UInt7;
   subtype ECR_CEL_Field is HAL.UInt8;

   --  Error Counter Register
   type ECR_Register is record
      --  Read-only. Transmit error counter.
      TEC            : ECR_TEC_Field;
      --  Read-only. Receive error counter.
      REC            : ECR_REC_Field;
      --  Read-only. Receive error passive.
      RP             : Boolean;
      --  Read-only. CAN error logging.
      CEL            : ECR_CEL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECR_Register use record
      TEC            at 0 range 0 .. 7;
      REC            at 0 range 8 .. 14;
      RP             at 0 range 15 .. 15;
      CEL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PSR_LEC_Field is HAL.UInt3;
   subtype PSR_ACT_Field is HAL.UInt2;
   subtype PSR_DLEC_Field is HAL.UInt3;
   subtype PSR_TDCV_Field is HAL.UInt7;

   --  Protocol Status Register
   type PSR_Register is record
      --  Read-only. Last error code.
      LEC            : PSR_LEC_Field;
      --  Read-only. Activity.
      ACT            : PSR_ACT_Field;
      --  Read-only. Error Passive.
      EP             : Boolean;
      --  Read-only. Warning status.
      EW             : Boolean;
      --  Read-only. Bus Off Status.
      BO             : Boolean;
      --  Read-only. Data phase last error code.
      DLEC           : PSR_DLEC_Field;
      --  Read-only. ESI flag of the last received CAN FD message.
      RESI           : Boolean;
      --  Read-only. BRS flag of last received CAN FD message.
      RBRS           : Boolean;
      --  Read-only. Received a CAN FD message.
      RFDF           : Boolean;
      --  Read-only. Protocol exception event.
      PXE            : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Transmitter delay compensation value.
      TDCV           : PSR_TDCV_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      LEC            at 0 range 0 .. 2;
      ACT            at 0 range 3 .. 4;
      EP             at 0 range 5 .. 5;
      EW             at 0 range 6 .. 6;
      BO             at 0 range 7 .. 7;
      DLEC           at 0 range 8 .. 10;
      RESI           at 0 range 11 .. 11;
      RBRS           at 0 range 12 .. 12;
      RFDF           at 0 range 13 .. 13;
      PXE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDCV           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype TDCR_TDCF_Field is HAL.UInt7;
   subtype TDCR_TDCO_Field is HAL.UInt7;

   --  Transmitter Delay Compensator Register
   type TDCR_Register is record
      --  Transmitter delay compensation filter window length.
      TDCF           : TDCR_TDCF_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Transmitter delay compensation offset.
      TDCO           : TDCR_TDCO_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TDCR_Register use record
      TDCF           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TDCO           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Interrupt Register
   type IR_Register is record
      --  Rx FIFO 0 new message.
      RF0N           : Boolean := False;
      --  Rx FIFO 0 watermark reached.
      RF0W           : Boolean := False;
      --  Rx FIFO 0 full.
      RF0F           : Boolean := False;
      --  Rx FIFO 0 message lost.
      RF0L           : Boolean := False;
      --  Rx FIFO 1 new message.
      RF1N           : Boolean := False;
      --  Rx FIFO 1 watermark reached.
      RF1W           : Boolean := False;
      --  Rx FIFO 1 full.
      RF1F           : Boolean := False;
      --  Rx FIFO 1 message lost.
      RF1L           : Boolean := False;
      --  High priority message.
      HPM            : Boolean := False;
      --  Transmission completed.
      TC             : Boolean := False;
      --  Transmission cancellation finished.
      TCF            : Boolean := False;
      --  Tx FIFO empty.
      TFE            : Boolean := False;
      --  Tx event FIFO new entry.
      TEFN           : Boolean := False;
      --  Tx event FIFO watermark reached.
      TEFW           : Boolean := False;
      --  Tx event FIFO full.
      TEFF           : Boolean := False;
      --  Tx event FIFO element lost.
      TEFL           : Boolean := False;
      --  Timestamp wraparound.
      TSW            : Boolean := False;
      --  Message RAM access failure.
      MRAF           : Boolean := False;
      --  Timeout occurred.
      TOO            : Boolean := False;
      --  Message stored in dedicated Rx buffer.
      DRX            : Boolean := False;
      --  Bit error corrected.
      BEC            : Boolean := False;
      --  Bit error uncorrected.
      BEU            : Boolean := False;
      --  Error logging overflow.
      ELO            : Boolean := False;
      --  Error passive.
      EP             : Boolean := False;
      --  Warning status.
      EW             : Boolean := False;
      --  Bus_Off Status.
      BO             : Boolean := False;
      --  Watchdog interrupt.
      WDI            : Boolean := False;
      --  Protocol error in arbitration phase.
      PEA            : Boolean := False;
      --  Protocol error in data phase.
      PED            : Boolean := False;
      --  Access to reserved address.
      ARA            : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IR_Register use record
      RF0N           at 0 range 0 .. 0;
      RF0W           at 0 range 1 .. 1;
      RF0F           at 0 range 2 .. 2;
      RF0L           at 0 range 3 .. 3;
      RF1N           at 0 range 4 .. 4;
      RF1W           at 0 range 5 .. 5;
      RF1F           at 0 range 6 .. 6;
      RF1L           at 0 range 7 .. 7;
      HPM            at 0 range 8 .. 8;
      TC             at 0 range 9 .. 9;
      TCF            at 0 range 10 .. 10;
      TFE            at 0 range 11 .. 11;
      TEFN           at 0 range 12 .. 12;
      TEFW           at 0 range 13 .. 13;
      TEFF           at 0 range 14 .. 14;
      TEFL           at 0 range 15 .. 15;
      TSW            at 0 range 16 .. 16;
      MRAF           at 0 range 17 .. 17;
      TOO            at 0 range 18 .. 18;
      DRX            at 0 range 19 .. 19;
      BEC            at 0 range 20 .. 20;
      BEU            at 0 range 21 .. 21;
      ELO            at 0 range 22 .. 22;
      EP             at 0 range 23 .. 23;
      EW             at 0 range 24 .. 24;
      BO             at 0 range 25 .. 25;
      WDI            at 0 range 26 .. 26;
      PEA            at 0 range 27 .. 27;
      PED            at 0 range 28 .. 28;
      ARA            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Enable
   type IE_Register is record
      --  Rx FIFO 0 new message interrupt enable.
      RF0NE          : Boolean := False;
      --  Rx FIFO 0 watermark reached interrupt enable.
      RF0WE          : Boolean := False;
      --  Rx FIFO 0 full interrupt enable.
      RF0FE          : Boolean := False;
      --  Rx FIFO 0 message lost interrupt enable.
      RF0LE          : Boolean := False;
      --  Rx FIFO 1 new message interrupt enable.
      RF1NE          : Boolean := False;
      --  Rx FIFO 1 watermark reached interrupt enable.
      RF1WE          : Boolean := False;
      --  Rx FIFO 1 full interrupt enable.
      RF1FE          : Boolean := False;
      --  Rx FIFO 1 message lost interrupt enable.
      RF1LE          : Boolean := False;
      --  High priority message interrupt enable.
      HPME           : Boolean := False;
      --  Transmission completed interrupt enable.
      TCE            : Boolean := False;
      --  Transmission cancellation finished interrupt enable.
      TCFE           : Boolean := False;
      --  Tx FIFO empty interrupt enable.
      TFEE           : Boolean := False;
      --  Tx event FIFO new entry interrupt enable.
      TEFNE          : Boolean := False;
      --  Tx event FIFO watermark reached interrupt enable.
      TEFWE          : Boolean := False;
      --  Tx event FIFO full interrupt enable.
      TEFFE          : Boolean := False;
      --  Tx event FIFO element lost interrupt enable.
      TEFLE          : Boolean := False;
      --  Timestamp wraparound interrupt enable.
      TSWE           : Boolean := False;
      --  Message RAM access failure interrupt enable.
      MRAFE          : Boolean := False;
      --  Timeout occurred interrupt enable.
      TOOE           : Boolean := False;
      --  Message stored in dedicated Rx buffer interrupt enable.
      DRXE           : Boolean := False;
      --  Bit error corrected interrupt enable.
      BECE           : Boolean := False;
      --  Bit error uncorrected interrupt enable.
      BEUE           : Boolean := False;
      --  Error logging overflow interrupt enable.
      ELOE           : Boolean := False;
      --  Error passive interrupt enable.
      EPE            : Boolean := False;
      --  Warning status interrupt enable.
      EWE            : Boolean := False;
      --  Bus_Off Status interrupt enable.
      BOE            : Boolean := False;
      --  Watchdog interrupt enable.
      WDIE           : Boolean := False;
      --  Protocol error in arbitration phase interrupt enable.
      PEAE           : Boolean := False;
      --  Protocol error in data phase interrupt enable.
      PEDE           : Boolean := False;
      --  Access to reserved address interrupt enable.
      ARAE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      RF0NE          at 0 range 0 .. 0;
      RF0WE          at 0 range 1 .. 1;
      RF0FE          at 0 range 2 .. 2;
      RF0LE          at 0 range 3 .. 3;
      RF1NE          at 0 range 4 .. 4;
      RF1WE          at 0 range 5 .. 5;
      RF1FE          at 0 range 6 .. 6;
      RF1LE          at 0 range 7 .. 7;
      HPME           at 0 range 8 .. 8;
      TCE            at 0 range 9 .. 9;
      TCFE           at 0 range 10 .. 10;
      TFEE           at 0 range 11 .. 11;
      TEFNE          at 0 range 12 .. 12;
      TEFWE          at 0 range 13 .. 13;
      TEFFE          at 0 range 14 .. 14;
      TEFLE          at 0 range 15 .. 15;
      TSWE           at 0 range 16 .. 16;
      MRAFE          at 0 range 17 .. 17;
      TOOE           at 0 range 18 .. 18;
      DRXE           at 0 range 19 .. 19;
      BECE           at 0 range 20 .. 20;
      BEUE           at 0 range 21 .. 21;
      ELOE           at 0 range 22 .. 22;
      EPE            at 0 range 23 .. 23;
      EWE            at 0 range 24 .. 24;
      BOE            at 0 range 25 .. 25;
      WDIE           at 0 range 26 .. 26;
      PEAE           at 0 range 27 .. 27;
      PEDE           at 0 range 28 .. 28;
      ARAE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Line Select
   type ILS_Register is record
      --  Rx FIFO 0 new message interrupt line.
      RF0NL          : Boolean := False;
      --  Rx FIFO 0 watermark reached interrupt line.
      RF0WL          : Boolean := False;
      --  Rx FIFO 0 full interrupt line.
      RF0FL          : Boolean := False;
      --  Rx FIFO 0 message lost interrupt line.
      RF0LL          : Boolean := False;
      --  Rx FIFO 1 new message interrupt line.
      RF1NL          : Boolean := False;
      --  Rx FIFO 1 watermark reached interrupt line.
      RF1WL          : Boolean := False;
      --  Rx FIFO 1 full interrupt line.
      RF1FL          : Boolean := False;
      --  Rx FIFO 1 message lost interrupt line.
      RF1LL          : Boolean := False;
      --  High priority message interrupt line.
      HPML           : Boolean := False;
      --  Transmission completed interrupt line.
      TCL            : Boolean := False;
      --  Transmission cancellation finished interrupt line.
      TCFL           : Boolean := False;
      --  Tx FIFO empty interrupt line.
      TFEL           : Boolean := False;
      --  Tx event FIFO new entry interrupt line.
      TEFNL          : Boolean := False;
      --  Tx event FIFO watermark reached interrupt line.
      TEFWL          : Boolean := False;
      --  Tx event FIFO full interrupt line.
      TEFFL          : Boolean := False;
      --  Tx event FIFO element lost interrupt line.
      TEFLL          : Boolean := False;
      --  Timestamp wraparound interrupt line.
      TSWL           : Boolean := False;
      --  Message RAM access failure interrupt line.
      MRAFL          : Boolean := False;
      --  Timeout occurred interrupt line.
      TOOL           : Boolean := False;
      --  Message stored in dedicated Rx buffer interrupt line.
      DRXL           : Boolean := False;
      --  Bit error corrected interrupt line.
      BECL           : Boolean := False;
      --  Bit error uncorrected interrupt line.
      BEUL           : Boolean := False;
      --  Error logging overflow interrupt line.
      ELOL           : Boolean := False;
      --  Error passive interrupt line.
      EPL            : Boolean := False;
      --  Warning status interrupt line.
      EWL            : Boolean := False;
      --  Bus_Off Status interrupt line.
      BOL            : Boolean := False;
      --  Watchdog interrupt line.
      WDIL           : Boolean := False;
      --  Protocol error in arbitration phase interrupt line.
      PEAL           : Boolean := False;
      --  Protocol error in data phase interrupt line.
      PEDL           : Boolean := False;
      --  Access to reserved address interrupt line.
      ARAL           : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILS_Register use record
      RF0NL          at 0 range 0 .. 0;
      RF0WL          at 0 range 1 .. 1;
      RF0FL          at 0 range 2 .. 2;
      RF0LL          at 0 range 3 .. 3;
      RF1NL          at 0 range 4 .. 4;
      RF1WL          at 0 range 5 .. 5;
      RF1FL          at 0 range 6 .. 6;
      RF1LL          at 0 range 7 .. 7;
      HPML           at 0 range 8 .. 8;
      TCL            at 0 range 9 .. 9;
      TCFL           at 0 range 10 .. 10;
      TFEL           at 0 range 11 .. 11;
      TEFNL          at 0 range 12 .. 12;
      TEFWL          at 0 range 13 .. 13;
      TEFFL          at 0 range 14 .. 14;
      TEFLL          at 0 range 15 .. 15;
      TSWL           at 0 range 16 .. 16;
      MRAFL          at 0 range 17 .. 17;
      TOOL           at 0 range 18 .. 18;
      DRXL           at 0 range 19 .. 19;
      BECL           at 0 range 20 .. 20;
      BEUL           at 0 range 21 .. 21;
      ELOL           at 0 range 22 .. 22;
      EPL            at 0 range 23 .. 23;
      EWL            at 0 range 24 .. 24;
      BOL            at 0 range 25 .. 25;
      WDIL           at 0 range 26 .. 26;
      PEAL           at 0 range 27 .. 27;
      PEDL           at 0 range 28 .. 28;
      ARAL           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  ILE_EINT array
   type ILE_EINT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ILE_EINT
   type ILE_EINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EINT as a value
            Val : HAL.UInt2;
         when True =>
            --  EINT as an array
            Arr : ILE_EINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ILE_EINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Line Enable
   type ILE_Register is record
      --  Enable interrupt line 0.
      EINT          : ILE_EINT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype GFC_ANFE_Field is HAL.UInt2;
   subtype GFC_ANFS_Field is HAL.UInt2;

   --  Global Filter Configuration
   type GFC_Register is record
      --  Reject remote frames extended.
      RRFE          : Boolean := False;
      --  Reject remote frames standard.
      RRFS          : Boolean := False;
      --  Accept non-matching frames extended.
      ANFE          : GFC_ANFE_Field := 16#0#;
      --  Accept non-matching frames standard.
      ANFS          : GFC_ANFS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFC_Register use record
      RRFE          at 0 range 0 .. 0;
      RRFS          at 0 range 1 .. 1;
      ANFE          at 0 range 2 .. 3;
      ANFS          at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SIDFC_FLSSA_Field is HAL.UInt14;
   subtype SIDFC_LSS_Field is HAL.UInt8;

   --  Standard ID Filter Configuration
   type SIDFC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Filter list standard start address.
      FLSSA          : SIDFC_FLSSA_Field := 16#0#;
      --  List size standard 0 = No standard message ID filter.
      LSS            : SIDFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLSSA          at 0 range 2 .. 15;
      LSS            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype XIDFC_FLESA_Field is HAL.UInt14;
   subtype XIDFC_LSE_Field is HAL.UInt8;

   --  Extended ID Filter Configuration
   type XIDFC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Filter list extended start address.
      FLESA          : XIDFC_FLESA_Field := 16#0#;
      --  List size extended 0 = No extended message ID filter.
      LSE            : XIDFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLESA          at 0 range 2 .. 15;
      LSE            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype XIDAM_EIDM_Field is HAL.UInt29;

   --  Extended ID AND Mask
   type XIDAM_Register is record
      --  Extended ID mask.
      EIDM           : XIDAM_EIDM_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for XIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype HPMS_BIDX_Field is HAL.UInt6;
   subtype HPMS_MSI_Field is HAL.UInt2;
   subtype HPMS_FIDX_Field is HAL.UInt7;

   --  High Priority Message Status
   type HPMS_Register is record
      --  Read-only. Buffer index.
      BIDX           : HPMS_BIDX_Field;
      --  Read-only. Message storage indicator.
      MSI            : HPMS_MSI_Field;
      --  Read-only. Filter index.
      FIDX           : HPMS_FIDX_Field;
      --  Read-only. Filter list.
      FLST           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPMS_Register use record
      BIDX           at 0 range 0 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDX           at 0 range 8 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXF0C_F0SA_Field is HAL.UInt14;
   subtype RXF0C_F0S_Field is HAL.UInt7;
   subtype RXF0C_F0WM_Field is HAL.UInt7;

   --  Rx FIFO 0 Configuration
   type RXF0C_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Rx FIFO 0 start address.
      F0SA           : RXF0C_F0SA_Field := 16#0#;
      --  Rx FIFO 0 size.
      F0S            : RXF0C_F0S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Rx FIFO 0 watermark 0 = Watermark interrupt disabled.
      F0WM           : RXF0C_F0WM_Field := 16#0#;
      --  FIFO 0 operation mode.
      F0OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXF0C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F0SA           at 0 range 2 .. 15;
      F0S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F0WM           at 0 range 24 .. 30;
      F0OM           at 0 range 31 .. 31;
   end record;

   subtype RXF0S_F0FL_Field is HAL.UInt7;
   subtype RXF0S_F0GI_Field is HAL.UInt6;
   subtype RXF0S_F0PI_Field is HAL.UInt6;

   --  Rx FIFO 0 Status
   type RXF0S_Register is record
      --  Rx FIFO 0 fill level.
      F0FL           : RXF0S_F0FL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Rx FIFO 0 get index.
      F0GI           : RXF0S_F0GI_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Rx FIFO 0 put index.
      F0PI           : RXF0S_F0PI_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Rx FIFO 0 full.
      F0F            : Boolean := False;
      --  Rx FIFO 0 message lost.
      RF0L           : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXF0S_Register use record
      F0FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F0GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F0PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RXF0A_F0AI_Field is HAL.UInt6;

   --  Rx FIFO 0 Acknowledge
   type RXF0A_Register is record
      --  Rx FIFO 0 acknowledge index.
      F0AI          : RXF0A_F0AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXF0A_Register use record
      F0AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RXBC_RBSA_Field is HAL.UInt14;

   --  Rx Buffer Configuration
   type RXBC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Rx buffer start address.
      RBSA           : RXBC_RBSA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RBSA           at 0 range 2 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXF1C_F1SA_Field is HAL.UInt14;
   subtype RXF1C_F1S_Field is HAL.UInt7;
   subtype RXF1C_F1WM_Field is HAL.UInt7;

   --  Rx FIFO 1 Configuration
   type RXF1C_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Rx FIFO 1 start address.
      F1SA           : RXF1C_F1SA_Field := 16#0#;
      --  Rx FIFO 1 size 0 = No Rx FIFO 1.
      F1S            : RXF1C_F1S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Rx FIFO 1 watermark 0 = Watermark interrupt disabled.
      F1WM           : RXF1C_F1WM_Field := 16#0#;
      --  FIFO 1 operation mode.
      F1OM           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXF1C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F1SA           at 0 range 2 .. 15;
      F1S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1WM           at 0 range 24 .. 30;
      F1OM           at 0 range 31 .. 31;
   end record;

   subtype RXF1S_F1FL_Field is HAL.UInt7;
   subtype RXF1S_F1GI_Field is HAL.UInt6;
   subtype RXF1S_F1PI_Field is HAL.UInt6;

   --  Rx FIFO 1 Status
   type RXF1S_Register is record
      --  Read-only. Rx FIFO 1 fill level.
      F1FL           : RXF1S_F1FL_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Rx FIFO 1 get index.
      F1GI           : RXF1S_F1GI_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Rx FIFO 1 put index.
      F1PI           : RXF1S_F1PI_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Rx FIFO 1 full.
      F1F            : Boolean;
      --  Read-only. Rx FIFO 1 message lost.
      RF1L           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXF1S_Register use record
      F1FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F1GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F1PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RXF1A_F1AI_Field is HAL.UInt6;

   --  Rx FIFO 1 Acknowledge
   type RXF1A_Register is record
      --  Rx FIFO 1 acknowledge index.
      F1AI          : RXF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXF1A_Register use record
      F1AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RXESC_F0DS_Field is HAL.UInt3;
   subtype RXESC_F1DS_Field is HAL.UInt3;
   subtype RXESC_RBDS_Field is HAL.UInt3;

   --  Rx Buffer and FIFO Element Size Configuration
   type RXESC_Register is record
      --  Rx FIFO 0 data field size.
      F0DS           : RXESC_F0DS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Rx FIFO 1 data field size.
      F1DS           : RXESC_F1DS_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  .
      RBDS           : RXESC_RBDS_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXESC_Register use record
      F0DS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      F1DS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RBDS           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype TXBC_TBSA_Field is HAL.UInt14;
   subtype TXBC_NDTB_Field is HAL.UInt6;
   subtype TXBC_TFQS_Field is HAL.UInt6;

   --  Tx Buffer Configuration
   type TXBC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Tx buffers start address.
      TBSA           : TXBC_TBSA_Field := 16#0#;
      --  Number of dedicated transmit buffers 0 = No dedicated Tx buffers.
      NDTB           : TXBC_NDTB_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Transmit FIFO/queue size 0 = No tx FIFO/Queue.
      TFQS           : TXBC_TFQS_Field := 16#0#;
      --  Tx FIFO/queue mode.
      TFQM           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TBSA           at 0 range 2 .. 15;
      NDTB           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFQS           at 0 range 24 .. 29;
      TFQM           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TXFQS_TFGI_Field is HAL.UInt5;
   subtype TXFQS_TFQPI_Field is HAL.UInt5;

   --  Tx FIFO/Queue Status
   type TXFQS_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Tx FIFO get index.
      TFGI           : TXFQS_TFGI_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Tx FIFO/queue put index.
      TFQPI          : TXFQS_TFQPI_Field := 16#0#;
      --  Tx FIFO/queue full.
      TFQF           : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXFQS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TFQPI          at 0 range 16 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TXESC_TBDS_Field is HAL.UInt3;

   --  Tx Buffer Element Size Configuration
   type TXESC_Register is record
      --  Tx buffer data field size.
      TBDS          : TXESC_TBDS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXESC_Register use record
      TBDS          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype TXEFC_EFSA_Field is HAL.UInt14;
   subtype TXEFC_EFS_Field is HAL.UInt6;
   subtype TXEFC_EFWM_Field is HAL.UInt6;

   --  Tx Event FIFO Configuration
   type TXEFC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Event FIFO start address.
      EFSA           : TXEFC_EFSA_Field := 16#0#;
      --  Event FIFO size 0 = Tx event FIFO disabled.
      EFS            : TXEFC_EFS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Event FIFO watermark 0 = Watermark interrupt disabled.
      EFWM           : TXEFC_EFWM_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXEFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EFSA           at 0 range 2 .. 15;
      EFS            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFWM           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TXEFS_EFFL_Field is HAL.UInt6;
   subtype TXEFS_EFGI_Field is HAL.UInt5;
   subtype TXEFS_EFPI_Field is HAL.UInt6;

   --  Tx Event FIFO Status
   type TXEFS_Register is record
      --  Read-only. Event FIFO fill level.
      EFFL           : TXEFS_EFFL_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Event FIFO get index.
      EFGI           : TXEFS_EFGI_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Event FIFO put index.
      EFPI           : TXEFS_EFPI_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Event FIFO full.
      EFF            : Boolean;
      --  Read-only. Tx event FIFO element lost.
      TEFL           : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXEFS_Register use record
      EFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EFPI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype TXEFA_EFAI_Field is HAL.UInt5;

   --  Tx Event FIFO Acknowledge
   type TXEFA_Register is record
      --  Event FIFO acknowledge index.
      EFAI          : TXEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXEFA_Register use record
      EFAI          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype ETSCC_ETCP_Field is HAL.UInt11;

   --  External Timestamp Counter Configuration
   type ETSCC_Register is record
      --  External timestamp prescaler value.
      ETCP           : ETSCC_ETCP_Field := 16#0#;
      --  unspecified
      Reserved_11_30 : HAL.UInt20 := 16#0#;
      --  External timestamp counter enable.
      ETCE           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETSCC_Register use record
      ETCP           at 0 range 0 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      ETCE           at 0 range 31 .. 31;
   end record;

   subtype ETSCV_ETSC_Field is HAL.UInt16;

   --  External Timestamp Counter Value
   type ETSCV_Register is record
      --  External timestamp counter.
      ETSC           : ETSCV_ETSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETSCV_Register use record
      ETSC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x Controller Area Network Flexible Data
   type CAN_Peripheral is record
      --  Data Bit Timing Prescaler Register
      DBTP   : aliased DBTP_Register;
      --  Test Register
      TEST   : aliased TEST_Register;
      --  CC Control Register
      CCCR   : aliased CCCR_Register;
      --  Nominal Bit Timing and Prescaler Register
      NBTP   : aliased NBTP_Register;
      --  Timestamp Counter Configuration
      TSCC   : aliased TSCC_Register;
      --  Timestamp Counter Value
      TSCV   : aliased TSCV_Register;
      --  Timeout Counter Configuration
      TOCC   : aliased TOCC_Register;
      --  Timeout Counter Value
      TOCV   : aliased TOCV_Register;
      --  Error Counter Register
      ECR    : aliased ECR_Register;
      --  Protocol Status Register
      PSR    : aliased PSR_Register;
      --  Transmitter Delay Compensator Register
      TDCR   : aliased TDCR_Register;
      --  Interrupt Register
      IR     : aliased IR_Register;
      --  Interrupt Enable
      IE     : aliased IE_Register;
      --  Interrupt Line Select
      ILS    : aliased ILS_Register;
      --  Interrupt Line Enable
      ILE    : aliased ILE_Register;
      --  Global Filter Configuration
      GFC    : aliased GFC_Register;
      --  Standard ID Filter Configuration
      SIDFC  : aliased SIDFC_Register;
      --  Extended ID Filter Configuration
      XIDFC  : aliased XIDFC_Register;
      --  Extended ID AND Mask
      XIDAM  : aliased XIDAM_Register;
      --  High Priority Message Status
      HPMS   : aliased HPMS_Register;
      --  New Data 1
      NDAT1  : aliased HAL.UInt32;
      --  New Data 2
      NDAT2  : aliased HAL.UInt32;
      --  Rx FIFO 0 Configuration
      RXF0C  : aliased RXF0C_Register;
      --  Rx FIFO 0 Status
      RXF0S  : aliased RXF0S_Register;
      --  Rx FIFO 0 Acknowledge
      RXF0A  : aliased RXF0A_Register;
      --  Rx Buffer Configuration
      RXBC   : aliased RXBC_Register;
      --  Rx FIFO 1 Configuration
      RXF1C  : aliased RXF1C_Register;
      --  Rx FIFO 1 Status
      RXF1S  : aliased RXF1S_Register;
      --  Rx FIFO 1 Acknowledge
      RXF1A  : aliased RXF1A_Register;
      --  Rx Buffer and FIFO Element Size Configuration
      RXESC  : aliased RXESC_Register;
      --  Tx Buffer Configuration
      TXBC   : aliased TXBC_Register;
      --  Tx FIFO/Queue Status
      TXFQS  : aliased TXFQS_Register;
      --  Tx Buffer Element Size Configuration
      TXESC  : aliased TXESC_Register;
      --  Tx Buffer Request Pending
      TXBRP  : aliased HAL.UInt32;
      --  Tx Buffer Add Request
      TXBAR  : aliased HAL.UInt32;
      --  Tx Buffer Cancellation Request
      TXBCR  : aliased HAL.UInt32;
      --  Tx Buffer Transmission Occurred
      TXBTO  : aliased HAL.UInt32;
      --  Tx Buffer Cancellation Finished
      TXBCF  : aliased HAL.UInt32;
      --  Tx Buffer Transmission Interrupt Enable
      TXBTIE : aliased HAL.UInt32;
      --  Tx Buffer Cancellation Finished Interrupt Enable
      TXBCIE : aliased HAL.UInt32;
      --  Tx Event FIFO Configuration
      TXEFC  : aliased TXEFC_Register;
      --  Tx Event FIFO Status
      TXEFS  : aliased TXEFS_Register;
      --  Tx Event FIFO Acknowledge
      TXEFA  : aliased TXEFA_Register;
      --  CAN Message RAM Base Address
      MRBA   : aliased HAL.UInt32;
      --  External Timestamp Counter Configuration
      ETSCC  : aliased ETSCC_Register;
      --  External Timestamp Counter Value
      ETSCV  : aliased ETSCV_Register;
   end record
     with Volatile;

   for CAN_Peripheral use record
      DBTP   at 16#C# range 0 .. 31;
      TEST   at 16#10# range 0 .. 31;
      CCCR   at 16#18# range 0 .. 31;
      NBTP   at 16#1C# range 0 .. 31;
      TSCC   at 16#20# range 0 .. 31;
      TSCV   at 16#24# range 0 .. 31;
      TOCC   at 16#28# range 0 .. 31;
      TOCV   at 16#2C# range 0 .. 31;
      ECR    at 16#40# range 0 .. 31;
      PSR    at 16#44# range 0 .. 31;
      TDCR   at 16#48# range 0 .. 31;
      IR     at 16#50# range 0 .. 31;
      IE     at 16#54# range 0 .. 31;
      ILS    at 16#58# range 0 .. 31;
      ILE    at 16#5C# range 0 .. 31;
      GFC    at 16#80# range 0 .. 31;
      SIDFC  at 16#84# range 0 .. 31;
      XIDFC  at 16#88# range 0 .. 31;
      XIDAM  at 16#90# range 0 .. 31;
      HPMS   at 16#94# range 0 .. 31;
      NDAT1  at 16#98# range 0 .. 31;
      NDAT2  at 16#9C# range 0 .. 31;
      RXF0C  at 16#A0# range 0 .. 31;
      RXF0S  at 16#A4# range 0 .. 31;
      RXF0A  at 16#A8# range 0 .. 31;
      RXBC   at 16#AC# range 0 .. 31;
      RXF1C  at 16#B0# range 0 .. 31;
      RXF1S  at 16#B4# range 0 .. 31;
      RXF1A  at 16#B8# range 0 .. 31;
      RXESC  at 16#BC# range 0 .. 31;
      TXBC   at 16#C0# range 0 .. 31;
      TXFQS  at 16#C4# range 0 .. 31;
      TXESC  at 16#C8# range 0 .. 31;
      TXBRP  at 16#CC# range 0 .. 31;
      TXBAR  at 16#D0# range 0 .. 31;
      TXBCR  at 16#D4# range 0 .. 31;
      TXBTO  at 16#D8# range 0 .. 31;
      TXBCF  at 16#DC# range 0 .. 31;
      TXBTIE at 16#E0# range 0 .. 31;
      TXBCIE at 16#E4# range 0 .. 31;
      TXEFC  at 16#F0# range 0 .. 31;
      TXEFS  at 16#F4# range 0 .. 31;
      TXEFA  at 16#F8# range 0 .. 31;
      MRBA   at 16#200# range 0 .. 31;
      ETSCC  at 16#400# range 0 .. 31;
      ETSCV  at 16#600# range 0 .. 31;
   end record;

   --  LPC54S60x/LPC5460x Controller Area Network Flexible Data
   CAN0_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#4009D000#);

   --  LPC54S60x/LPC5460x Controller Area Network Flexible Data
   CAN1_Periph : aliased CAN_Peripheral
     with Import, Address => System'To_Address (16#4009E000#);

end NRF_SVD.CAN;
