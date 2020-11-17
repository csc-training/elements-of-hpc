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


### Portability
