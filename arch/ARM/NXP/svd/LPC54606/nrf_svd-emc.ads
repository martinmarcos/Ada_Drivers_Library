--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54606.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.EMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Controls operation of the memory controller
   type CONTROL_Register is record
      --  EMC Enable.
      E             : Boolean := True;
      --  Address mirror.
      M             : Boolean := True;
      --  Low-power mode.
      L             : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTROL_Register use record
      E             at 0 range 0 .. 0;
      M             at 0 range 1 .. 1;
      L             at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Provides EMC status information
   type STATUS_Register is record
      --  Read-only. Busy.
      B             : Boolean;
      --  Read-only. Write buffer status.
      S             : Boolean;
      --  Read-only. Self-refresh acknowledge.
      SA            : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      B             at 0 range 0 .. 0;
      S             at 0 range 1 .. 1;
      SA            at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Configures operation of the memory controller
   type CONFIG_Register is record
      --  Endian mode.
      EM            : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  This bit must contain 0 for proper operation of the EMC.
      CLKR          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      EM            at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      CLKR          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DYNAMICCONTROL_I_Field is HAL.UInt2;

   --  Controls dynamic memory operation
   type DYNAMICCONTROL_Register is record
      --  Dynamic memory clock enable.
      CE            : Boolean := False;
      --  Dynamic memory clock control.
      CS            : Boolean := True;
      --  Self-refresh request, EMCSREFREQ.
      SR            : Boolean := True;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Memory clock control.
      MMC           : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  SDRAM initialization.
      I             : DYNAMICCONTROL_I_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICCONTROL_Register use record
      CE            at 0 range 0 .. 0;
      CS            at 0 range 1 .. 1;
      SR            at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      MMC           at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      I             at 0 range 7 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DYNAMICREFRESH_REFRESH_Field is HAL.UInt11;

   --  Configures dynamic memory refresh
   type DYNAMICREFRESH_Register is record
      --  Refresh timer.
      REFRESH        : DYNAMICREFRESH_REFRESH_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICREFRESH_Register use record
      REFRESH        at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DYNAMICREADCONFIG_RD_Field is HAL.UInt2;

   --  Configures dynamic memory read strategy
   type DYNAMICREADCONFIG_Register is record
      --  Read data strategy.
      RD            : DYNAMICREADCONFIG_RD_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICREADCONFIG_Register use record
      RD            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DYNAMICRP_TRP_Field is HAL.UInt4;

   --  Precharge command period
   type DYNAMICRP_Register is record
      --  Precharge command period.
      TRP           : DYNAMICRP_TRP_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRP_Register use record
      TRP           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICRAS_TRAS_Field is HAL.UInt4;

   --  Active to precharge command period
   type DYNAMICRAS_Register is record
      --  Active to precharge command period.
      TRAS          : DYNAMICRAS_TRAS_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRAS_Register use record
      TRAS          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICSREX_TSREX_Field is HAL.UInt4;

   --  Self-refresh exit time
   type DYNAMICSREX_Register is record
      --  Self-refresh exit time.
      TSREX         : DYNAMICSREX_TSREX_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICSREX_Register use record
      TSREX         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICAPR_TAPR_Field is HAL.UInt4;

   --  Last-data-out to active command time
   type DYNAMICAPR_Register is record
      --  Last-data-out to active command time.
      TAPR          : DYNAMICAPR_TAPR_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICAPR_Register use record
      TAPR          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICDAL_TDAL_Field is HAL.UInt4;

   --  Data-in to active command time
   type DYNAMICDAL_Register is record
      --  Data-in to active command.
      TDAL          : DYNAMICDAL_TDAL_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICDAL_Register use record
      TDAL          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICWR_TWR_Field is HAL.UInt4;

   --  Write recovery time
   type DYNAMICWR_Register is record
      --  Write recovery time.
      TWR           : DYNAMICWR_TWR_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICWR_Register use record
      TWR           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICRC_TRC_Field is HAL.UInt5;

   --  Selects the active to active command period
   type DYNAMICRC_Register is record
      --  Active to active command period.
      TRC           : DYNAMICRC_TRC_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRC_Register use record
      TRC           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DYNAMICRFC_TRFC_Field is HAL.UInt5;

   --  Selects the auto-refresh period
   type DYNAMICRFC_Register is record
      --  Auto-refresh period and auto-refresh to active command period.
      TRFC          : DYNAMICRFC_TRFC_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRFC_Register use record
      TRFC          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DYNAMICXSR_TXSR_Field is HAL.UInt5;

   --  Time for exit self-refresh to active command
   type DYNAMICXSR_Register is record
      --  Exit self-refresh to active command time.
      TXSR          : DYNAMICXSR_TXSR_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICXSR_Register use record
      TXSR          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DYNAMICRRD_TRRD_Field is HAL.UInt4;

   --  Latency for active bank A to active bank B
   type DYNAMICRRD_Register is record
      --  Active bank A to active bank B latency 0x0 - 0xE = n + 1 clock
      --  cycles.
      TRRD          : DYNAMICRRD_TRRD_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRRD_Register use record
      TRRD          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DYNAMICMRD_TMRD_Field is HAL.UInt4;

   --  Time for load mode register to active command
   type DYNAMICMRD_Register is record
      --  Load mode register to active command time.
      TMRD          : DYNAMICMRD_TMRD_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICMRD_Register use record
      TMRD          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype STATICEXTENDEDWAIT_EXTENDEDWAIT_Field is HAL.UInt10;

   --  Time for long static memory read and write transfers
   type STATICEXTENDEDWAIT_Register is record
      --  Extended wait time out.
      EXTENDEDWAIT   : STATICEXTENDEDWAIT_EXTENDEDWAIT_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICEXTENDEDWAIT_Register use record
      EXTENDEDWAIT   at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   ---------------------------------
   -- DYNAMIC cluster's Registers --
   ---------------------------------

   subtype DYNAMICCONFIG_DYNAMIC_MD_Field is HAL.UInt2;
   subtype DYNAMICCONFIG_DYNAMIC_AM0_Field is HAL.UInt6;

   --  Configuration information for EMC_DYCSx
   type DYNAMICCONFIG_DYNAMIC_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Memory device.
      MD             : DYNAMICCONFIG_DYNAMIC_MD_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  See Table 933.
      AM0            : DYNAMICCONFIG_DYNAMIC_AM0_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  See Table 933.
      AM1            : Boolean := False;
      --  unspecified
      Reserved_15_18 : HAL.UInt4 := 16#0#;
      --  Buffer enable.
      B              : Boolean := False;
      --  Write protect.
      P              : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICCONFIG_DYNAMIC_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      MD             at 0 range 3 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      AM0            at 0 range 7 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      AM1            at 0 range 14 .. 14;
      Reserved_15_18 at 0 range 15 .. 18;
      B              at 0 range 19 .. 19;
      P              at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DYNAMICRASCAS_DYNAMIC_RAS_Field is HAL.UInt2;
   subtype DYNAMICRASCAS_DYNAMIC_CAS_Field is HAL.UInt2;

   --  RAS and CAS latencies for EMC_DYCSx
   type DYNAMICRASCAS_DYNAMIC_Register is record
      --  RAS latency (active to read/write delay).
      RAS            : DYNAMICRASCAS_DYNAMIC_RAS_Field := 16#3#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  CAS latency.
      CAS            : DYNAMICRASCAS_DYNAMIC_CAS_Field := 16#3#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DYNAMICRASCAS_DYNAMIC_Register use record
      RAS            at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CAS            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  no description available
   type DYNAMIC_Cluster is record
      --  Configuration information for EMC_DYCSx
      DYNAMICCONFIG : aliased DYNAMICCONFIG_DYNAMIC_Register;
      --  RAS and CAS latencies for EMC_DYCSx
      DYNAMICRASCAS : aliased DYNAMICRASCAS_DYNAMIC_Register;
   end record
     with Volatile, Size => 256;

   for DYNAMIC_Cluster use record
      DYNAMICCONFIG at 16#0# range 0 .. 31;
      DYNAMICRASCAS at 16#4# range 0 .. 31;
   end record;

   --  no description available
   type DYNAMIC_Clusters is array (0 .. 3) of DYNAMIC_Cluster;

   --------------------------------
   -- STATIC cluster's Registers --
   --------------------------------

   subtype STATICCONFIG_STATIC_MW_Field is HAL.UInt2;

   --  Configuration for EMC_CSx
   type STATICCONFIG_STATIC_Register is record
      --  Memory width.
      MW             : STATICCONFIG_STATIC_MW_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Page mode.
      PM             : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Chip select polarity.
      PC             : Boolean := False;
      --  Byte lane state.
      PB             : Boolean := False;
      --  Extended wait (EW) uses the EMCStaticExtendedWait register to time
      --  both the read and write transfers rather than the EMCStaticWaitRd and
      --  EMCStaticWaitWr registers.
      EW             : Boolean := False;
      --  unspecified
      Reserved_9_18  : HAL.UInt10 := 16#0#;
      --  Buffer enable [2].
      B              : Boolean := False;
      --  Write protect.
      P              : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICCONFIG_STATIC_Register use record
      MW             at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PM             at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      PC             at 0 range 6 .. 6;
      PB             at 0 range 7 .. 7;
      EW             at 0 range 8 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      B              at 0 range 19 .. 19;
      P              at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype STATICWAITWEN_STATIC_WAITWEN_Field is HAL.UInt4;

   --  Delay from EMC_CSx to write enable
   type STATICWAITWEN_STATIC_Register is record
      --  Wait write enable.
      WAITWEN       : STATICWAITWEN_STATIC_WAITWEN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITWEN_STATIC_Register use record
      WAITWEN       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype STATICWAITOEN_STATIC_WAITOEN_Field is HAL.UInt4;

   --  Delay from EMC_CSx or address change, whichever is later, to output
   --  enable
   type STATICWAITOEN_STATIC_Register is record
      --  Wait output enable.
      WAITOEN       : STATICWAITOEN_STATIC_WAITOEN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITOEN_STATIC_Register use record
      WAITOEN       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype STATICWAITRD_STATIC_WAITRD_Field is HAL.UInt5;

   --  Delay from EMC_CSx to a read access
   type STATICWAITRD_STATIC_Register is record
      --  .
      WAITRD        : STATICWAITRD_STATIC_WAITRD_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITRD_STATIC_Register use record
      WAITRD        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype STATICWAITPAGE_STATIC_WAITPAGE_Field is HAL.UInt5;

   --  Delay for asynchronous page mode sequential accesses for EMC_CSx
   type STATICWAITPAGE_STATIC_Register is record
      --  Asynchronous page mode read after the first read wait states.
      WAITPAGE      : STATICWAITPAGE_STATIC_WAITPAGE_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITPAGE_STATIC_Register use record
      WAITPAGE      at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype STATICWAITWR_STATIC_WAITWR_Field is HAL.UInt5;

   --  Delay from EMC_CSx to a write access
   type STATICWAITWR_STATIC_Register is record
      --  Write wait states.
      WAITWR        : STATICWAITWR_STATIC_WAITWR_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITWR_STATIC_Register use record
      WAITWR        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype STATICWAITTURN_STATIC_WAITTURN_Field is HAL.UInt4;

   --  Number of bus turnaround cycles EMC_CSx
   type STATICWAITTURN_STATIC_Register is record
      --  Bus turn-around cycles.
      WAITTURN      : STATICWAITTURN_STATIC_WAITTURN_Field := 16#F#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATICWAITTURN_STATIC_Register use record
      WAITTURN      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  no description available
   type STATIC_Cluster is record
      --  Configuration for EMC_CSx
      STATICCONFIG   : aliased STATICCONFIG_STATIC_Register;
      --  Delay from EMC_CSx to write enable
      STATICWAITWEN  : aliased STATICWAITWEN_STATIC_Register;
      --  Delay from EMC_CSx or address change, whichever is later, to output
      --  enable
      STATICWAITOEN  : aliased STATICWAITOEN_STATIC_Register;
      --  Delay from EMC_CSx to a read access
      STATICWAITRD   : aliased STATICWAITRD_STATIC_Register;
      --  Delay for asynchronous page mode sequential accesses for EMC_CSx
      STATICWAITPAGE : aliased STATICWAITPAGE_STATIC_Register;
      --  Delay from EMC_CSx to a write access
      STATICWAITWR   : aliased STATICWAITWR_STATIC_Register;
      --  Number of bus turnaround cycles EMC_CSx
      STATICWAITTURN : aliased STATICWAITTURN_STATIC_Register;
   end record
     with Volatile, Size => 256;

   for STATIC_Cluster use record
      STATICCONFIG   at 16#0# range 0 .. 31;
      STATICWAITWEN  at 16#4# range 0 .. 31;
      STATICWAITOEN  at 16#8# range 0 .. 31;
      STATICWAITRD   at 16#C# range 0 .. 31;
      STATICWAITPAGE at 16#10# range 0 .. 31;
      STATICWAITWR   at 16#14# range 0 .. 31;
      STATICWAITTURN at 16#18# range 0 .. 31;
   end record;

   --  no description available
   type STATIC_Clusters is array (0 .. 3) of STATIC_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x External Memory Controller (EMC)
   type EMC_Peripheral is record
      --  Controls operation of the memory controller
      CONTROL            : aliased CONTROL_Register;
      --  Provides EMC status information
      STATUS             : aliased STATUS_Register;
      --  Configures operation of the memory controller
      CONFIG             : aliased CONFIG_Register;
      --  Controls dynamic memory operation
      DYNAMICCONTROL     : aliased DYNAMICCONTROL_Register;
      --  Configures dynamic memory refresh
      DYNAMICREFRESH     : aliased DYNAMICREFRESH_Register;
      --  Configures dynamic memory read strategy
      DYNAMICREADCONFIG  : aliased DYNAMICREADCONFIG_Register;
      --  Precharge command period
      DYNAMICRP          : aliased DYNAMICRP_Register;
      --  Active to precharge command period
      DYNAMICRAS         : aliased DYNAMICRAS_Register;
      --  Self-refresh exit time
      DYNAMICSREX        : aliased DYNAMICSREX_Register;
      --  Last-data-out to active command time
      DYNAMICAPR         : aliased DYNAMICAPR_Register;
      --  Data-in to active command time
      DYNAMICDAL         : aliased DYNAMICDAL_Register;
      --  Write recovery time
      DYNAMICWR          : aliased DYNAMICWR_Register;
      --  Selects the active to active command period
      DYNAMICRC          : aliased DYNAMICRC_Register;
      --  Selects the auto-refresh period
      DYNAMICRFC         : aliased DYNAMICRFC_Register;
      --  Time for exit self-refresh to active command
      DYNAMICXSR         : aliased DYNAMICXSR_Register;
      --  Latency for active bank A to active bank B
      DYNAMICRRD         : aliased DYNAMICRRD_Register;
      --  Time for load mode register to active command
      DYNAMICMRD         : aliased DYNAMICMRD_Register;
      --  Time for long static memory read and write transfers
      STATICEXTENDEDWAIT : aliased STATICEXTENDEDWAIT_Register;
      --  no description available
      DYNAMIC            : aliased DYNAMIC_Clusters;
      --  no description available
      STATIC             : aliased STATIC_Clusters;
   end record
     with Volatile;

   for EMC_Peripheral use record
      CONTROL            at 16#0# range 0 .. 31;
      STATUS             at 16#4# range 0 .. 31;
      CONFIG             at 16#8# range 0 .. 31;
      DYNAMICCONTROL     at 16#20# range 0 .. 31;
      DYNAMICREFRESH     at 16#24# range 0 .. 31;
      DYNAMICREADCONFIG  at 16#28# range 0 .. 31;
      DYNAMICRP          at 16#30# range 0 .. 31;
      DYNAMICRAS         at 16#34# range 0 .. 31;
      DYNAMICSREX        at 16#38# range 0 .. 31;
      DYNAMICAPR         at 16#3C# range 0 .. 31;
      DYNAMICDAL         at 16#40# range 0 .. 31;
      DYNAMICWR          at 16#44# range 0 .. 31;
      DYNAMICRC          at 16#48# range 0 .. 31;
      DYNAMICRFC         at 16#4C# range 0 .. 31;
      DYNAMICXSR         at 16#50# range 0 .. 31;
      DYNAMICRRD         at 16#54# range 0 .. 31;
      DYNAMICMRD         at 16#58# range 0 .. 31;
      STATICEXTENDEDWAIT at 16#80# range 0 .. 31;
      DYNAMIC            at 16#100# range 0 .. 1023;
      STATIC             at 16#200# range 0 .. 1023;
   end record;

   --  LPC54S60x/LPC5460x External Memory Controller (EMC)
   EMC_Periph : aliased EMC_Peripheral
     with Import, Address => System'To_Address (16#40081000#);

end NRF_SVD.EMC;
