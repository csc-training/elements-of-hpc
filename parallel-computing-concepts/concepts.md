<!-- Title: Parallel programming concepts -->

<!-- Short description:

In this article we briefly introduce some key concepts related to parallel
programming.

-->

## Types of parallel problems

Parallel programs can be divided in two limiting classes: trivially
parallel and tightly coupled. 

In trivially parallel cases there is very little (or no)
interaction between subtasks. In the example of Alice and Bob,
interaction is needed in distributing the work and in combining the
partial sums. However, during the computing of the individual partial
sums no interaction is needed, and the problem can be considered
trivially parallel. If the problem would be different and Alice would
need to interact regularly with Bob during her computations, problem
would be considered tighly coupled (TODO: can we think of easy to
understand tightly coupled problem?)

Programming trivially parallel problems is
typically easier, and there are no high demands for the connection
between CPUs. In best cases computers all over internet can be used
for computing in parallel such as in the
[Folding@home](https://foldingathome.org/) project where protein
folding is studied using personal computers all over world.
In tightly coupled problems programming is more involved and low
latency, high speed interconnect  between the CPUs is essential for
good performance. Weather simulation is a typical example of tightly
coupled problem. 

Many real-world problems fall naturally somewhere between the two extreme
cases.

## Parallel scaling

When the size of the input data is kept constant, but one increases
the number of processing units, we typically speak about *strong
parallel scaling*. The purpose of parallel programming in this case is
to decrease the time to solve the problem. The parallel speed-up can
be defined as

$$
S = \frac{T_s}{T_{p}},
$$

where $$T_s$$ is the execution time in serial, and $$T_p$$ is the execution time with $$p$$ processing units.

In ideal case the speed-up should be directly proportional to the
number of processing units. If for example, Alice and Bob would invite
also their friends Joe and Lucy to help in summing the numbers, the
solution would take only 5 s (in the serial case, i.e. Alice alone, 20
s was needed). In real-world problems this is rarely the case, and 
typically when increasing the number of processing units enough the execution
time can even start to increase.

![Parallel scaling](images/scaling.png)

As discussed earlier, parallel computing is not used only for
speeding up problems, but also to enable studies of larger or more
accurate problems. In these situations, 
both the amount of data and number of processing units are increased at the
same time, and one speaks about *weak parallel scaling*. In ideal weak scaling
case the execution time remains constant when the amount of data and
the number of processing units are increased in same proportion. If
Alice wanted to sum 80 numbers instead of 20, and asked Bob, Joe and
Lucy to help, ideally 20 s would be needed as in the original problem.

Similar to strong scaling, real-world problems rarely exhibit ideal
weak scaling, even though good weak scaling is typically easier to
achieve than good strong scaling.

## What limits parallel scaling?

There are several factors which can limit the parallel scaling. Typically,
parallel program needs to perform some additional operations which are not
present in serial program. There can be some redundant computations, data needs
to be communicated, and the processing units need to be synchronized. If there
is imbalance in the distribution of the workload, execution time is limited
by the slowest execution unit, and others need to wait its completion. There
can be also serial parts in the program i.e. parts that cannot be parallelized.
If we designate with $$p_f$$ the fraction of the problem that can be
parallelized, then the maximum possible speed-up (so called Amdahl's law) is

$$
S_{max} = \frac{1}{1 - p_f}
$$

As an example, if only 90 % of the problem can be parallelized, maximum
speed-up is 10 even if one was using 1000 CPU cores.

Let's illustrate some of these limits with the help of Alice and
friends. Let's assume it takes 1 s to sum two numbers and 0.1 s to
communicate a single number. For Alice alone the time to solution
would be then 19 s, i.e. $$T_s=19$$ (note that there are 19
computations when summing 20 numbers). If we neglect any time needed
for setting up the problem and distributing the work, when doing the
job with Bob, both can sum their 10 numbers simultaenously in 9 s,
however, Bob needs in the communicate his partial result to Alice, and
Alice to perform final summation. Thus, the total time needed is

$$
T_2 = 9 + 0.1 + 1 = 10.1
$$

When Joe and Lucy join, each can sum simultaneously 5 numbers, but
more time is needed in communicating the partial sums to Alice and for
Alice performing the final summation,

$$
T_4 = 4 + 3 \cdot 0.1 + 3 \cdot 1 = 7.3
$$

If we increase the number of workers even more to eight people, we
notice a new issue: 20 numbers cannot be distributed evenly to eight workers
($$ 20 / 8 = 2.5 $$), i.e. there is a load imbalance. The best one can
do is to have four people to process 3 numbers and the four other 2
numbers ($$4 \cdot 3 + 4 \cdot 2 = 20$$). However, as all parallel
work needs to be finished before Alice can gather partial results and
combine them into final one (this type of operation is called
reduction), the "parallel time" of the operation is determined by the
workers processing three numbers and the total time is

$$
T_8 = 2 + 7 \cdot 0.1 + 7 \cdot 1 = 9.7
$$

Thus, it takes more time for eight workers than for four workers! If
the work distribution was done in less intelligent way, i.e. seven
workers processing two numbers and single worker processing six
numbers, time needed would be 12.7 s, i.e. worse than with only two
workers.

In this example, we notice also that the computing time for individual
worker decreases with a number of workers, but the communication time
as well as time needed for final summation increases. Even though the
reduction can in practice be performed in a smarter way, it will still
induce a parallel overhead. Generally, the smaller we make the
subproblems, the more severe the communication overhead and load
imbalance is. If the problem involved summing 1001 numbers (still
having some load imbalance), the overheads would be much less
significant:

$$
T_s = 1000,
$$

$$
T_8 = 125 + 7 \cdot 0.1 + 7 \cdot 1 = 132.7,
$$

and

$$
S = \frac{T_s}{T_{8}} = 7.5
$$

which is would be considered a very good parallel speedup.

As most real-world problems are much more complex than the one Alice
and friends are solving, it should not be difficult to figure that
minimization parallel overheads, maximizing ratio of computing to
communication and maintaining good load balance can be very
challenging with many parallel workers.

## Exposing parallelism

One common way to expose parallelism is by distributing the data, for example
an array, to individual processing units.

![Data parallelism](images/data-parallel.svg)

Each processing unit (e.g. CPU core) holds part of the data, and performs
typically identical or at least very similar operations on the data. Processing
units may need to interact with each other, for example exchange information
about the data on the domain boundaries.

Other common parallelization model is the task farm (or main / worker)
approach, where one processing unit sends tasks to workers and
receives then results from them.

![Task farm](images/task-farm.svg)

The tasks can be computationally similar, but in some cases they can be also
completely different. There are often more tasks than workers, and tasks are
then dynamically assigned to workers.

Task farm and data parallel approaches can be also combined, for example,
each worker could consist of multiple execution units, and the data related
to task is then distributed to them.

