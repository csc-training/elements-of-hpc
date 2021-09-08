# The autopsy of a modern supercomputer

What are supercomputers made of? Are the building components really so
different from personal computers? And what determines how fast a
supercomputer is?

In this article, we start to outline the answers to these questions and
discuss basic building blocks of modern supercomputers.

It may come as a surprise that modern supercomputers are built using the
same basic elements that are found in desktop computers, such as
processors, memory and disk. The difference is largely a matter of scale. The
reason is quite simple: the cost of developing new hardware is measured in
billions of euros, and the market for consumer products is vastly larger than
that for supercomputing. Hence the most advanced technology is
actually found in general-purpose computers.

When we talk about a processor, we mean the **central processing unit**
(**CPU**) in a computer which can also be considered the computer's
_brain_. The CPU carries out the instructions of a computer program. The terms
_CPU_ and _processor_ are generally used interchangeably. It is
slightly confusing that a modern CPU actually contains several
independent _brains_; it 
is actually a collection of several separate processing units, so we really
need another term to avoid confusion. We will call each independent processing
unit a CPU core; some people just use the term **core**.

A modern domestic device (e.g. a laptop, mobile phone or tablet) has a single
CPU with few cores (typically 4–8). Domestic devices used for high-end
gaming and graphics applications (e.g. video editing) also contain 
graphics processing units (GPUs) for accelerating applications, and
several modern supercomputers also utilize GPUs for computing. The CPUs and
GPUs themselves used in supercomputers are often quite similar to those in
consumer devices, but the scale is immensely larger. A modern supercomputer
can contain hundreds of thousands of CPU cores and thousands of
GPUs. A supercomputer gets its power from all these CPU cores and 
GPUs working together at the same time – working in **parallel**.
Conversely, the mode of operation familiar from everyday
computing, in which a single CPU core is doing a single computation, is called
**serial computing**.

Supercomputers are built up from nodes, where a single node contains few
multi-core CPUs, and possibly GPUs, as well as memory. The amount of memory per
node varies typically from a hundred gigabyte to few thousand gigabytes (a
high-end laptop might have 32 gigabytes of memory); in total there can be
millions of gigabytes of memory in a supercomputer. Using all of these
CPU cores and GPUs together requires that they are able to _talk_ to each other.
In a supercomputer, the nodes are connected together with a communications
network called **interconnect** in the jargon of the field.
The interconnect is a crucial component that gives a supercomputer its
massive parallel computing ability.
Even though nodes can have local disks, there is normally also a separate
disk storage system which all the nodes can access.

Supercomputers are distinguished from consumer devices also by much denser
packing. Physically, a supercomputer consists of several cabinets (about a
size of a phone booth), where each cabinet contains multiple rack blades, and
each rack blade can contain multiple nodes. If the computing power of
forthcoming LUMI supercomputer would be devised from high-end laptops,
the pile would be over 23 km high, 
whereas LUMI fits into few tens of cabinets in the area about the size
of a tennis court.

<!-- Copyright SURFsara,  EPCC at the University of Edinburgh, CSC - IT Center for Science Ltd. >
