--

--  This spec has been automatically generated from apollo1.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  I2C/SPI Slave
package NRF_SVD.IOSLAVE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FIFOPTR_FIFOPTR_Field is HAL.UInt8;
   subtype FIFOPTR_FIFOSIZ_Field is HAL.UInt8;

   --  Current FIFO Pointer
   type FIFOPTR_Register is record
      --  Current FIFO pointer.
      FIFOPTR        : FIFOPTR_FIFOPTR_Field := 16#0#;
      --  The number of bytes currently in the hardware FIFO.
      FIFOSIZ        : FIFOPTR_FIFOSIZ_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOPTR_Register use record
      FIFOPTR        at 0 range 0 .. 7;
      FIFOSIZ        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FIFOCFG_FIFOBASE_Field is HAL.UInt5;
   subtype FIFOCFG_FIFOMAX_Field is HAL.UInt6;
   subtype FIFOCFG_ROBASE_Field is HAL.UInt6;

   --  FIFO Configuration
   type FIFOCFG_Register is record
      --  These bits hold the base address of the I/O FIFO in 8 byte segments.
      --  The IO Slave FIFO is situated in LRAM at (FIFOBASE*8) to
      --  (FIFOMAX*8-1).
      FIFOBASE       : FIFOCFG_FIFOBASE_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  These bits hold the maximum FIFO address in 8 byte segments. It is
      --  also the beginning of the RAM area of the LRAM. Note that no RAM area
      --  is configured if FIFOMAX is set to 0x1F.
      FIFOMAX        : FIFOCFG_FIFOMAX_Field := 16#0#;
      --  unspecified
      Reserved_14_23 : HAL.UInt10 := 16#0#;
      --  Defines the read-only area. The IO Slave read-only area is situated
      --  in LRAM at (ROBASE*8) to (FIFOOBASE*8-1)
      ROBASE         : FIFOCFG_ROBASE_Field := 16#20#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCFG_Register use record
      FIFOBASE       at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FIFOMAX        at 0 range 8 .. 13;
      Reserved_14_23 at 0 range 14 .. 23;
      ROBASE         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FIFOTHR_FIFOTHR_Field is HAL.UInt8;

   --  FIFO Threshold Configuration
   type FIFOTHR_Register is record
      --  FIFO size interrupt threshold.
      FIFOTHR       : FIFOTHR_FIFOTHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOTHR_Register use record
      FIFOTHR       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FIFO Update Status
   type FUPD_Register is record
      --  This bit indicates that a FIFO update is underway.
      FIFOUPD       : Boolean := False;
      --  This bitfield indicates an IO read is active.
      IOREAD        : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUPD_Register use record
      FIFOUPD       at 0 range 0 .. 0;
      IOREAD        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FIFOCTR_FIFOCTR_Field is HAL.UInt10;

   --  Overall FIFO Counter
   type FIFOCTR_Register is record
      --  Virtual FIFO byte count
      FIFOCTR        : FIFOCTR_FIFOCTR_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCTR_Register use record
      FIFOCTR        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype FIFOINC_FIFOINC_Field is HAL.UInt10;

   --  Overall FIFO Counter Increment
   type FIFOINC_Register is record
      --  Increment the Overall FIFO Counter by this value on a write
      FIFOINC        : FIFOINC_FIFOINC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOINC_Register use record
      FIFOINC        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  This bit selects the I/O interface.
   type CFG_IFCSEL_Field is
     (
      --  Selects I2C interface for the IO Slave. value.
      I2C,
      --  Selects SPI interface for the IO Slave. value.
      Spi)
     with Size => 1;
   for CFG_IFCSEL_Field use
     (I2C => 0,
      Spi => 1);

   --  This bit selects SPI polarity.
   type CFG_SPOL_Field is
     (
      --  Polarity 0, handles SPI modes 0 and 3. value.
      Spi_Modes_0_3,
      --  Polarity 1, handles SPI modes 1 and 2. value.
      Spi_Modes_1_2)
     with Size => 1;
   for CFG_SPOL_Field use
     (Spi_Modes_0_3 => 0,
      Spi_Modes_1_2 => 1);

   --  This bit selects the transfer bit ordering.
   type CFG_LSB_Field is
     (
      --  Data is assumed to be sent and received with MSB first. value.
      Msb_First,
      --  Data is assumed to be sent and received with LSB first. value.
      Lsb_First)
     with Size => 1;
   for CFG_LSB_Field use
     (Msb_First => 0,
      Lsb_First => 1);

   --  This bit holds the cycle to initiate an I/O RAM read.
   type CFG_STARTRD_Field is
     (
      --  Initiate I/O RAM read late in each transferred byte. value.
      Late,
      --  Initiate I/O RAM read early in each transferred byte. value.
      Early)
     with Size => 1;
   for CFG_STARTRD_Field use
     (Late => 0,
      Early => 1);

   subtype CFG_I2CADDR_Field is HAL.UInt12;

   --  IOSLAVE interface enable.
   type CFG_IFCEN_Field is
     (
      --  Disable the IOSLAVE value.
      Dis,
      --  Enable the IOSLAVE value.
      En)
     with Size => 1;
   for CFG_IFCEN_Field use
     (Dis => 0,
      En => 1);

   --  I/O Slave Configuration
   type CFG_Register is record
      --  This bit selects the I/O interface.
      IFCSEL         : CFG_IFCSEL_Field := NRF_SVD.IOSLAVE.I2C;
      --  This bit selects SPI polarity.
      SPOL           : CFG_SPOL_Field := NRF_SVD.IOSLAVE.Spi_Modes_0_3;
      --  This bit selects the transfer bit ordering.
      LSB            : CFG_LSB_Field := NRF_SVD.IOSLAVE.Msb_First;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  This bit holds the cycle to initiate an I/O RAM read.
      STARTRD        : CFG_STARTRD_Field := NRF_SVD.IOSLAVE.Late;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  7-bit or 10-bit I2C device address.
      I2CADDR        : CFG_I2CADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  IOSLAVE interface enable.
      IFCEN          : CFG_IFCEN_Field := NRF_SVD.IOSLAVE.Dis;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      IFCSEL         at 0 range 0 .. 0;
      SPOL           at 0 range 1 .. 1;
      LSB            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      STARTRD        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      I2CADDR        at 0 range 8 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      IFCEN          at 0 range 31 .. 31;
   end record;

   subtype PRENC_PRENC_Field is HAL.UInt5;

   --  I/O Slave Interrupt Priority Encode
   type PRENC_Register is record
      --  These bits hold the priority encode of the REGACC interrupts.
      PRENC         : PRENC_PRENC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRENC_Register use record
      PRENC         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IOINTCTL_IOINTEN_Field is HAL.UInt8;
   subtype IOINTCTL_IOINT_Field is HAL.UInt8;
   subtype IOINTCTL_IOINTSET_Field is HAL.UInt8;

   --  I/O Interrupt Control
   type IOINTCTL_Register is record
      --  These bits setread the IOINT interrupt enables.
      IOINTEN        : IOINTCTL_IOINTEN_Field := 16#0#;
      --  These bits read the IOINT interrupts.
      IOINT          : IOINTCTL_IOINT_Field := 16#0#;
      --  This bit clears all of the IOINT interrupts when written with a 1.
      IOINTCLR       : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  These bits set the IOINT interrupts when written with a 1.
      IOINTSET       : IOINTCTL_IOINTSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOINTCTL_Register use record
      IOINTEN        at 0 range 0 .. 7;
      IOINT          at 0 range 8 .. 15;
      IOINTCLR       at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      IOINTSET       at 0 range 24 .. 31;
   end record;

   subtype GENADD_GADATA_Field is HAL.UInt8;

   --  General Address Data
   type GENADD_Register is record
      --  The data supplied on the last General Address reference.
      GADATA        : GENADD_GADATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GENADD_Register use record
      GADATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  IO Slave Interrupts: Enable
   type INTEN_Register is record
      --  FIFO Size interrupt.
      FSIZE         : Boolean := False;
      --  FIFO Overflow interrupt.
      FOVFL         : Boolean := False;
      --  FIFO Underflow interrupt.
      FUNDFL        : Boolean := False;
      --  FIFO Read Error interrupt.
      FRDERR        : Boolean := False;
      --  I2C General Address interrupt.
      GENAD         : Boolean := False;
      --  I2C Interrupt Write interrupt.
      IOINTW        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      FSIZE         at 0 range 0 .. 0;
      FOVFL         at 0 range 1 .. 1;
      FUNDFL        at 0 range 2 .. 2;
      FRDERR        at 0 range 3 .. 3;
      GENAD         at 0 range 4 .. 4;
      IOINTW        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  IO Slave Interrupts: Status
   type INTSTAT_Register is record
      --  FIFO Size interrupt.
      FSIZE         : Boolean := False;
      --  FIFO Overflow interrupt.
      FOVFL         : Boolean := False;
      --  FIFO Underflow interrupt.
      FUNDFL        : Boolean := False;
      --  FIFO Read Error interrupt.
      FRDERR        : Boolean := False;
      --  I2C General Address interrupt.
      GENAD         : Boolean := False;
      --  I2C Interrupt Write interrupt.
      IOINTW        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSTAT_Register use record
      FSIZE         at 0 range 0 .. 0;
      FOVFL         at 0 range 1 .. 1;
      FUNDFL        at 0 range 2 .. 2;
      FRDERR        at 0 range 3 .. 3;
      GENAD         at 0 range 4 .. 4;
      IOINTW        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  IO Slave Interrupts: Clear
   type INTCLR_Register is record
      --  FIFO Size interrupt.
      FSIZE         : Boolean := False;
      --  FIFO Overflow interrupt.
      FOVFL         : Boolean := False;
      --  FIFO Underflow interrupt.
      FUNDFL        : Boolean := False;
      --  FIFO Read Error interrupt.
      FRDERR        : Boolean := False;
      --  I2C General Address interrupt.
      GENAD         : Boolean := False;
      --  I2C Interrupt Write interrupt.
      IOINTW        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCLR_Register use record
      FSIZE         at 0 range 0 .. 0;
      FOVFL         at 0 range 1 .. 1;
      FUNDFL        at 0 range 2 .. 2;
      FRDERR        at 0 range 3 .. 3;
      GENAD         at 0 range 4 .. 4;
      IOINTW        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  IO Slave Interrupts: Set
   type INTSET_Register is record
      --  FIFO Size interrupt.
      FSIZE         : Boolean := False;
      --  FIFO Overflow interrupt.
      FOVFL         : Boolean := False;
      --  FIFO Underflow interrupt.
      FUNDFL        : Boolean := False;
      --  FIFO Read Error interrupt.
      FRDERR        : Boolean := False;
      --  I2C General Address interrupt.
      GENAD         : Boolean := False;
      --  I2C Interrupt Write interrupt.
      IOINTW        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTSET_Register use record
      FSIZE         at 0 range 0 .. 0;
      FOVFL         at 0 range 1 .. 1;
      FUNDFL        at 0 range 2 .. 2;
      FRDERR        at 0 range 3 .. 3;
      GENAD         at 0 range 4 .. 4;
      IOINTW        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C/SPI Slave
   type IOSLAVE_Peripheral is record
      --  Current FIFO Pointer
      FIFOPTR       : aliased FIFOPTR_Register;
      --  FIFO Configuration
      FIFOCFG       : aliased FIFOCFG_Register;
      --  FIFO Threshold Configuration
      FIFOTHR       : aliased FIFOTHR_Register;
      --  FIFO Update Status
      FUPD          : aliased FUPD_Register;
      --  Overall FIFO Counter
      FIFOCTR       : aliased FIFOCTR_Register;
      --  Overall FIFO Counter Increment
      FIFOINC       : aliased FIFOINC_Register;
      --  I/O Slave Configuration
      CFG           : aliased CFG_Register;
      --  I/O Slave Interrupt Priority Encode
      PRENC         : aliased PRENC_Register;
      --  I/O Interrupt Control
      IOINTCTL      : aliased IOINTCTL_Register;
      --  General Address Data
      GENADD        : aliased GENADD_Register;
      --  IO Slave Interrupts: Enable
      INTEN         : aliased INTEN_Register;
      --  IO Slave Interrupts: Status
      INTSTAT       : aliased INTSTAT_Register;
      --  IO Slave Interrupts: Clear
      INTCLR        : aliased INTCLR_Register;
      --  IO Slave Interrupts: Set
      INTSET        : aliased INTSET_Register;
      --  Register Access Interrupts: Enable
      REGACCINTEN   : aliased HAL.UInt32;
      --  Register Access Interrupts: Status
      REGACCINTSTAT : aliased HAL.UInt32;
      --  Register Access Interrupts: Clear
      REGACCINTCLR  : aliased HAL.UInt32;
      --  Register Access Interrupts: Set
      REGACCINTSET  : aliased HAL.UInt32;
   end record
     with Volatile;

   for IOSLAVE_Peripheral use record
      FIFOPTR       at 16#100# range 0 .. 31;
      FIFOCFG       at 16#104# range 0 .. 31;
      FIFOTHR       at 16#108# range 0 .. 31;
      FUPD          at 16#10C# range 0 .. 31;
      FIFOCTR       at 16#110# range 0 .. 31;
      FIFOINC       at 16#114# range 0 .. 31;
      CFG           at 16#118# range 0 .. 31;
      PRENC         at 16#11C# range 0 .. 31;
      IOINTCTL      at 16#120# range 0 .. 31;
      GENADD        at 16#124# range 0 .. 31;
      INTEN         at 16#200# range 0 .. 31;
      INTSTAT       at 16#204# range 0 .. 31;
      INTCLR        at 16#208# range 0 .. 31;
      INTSET        at 16#20C# range 0 .. 31;
      REGACCINTEN   at 16#210# range 0 .. 31;
      REGACCINTSTAT at 16#214# range 0 .. 31;
      REGACCINTCLR  at 16#218# range 0 .. 31;
      REGACCINTSET  at 16#21C# range 0 .. 31;
   end record;

   --  I2C/SPI Slave
   IOSLAVE_Periph : aliased IOSLAVE_Peripheral
     with Import, Address => IOSLAVE_Base;

end NRF_SVD.IOSLAVE;
