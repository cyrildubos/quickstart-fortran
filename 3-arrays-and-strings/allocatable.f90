program allocatable
   implicit none

   integer, dimension(:), allocatable :: array_1
   integer, dimension(:,:), allocatable :: array_2

   allocate(array_1(10))
   allocate(array_2(10,10))

   deallocate(array_1)
   deallocate(array_2)
end program allocatable
