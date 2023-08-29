function vector_norm(n, v) result(norm)
   implicit none
   integer, intent(in) :: n
   real, intent(in) :: v(n)

   real :: norm

   norm = sqrt(sum(v**2))
end function vector_norm


program run_function
   implicit none

   real, dimension(9) :: vector
   real :: vector_norm

   vector(:) = 9


   print *, "vector_norm = ", vector_norm(9, vector)
end program run_function
