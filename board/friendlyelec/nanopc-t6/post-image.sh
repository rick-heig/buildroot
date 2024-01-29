#!/usr/bin/env bash
set -e

gzip -fk "${BINARIES_DIR}/Image"
cp board/friendlyelec/nanopc-t6/nanopct6.its "${BINARIES_DIR}"
(cd "${BINARIES_DIR}" && mkimage -f nanopct6.its image.itb)
support/scripts/genimage.sh -c board/friendlyelec/nanopc-t6/genimage.cfg
