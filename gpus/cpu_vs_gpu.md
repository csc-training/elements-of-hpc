# CPU vs. GPU

GPU stands for Graphics Processing Unit. Originally they were designed and used (as the name implies) solely for image processing. In the early noughties it was realized that GPUs be very efficiently used solve a class of traditional HPC problems as well if properly formulated.  Since that more HPC features (e.g. double precision arithmetic) have been added to GPUs and thus the term GPGPU (General Purpose Graphics Processing Unit) was coined. Today only the term GPU is used in HPC. 

When comparing the CPU to GPU one word can describe the differences, **complexity**. Below is shown a schematic representation CPU and GPU side by side.  
[![CPU vs. GPU](https://docs.nvidia.com/cuda/cuda-c-programming-guide/graphics/gpu-devotes-more-transistors-to-data-processing.png)](https://docs.nvidia.com/cuda/cuda-c-programming-guide/graphics/gpu-devotes-more-transistors-to-data-processing.png)

CPU is in general more complex, "smarter" devices oriented toward general purpose usage. It has a large part of the transitors dedicated to branch prediction and control,  and another large part to cache for prefetching data from the memory. Compared to CPUs the GPUs the fraction of transitors dedicated to the mathematical operations is small. The GPU has a very small amount of transistors dedicated to control and caching.  On a GPU thousands of small threads can be created, each one performing very few, but identical mathematical operations. This is called SIMD or Single Instruction Multiple Data computing.

The CPUs are fast and versatile. They were developed to run operating systems and various very different applications requiring interactivity, all in a  in a serial way.  GPUs were strictly  designed to create images for computer graphics and video game consoles, and they are better are at performing repetitive and highly parallel computing. 

GPUs are more energy efficient, that is, they use less energy per floating point and other arithmetic operations than CPUs (because of the less simpler logic???). For this reason most of the new systems targeting exascale level of performance utilize GPUs. Otherwise the electricity bills of running these systems would become prohibitive.

Due to their specialized nature GPUs need CPUs on their side in the supercomputer nodes. CPUs are ofen called *hosts* and GPUs *devices*. A node may consist of two CPUs and four GPUs with fast interconnect in between. The top-level program execution takes place in CPUs and computing intensive parts (often called *kernels*) are *off-loaded* to GPUs. Accordingly, GPUs are often referred to as accelerators.

However, this hierarchical design has a drawback: moving data between the CPU and GPU in a node is relatively slow and is typical performance bottleneck. The programmer must pay careful attention in minimizing data transfers betwwen the host and device.

The relative simplicity of GPUs comes with a cost: the programming is more involving and extracting good performance can sometimes be difficult and depends on the nature of the problem (how?).

GPU programming models: CUDA etc.

GPUs are especially efficient in machine learning applications, more precisely in training neural networks.

Nvidia has traditionally been the most visible GPU vendor but for example AMD is again investing heavily into GPUs. The LUMI supercomputer is built using AMD GPUs. 
