# Programming languages in supercomputers

Based on the [Google searches for programming language
tutorials](https://pypl.github.io/PYPL.html), the five most popular
programming languages in 2021 are Python, Java, Javascript, C#, and
C/C++. However, in the context of high performance computing, Java, Javascript
and C# are practically non-existing, and the dominant languages are
currently Fortran and C/C++. In addition, Python (typically in
combination with C/C++) has been steadily increasing for a long time,
and as a newcomer Julia has been arousing interest. Nowadays, it is
also common to use several programming languages in a single
application and all the languages support interoperability, i.e. it is
possible to call subroutines written in a different programming language.

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
2018, and the next revision is planned for 2021-2022.

Large multidimensional numerical arrays are a key data structure in many
scientific applications, and the major attraction of Fortran has been the
convenient and efficient tools it provides for dealing with them. The
structure of the language is also well suited for compiler optimizations,
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
Fortran is a compiled language, meaning that the source code file is
first passed through a *compiler* that produces a machine language
*executable* file which can then be run on a computer.

The above code can be compiled with the GNU Fortran compiler
(often available by default in Linux systems) and then run as:

```bash
$ gfortran -o sum sum.F90
$ ./sum
 sum of array   4950.00000
```

A large collection of scientific and numeric
subroutine libraries are also available for Fortran programmers.


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
that can access it (*methods*) are packaged in so called
*objects*. This approach allows better control of how the data is
manipulated and thus reduces the risk of programming errors especially
in large projects where a number of developers contribute to the same
program. C++ is becoming more important in scientific computing and
many new parallelization extensions, libraries etc. are first
implemented for C++, especially when GPUs are targeted.

The C++11 standard included a multithreading functionality, which can
be used for shared memory parallelization. For distributed memory
parallelization, additional communication libraries are needed.

In C++, the program calculating the sum of elements in an array looks like:
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
The above code can be compiled with the GNU C++ compiler
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
development, and it is used especially in writing the high level logic of
algorithms.

Python is an interpreted language, which means that a
separate compilation step is not needed. Partly due to the interpreted
nature, the performance of pure Python programs is often
subobtimal. Thus, in scientific applications Python is typically
combined with C/C++ or
Fortran for the performance critical parts of the application. Python
has many extension modules for numerical and scientific computing,
as well as, data science applications. Many current artificial intelligence
frameworks provide a Python front-end for setting up the model.

Python standard library has functionality for shared memory
parallelization, but for distributed memory parallelization separate
extensions are needed.

In Python, the sum of an array could be implemented as:
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

Julia is a relatively new programming language, as it was introduced
only in 2012. Julia is a flexible and dynamic language, and it aims to
combine rapid development (like Python) with a performance similar to
C/C++ and Fortran. Julia is designed from the beginning with
numerical and high performance computing in mind.
Julia is multi-paradigm, combining features of imperative, functional,
and object-oriented programming. Similar to Python, Julia does not
need a separate compilation step, but a just-in-time compilation is
carried out in the runtime.

Julia itself contains functionality both for shared memory and
distributed memory parallelization, but there are also extension
packages for parallel programming.

Sum of an array looks in Julia as:
```julia
array = Array{Float32}(range(0, length=100))

println("Sum of array ", sum(array))
```
And the program would be run as
```bash
$ julia sum.jl
Sum of array 4950.0
```
