<!-- Title: How to compute in parallel? -->

<!-- Short description:

In this article, we briefly introduce the basic idea of parallel computing and
demonstrate it with a simple example.

-->

# Computing in parallel

The underlying idea of parallel computing is to split a computational problem
into smaller subproblems. Many subproblems can then be solved
*simultaneously* by multiple processing units. In modern CPUs, the single
execution unit is typically a CPU core.

This for example cuts down the computation time of any given problem. For example weather forecasts which rely heavily on weather simulations wouldn't be ready in time if computed with a single core. If we divide the problem into a multitude of subtasks and compute them separately we cut down on computation time significantly. Thus we can predict next weeks weather before it happens. 

![Computing in parallel](images/compp.png)

[Serial vs. parallel computing](https://www.youtube.com/watch?v=XIiq7LUX7uo)

How a problem is split into smaller subtasks depends fully on the problem.
There are various paradigms and programming approaches how to do this,
and in the [next step](concepts.md) we will discuss some of them in more
detail.

# Example: How to compute a sum in parallel?

Let us assume that Alice and Bob want to compute the sum of 20 numbers, say,
the prices of their grocery shopping. Either Alice or Bob could do it alone,
just like a single CPU core could compute it *in serial*. But how could they
do it *in parallel*?

In order to compute the sum in parallel, Alice and Bob
could divide the numbers in two and then each compute the sum of their own
half. After Alice and Bob have computed these partial sums, all they need
to do is to add them up to have the total sum of all numbers. If
the calculation by Alice alone would take 20 seconds, in an ideal case,
together Alice and Bob could solve the problem in only 10
s. Also, if the maximum amount of numbers Alice can compute alone is
20 together Alice and Bob could
compute 40 numbers. In a computer such limitation could come from the amount of memory
available for the processing unit.

The problem of Alice and Bob illustrates the two benefits of parallel
computing: making computations faster and enabling larger computations.

![Alice and Bob calculate a sum in parallel](images/alice-bob-sum.png)

