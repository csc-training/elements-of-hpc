<!-- Title: Case study: Parallel sum -->

<!-- Short description:

In this article, we walk through an example parallel algorithm that calculates
the total sum of all elements in an array in parallel.

-->

# Case study: parallel sum

How can a problem be split into smaller pieces that can be executed in
parallel? How to do it efficiently? These are the key questions when
designing a parallel algorithm.

Designing a good strategy for work distribution is usually the most essential
part of writing a parallel program. Common approaches utilise either data
parallelism or task parallelism. In *data parallelism*, one distributes a
(large) dataset to multiple processors, and then the processors operate on
separate pieces of the data in parallel. In *task parallelism*, one breaks down
the algorithm into smaller tasks that are then distributed and executed in
parallel.

Let us now look into an example implementation of a parallel algorithm for
calculating the sum of all values in an array. For this example we will be utilizing a parallel computing technology known as MPI. MPI or Message Passing Interface is a technology that allows multiple nodes or cores to communicate and execute computation in parallel with each other. MPI allocates isolated memory for each rank, which means a rank cannot access the information another rank uses.

Depending on the context a rank is often synonymous with a CPU core. Another synonym for rank in most cases is process. In the figures below ranks/processes are indexed as P0 and P1 while in the text they're referred to as ranks. Hopefully this clears up any confusion.

## Initial state

Assume we have an array A that contains a large number of floating point
numbers. The values have been read from a file by the first MPI task (rank 0).

![](images/parallel-sum-0.png)

## Goal

Calculate the total sum of all elements in array A in parallel.

## Parallel algorithm

Our parallel algorithm consist of four main steps: 1) distribute the data,
2) compute local sums, 3) gather the partial results, and 4) compute the total
sum. Steps 1 and 3 can be further broken down into substeps to better
illustrate the MPI communication needed.

~~~
1. Scatter the data
   1.1. Receive the operation for scatter
   1.2. Send the operation for scatter
2. Compute the partial sums in parallel
3. Gather the partial sums
   3.1. Receive the operation for gather
   3.2. Send the operation for gather
4. Compute the total sum
~~~
### Step 1: Scatter the data

The first step is to distribute the data that needs to be processed. This happens in two parts using the commands `MPI_Send` and `MPI_Recv`

### Step 1.1: Receive the operation for scatter

The first step is that P1 informs P0 that it is ready to receive the other half of array A using the `MPI_Recv` command. The receive operation happens first so that P0 can be sure that the information it sends is not lost.

![](images/parallel-sum-1.1.png)

### Step 1.2: Send the operation for scatter

After P0 has become aware of the `MPI_Recv` posted by P1, it proceeds by posting a `MPI_Send` operation. Thus P0 will receive the latter half of the array.

![](images/parallel-sum-1.2.png)

### Step 2: Compute the partial sums in parallel

Now that both of the ranks have an even amount of data to process, they can proceed with the summation. Since the processes are on individual cores, computation can happen in parallel.

![](images/parallel-sum-2.png)

### Step 3: Gather the partial sums

Now that the partial sums have been computed they need to be relocated to the main rank. Often this so called main rank is rank 0. Additionally to the operations that happen in parallel, rank 0 handles most of the serial processes — serial meaning sequential computation and not parallel — that the program requires. Rank 0 can be considered a main hub.

### Step 3.1: Receive the operation for gather

As in step 1.1 the same operation needs to happen but in reverse. Now P0 informs that it is ready to receive the parallel sum computed by P1 using `MPI_Recv`.

![](images/parallel-sum-3.1.png)

### Step 3.2: Send the operation for gather

Subsequently P1 puts out a `MPI_Send`, and after being informed that P0 is ready to receive data it proceeds to send the partial sum to P0.

![](images/parallel-sum-3.2.png)

### Step 4: Compute the total sum

Now that P0 is equipped with the partial sums that it itself and P1 computed, it is ready to calculate the final serial computation of summing the partial sums. After this our sum has been computed successfully in parallel. 

![](images/parallel-sum-4.png)
