# To Do

Some stuff I have currently not implemented, or is known broken ...

* `DISKTEST`'s media check
* Directory enumerator, specifically to catch directory structure errors observed in DR DOS 6
* Check at least DOS 4 compatibility
* Include some sample benchmark results for documentation purposes
* drive detection sometimes fails, and picks the hard drive instead. Maybe a utility exists to check if it's a removable device?
* Sometimes, the CH375 doesn't initialize during a warm reset, but only after a full power-cycle. The driver will then also fail to initialize.
* Sometimes, the drivers just lock up and stall, which requires a hard reset as well
