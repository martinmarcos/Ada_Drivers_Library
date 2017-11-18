--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKE06Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog-to-digital converter
package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Input Channel Select
   type SC1_ADCH_Field is
     (
      --  Temperature Sensor
      SC1_ADCH_Field_10110,
      --  Bandgap
      SC1_ADCH_Field_10111,
      --  VREFH
      SC1_ADCH_Field_11101,
      --  VREFL
      SC1_ADCH_Field_11110,
      --  Module disabled Reset FIFO in FIFO mode.
      SC1_ADCH_Field_11111)
     with Size => 5;
   for SC1_ADCH_Field use
     (SC1_ADCH_Field_10110 => 22,
      SC1_ADCH_Field_10111 => 23,
      SC1_ADCH_Field_11101 => 29,
      SC1_ADCH_Field_11110 => 30,
      SC1_ADCH_Field_11111 => 31);

   --  Continuous Conversion Enable
   type SC1_ADCO_Field is
     (
      --  One conversion following a write to the ADC_SC1 when software
      --  triggered operation is selected, or one conversion following
      --  assertion of ADHWT when hardware triggered operation is selected.
      --  When the FIFO function is enabled (AFDEP > 0), a set of conversion
      --  are triggered when ADC_SC2[ADTRG]=0 or both ADC_SC2[ADTRG]=1 and
      --  ADC_SC4[HTRGME]=1.
      SC1_ADCO_Field_0,
      --  Continuous conversions are initiated following a write to ADC_SC1
      --  when software triggered operation is selected. Continuous conversions
      --  are initiated by an ADHWT event when hardware triggered operation is
      --  selected. When the FIFO function is enabled (AFDEP > 0), a set of
      --  conversions are loop triggered.
      SC1_ADCO_Field_1)
     with Size => 1;
   for SC1_ADCO_Field use
     (SC1_ADCO_Field_0 => 0,
      SC1_ADCO_Field_1 => 1);

   --  Interrupt Enable
   type SC1_AIEN_Field is
     (
      --  Conversion complete interrupt disabled.
      SC1_AIEN_Field_0,
      --  Conversion complete interrupt enabled.
      SC1_AIEN_Field_1)
     with Size => 1;
   for SC1_AIEN_Field use
     (SC1_AIEN_Field_0 => 0,
      SC1_AIEN_Field_1 => 1);

   --  Conversion Complete Flag
   type SC1_COCO_Field is
     (
      --  Conversion not completed.
      SC1_COCO_Field_0,
      --  Conversion completed.
      SC1_COCO_Field_1)
     with Size => 1;
   for SC1_COCO_Field use
     (SC1_COCO_Field_0 => 0,
      SC1_COCO_Field_1 => 1);

   --  Status and Control Register 1
   type ADC_SC1_Register is record
      --  Input Channel Select
      ADCH          : SC1_ADCH_Field := NRF_SVD.ADC.SC1_ADCH_Field_11111;
      --  Continuous Conversion Enable
      ADCO          : SC1_ADCO_Field := NRF_SVD.ADC.SC1_ADCO_Field_0;
      --  Interrupt Enable
      AIEN          : SC1_AIEN_Field := NRF_SVD.ADC.SC1_AIEN_Field_0;
      --  Read-only. Conversion Complete Flag
      COCO          : SC1_COCO_Field := NRF_SVD.ADC.SC1_COCO_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SC1_Register use record
      ADCH          at 0 range 0 .. 4;
      ADCO          at 0 range 5 .. 5;
      AIEN          at 0 range 6 .. 6;
      COCO          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Voltage Reference Selection
   type SC2_REFSEL_Field is
     (
      --  Default voltage reference pin pair (VREFH/VREFL).
      SC2_REFSEL_Field_00,
      --  Analog supply pin pair (VDDA/VSSA).
      SC2_REFSEL_Field_01,
      --  Reserved - Selects default voltage reference (VREFH/VREFL) pin pair.
      SC2_REFSEL_Field_11)
     with Size => 2;
   for SC2_REFSEL_Field use
     (SC2_REFSEL_Field_00 => 0,
      SC2_REFSEL_Field_01 => 1,
      SC2_REFSEL_Field_11 => 3);

   --  Result FIFO full
   type SC2_FFULL_Field is
     (
      --  Indicates that ADC result FIFO is not full and next conversion data
      --  still can be stored into FIFO.
      SC2_FFULL_Field_0,
      --  Indicates that ADC result FIFO is full and next conversion will
      --  override old data in case of no read action.
      SC2_FFULL_Field_1)
     with Size => 1;
   for SC2_FFULL_Field use
     (SC2_FFULL_Field_0 => 0,
      SC2_FFULL_Field_1 => 1);

   --  Result FIFO empty
   type SC2_FEMPTY_Field is
     (
      --  Indicates that ADC result FIFO have at least one valid new data.
      SC2_FEMPTY_Field_0,
      --  Indicates that ADC result FIFO have no valid new data.
      SC2_FEMPTY_Field_1)
     with Size => 1;
   for SC2_FEMPTY_Field use
     (SC2_FEMPTY_Field_0 => 0,
      SC2_FEMPTY_Field_1 => 1);

   --  Compare Function Greater Than Enable
   type SC2_ACFGT_Field is
     (
      --  Compare triggers when input is less than compare level.
      SC2_ACFGT_Field_0,
      --  Compare triggers when input is greater than or equal to compare
      --  level.
      SC2_ACFGT_Field_1)
     with Size => 1;
   for SC2_ACFGT_Field use
     (SC2_ACFGT_Field_0 => 0,
      SC2_ACFGT_Field_1 => 1);

   --  Compare Function Enable
   type SC2_ACFE_Field is
     (
      --  Compare function disabled.
      SC2_ACFE_Field_0,
      --  Compare function enabled.
      SC2_ACFE_Field_1)
     with Size => 1;
   for SC2_ACFE_Field use
     (SC2_ACFE_Field_0 => 0,
      SC2_ACFE_Field_1 => 1);

   --  Conversion Trigger Select
   type SC2_ADTRG_Field is
     (
      --  Software trigger selected.
      SC2_ADTRG_Field_0,
      --  Hardware trigger selected.
      SC2_ADTRG_Field_1)
     with Size => 1;
   for SC2_ADTRG_Field use
     (SC2_ADTRG_Field_0 => 0,
      SC2_ADTRG_Field_1 => 1);

   --  Conversion Active
   type SC2_ADACT_Field is
     (
      --  Conversion not in progress.
      SC2_ADACT_Field_0,
      --  Conversion in progress.
      SC2_ADACT_Field_1)
     with Size => 1;
   for SC2_ADACT_Field use
     (SC2_ADACT_Field_0 => 0,
      SC2_ADACT_Field_1 => 1);

   --  Status and Control Register 2
   type ADC_SC2_Register is record
      --  Voltage Reference Selection
      REFSEL        : SC2_REFSEL_Field := NRF_SVD.ADC.SC2_REFSEL_Field_00;
      --  Read-only. Result FIFO full
      FFULL         : SC2_FFULL_Field := NRF_SVD.ADC.SC2_FFULL_Field_0;
      --  Read-only. Result FIFO empty
      FEMPTY        : SC2_FEMPTY_Field := NRF_SVD.ADC.SC2_FEMPTY_Field_1;
      --  Compare Function Greater Than Enable
      ACFGT         : SC2_ACFGT_Field := NRF_SVD.ADC.SC2_ACFGT_Field_0;
      --  Compare Function Enable
      ACFE          : SC2_ACFE_Field := NRF_SVD.ADC.SC2_ACFE_Field_0;
      --  Conversion Trigger Select
      ADTRG         : SC2_ADTRG_Field := NRF_SVD.ADC.SC2_ADTRG_Field_0;
      --  Read-only. Conversion Active
      ADACT         : SC2_ADACT_Field := NRF_SVD.ADC.SC2_ADACT_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SC2_Register use record
      REFSEL        at 0 range 0 .. 1;
      FFULL         at 0 range 2 .. 2;
      FEMPTY        at 0 range 3 .. 3;
      ACFGT         at 0 range 4 .. 4;
      ACFE          at 0 range 5 .. 5;
      ADTRG         at 0 range 6 .. 6;
      ADACT         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Input Clock Select
   type SC3_ADICLK_Field is
     (
      --  Bus clock
      SC3_ADICLK_Field_00,
      --  Bus clock divided by 2
      SC3_ADICLK_Field_01,
      --  Alternate clock (ALTCLK)
      SC3_ADICLK_Field_10,
      --  Asynchronous clock (ADACK)
      SC3_ADICLK_Field_11)
     with Size => 2;
   for SC3_ADICLK_Field use
     (SC3_ADICLK_Field_00 => 0,
      SC3_ADICLK_Field_01 => 1,
      SC3_ADICLK_Field_10 => 2,
      SC3_ADICLK_Field_11 => 3);

   --  Conversion Mode Selection
   type SC3_MODE_Field is
     (
      --  8-bit conversion (N = 8)
      SC3_MODE_Field_00,
      --  10-bit conversion (N = 10)
      SC3_MODE_Field_01,
      --  12-bit conversion (N = 12)
      SC3_MODE_Field_10)
     with Size => 2;
   for SC3_MODE_Field use
     (SC3_MODE_Field_00 => 0,
      SC3_MODE_Field_01 => 1,
      SC3_MODE_Field_10 => 2);

   --  Long Sample Time Configuration
   type SC3_ADLSMP_Field is
     (
      --  Short sample time.
      SC3_ADLSMP_Field_0,
      --  Long sample time.
      SC3_ADLSMP_Field_1)
     with Size => 1;
   for SC3_ADLSMP_Field use
     (SC3_ADLSMP_Field_0 => 0,
      SC3_ADLSMP_Field_1 => 1);

   --  Clock Divide Select
   type SC3_ADIV_Field is
     (
      --  Divide ration = 1, and clock rate = Input clock.
      SC3_ADIV_Field_00,
      --  Divide ration = 2, and clock rate = Input clock * 2.
      SC3_ADIV_Field_01,
      --  Divide ration = 3, and clock rate = Input clock * 4.
      SC3_ADIV_Field_10,
      --  Divide ration = 4, and clock rate = Input clock * 8.
      SC3_ADIV_Field_11)
     with Size => 2;
   for SC3_ADIV_Field use
     (SC3_ADIV_Field_00 => 0,
      SC3_ADIV_Field_01 => 1,
      SC3_ADIV_Field_10 => 2,
      SC3_ADIV_Field_11 => 3);

   --  Low-Power Configuration
   type SC3_ADLPC_Field is
     (
      --  High speed configuration.
      SC3_ADLPC_Field_0,
      --  Low power configuration:The power is reduced at the expense of
      --  maximum clock speed.
      SC3_ADLPC_Field_1)
     with Size => 1;
   for SC3_ADLPC_Field use
     (SC3_ADLPC_Field_0 => 0,
      SC3_ADLPC_Field_1 => 1);

   --  Status and Control Register 3
   type ADC_SC3_Register is record
      --  Input Clock Select
      ADICLK        : SC3_ADICLK_Field := NRF_SVD.ADC.SC3_ADICLK_Field_00;
      --  Conversion Mode Selection
      MODE          : SC3_MODE_Field := NRF_SVD.ADC.SC3_MODE_Field_00;
      --  Long Sample Time Configuration
      ADLSMP        : SC3_ADLSMP_Field := NRF_SVD.ADC.SC3_ADLSMP_Field_0;
      --  Clock Divide Select
      ADIV          : SC3_ADIV_Field := NRF_SVD.ADC.SC3_ADIV_Field_00;
      --  Low-Power Configuration
      ADLPC         : SC3_ADLPC_Field := NRF_SVD.ADC.SC3_ADLPC_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SC3_Register use record
      ADICLK        at 0 range 0 .. 1;
      MODE          at 0 range 2 .. 3;
      ADLSMP        at 0 range 4 .. 4;
      ADIV          at 0 range 5 .. 6;
      ADLPC         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FIFO Depth
   type SC4_AFDEP_Field is
     (
      --  FIFO is disabled.
      SC4_AFDEP_Field_000,
      --  2-level FIFO is enabled.
      SC4_AFDEP_Field_001,
      --  3-level FIFO is enabled..
      SC4_AFDEP_Field_010,
      --  4-level FIFO is enabled.
      SC4_AFDEP_Field_011,
      --  5-level FIFO is enabled.
      SC4_AFDEP_Field_100,
      --  6-level FIFO is enabled.
      SC4_AFDEP_Field_101,
      --  7-level FIFO is enabled.
      SC4_AFDEP_Field_110,
      --  8-level FIFO is enabled.
      SC4_AFDEP_Field_111)
     with Size => 3;
   for SC4_AFDEP_Field use
     (SC4_AFDEP_Field_000 => 0,
      SC4_AFDEP_Field_001 => 1,
      SC4_AFDEP_Field_010 => 2,
      SC4_AFDEP_Field_011 => 3,
      SC4_AFDEP_Field_100 => 4,
      SC4_AFDEP_Field_101 => 5,
      SC4_AFDEP_Field_110 => 6,
      SC4_AFDEP_Field_111 => 7);

   --  Compare Function Selection
   type SC4_ACFSEL_Field is
     (
      --  OR all of compare trigger.
      SC4_ACFSEL_Field_0,
      --  AND all of compare trigger.
      SC4_ACFSEL_Field_1)
     with Size => 1;
   for SC4_ACFSEL_Field use
     (SC4_ACFSEL_Field_0 => 0,
      SC4_ACFSEL_Field_1 => 1);

   --  FIFO Scan Mode Enable
   type SC4_ASCANE_Field is
     (
      --  FIFO scan mode disabled.
      SC4_ASCANE_Field_0,
      --  FIFO scan mode enabled.
      SC4_ASCANE_Field_1)
     with Size => 1;
   for SC4_ASCANE_Field use
     (SC4_ASCANE_Field_0 => 0,
      SC4_ASCANE_Field_1 => 1);

   --  Hardware Trigger Multiple Conversion Enable
   type SC4_HTRGME_Field is
     (
      --  One hardware trigger pulse triggers one conversion.
      SC4_HTRGME_Field_0,
      --  One hardware trigger pulse triggers multiple conversions in fifo
      --  mode.
      SC4_HTRGME_Field_1)
     with Size => 1;
   for SC4_HTRGME_Field use
     (SC4_HTRGME_Field_0 => 0,
      SC4_HTRGME_Field_1 => 1);

   --  Status and Control Register 4
   type ADC_SC4_Register is record
      --  FIFO Depth
      AFDEP         : SC4_AFDEP_Field := NRF_SVD.ADC.SC4_AFDEP_Field_000;
      --  unspecified
      Reserved_3_4  : HAL.UInt2 := 16#0#;
      --  Compare Function Selection
      ACFSEL        : SC4_ACFSEL_Field := NRF_SVD.ADC.SC4_ACFSEL_Field_0;
      --  FIFO Scan Mode Enable
      ASCANE        : SC4_ASCANE_Field := NRF_SVD.ADC.SC4_ASCANE_Field_0;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Hardware Trigger Multiple Conversion Enable
      HTRGME        : SC4_HTRGME_Field := NRF_SVD.ADC.SC4_HTRGME_Field_0;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SC4_Register use record
      AFDEP         at 0 range 0 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      ACFSEL        at 0 range 5 .. 5;
      ASCANE        at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      HTRGME        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ADC_R_ADR_Field is HAL.UInt12;

   --  Conversion Result Register
   type ADC_R_Register is record
      --  Read-only. Conversion Result
      ADR            : ADC_R_ADR_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_R_Register use record
      ADR            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADC_CV_CV_Field is HAL.UInt12;

   --  Compare Value Register
   type ADC_CV_Register is record
      --  Conversion Result[11:0]
      CV             : ADC_CV_CV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CV_Register use record
      CV             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  ADC Pin Control
   type APCTL1_ADPC_Field is
     (
      --  ADx pin I/O control enabled.
      APCTL1_ADPC_Field_0,
      --  ADx pin I/O control disabled.
      APCTL1_ADPC_Field_1)
     with Size => 16;
   for APCTL1_ADPC_Field use
     (APCTL1_ADPC_Field_0 => 0,
      APCTL1_ADPC_Field_1 => 1);

   --  Pin Control 1 Register
   type ADC_APCTL1_Register is record
      --  ADC Pin Control
      ADPC           : APCTL1_ADPC_Field := NRF_SVD.ADC.APCTL1_ADPC_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_APCTL1_Register use record
      ADPC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Hardware Trigger Mask Mode Select
   type SC5_HTRGMASKSEL_Field is
     (
      --  Hardware trigger mask with HTRGMASKE.
      SC5_HTRGMASKSEL_Field_0,
      --  Hardware trigger mask automatically when data fifo is not empty.
      SC5_HTRGMASKSEL_Field_1)
     with Size => 1;
   for SC5_HTRGMASKSEL_Field use
     (SC5_HTRGMASKSEL_Field_0 => 0,
      SC5_HTRGMASKSEL_Field_1 => 1);

   --  Hardware Trigger Mask Enable
   type SC5_HTRGMASKE_Field is
     (
      --  Hardware trigger mask disable.
      SC5_HTRGMASKE_Field_0,
      --  Hardware trigger mask enable and hardware trigger cannot trigger ADC
      --  conversion..
      SC5_HTRGMASKE_Field_1)
     with Size => 1;
   for SC5_HTRGMASKE_Field use
     (SC5_HTRGMASKE_Field_0 => 0,
      SC5_HTRGMASKE_Field_1 => 1);

   --  Status and Control Register 5
   type ADC_SC5_Register is record
      --  Hardware Trigger Mask Mode Select
      HTRGMASKSEL   : SC5_HTRGMASKSEL_Field :=
                       NRF_SVD.ADC.SC5_HTRGMASKSEL_Field_0;
      --  Hardware Trigger Mask Enable
      HTRGMASKE     : SC5_HTRGMASKE_Field :=
                       NRF_SVD.ADC.SC5_HTRGMASKE_Field_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SC5_Register use record
      HTRGMASKSEL   at 0 range 0 .. 0;
      HTRGMASKE     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-digital converter
   type ADC_Peripheral is record
      --  Status and Control Register 1
      SC1    : aliased ADC_SC1_Register;
      --  Status and Control Register 2
      SC2    : aliased ADC_SC2_Register;
      --  Status and Control Register 3
      SC3    : aliased ADC_SC3_Register;
      --  Status and Control Register 4
      SC4    : aliased ADC_SC4_Register;
      --  Conversion Result Register
      R      : aliased ADC_R_Register;
      --  Compare Value Register
      CV     : aliased ADC_CV_Register;
      --  Pin Control 1 Register
      APCTL1 : aliased ADC_APCTL1_Register;
      --  Status and Control Register 5
      SC5    : aliased ADC_SC5_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      SC1    at 16#0# range 0 .. 31;
      SC2    at 16#4# range 0 .. 31;
      SC3    at 16#8# range 0 .. 31;
      SC4    at 16#C# range 0 .. 31;
      R      at 16#10# range 0 .. 31;
      CV     at 16#14# range 0 .. 31;
      APCTL1 at 16#18# range 0 .. 31;
      SC5    at 16#1C# range 0 .. 31;
   end record;

   --  Analog-to-digital converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end NRF_SVD.ADC;
