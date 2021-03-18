# Supercomputing and cloud computing

High-performance computing (HPC) most generally refers to the use of parallel
processing for running advanced application programs efficiently, reliably and
quickly, in a way that delivers much higher performance than one could get out
of a typical personal computer. Nowadays, a HPC system can utilize thousands or more
processors working in parallel to analyze billions of pieces of data in real
time, performing calculations thousands of times faster than a normal
computer.

Traditionally, HPS resources comprise, on premises, bare-metal
supercomputers and clusters which are specifically designed to support HPC
applications developed to solve specific problems. All applications and
libraries need to be compiled for the operating system that is installed on
the machine. The computational work (jobs) is queued and executed when there
are sufficient resources in the machine. The applications run with direct
physical access to hardware.

As a result, the traditional HPC platforms are extremely fine-tuned to extract the
best performance from parallel processing. This approach is preferred for massive
parallel processing which usually also requires a very good interconnection
between the processors and a very fast disk system for data input and output
operations. Supercomputers are designed to get the most out of the computing
hardware for the most intensive problems. However, they lack some flexibility. The
users are limited to the available software stack and have to wait for the
specific resources to be freed. They are also limited to a fixed available storage capacity.

_Cloud computing_ usually refers to access to a pool of configurable
computer resources that are available on demand. The computing services
are using advance automation, without direct active management by the user
using virtualization technology. On each node, a hypervisor runs multiple
virtual machines (VMs, or _instances_) on virtual operating platforms. On
these VMs, one can install Linux or Windows and a complete custom stack of
software. The main advantages of cloud computing:

* On-demand self-service (automation, everything provider by the service
  provider)
* Resilience and elasticity (no data loss or downtimes in case of hardware
  failure)
* Flexibility and scalability (for the user, resources seem unlimited)

Flavors of cloud resources:
* Infrastructure as a Service (IaaS): The user is responsible for setting up the operating system
and everything above it (middleware, runtime, data and applications). This is the basic and most 
flexible cloud service, and in addition to CSC, there are a number commercial providers for this kind
of resources.
* Platform as a Service (PaaS): The provider sets up the operating system, middleware and the runtime,
and the user brings in applications and data. This is conceptually quite close to the computing environments
CSC and other computing centers provide.
* Software as a Service (SaaS): The provider is responsible for everything, including software.
This is the kind of cloud most people use daily: email, various document storing and sharing services, office applications etc.

Overall, cloud computing in some cases reduces complexity for the user, saves money for
small businesses (no startup costs), and still delivers good performance.
At the same time, setting up virtual machines etc. requires knowledge of
installing and maintaining operating systems and software.

However, there are also drawbacks to cloud computing. Cloud computing
platforms are unable to execute massively parallel jobs with tens of thousands
of cores. A large part of scientific applications requires fast
communication. While there are no start-up costs and the services are
available immediately when requested, the price of computing time can
vary depending on the load. Finally, there are also concerns about privacy and
confidentiality, and some work involves non-disclosure agreements and that the cloud
infrastructure is certified.
