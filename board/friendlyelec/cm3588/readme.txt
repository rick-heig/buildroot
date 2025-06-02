FriendlyElec RK3588 boards
==========================

https://wiki.friendlyelec.com/wiki/index.php/CM3588

Build:
======

First, apply the configuration:

  $ make cm3588_ep_defconfig

Next build the default endpoint image (For CM3588 + NAS Kit):

  $ make

To build the endpint image with for the NanoPC T6:

  $ make TSIX=y

To build the endpint image with for the U2 CSD:

  $ make UTWO=y

Creating bootable SD card:
==========================

Simply invoke (as root)

sudo dd if=output/images/sdcard.img of=/dev/sdX && sync

Where X is your SD card device.

Booting:
========

Serial console:
---------------

Baudrate for this board is 1500000.

Login:
------

Login as root is automatic without password.

wiki link:
----------

https://wiki.friendlyelec.com/wiki/index.php/CM3588
