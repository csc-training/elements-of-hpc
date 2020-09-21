# Shared Memory

The term shared memory refers to physical memory device which can be access by more than on computing core. Programatically the shared memory is seen as a space in the memmory allocated to a program which can be access by a group of threads working together, **without additional communication**. All threads in a group can write and read from a given location in memory. When threads access a specific location When writing a code the programmer has to take care and insure that there are no __race conditions__. 
Examples of shared memory are the CPU cache which is shared by all cores in the same CPU and computer main memory which is shared my all the cores on the same motherboard
