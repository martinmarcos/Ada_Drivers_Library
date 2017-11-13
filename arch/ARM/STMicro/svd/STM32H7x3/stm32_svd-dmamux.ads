--  This spec has been automatically generated from STM32H7x3.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DMAMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMAMUX1_C0CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C0CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C0CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C0CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C0CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C0CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C0CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C0CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C0CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C0CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C1CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C1CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C1CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C1CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C1CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C1CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C1CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C1CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C1CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C1CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C2CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C2CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C2CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C2CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C2CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C2CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C2CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C2CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C2CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C2CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C3CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C3CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C3CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C3CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C3CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C3CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C3CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C3CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C3CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C3CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C4CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C4CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C4CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C4CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C4CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C4CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C4CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C4CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C4CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C4CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C5CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C5CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C5CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C5CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C5CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C5CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C5CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C5CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C5CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C5CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C6CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C6CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C6CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C6CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C6CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C6CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C6CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C6CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C6CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C6CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C7CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C7CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C7CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C7CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C7CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C7CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C7CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C7CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C7CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C7CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C8CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C8CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C8CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C8CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C8CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C8CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C8CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C8CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C8CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C8CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C9CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C9CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C9CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C9CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C9CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C9CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C9CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C9CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C9CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C9CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C10CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C10CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C10CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C10CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C10CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C10CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C10CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C10CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C10CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C10CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C11CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C11CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C11CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C11CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C11CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C11CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C11CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C11CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C11CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C11CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C12CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C12CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C12CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C12CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C12CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C12CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C12CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C12CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C12CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C12CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C13CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C13CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C13CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C13CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C13CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C13CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C13CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C13CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C13CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C13CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C14CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C14CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C14CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C14CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C14CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C14CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C14CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C14CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C14CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C14CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_C15CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX1_C15CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX1_C15CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX1_C15CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX1_C15CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX1_C15CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX1_C15CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX1_C15CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX1_C15CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_C15CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX1_CSR_SOF_Field is HAL.UInt16;

   --  DMAMUX request line multiplexer interrupt channel status register
   type DMAMUX1_CSR_Register is record
      --  Read-only. Synchronization overrun event flag
      SOF            : DMAMUX1_CSR_SOF_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_CSR_Register use record
      SOF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMAMUX1_CFR_CSOF_Field is HAL.UInt16;

   --  DMAMUX request line multiplexer interrupt clear flag register
   type DMAMUX1_CFR_Register is record
      --  Write-only. Clear synchronization overrun event flag
      CSOF           : DMAMUX1_CFR_CSOF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_CFR_Register use record
      CSOF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMAMUX1_RG0CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG0CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG0CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG0CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG0CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG0CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG0CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG0CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG1CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG1CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG1CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG1CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG1CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG1CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG1CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG1CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG2CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG2CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG2CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG2CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG2CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG2CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG2CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG2CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG3CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG3CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG3CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG3CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG3CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG3CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG3CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG3CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG4CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG4CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG4CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG4CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG4CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG4CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG4CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG4CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG5CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG5CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG5CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG5CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG5CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG5CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG5CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG5CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG6CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG6CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG6CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG6CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG6CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG6CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG6CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG6CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RG7CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX1_RG7CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX1_RG7CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX1_RG7CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX1_RG7CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX1_RG7CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX1_RG7CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RG7CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX1_RGSR_OF_Field is HAL.UInt8;

   --  DMAMux - DMA request generator status register
   type DMAMUX1_RGSR_Register is record
      --  Read-only. Trigger event overrun flag The flag is set when a trigger
      --  event occurs on DMA request generator channel x, while the DMA
      --  request generator counter value is lower than GNBREQ. The flag is
      --  cleared by writing 1 to the corresponding COFx bit in DMAMUX_RGCFR
      --  register.
      OF_k          : DMAMUX1_RGSR_OF_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RGSR_Register use record
      OF_k          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DMAMUX1_RGCFR_COF_Field is HAL.UInt8;

   --  DMAMux - DMA request generator clear flag register
   type DMAMUX1_RGCFR_Register is record
      --  Write-only. Clear trigger event overrun flag Upon setting, this bit
      --  clears the corresponding overrun flag OFx in the DMAMUX_RGCSR
      --  register.
      COF           : DMAMUX1_RGCFR_COF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX1_RGCFR_Register use record
      COF           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DMAMUX2_C0CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C0CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C0CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C0CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C0CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C0CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C0CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C0CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C0CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C0CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C1CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C1CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C1CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C1CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C1CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C1CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C1CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C1CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C1CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C1CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C2CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C2CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C2CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C2CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C2CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C2CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C2CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C2CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C2CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C2CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C3CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C3CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C3CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C3CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C3CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C3CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C3CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C3CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C3CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C3CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C4CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C4CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C4CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C4CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C4CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C4CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C4CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C4CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C4CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C4CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C5CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C5CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C5CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C5CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C5CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C5CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C5CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C5CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C5CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C5CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C6CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C6CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C6CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C6CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C6CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C6CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C6CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C6CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C6CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C6CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_C7CR_DMAREQ_ID_Field is HAL.UInt8;
   subtype DMAMUX2_C7CR_SPOL_Field is HAL.UInt2;
   subtype DMAMUX2_C7CR_NBREQ_Field is HAL.UInt5;
   subtype DMAMUX2_C7CR_SYNC_ID_Field is HAL.UInt5;

   --  DMAMux - DMA request line multiplexer channel x control register
   type DMAMUX2_C7CR_Register is record
      --  Input DMA request line selected
      DMAREQ_ID      : DMAMUX2_C7CR_DMAREQ_ID_Field := 16#0#;
      --  Interrupt enable at synchronization event overrun
      SOIE           : Boolean := False;
      --  Event generation enable/disable
      EGE            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Synchronous operating mode enable/disable
      SE             : Boolean := False;
      --  Synchronization event type selector Defines the synchronization event
      --  on the selected synchronization input:
      SPOL           : DMAMUX2_C7CR_SPOL_Field := 16#0#;
      --  Number of DMA requests to forward Defines the number of DMA requests
      --  forwarded before output event is generated. In synchronous mode, it
      --  also defines the number of DMA requests to forward after a
      --  synchronization event, then stop forwarding. The actual number of DMA
      --  requests forwarded is NBREQ+1. Note: This field can only be written
      --  when both SE and EGE bits are reset.
      NBREQ          : DMAMUX2_C7CR_NBREQ_Field := 16#0#;
      --  Synchronization input selected
      SYNC_ID        : DMAMUX2_C7CR_SYNC_ID_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_C7CR_Register use record
      DMAREQ_ID      at 0 range 0 .. 7;
      SOIE           at 0 range 8 .. 8;
      EGE            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SE             at 0 range 16 .. 16;
      SPOL           at 0 range 17 .. 18;
      NBREQ          at 0 range 19 .. 23;
      SYNC_ID        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMAMUX2_CSR_SOF_Field is HAL.UInt16;

   --  DMAMUX request line multiplexer interrupt channel status register
   type DMAMUX2_CSR_Register is record
      --  Read-only. Synchronization overrun event flag
      SOF            : DMAMUX2_CSR_SOF_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_CSR_Register use record
      SOF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMAMUX2_CFR_CSOF_Field is HAL.UInt16;

   --  DMAMUX request line multiplexer interrupt clear flag register
   type DMAMUX2_CFR_Register is record
      --  Write-only. Clear synchronization overrun event flag
      CSOF           : DMAMUX2_CFR_CSOF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_CFR_Register use record
      CSOF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMAMUX2_RG0CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG0CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG0CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG0CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG0CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG0CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG0CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG0CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG1CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG1CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG1CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG1CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG1CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG1CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG1CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG1CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG2CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG2CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG2CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG2CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG2CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG2CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG2CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG2CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG3CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG3CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG3CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG3CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG3CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG3CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG3CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG3CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG4CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG4CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG4CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG4CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG4CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG4CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG4CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG4CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG5CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG5CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG5CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG5CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG5CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG5CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG5CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG5CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG6CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG6CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG6CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG6CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG6CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG6CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG6CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG6CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RG7CR_SIG_ID_Field is HAL.UInt5;
   subtype DMAMUX2_RG7CR_GPOL_Field is HAL.UInt2;
   subtype DMAMUX2_RG7CR_GNBREQ_Field is HAL.UInt5;

   --  DMAMux - DMA request generator channel x control register
   type DMAMUX2_RG7CR_Register is record
      --  DMA request trigger input selected
      SIG_ID         : DMAMUX2_RG7CR_SIG_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Interrupt enable at trigger event overrun
      OIE            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DMA request generator channel enable/disable
      GE             : Boolean := False;
      --  DMA request generator trigger event type selection Defines the
      --  trigger event on the selected DMA request trigger input
      GPOL           : DMAMUX2_RG7CR_GPOL_Field := 16#0#;
      --  Number of DMA requests to generate Defines the number of DMA requests
      --  generated after a trigger event, then stop generating. The actual
      --  number of generated DMA requests is GNBREQ+1. Note: This field can
      --  only be written when GE bit is reset.
      GNBREQ         : DMAMUX2_RG7CR_GNBREQ_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RG7CR_Register use record
      SIG_ID         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OIE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      GE             at 0 range 16 .. 16;
      GPOL           at 0 range 17 .. 18;
      GNBREQ         at 0 range 19 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DMAMUX2_RGSR_OF_Field is HAL.UInt8;

   --  DMAMux - DMA request generator status register
   type DMAMUX2_RGSR_Register is record
      --  Read-only. Trigger event overrun flag The flag is set when a trigger
      --  event occurs on DMA request generator channel x, while the DMA
      --  request generator counter value is lower than GNBREQ. The flag is
      --  cleared by writing 1 to the corresponding COFx bit in DMAMUX_RGCFR
      --  register.
      OF_k          : DMAMUX2_RGSR_OF_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RGSR_Register use record
      OF_k          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DMAMUX2_RGCFR_COF_Field is HAL.UInt8;

   --  DMAMux - DMA request generator clear flag register
   type DMAMUX2_RGCFR_Register is record
      --  Write-only. Clear trigger event overrun flag Upon setting, this bit
      --  clears the corresponding overrun flag OFx in the DMAMUX_RGCSR
      --  register.
      COF           : DMAMUX2_RGCFR_COF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAMUX2_RGCFR_Register use record
      COF           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMAMUX
   type DMAMUX1_Peripheral is record
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C0CR  : aliased DMAMUX1_C0CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C1CR  : aliased DMAMUX1_C1CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C2CR  : aliased DMAMUX1_C2CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C3CR  : aliased DMAMUX1_C3CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C4CR  : aliased DMAMUX1_C4CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C5CR  : aliased DMAMUX1_C5CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C6CR  : aliased DMAMUX1_C6CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C7CR  : aliased DMAMUX1_C7CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C8CR  : aliased DMAMUX1_C8CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C9CR  : aliased DMAMUX1_C9CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C10CR : aliased DMAMUX1_C10CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C11CR : aliased DMAMUX1_C11CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C12CR : aliased DMAMUX1_C12CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C13CR : aliased DMAMUX1_C13CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C14CR : aliased DMAMUX1_C14CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX1_C15CR : aliased DMAMUX1_C15CR_Register;
      --  DMAMUX request line multiplexer interrupt channel status register
      DMAMUX1_CSR   : aliased DMAMUX1_CSR_Register;
      --  DMAMUX request line multiplexer interrupt clear flag register
      DMAMUX1_CFR   : aliased DMAMUX1_CFR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG0CR : aliased DMAMUX1_RG0CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG1CR : aliased DMAMUX1_RG1CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG2CR : aliased DMAMUX1_RG2CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG3CR : aliased DMAMUX1_RG3CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG4CR : aliased DMAMUX1_RG4CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG5CR : aliased DMAMUX1_RG5CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG6CR : aliased DMAMUX1_RG6CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX1_RG7CR : aliased DMAMUX1_RG7CR_Register;
      --  DMAMux - DMA request generator status register
      DMAMUX1_RGSR  : aliased DMAMUX1_RGSR_Register;
      --  DMAMux - DMA request generator clear flag register
      DMAMUX1_RGCFR : aliased DMAMUX1_RGCFR_Register;
   end record
     with Volatile;

   for DMAMUX1_Peripheral use record
      DMAMUX1_C0CR  at 16#0# range 0 .. 31;
      DMAMUX1_C1CR  at 16#4# range 0 .. 31;
      DMAMUX1_C2CR  at 16#8# range 0 .. 31;
      DMAMUX1_C3CR  at 16#C# range 0 .. 31;
      DMAMUX1_C4CR  at 16#10# range 0 .. 31;
      DMAMUX1_C5CR  at 16#14# range 0 .. 31;
      DMAMUX1_C6CR  at 16#18# range 0 .. 31;
      DMAMUX1_C7CR  at 16#1C# range 0 .. 31;
      DMAMUX1_C8CR  at 16#20# range 0 .. 31;
      DMAMUX1_C9CR  at 16#24# range 0 .. 31;
      DMAMUX1_C10CR at 16#28# range 0 .. 31;
      DMAMUX1_C11CR at 16#2C# range 0 .. 31;
      DMAMUX1_C12CR at 16#30# range 0 .. 31;
      DMAMUX1_C13CR at 16#34# range 0 .. 31;
      DMAMUX1_C14CR at 16#38# range 0 .. 31;
      DMAMUX1_C15CR at 16#3C# range 0 .. 31;
      DMAMUX1_CSR   at 16#80# range 0 .. 31;
      DMAMUX1_CFR   at 16#84# range 0 .. 31;
      DMAMUX1_RG0CR at 16#100# range 0 .. 31;
      DMAMUX1_RG1CR at 16#104# range 0 .. 31;
      DMAMUX1_RG2CR at 16#108# range 0 .. 31;
      DMAMUX1_RG3CR at 16#10C# range 0 .. 31;
      DMAMUX1_RG4CR at 16#110# range 0 .. 31;
      DMAMUX1_RG5CR at 16#114# range 0 .. 31;
      DMAMUX1_RG6CR at 16#118# range 0 .. 31;
      DMAMUX1_RG7CR at 16#11C# range 0 .. 31;
      DMAMUX1_RGSR  at 16#140# range 0 .. 31;
      DMAMUX1_RGCFR at 16#144# range 0 .. 31;
   end record;

   --  DMAMUX
   DMAMUX1_Periph : aliased DMAMUX1_Peripheral
     with Import, Address => System'To_Address (16#40020800#);

   --  DMAMUX
   type DMAMUX2_Peripheral is record
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C0CR  : aliased DMAMUX2_C0CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C1CR  : aliased DMAMUX2_C1CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C2CR  : aliased DMAMUX2_C2CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C3CR  : aliased DMAMUX2_C3CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C4CR  : aliased DMAMUX2_C4CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C5CR  : aliased DMAMUX2_C5CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C6CR  : aliased DMAMUX2_C6CR_Register;
      --  DMAMux - DMA request line multiplexer channel x control register
      DMAMUX2_C7CR  : aliased DMAMUX2_C7CR_Register;
      --  DMAMUX request line multiplexer interrupt channel status register
      DMAMUX2_CSR   : aliased DMAMUX2_CSR_Register;
      --  DMAMUX request line multiplexer interrupt clear flag register
      DMAMUX2_CFR   : aliased DMAMUX2_CFR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG0CR : aliased DMAMUX2_RG0CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG1CR : aliased DMAMUX2_RG1CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG2CR : aliased DMAMUX2_RG2CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG3CR : aliased DMAMUX2_RG3CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG4CR : aliased DMAMUX2_RG4CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG5CR : aliased DMAMUX2_RG5CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG6CR : aliased DMAMUX2_RG6CR_Register;
      --  DMAMux - DMA request generator channel x control register
      DMAMUX2_RG7CR : aliased DMAMUX2_RG7CR_Register;
      --  DMAMux - DMA request generator status register
      DMAMUX2_RGSR  : aliased DMAMUX2_RGSR_Register;
      --  DMAMux - DMA request generator clear flag register
      DMAMUX2_RGCFR : aliased DMAMUX2_RGCFR_Register;
   end record
     with Volatile;

   for DMAMUX2_Peripheral use record
      DMAMUX2_C0CR  at 16#0# range 0 .. 31;
      DMAMUX2_C1CR  at 16#4# range 0 .. 31;
      DMAMUX2_C2CR  at 16#8# range 0 .. 31;
      DMAMUX2_C3CR  at 16#C# range 0 .. 31;
      DMAMUX2_C4CR  at 16#10# range 0 .. 31;
      DMAMUX2_C5CR  at 16#14# range 0 .. 31;
      DMAMUX2_C6CR  at 16#18# range 0 .. 31;
      DMAMUX2_C7CR  at 16#1C# range 0 .. 31;
      DMAMUX2_CSR   at 16#80# range 0 .. 31;
      DMAMUX2_CFR   at 16#84# range 0 .. 31;
      DMAMUX2_RG0CR at 16#100# range 0 .. 31;
      DMAMUX2_RG1CR at 16#104# range 0 .. 31;
      DMAMUX2_RG2CR at 16#108# range 0 .. 31;
      DMAMUX2_RG3CR at 16#10C# range 0 .. 31;
      DMAMUX2_RG4CR at 16#110# range 0 .. 31;
      DMAMUX2_RG5CR at 16#114# range 0 .. 31;
      DMAMUX2_RG6CR at 16#118# range 0 .. 31;
      DMAMUX2_RG7CR at 16#11C# range 0 .. 31;
      DMAMUX2_RGSR  at 16#140# range 0 .. 31;
      DMAMUX2_RGCFR at 16#144# range 0 .. 31;
   end record;

   --  DMAMUX
   DMAMUX2_Periph : aliased DMAMUX2_Peripheral
     with Import, Address => System'To_Address (16#58025800#);

end STM32_SVD.DMAMUX;
