program parallel_sum
 use mpi_f08

 implicit none

 integer :: i, local_size
 real :: array(100) = [(i, i=0, 99)]
 real, allocatable :: local_array(:)
 real :: total_sum, local_sum
 integer :: ierror, rank, ntasks

 call MPI_INIT(ierror)

 call MPI_COMM_SIZE(MPI_COMM_WORLD, ntasks, ierror)
 call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierror)

 ! Allocate space for sub arrays and distribute data from rank 0
 local_size = 100 / ntasks
 allocate(local_array(local_size))
 call MPI_SCATTER(array, local_size, MPI_REAL, local_array, local_size, MPI_REAL, & 
                  0, MPI_COMM_WORLD, ierror)

 ! Each task calculates its' own local sum
 local_sum = sum(local_array)

 ! Gather the data to rank 0 and sum in the fly (reduce)
 call MPI_REDUCE(local_sum, total_sum, 1, MPI_REAL, MPI_SUM, 0, MPI_COMM_WORLD, ierror)

 if (rank == 0) then
     write(*,*) 'sum of array', total_sum
 end if

 call MPI_FINALIZE(ierror)

end program parallel_sum
