Parallel computing is a type of computing in which the task is divided in several subtasks that are independent of each other and can be executed simultaneously. Most of computing problems are not trivially parallelizable, which means that the subtasks need to have access from time to time to some of the results computed by other subtasks. The way the subtasks exchange the needed information depends on the available hardware.

# Distributed memory

In practice, there are physical limitations to how many CPU cores and how much memory can be fitted on a *die*. This is why all supercomputers use distributed memory architectures in which the physical memory and computing cores split among the various separate computers. 

![Diagram of distributed memory system](images/distributed-memory-architecture.png)

Each separate computer (usually called a *node*) operates independently from the others and has its own operating system. The memory is exclusive, and the communication is done via a fast network. In the distributed memory model, the programming divides the work between the subtasks, each one with its own memory space. Each task is assigned to a node.  If data from another node's memory is needed, explicit communication action needs to be taken. An analogy to this would be a set of workers distributed among several offices, each one with its own whiteboard, communicating with each other via a phone. We can see both the advantages and disadvantages to this approach. 

### Advantages

* Infinite memory: The number of whiteboards increases as we add more offices. When a problem is too large, we just use more nodes to decrease the amount of memory per node. 
* Infinite computing power: The number of workers increases as we add more offices. When a problem is too large, we just use more nodes to have less work per node (more parallelism). 
* Low cost: It is relatively cheap to increase the memory and computing capacity of the system by adding more nodes.

### Limitations

* Communications can become expensive: Following our analogy, the more calls are made between the offices, the more time is spent in sharing the needed data. There is an overhead associated with the communications, and in practice, there is an upper limit beyond which there is no improvement when tasks or nodes are added, and in most of the cases, the running time will increase.
* More complex programming model: The programmer has to split the work evenly between the subtasks and decide in which nodes the specific parts of the data will reside to achieve a good balance. All communications are explicitly implemented by the programmer. 
