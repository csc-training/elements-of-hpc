## How users access supercomputers and run jobs

In contrast to the familiar situation where a user runs e.g. Word on his or her personal laptop, a supercomputer may serve hundreds or thousands of users who connect to the system through internet using typically SSH and a *command line interface*. Also, typically the users cannot run their programs directly whenever they want (this would called *interactive use*) but have to submit their jobs through a *batch queueing system*, which tries to share the computing time among the users in a fair way.

More precisely, the user describes in a special file (often called a *batch script*) what executable is to be run, how many nodes, cores and possibly GPUs and how much memory is to be used and finally how much time is to be reserved for the job. The batch script is submitted to the batch queueing system, which uses a complicated algorithm to decide when and in what subset of the nodes the job will be run.

Typically, the more nodes and other resources and/or time a job requires, the longer it must spend time in the queue to wait for its turn to be executed.

