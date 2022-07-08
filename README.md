# TPC-CH375-testsuite

This is a DOS testsuite consisting of BATCH files, to assert different driver versions and benchmark results for the CH375 ISA2USB adapters.


## Disk Images

[Disk Images](./Disk%20Images) contains some ready-made disk image files,
which can be transferred over to USB keys.

The disk image files are MBR-partioned and either FAT16 or FAT32 formatted
and are expected to be compatible to the CH375 ISA2USB adapter.

## The Test Suite

[TESTDISK](./TESTDISK) contains the actual driver and benchmark test suite.
These are intended to be dropped onto a bootable DOS diskette, to run through
all available driver files.
