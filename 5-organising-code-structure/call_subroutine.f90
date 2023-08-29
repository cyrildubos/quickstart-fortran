subroutine print_matrix(m, n, a)
   implicit none

   integer, intent(in) :: m
   integer, intent(in) :: n
   real, intent(in) :: a(m, n)

   integer :: i

   do i = 1, m
      print *, a(i, 1:n)
   end do
end subroutine print_matrix

program call_subroutine
   implicit none

   real, dimension(20, 10) :: matrix

   matrix(:,:) = 0.0

   call print_matrix(20, 10, matrix)
end program call_subroutine
