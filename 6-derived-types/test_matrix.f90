module m_matrix
   implicit none

   public t_matrix

   type :: t_matrix(rows, columns, k)
      integer, len :: rows, columns
      integer, kind :: k = kind(0.0)

      real(kind=k), dimension(rows, columns) :: values
   end type
end module m_matrix

program test_matrix
   use m_matrix

   implicit none

   type(t_matrix(rows=5, columns=5)) :: matrix

   matrix%values(:,:) = 0.0
end program test_matrix
