# What are supercomputers used for?

Supercomputers are extremely versatile and can be utilized in many fields
of science and research. In this chapter, we discuss some typical examples
of applications of supercomputers in more detail.

## Collisions of nanoparticles

The video shows a simulation of gold nanoparticles colliding into a gold
surface. The size of the particle is about 20 nm, *i.e.* a 20 millionth part
of a millimeter. Understanding this type of processes is important e.g. for
radiation damage in spacecraft.
Macroscopic cratering, for instance by meteorites impacting the ground, can
intuitively be approached as a purely macroscopic interaction between two
solids, causing stresses and deformation.
Conversely, microscopic cratering by atoms can be understood as an atomic
process inducing the successive displacement of a limited number of individual
atoms.
Somewhere between the two extremes, the familiar macroscopic landscape must
emerge from microscopic processes. The overlap between phenomena at scales
across several orders of magnitude necessitates considerable computing power to
simulate, which can only be provided by parallel computing and supercomputers.

[Video](https://kannu.csc.fi/s/mJRjwt9c3XYN82Q)

## Spreading of aerosols in the air

When people breathe, they emit aerosols into the air. The spreading of
these aerosols can be studied with supercomputers, which in turn helps us
in fighting the COVID pandemic. The aerosol particles are vanishingly small and
light, so that they can be regarded as points being moved around by the air.
The motion of the air itself is a very complex thing to simulate. Even in
seemingly gentle conditions, such as blowing away the vapour over a cup of
coffee or the smoke of a candle, the motion of the air is visibly disordered, or
in technical terms turbulent.
Turbulence is extremely challenging to simulate, because a turbulent flow is a
superposition of vortices at all scales. Mathematician Lewis Fry Richardson put
it in more poetic terms:

> Big whirls have little whirls Which feed on their velocity,
> And little whirls have lesser whirls And so on to viscosity.

Simulating the transport of aerosol into a room therefore needs to all scales,
from the geometry of the room itself, all the way down to the minuscule vortices
that barely survive the dissipative action of viscosity.

[Video](https://youtu.be/5OIyde6STZ0)

## Climate change

In order to understand the climate effects of carbon emissions,
simulations over long time scales are needed. The video below shows
a millenium-scale simulation concerning the surface air temperature in
the Arctic and the Greenland glacier ice thickness, answering questions such as
when the Arctic ice is gone during the summer and winter. In this case, not only
does the system involve very desperate scales (in time as well as in space), it
also implies the coupling of systems governed by very different physical models,
each of which demands substantial computing power in its own right. Here a model
for the evolution of the ice cover and one for the Earth's atmosphere and oceans
are simulated in lockstep, providing each-other with time-dependent parameters
at the interface, such as snow precipitation from the atmosphere to the glacier,
and fresh water influx into the ocean due to the melting of the glacier.

[Video](https://esticc.net/highlights/visualisations/)

# Natural language processing

Neural networks and deep learning have enabled important advances in the
processing of language. By uncovering correlations between words or clusters of
words, neural networks are able to learn underlying elements of language such as
lexical context. Training such neural networks requires an enormous amount of text,
which is often obtained from sources such as Wikipedia, news articles, or forum
discussions among others. The processing of such a large corpus text is enabled
by supercomputers, in particular the more recent machines comprised of many GPU
nodes.

[Link](https://www.csc.fi/en/-/deepfin-luonnollisen-kielen-k%C3%A4sittelyn-aallonharjalla)

# Cancer diagnosis

An artificial intelligence system can identify biopsies containing
cancer nearly without error. Researchers digitally scanned more than
8,000 prostate biopsies to train and test the artificial
intelligence. An artificial intelligence system consisting of ten deep
neural networks was trained to distinguish between benign and
cancerous prostate biopsies.

Approximately six million images extracted from digitally scanned
biopsies were used to train the artificial intelligence. There were
approximately 30 terabytes of image data, and the final training data
consisted of more than 2 trillion pixels. With a normal single CPU, it
would have taken at least several months if not years to train the
model, but a supercomputer with GPUs dropped the total computing time to 2-3
days.

The goal of the artificial intellisgence system is not to replace
human experts, but rather to provide pathologists with a tool that
can, on one hand, improve work efficiency, while also promoting
patient safety by acting as a safety mechanism.


[Link](https://www.csc.fi/en/-/artificial-intelligence-detects-and-grades-prostate-cancer-nearly-without-error)


TODO: Other possible articles?

* [Topological superconductors](https://www.csc.fi/en/-/topologinen-suprajohde-uusi-vaihtoehto-kubittien-rakennusaineeksi)
* [Structural biology](https://www.csc.fi/en/-/rakennebiologia-biokemia-ja-mitokondriaalisen-kompleksi-i-n-md-simulaatiot-apuproteiinilla-on-avainasema-biokonversiossa)
* [Natural language processing](https://www.csc.fi/en/-/deepfin-luonnollisen-kielen-k%C3%A4sittelyn-aallonharjalla)
* [Structural biology, COVID](https://www.csc.fi/en/-/rakennebiologia-apuna-sars-cov2-l%C3%A4%C3%A4kekehityksess%C3%A4)
* [Nanocatalyst](https://www.csc.fi/en/-/researchers-from-the-university-of-jyv%C3%A4skyl%C3%A4-and-xiamen-university-discover-how-a-nanocatalyst-operates-at-the-atomic-level)
* [Elmer ICE](https://www.csc.fi/en/-/digging-deeper-in-dynamics-of-ice)
* [Cancer diagnosis](https://www.csc.fi/en/-/artificial-intelligence-detects-and-grades-prostate-cancer-nearly-without-error)
* [Jyrki's visualizations](https://www.csc.fi/en/-/visualization-speaks-more-than-a-thousand-numerals)
