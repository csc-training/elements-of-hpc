<!--NOTE: This version of article is not for Elements of HPC, but is retained for possible 
utilization in other omore technical contexts -->


# Memory hierarchy

The memory in personal computers can be divided in **external memory** comprising of peripheral storage devices (magnetic disks, optical disks, magnetic tapes etc.) accessible by the processor via input/output modules and the **internal memory** (RAM memory, L1, L2 and L3 processor cache, and registers) where programs reside during execution and which can be directly accessed by the processors. The external memory is used for long-time storage. The magnetic disks can be used by the OS as virtual RAM in case the computer runs out of memory. While Linux also uses something equivalent, we note that in HPC, using virtual memory would slow down the execution significantly and is reseved only for OS-related programs.

# Memory hierarchy design

The memory model in the image is constructed based on the following characteristics: 
* Performance: As we move from the bottom of the pyramid to the top, transfer speed (MB/s) increases.
* Access time: The time between read/write requests decreases as we move up in the hierarchy.
* Capacity: The global amount of information that the device can store increases towards the bottom.
* Cost per bit: The higher in the hierarchy, the more costly the memory is. The internal memory is more expensive than the external memory.

TODO: Might want to change Magnetic Disks with internal HDD + SDD!

[![Memory hierarchy in a computer](https://media.geeksforgeeks.org/wp-content/uploads/Untitled-drawing-4-4.png)](https://media.geeksforgeeks.org/wp-content/uploads/Untitled-drawing-4-4.png)
# Types of memory:
*  **CPU/GPU registers** are the fastest type of memory in a system/device. They are used for very fast access to the data which is used for the calculation running at a given type. Physically, registers are a part of processors, and some of them are a part of a specific set of instructions.
*  **L1, L2, L3 processor caches** are another type of memory that are a part of the processing units and used to store copies of the data frequently used.  There is a hierarchy of cache types. In a CPU, the L1 cache denotes the cache available only to the processing core itself. The L2 cache is a cache accessible by cores which are grouped together in a NUMA unit, while the L3 cache is usually accessible by all cores in a die. In GPUs, each processing core has a L1 cache available, and each multiprocessing unit has a L2 cache accessible by all cores in that unit. In addition, there is also the so-called shared memory which can be used explicitly by the programmer or to increase the size of the L2 cache.
*  **Random Access Memory (RAM)** is the the main memory in a computer where all instructions and data of active programs reside. It is relatively FIXME and has the advantage that individual memory cells can be accessed in any order. 

All above types of memory are used for running programs and are volatile. At the end of the program, or in case of the computer shutting down, the contents are purged and not retrievable at a later time. Peripheral storage devices are used for storing the data for later access after the end of the program execution. 

* **Magnetic disks** are storage devices that use magnetization to represent and access the data. Magnetic disks are relatively cheap and consist of rotating disks and a mechanical arm which moves over them to read and write. Conceptually, the surface of the disk is divided in many small magnetic regions, each of them with a uniform magnetizations. While the disk rotates at very high speeds, the tip of the mechanical arm gets magnetized and affects the individual domains changing the local magnetization, or  in the case of reading, can detect the local magnetization. 
* **Optical disks** are storage devices for storing large amounts of data for the long term. They are flat discs which store binary data in the form of pits and lands. `1` represents a change from pit to land and vice versa, while `0` represents no change regardless of whether in a land or a pit area. Having rewritable disks is quite common, however, since most of the usage is for content distribution, it is quite common that the disks are written one time, after which they are read-only. 
* **Magnetic tape** is a system for storing data nowdays mostly used to back up large amounts of data. The main reason for using it is the extremly low price per MB. Many present-day supercomputers use magnetic tapes to save user data in case of disk failure. The bandwidth of magnetic tape is quite high, however, access is sequential, and retrieving specific pieces of data can be very slow.
