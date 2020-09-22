# CPU vs. GPU

When comparing the CPU to GPU one word can describe the differences, **complexity**. Below is shown a schematic representation CPU and GPU side by side.  
[![CPU vs. GPU](https://docs.nvidia.com/cuda/cuda-c-programming-guide/graphics/gpu-devotes-more-transistors-to-data-processing.png)](https://docs.nvidia.com/cuda/cuda-c-programming-guide/graphics/gpu-devotes-more-transistors-to-data-processing.png)

CPU are in general more complex, "smarter" devices oriented toward general purpose usage. It has a large part of the transitors dedicated to branch prediction and control,  and another large part to cache for prefetching data from the memory. Compared to CPUs the GPUs the fraction of transitors dedicated to the mathematical operations is small. The GPU has a very small amount of transistors dedicated to control and caching.  On a GPU thousands of small threads can be created, each one performing very few, but identical mathematical operations. 
The CPUs are fast and versatile. They were developed to run operating systems and various very different applications requiring interactivity, all in a  in a serial way.  GPUs were strictly  designed to create images for computer graphics and video game consoles, and they are better are at performing repetitive and highly parallel computing. 
