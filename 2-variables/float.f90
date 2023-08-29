program float
   use iso_fortran_env

   implicit none

   real(real32) :: float_32
   real(real64) :: float_64

   float_32 = 1.0_real32
   float_64 = 1.0_real64

   print *, float_32
   print *, float_64
end program float
