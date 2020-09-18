# Cloud computing vs. "traditional" HPC


**High performance computing** (HPC)  most generally refers to the use of parallel processing for running advanced application programs efficiently, reliably and quickly, in a way that delivers much higher performance than one could get out of a typical personal computer. Nowdays HPC  can involve thousands or more processors working in parallel to analyse billions of pieces of data in real time, performing calculations thousands of times faster than a normal computer. Traditionally the resources for HPC comprise of, on premises, bare-metal supercomputers and clusters which  are specifically designed to support HPC applications developed to solve the specific problems. All applications and libraries need to be compiled for the operating system that is installed on the machine.  The computational work (jobs) is  queued and executed when there were sufficient resources on the machine.  The applications run with direct physical access to hardware. As a result, the traditional HPC platforms are extremely fine-tuned to receive best performance of parallel processing. This approach is prefered for massive parallel processing which usually requires also a very good interconnection between the processors and a very fast disk system for data input and output operations. Supercomputers are designed to get the most of the computing resources for intensive problems, however they lacks some flexibility. The users are limited to the available software stack and have to wait for the specific resources to be freed. Also they a fixed available storage capacity. 


**Cloud Computing** is usually referring to access to a pool of configurable on-demand avalability of computer system resources. The computing services are using advance automation, without direct active management by the user using virtualization technology. On each node a hypervisor runs multiple virtual machines (VMs, or "instances") on virtual operating platforms. On these VMs one can install Linux or Windows, and a complete custom stack of software. The main advatange of using cloud computing are:

- on demand self-service (automation, everything provider by the service provider)
- resilience and elasticity (no data loss or downtimes in case of hardware failures)
- flexibility and scalability (for the user the resources appear to be unlimited)
Overall cloud computing reduces the complexity for the user, saves money for small bussinesses (no start up costs) and it still delivers good performance.
 One limitation is that it offers  limited customization options. There are also concerns about privacy and confidentiality, some work involves NDA. While the computing can be very cheap, other fees might be leverage on data storage and manipulation.


[![Traditional HPC vs cloud computing](https://ars.els-cdn.com/content/image/3-s2.0-B9780128038994000067-f06-01-9780128038994.jpg?_)](https://ars.els-cdn.com/content/image/3-s2.0-B9780128038994000067-f06-01-9780128038994.jpg?_)
