## How high performance computing has changed the world

### The three paradigms of science

In scientific research various methods are used for finding explanations of natural phenomena and making predictions about their behavior. The traditional methods are experimental and theoretical. Experimental science is based on observations and measurements and theoretical science develops models (that are sometimes called laws of nature) which fit (or "explain") measurements and in the best case predict phenomena that have not yet been observed.

Early astronomy is an example of experimental science. Ancient astronomers watched the skies first with bare eyes and then with telescopes and recorded the positions and 
movements of the sun, the moon, stars, the planets of our solar system and so on. They noted that their observations followed certain patterns. Similarly, one can for 
example drop stones of various weights from towers of different heights and measure the time it takes the stones to hit the ground.

Based on these observations one may then be able to predict the time of sunset for a given day and say that the flight time of a rock is roughly the same regardless of the weight if dropped from the same height and so on. Next a theoretical scientist takes a look at the results and wonders how he or she explain them. For our examples mathematical models for gravity and dynamics developed by Newton were able to produce predictions that fit the measured results very nicely.

This is an example of the interplay between the experimental and theoretical approach, which are considered the two traditional paradigms of science. Usually observations come first and then theory developed to explain them. But not always; for example the existence of the positron (the antiparticle of electron) was first predicted by Paul Dirac in 1931 from a purely theoretical point of view. Subsequently Carl Anderson confirmed the existence of the positron experimentally in 1932 (and received a Nobel prize in 1936 for his discovery).

However, there are limits to what can be done with paper and pen or what kind of experiments can be set up. For example, continuing with the astronomical theme, it is 
easy enough to write down the equations that descibe the motion of the Sun, Moon and Earth (this a so called three body problem), but these equations cannot be solved in closed form. That is, there is no formula where one can plug in the time to get the positions of the heavenly bodies involved. However, an approximate solution can be found numerically.

On the other hand, consider climate and glaciers, for example. It is of crucial importance to know what is going to happen with them in the future. But naturally we cannot perform experiments in global scale to find that out. Similarly, in many cases the required experiments would be too expensive, too dangerous, too slow, too difficult or complex, unethical and so on. But we may still have an idea of the underlaying theory.

This brings us to computational science that is sometimes called the third paradigm of scientific research. 

### Computational science and data science

In computational science the typically complex mathematical 
models (e.g. systems of partial differential equations) describing the problem are solved using numerical algorithms which are then implemented as as computer programs and finally run on (typically high performance) computers. A rough outline of a computational science project is as follows:
1) Write down the equations describing the problem. This is called mathematical modeling.
2) Choose an efficient numerical algorithm for solving the model.
3) Implement the algorithm efficiently with a computer language. 
4) Run the resulting program on a computer.

Steps 2-4 are called numerical simulation of the problem.

In this way experiments can be partially replaced by simulations. Of course only experiments (if feasible) can validate the model and simulation results.

If the problem is complex (e.g. climate), the system to be simulated is large in some sense (e.g. a galaxy comprises a huge number of stars), the simulated time is long (e.g. long term climate simulations) or very high accuracy is needed the required amount of computing work quickly becomes enormous. 

In addition to solving mathematical models numerically, computers are used in increasing extent in analyzing large quantities of data. Data science can be defined as a field that uses various mathematic methods and algorithms to extract knowledge and insight from the data. This insight can in some cases be used for formulating new mathematical models. As an early example, the measurements of Tyko Brahe made up the data that Johannes Kepler analyzed when coming up with Kepler's laws of planetary motion. Later on, Newton showed that the Kepler's laws are consequency of his theory of gravitation.

Nowadays, various experiments produce vast amounts of data, that cannot be analyzed by pen and paper. As an example, the experiments in CERN's LHC particle accelarator produce on average one petabyte (one million gigabytes) of data per day, which would take 20 000 Blu-ray discs. Numerical imulations can also produce large amounts of data, and methods of data science can be used in analyzing it. Depending on the type of analysis, data science can involve also heavy numerical computations, such as when using artificial intelligence and machine learning methods.


### High performance computing (HPC)

High performance computing systems and supercomputers are developed to solve the most demanding problems of the computational and data science. With them amazingly complex 
large scale simulations can be performed. Supercomputers are unique scientific scientific tool in the sense that the same
apparatus can be used for studying both extremely short length and time scales (as in elemental particles) as well as extremely long length and time scales (as motion of galaxies in the universe), and everything between them. This is in contrast experimental research, where different scientific instruments are needed for different problems: particle accelerator in CERN cannot be used for studying cosmic waves, and a vast radiotelescope cannot be used for studying subatomic particles. Because of this versatility, supercomputers are used in multitude of application areas such as

- Fundamental sciences like partcile physics and cosmology.
- Climate, weather and earth sciences.
- Life sciences and medicine.
- Chemistry and material science.
- Energy; e.g oil and gas exploration and fusion research.
- Engineering; e.g. infrastructure and manufacturing
- Data analysis
- Artificial intelligence and machine learning

Thus, high performance computing resources and knowledge are a hugely important asset for any modern society providing a competitive advantage for researchers and industry. In the next section a number of application examples will be described in more detail.

High performance computing includes the hardware
- fast processors
- fast memories and fast data transfer between memories and processors
- fast interconnects between processors
- fast storage for data
- etc.

and software
- computing environment
  - operating system
  - compilers for programming languages
  - fast libraries for most common tasks and communication
  - performance analysis tools
  - etc.
- application software

In what follows some of the above aspects are described in more detail.
