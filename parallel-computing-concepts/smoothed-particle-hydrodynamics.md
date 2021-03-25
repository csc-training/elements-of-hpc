# Example: Smoothed Particle Hydrodynamic simulation

Smoothed-particle hydrodynamics (SPH) is a computational method that
can be used for simulating fluid flows. Fluid is represented as
particles, which interact with each other only inside some effective
range. The particles are hard spheres, they have finite radius and
cannot overlap.

![Hard spheres interacting only within the shaded
area](images/smooth_particle.svg)

The video below demonstrates how SPH simulation can be parallelized
via domain decomposition.

TODO: beginning and end of the video should be edited out
![Parallel SPH simulation](https://kannu.csc.fi/s/QjdyPBQyimfXc5Y)
