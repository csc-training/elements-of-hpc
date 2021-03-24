<!--NOTE: This version of article is not for Elements of HPC, but is retained for possible 
utilization in other omore technical contexts -->


# Types of parallelism

When the hardware and the compiler support them, different types of parallelism can be employed to speed up the calculations. 

* **Bit-level parallelism**: refers to the parallelism based on increasing the _processor word_ size. For example, a 8-bit processor trying to add two 16-bit variables would have to divide the operation in two instructions. In the first instruction, it would add the 8 lower bits, and then in the second one, the higher 8 bits. On a 16-bit processor, this would be completed using a single instruction. Note that doing operations with 8-bit variables (less precision on the 16-bit processor) will take the same amount of time as using 16-bit variables. 
Now all processors use 64-bit words. The programmers have no control at this level, but have to take this into account and choose the appropriate bit size for the variables in order to achieve the highest possible performance at the precision required by the specific application. 

TODO: Missing a good image

![](images/32bit_vs_64bit.png)

* **Instruction-level parallelism (ILP)**: refers to executing simultaneously multiple instructions. For example, if the program has to perform sequentially two additions which are independent from each other, they can be executed in parallel (see the image below). The programmer does not have direct access to this parallelization, the compiler does the parallelization, however the programmer needs to arrange the code to "help" the compiler detect the parallelizable parts.
![Example of instruction level parallelism](images/ilp.png)
<!--- [![Instruction level parallelism](https://i.pinimg.com/originals/1f/a4/d7/1fa4d7bda58e84045b9456c391d2aa58.png)](https://i.pinimg.com/originals/1f/a4/d7/1fa4d7bda58e84045b9456c391d2aa58.png) --->
Depending on the architectures and compilers, the operations targeted for ILP do not need to be identical. At the hardware level, processors which can perform ILP have to support features such as:

        * Instruction pipelining
        * Out-of-order execution 
        * Register renaming 
        * Speculative execution 
        * Branch prediction 

* **Vectorization**: refers to parallelism similar to the ILP, in which a specific instruction is applied to multiple data simultaneously. This allows for more efficient parallelization of the code than the ILP. Similarly to the ILP, the programmer has little control over the parallelization, however, he or she can indicate specific loops to be targeted by the compiler. 
For example, if a programm needs to perform the addition of two vectors element by element, we would use a `for` loop in which an addition is performed for each value of `i=0, ...,N-1`:
```C
for(int i=0; i<N; i++)
    c[i]=a[i]+b[i];
```
In the scalar mode, the execution is serial, i.e. first is computed the addition `c[0]=a[0]+b[0]` corresponding to `i=0`, then the addition corresponding to `i=1` and so on, up to `i=N-1`. In the vectorized mode, the processor will execute several additions at the same time.

![Vectorization](images/vectorization.png)

Given a loop, the vectorization is done automatically by the compiler. In the cases where there is true data dependency shorter than the vector lenght, the programmer can "help" the compiler by splitting the main loop. For example, the _loop_ shown above would be changed into:
```C
for(int i=0; i<N; i+=k)
    for(int j=0; j<k; j++)
        c[i+j]=a[i+j]+b[i+j];
```
In this case, the outer loop will be executed sequentially (starting with `i=0` and then incrementing by `k` up to `N`), but the inner loop in this case will be vectorized by simultaneously executing all operations corresponding to each value of `j`.  The size of the vectorization, `k`, depends on the machine and the type of variables, but for small values, one can get a `k` times decrease in the execution time. For a 256-bit wide vectorization, we have `k=8` for integers and single precision variables and `k=4` for double precision. There are different sets of vectorization instructions that modern processors support: MMX, SSE, and AVX. These sets of instructions implement _single instruction, multiple data_ (SIMD) features into **x86** processors (Intel and AMD). Processors supporting the latest AVX instructions can perform 512-bit wide operations (eight 64-bit double precision operations) and also introduce ILP for fused multiply-add (FMA) operations. 

* **Core level parallelism**: means the same calculation or different calculation is performed to the same data or to different data by a given number of cores. The calculations are performed concurrently and often cooperatively. 
All modern processors are multi-core. In supercomputers, we usually have more than one multi-core processor installed in the same node and sharing the same memory and local disks, and in many cases, also accelerators. Furthermore, we have thousandas of nodes linked together by extremely high speed network. In this case, we can employ many types of parallel programming models: multi-threaded with shared memory, multi-process with distributed memory, hybrid, and task parallelism, in which each different task runs independently of others.
The programmer can take advantage of the multi-core and multi-processor architectures using specialized APIs.

![Multi-core and multi-processor parallel computing](images/distributed_vs_shared.png)
 
In the case of multi-threaded parallel execution, light execution units (threads) are created and destroyed (at a relatively small cost) to take advantage of the many cores present in the computer. Since the memory is shared, all threads can read and modify all global variables. **OpenMP** (Open Multi-Processing) is the de facto standard for multi-threaded applications.
 
For multi-process parallelization  **MPI** (Message Passing Interface) is the most used. Processes are execution units which are created at the beginning of the program execution and only terminated at the end. Each process has its own memory area (which can be in the same node/computer where other processes reside or in different nodes/computers) and the execution is independent of the other processes. Communication between the processes is done when it is needed (programmed) by sending messages using the MPI.

Each process can spawn many threads, which means that a hybrid programming model can be employed to take advantage of the large number of cores present in modern CPUs. 

When Graphical Processing Units (video cards) are used as accelerators, a specific multi-threaded type of programming model is used. In order to make space for more computing units, GPUs have significantly fewer transitors dedicated to branch prediction and control. As a consequence, the threads are executed in warps (or waves) of size 32 (for Nvidia GPUs) or 64 (for AMD GPUs) which execute the same instruction or memory operation. This model allows for computing many floating operations and also give an effective bandwidth for GPU memory operations about 10 times larger than between the CPU and the main memory.

We note that in order to take advantage of the multi-core architectures, the programmer has to explictly split the work in smaller parts to be executed simultaneously. 
