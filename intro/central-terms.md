# Terms in need of explenation
Most termes here are used and explained thoroughly during the course. This section is intended to be a reference/dictionary you can use to freshen your memory while reading.

## [CPU](https://en.wikipedia.org/wiki/Central_processing_unit#Structure_and_implementation):
CPU or central processing unit can be considered the brain of the computer. It performs logical, arithmetic, controlling and input/output operations determined by the programs given instructions. 

Modern CPUs/processors consist of multiple processing units on a single integrated circuit. These processing units are commonly referred to as cores. General household computers such as laptops, desktops, phones, tablets etc. have around 4-8 cores. Server processors, such as the ones used in super computers have up to 64 cores, at this moment in time. With time these numbers will go up.

## [GPU](https://en.wikipedia.org/wiki/Graphics_processing_unit):
GPU or graphics processing unit is a type of processing unit specialized in very simple but fast arithmetic. As the name infers, originally graphics cards were intended in rendering computer graphics, such as in video games and visual effects. 

HPC applications and simulations can often be rendered down to a vast collection of simple arithmetic. Due to this, GPUs are often good tools to "accelerate" the massive amount of calculations done in HPC

## Memory:
Memory is exactly what you would expect it to be. A method for the computer to store and transfer information. There are many memory types ranging in size and speed of acceess. Generally the larger the capacity the slower the access. 

### Disk:
Disk refers to long term storage used by a computer. These methods are generally slow on a program level, but speed varies depending on the device. These devices are for example [hard disk drive](https://en.wikipedia.org/wiki/Hard_disk_drive)(HDD), [solid state drive](https://fi.wikipedia.org/wiki/SSD)(SSD), [tape drive](https://en.wikipedia.org/wiki/Tape_drive), USB drive which is a type of SSD. Even a pen and paper could be considered long term storage if you have access to a scanner.

### [RAM](https://en.wikipedia.org/wiki/Random-access_memory):
RAM or random access memory is a type of itermediate level memory that the computer utilizes. The computer stores data produced by programs at run time in RAM. Accessing RAM is much quicker than accessing a disk drive, but the caviat is that when the computer is shut off the RAM is wiped clean.

### [Cache](https://en.wikipedia.org/wiki/Cache_(computing)):
Cache, is out of these three, the smallest and quickest method of memory. Cache as a component is directly on the CPU, allowing extremely quick access for the cores.

## [Node](https://en.wikipedia.org/wiki/Node_(networking)):
In HPC a node refers to a single computer in the super computer cluster. If you take out a single node from a cluster and hook up a monitor, keyboard and mouse to it, it would be equivalent to having a desktop computer. Albeit a very powerfull computer, but a computer nonetheless. Similarly you could treat an everyday laptop as a node and connect a collection of them into a cluster.

## [Cluster / Super computer](https://en.wikipedia.org/wiki/Computer_cluster):
The super computer or cluster is the collection of these nodes forming a massive computer system with high speed interconnection between them. As explained in the Node section, you could linkup a collection of laptops which could be considered a cluster. 

## Interconnect:
Interconnect is the technology used in connecting hundreads of nodes allowing them to communicate with minimal latency. Your home router letting your phone and laptop communcate could be considered an interconnect. Ofcourse in an HPC cluster the interconnect is much more advanced and optimised than what a generic router is.

## [Virtualization](https://en.wikipedia.org/wiki/Virtualization): 
Virtualization is the abstraction of simulating necessary hardware for a guest operating system. For example you could take a single node consisting of a single 64-core processor, and by allocating each core as a single independent CPU you can run independent operating systems on all of those cores. Now, in a certain sense, each of these virtual machines could be treated as independent nodes. Ultimately you end up with 64 independent "computers" inside a single computer. These 64 virtual machines could be linked up with a vritual interconnect and thus we're left with a virtual cluster inside a node.

## [Virtual machine](https://en.wikipedia.org/wiki/Virtual_machine):
A virtual machine is the simulation of an independent computer using virtualization technology. A good example of virtual machines are running emulators of old video game consoles on modern computers. Another example of a virtual machine is running an instance of Linux on your Windows computer.

## [MPI](https://en.wikipedia.org/wiki/Message_Passing_Interface):
MPI or message passing interface is a technology allowing multiple nodes or cores to communicate with eachother, and excecute computation in parallel. MPI allocates isolated memory for each task, meaning a task cannot access the information an other task uses. MPI can be run on different levels of abstraction. For example you could split a single CPU into tasks with independent memory. More generally a clusters nodes require MPI for communication, since by default they do not share the same memory.

## [OpenMP](https://en.wikipedia.org/wiki/OpenMP):
OpenMP is a method for parallel computing that utilizes a shared memory model. Thus, you can split a CPU into the amount of cores it has to offer, and by accessing the same memory they will excecute computation in parallel. Since OpenMP requires shared memory it cannot be utilised over a cluster, but only in a single node. 


