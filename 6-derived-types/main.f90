module m_shapes
   implicit none

   public t_square

   type :: t_square
      real :: side
   contains
      procedure :: area
   end type
contains
   real function area(self) result(a)
      class(t_square), intent(in) :: self

      a = self%side**2
   end function
end module m_shapes

program main
   use m_shapes

   implicit none

   type(t_square) :: square

   square%side = 0.5

   print *, square%area()
end program main
