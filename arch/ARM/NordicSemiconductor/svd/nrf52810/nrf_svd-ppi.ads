--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52810.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------------
   -- PPI_TASKS_CHG cluster's Registers --
   ---------------------------------------

   --  Description cluster[0]: Enable channel group 0
   type EN_TASKS_CHG_Register is record
      --  Write-only.
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EN_TASKS_CHG_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Description cluster[0]: Disable channel group 0
   type DIS_TASKS_CHG_Register is record
      --  Write-only.
      DIS           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIS_TASKS_CHG_Register use record
      DIS           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Channel group tasks
   type PPI_TASKS_CHG_Cluster is record
      --  Description cluster[0]: Enable channel group 0
      EN  : aliased EN_TASKS_CHG_Register;
      --  Description cluster[0]: Disable channel group 0
      DIS : aliased DIS_TASKS_CHG_Register;
   end record
     with Volatile, Size => 64;

   for PPI_TASKS_CHG_Cluster use record
      EN  at 16#0# range 0 .. 31;
      DIS at 16#4# range 0 .. 31;
   end record;

   --  Channel group tasks
   type PPI_TASKS_CHG_Clusters is array (0 .. 5) of PPI_TASKS_CHG_Cluster;

   --  Enable or disable channel 0
   type CHEN_CH0_Field is
     (
      --  Disable channel
      Disabled,
      --  Enable channel
      Enabled)
     with Size => 1;
   for CHEN_CH0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CHEN_CH array
   type CHEN_CH_Field_Array is array (0 .. 31) of CHEN_CH0_Field
     with Component_Size => 1, Size => 32;

   --  Channel enable register
   type CHEN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt32;
         when True =>
            --  CH as an array
            Arr : CHEN_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHEN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Channel 0 enable set register. Writing '0' has no effect
   type CHENSET_CH0_Field is
     (
      --  Read: channel disabled
      Disabled,
      --  Read: channel enabled
      Enabled)
     with Size => 1;
   for CHENSET_CH0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Channel 0 enable set register. Writing '0' has no effect
   type CHENSET_CH0_Field_1 is
     (
      --  Reset value for the field
      Chenset_Ch0_Field_Reset,
      --  Write: Enable channel
      Set)
     with Size => 1;
   for CHENSET_CH0_Field_1 use
     (Chenset_Ch0_Field_Reset => 0,
      Set => 1);

   --  CHENSET_CH array
   type CHENSET_CH_Field_Array is array (0 .. 31) of CHENSET_CH0_Field_1
     with Component_Size => 1, Size => 32;

   --  Channel enable set register
   type CHENSET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt32;
         when True =>
            --  CH as an array
            Arr : CHENSET_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHENSET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Channel 0 enable clear register. Writing '0' has no effect
   type CHENCLR_CH0_Field is
     (
      --  Read: channel disabled
      Disabled,
      --  Read: channel enabled
      Enabled)
     with Size => 1;
   for CHENCLR_CH0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Channel 0 enable clear register. Writing '0' has no effect
   type CHENCLR_CH0_Field_1 is
     (
      --  Reset value for the field
      Chenclr_Ch0_Field_Reset,
      --  Write: disable channel
      Clear)
     with Size => 1;
   for CHENCLR_CH0_Field_1 use
     (Chenclr_Ch0_Field_Reset => 0,
      Clear => 1);

   --  CHENCLR_CH array
   type CHENCLR_CH_Field_Array is array (0 .. 31) of CHENCLR_CH0_Field_1
     with Component_Size => 1, Size => 32;

   --  Channel enable clear register
   type CHENCLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt32;
         when True =>
            --  CH as an array
            Arr : CHENCLR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHENCLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --------------------------------
   -- PPI_CH cluster's Registers --
   --------------------------------

   --  PPI Channel
   type PPI_CH_Cluster is record
      --  Description cluster[0]: Channel 0 event end-point
      EEP : aliased HAL.UInt32;
      --  Description cluster[0]: Channel 0 task end-point
      TEP : aliased HAL.UInt32;
   end record
     with Volatile, Size => 64;

   for PPI_CH_Cluster use record
      EEP at 16#0# range 0 .. 31;
      TEP at 16#4# range 0 .. 31;
   end record;

   --  PPI Channel
   type PPI_CH_Clusters is array (0 .. 19) of PPI_CH_Cluster;

   --  Include or exclude channel 0
   type CHG_CH0_Field is
     (
      --  Exclude
      Excluded,
      --  Include
      Included)
     with Size => 1;
   for CHG_CH0_Field use
     (Excluded => 0,
      Included => 1);

   --  CHG_CH array
   type CHG_CH_Field_Array is array (0 .. 31) of CHG_CH0_Field
     with Component_Size => 1, Size => 32;

   --  Description collection[0]: Channel group 0
   type CHG_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt32;
         when True =>
            --  CH as an array
            Arr : CHG_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CHG_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Description collection[0]: Channel group 0
   type CHG_Registers is array (0 .. 5) of CHG_Register
     with Volatile;

   ----------------------------------
   -- PPI_FORK cluster's Registers --
   ----------------------------------

   --  Fork
   type PPI_FORK_Cluster is record
      --  Description cluster[0]: Channel 0 task end-point
      TEP : aliased HAL.UInt32;
   end record
     with Volatile, Size => 32;

   for PPI_FORK_Cluster use record
      TEP at 0 range 0 .. 31;
   end record;

   --  Fork
   type PPI_FORK_Clusters is array (0 .. 31) of PPI_FORK_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Programmable Peripheral Interconnect
   type PPI_Peripheral is record
      --  Channel group tasks
      TASKS_CHG : aliased PPI_TASKS_CHG_Clusters;
      --  Channel enable register
      CHEN      : aliased CHEN_Register;
      --  Channel enable set register
      CHENSET   : aliased CHENSET_Register;
      --  Channel enable clear register
      CHENCLR   : aliased CHENCLR_Register;
      --  PPI Channel
      CH        : aliased PPI_CH_Clusters;
      --  Description collection[0]: Channel group 0
      CHG       : aliased CHG_Registers;
      --  Fork
      FORK      : aliased PPI_FORK_Clusters;
   end record
     with Volatile;

   for PPI_Peripheral use record
      TASKS_CHG at 16#0# range 0 .. 383;
      CHEN      at 16#500# range 0 .. 31;
      CHENSET   at 16#504# range 0 .. 31;
      CHENCLR   at 16#508# range 0 .. 31;
      CH        at 16#510# range 0 .. 1279;
      CHG       at 16#800# range 0 .. 191;
      FORK      at 16#910# range 0 .. 1023;
   end record;

   --  Programmable Peripheral Interconnect
   PPI_Periph : aliased PPI_Peripheral
     with Import, Address => System'To_Address (16#4001F000#);

end NRF_SVD.PPI;
