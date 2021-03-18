# How are supercomputers programmed?

Programming of scientific applications for supercomputers shares many
similarities to programming "ordinary" applications for desktop
computers, mobile devices, web services etc., and thus some tools used
are very similar. On the other hand, some aspects of programming for
supercomputers are very different.

For desktop applications, the graphical user interface is important
element, whereas many scientific applications, especially
non-commercial ones, might not have a graphical user interface at
all. In desktop application, whether an operation takes 0.01 second or
0.10 second is most likely irrelevant to the user, but if the operation
is executed ten million times in scientific application, the
difference is ten days! Thus, good performance is often much more
critical for supercomputer applications.

Final major difference is that desktops have only few CPU cores in
comparison to the hundreds of thousands in the biggest supercomputers,
and thus the very different approaches need to be used for parallel
programming. 

In this chapter we discuss in more detail languages and
methods used in programming supercomputers.
