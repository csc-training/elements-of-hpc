
Parallel computing is a type of computing in which the task is divided in several sub-tasks which are independent of each other and can be executed simultaneously. Most of the computing problems are not trivially parallelizable, which means that the sub-tasks need to have access from time to time to some of the results computed by other sub-tasks. The way the sub-tasks exchange the needed information depends on the available hardware.

# Distributed Memory

In practice there is a physical limitations to how many cpu-cores and how much memory can be fitted on a *die*. This is why all supercomputers use distributed memory architectures in which physical memory and the computing cores are splitting among various separate computers. 

![Diagram of distributed memory system](images/distributed-memory-architecture.png)

Each separate computer (usually called a  *node*) operates independently from the other and has its own operating system. The memory is exclusive and the communication is done via fast network. In the distributed memory model the programming divides the work between sub-tasks, each one with its own memory space. Each tasks is assign to a node.  An analogy to this would be a set of workers distributed among several offices each one with its own whiteboard and communicating with each other via a phone. We can see both advantages and disadvantages to this approach. 

### Advantages
* infinite memory: the number of  whiteboards increases as we add more office. When a problem is too large we just use more nodes to deacrease the amount of memory per node. 
* infinite computing power: the number of woorkers increases as we add more office. When a problem is too large we just use more nodes to have less work per node (more parallelism). 
* low cost: it is realtively cheap to increase the memory and and computing capacity of the system by adding more nodes.


### Limitations
* communications can become expensive: follwing our analogy the more calls are made between the offices, the more time is spend in sharing the needed data. There is an overhed associated with the communications and in practice there is an upper limit beyond which there is no improvement in most of the cases the running time increases.
* more complex programmaing model: the programmer has to split the work evenly between the sub-tasks and decide in which nodes resides specific parts of the data to achieve a good balance. All communications are triggered by the programmer. 
