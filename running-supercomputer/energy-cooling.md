# Energy usage and cooling

Have you ever felt a computer getting hot in your lap? Did you know that
the electricity bill for a high-end gaming PC can be hundreds of euros per year?

Energy consumption is one of the biggest challenges when designing and
building more and more efficient supercomputers. Also, a large proportion of
the energy used by different components of a computer is converted to heat,
and effort (possibly also energy) is needed for cooling the supercomputer.
As discussed earlier, main reason for moving into massively parallel computing
(instead of making single CPUs more efficient) was energy consumption. Also,
GPUs are used in supercomputers because they can provide better performance per
energy for certain workloads.

<!-- Data: Energy consumption from living in Finland 2018 66 TWh, number of households 2.7 millions -->
The biggest supercomputer in the world in June 2020, the Japanese Fugaku,
has power consumption of 28 MW, and even though it is within the ten most energy
efficient computers in the world, this energy consumption equals 10 000
average Finnish households. As the importance of energy efficiency is rapidly
increasing, supercomputers are measured not only by their raw computing power,
but also by their energy efficiency on the
[Green 500 list](https://www.top500.org/lists/green500/2020/06/). In
the battle against global climate change, supercomputers are a double-edged
sword. On one hand, they help in understanding and fighting climate change,
on the other hand, they use large amounts of energy.

For reference: the heating power of a typical sauna stove is in the order of 1 kW.

## Cooling

Due to the dense packing of supercomputers, cooling can be more challenging than
in domestic devices. A proper climate can help in cooling, and modern
datacenters also have lots of cooling infrastructure. The two
most common approaches are air cooling, where a steady air flow is run through
the supercomputer, and liquid cooling, where water (or some other suitable liquid)
is circulated through the system.
Often, waste heat can be used for warming up premises close to
the datacenter, and in best cases, even close-by municipalities.

Air cooling is relatively simple but not very efficient. Modern densely-packed
supercomputers, especially GPU-based, require liquid cooling to keep them from
melting down. As a result, a datacenter hosting supercomputers needs a massive
and complicated cooling infrastructure with piping, pumps, heat exchangers etc.

In CSC's Kajaani data center, LUMI's waste heat is going to contribute to the
local municipal household heating.

<!-- Copyright CSC - IT Center for Science Ltd.-->
