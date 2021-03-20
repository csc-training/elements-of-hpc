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

![Computing in parallel](images/compp.png)

How a problem is split into smaller subtasks depends fully on the problem.
There are various paradigms and programming approaches how to do this,
and in the [next step](concepts.md) we will discuss some of them in more
detail.

# Example: How to compute a sum in parallel?

Let us assume that Alice and Bob want to compute the sum of 20 numbers (say,
the prices of their grocery shopping). Either Alice or Bob could do it alone,
just like a single CPU core could compute it *in serial*. But how could they
do it *in parallel*?

In order to compute the sum in parallel, Alice and Bob
could divide the numbers in two and then each compute the sum of their own
half. After Alice and Bob have computed these partial sums, all they need
to do is to add them up to have the total sum of all numbers. If
the calculation by Alice alone would take 20 seconds, in an ideal case,
Alice and Bob together could solve the problem together in only 10
s. Also, if the maximum amount of numbers Alice can compute alone is
20 (in computer the limitation could come from the amount of memory
available for the processing unit), together Alice and Bob could
compute 40 numbers.

The problem of Alice and Bob illustrates the two benefits of parallel
computing: making computations faster and enabling larger computations.

![Alice and Bob calculate a sum in parallel](images/alice-bob-sum.png)

FIXME: missing figure (alice-bob-sum), rough idea:
       - divide numbers into two groups (e.g. lotto-balls in two piles)
       - calculate partial sums
       - combine partial sums into the final result
