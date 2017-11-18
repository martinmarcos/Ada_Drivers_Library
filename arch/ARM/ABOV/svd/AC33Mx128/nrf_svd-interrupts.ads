--

--  This spec has been automatically generated from AC33Mx128.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   LVDDETECT            : constant := 0;
   SCLKFAIL             : constant := 1;
   XOSCFAIL             : constant := 2;
   WDT                  : constant := 3;
   TIMER0               : constant := 5;
   TIMER1               : constant := 6;
   TIMER2               : constant := 7;
   TIMER3               : constant := 8;
   TIMER8               : constant := 13;
   TIMER9               : constant := 14;
   GPIOAE               : constant := 16;
   GPIOAO               : constant := 17;
   GPIOBE               : constant := 18;
   GPIOBO               : constant := 19;
   GPIOCE               : constant := 20;
   GPIOCO               : constant := 21;
   GPIODE               : constant := 22;
   GPIODO               : constant := 23;
   MPWM0                : constant := 24;
   MPWM0PROT            : constant := 25;
   MPWM0OVV             : constant := 26;
   MPWM1                : constant := 27;
   MPWM1PROT            : constant := 28;
   MPWM1OVV             : constant := 29;
   SPI0                 : constant := 32;
   SPI1                 : constant := 33;
   IIC0                 : constant := 36;
   IIC1                 : constant := 37;
   UART0                : constant := 38;
   UART1                : constant := 39;
   UART2                : constant := 40;
   UART3                : constant := 41;
   ADC0                 : constant := 43;
   ADC1                 : constant := 44;
   ADC2                 : constant := 45;
   COMP0                : constant := 46;
   COMP1                : constant := 47;
   COMP2                : constant := 48;
   COMP3                : constant := 49;

end NRF_SVD.Interrupts;
