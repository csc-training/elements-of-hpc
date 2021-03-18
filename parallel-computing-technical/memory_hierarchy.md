# Memory Hierarchy
The memory in personal computers can be divided into **external memory** comprised of peripheral storage devices (magnetic disks, optical disks, magnetic tapes, etc.) accessible by the processor via input/output modules and the **internal memory** (RAM memory, L1, L2 and L3 processor cache, and registers) where the programs reside during execution, which can be directly accessed by the processors. External memory is used for long-time storage. Magnetic disks can be used by the OS as virtual RAM in cases when the computer runs out of memory. While Linux also uses something equivalent, we note that in HPC using virtual memory would slow down the execution significantly and it is reseved only for OS-related programs.

# Memory Hierarchy Design
The memory model in the image is constructed based on the following characteristics: 
* Performance: as we move from the bottom of the pyramid to the top, the transfer speed MB/s increases.
* Access Time: the time between read/write requests decreases as we move up in the hierarchy.
* Capacity: the global amount of information that the device can store increases when approaching the bottom.
* Cost per bit: the higher in the hierarchy the more costly the memory is. Internal memory is more expensive than external memory.

[![Memory hierarchy in a computer](https://media.geeksforgeeks.org/wp-content/uploads/Untitled-drawing-4-4.png)](https://media.geeksforgeeks.org/wp-content/uploads/Untitled-drawing-4-4.png)
