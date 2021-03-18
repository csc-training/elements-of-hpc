# Memory Hierarchy
The memory in the personal computers can be divided in **external memory** comprising of peripheral storage devices (magnetic disks, optical disks, magnetic tapes, etc.) accessible by the processor via input/output modules and the **internal memory** (RAM memory, L1, L2 and L3 processor cache, and registers) where the programs reside during execution, which can be directly accessed by the processors. The external memory is used for the long time storage. The magnetic disks can be used by the OS as virtual RAM in the case when the computer runs out of memory. While Linux also uses something equivalent we note that in HPC using virtual memory would slow down the execution significantly and it is reseved only for the OS related programs.

# Memory Hierarchy Design
The memory model in the image is constructed based on the following characteristics: 
* Performance: as we move from the bottom of the pyramid to the top the transfer speed MB/s increases.
* Access Time: the time between read/write requests decreases as we move up in the hierarchy.
* Capacity: the global amount of information that the device can store increase when going to the bottom.
* Cost per bit: the higher in the hierarchy the more costly the memory is. The internal memory is more expensive than the external memory.

[![Memory hierarchy in a computer](https://media.geeksforgeeks.org/wp-content/uploads/Untitled-drawing-4-4.png)](https://media.geeksforgeeks.org/wp-content/uploads/Untitled-drawing-4-4.png)
# Types of memory:
*  **CPU/GPU Registers**: are the fastest type of memory in a system/device. They are used to access very fast the data which is used for the calculation running at a given type. Physically the registers are part of the processors and some of them are part of specific set of instructions.
*  **L1, L2, L3 processor cache**:  are another type of memory which are part of the processing units, which are used to store copies of the data frequently used.  There exist a hierarchy of cache types. In CPU L1 cache denotes the cache which is available only to the processing core itself. L2 cache is a cache which is accesable by cores which are grouped together in a NUMA unit, while L3 cache is usually accesible by all cores in a die. In GPUs each processing core has a L1 cach and each multiprocessing unit has a L2 cache accessible by all cores in that unit. In addition there is also the so-called shared memory present which can be explicitly used by the programmer. 
*  **Random Access Memory (RAM)**: is the the main memory in a computer where all active all instructions  and data of the running programs reside.  
*  
