# TESTDISK

This is the test suite for the various CH375 drivers.
Basically, what this does is the following:

* Iterate through all available driver versions
* Perform a benchmark using `DISKTEST.EXE`


## Create a Boot Disk

I'm not supplying any premade boot disks here, only the files to be included onto the boot disk.

Create a DOS boot disk using your favorite DOS distribution like this:

`format a: /s`

Then, copy over all files from the TESTDISK directory directly into the boot floppy's root directory, i.e.:

`xcopy /s TESTDISK/*.* A:\`


## What else needs to be on the Boot Disk?

Nothing, really!

You don't need `CONFIG.SYS`, any other drivers, just the `AUTOEXEC.BAT` and the other files supplied with this distro.

I deliberately excluded any additional stuff, like memory managers, disk cache, or anything else.
It's intended to run from a "as-plain-as-possible" DOS, to allow for a most basic comparison between different DOS releases.

The test suite will install it's own differing versions of `CONFIG.SYS` during the test run,
to load the appropriate drivers.


## How does it work?

Basically, `AUTOEXEC.BAT` will call up `\CH375\TEST.BAT`, which then performs some actions

* loading each driver in turn and reboot
* run a benchmark
* then start over with the next driver

Stages are tracked using tracking files in `\TEMP` directory, so the `TEST.BAT` knows, where it left off.


## But why are you not using "advanced DOS feature XYZ"?

The implementation is very basic, and uses the lowest common demoninator.
As such, I decidedly left away any advanced features, such as

* dynamic startup menus
* modern BATCH functionalities, such as FOR loops, etc

This allows the BATCH files to run on a broader range of different DOS versions,
and you don't need to care for too many differences between like MS-DOS, FreeDOS, DR DOS, etc.


## Which DOS versions are supported

I didn't test all of them, I mostly focused on DR DOS 6, MS-DOS 6 and IBM DOS 5.

It should run on FreeDOS, and to some extend also on older DOS version, like DOS 4 and even DOS 3.
However, I didn't test it, and anything below MS-DOS an IBM DOS 4 will most likely not work without
also limiting the capacity on the USB key, because these old DOS versions can't cope with partition sizes above 32 MiB.

Your mileage may vary.
I'm welcoming all contributions to improve things.


## Included Drivers

Currently, the following drivers are included

* Original (unpatched) drivers
 * CH375 V1.9
 * CH375 V1.9A
 * CH375 V2.0A
* FreddyV's patched drivers
 * CH375286.SYS (286 driver)
 * CH375V16.SYS (16-bit driver for the Lo-tech original board)
 * CH375V86.SYS (8086 driver)
 * CH375V88.SYS (8088 driver)
 * CH375216.SYS (286 16-bit driver for the Lo-tech original board)


## Other included Files

* `DISKTEST.EXE` DOS Disk Tester from [Lo-tech](https://www.lo-tech.co.uk/wiki/DOS_Disk_Tester)
* `REBOOT.COM` command (sourced many, many years ago from I honestly don't remember from where, sorry!) 
* `CAPTURE.COM` command by [Jem E. Berkes](http://www.pc-tools.net/)


## Links

* FreedyV 022 drivers sourced from [VCFED forums](https://forum.vcfed.org/index.php?threads/isa-usb-board.76978/post-1263624)
* CH375 drivers sourced from original CD, and from
 * [toughdev](http://www.toughdev.com/content/2018/04/usb-flash-drives-on-8-bit-isa-bus-using-ch375-isb-to-usb-adapter/)

