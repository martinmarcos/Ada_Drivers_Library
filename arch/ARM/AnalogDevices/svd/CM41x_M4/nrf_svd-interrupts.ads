--

--  This spec has been automatically generated from CM41x_M4.svd

--  Definition of the device's interrupts
package NRF_SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   --  Oscillator Watchdog Interrupt
   CGU0_OSCW_INT                   : constant := 3;

   --  Freq. out-of-range, or dead clock, or counter overflow detected
   OCU0_ERR                        : constant := 4;

   --  Boot Code CRC Error
   M4P_BCODE_ERR                   : constant := 5;

   --  Lockup Error (Fault only; not an interrupt)
   M4P_LOCKUP                      : constant := 9;

   --  Bus Fault
   M4P_BUS_FAULT                   : constant := 10;

   --  Timeout Interrupt
   SPU1_TIMEOUT                    : constant := 12;

   --  Bus Timeout
   SYSBLK1_BUS_TIMEOUT             : constant := 13;

   --  SRAM Core ECC Error
   M4P_CORE_SRAM_EERR              : constant := 14;

   --  SRAM DMA ECC Error
   M4P_DMA_SRAM_EERR               : constant := 15;

   --  Flash Core ECC Error
   FLC0_CORE_FLASH_EERR            : constant := 16;

   --  Flash DMA ECC Error
   FLC0_DMA_FLASH_EERR             : constant := 17;

   --  Flash Event
   FLC0_FLASH_EVT                  : constant := 18;

   --  Setup parity error
   FFTB0_SPERR                     : constant := 22;

   --  Data parity error
   FFTB0_DPERR                     : constant := 23;

   --  Parity Error
   HAE0_PERR                       : constant := 24;

   --  Timeout Interrupt
   SPU0_TIMEOUT                    : constant := 27;

   --  Bus Timeout
   SYSBLK0_BUS_TIMEOUT             : constant := 28;

   --  Posted Write Error
   SYSBLK0_POSTWR_ERR              : constant := 29;

   --  Event
   CGU0_EVT                        : constant := 30;

   --  Event
   DPM0_EVT                        : constant := 31;

   --  Error
   SEC1_ERR                        : constant := 32;

   --  Error
   SEC0_ERR                        : constant := 33;

   --  Expiration
   WDOG1_EXP                       : constant := 34;

   --  Expiration
   WDOG0_EXP                       : constant := 35;

   --  User Key Fail Interrupt
   TAPC_KEYFAIL                    : constant := 36;

   --  Trip
   PWM0_TRIP                       : constant := 39;

   --  Trip
   PWM1_TRIP                       : constant := 40;

   --  Trip
   PWM2_TRIP                       : constant := 41;

   --  Error Interrupt
   SMPU1_ERR                       : constant := 42;

   --  Error Interrupt
   SMPU2_ERR                       : constant := 43;

   --  Error Interrupt
   SMPU0_ERR                       : constant := 44;

   --  Interrupt
   SPU1_INT                        : constant := 45;

   --  Interrupt
   SPU0_INT                        : constant := 46;

   --  Event
   SWU2_EVT                        : constant := 47;

   --  Event
   SWU3_EVT                        : constant := 48;

   --  Event
   SWU4_EVT                        : constant := 49;

   --  Event
   SWU5_EVT                        : constant := 50;

   --  Event
   SWU6_EVT                        : constant := 51;

   --  Event
   SWU0_EVT                        : constant := 52;

   --  Event
   SWU1_EVT                        : constant := 53;

   --  CPT 0 Error Interrupt
   CPTMR0_CPT0_ERR                 : constant := 54;

   --  CPT 1 Error Interrupt
   CPTMR0_CPT1_ERR                 : constant := 55;

   --  CPT 2 Error Interrupt
   CPTMR0_CPT2_ERR                 : constant := 56;

   --  Error
   CRC0_ERR                        : constant := 57;

   --  Error
   SPI1_ERR                        : constant := 58;

   --  Error
   SPI0_ERR                        : constant := 59;

   --  Over limit error
   FFTB0_LIMERR                    : constant := 60;

   --  MATH unit Accumulate Interrupt Status
   MATH0_MSTAT                     : constant := 61;

   --  ADC Error
   ADCC1_ERR                       : constant := 62;

   --  DAC Error
   DACC0_ERR                       : constant := 63;

   --  ADC Error
   ADCC0_ERR                       : constant := 64;

   --  Error interrupt
   DMA4_ERR                        : constant := 65;

   --  Error interrupt
   DMA5_ERR                        : constant := 66;

   --  Error interrupt
   DMA6_ERR                        : constant := 67;

   --  Error interrupt
   DMA7_ERR                        : constant := 68;

   --  Error interrupt
   DMA8_ERR                        : constant := 69;

   --  Error interrupt
   DMA9_ERR                        : constant := 70;

   --  Error interrupt
   DMA10_ERR                       : constant := 71;

   --  Error interrupt
   DMA11_ERR                       : constant := 72;

   --  Error interrupt
   DMA12_ERR                       : constant := 73;

   --  Error interrupt
   DMA13_ERR                       : constant := 74;

   --  Error interrupt
   DMA0_ERR                        : constant := 75;

   --  Error interrupt
   DMA1_ERR                        : constant := 76;

   --  Error interrupt
   DMA2_ERR                        : constant := 77;

   --  Error interrupt
   DMA3_ERR                        : constant := 78;

   --  PWMTMR Grouped
   PWM0_SYNC                       : constant := 79;

   --  PWMTMR Grouped
   PWM1_SYNC                       : constant := 80;

   --  PWMTMR Grouped
   PWM2_SYNC                       : constant := 81;

   --  Pin Interrupt Block
   PINT1_BLOCK                     : constant := 82;

   --  Pin Interrupt Block
   PINT2_BLOCK                     : constant := 83;

   --  Pin Interrupt Block
   PINT3_BLOCK                     : constant := 84;

   --  Pin Interrupt Block
   PINT4_BLOCK                     : constant := 85;

   --  Pin Interrupt Block
   PINT5_BLOCK                     : constant := 86;

   --  Pin Interrupt Block
   PINT0_BLOCK                     : constant := 87;

   --  Timer 0
   TIMER1_TMR0                     : constant := 88;

   --  Timer 1
   TIMER1_TMR1                     : constant := 89;

   --  Timer 2
   TIMER1_TMR2                     : constant := 90;

   --  Timer 3
   TIMER1_TMR3                     : constant := 91;

   --  Timer 4
   TIMER1_TMR4                     : constant := 92;

   --  Timer 5
   TIMER1_TMR5                     : constant := 93;

   --  Timer 6
   TIMER1_TMR6                     : constant := 94;

   --  Timer 7
   TIMER1_TMR7                     : constant := 95;

   --  Timer 0
   TIMER0_TMR0                     : constant := 96;

   --  Timer 1
   TIMER0_TMR1                     : constant := 97;

   --  Timer 2
   TIMER0_TMR2                     : constant := 98;

   --  Timer 3
   TIMER0_TMR3                     : constant := 99;

   --  Timer 4
   TIMER0_TMR4                     : constant := 100;

   --  Timer 5
   TIMER0_TMR5                     : constant := 101;

   --  Timer 6
   TIMER0_TMR6                     : constant := 102;

   --  Timer 7
   TIMER0_TMR7                     : constant := 103;

   --  Status
   TIMER1_STAT                     : constant := 104;

   --  Status
   TIMER0_STAT                     : constant := 105;

   --  CPT 0 Measure Interrupt
   CPTMR0_CPT0_MEAS                : constant := 106;

   --  CPT 1 Measure Interrupt
   CPTMR0_CPT1_MEAS                : constant := 107;

   --  CPT 2 Measure Interrupt
   CPTMR0_CPT2_MEAS                : constant := 108;

   --  Done interrupt
   DMA4_INT                        : constant := 109;

   --  Done interrupt
   DMA5_INT                        : constant := 110;

   --  Done interrupt
   DMA6_INT                        : constant := 111;

   --  Done interrupt
   DMA7_INT                        : constant := 112;

   --  Done interrupt
   DMA8_INT                        : constant := 113;

   --  Done interrupt
   DMA9_INT                        : constant := 114;

   --  Done interrupt
   DMA10_INT                       : constant := 115;

   --  Done interrupt
   DMA11_INT                       : constant := 116;

   --  Done interrupt
   DMA12_INT                       : constant := 117;

   --  Done interrupt
   DMA13_INT                       : constant := 118;

   --  Done interrupt
   DMA0_INT                        : constant := 119;

   --  Done interrupt
   DMA1_INT                        : constant := 120;

   --  Done interrupt
   DMA2_INT                        : constant := 121;

   --  Done interrupt
   DMA3_INT                        : constant := 122;

   --  Interrupt request 0
   TRU1_INT0                       : constant := 123;

   --  Interrupt request 1
   TRU1_INT1                       : constant := 124;

   --  Interrupt request 2
   TRU1_INT2                       : constant := 125;

   --  Interrupt request 3
   TRU1_INT3                       : constant := 126;

   --  Interrupt request 0
   TRU0_INT0                       : constant := 127;

   --  FFT done
   FFTB0_DONE                      : constant := 128;

   --  Timer 0 Event Complete
   ADCC1_TMR0_EVT                  : constant := 129;

   --  Timer 1 Event Complete
   ADCC1_TMR1_EVT                  : constant := 130;

   --  Timer 0 Event Complete
   ADCC0_TMR0_EVT                  : constant := 131;

   --  Timer 1 Event Complete
   ADCC0_TMR1_EVT                  : constant := 132;

   --  DAC Interrupt 0
   DACC0_DAC0                      : constant := 133;

   --  DAC Interrupt 1
   DACC0_DAC1                      : constant := 134;

   --  Status
   SPI1_STAT                       : constant := 135;

   --  Status
   SPI0_STAT                       : constant := 136;

   --  Channel A Status
   SPORT0_A_STAT                   : constant := 137;

   --  Channel B Status
   SPORT0_B_STAT                   : constant := 138;

   --  Status
   UART1_STAT                      : constant := 139;

   --  Status
   UART2_STAT                      : constant := 140;

   --  Status
   UART3_STAT                      : constant := 141;

   --  Status
   UART4_STAT                      : constant := 142;

   --  Status
   UART0_STAT                      : constant := 143;

   --  Status
   HAE0_STAT                       : constant := 144;

   --  Data count expiration
   CRC0_DCNTEXP                    : constant := 145;

   --  Transmit
   CAN1_TX                         : constant := 146;

   --  Receive
   CAN1_RX                         : constant := 147;

   --  Status
   CAN1_STAT                       : constant := 148;

   --  Transmit
   CAN0_TX                         : constant := 149;

   --  Receive
   CAN0_RX                         : constant := 150;

   --  Status
   CAN0_STAT                       : constant := 151;

   --  Status
   CNT0_STAT                       : constant := 152;

   --  Status
   SINC0_STAT                      : constant := 153;

   --  Data Interrupt
   TWI0_DATA                       : constant := 154;

   --  Registered LBA outputs available to system
   LBA0_SYS_OUT0                   : constant := 157;

   --  Software Interrupt 0
   M4P_SOFT_INT0                   : constant := 158;

   --  Software Interrupt 1
   M4P_SOFT_INT1                   : constant := 159;

   --  Software Interrupt 2
   M4P_SOFT_INT2                   : constant := 160;

   --  Software Interrupt 3
   M4P_SOFT_INT3                   : constant := 161;

   --  Software Interrupt 4
   M4P_SOFT_INT4                   : constant := 162;

   --  Software Interrupt 5
   M4P_SOFT_INT5                   : constant := 163;

end NRF_SVD.Interrupts;
