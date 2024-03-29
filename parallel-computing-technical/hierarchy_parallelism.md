# Parallelism within a core

By now, we have beem discussing parallelization at the level of multiple CPU
cores. That is, we split a computational problem into smaller
subproblems and assign the subproblems to the CPU cores. Modern CPU
cores can, however, perform additional parallel operations within the core.

## Instruction level parallelism

When running a computer program, the CPU core executes a stream of
instructions. The instructions can be, for example, to load data from
the main memory to a register, to store data from a register to the
main memory, or to do some basic arithmetic operation (addition, subtraction,
multiplication, division). The instructions are executed at the
pace determined by the clock speed. For example, a CPU running at 2.1 GHz has
2.1 billion clock cycles per second. Instruction-level parallelism (ILP)
refers to the ability of the CPU core to execute simultaneously multiple
instructions within one clock cycle. For example, if the program has to
perform sequentially two additions which are independent from each
other, and the core has two floating point units, they can be executed
in parallel.

![Example of instruction level parallelism](images/ilp.png)
<!--- https://i.pinimg.com/originals/1f/a4/d7/1fa4d7bda58e84045b9456c391d2aa58.png --->

The programmer does not have direct access to this parallelization, but
the programmer may arrange the program code in a special way to make
it "easier" for the compiler and for the hardware to utilize this type
of parallelization.


## Vectorization

Consider a case where you have a list of eight numbers (in mathematics
this is called a vector with a length of eight) and you would like to
sum the numbers element-wise with those in another similar
list. Vectorization refers to the ability of the CPU core to perform
operations on multiple data at the same time, often referred as Single
Instruction, Multiple Data (SIMD) parallelization.

![Vectorization](images/vectorization.png)

If the CPU core can perform the addition with four numbers in a single
vector instruction (it is said that it has vector length equal to four
floating numbers), the whole addition would be completed in two
instructions, and the floating point performance FLOP/s is improved by
a factor of four compared to a scalar case.

Programmer can affect vectorization by writing the code in a form
suitable for vectorization and providing hints for the compiler to
vectorize particular operations.

Basically all CPUs used in modern supercomputers support vector
instructions. For example, the current (as of 2021) Intel CPUs can
perform arithmetic operations on 8 floating point numbers at the same
time (16 numbers with reduced precision) and AMD CPUs on 4 floating
point numbers (8 numbers with reduced precision). Both provide also
instruction level parallelization and can perform two additions and
two multiplications in a clock cycle. Thus, the AMD CPUs in the Mahti
supercomputer which have 64 cores and run at 2.6 GHz have a
theoretical peak performance of
```
  64   x       4         x   (2 + 2)  x  2.6 GHz     = 2660 GFLOP/s
cores    vector length         ILP      clock speed
```
