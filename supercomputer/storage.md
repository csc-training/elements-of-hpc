# Data storage

An important part of a supercomputer is the infrastructure that is used
to store the data. This infrastructure is called storage.
Storage can be critical for the performance of applications in supercomputers.
If a storage is slow or a user does not utilize it efficiently,
reading and writing files can become a bottleneck.

One can think that storage is a collection of many
disk drives. For example, Mahti has a storage of 8,7 petabytes (PB) or
about 8900 terabytes (TB). This means that the storage is equal to over 8900
modern laptops with 1 TB available storage space in each. If we use dual layer
Blu-ray disk as a measure, the storage in Mahti is equivalent to over
170 000 Blu-rays.

Due to vast size of storage in supercomputers, one often
needs to make some compromises with respect to speed (faster disks are
more expensive). Thus, the disk in a laptop can be faster than the ones
in a supercomputer. To support disk intesive applications, many
supercomputers have a limited amount of special storage with high speed disks.

There are two common types of disk drives:
* Hard disk drives (HDD) which use one or more rotating discs and rely on
  magnetic storage.
* Solid-state drives (SSD) which have no moving mechanical parts but
  use flash memory like the one in a USB flash drive.

Both types of disks are used in supercomputers, however, due to the higher
prices for SSDs main storage is typically made of HDDs, and SSDs are
used for special high speed storage. The disks in a supercomputer differ
typically from the consumer devices as the hardware for a
supercomputer is designed for high and more frequent utilization.

Even though the individual disks in a supercomputer can be slower than
those in laptops, a supercomputers storage typically has a parallel
filesystem. This allows applications to read and write simultaneously
to multiple disks, decreasing the total read/write time significantly.
A parallel filesystem also allowsfor multiple users to utilize the same storage
at the same time more efficiently. There are many different parallel file
systems available, such as
[Lustre](https://en.wikipedia.org/wiki/Lustre_(file_system)),
[GPFS](https://en.wikipedia.org/wiki/GPFS),
[BeeGFS](https://en.wikipedia.org/wiki/BeeGFS), and
[Ceph](https://en.wikipedia.org/wiki/Ceph_(software)) to name a few.

[Supercomputers are capable of parallel input/output](images/parallel-io.png)

Some supercomputers have also archiving storage based on magnetic
tapes where users can save the data for a long period of time and recover it, however,
with slower performance than the other mentioned technologies. The tape-based
storage is significantly cheaper than hard disks, and it has been around since
the 1950's. The technology is similar to VHS tapes.


Storage terminology:

|Size in bytes                |  Scientific notation |   Unit    |
|-----------------------------|----------------------|-----------|
| 1                           |   1                  | Byte      |
| 1 000                       |   10<sup>3</sup>     | Kilobyte  |
| 1 000 000                   |   10<sup>6</sup>     | Megabyte  |
| 1 000 000 000               |   10<sup>9</sup>     | Gigabyte  |
| 1 000 000 000 000           |   10<sup>12</sup>    | Terabyte  |
| 1 000 000 000 000 000       |   10<sup>15</sup>    | Petabyte  |
| 1 000 000 000 000 000 000   |   10<sup>18</sup>    | Exabyte   |

