<!-- Title: Parallel programming concepts -->

<!-- Short description:

In this article, we briefly introduce some key concepts related to parallel
programming.

-->

# Parallel programming concepts

## Parallel scaling

When the size of input data is kept constant but one increases
the number of processing units, we typically speak about *strong
parallel scaling*. The purpose of parallel programming in this case is
to decrease the time in solving the problem. The parallel speed-up can
be defined as

$$
S = \frac{T_s}{T_{p}},
$$

where $$T_s$$ is the execution time in serial, and $$T_p$$ is the execution
time with $$p$$ processing units.

In an ideal case, the speed-up should be directly proportional to the
number of processing units. If, for example, Alice and Bob would invite
their friends Joe and Lucy to help in summing up the numbers, the
solution would take only 5 s (compared to 20 s if Alice did it alone).
In real-world problems this is rarely the case. Better yet, typically when
increasing the number of processing units, at a certain tipping point, excecution time
can increase. 

![Parallel scaling](images/scaling.png)

As discussed earlier, parallel computing is not only used for
speeding up problems but also to enable studies of larger or more
accurate problems. In these situations,
both the amount of data and number of processing units are increased at the
same time, and one speaks about *weak parallel scaling*. In an ideal weak
scaling case, execution time remains constant when the amount of data and
the number of processing units are increased in the same proportion. If
Alice wanted to sum 80 numbers instead of 20 and asked Bob, Joe and
Lucy to help, ideally, 20 s would be needed, as in the original problem.

Similar to strong scaling, real-world problems rarely exhibit ideal
weak scaling, even though good weak scaling is typically easier to
achieve than good strong scaling.

## What limits parallel scaling?

There are several factors which can limit parallel scaling. Typically,
a parallel program needs to perform some additional operations which are not
present in a serial program. There may be some redundant computations, data may need
to be communicated, and processing units may need to be synchronized. If there
is an imbalance in the distribution of the workload, execution time is limited
by the slowest execution unit, and the others need to wait for its completion. There
can also be serial parts in the program, i.e. parts that cannot be parallelized.
If we designate with $$p_f$$ the fraction of the problem that can be
parallelized, then the maximum possible speed-up (so called Amdahl's law) is

$$
S_{max} = \frac{1}{1 - p_f}
$$

As an example, if only 90% of the problem can be parallelized, the maximum
speed-up is 10, regardless of the number of CPU cores used.

To summarize, the main causes limiting parallel scaling are:

- Parallel overheads
  - extra operations
  - communication and synchronization costs
- Load imbalance
- Serial parts in the problem


TODO: Idea: could the story below be illustrated with some figures or animation?

Let's illustrate some of these limits with the help of Alice and
friends. Let's assume it takes 1 s to sum two numbers and 0,1 s to
communicate a single number. For Alice alone, the solution
would take 19 s, i.e. $$T_s=19$$ (note that there are 19
computations when summing 20 numbers). If we neglect any time needed
for setting up the problem and distributing the work, when doing the
job with Bob, both can sum their 10 numbers simultaenously in 9 s.
However, Bob needs to communicate his partial result to Alice, and
Alice needs to perform the final summation. Thus, the total time needed is

$$
T_2 = 9 + 0.1 + 1 = 10.1
$$

When Joe and Lucy join, each can sum simultaneously 5 numbers, but
more time is needed to communicate the partial sums to Alice and for
Alice to perform the final summation,

$$
T_4 = 4 + 3 \cdot 0.1 + 3 \cdot 1 = 7.3
$$

If we increase the number of workers even further to eight people, we
notice a new issue: 20 numbers cannot be distributed evenly to eight workers
($$ 20 / 8 = 2.5 $$), i.e. there is a load imbalance. The best one can
do is to have four people process 3 numbers and the other four 2 numbers
($$4 \cdot 3 + 4 \cdot 2 = 20$$). However, as all parallel
work needs to be finished before Alice can gather the partial results and
combine them into the final one (this type of operation is called
_reduction_), the "parallel time" of the operation is determined by the
workers processing three numbers, and the total time is

$$
T_8 = 2 + 7 \cdot 0.1 + 7 \cdot 1 = 9.7
$$

Thus, it takes more time for eight workers than for four workers! If
the work distribution was done in a less intelligent way, e.g. seven
workers processing two numbers and single worker processing six
numbers, the time needed would be 12,7 s, which would lose even to
that of two workers.

In this example, we notice that the computing time for an individual
worker decreases with a number of workers, but the communication time
as well as the time needed for the final summation increases. Even
though the reduction can in practice be performed in a somewhat smarter way
than shown here, it will still induce a parallel overhead. In general,
the smaller we make the subproblems, the more severe the communication
and load imbalance overheads. If the problem would be to sum 1001
numbers (still having some load imbalance), the overheads would be much
less significant:

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

which would be considered a very good parallel speedup.

Also, if we consider a weak scaling case where the problem size is increased
to 160 numbers and we have eight workers, the time needed would be
$$20 + 7 \cdot 0.1 + 7 \cdot 1 = 27.7 s$$.

As most real-world problems are much more complex than the one Alice
and friends are solving, it is easy to imagine that it can be very
challenging to minimize parallel overheads and maximize the ratio of
computing to communication while maintaining a good load balance if one
uses many parallel workers.
