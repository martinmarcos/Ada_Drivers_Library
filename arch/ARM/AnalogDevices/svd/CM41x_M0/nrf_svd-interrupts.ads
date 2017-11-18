--

--  This spec has been automatically generated from CM41x_M0.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Oscillator Watchdog Interrupt
   SHARED_IRQ0               : constant := 0;

   --  Bus Timeout
   SHARED_IRQ3               : constant := 3;

   --  Bus Timeout
   SHARED_IRQ5               : constant := 5;

   --  Data parity error
   SHARED_IRQ6               : constant := 6;

   --  Event
   SHARED_IRQ7               : constant := 7;

   --  Error
   SHARED_IRQ8               : constant := 8;

   --  Expiration
   WDOG0_EXP                 : constant := 9;

   --  Event
   SHARED_IRQ11              : constant := 11;

   --  Error interrupt
   SHARED_IRQ12              : constant := 12;

   --  ADC Error
   ADCC0_ERR                 : constant := 13;

   --  Pin Interrupt Block
   PINT0_BLOCK               : constant := 14;

   --  Status
   SHARED_IRQ15              : constant := 15;

   --  CPT 0 Measure Interrupt
   SHARED_IRQ16              : constant := 16;

   --  Done interrupt
   SHARED_IRQ17              : constant := 17;

   --  Done interrupt
   SHARED_IRQ18              : constant := 18;

   --  Done interrupt
   SHARED_IRQ19              : constant := 19;

   --  Interrupt request 1
   TRU0_INT1                 : constant := 20;

   --  Interrupt request 4
   TRU1_INT4                 : constant := 21;

   --  FFT done
   SHARED_IRQ22              : constant := 22;

   --  Timer 0 Event Complete
   ADCC0_TMR0_EVT            : constant := 23;

   --  Timer 1 Event Complete
   ADCC0_TMR1_EVT            : constant := 24;

   --  Error
   SHARED_IRQ25              : constant := 25;

   --  Status
   UART0_STAT                : constant := 26;

   --  Status
   HAE0_STAT                 : constant := 27;

   --  Receive
   SHARED_IRQ28              : constant := 28;

   --  Data Interrupt
   TWI0_DATA                 : constant := 29;

end NRF_SVD.Interrupts;
