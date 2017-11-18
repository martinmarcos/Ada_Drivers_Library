--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SEMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Module Disable
   type MCR_MDIS_Field is
     (
      --  Module enabled
      Mdis_0,
      --  Master disabled.
      Mdis_1)
     with Size => 1;
   for MCR_MDIS_Field use
     (Mdis_0 => 0,
      Mdis_1 => 1);

   --  DQS (read strobe) mode
   type MCR_DQSMD_Field is
     (
      --  Dummy read strobe loopbacked internally
      Dqsmd_0,
      --  Dummy read strobe loopbacked from DQS pad
      Dqsmd_1)
     with Size => 1;
   for MCR_DQSMD_Field use
     (Dqsmd_0 => 0,
      Dqsmd_1 => 1);

   --  WAIT/RDY# polarity for NOR/PSRAM
   type MCR_WPOL0_Field is
     (
      --  Low active
      Wpol0_0,
      --  High active
      Wpol0_1)
     with Size => 1;
   for MCR_WPOL0_Field use
     (Wpol0_0 => 0,
      Wpol0_1 => 1);

   --  WAIT/RDY# polarity for NAND
   type MCR_WPOL1_Field is
     (
      --  Low active
      Wpol1_0,
      --  High active
      Wpol1_1)
     with Size => 1;
   for MCR_WPOL1_Field use
     (Wpol1_0 => 0,
      Wpol1_1 => 1);

   subtype MCR_CTO_Field is HAL.UInt8;

   --  Bus timeout cycles
   type MCR_BTO_Field is
     (
      --  255*1
      Bto_0,
      --  255*2 - 255*2^30
      Bto_1,
      --  255*2 - 255*2^30
      Bto_2,
      --  255*2 - 255*2^30
      Bto_3,
      --  255*2 - 255*2^30
      Bto_4,
      --  255*2 - 255*2^30
      Bto_5,
      --  255*2 - 255*2^30
      Bto_6,
      --  255*2 - 255*2^30
      Bto_7,
      --  255*2 - 255*2^30
      Bto_8,
      --  255*2 - 255*2^30
      Bto_9,
      --  Reset value for the field
      Mcr_Bto_Field_Reset,
      --  255*2^31
      Bto_31)
     with Size => 5;
   for MCR_BTO_Field use
     (Bto_0 => 0,
      Bto_1 => 1,
      Bto_2 => 2,
      Bto_3 => 3,
      Bto_4 => 4,
      Bto_5 => 5,
      Bto_6 => 6,
      Bto_7 => 7,
      Bto_8 => 8,
      Bto_9 => 9,
      Mcr_Bto_Field_Reset => 16,
      Bto_31 => 31);

   --  Module Control Register
   type MCR_Register is record
      --  Software Reset
      SWRST          : Boolean := False;
      --  Module Disable
      MDIS           : MCR_MDIS_Field := NRF_SVD.SEMC.Mdis_1;
      --  DQS (read strobe) mode
      DQSMD          : MCR_DQSMD_Field := NRF_SVD.SEMC.Dqsmd_0;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  WAIT/RDY# polarity for NOR/PSRAM
      WPOL0          : MCR_WPOL0_Field := NRF_SVD.SEMC.Wpol0_0;
      --  WAIT/RDY# polarity for NAND
      WPOL1          : MCR_WPOL1_Field := NRF_SVD.SEMC.Wpol1_0;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Command Execution timeout cycles
      CTO            : MCR_CTO_Field := 16#0#;
      --  Bus timeout cycles
      BTO            : MCR_BTO_Field := Mcr_Bto_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      SWRST          at 0 range 0 .. 0;
      MDIS           at 0 range 1 .. 1;
      DQSMD          at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      WPOL0          at 0 range 6 .. 6;
      WPOL1          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CTO            at 0 range 16 .. 23;
      BTO            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  SEMC_A8 output selection
   type IOCR_MUX_A8_Field is
     (
      --  SDRAM Address bit (A8)
      Mux_A8_0,
      --  NAND CE#
      Mux_A8_1,
      --  NOR CE#
      Mux_A8_2,
      --  PSRAM CE#
      Mux_A8_3,
      --  DBI CSX
      Mux_A8_4,
      --  SDRAM Address bit (A8)
      Mux_A8_5,
      --  SDRAM Address bit (A8)
      Mux_A8_6,
      --  SDRAM Address bit (A8)
      Mux_A8_7)
     with Size => 3;
   for IOCR_MUX_A8_Field use
     (Mux_A8_0 => 0,
      Mux_A8_1 => 1,
      Mux_A8_2 => 2,
      Mux_A8_3 => 3,
      Mux_A8_4 => 4,
      Mux_A8_5 => 5,
      Mux_A8_6 => 6,
      Mux_A8_7 => 7);

   --  SEMC_CSX0 output selection
   type IOCR_MUX_CSX0_Field is
     (
      --  NOR/PSRAM Address bit 24 (A24)
      Mux_Csx0_0,
      --  SDRAM CS1
      Mux_Csx0_1,
      --  SDRAM CS2
      Mux_Csx0_2,
      --  SDRAM CS3
      Mux_Csx0_3,
      --  NAND CE#
      Mux_Csx0_4,
      --  NOR CE#
      Mux_Csx0_5,
      --  PSRAM CE#
      Mux_Csx0_6,
      --  DBI CSX
      Mux_Csx0_7)
     with Size => 3;
   for IOCR_MUX_CSX0_Field use
     (Mux_Csx0_0 => 0,
      Mux_Csx0_1 => 1,
      Mux_Csx0_2 => 2,
      Mux_Csx0_3 => 3,
      Mux_Csx0_4 => 4,
      Mux_Csx0_5 => 5,
      Mux_Csx0_6 => 6,
      Mux_Csx0_7 => 7);

   --  SEMC_CSX1 output selection
   type IOCR_MUX_CSX1_Field is
     (
      --  NOR/PSRAM Address bit 25 (A25)
      Mux_Csx1_0,
      --  SDRAM CS1
      Mux_Csx1_1,
      --  SDRAM CS2
      Mux_Csx1_2,
      --  SDRAM CS3
      Mux_Csx1_3,
      --  NAND CE#
      Mux_Csx1_4,
      --  NOR CE#
      Mux_Csx1_5,
      --  PSRAM CE#
      Mux_Csx1_6,
      --  DBI CSX
      Mux_Csx1_7)
     with Size => 3;
   for IOCR_MUX_CSX1_Field use
     (Mux_Csx1_0 => 0,
      Mux_Csx1_1 => 1,
      Mux_Csx1_2 => 2,
      Mux_Csx1_3 => 3,
      Mux_Csx1_4 => 4,
      Mux_Csx1_5 => 5,
      Mux_Csx1_6 => 6,
      Mux_Csx1_7 => 7);

   --  SEMC_CSX2 output selection
   type IOCR_MUX_CSX2_Field is
     (
      --  NOR/PSRAM Address bit 26 (A26)
      Mux_Csx2_0,
      --  SDRAM CS1
      Mux_Csx2_1,
      --  SDRAM CS2
      Mux_Csx2_2,
      --  SDRAM CS3
      Mux_Csx2_3,
      --  NAND CE#
      Mux_Csx2_4,
      --  NOR CE#
      Mux_Csx2_5,
      --  PSRAM CE#
      Mux_Csx2_6,
      --  DBI CSX
      Mux_Csx2_7)
     with Size => 3;
   for IOCR_MUX_CSX2_Field use
     (Mux_Csx2_0 => 0,
      Mux_Csx2_1 => 1,
      Mux_Csx2_2 => 2,
      Mux_Csx2_3 => 3,
      Mux_Csx2_4 => 4,
      Mux_Csx2_5 => 5,
      Mux_Csx2_6 => 6,
      Mux_Csx2_7 => 7);

   --  SEMC_CSX3 output selection
   type IOCR_MUX_CSX3_Field is
     (
      --  NOR/PSRAM Address bit 27 (A27)
      Mux_Csx3_0,
      --  SDRAM CS1
      Mux_Csx3_1,
      --  SDRAM CS2
      Mux_Csx3_2,
      --  SDRAM CS3
      Mux_Csx3_3,
      --  NAND CE#
      Mux_Csx3_4,
      --  NOR CE#
      Mux_Csx3_5,
      --  PSRAM CE#
      Mux_Csx3_6,
      --  DBI CSX
      Mux_Csx3_7)
     with Size => 3;
   for IOCR_MUX_CSX3_Field use
     (Mux_Csx3_0 => 0,
      Mux_Csx3_1 => 1,
      Mux_Csx3_2 => 2,
      Mux_Csx3_3 => 3,
      Mux_Csx3_4 => 4,
      Mux_Csx3_5 => 5,
      Mux_Csx3_6 => 6,
      Mux_Csx3_7 => 7);

   --  SEMC_RDY function selection
   type IOCR_MUX_RDY_Field is
     (
      --  NAND Ready/Wait# input
      Mux_Rdy_0,
      --  SDRAM CS1
      Mux_Rdy_1,
      --  SDRAM CS2
      Mux_Rdy_2,
      --  SDRAM CS3
      Mux_Rdy_3,
      --  NOR CE#
      Mux_Rdy_4,
      --  PSRAM CE#
      Mux_Rdy_5,
      --  DBI CSX
      Mux_Rdy_6,
      --  NOR/PSRAM Address bit 27
      Mux_Rdy_7)
     with Size => 3;
   for IOCR_MUX_RDY_Field use
     (Mux_Rdy_0 => 0,
      Mux_Rdy_1 => 1,
      Mux_Rdy_2 => 2,
      Mux_Rdy_3 => 3,
      Mux_Rdy_4 => 4,
      Mux_Rdy_5 => 5,
      Mux_Rdy_6 => 6,
      Mux_Rdy_7 => 7);

   --  IO Mux Control Register
   type IOCR_Register is record
      --  SEMC_A8 output selection
      MUX_A8         : IOCR_MUX_A8_Field := NRF_SVD.SEMC.Mux_A8_0;
      --  SEMC_CSX0 output selection
      MUX_CSX0       : IOCR_MUX_CSX0_Field := NRF_SVD.SEMC.Mux_Csx0_0;
      --  SEMC_CSX1 output selection
      MUX_CSX1       : IOCR_MUX_CSX1_Field := NRF_SVD.SEMC.Mux_Csx1_0;
      --  SEMC_CSX2 output selection
      MUX_CSX2       : IOCR_MUX_CSX2_Field := NRF_SVD.SEMC.Mux_Csx2_0;
      --  SEMC_CSX3 output selection
      MUX_CSX3       : IOCR_MUX_CSX3_Field := NRF_SVD.SEMC.Mux_Csx3_0;
      --  SEMC_RDY function selection
      MUX_RDY        : IOCR_MUX_RDY_Field := NRF_SVD.SEMC.Mux_Rdy_0;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOCR_Register use record
      MUX_A8         at 0 range 0 .. 2;
      MUX_CSX0       at 0 range 3 .. 5;
      MUX_CSX1       at 0 range 6 .. 8;
      MUX_CSX2       at 0 range 9 .. 11;
      MUX_CSX3       at 0 range 12 .. 14;
      MUX_RDY        at 0 range 15 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype BMCR0_WQOS_Field is HAL.UInt4;
   subtype BMCR0_WAGE_Field is HAL.UInt4;
   subtype BMCR0_WSH_Field is HAL.UInt8;
   subtype BMCR0_WRWS_Field is HAL.UInt8;

   --  Master Bus (AXI) Control Register 0
   type BMCR0_Register is record
      --  Weight of QoS
      WQOS           : BMCR0_WQOS_Field := 16#0#;
      --  Weight of Aging
      WAGE           : BMCR0_WAGE_Field := 16#0#;
      --  Weight of Slave Hit (no read/write switch)
      WSH            : BMCR0_WSH_Field := 16#0#;
      --  Weight of Slave Hit (Read/Write switch)
      WRWS           : BMCR0_WRWS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMCR0_Register use record
      WQOS           at 0 range 0 .. 3;
      WAGE           at 0 range 4 .. 7;
      WSH            at 0 range 8 .. 15;
      WRWS           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype BMCR1_WQOS_Field is HAL.UInt4;
   subtype BMCR1_WAGE_Field is HAL.UInt4;
   subtype BMCR1_WPH_Field is HAL.UInt8;
   subtype BMCR1_WRWS_Field is HAL.UInt8;
   subtype BMCR1_WBR_Field is HAL.UInt8;

   --  Master Bus (AXI) Control Register 1
   type BMCR1_Register is record
      --  Weight of QoS
      WQOS : BMCR1_WQOS_Field := 16#0#;
      --  Weight of Aging
      WAGE : BMCR1_WAGE_Field := 16#0#;
      --  Weight of Page Hit
      WPH  : BMCR1_WPH_Field := 16#0#;
      --  Weight of Read/Write switch
      WRWS : BMCR1_WRWS_Field := 16#0#;
      --  Weight of Bank Rotation
      WBR  : BMCR1_WBR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMCR1_Register use record
      WQOS at 0 range 0 .. 3;
      WAGE at 0 range 4 .. 7;
      WPH  at 0 range 8 .. 15;
      WRWS at 0 range 16 .. 23;
      WBR  at 0 range 24 .. 31;
   end record;

   --  Memory size
   type BR0_MS_Field is
     (
      --  4KB
      Ms_0,
      --  8KB
      Ms_1,
      --  16KB
      Ms_2,
      --  32KB
      Ms_3,
      --  64KB
      Ms_4,
      --  128KB
      Ms_5,
      --  256KB
      Ms_6,
      --  512KB
      Ms_7,
      --  1MB
      Ms_8,
      --  2MB
      Ms_9,
      --  4MB
      Ms_10,
      --  8MB
      Ms_11,
      --  16MB
      Ms_12,
      --  32MB
      Ms_13,
      --  64MB
      Ms_14,
      --  128MB
      Ms_15,
      --  256MB
      Ms_16,
      --  512MB
      Ms_17,
      --  1GB
      Ms_18,
      --  2GB
      Ms_19,
      --  4GB
      Ms_20,
      --  4GB
      Ms_21,
      --  4GB
      Ms_22,
      --  4GB
      Ms_23,
      --  4GB
      Ms_24,
      --  4GB
      Ms_25,
      --  4GB
      Ms_26,
      --  4GB
      Ms_27,
      --  4GB
      Ms_28,
      --  4GB
      Ms_29,
      --  4GB
      Ms_30,
      --  4GB
      Ms_31)
     with Size => 5;
   for BR0_MS_Field use
     (Ms_0 => 0,
      Ms_1 => 1,
      Ms_2 => 2,
      Ms_3 => 3,
      Ms_4 => 4,
      Ms_5 => 5,
      Ms_6 => 6,
      Ms_7 => 7,
      Ms_8 => 8,
      Ms_9 => 9,
      Ms_10 => 10,
      Ms_11 => 11,
      Ms_12 => 12,
      Ms_13 => 13,
      Ms_14 => 14,
      Ms_15 => 15,
      Ms_16 => 16,
      Ms_17 => 17,
      Ms_18 => 18,
      Ms_19 => 19,
      Ms_20 => 20,
      Ms_21 => 21,
      Ms_22 => 22,
      Ms_23 => 23,
      Ms_24 => 24,
      Ms_25 => 25,
      Ms_26 => 26,
      Ms_27 => 27,
      Ms_28 => 28,
      Ms_29 => 29,
      Ms_30 => 30,
      Ms_31 => 31);

   subtype BR_BA_Field is HAL.UInt20;

   --  Base Register 0 (For SDRAM CS0 device)
   type BR_Register is record
      --  Valid
      VLD           : Boolean := True;
      --  Memory size
      MS            : BR0_MS_Field := NRF_SVD.SEMC.Ms_14;
      --  unspecified
      Reserved_6_11 : HAL.UInt6 := 16#0#;
      --  Base Address
      BA            : BR_BA_Field := 16#80000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BR_Register use record
      VLD           at 0 range 0 .. 0;
      MS            at 0 range 1 .. 5;
      Reserved_6_11 at 0 range 6 .. 11;
      BA            at 0 range 12 .. 31;
   end record;

   --  This bit enable/disable the NDPAGEEND interrupt generation.
   type INTEN_NDPAGEENDEN_Field is
     (
      --  Disable
      Ndpageenden_0,
      --  Enable
      Ndpageenden_1)
     with Size => 1;
   for INTEN_NDPAGEENDEN_Field use
     (Ndpageenden_0 => 0,
      Ndpageenden_1 => 1);

   --  This bit enable/disable the NDNOPEND interrupt generation.
   type INTEN_NDNOPENDEN_Field is
     (
      --  Disable
      Ndnopenden_0,
      --  Enable
      Ndnopenden_1)
     with Size => 1;
   for INTEN_NDNOPENDEN_Field use
     (Ndnopenden_0 => 0,
      Ndnopenden_1 => 1);

   --  Interrupt Enable Register
   type INTEN_Register is record
      --  IP command done interrupt enable
      IPCMDDONEEN   : Boolean := False;
      --  IP command error interrupt enable
      IPCMDERREN    : Boolean := False;
      --  AXI command error interrupt enable
      AXICMDERREN   : Boolean := False;
      --  AXI bus error interrupt enable
      AXIBUSERREN   : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This bit enable/disable the NDPAGEEND interrupt
      --  generation.
      NDPAGEENDEN   : INTEN_NDPAGEENDEN_Field := NRF_SVD.SEMC.Ndpageenden_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This bit enable/disable the NDNOPEND interrupt
      --  generation.
      NDNOPENDEN    : INTEN_NDNOPENDEN_Field := NRF_SVD.SEMC.Ndnopenden_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      IPCMDDONEEN   at 0 range 0 .. 0;
      IPCMDERREN    at 0 range 1 .. 1;
      AXICMDERREN   at 0 range 2 .. 2;
      AXIBUSERREN   at 0 range 3 .. 3;
      NDPAGEENDEN   at 0 range 4 .. 4;
      NDNOPENDEN    at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Enable Register
   type INTR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. IP command normal done interrupt
      IPCMDDONE     : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. IP command error done interrupt
      IPCMDERR      : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. AXI command error interrupt
      AXICMDERR     : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. AXI bus error interrupt
      AXIBUSERR     : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This interrupt is generated when the last address of
      --  one page in NAND device is written by AXI command
      NDPAGEEND     : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This interrupt is generated when all pending AXI write
      --  command to NAND is finished on NAND interface.
      NDNOPEND      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_Register use record
      IPCMDDONE     at 0 range 0 .. 0;
      IPCMDERR      at 0 range 1 .. 1;
      AXICMDERR     at 0 range 2 .. 2;
      AXIBUSERR     at 0 range 3 .. 3;
      NDPAGEEND     at 0 range 4 .. 4;
      NDNOPEND      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Port Size
   type SDRAMCR0_PS_Field is
     (
      --  8bit
      Ps_0,
      --  16bit
      Ps_1)
     with Size => 1;
   for SDRAMCR0_PS_Field use
     (Ps_0 => 0,
      Ps_1 => 1);

   --  Burst Length
   type SDRAMCR0_BL_Field is
     (
      --  1
      Bl_0,
      --  2
      Bl_1,
      --  4
      Bl_2,
      --  8
      Bl_3,
      --  8
      Bl_4,
      --  8
      Bl_5,
      --  8
      Bl_6,
      --  8
      Bl_7)
     with Size => 3;
   for SDRAMCR0_BL_Field use
     (Bl_0 => 0,
      Bl_1 => 1,
      Bl_2 => 2,
      Bl_3 => 3,
      Bl_4 => 4,
      Bl_5 => 5,
      Bl_6 => 6,
      Bl_7 => 7);

   --  Column address bit number
   type SDRAMCR0_COL_Field is
     (
      --  12 bit
      Col_0,
      --  11 bit
      Col_1,
      --  10 bit
      Col_2,
      --  9 bit
      Col_3)
     with Size => 2;
   for SDRAMCR0_COL_Field use
     (Col_0 => 0,
      Col_1 => 1,
      Col_2 => 2,
      Col_3 => 3);

   --  CAS Latency
   type SDRAMCR0_CL_Field is
     (
      --  1
      Cl_0,
      --  1
      Cl_1,
      --  2
      Cl_2,
      --  3
      Cl_3)
     with Size => 2;
   for SDRAMCR0_CL_Field use
     (Cl_0 => 0,
      Cl_1 => 1,
      Cl_2 => 2,
      Cl_3 => 3);

   --  SDRAM control register 0
   type SDRAMCR0_Register is record
      --  Port Size
      PS             : SDRAMCR0_PS_Field := NRF_SVD.SEMC.Ps_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#3#;
      --  Burst Length
      BL             : SDRAMCR0_BL_Field := NRF_SVD.SEMC.Bl_2;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Column address bit number
      COL            : SDRAMCR0_COL_Field := NRF_SVD.SEMC.Col_0;
      --  CAS Latency
      CL             : SDRAMCR0_CL_Field := NRF_SVD.SEMC.Cl_3;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMCR0_Register use record
      PS             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BL             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      COL            at 0 range 8 .. 9;
      CL             at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SDRAMCR1_PRE2ACT_Field is HAL.UInt4;
   subtype SDRAMCR1_ACT2RW_Field is HAL.UInt4;
   subtype SDRAMCR1_RFRC_Field is HAL.UInt5;
   subtype SDRAMCR1_WRC_Field is HAL.UInt3;
   subtype SDRAMCR1_CKEOFF_Field is HAL.UInt4;
   subtype SDRAMCR1_ACT2PRE_Field is HAL.UInt4;

   --  SDRAM control register 1
   type SDRAMCR1_Register is record
      --  PRECHARGE to ACT/Refresh wait time
      PRE2ACT        : SDRAMCR1_PRE2ACT_Field := 16#4#;
      --  ACT to Read/Write wait time
      ACT2RW         : SDRAMCR1_ACT2RW_Field := 16#3#;
      --  Refresh recovery time
      RFRC           : SDRAMCR1_RFRC_Field := 16#9#;
      --  Write recovery time
      WRC            : SDRAMCR1_WRC_Field := 16#2#;
      --  CKE OFF minimum time
      CKEOFF         : SDRAMCR1_CKEOFF_Field := 16#9#;
      --  ACT to Precharge minimum time
      ACT2PRE        : SDRAMCR1_ACT2PRE_Field := 16#9#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMCR1_Register use record
      PRE2ACT        at 0 range 0 .. 3;
      ACT2RW         at 0 range 4 .. 7;
      RFRC           at 0 range 8 .. 12;
      WRC            at 0 range 13 .. 15;
      CKEOFF         at 0 range 16 .. 19;
      ACT2PRE        at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SDRAMCR2_SRRC_Field is HAL.UInt8;
   subtype SDRAMCR2_REF2REF_Field is HAL.UInt8;
   subtype SDRAMCR2_ACT2ACT_Field is HAL.UInt8;

   --  SDRAM Idle timeout
   type SDRAMCR2_ITO_Field is
     (
      --  IDLE timeout period is 256*Prescale period.
      Ito_0,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_1,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_2,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_3,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_4,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_5,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_6,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_7,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_8,
      --  IDLE timeout period is ITO*Prescale period.
      Ito_9,
      --  Reset value for the field
      Sdramcr2_Ito_Field_Reset)
     with Size => 8;
   for SDRAMCR2_ITO_Field use
     (Ito_0 => 0,
      Ito_1 => 1,
      Ito_2 => 2,
      Ito_3 => 3,
      Ito_4 => 4,
      Ito_5 => 5,
      Ito_6 => 6,
      Ito_7 => 7,
      Ito_8 => 8,
      Ito_9 => 9,
      Sdramcr2_Ito_Field_Reset => 128);

   --  SDRAM control register 2
   type SDRAMCR2_Register is record
      --  Self Refresh Recovery time
      SRRC    : SDRAMCR2_SRRC_Field := 16#EE#;
      --  Refresh to Refresh wait time
      REF2REF : SDRAMCR2_REF2REF_Field := 16#E#;
      --  ACT to ACT wait time
      ACT2ACT : SDRAMCR2_ACT2ACT_Field := 16#0#;
      --  SDRAM Idle timeout
      ITO     : SDRAMCR2_ITO_Field := Sdramcr2_Ito_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMCR2_Register use record
      SRRC    at 0 range 0 .. 7;
      REF2REF at 0 range 8 .. 15;
      ACT2ACT at 0 range 16 .. 23;
      ITO     at 0 range 24 .. 31;
   end record;

   --  Refresh burst length
   type SDRAMCR3_REBL_Field is
     (
      --  1
      Rebl_0,
      --  2
      Rebl_1,
      --  3
      Rebl_2,
      --  4
      Rebl_3,
      --  5
      Rebl_4,
      --  6
      Rebl_5,
      --  7
      Rebl_6,
      --  8
      Rebl_7)
     with Size => 3;
   for SDRAMCR3_REBL_Field use
     (Rebl_0 => 0,
      Rebl_1 => 1,
      Rebl_2 => 2,
      Rebl_3 => 3,
      Rebl_4 => 4,
      Rebl_5 => 5,
      Rebl_6 => 6,
      Rebl_7 => 7);

   --  Prescaler timer period
   type SDRAMCR3_PRESCALE_Field is
     (
      --  256*16 cycle
      Prescale_0,
      --  PRESCALE*16 cycle
      Prescale_1,
      --  PRESCALE*16 cycle
      Prescale_2,
      --  PRESCALE*16 cycle
      Prescale_3,
      --  PRESCALE*16 cycle
      Prescale_4,
      --  PRESCALE*16 cycle
      Prescale_5,
      --  PRESCALE*16 cycle
      Prescale_6,
      --  PRESCALE*16 cycle
      Prescale_7,
      --  PRESCALE*16 cycle
      Prescale_8,
      --  PRESCALE*16 cycle
      Prescale_9,
      --  Reset value for the field
      Sdramcr3_Prescale_Field_Reset)
     with Size => 8;
   for SDRAMCR3_PRESCALE_Field use
     (Prescale_0 => 0,
      Prescale_1 => 1,
      Prescale_2 => 2,
      Prescale_3 => 3,
      Prescale_4 => 4,
      Prescale_5 => 5,
      Prescale_6 => 6,
      Prescale_7 => 7,
      Prescale_8 => 8,
      Prescale_9 => 9,
      Sdramcr3_Prescale_Field_Reset => 128);

   --  Refresh timer period
   type SDRAMCR3_RT_Field is
     (
      --  256*Prescaler period
      Rt_0,
      --  RT*Prescaler period
      Rt_1,
      --  RT*Prescaler period
      Rt_2,
      --  RT*Prescaler period
      Rt_3,
      --  RT*Prescaler period
      Rt_4,
      --  RT*Prescaler period
      Rt_5,
      --  RT*Prescaler period
      Rt_6,
      --  RT*Prescaler period
      Rt_7,
      --  RT*Prescaler period
      Rt_8,
      --  RT*Prescaler period
      Rt_9,
      --  Reset value for the field
      Sdramcr3_Rt_Field_Reset)
     with Size => 8;
   for SDRAMCR3_RT_Field use
     (Rt_0 => 0,
      Rt_1 => 1,
      Rt_2 => 2,
      Rt_3 => 3,
      Rt_4 => 4,
      Rt_5 => 5,
      Rt_6 => 6,
      Rt_7 => 7,
      Rt_8 => 8,
      Rt_9 => 9,
      Sdramcr3_Rt_Field_Reset => 128);

   --  Refresh urgent threshold
   type SDRAMCR3_UT_Field is
     (
      --  256*Prescaler period
      Ut_0,
      --  UT*Prescaler period
      Ut_1,
      --  UT*Prescaler period
      Ut_2,
      --  UT*Prescaler period
      Ut_3,
      --  UT*Prescaler period
      Ut_4,
      --  UT*Prescaler period
      Ut_5,
      --  UT*Prescaler period
      Ut_6,
      --  UT*Prescaler period
      Ut_7,
      --  UT*Prescaler period
      Ut_8,
      --  UT*Prescaler period
      Ut_9,
      --  Reset value for the field
      Sdramcr3_Ut_Field_Reset)
     with Size => 8;
   for SDRAMCR3_UT_Field use
     (Ut_0 => 0,
      Ut_1 => 1,
      Ut_2 => 2,
      Ut_3 => 3,
      Ut_4 => 4,
      Ut_5 => 5,
      Ut_6 => 6,
      Ut_7 => 7,
      Ut_8 => 8,
      Ut_9 => 9,
      Sdramcr3_Ut_Field_Reset => 64);

   --  SDRAM control register 3
   type SDRAMCR3_Register is record
      --  Refresh enable
      REN          : Boolean := False;
      --  Refresh burst length
      REBL         : SDRAMCR3_REBL_Field := NRF_SVD.SEMC.Rebl_0;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  Prescaler timer period
      PRESCALE     : SDRAMCR3_PRESCALE_Field := Sdramcr3_Prescale_Field_Reset;
      --  Refresh timer period
      RT           : SDRAMCR3_RT_Field := Sdramcr3_Rt_Field_Reset;
      --  Refresh urgent threshold
      UT           : SDRAMCR3_UT_Field := Sdramcr3_Ut_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMCR3_Register use record
      REN          at 0 range 0 .. 0;
      REBL         at 0 range 1 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      PRESCALE     at 0 range 8 .. 15;
      RT           at 0 range 16 .. 23;
      UT           at 0 range 24 .. 31;
   end record;

   --  Port Size
   type NANDCR0_PS_Field is
     (
      --  8bit
      Ps_0,
      --  16bit
      Ps_1)
     with Size => 1;
   for NANDCR0_PS_Field use
     (Ps_0 => 0,
      Ps_1 => 1);

   --  Burst Length
   type NANDCR0_BL_Field is
     (
      --  1
      Bl_0,
      --  2
      Bl_1,
      --  4
      Bl_2,
      --  8
      Bl_3,
      --  16
      Bl_4,
      --  32
      Bl_5,
      --  64
      Bl_6,
      --  64
      Bl_7)
     with Size => 3;
   for NANDCR0_BL_Field use
     (Bl_0 => 0,
      Bl_1 => 1,
      Bl_2 => 2,
      Bl_3 => 3,
      Bl_4 => 4,
      Bl_5 => 5,
      Bl_6 => 6,
      Bl_7 => 7);

   --  EDO mode enabled
   type NANDCR0_EDO_Field is
     (
      --  EDO mode disabled
      Edo_0,
      --  EDO mode enabled
      Edo_1)
     with Size => 1;
   for NANDCR0_EDO_Field use
     (Edo_0 => 0,
      Edo_1 => 1);

   --  Column address bit number
   type NANDCR0_COL_Field is
     (
      --  16
      Col_0,
      --  15
      Col_1,
      --  14
      Col_2,
      --  13
      Col_3,
      --  12
      Col_4,
      --  11
      Col_5,
      --  10
      Col_6,
      --  9
      Col_7)
     with Size => 3;
   for NANDCR0_COL_Field use
     (Col_0 => 0,
      Col_1 => 1,
      Col_2 => 2,
      Col_3 => 3,
      Col_4 => 4,
      Col_5 => 5,
      Col_6 => 6,
      Col_7 => 7);

   --  NAND control register 0
   type NANDCR0_Register is record
      --  Port Size
      PS             : NANDCR0_PS_Field := NRF_SVD.SEMC.Ps_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Burst Length
      BL             : NANDCR0_BL_Field := NRF_SVD.SEMC.Bl_0;
      --  EDO mode enabled
      EDO            : NANDCR0_EDO_Field := NRF_SVD.SEMC.Edo_0;
      --  Column address bit number
      COL            : NANDCR0_COL_Field := NRF_SVD.SEMC.Col_0;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANDCR0_Register use record
      PS             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BL             at 0 range 4 .. 6;
      EDO            at 0 range 7 .. 7;
      COL            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype NANDCR1_CES_Field is HAL.UInt4;
   subtype NANDCR1_CEH_Field is HAL.UInt4;
   subtype NANDCR1_WEL_Field is HAL.UInt4;
   subtype NANDCR1_WEH_Field is HAL.UInt4;
   subtype NANDCR1_REL_Field is HAL.UInt4;
   subtype NANDCR1_REH_Field is HAL.UInt4;
   subtype NANDCR1_TA_Field is HAL.UInt4;
   subtype NANDCR1_CEITV_Field is HAL.UInt4;

   --  NAND control register 1
   type NANDCR1_Register is record
      --  CE setup time
      CES   : NANDCR1_CES_Field := 16#0#;
      --  CE hold time
      CEH   : NANDCR1_CEH_Field := 16#0#;
      --  WE# LOW time
      WEL   : NANDCR1_WEL_Field := 16#0#;
      --  WE# HIGH time
      WEH   : NANDCR1_WEH_Field := 16#0#;
      --  RE# LOW time
      REL   : NANDCR1_REL_Field := 16#0#;
      --  RE# HIGH time
      REH   : NANDCR1_REH_Field := 16#0#;
      --  Turnaround time
      TA    : NANDCR1_TA_Field := 16#0#;
      --  CE# interval time
      CEITV : NANDCR1_CEITV_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANDCR1_Register use record
      CES   at 0 range 0 .. 3;
      CEH   at 0 range 4 .. 7;
      WEL   at 0 range 8 .. 11;
      WEH   at 0 range 12 .. 15;
      REL   at 0 range 16 .. 19;
      REH   at 0 range 20 .. 23;
      TA    at 0 range 24 .. 27;
      CEITV at 0 range 28 .. 31;
   end record;

   subtype NANDCR2_TWHR_Field is HAL.UInt6;
   subtype NANDCR2_TRHW_Field is HAL.UInt6;
   subtype NANDCR2_TADL_Field is HAL.UInt6;
   subtype NANDCR2_TRR_Field is HAL.UInt6;
   subtype NANDCR2_TWB_Field is HAL.UInt6;

   --  NAND control register 2
   type NANDCR2_Register is record
      --  WE# HIGH to RE# LOW wait time
      TWHR           : NANDCR2_TWHR_Field := 16#10#;
      --  RE# HIGH to WE# LOW wait time
      TRHW           : NANDCR2_TRHW_Field := 16#10#;
      --  ALE to WRITE Data start wait time
      TADL           : NANDCR2_TADL_Field := 16#10#;
      --  Ready to RE# LOW min wait time
      TRR            : NANDCR2_TRR_Field := 16#0#;
      --  WE# HIGH to busy wait time
      TWB            : NANDCR2_TWB_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANDCR2_Register use record
      TWHR           at 0 range 0 .. 5;
      TRHW           at 0 range 6 .. 11;
      TADL           at 0 range 12 .. 17;
      TRR            at 0 range 18 .. 23;
      TWB            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  NANDCR3_NDOPT array
   type NANDCR3_NDOPT_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for NANDCR3_NDOPT
   type NANDCR3_NDOPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NDOPT as a value
            Val : HAL.UInt3;
         when True =>
            --  NDOPT as an array
            Arr : NANDCR3_NDOPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for NANDCR3_NDOPT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  NAND control register 3
   type NANDCR3_Register is record
      --  NAND option bit 1
      NDOPT         : NANDCR3_NDOPT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANDCR3_Register use record
      NDOPT         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Port Size
   type NORCR0_PS_Field is
     (
      --  8bit
      Ps_0,
      --  16bit
      Ps_1)
     with Size => 1;
   for NORCR0_PS_Field use
     (Ps_0 => 0,
      Ps_1 => 1);

   --  Burst Length
   type NORCR0_BL_Field is
     (
      --  1
      Bl_0,
      --  2
      Bl_1,
      --  4
      Bl_2,
      --  8
      Bl_3,
      --  16
      Bl_4,
      --  32
      Bl_5,
      --  64
      Bl_6,
      --  64
      Bl_7)
     with Size => 3;
   for NORCR0_BL_Field use
     (Bl_0 => 0,
      Bl_1 => 1,
      Bl_2 => 2,
      Bl_3 => 3,
      Bl_4 => 4,
      Bl_5 => 5,
      Bl_6 => 6,
      Bl_7 => 7);

   --  Address Mode
   type NORCR0_AM_Field is
     (
      --  Address/Data MUX mode
      Am_0,
      --  Advanced Address/Data MUX mode
      Am_1,
      --  Address/Data non-MUX mode
      Am_2,
      --  Address/Data non-MUX mode
      Am_3)
     with Size => 2;
   for NORCR0_AM_Field use
     (Am_0 => 0,
      Am_1 => 1,
      Am_2 => 2,
      Am_3 => 3);

   --  ADV# polarity
   type NORCR0_ADVP_Field is
     (
      --  ADV# is Low Active. In ASYNC mode, device sample address with ADV#
      --  rise edge; In SYNC mode, device sample address when ADV# is LOW.
      Advp_0,
      --  ADV# is High Active. In ASYNC mode, device sample address with ADV#
      --  fall edge; In SYNC mode, device sample address when ADV# is HIGH.
      Advp_1)
     with Size => 1;
   for NORCR0_ADVP_Field use
     (Advp_0 => 0,
      Advp_1 => 1);

   --  Column Address bit width
   type NORCR0_COL_Field is
     (
      --  12 Bits
      Col_0,
      --  11 Bits
      Col_1,
      --  10 Bits
      Col_2,
      --  9 Bits
      Col_3,
      --  8 Bits
      Col_4,
      --  7 Bits
      Col_5,
      --  6 Bits
      Col_6,
      --  5 Bits
      Col_7,
      --  4 Bits
      Col_8,
      --  3 Bits
      Col_9,
      --  2 Bits
      Col_10,
      --  12 Bits
      Col_11,
      --  12 Bits
      Col_12,
      --  12 Bits
      Col_13,
      --  12 Bits
      Col_14,
      --  12 Bits
      Col_15)
     with Size => 4;
   for NORCR0_COL_Field use
     (Col_0 => 0,
      Col_1 => 1,
      Col_2 => 2,
      Col_3 => 3,
      Col_4 => 4,
      Col_5 => 5,
      Col_6 => 6,
      Col_7 => 7,
      Col_8 => 8,
      Col_9 => 9,
      Col_10 => 10,
      Col_11 => 11,
      Col_12 => 12,
      Col_13 => 13,
      Col_14 => 14,
      Col_15 => 15);

   --  NOR control register 0
   type NORCR0_Register is record
      --  Port Size
      PS             : NORCR0_PS_Field := NRF_SVD.SEMC.Ps_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Burst Length
      BL             : NORCR0_BL_Field := NRF_SVD.SEMC.Bl_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Address Mode
      AM             : NORCR0_AM_Field := NRF_SVD.SEMC.Am_0;
      --  ADV# polarity
      ADVP           : NORCR0_ADVP_Field := NRF_SVD.SEMC.Advp_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Column Address bit width
      COL            : NORCR0_COL_Field := NRF_SVD.SEMC.Col_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NORCR0_Register use record
      PS             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BL             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      AM             at 0 range 8 .. 9;
      ADVP           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      COL            at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype NORCR1_CES_Field is HAL.UInt4;
   subtype NORCR1_CEH_Field is HAL.UInt4;
   subtype NORCR1_AS_Field is HAL.UInt4;
   subtype NORCR1_AH_Field is HAL.UInt4;
   subtype NORCR1_WEL_Field is HAL.UInt4;
   subtype NORCR1_WEH_Field is HAL.UInt4;
   subtype NORCR1_REL_Field is HAL.UInt4;
   subtype NORCR1_REH_Field is HAL.UInt4;

   --  NOR control register 1
   type NORCR1_Register is record
      --  CE setup time cycle
      CES : NORCR1_CES_Field := 16#0#;
      --  CE hold min time (CEH+1) cycle
      CEH : NORCR1_CEH_Field := 16#0#;
      --  Address setup time
      AS  : NORCR1_AS_Field := 16#0#;
      --  Address hold time
      AH  : NORCR1_AH_Field := 16#0#;
      --  WE LOW time (WEL+1) cycle
      WEL : NORCR1_WEL_Field := 16#0#;
      --  WE HIGH time (WEH+1) cycle
      WEH : NORCR1_WEH_Field := 16#0#;
      --  RE LOW time (REL+1) cycle
      REL : NORCR1_REL_Field := 16#0#;
      --  RE HIGH time (REH+1) cycle
      REH : NORCR1_REH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NORCR1_Register use record
      CES at 0 range 0 .. 3;
      CEH at 0 range 4 .. 7;
      AS  at 0 range 8 .. 11;
      AH  at 0 range 12 .. 15;
      WEL at 0 range 16 .. 19;
      WEH at 0 range 20 .. 23;
      REL at 0 range 24 .. 27;
      REH at 0 range 28 .. 31;
   end record;

   subtype NORCR2_WDS_Field is HAL.UInt4;
   subtype NORCR2_WDH_Field is HAL.UInt4;
   subtype NORCR2_TA_Field is HAL.UInt4;
   subtype NORCR2_AWDH_Field is HAL.UInt4;
   subtype NORCR2_LC_Field is HAL.UInt4;
   subtype NORCR2_RD_Field is HAL.UInt4;
   subtype NORCR2_CEITV_Field is HAL.UInt4;

   --  NOR control register 2
   type NORCR2_Register is record
      --  Write Data setup time (WDS+1) cycle
      WDS            : NORCR2_WDS_Field := 16#0#;
      --  Write Data hold time (WDH+1) cycle
      WDH            : NORCR2_WDH_Field := 16#0#;
      --  Turnaround time cycle
      TA             : NORCR2_TA_Field := 16#0#;
      --  Address to write data hold time cycle
      AWDH           : NORCR2_AWDH_Field := 16#0#;
      --  Latency count
      LC             : NORCR2_LC_Field := 16#0#;
      --  Read cycle time
      RD             : NORCR2_RD_Field := 16#0#;
      --  CE# interval min time
      CEITV          : NORCR2_CEITV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NORCR2_Register use record
      WDS            at 0 range 0 .. 3;
      WDH            at 0 range 4 .. 7;
      TA             at 0 range 8 .. 11;
      AWDH           at 0 range 12 .. 15;
      LC             at 0 range 16 .. 19;
      RD             at 0 range 20 .. 23;
      CEITV          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Port Size
   type SRAMCR0_PS_Field is
     (
      --  8bit
      Ps_0,
      --  16bit
      Ps_1)
     with Size => 1;
   for SRAMCR0_PS_Field use
     (Ps_0 => 0,
      Ps_1 => 1);

   --  Burst Length
   type SRAMCR0_BL_Field is
     (
      --  1
      Bl_0,
      --  2
      Bl_1,
      --  4
      Bl_2,
      --  8
      Bl_3,
      --  16
      Bl_4,
      --  32
      Bl_5,
      --  64
      Bl_6,
      --  64
      Bl_7)
     with Size => 3;
   for SRAMCR0_BL_Field use
     (Bl_0 => 0,
      Bl_1 => 1,
      Bl_2 => 2,
      Bl_3 => 3,
      Bl_4 => 4,
      Bl_5 => 5,
      Bl_6 => 6,
      Bl_7 => 7);

   --  Address Mode
   type SRAMCR0_AM_Field is
     (
      --  Address/Data MUX mode
      Am_0,
      --  Advanced Address/Data MUX mode
      Am_1,
      --  Address/Data non-MUX mode
      Am_2,
      --  Address/Data non-MUX mode
      Am_3)
     with Size => 2;
   for SRAMCR0_AM_Field use
     (Am_0 => 0,
      Am_1 => 1,
      Am_2 => 2,
      Am_3 => 3);

   --  ADV# polarity
   type SRAMCR0_ADVP_Field is
     (
      --  ADV# is Low Active. In ASYNC mode, device sample address with ADV#
      --  rise edge; In SYNC mode, device sample address when ADV# is LOW.
      Advp_0,
      --  ADV# is High Active. In ASYNC mode, device sample address with ADV#
      --  fall edge; In SYNC mode, device sample address when ADV# is HIGH.
      Advp_1)
     with Size => 1;
   for SRAMCR0_ADVP_Field use
     (Advp_0 => 0,
      Advp_1 => 1);

   --  Column Address bit width
   type SRAMCR0_COL_Field is
     (
      --  12 Bits
      Col_0,
      --  11 Bits
      Col_1,
      --  10 Bits
      Col_2,
      --  9 Bits
      Col_3,
      --  8 Bits
      Col_4,
      --  7 Bits
      Col_5,
      --  6 Bits
      Col_6,
      --  5 Bits
      Col_7,
      --  4 Bits
      Col_8,
      --  3 Bits
      Col_9,
      --  2 Bits
      Col_10,
      --  12 Bits
      Col_11,
      --  12 Bits
      Col_12,
      --  12 Bits
      Col_13,
      --  12 Bits
      Col_14,
      --  12 Bits
      Col_15)
     with Size => 4;
   for SRAMCR0_COL_Field use
     (Col_0 => 0,
      Col_1 => 1,
      Col_2 => 2,
      Col_3 => 3,
      Col_4 => 4,
      Col_5 => 5,
      Col_6 => 6,
      Col_7 => 7,
      Col_8 => 8,
      Col_9 => 9,
      Col_10 => 10,
      Col_11 => 11,
      Col_12 => 12,
      Col_13 => 13,
      Col_14 => 14,
      Col_15 => 15);

   --  SRAM control register 0
   type SRAMCR0_Register is record
      --  Port Size
      PS             : SRAMCR0_PS_Field := NRF_SVD.SEMC.Ps_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Burst Length
      BL             : SRAMCR0_BL_Field := NRF_SVD.SEMC.Bl_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Address Mode
      AM             : SRAMCR0_AM_Field := NRF_SVD.SEMC.Am_0;
      --  ADV# polarity
      ADVP           : SRAMCR0_ADVP_Field := NRF_SVD.SEMC.Advp_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Column Address bit width
      COL            : SRAMCR0_COL_Field := NRF_SVD.SEMC.Col_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMCR0_Register use record
      PS             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BL             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      AM             at 0 range 8 .. 9;
      ADVP           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      COL            at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SRAMCR1_CES_Field is HAL.UInt4;
   subtype SRAMCR1_CEH_Field is HAL.UInt4;
   subtype SRAMCR1_AS_Field is HAL.UInt4;
   subtype SRAMCR1_AH_Field is HAL.UInt4;
   subtype SRAMCR1_WEL_Field is HAL.UInt4;
   subtype SRAMCR1_WEH_Field is HAL.UInt4;
   subtype SRAMCR1_REL_Field is HAL.UInt4;
   subtype SRAMCR1_REH_Field is HAL.UInt4;

   --  SRAM control register 1
   type SRAMCR1_Register is record
      --  CE setup time cycle
      CES : SRAMCR1_CES_Field := 16#0#;
      --  CE hold min time (CEH+1) cycle
      CEH : SRAMCR1_CEH_Field := 16#0#;
      --  Address setup time
      AS  : SRAMCR1_AS_Field := 16#0#;
      --  Address hold time
      AH  : SRAMCR1_AH_Field := 16#0#;
      --  WE LOW time (WEL+1) cycle
      WEL : SRAMCR1_WEL_Field := 16#0#;
      --  WE HIGH time (WEH+1) cycle
      WEH : SRAMCR1_WEH_Field := 16#0#;
      --  RE LOW time (REL+1) cycle
      REL : SRAMCR1_REL_Field := 16#0#;
      --  RE HIGH time (REH+1) cycle
      REH : SRAMCR1_REH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMCR1_Register use record
      CES at 0 range 0 .. 3;
      CEH at 0 range 4 .. 7;
      AS  at 0 range 8 .. 11;
      AH  at 0 range 12 .. 15;
      WEL at 0 range 16 .. 19;
      WEH at 0 range 20 .. 23;
      REL at 0 range 24 .. 27;
      REH at 0 range 28 .. 31;
   end record;

   subtype SRAMCR2_WDS_Field is HAL.UInt4;
   subtype SRAMCR2_WDH_Field is HAL.UInt4;
   subtype SRAMCR2_TA_Field is HAL.UInt4;
   subtype SRAMCR2_AWDH_Field is HAL.UInt4;
   subtype SRAMCR2_LC_Field is HAL.UInt4;
   subtype SRAMCR2_RD_Field is HAL.UInt4;
   subtype SRAMCR2_CEITV_Field is HAL.UInt4;

   --  SRAM control register 2
   type SRAMCR2_Register is record
      --  Write Data setup time (WDS+1) cycle
      WDS            : SRAMCR2_WDS_Field := 16#0#;
      --  Write Data hold time (WDH+1) cycle
      WDH            : SRAMCR2_WDH_Field := 16#0#;
      --  Turnaround time cycle
      TA             : SRAMCR2_TA_Field := 16#0#;
      --  Address to write data hold time cycle
      AWDH           : SRAMCR2_AWDH_Field := 16#0#;
      --  Latency count
      LC             : SRAMCR2_LC_Field := 16#0#;
      --  Read cycle time
      RD             : SRAMCR2_RD_Field := 16#0#;
      --  CE# interval min time
      CEITV          : SRAMCR2_CEITV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMCR2_Register use record
      WDS            at 0 range 0 .. 3;
      WDH            at 0 range 4 .. 7;
      TA             at 0 range 8 .. 11;
      AWDH           at 0 range 12 .. 15;
      LC             at 0 range 16 .. 19;
      RD             at 0 range 20 .. 23;
      CEITV          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Port Size
   type DBICR0_PS_Field is
     (
      --  8bit
      Ps_0,
      --  16bit
      Ps_1)
     with Size => 1;
   for DBICR0_PS_Field use
     (Ps_0 => 0,
      Ps_1 => 1);

   --  Burst Length
   type DBICR0_BL_Field is
     (
      --  1
      Bl_0,
      --  2
      Bl_1,
      --  4
      Bl_2,
      --  8
      Bl_3,
      --  16
      Bl_4,
      --  32
      Bl_5,
      --  64
      Bl_6,
      --  64
      Bl_7)
     with Size => 3;
   for DBICR0_BL_Field use
     (Bl_0 => 0,
      Bl_1 => 1,
      Bl_2 => 2,
      Bl_3 => 3,
      Bl_4 => 4,
      Bl_5 => 5,
      Bl_6 => 6,
      Bl_7 => 7);

   --  Column Address bit width
   type DBICR0_COL_Field is
     (
      --  12 Bits
      Col_0,
      --  11 Bits
      Col_1,
      --  10 Bits
      Col_2,
      --  9 Bits
      Col_3,
      --  8 Bits
      Col_4,
      --  7 Bits
      Col_5,
      --  6 Bits
      Col_6,
      --  5 Bits
      Col_7,
      --  4 Bits
      Col_8,
      --  3 Bits
      Col_9,
      --  2 Bits
      Col_10,
      --  12 Bits
      Col_11,
      --  12 Bits
      Col_12,
      --  12 Bits
      Col_13,
      --  12 Bits
      Col_14,
      --  12 Bits
      Col_15)
     with Size => 4;
   for DBICR0_COL_Field use
     (Col_0 => 0,
      Col_1 => 1,
      Col_2 => 2,
      Col_3 => 3,
      Col_4 => 4,
      Col_5 => 5,
      Col_6 => 6,
      Col_7 => 7,
      Col_8 => 8,
      Col_9 => 9,
      Col_10 => 10,
      Col_11 => 11,
      Col_12 => 12,
      Col_13 => 13,
      Col_14 => 14,
      Col_15 => 15);

   --  DBI-B control register 0
   type DBICR0_Register is record
      --  Port Size
      PS             : DBICR0_PS_Field := NRF_SVD.SEMC.Ps_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Burst Length
      BL             : DBICR0_BL_Field := NRF_SVD.SEMC.Bl_0;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Column Address bit width
      COL            : DBICR0_COL_Field := NRF_SVD.SEMC.Col_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBICR0_Register use record
      PS             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BL             at 0 range 4 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      COL            at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DBICR1_CES_Field is HAL.UInt4;
   subtype DBICR1_CEH_Field is HAL.UInt4;
   subtype DBICR1_WEL_Field is HAL.UInt4;
   subtype DBICR1_WEH_Field is HAL.UInt4;
   subtype DBICR1_REL_Field is HAL.UInt4;
   subtype DBICR1_REH_Field is HAL.UInt4;
   subtype DBICR1_CEITV_Field is HAL.UInt4;

   --  DBI-B control register 1
   type DBICR1_Register is record
      --  CSX Setup Time
      CES            : DBICR1_CES_Field := 16#0#;
      --  CSX Hold Time
      CEH            : DBICR1_CEH_Field := 16#0#;
      --  WRX Low Time
      WEL            : DBICR1_WEL_Field := 16#0#;
      --  WRX High Time
      WEH            : DBICR1_WEH_Field := 16#0#;
      --  RDX Low Time
      REL            : DBICR1_REL_Field := 16#0#;
      --  RDX High Time
      REH            : DBICR1_REH_Field := 16#0#;
      --  CSX interval min time
      CEITV          : DBICR1_CEITV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBICR1_Register use record
      CES            at 0 range 0 .. 3;
      CEH            at 0 range 4 .. 7;
      WEL            at 0 range 8 .. 11;
      WEH            at 0 range 12 .. 15;
      REL            at 0 range 16 .. 19;
      REH            at 0 range 20 .. 23;
      CEITV          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Data Size in Byte
   type IPCR1_DATSZ_Field is
     (
      --  4
      Datsz_0,
      --  1
      Datsz_1,
      --  2
      Datsz_2,
      --  3
      Datsz_3,
      --  4
      Datsz_4,
      --  4
      Datsz_5,
      --  4
      Datsz_6,
      --  4
      Datsz_7)
     with Size => 3;
   for IPCR1_DATSZ_Field use
     (Datsz_0 => 0,
      Datsz_1 => 1,
      Datsz_2 => 2,
      Datsz_3 => 3,
      Datsz_4 => 4,
      Datsz_5 => 5,
      Datsz_6 => 6,
      Datsz_7 => 7);

   --  IP Command control register 1
   type IPCR1_Register is record
      --  Data Size in Byte
      DATSZ         : IPCR1_DATSZ_Field := NRF_SVD.SEMC.Datsz_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCR1_Register use record
      DATSZ         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Byte Mask for Byte 0 (IPTXD bit 7:0)
   type IPCR2_BM0_Field is
     (
      --  Byte Unmasked
      Bm0_0,
      --  Byte Masked
      Bm0_1)
     with Size => 1;
   for IPCR2_BM0_Field use
     (Bm0_0 => 0,
      Bm0_1 => 1);

   --  Byte Mask for Byte 1 (IPTXD bit 15:8)
   type IPCR2_BM1_Field is
     (
      --  Byte Unmasked
      Bm1_0,
      --  Byte Masked
      Bm1_1)
     with Size => 1;
   for IPCR2_BM1_Field use
     (Bm1_0 => 0,
      Bm1_1 => 1);

   --  Byte Mask for Byte 2 (IPTXD bit 23:16)
   type IPCR2_BM2_Field is
     (
      --  Byte Unmasked
      Bm2_0,
      --  Byte Masked
      Bm2_1)
     with Size => 1;
   for IPCR2_BM2_Field use
     (Bm2_0 => 0,
      Bm2_1 => 1);

   --  Byte Mask for Byte 3 (IPTXD bit 31:24)
   type IPCR2_BM3_Field is
     (
      --  Byte Unmasked
      Bm3_0,
      --  Byte Masked
      Bm3_1)
     with Size => 1;
   for IPCR2_BM3_Field use
     (Bm3_0 => 0,
      Bm3_1 => 1);

   --  IP Command control register 2
   type IPCR2_Register is record
      --  Byte Mask for Byte 0 (IPTXD bit 7:0)
      BM0           : IPCR2_BM0_Field := NRF_SVD.SEMC.Bm0_0;
      --  Byte Mask for Byte 1 (IPTXD bit 15:8)
      BM1           : IPCR2_BM1_Field := NRF_SVD.SEMC.Bm1_0;
      --  Byte Mask for Byte 2 (IPTXD bit 23:16)
      BM2           : IPCR2_BM2_Field := NRF_SVD.SEMC.Bm2_0;
      --  Byte Mask for Byte 3 (IPTXD bit 31:24)
      BM3           : IPCR2_BM3_Field := NRF_SVD.SEMC.Bm3_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCR2_Register use record
      BM0           at 0 range 0 .. 0;
      BM1           at 0 range 1 .. 1;
      BM2           at 0 range 2 .. 2;
      BM3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IPCMD_CMD_Field is HAL.UInt16;
   subtype IPCMD_KEY_Field is HAL.UInt16;

   --  IP Command register
   type IPCMD_Register is record
      --  SDRAM Commands: 0x8: READ 0x9: WRITE 0xA: MODESET 0xB: ACTIVE 0xC:
      --  AUTO REFRESH 0xD: SELF REFRESH 0xE: PRECHARGE 0xF: PRECHARGE ALL
      --  Others: RSVD SELF REFRESH will be sent to all SDRAM devices because
      --  they shared same SEMC_CLK pin
      CMD : IPCMD_CMD_Field := 16#0#;
      --  Write-only. This field should be written with 0xA55A when trigging an
      --  IP command.
      KEY : IPCMD_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCMD_Register use record
      CMD at 0 range 0 .. 15;
      KEY at 0 range 16 .. 31;
   end record;

   --  Indicating NAND device Ready/WAIT# pin level.
   type STS0_NARDY_Field is
     (
      --  NAND device is not ready
      Nardy_0,
      --  NAND device is ready
      Nardy_1)
     with Size => 1;
   for STS0_NARDY_Field use
     (Nardy_0 => 0,
      Nardy_1 => 1);

   --  Status register 0
   type STS0_Register is record
      --  Read-only. Indicating whether SEMC is in IDLE state.
      IDLE          : Boolean;
      --  Read-only. Indicating NAND device Ready/WAIT# pin level.
      NARDY         : STS0_NARDY_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STS0_Register use record
      IDLE          at 0 range 0 .. 0;
      NARDY         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This field indicating whether there is pending AXI command (write) to
   --  NAND device.
   type STS2_NDWRPEND_Field is
     (
      --  No pending
      Ndwrpend_0,
      --  Pending
      Ndwrpend_1)
     with Size => 1;
   for STS2_NDWRPEND_Field use
     (Ndwrpend_0 => 0,
      Ndwrpend_1 => 1);

   --  Status register 2
   type STS2_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3;
      --  Read-only. This field indicating whether there is pending AXI command
      --  (write) to NAND device.
      NDWRPEND      : STS2_NDWRPEND_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STS2_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      NDWRPEND      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SEMC
   type SEMC_Peripheral is record
      --  Module Control Register
      MCR      : aliased MCR_Register;
      --  IO Mux Control Register
      IOCR     : aliased IOCR_Register;
      --  Master Bus (AXI) Control Register 0
      BMCR0    : aliased BMCR0_Register;
      --  Master Bus (AXI) Control Register 1
      BMCR1    : aliased BMCR1_Register;
      --  Base Register 0 (For SDRAM CS0 device)
      BR0      : aliased BR_Register;
      --  Base Register 1 (For SDRAM CS1 device)
      BR1      : aliased BR_Register;
      --  Base Register 2 (For SDRAM CS2 device)
      BR2      : aliased BR_Register;
      --  Base Register 3 (For SDRAM CS3 device)
      BR3      : aliased BR_Register;
      --  Base Register 4 (For NAND device)
      BR4      : aliased BR_Register;
      --  Base Register 5 (For NOR device)
      BR5      : aliased BR_Register;
      --  Base Register 6 (For PSRAM device)
      BR6      : aliased BR_Register;
      --  Base Register 7 (For DBI-B (MIPI Display Bus Interface Type B)
      --  device)
      BR7      : aliased BR_Register;
      --  Base Register 8 (For NAND device)
      BR8      : aliased BR_Register;
      --  Interrupt Enable Register
      INTEN    : aliased INTEN_Register;
      --  Interrupt Enable Register
      INTR     : aliased INTR_Register;
      --  SDRAM control register 0
      SDRAMCR0 : aliased SDRAMCR0_Register;
      --  SDRAM control register 1
      SDRAMCR1 : aliased SDRAMCR1_Register;
      --  SDRAM control register 2
      SDRAMCR2 : aliased SDRAMCR2_Register;
      --  SDRAM control register 3
      SDRAMCR3 : aliased SDRAMCR3_Register;
      --  NAND control register 0
      NANDCR0  : aliased NANDCR0_Register;
      --  NAND control register 1
      NANDCR1  : aliased NANDCR1_Register;
      --  NAND control register 2
      NANDCR2  : aliased NANDCR2_Register;
      --  NAND control register 3
      NANDCR3  : aliased NANDCR3_Register;
      --  NOR control register 0
      NORCR0   : aliased NORCR0_Register;
      --  NOR control register 1
      NORCR1   : aliased NORCR1_Register;
      --  NOR control register 2
      NORCR2   : aliased NORCR2_Register;
      --  NOR control register 3
      NORCR3   : aliased HAL.UInt32;
      --  SRAM control register 0
      SRAMCR0  : aliased SRAMCR0_Register;
      --  SRAM control register 1
      SRAMCR1  : aliased SRAMCR1_Register;
      --  SRAM control register 2
      SRAMCR2  : aliased SRAMCR2_Register;
      --  SRAM control register 3
      SRAMCR3  : aliased HAL.UInt32;
      --  DBI-B control register 0
      DBICR0   : aliased DBICR0_Register;
      --  DBI-B control register 1
      DBICR1   : aliased DBICR1_Register;
      --  IP Command control register 0
      IPCR0    : aliased HAL.UInt32;
      --  IP Command control register 1
      IPCR1    : aliased IPCR1_Register;
      --  IP Command control register 2
      IPCR2    : aliased IPCR2_Register;
      --  IP Command register
      IPCMD    : aliased IPCMD_Register;
      --  TX DATA register (for IP Command)
      IPTXDAT  : aliased HAL.UInt32;
      --  RX DATA register (for IP Command)
      IPRXDAT  : aliased HAL.UInt32;
      --  Status register 0
      STS0     : aliased STS0_Register;
      --  Status register 1
      STS1     : aliased HAL.UInt32;
      --  Status register 2
      STS2     : aliased STS2_Register;
      --  Status register 3
      STS3     : aliased HAL.UInt32;
      --  Status register 4
      STS4     : aliased HAL.UInt32;
      --  Status register 5
      STS5     : aliased HAL.UInt32;
      --  Status register 6
      STS6     : aliased HAL.UInt32;
      --  Status register 7
      STS7     : aliased HAL.UInt32;
      --  Status register 8
      STS8     : aliased HAL.UInt32;
      --  Status register 9
      STS9     : aliased HAL.UInt32;
      --  Status register 10
      STS10    : aliased HAL.UInt32;
      --  Status register 11
      STS11    : aliased HAL.UInt32;
      --  Status register 12
      STS12    : aliased HAL.UInt32;
      --  Status register 13
      STS13    : aliased HAL.UInt32;
      --  Status register 14
      STS14    : aliased HAL.UInt32;
      --  Status register 15
      STS15    : aliased HAL.UInt32;
   end record
     with Volatile;

   for SEMC_Peripheral use record
      MCR      at 16#0# range 0 .. 31;
      IOCR     at 16#4# range 0 .. 31;
      BMCR0    at 16#8# range 0 .. 31;
      BMCR1    at 16#C# range 0 .. 31;
      BR0      at 16#10# range 0 .. 31;
      BR1      at 16#14# range 0 .. 31;
      BR2      at 16#18# range 0 .. 31;
      BR3      at 16#1C# range 0 .. 31;
      BR4      at 16#20# range 0 .. 31;
      BR5      at 16#24# range 0 .. 31;
      BR6      at 16#28# range 0 .. 31;
      BR7      at 16#2C# range 0 .. 31;
      BR8      at 16#30# range 0 .. 31;
      INTEN    at 16#38# range 0 .. 31;
      INTR     at 16#3C# range 0 .. 31;
      SDRAMCR0 at 16#40# range 0 .. 31;
      SDRAMCR1 at 16#44# range 0 .. 31;
      SDRAMCR2 at 16#48# range 0 .. 31;
      SDRAMCR3 at 16#4C# range 0 .. 31;
      NANDCR0  at 16#50# range 0 .. 31;
      NANDCR1  at 16#54# range 0 .. 31;
      NANDCR2  at 16#58# range 0 .. 31;
      NANDCR3  at 16#5C# range 0 .. 31;
      NORCR0   at 16#60# range 0 .. 31;
      NORCR1   at 16#64# range 0 .. 31;
      NORCR2   at 16#68# range 0 .. 31;
      NORCR3   at 16#6C# range 0 .. 31;
      SRAMCR0  at 16#70# range 0 .. 31;
      SRAMCR1  at 16#74# range 0 .. 31;
      SRAMCR2  at 16#78# range 0 .. 31;
      SRAMCR3  at 16#7C# range 0 .. 31;
      DBICR0   at 16#80# range 0 .. 31;
      DBICR1   at 16#84# range 0 .. 31;
      IPCR0    at 16#90# range 0 .. 31;
      IPCR1    at 16#94# range 0 .. 31;
      IPCR2    at 16#98# range 0 .. 31;
      IPCMD    at 16#9C# range 0 .. 31;
      IPTXDAT  at 16#A0# range 0 .. 31;
      IPRXDAT  at 16#B0# range 0 .. 31;
      STS0     at 16#C0# range 0 .. 31;
      STS1     at 16#C4# range 0 .. 31;
      STS2     at 16#C8# range 0 .. 31;
      STS3     at 16#CC# range 0 .. 31;
      STS4     at 16#D0# range 0 .. 31;
      STS5     at 16#D4# range 0 .. 31;
      STS6     at 16#D8# range 0 .. 31;
      STS7     at 16#DC# range 0 .. 31;
      STS8     at 16#E0# range 0 .. 31;
      STS9     at 16#E4# range 0 .. 31;
      STS10    at 16#E8# range 0 .. 31;
      STS11    at 16#EC# range 0 .. 31;
      STS12    at 16#F0# range 0 .. 31;
      STS13    at 16#F4# range 0 .. 31;
      STS14    at 16#F8# range 0 .. 31;
      STS15    at 16#FC# range 0 .. 31;
   end record;

   --  SEMC
   SEMC_Periph : aliased SEMC_Peripheral
     with Import, Address => System'To_Address (16#402F0000#);

end NRF_SVD.SEMC;
