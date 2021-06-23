## Introduction

### What is high-performance computing?

#### Introductory video, e.g. PRACE video

-

#### Computational science and HPC

##### 2.1) Select the three paradigms of science
  = Experimental
  = Theoretical
  = Computational
  ~ Observational
  ~ Mathematical
  ~ Numerical

TODO: Tähän olisi kiva saada jotain syvällisempää laskennalliseen paradigmaan liittyen.

##### 2.2) In computational science the tasks to be solved are divided into steps. Arrange the steps in right order:
  1. Define mathematical equations that describe the problem.
  2. Weigh different algorithms and consider them in solving the problem numerically.
  3. Code (e.g. with Python or similar) the implementation of the algorithm.
  4. Run the program developed for the problem.

##### 2.3) With High-performance computing, experiments which might be impossible to implement for various reasons, can sometimes be replaced with simulations.

    TRUE

##### 2.4) Which of the following questions and problems are well suited for simulation with HPC
  - = Climate and weather
  - = Particle physics and cosmology
  - = Winner of FIFA World Cup 2022
  - ~ What to eat for breakfast
  - ~ Amount of taxes to be paid

#### About the course

##### 3.1) Choose the operator of Finnish national supercomputers
  - = CSC
  - ~ KAMK
  - ~ LUMI
  - ~ VTT

#### Components of HPC

##### 4.1) Generally High-performing computers consist of the same components as personal computers, but they must perform together in a more complex entity.
    
    TRUE

##### 4.2) Programming for HPC environments is partly the same as in normal environments, but there are various aspects to take in consideration (such as massive parallel computing and optimized libraries) to be able to perform at full potential.

    TRUE


#### Some central terms explained
--

### Applications of HPC/How HPC has changed the world

#### Examples of HPC applications
--

Exam (5–10 questions), 80% correct to pass, multiple attempts allowed
What is a supercomputer?

## What is a supercomputer?

### History of supercomputing

##### 1.1) The first supercomputer 1945 located at University of Pennsylvania was called
  - = Electronic Numerical Integrator and Computer (ENIAC)
  - ~ Large Unified Modern Infrastructure (LUMI)
  - ~ Numerical Object Key Integrator Apparatus (NOKIA)
  - ~ Calculative Super Computer (CSC)

##### 1.2) Parallel computing is a relatively new concept, which was introduced to super computing in the beginning of 2000.

    FALSE

##### 1.3) Until recently supercomputers have followed Moore's law, where a processor's density of transistors double every two years, hence the performance also presumably doubles. The biggest constraining reason stalling this development nowadays is
  - = Power consumption and heat generation of processors
  - ~ Governance regulation of development work
  - ~ Duopoly of Intel and AMD on processor markets
  - ~ Saturation of the processor market

TODO: Viivanleveys? Kysymyksessä hyvä ajatus, mutta logiikka pitää miettiä uusiksi.


##### 1.4) Computing power increases over time as technology advances. How many times faster is a normal modern laptop compared to a supercomputer from thirty years ago?
  - = 1000
  - ~ 10
  - ~ they are approximately equal
  - ~ 1/10th 


TODO: Laskentateho vs. energiankulutus? Laskentatehon kasvu?

#### Modern supercomputer

##### 2.1) CPU aka central processing unit is called the [1] of a computer. Modern CPUs consists of multiple [2] which can operate independently. Sometimes terms CPU and [3] are used interchangeably.

  - [1] brain
  - [2] cores
  - [3] processor

##### 2.2) A supercomputer node is basically the same as a really powerfull personal computer.
  
    TRUE

##### 2.3) The backbone of a supercomputer that connects multiple nodes and e.g. network storage together is called
  - = interconnect
  - ~ LAN-party
  - ~ WiFi
  - ~ parallel network

#### Supercomputer performance

##### 3.1) Acronym FLOP/s stands for
  - = Floating Point Operations per second
  - ~ Right side sandal of Flip-flops
  - ~ A failing artist or an act
  - ~ Fluorescent Lighting Of PC

##### 3.2) Choose the right claims related to supercomputer performance
  - = Computing power measurement is standardised to FLOP/s and the performance of different supercomputers around the world is ranked and reported on different websites.
  - = Theoretical performance of a CPU is higher than the performance in reality.
  - = New LUMI supercomputer is expected to perform theoretically 0,55 EFLOP/s and rank top 10 in the list of all supercomputers in the world.
  - ~ A Common benchmark tool to measure supercomputer performance is called TOP500.
  - ~ The new LUMI supercomputer is estimated to be a maximum of ten times faster than the older Mahti supercomputer.

#### Data storage

##### 4.1) IMDB has approximately 7,5 million movie titles in their online database. One movie streamed over the internet is an average of 3,5 GB. How many Mahti's (capacity of 8900 TB) would a service provider need to store all IMDB titles to be streamed over the internet?
   - = 3
   - ~ 1/8th
   - ~ 10
   - ~ 27

