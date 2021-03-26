<!-- Adapted from material in "Supercomputing" online-course (https://www.futurelearn.com/courses/supercomputing/)
by Edinburgh Supercomputing Center (EPCC), licensed under Creative Commons SA-BY -->


# Shared memory architecture

When a problem is solved in parallel, in most cases some sharing of information
between the different CPU cores is needed, *i.e.* the CPU cores need to
communicate with each other. One way to communicate is via shared memory.

The fundamental feature of a shared-memory computer is that all the
CPU cores are connected to the same piece of memory.

![Memory structure of Modern computer](images/shared-memory-architecture.png)

This is achieved by having a memory _**bus**_ that takes requests for
data from multiple sources (here, each of the four separate CPU cores)
and fetches the data from a single piece of memory. The term _bus_
apparently comes from the Latin _omnibus_ meaning _for all_,
indicating that it is a single resource shared by many CPU cores.

This is the basic architecture of a modern mobile phone, laptop or
desktop PC. If you buy a system with a quad core processor and 4
GBytes of RAM, each of the 4 CPU cores will be connected to the same 4
Gbytes of RAM, and they'll therefore have to play nicely and share the
memory fairly between each other.

A good analogy here is to think of four office mates or workers (the
CPU cores) sharing a single office (the computer) with a single
whiteboard (the memory). Each worker has their own set of whiteboard
pens and an eraser, but they are not allowed to talk to each other.
Instead, they can only communicate by writing to and reading from the
whiteboard. In the case of Alice, Bob, Joe and Lucy summing up the numbers,
every one can read their part of the numbers from the whiteboard, and
compute then the partial results. Once finished with the computations, every
one can write their partial results to the whiteboard. Alice can then read the
partial results and perform the final summation.

Some key challenges of shared memory approach are already illustrated by this
whiteboard analogy:

1. **_memory capacity_**: there is a limit to the size of the
whiteboard that you can fit into an office, i.e. there is a limit to
the amount of memory you can put into a single shared-memory computer;

2.  **_memory access speed_**: imagine that there were ten people in
the same office - although they can in principle all read from and
write to the whiteboard, there's simply not enough room for more
than around four of them to do so at the same time before they start
to get in each other's way. Although you can fill the office with
more and more workers, their productivity will stall after
about 4 workers because the additional workers will spend more and
more time idle as they have to queue up to access the shared
whiteboard. At worst, the additional workers are disturbing, and
the productivity can even decrease with too many workers.

3. **_race conditions_**: as all workers can access all the data, they can by
accident also delete or alter data of other workers. Imagine that the
whiteboard would be filled with numbers, and in order to write, one first needs
to erase part of the whiteboard. Thus, one needs to make sure that it is OK
to erase that particular part.

### Limitations

It turns out that memory access speed is a real issue in shared-memory
machines. If you look at the processor diagram above, you'll see that
all the CPU cores share the same bus: the connection between the bus
and the memory eventually becomes a bottleneck and there is simply no
point in adding additional CPU cores. Coupled with the fact that the
kinds of programs we run on supercomputers tend to read and write
large quantities of data, it is often memory access speed that is the
limiting factor controlling how fast we can do a calculation, not the
floating-point performance of the CPU cores.

There are various tricks to overcome these two issues, but the
overcrowded office clearly illustrates the fundamental challenges of
this approach if we require many hundreds or thousands or even
hundres of thousands of CPU cores.

### Advantages

There are naturaly also advantages in the shared memory approach. Even though
one needs to be aware of race conditions, parallel programming with shared
memory is relatively simple. Also, as long as the memory bus is not a
bottleneck, the performance is typically good as there is no additional
overhead from the communication.

<!-- Despite its limitations, shared memory architectures are universal in
modern processors. What do you think the advantages are?

Think of owning one quad-core laptop compared to two dual-core laptops - which
is more useful to you and why?

**Share and discuss your ideas with your fellow learners!**
-->
