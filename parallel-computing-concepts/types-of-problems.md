<!-- Title: Parallel programming concepts -->

<!-- Short description:

In this article we briefly introduce some key concepts related to parallel
programming.

-->

## Types of parallel algorithms

Parallel algorithms fall on a wide spectrum of interaction and dependency
between the parallel tasks. At the two extreme ends you have trivially
parallel algorithms and tightly coupled algorithms.

In *trivially parallel* algorithms there is very little (or no)
interaction between subtasks. In the example of Alice and Bob,
interaction is needed to distribute the work and to combine the
partial sums. However, during the computing of the individual partial
sums, no interaction is needed, and the algorithm can be considered
trivially parallel. If the problem would be different and Alice would
need to interact regularly with Bob during her computations, it would
be considered a *tightly coupled* algorithm instead (e.g. solving a
sudoku together is an example of a tightly coupled problem).

TODO (Edukamu team): Animation idea:
  - couple of boxes / spheres etc. representing computation
  - for trivally parallel case, something flows between the shapes
    in the beginning, then computation proceedes (e.g. spheres rotate)
    and finally something flows again between shapes
  - for tightly coupled case information flow and computation
    alternate several times

Programming trivially parallel algorithms is typically easier, and
they do not impose a high demand for the connection between the CPUs.
It may even be possible to use internet-connected computers all over
the world to compute something in parallel, such as in the
[Folding@home](https://foldingathome.org/) project where protein
folding is studied using personal computers all over the world.
For tightly coupled algorithms, programming is usually more difficult,
and a low-latency, high-speed interconnect between the CPUs is essential
for good performance. Weather simulation is a typical example of a tightly
coupled problem on supercomputers.

Many real-world problems fall naturally somewhere between these two
extremes.

## Exposing parallelism

One common way to expose parallelism is by distributing the data, for example
an array, to individual processing units.

![Data parallelism](images/data-parallel.svg)

Each processing unit (e.g. CPU core) holds part of the data, and performs
typically identical or at least very similar operations on the data. Processing
units may need to interact with each other, for example, to exchange information
about data on domain boundaries. The previous example of Alice and Bob
follows this scheme, as both of them have part of the data and perform
similar operation (sum over data) on them.

Another common parallelization model is the task farm (or main / worker)
approach, where one processing unit sends tasks to workers and then
receives results back from them.

![Task farm](images/task-farm.svg)

The tasks can be computationally similar, but they can also be
completely different. Often, there are more tasks than workers, and tasks are
then dynamically assigned to workers.

As an example of a task farm approach, we could think of Alice, Bob, and Joe
making a pizza together. Alice would first give Bob the task of slicing
onions, and Joe the task of chopping the ham. Alice herself could then start
to prepare the dough. Once finished with the onions, Bob would pass them to
Alice (she needs to interrupt her task) and, in turn, Alice could pass a new
task of grating cheese back to Bob. Similarly, after passing the chopped ham
to Alice, Joe would get a new task of slicing tomatoes. Finally, Alice would
assemble everything together.

TODO (Edukamu team): Animation idea: could the pizza making be presented as an animation?

Task farm and data parallel approaches can be also combined, for example,
each worker could consist of multiple execution units, and the data related
to a task is then distributed to them.
