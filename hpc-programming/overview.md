# How are supercomputers programmed?

Programming scientific applications for supercomputers shares many
similarities to programming "ordinary" applications for desktop
computers, mobile devices, or web services, and some of the tools used
are very similar. Then again, some aspects of programming for
supercomputers are very different.

For desktop applications, the graphical user interface is an important
element, whereas many scientific applications, especially
non-commercial ones, might not even have a graphical user interface at
all. In a desktop application, whether an operation takes 0,01 seconds or
0,10 seconds is most likely irrelevant to the user, but if the operation
is executed ten million times in a scientific application, the
difference is ten days! Thus, good performance is often much more
critical for supercomputer applications.

Another major difference is that desktops only have few CPU cores in
comparison to the hundreds of thousands in the biggest supercomputers,
and thus, very different approaches are needed in parallel programming
to fully utilize the hardware.

In this chapter, we discuss in more detail the languages and
methods used when programming for supercomputers.
