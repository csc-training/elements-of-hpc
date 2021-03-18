# High performance libraries

While the scientific computing programs solve or simulate a huge
number of different problems, many of them need to perform similar
subtasks of e.g. numerical mathematics such as solving systems of
linear equations and eigenvalue problems or performing various matrix
operations, fast Fourier transforms and so on. To make the software
developer's task easier the most common algorithms and operations are
available in performance optimized subroutine libraries that can be
*linked* to the main program.

In addition to providing convenient tools for common tasks, the
libraries can typically provide greatly improved performance over
naive algorithms. Getting everything out from the CPU can require
quite tedious optimizations, which can mean in many cases different
approaches depending on the underlying hardware. By utilizing high
performance libraries also performance portably is thus improved.

As an example, the basic mathematical formulation of a matrix-matrix
product $$C = A B$$ is:

$$
C_{ij} = \sum_k A_{ik} B_{kj}.
$$

This is straigthforward to program, for example, in Fortran the code
would be:
```fortran
...
integer, parameter :: M=100, N=200
real :: A(M, N), B(N, M), C(M, M)
integer :: i, j, k

! Initialize A and B
...
do i=1, M
  do j=1, M
    do k=1, N
      C(i, j) = C(i, j) + A(i, k) * B(k, j)
    end do
  end do
end do
...
```
However, this naive algorithm is very inefficient. By using an optimized
high performance library the matrix multiplication can in many cases be
over 100 times more efficient.
