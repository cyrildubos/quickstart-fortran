program string_array
   implicit none

   character(10), dimension(2) :: keys, values

   keys = [character(10) :: "user", "name"]
   values = [character(10) :: "ben", "motivation"]

   call show(keys, values)
contains
   subroutine show(a_keys, a_values)
      character(*), dimension(:), intent(in) :: a_keys, a_values
      integer :: index

      do index = 1, size(a_keys)
         print *, trim(a_keys(index)), ": ", trim(a_values(index))
      end do
   end subroutine show
end program string_array
