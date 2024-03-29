# Supercomputing and cloud computing

Traditionally, HPC resources are comprised of bare-metal
supercomputers and clusters which are specifically designed to support HPC
applications developed to solve specific problems. All applications and
libraries need to be compiled for the operating system that is installed on
the machine. The computational work (jobs) is queued and executed when there
are sufficient resources in the machine. The applications run with direct
physical access to hardware.

As a result, the traditional HPC platforms are extremely fine-tuned to extract the
best performance from the hardware for the most intensive
problems. This approach is preferred for massive 
parallel processing which usually also requires a very good interconnection
between the processors and a very fast disk system for data input and output
operations. However, they lack some flexibility. The
users are limited to the available software stack and have to wait for the
specific resources to be freed. They are also limited to a fixed available storage capacity.

_Cloud computing_ usually refers to the access of a pool of configurable
computer resources that are available on demand. The computing services
are using advanced automation, without direct active management by the user
using virtualization technology. Virtualization defined literally is the act of creating a virtual version of something. Virtualization allows us to create virtual machines which are emulations of differing computer architectures and hardware configurations, giving us the freedom to run software dedicated to that differing architecture. This allows us to detach dependencies from the physical hardware. 

With virtualization we can for example emulate old video game consoles that share very little resemblance to modern computer hardware. Not being limited by the hardware we can also for example "chop up" a physical node virtually allowing us to create  multiple virtual machines (VMs, or _instances_) which can all run independent operating systems. On
these VMs, one can install Linux or Windows and a complete custom stack of
software. The main advantages of cloud computing:

* On-demand self-service (automation, everything provided by the service
  provider)
* Resilience and elasticity (no data loss or downtimes in case of hardware
  failure)
* Flexibility and scalability (for the user, resources seemingly unlimited)

There are three common flavors of cloud resources:
* Infrastructure as a Service (IaaS): The user is responsible for setting up the operating system
and everything above it (middleware, runtime, data and applications). This is the basic and most 
flexible cloud service. There are a number of commercial providers for this kind
of resources, and several supercomputing centers, including CSC,
also provide these types of resources.
* Platform as a Service (PaaS): The provider sets up the operating system, middleware and the runtime,
and the user brings in applications and data. This is conceptually
quite close to the computing environments that the computing centers provide.
* Software as a Service (SaaS): The provider is responsible for everything, including software.
This is the kind of cloud most people use daily: email, various document storing and sharing services, office applications etc.

Overall, cloud computing in some cases reduces complexity for the user, saves money for
small businesses (no startup costs), and still delivers good performance.
At the same time, setting up virtual machines etc. requires knowledge of
installing and maintaining operating systems and software.

Cloud computing can be used also for some HPC workloads. Even though
virtualization adds some overhead, single node performance is often
close to bare-metal clusters. Some providers offer special HPC clouds with
high-speed interconnects, but the performance of massively parallel
computations utilizing large number of nodes can be worse than in
the bare-metal clusters. Also, HPC cloud can be significantly more
expensive than the basic cloud resources. While there are no start-up costs and the services are
available immediately when requested, the price of computing time can
vary depending on the load. Finally, there can also be concerns about privacy and
confidentiality of the data in the cloud. 
