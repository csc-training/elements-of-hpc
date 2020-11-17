## Supercomputer Performance

To understand how powerful a Supercomputer is and compare it with other ones,
there are few metrics. The oldest and most classic one is the floating
operations per second (FLOPs). This measures the performance of a processor
and not only.

What is a FLOPs? If we do a single calculation involving two real numbers
(aka floating point numbers), for example `2.1 + 4.3` in one second, then this
is equal to one floating-point operation per second (1 FLOPs).

When a computer can execute 1 billion FLOPs, then we can say it is 1 gigaFLOPs
(GFLOPs). Similarly, we call 1 teraFLOPs (TFLOPs) for one trillion
(10<sup>12</sup>) FLOPs, and 1 petaFLOPs (PFLOPs) when a supercomputer can
execute 1 quadrillion or 10<sup>15</sup> FLOPs.

### TOP500

What is a benchmark? An application that is used to measure the performance
and functionality of a (super)computer.

The Linpack benchmark (HPL) measures a system's floating point computing
power. It measures how fast a computer does matrix operations to solve an
equation. Supercomputers have a theoretical peak performance based on their
hardware, but since this is a theoretical limit for a perfect system and
benchmark, the actual performance measured by HPL is lower.

TOP500 is a ranking list for supercomputers that collects HPC results
submitted by organizations that own a supercomputer. The list is released
twice a year and it shows the 500 most powerful supercomputers in the world
ranked according to their computational power.

In the first ever TOP500 list, June 1993, the best supercomputer was from USA
and had a performance of 59.7 GFLOPs. For comparison, in June 2020, the
best supercomputer (from Japan) had a performance of 415.5 PFLOPs, which is
almost 7 million times faster than the winner 27 years ago. Similarly, looking
at the last system (#500) on the lists, on June 1993 it had a power of 0.4
GFLOPs while on June 2020 it had a power of 1.2 PFLOPs, which is about 3
million times faster. Just like normal computers, supercomputers have
exhibited a tremendous increase in computational power over these years.


!["TOP500 FLOPs"](./images/flops.png)
*FLOPs from the best systems in TOP500 list from 1993 until 2017*


To compare and understand better, the Macbook pro 13" 2020 model, has a
performance of around 311 GFLOPs which means that it would be number one
supercomputer on June 1993 but for 2020, the number one supercomputer has the
power of around 1.3 millions Macbook pro 13".

The Mahti supercomputer at CSC - IT For Science Ltd. has power of 7.5 PFLOPs,
which means it can execute `7.5*10^15` operations per second or around 24000
Macbook pro 13" combined. Even if all people on earth would do one math
operation per second, the combined performance would still be 1 million times
lower than that of Mahti.

LUMI supercomputer will have a theoretical peak performance of 552 PFLOPs and
is expected to be in the top 10 supercomputers of the world when it is built.

We describe the terminology of the performance

| Operations per second     | Scientific notation | Metric prefix | Unit   |
|---------------------------|---------------------|---------------|--------|
| 1 000                     |     10<sup>3</sup>  |  Kilo         | KFLOPs |
| 1 000 000                 |     10<sup>6</sup>  |  Mega         | MFLOPs |
| 1 000 000 000             |     10<sup>9</sup>  |  Giga         | GFLOPs |
| 1 000 000 000 000         |     10<sup>12</sup> |  Tera         | TFLOPs |
| 1 000 000 000 000 000     |     10<sup>15</sup> |  Peta         | PFLOPs |
| 1 000 000 000 000 000 000 |     10<sup>18</sup> |  Exa          | EFLOPs |

