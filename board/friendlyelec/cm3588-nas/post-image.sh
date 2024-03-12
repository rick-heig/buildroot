#!/usr/bin/env bash
set -e

gzip -fk "${BINARIES_DIR}/Image"
cp board/friendlyelec/cm3588-nas/cm3588-nas.its "${BINARIES_DIR}"
(cd "${BINARIES_DIR}" && mkimage -f cm3588-nas.its image.itb)
support/scripts/genimage.sh -c board/friendlyelec/cm3588-nas/genimage.cfg
