## Storage

* One important part of a Supercomputer is the infrastructure that we save our data. This infrastructure is called storage.

* With simple words you can think that a storage is a an area with many hard disks. For example, Mahti has a storage of 8.7 Petabytes (PB) or 8908.8 Terabytes (TB) of hard disks, totally around to 890 hard disks of 10 TB each. This means that the storage is almost 8908 Macbook Pro 13" with 1 TB available space each. However, the Macbook includes a faster storage than our single hard disk. A supercomputer can not always have a really big fast storage as it is significantly more expensive than the classic hard disks that we can just buy and have more storage space available. Considering a single layer DVD disc has size of 4.7 GB, our storage can save 1940981 DVDs.

* There are two general types of hard drives:
** Hard disk drives (HDD) which use one or more rotating discs and rely on magnetic storage
** Solid-state drives (SSD) which has no moving mechanical parts but use flash memory like the one in a USB flash drive. You can find SSD drives also in many laptops. However, there is different performance for an SSD on a laptop compared to an SSD on a supercomputer. Usually, the hardware for a supercomputer is developed for high and often utilization compared to a commercial SSD.  

* Users of the supercomputers need enough storage to save their data, execute their simulations, save output files, analyze data, thus, we need to have enough space to accomodate their requests. If a storage is slow or a user does not utilize it efficiently, the procedure of read or write files can be delayes and cause some delays to the executed application.

* The design of a storage can be a complicated procedure and it is out of the scope of this course. With simple words a parallel file system is designed in order to be able to support large parallel operations that read and write a file among also many users utilizing the filesystem in the same time. A parallel file system is a software designed to store data across multiple networked servers to accomodate high-performance access. There are many different parallel file systems where we just mention few of them and their links if you would like to read, such as [Lustre](https://en.wikipedia.org/wiki/Lustre_(file_system)){:target="_blank"}, [GPFS](https://en.wikipedia.org/wiki/GPFS){:target="_blank"}, [BeeGFS](https://en.wikipedia.org/wiki/BeeGFS){:target="_blank"}


* LUMI will provide storage for both cases of large available storage space with spinning disks and faster accelerated storage with faster technology. 

* Finally, some supercomputers have archiving storage constituted by magnetic tapes for storage where we can save data for long term and recover the data with slower performance than the other mentioned technologies. These tapes cost significantly cheaper than the hard disks, they have been around since 1950s. The technology is similar to older well-known VHS video tapes.

|Size in Bytes                |  Value              |   Metric  | 
|-----------------------------|---------------------|-----------|
! 1                           |   1                 | Byte      |
| 1 000                       |   1000              | Kilobyte  |  
| 1 000 000                   |   1000<sup>2</sup>  | Megabyte  |  
| 1 000 000 000               |   1000<sup>3</sup>  | Gigabyte  |  
| 1 000 000 000 000           |   1000<sup>4</sup>  | Terabyte  |  
| 1 000 000 000 000 000       |   1000<sup>5</sup>  | Petabyte  |  
| 1 000 000 000 000 000 000   |   1000<sup>6</sup>  | Exabyte   |  

* Under other standards, 1024 bytes constitute one kibibyte, so you can see different values, depending which metric you use. 
