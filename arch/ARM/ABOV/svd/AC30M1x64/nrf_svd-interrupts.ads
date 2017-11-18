--

--  This spec has been automatically generated from AC30M1x64.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   LVDFAIL               : constant := 0;
   SYSCLKFAIL            : constant := 1;
   MOSCFAIL              : constant := 2;
   SOSCFAIL              : constant := 3;
   WDT                   : constant := 4;
   TIMER0                : constant := 5;
   TIMER1                : constant := 6;
   TIMER2                : constant := 7;
   TIMER3                : constant := 8;
   FRT                   : constant := 9;
   GPIOAE                : constant := 10;
   GPIOAO                : constant := 11;
   GPIOBE                : constant := 12;
   GPIOBO                : constant := 13;
   GPIOCE                : constant := 14;
   GPIOCO                : constant := 15;
   GPIODE                : constant := 16;
   GPIODO                : constant := 17;
   MPWM                  : constant := 18;
   MPWMPROT              : constant := 19;
   MPWMOVV               : constant := 20;
   IIC                   : constant := 21;
   SPI                   : constant := 22;
   UART0                 : constant := 23;
   UART1                 : constant := 24;
   ADC                   : constant := 25;

end NRF_SVD.Interrupts;
