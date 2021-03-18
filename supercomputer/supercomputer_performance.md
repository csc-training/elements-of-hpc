## Supercomputer performance

To measure how powerful a supercomputer is and to compare it with other ones,
there are a(???) few metrics. The oldest and most classic one is the number of floating point
operations per second (FLOPs) the computer can perform. This measures the performance of a processor
and not only. <-- FIXME

What is a FLOPs? If we do a single calculation involving two real numbers
(floating point numbers), e.g. `2.1 + 4.3`, in one second, that
is equal to one floating-point operation per second (1 FLOPs).

When a computer can execute 1 billion FLOPs, then we can say its performance is 1 gigaFLOPs
(GFLOPs). Similarly, one trillion
(10<sup>12</sup>) FLOPs is 1 teraFLOPs (TFLOPs), and when a supercomputer can
execute 1 quadrillion or 10<sup>15</sup> FLOPs, 1 petaFLOPs (PFLOPs).

In addition to the raw performance of processors, other characteristics of the system are also 
important. Most notably, the speed of the interconnect (the network between processors) and 
memory bus can significantly affect the overall performance. And depending on the application, the 
speed of the IO (input/output or transfer of data between processors and storage) subsystem may
play a role.

### TOP500

_Benchmark_ is an application used to measure the performance
and functionality of a (super)computer. Typically, the runtime of the benchmark application is recorded and used as a metric.
With benchmarks, one can compare the performance of different computers.

For example, the Linpack benchmark (HPL) measures a system's floating point computing
power. It measures how fast a computer does linear algebra operations to solve a system of
linear equations. Supercomputers have a theoretical peak performance based on their
hardware, but since this is a theoretical limit for a perfect system utilization, 
the actual performance measured by HPL is lower, typically about 75% of the theoretical peak performance.

_TOP500_ is a ranking list for supercomputers that collects HPL results
submitted by organizations that operate a supercomputer. The list is released
twice a year and shows the 500 most powerful supercomputers in the world
ranked according to their computational power measured by the HPL benchmark.

In the first ever TOP500 list, June 1993, the most powerful supercomputer was from USA
and had a performance of 59,7 GFLOPs. In comparison, in June 2020, the
fastest supercomputer (from Japan) had a performance of 415,5 PFLOPs, which is
almost 7 million times faster than the winner 27 years before. Similarly, the last system (#500) on the list in June 1993 had a power of 0,4
GFLOPs, while in June 2020 it had a power of 1,2 PFLOPs, which is about 3
million times faster. Just like normal computers, supercomputers have
exhibited a tremendous increase in computational power over these years.

!["TOP500 FLOPs"](./images/flops.png)
*FLOPs from the best systems in TOP500 list from 1993 until 2017*

To compare and understand this better, consider the MacBook Pro 13" 2020 model that has a
performance of around 311 GFLOPs, which means that it would have been the number one
supercomputer in June 1993, but in 2020, the number one supercomputer has the
power of around 1,3 million MacBook Pros.

The Mahti supercomputer at CSC – IT For Science has a power of 7,5 PFLOPs,
which means it can execute `7.5*10^15` operations per second, corresponding to around 24 000
MacBook Pros combined. Even if all people on Earth would do one math
operation per second, the combined performance would still be 1 million times
lower than that of Mahti.

The LUMI supercomputer will have a theoretical peak performance of 552 PFLOPs and
is expected to be in the top 10 supercomputers of the world when it is installed in 2021.

Performance terminology:

| Operations per second     | Scientific notation | Metric prefix | Unit   |
|---------------------------|---------------------|---------------|--------|
| 1 000                     |     10<sup>3</sup>  |  Kilo         | KFLOPs |
| 1 000 000                 |     10<sup>6</sup>  |  Mega         | MFLOPs |
| 1 000 000 000             |     10<sup>9</sup>  |  Giga         | GFLOPs |
| 1 000 000 000 000         |     10<sup>12</sup> |  Tera         | TFLOPs |
| 1 000 000 000 000 000     |     10<sup>15</sup> |  Peta         | PFLOPs |
| 1 000 000 000 000 000 000 |     10<sup>18</sup> |  Exa          | EFLOPs |

