# Portability

Portability means whether and how easily a program can be transferred
from one system to another. In addition to different hardware (most
importantly CPUs and GPUs), systems may have different compilers and
libraries available. In an ideal world, a program could be without any
modifications compiled and run on any system with good performance. In
practice, this is not the case. Sometimes, the source code needs
to be modified or the program may compile but crashes when run, and
sometimes, the performance is not sufficient.

CPU programs written in Fortran, C/C++ or Python and parallelized with
MPI or OpenMP are generally portable with good performance. However,
the GPU world is currently more complicated as there are a number of
competing vendors and proprietary languages and programming models.
