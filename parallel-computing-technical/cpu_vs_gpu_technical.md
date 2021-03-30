<!--NOTE: This version of article is not for Elements of HPC, but is retained for possible 
utilization in other omore technical contexts -->


# CPU vs. GPU

GPU stands for Graphics Processing Unit. Originally they were designed and used (as the name implies) solely for image processing. The development of graphic cards was driven by the gaming industry and in the early nineties they became efficient enough for solving a class of suitably formulated traditional HPC problems as well.  Since then more HPC features (e.g. double precision arithmetic) have been added to GPUs and thus the term GPGPU (General Purpose Graphics Processing Unit) was coined. Today only the term GPU is used in HPC. 

When comparing the CPU to GPU one word can describe the differences: **complexity**. Below is shown a schematic representation CPU and GPU side by side.  
![CPU vs. GPU. Arithmetic Units](images/CPU_vs_GPU_alu.png)
The CPU is a more complex, "smarter" device oriented towards general purpose usage. It's fast and versatile, designed to run operating systems and various very different applications requiring interactivity, all in a serial way.  It has a large part of the transistors dedicated to branch prediction and control,  and another large part to cache for prefetching data from the memory. Compared to CPU, in the GPU the fraction of transistors dedicated to the mathematical operations is much higher. The GPU has a very small amount of transistors dedicated to control and caching. GPUs were strictly designed to create images for computer graphics and video game consoles, and they are better are at performing repetitive and highly parallel computing.  On a GPU thousands of small threads can be created, each one performing very few, but identical mathematical operations. This is called SIMD or Single Instruction Multiple Data computing. GPUs are more energy efficient, that is, they use less energy per floating point and other arithmetic operations than CPUs. For this reason most of the new systems targeting exascale level of performance utilize GPUs. Otherwise, the electricity bills of running these systems would become prohibitive.

![CPU vs. GPU. Performance](images/Performance_Comparison.jpeg)

Due to their specialized nature GPUs need CPUs on their side in the supercomputer nodes. CPUs are often called *hosts* and GPUs *devices*. A node may consist of two CPUs and four GPUs with fast interconnect in between. The top-level program execution takes place in CPUs and computing intensive parts (often called *kernels*) are *off-loaded* to GPUs. Accordingly, GPUs are often referred to as accelerators.

![CUDA Enabled Node](images/cuda_hrdw.jpeg)

However, this hierarchical design has a drawback: moving data between the CPU and GPU in a node is relatively slow and is a typical performance bottleneck. The programmer must pay careful attention to minimizing data transfers between the host and device. In addition to this, the relative simplicity of GPUs comes with a cost: the programming is more involving and extracting good performance can sometimes be difficult and depends on the nature of the problem. When writing a CUDA program the programmer has to take into account the particular hardware structure of the GPUs. 

As seen in the figures 1 and 3, the GPU devices include several units called symmetric multiprocessor (SM), the GPU main RAM memory, and a thread scheduler. Each SM has several light computing cores, each one capable of running only one light-weight thread. 

When a task is scheduled to be executed on GPU it is divided in many very small parts, each to handled by one thread. For example rendering an image on the screen would create for each frame one thread which would compute the four values needed for a pixel (RGB and the intensity). These threads are much lighter than CPU threads and there is very little cost associated with their creation.  For each task the threads are grouped in blocks which are then assigned to an SM. One SM can have more than one block running at a time, but a block cannot be split between various SMs.

![Programming Mode for GPU](images/prog_model.jpg)

As mentioned before the high performance of the GPUs comes from the parallelism and the simplicity of the cores. The control part is much smaller, not so versatile as the control in the CPUs.  As a result the threads are executed in groups of e.g. 32, called warps, each thread in the warp executing the same instruction. This execution mode is called SIMT, Single Instruction Multiple Threads. We note that SIMT also implies SIMD, because each instruction will be executed in separate threads and on separate parts of the data. 

![Warps](images/loom.jpg)

While the many computing cores in the GPUs can perform lots of calculations in parallel, the programmer also has to make sure that the access to memory is efficient. GPUs provide very large bandwidth to access data in the GPU memory, however the read/write accessing must be done in a specific way to achieve good performance. Two "adjacent" threads should always access adjacent memory locations, i.e. **coalesced** access. 

![Coalesced Access](images/coalesced_access.png)

In addition to the main memory which is accessible by all the threads working in a task, the GPUs have other types of memory which can be used to further accelerate the application: 

![CUDA Memory Model](images/mem_model_cuda.png)

Each SM contains *shared memory* which can be accessed by threads in a specfic block. It is very fast and it can be used as a programmable cache to reduce the repeated accesses to the same data. For example in the case of long range molecular dynamics, each thread in a block would load some data into the *shared memory*, and the other threads would be able to access this data and reuse it to compute more interactions. In this particular case without the shared memory each thread in the block would have to read from the main GPU memory. In addition to the shared memory we have registers which contain variables local to each thread. The registers are very fast to access, but the amount available per individual thread is very limited. The programmer does not have direct access to registers, but he or she can optimize the code to reduce the number of accesses needed. Other types of memory are available in th GPUs with special access patterns such as constant memory, which is never changed from the device or the texture memory. The texture memory resides in the main memory, however it has a special accessing pattern and it is cached on the SM in a manner which reflects the locality of the data. 

So far we have only presented the CUDA programming model which is specific to Nvidia GPU cards. Currently, one can program Nvidia GPUs using CUDA Fortran and CUDA C. However a code developed for CUDA devices will only work on Nvidia products. For AMD GPUs one can use the HIP programming language. Another progamming language which can be used on any many-cores devices is OpenCL. The biggest advantage of OpenCL is that is can be used not only on GPUs, but also on multi-core processors. Both HIP and OpenCL have a programming model very similar to the CUDA programming model presented above.

CUDA is the most popular GPU programing language in HPC due to being the oldest and also because of a very good application ecosystem. Nvidia is actively involved in developing and maintaining optimized libraries to be used by all users. 

Finally, it is quite common that a serial code exists, and rewritting from scratch would be too time consuming. For these cases directive based programming exists. The parallelization directives (e.g. OpenMP and OpenACC) are lines of code which are added to the code and considered as comments by the compiler if no device is present. These directives define regions of code and instruct the compiler with support for OpenMP or OpenACC to try to parallize the specific region. The directive based parallelization has some limitations, it is not always guaranteed that it will reach CUDA performance, but it can provide a fast and easy way to take advantange of the available accelerators.

GPUs play a particularly important role in machine learning applications, like training neural networks. Training of neural networks can be expressed as many dense matrix-vector multiplications. These operation can parallelized for GPUs very efficiently. Nvidia provides the [cuDNN](https://developer.nvidia.com/cudnn) library and AMD has the [MIOpen](https://github.com/ROCmSoftwarePlatform/MIOpen) library, which offer highly optimized primitives specifically for machine learning and neural networks. However, most machine learning end-users do not program CUDA, HIP or OpenCL directly, but use high-level frameworks, such as [TensorFlow](https://www.tensorflow.org/) or [PyTorch](https://pytorch.org/) which abstract away some of the complexities of the low-level frameworks.

Nvidia has traditionally been the most visible GPU vendor but for example AMD is again investing heavily into GPUs. The LUMI supercomputer will use AMD GPUs. 
