--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MMDVSQ is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start
   type CSR_SRT_Field is
     (
      --  No operation initiated
      Srt_0,
      --  If CSR[DFS] = 1, then initiate a divide calculation, else ignore
      Srt_1)
     with Size => 1;
   for CSR_SRT_Field use
     (Srt_0 => 0,
      Srt_1 => 1);

   --  Unsigned calculation
   type CSR_USGN_Field is
     (
      --  Perform a signed divide
      Usgn_0,
      --  Perform an unsigned divide
      Usgn_1)
     with Size => 1;
   for CSR_USGN_Field use
     (Usgn_0 => 0,
      Usgn_1 => 1);

   --  REMainder calculation
   type CSR_REM_Field is
     (
      --  Return the quotient in the RES for the divide calculation
      Rem_0,
      --  Return the remainder in the RES for the divide calculation
      Rem_1)
     with Size => 1;
   for CSR_REM_Field use
     (Rem_0 => 0,
      Rem_1 => 1);

   --  Divide-by-Zero-Enable
   type CSR_DZE_Field is
     (
      --  Reads of the RES register return the register contents
      Dze_0,
      --  If CSR[DZ] = 1, an attempted read of RES register is error terminated
      --  to signal a divide-by-zero, else the register contents are returned
      Dze_1)
     with Size => 1;
   for CSR_DZE_Field use
     (Dze_0 => 0,
      Dze_1 => 1);

   --  Divide-by-Zero
   type CSR_DZ_Field is
     (
      --  The last divide operation had a non-zero divisor, that is, DSOR != 0
      Dz_0,
      --  The last divide operation had a zero divisor, that is, DSOR = 0
      Dz_1)
     with Size => 1;
   for CSR_DZ_Field use
     (Dz_0 => 0,
      Dz_1 => 1);

   --  Disable Fast Start
   type CSR_DFS_Field is
     (
      --  A divide operation is initiated by a write to the DSOR register
      Dfs_0,
      --  A divide operation is initiated by a write to the CSR register with
      --  CSR[SRT] = 1
      Dfs_1)
     with Size => 1;
   for CSR_DFS_Field use
     (Dfs_0 => 0,
      Dfs_1 => 1);

   --  SQUARE ROOT
   type CSR_SQRT_Field is
     (
      --  Current or last MMDVSQ operation was not a square root
      Sqrt_0,
      --  Current or last MMDVSQ operation was a square root
      Sqrt_1)
     with Size => 1;
   for CSR_SQRT_Field use
     (Sqrt_0 => 0,
      Sqrt_1 => 1);

   --  DIVIDE
   type CSR_DIV_Field is
     (
      --  Current or last MMDVSQ operation was not a divide
      Div_0,
      --  Current or last MMDVSQ operation was a divide
      Div_1)
     with Size => 1;
   for CSR_DIV_Field use
     (Div_0 => 0,
      Div_1 => 1);

   --  BUSY
   type CSR_BUSY_Field is
     (
      --  MMDVSQ is idle
      Busy_0,
      --  MMDVSQ is busy performing a divide or square root calculation
      Busy_1)
     with Size => 1;
   for CSR_BUSY_Field use
     (Busy_0 => 0,
      Busy_1 => 1);

   --  Control/Status Register
   type MMDVSQ_CSR_Register is record
      --  Write-only. Start
      SRT           : CSR_SRT_Field := NRF_SVD.MMDVSQ.Srt_0;
      --  Unsigned calculation
      USGN          : CSR_USGN_Field := NRF_SVD.MMDVSQ.Usgn_0;
      --  REMainder calculation
      REM_k         : CSR_REM_Field := NRF_SVD.MMDVSQ.Rem_0;
      --  Divide-by-Zero-Enable
      DZE           : CSR_DZE_Field := NRF_SVD.MMDVSQ.Dze_0;
      --  Read-only. Divide-by-Zero
      DZ            : CSR_DZ_Field := NRF_SVD.MMDVSQ.Dz_0;
      --  Disable Fast Start
      DFS           : CSR_DFS_Field := NRF_SVD.MMDVSQ.Dfs_0;
      --  unspecified
      Reserved_6_28 : HAL.UInt23 := 16#0#;
      --  Read-only. SQUARE ROOT
      SQRT          : CSR_SQRT_Field := NRF_SVD.MMDVSQ.Sqrt_0;
      --  Read-only. DIVIDE
      DIV           : CSR_DIV_Field := NRF_SVD.MMDVSQ.Div_0;
      --  Read-only. BUSY
      BUSY          : CSR_BUSY_Field := NRF_SVD.MMDVSQ.Busy_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMDVSQ_CSR_Register use record
      SRT           at 0 range 0 .. 0;
      USGN          at 0 range 1 .. 1;
      REM_k         at 0 range 2 .. 2;
      DZE           at 0 range 3 .. 3;
      DZ            at 0 range 4 .. 4;
      DFS           at 0 range 5 .. 5;
      Reserved_6_28 at 0 range 6 .. 28;
      SQRT          at 0 range 29 .. 29;
      DIV           at 0 range 30 .. 30;
      BUSY          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Divide and Square Root
   type MMDVSQ_Peripheral is record
      --  Dividend Register
      DEND : aliased HAL.UInt32;
      --  Divisor Register
      DSOR : aliased HAL.UInt32;
      --  Control/Status Register
      CSR  : aliased MMDVSQ_CSR_Register;
      --  Result Register
      RES  : aliased HAL.UInt32;
      --  Radicand Register
      RCND : aliased HAL.UInt32;
   end record
     with Volatile;

   for MMDVSQ_Peripheral use record
      DEND at 16#0# range 0 .. 31;
      DSOR at 16#4# range 0 .. 31;
      CSR  at 16#8# range 0 .. 31;
      RES  at 16#C# range 0 .. 31;
      RCND at 16#10# range 0 .. 31;
   end record;

   --  Divide and Square Root
   MMDVSQ_Periph : aliased MMDVSQ_Peripheral
     with Import, Address => System'To_Address (16#F0004000#);

end NRF_SVD.MMDVSQ;
