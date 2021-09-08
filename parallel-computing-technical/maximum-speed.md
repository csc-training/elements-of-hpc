<!-- Includes material from "Supercomputing" online-course (https://www.futurelearn.com/courses/supercomputing/)
by Edinburgh Supercomputing Center (EPCC), licensed under Creative Commons SA-BY -->

# Maximum supercomputer performance in practice

Modern CPU cores perform arithmetic operations extremely fast, and the
main bottleneck is typically how fast we can feed data to the
CPU. Neglecting the disk (which is mostly used at the start and at the
end of the application), the slowest part of the chain feeding data to
the CPUs in a supercomputer is the interconnect.

Even though the latency in Mahti might sound impressive, the CPU cores
running at 2.6 GHz could perform about 20 000 floating point operations in
0,5 microseconds. Communicating 20 000 floating point numbers with 200
Gb/s bandwidth takes about 6.4 microseconds, in which time the CPU
core could perform over 270 000 floating point operations. In this
case, a CPU core could achieve only about 7 % of it's theoretical peak
performance, assuming that all the instruction level parallelism and
vectorization is fully utilized.

In practice the situation is not that bad, as not all the data needs to be
communicated via the interconnect, and in many cases one uses the same
data for several arithmetic operations. Some problems are closer to
the trivially parallel case, and in these cases the main memory within a node
is typically the biggest bottleneck. The various caches,
algorithmic choices and programming techniques can increase the
achievable performance, *e.g* in some cases it is possible to perform
computation and communication simultaneously.

Different scientific problems have different inherent limits (for
example, how many operations are performed per each memory/interconnect
access, how often data needs to be copied between CPUs and GPUs, etc.), but in
best cases (such as the LINPACK benchmark) it is possible to obtain up to 80 %
of the theoretical peak performance of a supercomputer.
