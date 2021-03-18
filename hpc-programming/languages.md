# Programming languages in supercomputers

Based on the [Google searches for programming language
tutorials](https://pypl.github.io/PYPL.html), the five most popular
progaramming languages in 2021 are Python, Java, Javascript, C#, and
C/C++. However, in the context of high performance computing, Java, Javascript
and C# are practically non-existing, and the dominant languages are
currently Fortran and C/C++. In addition, Python (typically in
combination of C/C++) has been steadily increasing for a long time,
and as a newcomer Julia has been arousing interest. Nowadays, it is
also common to use several programming languages in a single
application and all the languages support interoperability, i.e. it is
possible call subroutines written in different programming language.

Base programming languages typically support primarily serial
computing and parallelization is achieved with language extensions and
special communication libraries. In addition, various high performance
libraries are typically utilized.



## Fortran

**Fortran** (from FORmula TRANslation) is the traditional language of
scientific computing. It was originally developed in the 1950s by IBM
and was specifically designed for numeric computation. Fortran has
continuously evolved and gained features and is still very important
in scientific computing. The most recent Fortran standard is Fortran
2018, and the next revision is planned in 2021-2022.

Large multidimensional numerical arrays are key data structure in many
scientific applications, and major attraction of Fortran has been the
convenient and efficient tools it provides for dealing with them. The
structure of language is also well suited for compiler optimizations,
and Fortran programs can typically utilize CPUs efficiently.

Although the Fortran 2008 standard includes coarrays, a language
feature for distributed parallel programming, parallel Fortran
programs utilize more often additional parallel libraries.

To provide a look and feel of a Fortran program, the below code
calculates the sum of elements of array containing real numbers from 0
to 99:
```fortran
program fortran_example
 implicit none

 integer :: i
 real :: array(100) = [(i, i=0, 99)]

 write(*,*) 'sum of array', sum(array)

end program fortran_example
```
Fortran is compiled language, meaning that the source code file is
first passed through a *compiler* that produces a machine language
*executable* file which can then be run on a computer. 

The above code can be compiled with GNU Fortran compiler
(often available by default in Linux systems) and then run as:

```bash
$ gfortran -o sum sum.F90 
$ ./sum 
 sum of array   4950.00000
```

A large collection of scientific and numeric
subroutine libraries is available for Fortran programmers. The 

## C/C++

**C** is another common language from the early days of scientific
computing. C was developed at Bell Labs in the early 1970s as a
general purpose language for the Unix operating system and its
utilities. C gained popularity in the 1980s and is today one of the
most popular programming languages, and is also widely used in
scientific computing. 

**C++** started as an extension of C developed in the early
1980s. Today, C++ can be considered as a language of its own, even 
though it shares some features with C. The latest C++ standard is
C++20 from 2020, and the next standard is planned for 2023. 

C++ is a general purpose *object oriented* language in which data and code
that can access it (*methods*) are packaged in to so called
*objects*. .This approach allows better control of how the data is
manipulated and thus reduces the risk of programming errors especially
in large projects where a number of developers contribute to the same
program. C++ is becoming more important in scientific computing
because many new parallelization extensions, libraries etc. are first
implemented for C++, especially when GPUs are targeted. 

The C++11 standard included a multithreading functionality, which can
be used for shared memory parallelization. For distributed memory
parallelization additional communication libraries are needed.

In C++, the program calculating sum of elements of array looks like:
```c++
#include <iostream>
#include <vector>

int main()
{
   auto array = std::vector<float>(100);

   for (int i=0; i < 100; ++i)
      array[i] = i;

   auto sum = array[0];
   for (int i=1; i < 100; ++i)
      sum += array[i];

   std::cout << "Sum of array " << sum << std::endl;
}
```
Similar to Fortran, C and C++ are compiled languages.
The above code can be compiled with GNU C++ compiler
(often available by default in Linux systems) and then run as:

```bash
$ g++ -o sum sum.cpp
$ ./sum 
Sum of array 4950
```

## Python

**Python** is a high-level general purpose language created in the
1980s. Python supports multiple programming paradigms, including
structured, object oriented and functional. Python was designed to be highly
extensible and simple to read. Python has become very popular also in
scientific computing because of the benefits it offers for fast code
development, and it is used especially in writing the high level logic of the
algorithms. 

Python is interpreted lanaguage, which means that a
separate compilation step is not needed. Partly due to interpreted
nature, the performance of pure Python programs is often
subobtimal. Thus, in scientific applications Python is typically
combined with C/C++ or 
Fortran for the performance critical parts of the application. Python
has many extension modules for numerical and scientific, as well as
data science applications. Many current artificial intelligence
frameworks provide a Python front-end for setting up the model.

Python standard library has functionality for shared memory
parallelization, but for distributed memory parallelization separate
extensions are needed.

In Python, sum of array could be implemented as:
```python
import numpy

array = numpy.arange(0, 100, dtype=float)
print("Sum of array {}".format(array.sum()))
```
As no separate compilation step is needed, the program is run directly
as:
```bash
$ python sum.py 
Sum of array 4950.0
```

## Julia

Julia is relatively new programming language, as it was introduced
only in 2012. Julia is a flexible dynamic language, and it aims to
combine rapid development (like Python) with a performance similar to
C/C++ and Fortran. Julia is designed from the beginning with the
numerical and high performance computing in mind. 
Julia is multi-paradigm, combining features of imperative, functional,
and object-oriented programming. Similar to Python, Julia does not
need a separate compilation step, but a just-in-time compilation is
carried out in the runtime.

Julia itself contains functionality both for shared memory and
distributed memory parallelization, but there are also extension
packages for parallel programming.

Sum of array looks in Julia as:
```julia
array = Array{Float32}(range(0, length=100))

println("Sum of array ", sum(array))
```
Program would be run as
```bash
$ julia sum.jl 
Sum of array 4950.0
```

### Subroutine libraries

While the scientific computing programs solve or simulate a huge number of different problems, many of them need to perform similar subtasks of e.g. numerical mathematics such as solving systems of linear equations and eigenvalue problems or performing various matrix operations, fast Fourier transforms and so on. To make the software developer's task easier the most common algorithms and operations are available in performance optimized subroutine libraries that can be *linked* to the main program.

### Parallel programming

**Message passing** paradigm is the most common way to parallelize scientific computing programs. In message passing the tasks only can access their local data and when exchange of data is needed between the parallel tasks, the sending and receiving tasks need to take explicit action which means calling specific subroutines or functions to perform the send or receive. For this purpose there is a library called MPI (Message Passing Interface), whose communication routines can be called from Fortran and C/C++. 

With MPI the only possibility is to parallelize the whole program, it cannot be done part by part. MPI can be used both within shared memory nodes and between the nodes. While parallelizing a code with MPI may require a lot of work due to the explicit nature of communication and the fact that the subroutine/function calls have many parameters the perfomance is typically good (if done right). Also, with MPI the programmer is completely in charge of the parallelization and nothing is left to the compiler.

The following is a simple MPI code example written in Fortran. When run, each task prints out its rank and the total number of tasks with which the program is launched.

    program hello
      implicit none
      include 'mpif.h'
      integer:: ierror, rank, ntasks, status(MPI_STATUS_SIZE)

      call MPI_INIT(ierror)

      call MPI_COMM_SIZE(MPI_COMM_WORLD, ntasks, ierror)
      call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierror)

      print *,'Hello from task', rank, '/', ntasks

      call MPI_FINALIZE(ierror)

    end program hello

