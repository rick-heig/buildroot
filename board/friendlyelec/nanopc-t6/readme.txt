FriendlyElec NanoPC-T6 (PCI EP)
===============================

Build:
======
  $ make friendlyelec_nanopc_t6_ep_defconfig
  $ make

Files created in output directory
=================================

output/images
.
├── boot.scr
├── boot.vfat
├── Image
├── Image.gz
├── image.itb
├── nanopct6.its
├── rk3588_bl31_v1.40.elf
├── rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v1.12.bin
├── rk3588-nanopc-t6.dtb
├── rootfs.ext2
├── rootfs.ext4 -> rootfs.ext2
├── rootfs.tar
├── rtl_nic
│   ├── rtl8105e-1.fw
│   ├── rtl8106e-1.fw
│   ├── rtl8106e-2.fw
│   ├── rtl8107e-1.fw
│   ├── rtl8107e-2.fw
│   ├── rtl8125a-3.fw
│   ├── rtl8125b-2.fw
│   ├── rtl8168d-1.fw
│   ├── rtl8168d-2.fw
│   ├── rtl8168e-1.fw
│   ├── rtl8168e-2.fw
│   ├── rtl8168e-3.fw
│   ├── rtl8168f-1.fw
│   ├── rtl8168f-2.fw
│   ├── rtl8168fp-3.fw
│   ├── rtl8168g-2.fw
│   ├── rtl8168g-3.fw
│   ├── rtl8168h-1.fw
│   ├── rtl8168h-2.fw
│   ├── rtl8402-1.fw
│   ├── rtl8411-1.fw
│   └── rtl8411-2.fw
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
The FriendlyElec NanoPC-T6 has a 3-pin UART header.
https://wiki.friendlyelec.com/wiki/index.php/NanoPC-T6

Baudrate for this board is 1500000.

Login:
------
Enter 'root' as login user, and the prompt is ready.
