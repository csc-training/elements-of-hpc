# How are supercomputers programmed?

Programming scientific applications for supercomputers shares many
similarities to programming "ordinary" applications for desktop
computers, mobile devices, or web services, and some of the tools used
are very similar. Then again, some aspects of programming for
supercomputers are very different.

For desktop applications, the graphical user interface is an important
element, whereas many scientific applications, especially
non-commercial ones, might not even have a graphical user interface at
all. In a desktop application, whether an operation takes 0.01 seconds or
0.10 seconds is most likely irrelevant to the user, but if the operation
is executed ten million times in a scientific application, the
difference is ten days! Thus, good performance is often much more
critical for supercomputer applications.

Another major difference is that desktops only have a few CPU cores in
comparison to the hundreds of thousands in the biggest supercomputers,
and thus, very different approaches are needed in parallel programming
to fully utilize the hardware.

### Portability

Portability is also an other concept that needs to be considered while designing software. It addresses whether and how easily a program can be transferred from one system to another. In addition to differing hardware (most importantly CPUs and GPUs), systems may have different compilers and
libraries available. In an ideal world, a program could be without any
modifications compiled and run on any system with good performance. In
practice, this is not the case. Sometimes, the source code needs
to be modified or the program may compile but crashes when run, and
sometimes, the performance is not sufficient.

CPU programs written in Fortran, C/C++ or Python and parallelized with
MPI or OpenMP are generally portable with good performance. However,
the GPU world is currently more complicated since the focus on the field is still quite new, there are a number of competing vendors and proprietary languages and programming models often are designed by the vendors for specific hardware.

### High performance libraries 
While scientific computing programs solve or simulate a huge
number of different problems, many of them need to perform similar
subtasks of e.g. numerical mathematics, such as solving systems of
linear equations and eigenvalue problems or performing various matrix
operations, fast Fourier transforms and so on. To make the software
developer's task easier, the most common algorithms and operations are
available in performance-optimized subroutine libraries that can be
*linked* to the main program.

In addition to providing convenient tools for common tasks, the
libraries can typically provide greatly improved performance over
naïve algorithms. Getting everything out of the CPU can require
tedious optimizations, which in many cases can mean different
approaches depending on the underlying hardware. These high performance libraries are often a product of decades of development. Being maintained for the latest hardware and advances in language and compiler improvements and changes.

Already existing libraries for common methods give the developer/scientist the freedom to not reinvent the wheel. This saves plenty of time and allows for more thought to be put into the actual science. Often designing your own software for generic methods/algorithms can lead to poor and inefficient code, and even worse, use of time. Also it is good to note that general and standardized packages maintained over advance in technology are a good measure to uphold portability. This is also a double edged sword since some obscure and less known packages will add dependencies that are often not met in every and all super computing environments.