##### 4.2) Select all storage medias used with supercomputers
  - = HDD
  - = SSD
  - = Magnetic tapes
  - ~ Blu-ray discs
  - ~ USB flash drives

##### 4.3) Connect the right options.
  - = 1 B -> Byte
  - = 10^15 B -> Petabyte
  - = 10^6 B -> Megabyte

##### 4.4) Select all the right options that are related to data storage
  - = Decreased performance because of a badly designed or implemented storage solution cannot be improved by adding more CPU's to the supercomputer.
  - = Instead of the speed of a single hard disk, the performance comes from intelligent and distributed mechanism of reading and writing data on multiple disks simultaneously.
  - ~ Mahti's storage is implemented with 170 000 Blu-ray disks and equivalent amount of RW Blu-ray-drives.
  - ~ More persistent (and cheaper) storage solutions are gained with the help of VHS tapes.

#### HPC and cloud computing

##### 5.1) Connect the right options
  - = IaaS -> Cloud capabilities type in which the cloud service customer can provision and use processing, storage and networking resources provided by a cloud service provider.
  - = PaaS -> Cloud capabilities type in which the cloud service customer can deploy, manage and run customer-created applications using one or more programming language and execution environment supported by a cloud service provider.
  - = SaaS -> Cloud capabilities type in which the cloud service customer can use the cloud service provider's applications.

TODO: En ole varma mitä "Cloud capabilities type" tarkoittaa

##### 5.2) Traditionally supercomputing environments are tailor-made and use-cases must meet these, sometimes very precise, requirements of the execution environment. Parts of modern HPC environment services may be offered in a cloud computing manner, where a customer has network access to a scalable and elastic pool of shareable physical or virtual resources with self-service provisioning and administration on-demand.
    
    TRUE

#### Top supercomputers

##### 6.1) The most powerful computer in the world currently (as of November 2020) is located in
  - = Japan
  - ~ USA
  - ~ China
  - ~ Finland
  - ~ Sweden

##### 6.2) The most energy efficient supercomputer is the NVIDIA DGX SuperPOD in the USA. It's rank on the top500 list is 170th and it's power efficiency is 26195 GFlops/watts. List the supercomputers mentioned in the material from most energy efficient to least.
  - 1. USA
  - 2. Japan
  - 3. China

#### Introduction to LUMI

##### 7.1) Select all the correct options that are related to the LUMI supercomputer
  - = LUMI will be located in Kajaani and all of its waste heat is used to heat up the local district.
  - = LUMI will consist of different services: CPU and GPU based raw calculating power and e.g. AI specialised platform(s).
  - = With estimated 552 PFLOP/s and 117 PB storage capacity it is estimated that LUMI will rank in the top 10 of the fastest supercomputers in the world.
  - ~ LUMI will require the space of a football field when installed.

Exam (5–10 questions), 80% correct to pass, multiple attempts allowed
Running and using a supercomputer

## Running and using a supercomputer

#### HPC centers

##### 2.1) Select all the correct options that are related to operating supercomputers and their services.
  - = Supercomputers offer several different types of tasks in which a person can specialise to. TODO: need to be made more clear
  - = Maintaining a supercomputer is teamwork.
  - ~ To be able to work with supercomputers, a person needs to master a wide variety of skills, starting from HVAC and ending with customer service about a spesific Python library needed for modeling weather.
  - ~ Administrating supercomputers is quite dull and monotonous work where architectures are straightforward and trivial to implement and maintain.

#### Energy and cooling

##### 3.1) LUMI aims to be one of the top ten fastest supercomputers in the world. Yet at the same time energy-efficiency and sustainability needs to be taken in consideration. Choose all the correct statements related to LUMI.
  - = 100 percent of the used energy is renewable (hydropower).
  - = Waste heat is utilised further and led to the district heating network.
  - ~ The supercomputer is turned off for the night.
  - ~ For more efficient cooling, supercomputers will be submerged in a swimming pool.

#### How to buy a supercomputer

##### 4.1) When you buy a new phone or a computer, perhaps you ponder whether to buy something now or wait for a little while for a newer model. Supercomputer vendors must know the current situation, but sell future promises. For the money invested, the buyer wants to have state-of-the-art) hardware which does not exist yet at the time of purchase. Which of the following are tools for a successful deal.
  - = Performance commitments that the vendor will propose.
  - = Request for information (RFI) then proposal (RFP) to initiate negotiations with potential sellers.
  - = Teamwork of multiple people from both - buyer's and seller's - sides.
  - ~ A Well-functioning online store for selecting the right supercomputer parts and real time price updates.
  - ~ Specifications of an old supercomputer which will be updated by adding more memory and CPUs.

#### How to access a supercomputer?

##### 5.1) Using a supercomputer is
  - = similar to visiting a post office or a bank. You take a queuing number and wait for your turn. With supercomputers this is done with a batch queuing system. Note that a batch queue is not implemented sequentally, but a number of variables effect how the queue is unloaded.
  - = possible over the internet by using a text based user interface or in some cases a web browser.
  - ~ very expensive. Especially for researchers, who will be invoiced independantly. TODO: maybe this should be removed, because it is expensive, and some funding entity does pay for it.
  - ~ like driving a Formula 1 car. Only few can do it and it takes a long time to learn just the basics. TODO: This should be rethought, because it is somewhat hard, but not impossible for a reasercher.

