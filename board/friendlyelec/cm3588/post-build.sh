#!/bin/bash

BOARD_DIR="$(dirname "$0")"

if [ "${UTWO}" == "y" ]; then
	echo "U2 CSD EP post build"
	install -m 0644 -D "$BOARD_DIR"/extlinux-u2-ep.conf "$TARGET_DIR"/boot/extlinux/extlinux.conf
elif [ "${TSIX}" == "y" ]; then
	echo "T6 EP post build"
	install -m 0644 -D "$BOARD_DIR"/extlinux-t6-ep.conf "$TARGET_DIR"/boot/extlinux/extlinux.conf
else
	echo "CM3588 NAS EP post build"
	install -m 0644 -D "$BOARD_DIR"/extlinux-cm3588-ep.conf "$TARGET_DIR"/boot/extlinux/extlinux.conf
fi

# Automatic login
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^console::respawn:-/bin/sh' ${TARGET_DIR}/etc/inittab || \
	sed -i 's,console::respawn:/sbin/getty -L  console 0 vt100 # GENERIC_SERIAL,console::respawn:-/bin/sh,g' ${TARGET_DIR}/etc/inittab
fi
