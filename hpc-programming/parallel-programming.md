# Parallel programming

## Processes and threads

Parallel processing is normally based either on using multiple
processes or multiple threads. 

In the video below we discuss the most important differences between
them.
![Processes and threads](https://video.csc.fi/media/t/0_9il37s2b)

## Message passing

The **message passing** paradigm is the most common way to parallelize
scientific computing programs. In message passing, the tasks can only
access their local data, and when an exchange of data is needed between
the parallel tasks, the sending and receiving of tasks needs to take
explicit action to transfer data. In practice, this means calling
specific subroutines or functions to perform the send or receive.
For this purpose, there is a library
called MPI (Message Passing Interface), whose communication routines
can be called from Fortran and C/C++. Other languages (such as Python
and Julia) also have extension packages that allow one to use MPI.

With MPI, the only possibility is to parallelize the whole program, as it
cannot be done part by part. MPI can be used both within the shared memory
nodes and between the nodes. Even though parallelizing a code with MPI may
require a lot of work due to the explicit nature of communication and
the fact that the subroutine/function calls have many parameters, the
perfomance is typically good (if done right). Also, with MPI, the
programmer is completely in charge of the parallelization and nothing
is left to the compiler.

The execution and data model is discussed in more detail in the video
below
![Execution and data model in MPI](https://video.csc.fi/media/t/0_yn26xva0)

The following is a simple MPI code example written in Fortran. When
run, each task prints out its rank and the total number of tasks with
which the program is launched.

```fortran
program hello
  use mpi_f08

  implicit none

  integer :: ierror, rank, ntasks

  call MPI_INIT(ierror)

  call MPI_COMM_SIZE(MPI_COMM_WORLD, ntasks, ierror)
  call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierror)

  write(*,*) 'Hello from task', rank, '/', ntasks

  call MPI_FINALIZE(ierror)

end program hello
```

The corresponding code in C:

```c
#include <stdio.h>
#include <mpi.h>

int main(int argc, char** argv)
{
  int rank, ntasks;

  MPI_Init(&argc, &argv);

  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &ntasks);

  printf("Hello from task %d / %d \n", rank, ntasks);

  MPI_Finalize();
}
```

In most Linux distributions, MPI is available via the package
manager. The MPI programs are typically compiled with a special wrapper
command, `mpif90` (Fortran), `mpicc` (C), `mpic++` (C++), e.g.
```bash
$ mpicc -o hello hello.c
```
In order to launch **N** MPI tasks, a special launcher command is
needed, in basic Linux systems typically `mpiexec`. In order to run
the above code with four tasks, one would use:
```bash
$mpiexec -n 4 ./hello
    Hello from task 0 / 4
    Hello from task 2 / 4
    Hello from task 1 / 4
    Hello from task 3 / 4
```
Normally, you can associate that the number of MPI tasks is the same as the
number of cores to use.

In order to perform actual work in parallel, one typically needs to
distribute the data to different parallel tasks, to perform the actual
computation in each task, and then to combine the results of individual
tasks. With MPI, the sum of elements in an array could be carried out
(in Fortran) as follows:

```fortran
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

 ! Each task calculates its own local sum
 local_sum = sum(local_array)

 ! Gather the data to rank 0 and sum in the fly (reduce)
 call MPI_REDUCE(local_sum, total_sum, 1, MPI_REAL, MPI_SUM, 0, MPI_COMM_WORLD, ierror)

 if (rank == 0) then
     write(*,*) 'sum of array', total_sum
 end if

 call MPI_FINALIZE(ierror)

end program parallel_sum
```



## Threading

Within a node, one can use **shared memory parallelization** in which
the parallel *threads* can access the shared memory
independently. This on one hand makes programming easier, but on
the other hand, can lead to poor performance and seemingly random
errors that are difficult to find if not done correctly. The most
popular shared-memory parallelization method in scientific computing
is to insert OpenMP pseudo comments in the code to tell a compatible
compiler that the adjacent code can be parallelized. In Fortran, the
pseudo comments are called *directives*, and in C/C++, *pragmas*, and
they affect the compilation only if the compiler is instructed to look
for them. At least in theory, it is then possible to have a single
source code that can be compiled for serial and parallel computing.

With OpenMP, the programmer mostly relies on the compiler for actual parallelization. Additionally, with OpenMP, a code can be
parallelized incrementally, which is quite convenient. This is in
contrast to MPI where the parallelization is an all-or-nothing
enterprise, and once parallelized, the code cannot be run serially (or
at least without the MPI library).

As an example, the parallel sum could be implemented with OpenMP (in
C++) as:

```c++
#include <iostream>
#include <vector>

int main()
{
   auto array = std::vector<float>(100);

   for (int i=0; i < 100; ++i)
      array[i] = i;

   auto sum = array[0];
#pragma omp parallel for reduction(+:sum)
   for (int i=1; i < 100; ++i)
      sum += array[i];

   std::cout << "Sum of array " << sum << std::endl;
```

In order to compile the OpenMP, an additional flag is needed, e.g. with the
GNU C++ compiler one uses `-fopenmp`. The number of threads to use when
running can be specified with the `OMP_NUM_THREADS` environment variable
(the default is to use as many threads as there are cores in the system).

```bash
$ g++ -o sum sum.cpp -fopenmp
$ OMP_NUM_THREADS=4 ./sum
Sum of array 4950
```

While it is possible to use more threads than there are CPU cores,
performance normally suffers from this.

It is possible to combine the MPI and OpenMP parallelizations, so that
within a shared memory node, the OpenMP parallelization is used, and
between the nodes, MPI is used.

# GPU programming

For **GPU parallelization**, the most common alternatives are currently
the following:
- CUDA is an extension to C by the GPU vendor Nvidia. With CUDA, the
  parts of the code that are to be run on CPUs are written in C/C++,
  and the computing intensive parts that are offloaded to GPUs (called
  *kernels*) are written in CUDA. CUDA is a relatively low-level approach
  that requires a lot of work and careful programming to utillize the
  highly parallel processor. When done right, the performance is very good.
- HIP can be considered to be the AMD version of CUDA, and the
  conversion between them is mostly one-to-one.
- OpenACC is a directive-based approach to GPU programming available
  for Fortran and C/C++. The programmer inserts special pseudo
  comments to the program based on which a compatible compiler
  generates the necessary machine code for GPU execution. Programming
  with OpenACC is easier than with CUDA, and the performance can be quite
  good.
- During the last few years, OpenMP has been extended to support GPU
  offloading and is quite comparable to OpenACC. Currently, the
  compiler support is not quite on a satisfactory level, but in the
  long run, OpenMP is considered (or at least hoped) to become
  mainstream for GPU programming.
- There are various portability frameworks, such as Kokkos, Raja and SYCL.

When using multiple GPU nodes, all the above approaches can be
combined with MPI.

As discussed earlier, not all problems are easily, or efficiently
adapted to GPUs. The example we have used earlier, summing the
elements of an array, is such an example. Thus, in the example code
snippet below we compute elementwise sum of two arrays using CUDA.

```
#include <iostream>
#include <vector>
#include <cuda_runtime_api.h>

// The computational kernel that will be executed in GPU
__global__ void sum_arrays(float* input1, float* input2, float* output)
{
   // thread index
   int idx = blockIdx.x * blockDim.x + threadIdx.x;
   output[idx] = input1[idx] + input2[idx];
}

int main()
{
   // As the GPU works well only for with massive parallelism
   // we use a larger array i.e. a million elements
   size_t array_size = 1000000;
   auto array1 = std::vector<float>(array_size);
   auto array2 = std::vector<float>(array_size);
   auto array3 = std::vector<float>(array_size);

   for (int i=0; i < array_size; ++i) {
      array1[i] = i;
      array2[i] = -i;
   }

   // Allocate memory in the GPU
   float* array1_dev;   
   float* array2_dev;   
   float* array3_dev;   
   cudaMalloc((void**)&array1_dev, array_size * sizeof(float));
   cudaMalloc((void**)&array2_dev, array_size * sizeof(float));
   cudaMalloc((void**)&array3_dev, array_size * sizeof(float));

   // copy input data from CPU to GPU
   cudaMemcpy(array1.data(), array1_dev, array_size* sizeof(float), cudaMemcpyDeviceToHost);
   cudaMemcpy(array2.data(), array2_dev, array_size* sizeof(float), cudaMemcpyDeviceToHost);

   // Launch the compute kernel in GPU with "array_size" threads
   sum_arrays<<<10, array_size/10>>>(array1_dev, array2_dev, array3_dev);

   // copy results back to CPU from GPU
   cudaMemcpy(array3_dev, array3.data(), array_size* sizeof(float), cudaMemcpyHostToDevice);

   // Sum the result array, correct result is zero
   auto sum = array3[0];
   for (int i=1; i < array_size; ++i)
      sum += array3[i];

   std::cout << "Sum of array " << sum << std::endl;
}
```

You might not be familiar with C++, but it should be quite
clear that even though the computational routine itself, `compute_sum`,
is very simple, some extra code is needed in order to use
GPUs. Contrary to shared memory parallelization with threads in CPUs,
with GPUs one typically uses many more threads than there are cores on a GPU.
