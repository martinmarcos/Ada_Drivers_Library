--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54606.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SPIFI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_TIMEOUT_Field is HAL.UInt16;
   subtype CTRL_CSHIGH_Field is HAL.UInt4;

   --  SPI Mode 3 select.
   type CTRL_MODE3_Field is
     (
      --  SCK LOW. The SPIFI drives SCK low after the rising edge at which the
      --  last bit of each command is captured, and keeps it low while CS is
      --  HIGH.
      Sck_Low,
      --  SCK HIGH. the SPIFI keeps SCK high after the rising edge for the last
      --  bit of each command and while CS is HIGH, and drives it low after it
      --  drives CS LOW. (Known serial flash devices can handle either mode,
      --  but some devices may require a particular mode for proper operation.)
      --  MODE3, RFCLK, and FBCLK should not all be 1, because in this case
      --  there is no final falling edge on SCK on which to sample the last
      --  data bit of the frame.
      Sck_High)
     with Size => 1;
   for CTRL_MODE3_Field use
     (Sck_Low => 0,
      Sck_High => 1);

   --  Cache prefetching enable. The SPIFI includes an internal cache. A 1 in
   --  this bit disables prefetching of cache lines.
   type CTRL_PRFTCH_DIS_Field is
     (
      --  Enable. Cache prefetching enabled.
      Enable,
      --  Disable. Disables prefetching of cache lines.
      Disable)
     with Size => 1;
   for CTRL_PRFTCH_DIS_Field use
     (Enable => 0,
      Disable => 1);

   --  Select dual protocol.
   type CTRL_DUAL_Field is
     (
      --  Quad protocol. This protocol uses IO3:0.
      Quad,
      --  Dual protocol. This protocol uses IO1:0.
      Dual)
     with Size => 1;
   for CTRL_DUAL_Field use
     (Quad => 0,
      Dual => 1);

   --  Select active clock edge for input data.
   type CTRL_RFCLK_Field is
     (
      --  Rising edge. Read data is sampled on rising edges on the clock, as in
      --  classic SPI operation.
      Rising_Edge,
      --  Falling edge. Read data is sampled on falling edges of the clock,
      --  allowing a full serial clock of of time in order to maximize the
      --  serial clock frequency. MODE3, RFCLK, and FBCLK should not all be 1,
      --  because in this case there is no final falling edge on SCK on which
      --  to sample the last data bit of the frame.
      Falling_Edge)
     with Size => 1;
   for CTRL_RFCLK_Field use
     (Rising_Edge => 0,
      Falling_Edge => 1);

   --  Feedback clock select.
   type CTRL_FBCLK_Field is
     (
      --  Internal clock. The SPIFI samples read data using an internal clock.
      Internal_Clock,
      --  Feedback clock. Read data is sampled using a feedback clock from the
      --  SCK pin. This allows slightly more time for each received bit. MODE3,
      --  RFCLK, and FBCLK should not all be 1, because in this case there is
      --  no final falling edge on SCK on which to sample the last data bit of
      --  the frame.
      Feedback_Clock)
     with Size => 1;
   for CTRL_FBCLK_Field use
     (Internal_Clock => 0,
      Feedback_Clock => 1);

   --  SPIFI control register
   type CTRL_Register is record
      --  This field contains the number of serial clock periods without the
      --  processor reading data in memory mode, which will cause the SPIFI
      --  hardware to terminate the command by driving the CS pin high and
      --  negating the CMD bit in the Status register. (This allows the flash
      --  memory to enter a lower-power state.) If the processor reads data
      --  from the flash region after a time-out, the command in the Memory
      --  Command Register is issued again.
      TIMEOUT        : CTRL_TIMEOUT_Field := 16#FFFF#;
      --  This field controls the minimum CS high time, expressed as a number
      --  of serial clock periods minus one.
      CSHIGH         : CTRL_CSHIGH_Field := 16#F#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  This bit allows conditioning of memory mode prefetches based on the
      --  AHB HPROT (instruction/data) access information. A 1 in this register
      --  means that the SPIFI will not attempt a speculative prefetch when it
      --  encounters data accesses.
      D_PRFTCH_DIS   : Boolean := False;
      --  If this bit is 1 when a command ends, the SPIFI will assert its
      --  interrupt request output. See INTRQ in the status register for
      --  further details.
      INTEN          : Boolean := False;
      --  SPI Mode 3 select.
      MODE3          : CTRL_MODE3_Field := NRF_SVD.SPIFI.Sck_Low;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Cache prefetching enable. The SPIFI includes an internal cache. A 1
      --  in this bit disables prefetching of cache lines.
      PRFTCH_DIS     : CTRL_PRFTCH_DIS_Field := NRF_SVD.SPIFI.Enable;
      --  Select dual protocol.
      DUAL           : CTRL_DUAL_Field := NRF_SVD.SPIFI.Quad;
      --  Select active clock edge for input data.
      RFCLK          : CTRL_RFCLK_Field := NRF_SVD.SPIFI.Rising_Edge;
      --  Feedback clock select.
      FBCLK          : CTRL_FBCLK_Field := NRF_SVD.SPIFI.Feedback_Clock;
      --  A 1 in this bit enables the DMA Request output from the SPIFI. Set
      --  this bit only when a DMA channel is used to transfer data in
      --  peripheral mode. Do not set this bit when a DMA channel is used for
      --  memory-to-memory transfers from the SPIFI memory area. DMAEN should
      --  only be used in Command mode.
      DMAEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      TIMEOUT        at 0 range 0 .. 15;
      CSHIGH         at 0 range 16 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      D_PRFTCH_DIS   at 0 range 21 .. 21;
      INTEN          at 0 range 22 .. 22;
      MODE3          at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      PRFTCH_DIS     at 0 range 27 .. 27;
      DUAL           at 0 range 28 .. 28;
      RFCLK          at 0 range 29 .. 29;
      FBCLK          at 0 range 30 .. 30;
      DMAEN          at 0 range 31 .. 31;
   end record;

   subtype CMD_DATALEN_Field is HAL.UInt14;

   --  If the DATALEN field is not zero, this bit controls the direction of the
   --  data:
   type CMD_DOUT_Field is
     (
      --  Input from serial flash.
      Input,
      --  Output to serial flash.
      Output)
     with Size => 1;
   for CMD_DOUT_Field use
     (Input => 0,
      Output => 1);

   subtype CMD_INTLEN_Field is HAL.UInt3;

   --  This field controls how the fields of the command are sent.
   type CMD_FIELDFORM_Field is
     (
      --  All serial. All fields of the command are serial.
      All_Serial,
      --  Quad/dual data. Data field is quad/dual, other fields are serial.
      Quad_Dual_Data,
      --  Serial opcode. Opcode field is serial. Other fields are quad/dual.
      Serial_Opcode,
      --  All quad/dual. All fields of the command are in quad/dual format.
      All_Quad_Dual)
     with Size => 2;
   for CMD_FIELDFORM_Field use
     (All_Serial => 0,
      Quad_Dual_Data => 1,
      Serial_Opcode => 2,
      All_Quad_Dual => 3);

   --  This field controls the opcode and address fields.
   type CMD_FRAMEFORM_Field is
     (
      --  Reset value for the field
      Cmd_Frameform_Field_Reset,
      --  Opcode. Opcode only, no address.
      Opcode,
      --  Opcode one byte. Opcode, least significant byte of address.
      Opcode_1_Byte,
      --  Opcode two bytes. Opcode, two least significant bytes of address.
      Opcode_2_Bytes,
      --  Opcode three bytes. Opcode, three least significant bytes of address.
      Opcode_3_Bytes,
      --  Opcode four bytes. Opcode, 4 bytes of address.
      Opcode_4_Bytes,
      --  No opcode three bytes. No opcode, 3 least significant bytes of
      --  address.
      No_Opcode_3_Bytes,
      --  No opcode four bytes. No opcode, 4 bytes of address.
      No_Opcode_4_Bytes)
     with Size => 3;
   for CMD_FRAMEFORM_Field use
     (Cmd_Frameform_Field_Reset => 0,
      Opcode => 1,
      Opcode_1_Byte => 2,
      Opcode_2_Bytes => 3,
      Opcode_3_Bytes => 4,
      Opcode_4_Bytes => 5,
      No_Opcode_3_Bytes => 6,
      No_Opcode_4_Bytes => 7);

   subtype CMD_OPCODE_Field is HAL.UInt8;

   --  SPIFI command register
   type CMD_Register is record
      --  Except when the POLL bit in this register is 1, this field controls
      --  how many data bytes are in the command. 0 indicates that the command
      --  does not contain a data field.
      DATALEN   : CMD_DATALEN_Field := 16#0#;
      --  This bit should be written as 1 only with an opcode that a) contains
      --  an input data field, and b) causes the serial flash device to return
      --  byte status repetitively (e.g., a Read Status command). When this bit
      --  is 1, the SPIFI hardware continues to read bytes until the test
      --  specified by the DATALEN field is met. The hardware tests the bit in
      --  each status byte selected by DATALEN bits 2:0, until a bit is found
      --  that is equal to DATALEN bit 3. When the test succeeds, the SPIFI
      --  captures the byte that meets this test so that it can be read from
      --  the Data Register, and terminates the command by raising CS. The
      --  end-of-command interrupt can be enabled to inform software when this
      --  occurs
      POLL      : Boolean := False;
      --  If the DATALEN field is not zero, this bit controls the direction of
      --  the data:
      DOUT      : CMD_DOUT_Field := NRF_SVD.SPIFI.Input;
      --  This field controls how many intermediate bytes precede the data.
      --  (Each such byte may require 8 or 2 SCK cycles, depending on whether
      --  the intermediate field is in serial, 2-bit, or 4-bit format.)
      --  Intermediate bytes are output by the SPIFI, and include post-address
      --  control information, dummy and delay bytes. See the description of
      --  the Intermediate Data register for the contents of such bytes.
      INTLEN    : CMD_INTLEN_Field := 16#0#;
      --  This field controls how the fields of the command are sent.
      FIELDFORM : CMD_FIELDFORM_Field := NRF_SVD.SPIFI.All_Serial;
      --  This field controls the opcode and address fields.
      FRAMEFORM : CMD_FRAMEFORM_Field := Cmd_Frameform_Field_Reset;
      --  The opcode of the command (not used for some FRAMEFORM values).
      OPCODE    : CMD_OPCODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      DATALEN   at 0 range 0 .. 13;
      POLL      at 0 range 14 .. 14;
      DOUT      at 0 range 15 .. 15;
      INTLEN    at 0 range 16 .. 18;
      FIELDFORM at 0 range 19 .. 20;
      FRAMEFORM at 0 range 21 .. 23;
      OPCODE    at 0 range 24 .. 31;
   end record;

   subtype MCMD_INTLEN_Field is HAL.UInt3;

   --  This field controls how the fields of the command are sent.
   type MCMD_FIELDFORM_Field is
     (
      --  All serial. All fields of the command are serial.
      All_Serial,
      --  Quad/dual data. Data field is quad/dual, other fields are serial.
      Quad_Dual_Data,
      --  Serial opcode. Opcode field is serial. Other fields are quad/dual.
      Serial_Opcode,
      --  All quad/dual. All fields of the command are in quad/dual format.
      All_Quad_Dual)
     with Size => 2;
   for MCMD_FIELDFORM_Field use
     (All_Serial => 0,
      Quad_Dual_Data => 1,
      Serial_Opcode => 2,
      All_Quad_Dual => 3);

   --  This field controls the opcode and address fields.
   type MCMD_FRAMEFORM_Field is
     (
      --  Reset value for the field
      Mcmd_Frameform_Field_Reset,
      --  Opcode. Opcode only, no address.
      Opcode,
      --  Opcode one byte. Opcode, least-significant byte of address.
      Opcode_1_Byte,
      --  Opcode two bytes. Opcode, 2 least-significant bytes of address.
      Opcode_2_Bytes,
      --  Opcode three bytes. Opcode, 3 least-significant bytes of address.
      Opcode_3_Bytes,
      --  Opcode four bytes. Opcode, 4 bytes of address.
      Opcode_4_Bytes,
      --  No opcode three bytes. No opcode, 3 least-significant bytes of
      --  address.
      No_Opcode_3_Bytes,
      --  No opcode, 4 bytes of address.
      No_Opcode_4_Bytes)
     with Size => 3;
   for MCMD_FRAMEFORM_Field use
     (Mcmd_Frameform_Field_Reset => 0,
      Opcode => 1,
      Opcode_1_Byte => 2,
      Opcode_2_Bytes => 3,
      Opcode_3_Bytes => 4,
      Opcode_4_Bytes => 5,
      No_Opcode_3_Bytes => 6,
      No_Opcode_4_Bytes => 7);

   subtype MCMD_OPCODE_Field is HAL.UInt8;

   --  SPIFI memory command register
   type MCMD_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  This bit should be written as 0.
      POLL          : Boolean := False;
      --  This bit should be written as 0.
      DOUT          : Boolean := False;
      --  This field controls how many intermediate bytes precede the data.
      --  (Each such byte may require 8 or 2 SCK cycles, depending on whether
      --  the intermediate field is in serial, 2-bit, or 4-bit format.)
      --  Intermediate bytes are output by the SPIFI, and include post-address
      --  control information, dummy and delay bytes. See the description of
      --  the Intermediate Data register for the contents of such bytes.
      INTLEN        : MCMD_INTLEN_Field := 16#0#;
      --  This field controls how the fields of the command are sent.
      FIELDFORM     : MCMD_FIELDFORM_Field := NRF_SVD.SPIFI.All_Serial;
      --  This field controls the opcode and address fields.
      FRAMEFORM     : MCMD_FRAMEFORM_Field := Mcmd_Frameform_Field_Reset;
      --  The opcode of the command (not used for some FRAMEFORM values).
      OPCODE        : MCMD_OPCODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCMD_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      POLL          at 0 range 14 .. 14;
      DOUT          at 0 range 15 .. 15;
      INTLEN        at 0 range 16 .. 18;
      FIELDFORM     at 0 range 19 .. 20;
      FRAMEFORM     at 0 range 21 .. 23;
      OPCODE        at 0 range 24 .. 31;
   end record;

   --  SPIFI status register
   type STAT_Register is record
      --  This bit is set when software successfully writes the Memory Command
      --  register, and is cleared by Reset or by writing a 1 to the RESET bit
      --  in this register.
      MCINIT        : Boolean := False;
      --  This bit is 1 when the Command register is written. It is cleared by
      --  a hardware reset, a write to the RESET bit in this register, or the
      --  deassertion of CS which indicates that the command has completed
      --  communication with the SPI Flash.
      CMD           : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Write a 1 to this bit to abort a current command or memory mode. This
      --  bit is cleared when the hardware is ready for a new command to be
      --  written to the Command register.
      RESET         : Boolean := False;
      --  This bit reflects the SPIFI interrupt request. Write a 1 to this bit
      --  to clear it. This bit is set when a CMD was previously 1 and has been
      --  cleared due to the deassertion of CS.
      INTRQ         : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#80000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      MCINIT        at 0 range 0 .. 0;
      CMD           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      RESET         at 0 range 4 .. 4;
      INTRQ         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x SPI Flash Interface (SPIFI)
   type SPIFI0_Peripheral is record
      --  SPIFI control register
      CTRL   : aliased CTRL_Register;
      --  SPIFI command register
      CMD    : aliased CMD_Register;
      --  SPIFI address register
      ADDR   : aliased HAL.UInt32;
      --  SPIFI intermediate data register
      IDATA  : aliased HAL.UInt32;
      --  SPIFI limit register
      CLIMIT : aliased HAL.UInt32;
      --  SPIFI data register
      DATA   : aliased HAL.UInt32;
      --  SPIFI memory command register
      MCMD   : aliased MCMD_Register;
      --  SPIFI status register
      STAT   : aliased STAT_Register;
   end record
     with Volatile;

   for SPIFI0_Peripheral use record
      CTRL   at 16#0# range 0 .. 31;
      CMD    at 16#4# range 0 .. 31;
      ADDR   at 16#8# range 0 .. 31;
      IDATA  at 16#C# range 0 .. 31;
      CLIMIT at 16#10# range 0 .. 31;
      DATA   at 16#14# range 0 .. 31;
      MCMD   at 16#18# range 0 .. 31;
      STAT   at 16#1C# range 0 .. 31;
   end record;

   --  LPC5411x SPI Flash Interface (SPIFI)
   SPIFI0_Periph : aliased SPIFI0_Peripheral
     with Import, Address => System'To_Address (16#40080000#);

end NRF_SVD.SPIFI;
