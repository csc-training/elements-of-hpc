# Supercomputing and Cloud computing

High performance computing (HPC) most generally refers to the use of parallel
processing for running advanced application programs efficiently, reliably and
quickly, in a way that delivers much higher performance than one could get out
of a typical personal computer. Nowadays HPC can involve thousands or more
processors working in parallel to analyse billions of pieces of data in real
time, performing calculations thousands of times faster than a normal
computer.

Traditionally the resources for HPC comprise of, on premises, bare-metal
supercomputers and clusters which are specifically designed to support HPC
applications developed to solve the specific problems. All applications and
libraries need to be compiled for the operating system that is installed on
the machine. The computational work (jobs) is queued and executed when there
were sufficient resources on the machine. The applications run with direct
physical access to hardware.

As a result, the traditional HPC platforms are extremely fine-tuned to receive
best performance of parallel processing. This approach is prefered for massive
parallel processing which usually requires also a very good interconnection
between the processors and a very fast disk system for data input and output
operations. Supercomputers are designed to get the most of the computing
resources for intensive problems, however they lacks some flexibility. The
users are limited to the available software stack and have to wait for the
specific resources to be freed. Also they a fixed available storage capacity.

Cloud Computing is usually referring to access to a pool of configurable
on-demand availability of computer system resources. The computing services
are using advance automation, without direct active management by the user
using virtualization technology. On each node a hypervisor runs multiple
virtual machines (VMs, or "instances") on virtual operating platforms. On
these VMs one can install Linux or Windows, and a complete custom stack of
software. The main advantage of using cloud computing are:

* on demand self-service (automation, everything provider by the service
  provider)
* resilience and elasticity (no data loss or downtimes in case of hardware
  failures)
* flexibility and scalability (for the user the resources appear to be
  unlimited)

At the same time, setting up virtual machines requires some knowledge of
installing and maintaining operating systems and software.

TODO: Flavors of cloud: SaaS, PaaS, IaaS, Saas. Desciptions and examples here.

Overall cloud computing reduces the complexity for the user, saves money for
small businesses (no startup costs) and it still delivers good performance.

However there are also drawbacks to cloud computing. The Cloud Computing
platforms are unable to execute massively parallel jobs with tens of thousands
of cores. A large part of scientific applications have tightly coupled
communications. While there are no start-up costs and the services are
available immediately when requested, the prices of the computing time can
vary depending on the load. Finally, there are also concerns about privacy and
confidentiality, some work involves non-disclosure agreements and the cloud
infrastructure is certified.
