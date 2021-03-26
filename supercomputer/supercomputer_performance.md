# Supercomputer performance

There are some common metrics for measuring how powerful a
supercomputer is and to compare it with other ones. The oldest and
most classic one is the number of floating point operations per second
(FLOP/s) that the computer can perform.

What is a FLOP/s? Floating point number is the computer representation
of real number. If we do a single calculation involving two real
numbers, e.g. `2.1 + 4.3`, in one second, that is equal to one
floating-point operation per second (1 FLOP/s). The operations
considered in this measure are the basic arithmetic operations:
addition, subtraction, multiplication, and division. Computers can operate
also on integer numbers, and even thought integer performance is
important for some applications, in most scientific problems
the vast majority of arithmetic operations are with real numbers, thus
FLOP/s has become the standard measure.

When a computer can execute 1 billion FLOP/s, then we can say its
performance is 1 giga FLOP/s (GFLOP/s). Similarly, one trillion
(10<sup>12</sup>) FLOP/s is 1 tera FLOP/s (TFLOPs), and when a supercomputer can
execute 1 quadrillion or 10<sup>15</sup> FLOP/s, 1 peta FLOP/s (PFLOPs).

CPU has a theoretical peak performance which is determined by the
clock speed and the maximum number of floating operations it can perform in one
clock cycle. As an example, CPU in laptop might have a clock speed of 3 GHz (2 billion cycles per
second) and perform 16 floating operations per cycle, having a peak
performance of about 50 GFLOP/s per core. Theoretical peak performance
of a supercomputer is obtained simply by multiplying the peak
performance of single core with the total number of CPU
cores (in systems with GPUs one adds naturaly also the theoretical
peak performance of GPUs).

In practice, theoretical peak performance is never achieved as other
characteristics of the system limit the performance. In case of a
single CPU, the time to access memory can limit the performance, and
for a supercomputer the interconnect between the nodes can be further
limiting factor. Real world applications need to also read and write
to the disk so that the speed of the I/O (input/output or transfer of
data between processors and storage) may play a role.

## TOP500 list

_Benchmark_ is an application which used to measure the performance
and functionality of a (super)computer. Typically, the runtime of the
benchmark application is recorded and used as a metric. 
With benchmarks, one can compare the performance of different computers.

[LINPACK](https://www.top500.org/project/linpack/) is a common
benchmark which measures a system's floating point computing 
power. LINPACK performs linear algebra operations to solve a system of
linear equations, and it achieves typically about 75% of the theoretical peak performance.

[TOP500](https://www.top500.org) is a ranking list for supercomputers that collects LINPACK results
submitted by organizations that operate a supercomputer. The list is released
twice a year and shows the 500 most powerful supercomputers in the world
ranked according to their computational power measured by the LINPACK benchmark.

In the first ever TOP500 list, June 1993, the most powerful supercomputer was from USA
and had a performance of 60 GFLOP/s. In comparison, in November 2020, the
fastest supercomputer (from Japan) had a performance of 440 PFLOP/s, which is
almost 7 million times faster than the winner 27 years
before. Similarly, the last system (#500) on the list in June 1993 had
a power of 0,4 GFLOP/s, while in November 2020 it had a power of 1,3 PFLOP/s, which is about 3
million times faster. Just like normal computers, supercomputers have
exhibited a tremendous increase in computational power over these years.

!["TOP500 performance"](./images/top_500.png)
*TOP500 list from 1993*

To compare and understand this better, modern laptop can have
performance of around 300 GFLOP/s, which means that it would have been
the number one supercomputer in June 1993. In 2020, the number one supercomputer has the
power equivalent to over million laptops.

The Mahti supercomputer at CSC – IT For Science has a power of 7,5 PFLOP/s,
which means it can execute `7.5*10^15` operations per second, corresponding to around 24 000
laptops combined. Even if all people on Earth would do one math
operation per second, the combined performance would still be 1 million times
lower than that of Mahti.

The LUMI supercomputer will have a theoretical peak performance of 550 PFLOP/s and
is expected to be in the top 10 supercomputers of the world when it is installed in 2021.

Performance terminology:

| Operations per second     | Scientific notation | Metric prefix | Unit    |
|---------------------------|---------------------|---------------|---------|
| 1 000                     |     10<sup>3</sup>  |  Kilo         | KFLOP/s |
| 1 000 000                 |     10<sup>6</sup>  |  Mega         | MFLOP/s |
| 1 000 000 000             |     10<sup>9</sup>  |  Giga         | GFLOP/s |
| 1 000 000 000 000         |     10<sup>12</sup> |  Tera         | TFLOP/s |
| 1 000 000 000 000 000     |     10<sup>15</sup> |  Peta         | PFLOP/s |
| 1 000 000 000 000 000 000 |     10<sup>18</sup> |  Exa          | EFLOP/s |

