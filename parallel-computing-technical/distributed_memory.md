<!-- Adapted from material in "Supercomputing" online-course (https://www.futurelearn.com/courses/supercomputing/)
by Edinburgh Supercomputing Center (EPCC), licensed under Creative Commons SA-BY -->


# Distributed memory

Because of the technical challenges of having very large numbers of CPU cores
in a single shared-memory computer, all of today's supercomputers use the same
basic approach to build a very large system: take lots of separate computers
and connect them together with a fast network.

![Diagram of distributed memory system](images/distributed-memory-architecture.png)

Each separate computer, *i.e.* a **node**, operates independently
from the others. Each node has its own memory, which is totally
separate from the other nodes. CPU cores in one node cannot directly
access the memory in other nodes; all the communication is done via
the network. Each node runs also a separate copy of the operating system.

Continuing with the office analogy, distributed-memory computer is
like a set of workers distributed among several offices, each one with
its own whiteboard, communicating with each other via a phone. With
this analogy, we can clearly can see both the advantages and
disadvantages of the approach.

### Advantages

* "Infinite" capacity: the number of whiteboards (*i.e.* the total amount of
  memory) increases as we add more offices. When a problem is too
  large to fit in the memory of a node, we just use more nodes so that
  less memory per node is needed.
* "Infinite" computing power: the number of workers increases as we
  add more offices. When a problem takes too long to solve, we just use more
  nodes to have less work per node (more parallelism).
* No "overcrowding" of the memory bus: as the number of workers per
  whiteboard is constant, memory access speed does not decrease when
  adding more nodes.
* Low cost: it is relatively cheap to increase the memory and computing
  capacity of the system by adding more nodes.

### Limitations

* Communication can become expensive: following our analogy, the more
  calls are made between the offices, the more time is spent in
  communication.
* There is an overhead associated with the
  communication: using a phone takes more time than just reading or
  writing on the whiteboard.
* Communication network can become saturated: if two offices are
  calling each other, they cannot at the same time be reached from the
  other offices. Although one can leave a message, or use group calls
  between several offices, there is still a limit on how fast
  information can flow between the offices.
* Data needs to be split across all the nodes, which can be challenging with
  large and complex data.
* Operating system and all the software needs to be installed and
  maintained in many nodes. Fortunately, this can be largely automated.

Despite the limitations, it has turned out that it is much easier (and
cheaper) to build networks that can connect large numbers of computers
together than it is to have a large numbers of CPU cores in a single
shared-memory computer. This means it is relatively straightforward to build
very large supercomputers - it is an engineering challenge, but a challenge
that the computer engineers seem to be very good at tackling!

However, the compromises we have had to make (many separate computers each
with their own private memory) mean that the difficulties are now transferred
to the software side. Having built a supercomputer, we now have to write a
program that can take advantage of all those thousands of CPU cores, which can
be quite challenging in the distributed-memory model.
