## Programming supercomputers

Programming languages typically support primarily serial computing and parallellization is achieved with special communication libraries, extensions of languages, compiler directives and so on. There are exceptions, however. 

### Programming languages

**Fortran** (from FORmula TRANslation) is the traditional language of scientific computing. It was originally developed in the 1950s by IBM and was specifically designed for numeric computation. Fortran has continuously evolved and gained features and is still very important in scientific computing. A large collection of scientific and numeric subroutine libraries is available for Fortran programmers.

**C** is another common language from the early days of scientific computing. C was developed at Bell Labs in the early 1970s as a general purpose language for the Unix operating system and its utilities. C gained popularity in the 1980s and is today one of the most popular programming languages, and is also widely used in scientific computing.

**C++** is an axtension of C developed in the early 1980s. C++ is a general purpose *object oriented* language in which data and code that can access (*methods*) it are packaged in so called *objects*. This approach allows better control of how the data is manipulated and thus reduces the risk of programming errors especially in large projects where a number of developers contribute to the same program. C++ is becoming more important in scientific computing because many new parallelization extensions, libraries etc. are first implemented for C++, especially when GPUs are targeted.

Fortran and C/C++ are compiled languages meaning that the source code file is first passed through a *compiler* that produces a machine language *executable* file which can then be run on a computer.

**Python** is a high-level general purpose language created in the 1980s. Python supports multiple programming paradigms, including structured, object oriented and functional. As opposed to Fortran and C/C++, Python is an *interpreted* language, where instructions are executed directly and freely without previous compilation into a machine language executable. Python was designed to be highly extensible and simple to read. IN scientific computing Python is very popular and used especially in writing the high level logic of the algorithms while the performance critical parts are written in Fortran or C/C++.

**Others** Julia etc. TODO

### Subroutine libraries

While the scientific computing programs solve or simulate a huge number of different problems, many of them need to perform similar subtasks of e.g. numerical mathematics such as solving systems of linear equations and eigenvalue problems or performing various matrix operations, fast Fourier transforms and so on. To make the software developer's task easier the most common algorithms and operations are available in performance optimized subroutine libraries that can be *linked* to the main program.

### Parallel programming

**Message passing** paradigm is the most common way to parallelize scientific computing programs. In message passing the tasks only can access their local data and when exchange of data is needed between the parallel tasks, the sending and receiving tasks need to take explicit action which means calling specific subroutines or functions to perform the send or receive. For this purpose there is a library called MPI (Message Passing Interface), whose communication routines can be called from Fortran and C/C++. 

With MPI the only possibility is to parallelize the whole program, it cannot be done part by part. MPI can be used both within shared memory nodes and between the nodes. While parallelizing a code with MPI may require a lot of work due to the explicit nature of communication and the fact that the subroutine/function calls have many parameters the perfomance is typically good (if done right). Also, with MPI the programmer is completely in charge of the parallelization and nothing is left to the compiler.

Within a node one can use **shared memory parallelization** in which the parallel *threads* can access all the shared memory independently. This on the other hands makes programming easier but on the other hand can lead to poor performance and seemingly random errors that are difficult to find if not done correctly. The most popular shared memory parallelization method in scientific computing is to insert OpenMP pseudo comments in the code to tell a compatible compiler that the adjacent code can be parallelized. In Fortran the pseudo comments are called *directives* and in C/C++ *pragmas* and they affect the compilation only if the compiler is instructed to look for them. At least in theory it is then possible to have a single source code that can be compiled for serial and parallel computing. 

With OpenMP the programmer mostly relies on the compiler for the actual parallelization. Additionally, with OpenMP a code can be parallelized incrementally, which is quite convenient. This is in contrast to MPI where the parallelization is an all-or-nothing enterprise and once parallelized the code cannot be run serially (or at least without the MPI library).

For **GPU parallelization** the most common alternatives are currently the following:
- CUDA is an extension to C by the GPU vendor Nvidia. With CUDA the parts of the code that are to be run on CPUs are written in C/C++ and the computing intensive parts that are offloaded to GPUs called *kernels* are written in CUDA. CUDA is relatively low level approach that requires a lot of work and careful programming to utillize the highly parallel processor. When done right the performance is good.
- HIP can be considered to be the AMD version of CUDA and the conversion between them is mostly one-to-one.
- OpenACC is a directive based approach to GPU programming available for Fortran and C/C++. The programmer inserts special pseudo comments to the program based on which a compatible compiler generates the necessary machine code for GPU execution. Programming with OpenACC is easier than with CUDA and the performance is quite good.
- During the last few years OpenMP has been extended to support GPU offloading and it is quite comparable to OpenACC. Currently the compiler support is not quite on a satisfactory level but in the long run OpenMP is considered (or at least hoped) to become mainstream for GPU programming.
- Various portability frameworks like Kokkos, Raja and SYCL.

### Portability

