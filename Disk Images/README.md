# Disk Image Files

These are pre-made disk image files, ready to be transferred onto a USB key.

## Available Image Files

There are currently these image files available:

* 512MiB_1part_FAT16.img.bz2
* 1GiB_1part_FAT16.img.bz2
* 2GiB_1part_FAT16.img.bz2
* 8GiB_1part_FAT32.img.bz2

All have been compressed to conserve disk space.
When extracting using `bunzip2`, the files will be deflated to their real size.


## Transfer to USB key

Once deflated, you may transfer these image files directly onto a USB key.
You may use the `dd` command, i.e. like this:$

`dd if=512MiB_1part_FAT16.img of={DEVICE-IDENTIFIER-OF-USB-KEY}`

or alternatively, for a more user-friendly experience, use
[BalenaEtcher](https://www.balena.io/etcher/).


## How the Image Files were created

All disk image files have been initially created as VirtualBox VDI file.
They have been initialized within VirtualBox using either

* MS-DOS 6.22 for FAT16 images
* Windows 95 OSR2.1 for FAT32 images

using this methodology:

* New MBR created using `fdisk /mbr` command
* New primary DOS partition (FAT16 or FAT32) was created and set active
* Primary partition was formated using `format` command

Afterwards, the VDI images have been converted to RAW format using the `VBoxManage` command:

`VBoxManage internalcommands converttoraw SOURCEFILE.vdi DESTFILE.img`
