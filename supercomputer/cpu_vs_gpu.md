# CPU vs. GPU

When comparing the CPU to GPU one word can describe the differences, **complexity**. Below is shown a schematic representation CPU and GPU side by side.  
[![CPU vs. GPU](https://docs.nvidia.com/cuda/cuda-c-programming-guide/graphics/gpu-devotes-more-transistors-to-data-processing.png)](https://docs.nvidia.com/cuda/cuda-c-programming-guide/graphics/gpu-devotes-more-transistors-to-data-processing.png)

CPU are in general more complex, "smarter" devices orientated toward general purpose usage. It has a large part of the transitors dedicated to branch prediction and control,  and another large part to cache for prefetching data from the memory. Compared to the GPUs the fraction of transitors dedicated to the mathematical operations is small. Compared to the CPU the GPU has a very small amount of transitors dedicated only mathematical operations. On a GPU thousands of small threads are created, each one performing very few, but identical mathematical operations. 
The CPUs are fast and versatile. They were developed to run operating systems and various very different applications requiring interactivity in a serial way.  GPUs were stricletly  designed to create images for computer graphics and video game consoles, and they are better are at performing repetitive and highly parallel computing. 