#### Operating systems in supercomputer

##### 6.1) Most used operating system in supercomputers is
  - = Linux
  - ~ Windows 7
  - ~ macOS
  - ~ BeOS

Exam (5–10 questions), 80% correct to pass, multiple attempts allowed
Parallel computing concepts

## Parallel computing concepts

#### Computing in parallel

##### 1.1) Which of the following examples describes the idea of parallel computing
  = Five people pushing a car together.
  = Ten people filling a swimming pool with their own buckets.
  = Students gathering "trashes"(trash) from (the) school yard.
  ~ 4 x 100 meters relay
  ~ Working in three shifts
  ~ Reading two books at the same time instead of one.

#### Types of parallel algorithms

##### 2.1) Choose the appropriate parallel algorithm: Building a lego set with friends.
  = tightly coupled
  ~ trivially parallel

Jussi: nuo eivät ole algoritmeja vaan rinnakkaisalgoritmien luokkia

##### 2.2) Choose the appropriate parallel algorithm: Arraning a potluck (nyyttikestit).
  ~ tightly coupled
  = trivially parallel

Jussi: sama kuin edellä

#### Concepts

##### 3.1) Select all (the) right options that are related to parallel scaling
  = Choosing the right amount of resources for (the) task at hand may be tricky.
  = Good performance is a result of good orchestration of resources' co-operation.
  ~ (The) supercomputer takes care of scaling the computational "task"(tasks) automatically.
  ~ Programming languages offer automatic scaling. E.g. in Python one imports scomputer library and calls its scomputer.scale() method.

Jussi: scaling --> parallelization? ja tätä kyllä jotkut kielet/systeemit tekevät enemmän tai vähemmän automaattisesti
  
#### Parallel sum

-

#### Example: Smoothed particle hydrodynamics

-

Exam (5–10 questions), 80% correct to pass, multiple attempts allowed
More technical aspects of parallel computing

#### Overview

-

#### Shared memory computer

-

#### Distributed memory computer

##### 3.1) "What of the following things a distributed memory model tries to solve." (Which of the following problems does a distributed memory model try to solve.)
  = Memory and memory access limitations of a shared memory architecture.
  = Easy scalability. Jussi: hardiksen puolesta juu, mutta ohjelmoijalle hankalaa ...
  ~ CPU's need for fast access to memory. Aaron: En ymmärrä tätä lausetta
  ~ Handling of large and complex data.


#### Memory hierarchy

##### 4.1) Drag and drop the right memory / storage types in the memory hierarchy pyramid. On top is the fastest. (jos drag'n drop tyyppisiä tehtäviä on tuettu?)
  1. Registers
  2. L1
  3. L2
  4. L3
  5. Main memory (RAM)
  6. Remote memory
  7. File system disks

#### Parallelization within CPU core

##### 5.1) Tässä on aiheeseen liittyvä mielenkiintoinen artikkeli: https://blog.royalsloth.eu/posts/the-compiler-will-optimize-that-away/
     Tuosta jos saisi tuon kuvan (Process-Memory performance gap) mukaan kysymykseen.

     Following picture (pic X) describes the problem (of) what "inequal"(unequal?) development of (the) computer's core technology has caused: Processors need to wait for the memory. To improve the performance, amount of reads and writes to the memory must be optimised. Optimisation is done in program code. Select two methods that can be used to improve performance.
  = Structure the code to enable compiler instruction level parallelism.
  = Vectorisizing parts of code where possible. Jussi: ---> vectorizing
  ~ Reducing amount of cycles by giving less instructions.
  ~ Overclocking the supercomputer's random access memory (RAM).

#### Graphics processing units

-

#### Interconnect

##### 7.1) Select all (the) right options that are related to interconnect
  = To gain better performance, different nodes must be located relatively near to each other.
  = All things taken in consideration, (in) the best case scenario performance is up to 80 % of the theoretical peak performance of a supercomputer. Jussi: enemmänkin saa täysin keinotekoisella tehtävällä (kaikki data rekistereissä jne.) in practice?

  ~ Mahti's interconnect network topology is awesomely called Dragon's flight based on (the) TV serie Game of Thrones.
  ~ "Mahti's all"(All of Mahti's) nodes are connected "with"(to) each other through a fully connected network, and it was a summer job of three interns.
  ~ Interconnect is the second fastest part of the chain feeding data to CPU's, right after L1 cache.

Exam (5–10 questions), 80% correct to pass, multiple attempts allowed
HPC programming

#### How are supercomputers programmed?

##### 1.1)




#### HPC programming languages

##### 2.1)




#### Parallel programming

##### 3.1)



#### High performance libraries

##### 4.1)




#### Portability

##### 5.1)
