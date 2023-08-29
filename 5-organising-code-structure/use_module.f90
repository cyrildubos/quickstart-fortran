module my_module
   implicit none

   private
   public public_variable, print_matrix

   real, parameter :: public_variable = 2

contains
   subroutine print_matrix(a)
      real, intent(in) :: a(:,:)

      integer :: i

      do i = 1, size(a, 1)
         print *, a(i,:)
      end do
   end subroutine print_matrix
end module my_module

program use_module
   use my_module

   implicit none

   real, dimension(10,10) :: matrix

   matrix(:,:) = public_variable

   call print_matrix(matrix)
end program use_module
