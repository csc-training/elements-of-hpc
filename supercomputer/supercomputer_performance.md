# Supercomputer performance

There are some common metrics for measuring how powerful a
supercomputer is and to compare it with other ones. The oldest and
most classic one is the number of floating point operations per second
(FLOP/s) that the computer can perform.

What is a FLOP/s? If we do a single calculation involving two real numbers
(floating point numbers), e.g. `2.1 + 4.3`, in one second, that
is equal to one floating-point operation per second (1 FLOP/s).

When a computer can execute 1 billion FLOP/s, then we can say its
performance is 1 giga FLOP/s (GFLOP/s). Similarly, one trillion
(10<sup>12</sup>) FLOP/s is 1 tera FLOP/s (TFLOPs), and when a supercomputer can
execute 1 quadrillion or 10<sup>15</sup> FLOP/s, 1 peta FLOP/s (PFLOPs).

The pure computing power of a CPU core is determined by the
clock speed and the maximum number of floating operations it can perform in one
clock cycle. As an example, a CPU core in laptop might have a clock speed of
3 GHz (3 billion cycles per second) and perform 16 floating operations
per cycle, having a peak performance of about 50 GFLOP/s per
core. This pure computing power is the theoretical peak performance
of a CPU core. For a multicore CPU, the theoretical peak performance is
the number of CPU cores times the theoretical peak of a single
core. Similary, one can calculate the theoretical peak performance
of GPUs. Furthermore, the theoretical peak performance of a whole
supercomputer is obtained by multiplying the theoretical peak
performance of its CPUs and GPUs by the number of them in the system.

As the term *theoretical* might suggest, this computing power cannot
be obtained normally in real calculations. Before a CPU can calculate
`2.1 + 4.3`, it needs to fetch two numbers from memory, and afterwards
it needs to store the result back to memory. This does
not happen instantaneously, so in practice computational speed is
determined not only by the pure computing power of a CPU, but also by
how fast the CPU can access the memory. Different applications have
different ratio of floating operations per memory access. In some
cases the same number is used in multiple computations *e.g.*
when calculating both `2.1 + 4.3` and `2.1 + 5.3`. If the speed of
memory access is the limiting factor (as is the case with most modern
computers), applications performing many floating point operations
with the same data can achieve larger proportion of the peak
performance than applications with fewer operations per data. In
supercomputers, a CPU in one node might need also to access data in
another node, and thus the speed of communicating data between nodes can
also limit the practical performance. Real world applications also need to
read and write data to the disk, which means that also the speed of I/O
(input/output or transfer of data between processors and storage) may
further limit the performance.

TODO: Illustration idea: sketch a picture representing the different aspects
affecting practical performance.

## TOP500 list

_Benchmark_ is an application which is used to measure the performance
and functionality of a (super)computer. Typically, the runtime of the
benchmark application is recorded and used as a metric.
With benchmarks, one can compare the performance of different computers.

[LINPACK](https://www.top500.org/project/linpack/) is a common
benchmark which measures a system's floating point computing
power. LINPACK performs linear algebra operations to solve a system of
linear equations, and it achieves typically about 75% of the theoretical peak
performance.

[TOP500](https://www.top500.org) is a ranking list for supercomputers that
collects LINPACK results submitted by organizations that operate a supercomputer. 
The list is released twice a year and shows the 500 most powerful supercomputers 
in the world ranked according to their computational power measured by the LINPACK benchmark.

In the first ever TOP500 list, June 1993, the most powerful supercomputer was
from USA
and had a performance of 60 GFLOP/s. In comparison, in November 2020, the
fastest supercomputer (from Japan) had a performance of 440 PFLOP/s, which is
almost 7 million times faster than the winner 27 years
before. Similarly, the last system (#500) on the list in June 1993 had
a power of 0,4 GFLOP/s, while in November 2020 it had a power of 1,3 PFLOP/s,
which is about 3
million times faster. Just like normal computers, supercomputers have
exhibited a tremendous increase in computational power over these years.

<!-- Image copyright TOP500.org (c) -->
!["TOP500 performance"](./images/top_500.png)
*TOP500 list from 1993*

To compare and understand this better, modern laptop can have
performance of around 300 GFLOP/s, which means that it would have been
the number one supercomputer in June 1993. In 2020, the number one
supercomputer has the power equivalent to over million laptops.

The Mahti supercomputer at CSC – IT For Science has a power of 7,5 PFLOP/s,
which means it can execute `7.5*10^15` operations per second, corresponding to
around 24 000 laptops combined. Even if all people on Earth would do one math
operation per second, the combined performance would still be 1 million times
lower than that of Mahti.

The LUMI supercomputer will have a theoretical peak performance of 550 PFLOP/s
and is expected to be in the top 10 supercomputers of the world when it is
installed in 2021.

Performance terminology:

| Operations per second     | Scientific notation | Metric prefix | Unit    |
|---------------------------|---------------------|---------------|---------|
| 1 000                     |     10<sup>3</sup>  |  Kilo         | KFLOP/s |
| 1 000 000                 |     10<sup>6</sup>  |  Mega         | MFLOP/s |
| 1 000 000 000             |     10<sup>9</sup>  |  Giga         | GFLOP/s |
| 1 000 000 000 000         |     10<sup>12</sup> |  Tera         | TFLOP/s |
| 1 000 000 000 000 000     |     10<sup>15</sup> |  Peta         | PFLOP/s |
| 1 000 000 000 000 000 000 |     10<sup>18</sup> |  Exa          | EFLOP/s |

