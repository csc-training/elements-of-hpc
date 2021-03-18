## Storage

An important part of a supercomputer is the infrastructure that we use to save our data. This infrastructure is called storage.

The storage (and memory) size is measured in bytes (B). A byte consists of eight bits (a bit can have two values, either 0 or 1). Historically, a byte is the 
number of bits needed to encode a single character of text, e.g. a, 0, $.

To put it simply, one can think that a storage is a collection a many hard disks. For example, Mahti has a storage of 8,7 petabytes (PB) or 8908,8 terabytes (TB) of hard disks, in total around to 890 hard disks of 10 TB each. This means the storage is equal to almost 8908 MacBook Pro 13" laptops with 1 TB available space in each. However, the MacBook includes a faster storage than our single hard disk. A supercomputer cannot always have a really big fast storage as it is significantly more expensive than the classic hard disks that we can just buy and have more storage space available. Considering a single layer DVD disc has size of 4,7 GB, our storage can save 1 940 981 DVDs.

There are two general types of hard drives:
* Hard disk drives (HDD) which use one or more rotating discs and rely on magnetic storage.
* Solid-state drives (SSD) which have no moving mechanical parts but use flash memory like the one in a USB flash drive. SSD drives are used in many laptops as well. However, there is a difference in performance between a SSD on a laptop and a SSD on a supercomputer. Usually, the hardware for a supercomputer is designed for high and more frequent utilization compared to a consumer SSD.

Supercomputer users need storage to save their data, execute their simulations, save output files, analyze data etc. Thus, the infrastructure needs to have enough space to accomodate their requests. If a storage is slow or a user does not utilize it efficiently, reading and writing files can become a bottleneck for application performance.

Designing a storage system can be complicated and is out of the scope of this course. To simplify, a parallel file system is required to support large parallel operations that read and write a single file as well as for many users to utilize the filesystem at the same time. A parallel file system is software designed to store data across multiple networked storage servers to facilitate high-performance access. There are many different parallel file systems available such as [Lustre](https://en.wikipedia.org/wiki/Lustre_(file_system)), [GPFS](https://en.wikipedia.org/wiki/GPFS), [BeeGFS](https://en.wikipedia.org/wiki/BeeGFS), [Ceph](https://en.wikipedia.org/wiki/Ceph_(software)) to name a few.

LUMI will provide storage for both cases of large available storage space with spinning disks and faster accelerated storage with faster technology. The first case will consist of 80-petabyte (PB) capacity while the fast storage will be 7 PB of flash storage. There will be also a data management service of 30 PB storage.

Finally, some supercomputers have archiving storage using magnetic tapes where users can save data for long term and recover it, however, with slower performance than the other mentioned technologies. The tape-based storage is significantly cheaper than hard disks, and it has been around since the 1950's. The technology is similar to VHS tapes.

|Size in bytes                |  Value              |   Metric  | 
|-----------------------------|---------------------|-----------|
! 1                           |   1                 | Byte      |
| 1 000                       |   1000              | Kilobyte  |  
| 1 000 000                   |   1000<sup>2</sup>  | Megabyte  |  
| 1 000 000 000               |   1000<sup>3</sup>  | Gigabyte  |  
| 1 000 000 000 000           |   1000<sup>4</sup>  | Terabyte  |  
| 1 000 000 000 000 000       |   1000<sup>5</sup>  | Petabyte  |  
| 1 000 000 000 000 000 000   |   1000<sup>6</sup>  | Exabyte   |  

* Under other standards, 1024 bytes constitute one kibibyte, so the values may differs, depending which metric is used. 
