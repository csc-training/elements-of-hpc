program fortran_example
 implicit none

 integer :: i
 real :: array(100) = [(i, i=0, 99)]

 write(*,*) 'sum of array', sum(array)

end program fortran_example