The corresponding code in C is as follows.

    #include <stdio.h>
    #include <mpi.h>

    int main(argc, argv)
     int argc;
     char *argv[];
    {
    int rank, ntasks;

    MPI_Init(&argc, &argv);

    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &ntasks);

    printf("Hello from task %d / %d \n", rank, ntasks);

    MPI_Finalize();
    }

When run with four tasks the output of the C code looks like

    Hello from task 0 / 4
    Hello from task 2 / 4
    Hello from task 1 / 4
    Hello from task 3 / 4

Within a node one can use **shared memory parallelization** in which the parallel *threads* can access all the shared memory independently. This on the other hands makes programming easier but on the other hand can lead to poor performance and seemingly random errors that are difficult to find if not done correctly. The most popular shared memory parallelization method in scientific computing is to insert OpenMP pseudo comments in the code to tell a compatible compiler that the adjacent code can be parallelized. In Fortran the pseudo comments are called *directives* and in C/C++ *pragmas* and they affect the compilation only if the compiler is instructed to look for them. At least in theory it is then possible to have a single source code that can be compiled for serial and parallel computing. 

With OpenMP the programmer mostly relies on the compiler for the actual parallelization. Additionally, with OpenMP a code can be parallelized incrementally, which is quite convenient. This is in contrast to MPI where the parallelization is an all-or-nothing enterprise and once parallelized the code cannot be run serially (or at least without the MPI library).

For **GPU parallelization** the most common alternatives are currently the following:
- CUDA is an extension to C by the GPU vendor Nvidia. With CUDA the parts of the code that are to be run on CPUs are written in C/C++ and the computing intensive parts that are offloaded to GPUs called *kernels* are written in CUDA. CUDA is relatively low level approach that requires a lot of work and careful programming to utillize the highly parallel processor. When done right the performance is good.
- HIP can be considered to be the AMD version of CUDA and the conversion between them is mostly one-to-one.
- OpenACC is a directive based approach to GPU programming available for Fortran and C/C++. The programmer inserts special pseudo comments to the program based on which a compatible compiler generates the necessary machine code for GPU execution. Programming with OpenACC is easier than with CUDA and the performance is quite good.
- During the last few years OpenMP has been extended to support GPU offloading and it is quite comparable to OpenACC. Currently the compiler support is not quite on a satisfactory level but in the long run OpenMP is considered (or at least hoped) to become mainstream for GPU programming.
- Various portability frameworks like Kokkos, Raja and SYCL.

### Portability

Portability means whether and how easily a program can be transferred from one system to another. In addition to different hardware (most importantly CPUs and GPUs) systems may have different compilers and libraries available. In an ideal world a program could be without any modifications compiled and run on any system with good performance. In practice this is not always the case. Sometimes the source code needs to be modified or the program may compile but crashes when run and sometimes the performance is not sufficient.

CPU programs written in Fortran, C/C++ or Python and parallelized with MPI or OpenMP are generally portable with good performance. However, the GPU world is currently more complicated as there are a number of competing vendors and proprietary languages and programming models. 

