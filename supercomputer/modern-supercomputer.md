# Autopsy of a modern supercomputer

So what are supercomputers made of? Are the building components really so
different from personal computers? And what determines how fast a
supercomputer is?

In this article, we start to outline the answers to these questions. We will
discuss basic building blocks so that you are able to understand the
characteristics of the supercomputers in the
[Top500 list](https://www.top500.org/lists/top500/2020/06/) (the linked list
is from June 2020).

It may surprise you to learn that modern supercomputers are built using the
same basic elements that you normally find in your desktop, such as
processors, memory and disk. The difference is largely a matter of scale. The
reason is quite simple: the cost of developing new hardware is measured in
billions of euros, and the market for consumer products is vastly larger than
that for supercomputing, so the most advanced technology you can find is
actually what you find in general-purpose computers.

When we talk about a processor, we mean the _**central processing unit**_
(_**CPU**_) in a computer which can also be considered as the computer's
_brain_. The CPU carries out the instructions of a computer program. The terms
CPU and processor are generally used interchangeably. The slightly confusing
thing is that a modern CPU actually contains several independent _brains_; it
is actually a collection of several separate processing units, so we really
need another term to avoid confusion. We will call each independent processing
unit a CPU-core - some people just use the term **_core_**.

A modern domestic device (e.g. a laptop, mobile phone or tablet) has a single
CPU with few cores (in 2020 typically 4-8). Domestic devices used for high-end
gaming and graphics applications (e.g. video editing) contain in addition also
graphics processing units (GPUs) for accelerating the applications, and
several modern supercomputers also utilize GPUs for computing. The CPUs and
GPUs itself used in supercomputers are often quite similar to those in
consumer devices, but the scale is immensely larger. A modern supercomputer
can contain hundreds of thousands of CPU-cores and thousands of GPUs. As
mentioned before, a supercomputer gets its power from all these CPU-cores and
GPUs working together at the same time - working in _**parallel**_.
Conversely, the mode of operation you are familiar with from everyday
computing, in which a single CPU-core is doing a single computation, is called
_**serial computing**_.

Supercomputers are build up of nodes, where a single node contains few
multicore CPUs and possibly GPUs, as well as memory. The amount of memory per
node varies typically from a hundred gigabyte to few thousand gigabytes (a
high-end laptop might have 32 gigabytes of memory); in total there can be
millions of gigabytes of memory in a supercomputer. To use all of these
CPU-cores and GPUs together means they must be able to _talk_ to each other.
In a supercomputer, the nodes are connected together with a communications
network, which is called the _**interconnect**_ in the jargon of the field.
Interconnect is a crucial component that gives a supercomputer its massive parallel computing ability, and
we discuss interconnects in a more detail later on (FIXME: is this missing?).
Even though nodes can have local disks, there is normally also a separate
disk storage system, which we also discuss more later on.

TODO: images of node and a collection of nodes, different interconnect
topologies?

Supercomputers are distinguished from consumer devices also by a much denser
packing. Physically supercomputer consists of several cabinets (about a
size of a phone booth), where each cabinet contains multiple rack blades, and
each rack blade can contain multiple nodes. If the computing power of LUMI
would be devised from Macbook Pros, the pile of laptops would reach Mt
Everest, whereas LUMI fits into around XX cabinets in the size of a bit over a tennis court
and weighs 150 metric tons.

FIXME: number of cabinets  (above)
TODO: image of cabinet / open cabinet?

<!-- Copyright SURFsara,  EPCC at the University of Edinburgh, CSC - IT Center for Science Ltd. >
