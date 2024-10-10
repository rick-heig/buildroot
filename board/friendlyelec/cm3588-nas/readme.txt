FRIENDLYELEC CM3588 + NAS Kit
=============================
https://wiki.friendlyelec.com/wiki/index.php/CM3588

Build:
======
  $ make cm3588_nas_ep_defconfig
  $ make

Files created in output directory
=================================

output/images
.
├── Image
├── rk3588_bl31_v1.40.elf
├── rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v1.12.bin
├── rk3588-rock-5b.dtb
├── rootfs.ext2
├── rootfs.ext4
├── rootfs.tar
├── sdcard.img
├── u-boot.bin
└── u-boot-rockchip.bin

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
Enter 'root' as login user, and the prompt is ready.

wiki link:
----------
https://wiki.friendlyelec.com/wiki/index.php/CM3588
