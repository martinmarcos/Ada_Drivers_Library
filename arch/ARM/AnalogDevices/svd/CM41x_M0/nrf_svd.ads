--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  ARM Cortex-CM0 Microcontroller based device
package NRF_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   SYSBLK1_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   PADS1_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   EMUID0_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   PINT0_Base : constant System.Address :=
     System'To_Address (16#41002000#);
   PINT1_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   PINT2_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   PINT3_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   PINT4_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   PINT5_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   PORTB_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   PORTC_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   PORTD_Base : constant System.Address :=
     System'To_Address (16#4000A000#);
   PORTE_Base : constant System.Address :=
     System'To_Address (16#4000B000#);
   PORTF_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   LBA0_Base : constant System.Address :=
     System'To_Address (16#4000F000#);
   SEC1_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   WDOG0_Base : constant System.Address :=
     System'To_Address (16#41005000#);
   WDOG1_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   RCU0_Base : constant System.Address :=
     System'To_Address (16#40012000#);
   DPM0_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   CGU0_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   OCU0_Base : constant System.Address :=
     System'To_Address (16#40015000#);
   TAPC_Base : constant System.Address :=
     System'To_Address (16#40017000#);
   TRU1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   TIMER0_Base : constant System.Address :=
     System'To_Address (16#41007000#);
   TIMER1_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   CNT0_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   TWI0_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   CAN0_Base : constant System.Address :=
     System'To_Address (16#41008200#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40024200#);
   CPTMR0_Base : constant System.Address :=
     System'To_Address (16#40025000#);
   PWM0_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   PWM1_Base : constant System.Address :=
     System'To_Address (16#40029000#);
   PWM2_Base : constant System.Address :=
     System'To_Address (16#4002A000#);
   TTU0_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   SMC0_Base : constant System.Address :=
     System'To_Address (16#4002F000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#41009000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   SPORT0_Base : constant System.Address :=
     System'To_Address (16#40042000#);
   UART0_Base : constant System.Address :=
     System'To_Address (16#4100A000#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   UART2_Base : constant System.Address :=
     System'To_Address (16#40045000#);
   UART3_Base : constant System.Address :=
     System'To_Address (16#40046000#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40047000#);
   FFTB0_Base : constant System.Address :=
     System'To_Address (16#40048000#);
   SINC0_Base : constant System.Address :=
     System'To_Address (16#40049000#);
   ADCC0_Base : constant System.Address :=
     System'To_Address (16#4100B000#);
   ADCC1_Base : constant System.Address :=
     System'To_Address (16#4004A000#);
   DACC0_Base : constant System.Address :=
     System'To_Address (16#4004B000#);
   CRC0_Base : constant System.Address :=
     System'To_Address (16#4004C000#);
   HAE0_Base : constant System.Address :=
     System'To_Address (16#40050000#);
   DMA0_Base : constant System.Address :=
     System'To_Address (16#4100C000#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#4100D000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#4100E000#);
   DMA3_Base : constant System.Address :=
     System'To_Address (16#4100F000#);
   DMA4_Base : constant System.Address :=
     System'To_Address (16#40060000#);
   DMA5_Base : constant System.Address :=
     System'To_Address (16#40061000#);
   DMA6_Base : constant System.Address :=
     System'To_Address (16#40062000#);
   DMA7_Base : constant System.Address :=
     System'To_Address (16#40063000#);
   DMA8_Base : constant System.Address :=
     System'To_Address (16#40064000#);
   DMA9_Base : constant System.Address :=
     System'To_Address (16#40065000#);
   DMA10_Base : constant System.Address :=
     System'To_Address (16#40066000#);
   DMA11_Base : constant System.Address :=
     System'To_Address (16#40067000#);
   DMA12_Base : constant System.Address :=
     System'To_Address (16#40068000#);
   DMA13_Base : constant System.Address :=
     System'To_Address (16#40069000#);
   MBOX0_PORT0_Base : constant System.Address :=
     System'To_Address (16#400D0000#);
   MBOX0_PORT1_Base : constant System.Address :=
     System'To_Address (16#400D1000#);
   SMPU1_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   SMPU2_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   SWU0_Base : constant System.Address :=
     System'To_Address (16#410F0000#);
   SWU1_Base : constant System.Address :=
     System'To_Address (16#410F1000#);
   SWU2_Base : constant System.Address :=
     System'To_Address (16#400F0000#);
   SWU3_Base : constant System.Address :=
     System'To_Address (16#400F1000#);
   SWU4_Base : constant System.Address :=
     System'To_Address (16#400F2000#);
   SWU5_Base : constant System.Address :=
     System'To_Address (16#400F3000#);
   SWU6_Base : constant System.Address :=
     System'To_Address (16#400F4000#);
   SPU1_Base : constant System.Address :=
     System'To_Address (16#400F8000#);
   SYSBLK0_Base : constant System.Address :=
     System'To_Address (16#41000000#);
   PADS0_Base : constant System.Address :=
     System'To_Address (16#41001000#);
   PORTA_Base : constant System.Address :=
     System'To_Address (16#41003000#);
   SEC0_Base : constant System.Address :=
     System'To_Address (16#41004000#);
   TRU0_Base : constant System.Address :=
     System'To_Address (16#41006000#);
   SMPU0_Base : constant System.Address :=
     System'To_Address (16#410E0000#);
   SPU0_Base : constant System.Address :=
     System'To_Address (16#410F8000#);
   DWT1_Base : constant System.Address :=
     System'To_Address (16#E0001000#);
   BKPT1_Base : constant System.Address :=
     System'To_Address (16#E0002000#);
   SCS1_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   SDCTRL_Base : constant System.Address :=
     System'To_Address (16#E000ED00#);

end NRF_SVD;
