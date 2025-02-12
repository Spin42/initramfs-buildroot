#!/bin/sh

set -e

# Notes on compressor options:
#
# 1. -9 -> max compression
# 2. -f -> force
# 3. -k -> keep rootfs.cpio
# 4. xz -C crc32 -> Linux kernel doesn't seem to support the default check (crc64)
# 5. gzip -n -> Don't store original filename
cd "$BINARIES_DIR" &&
    (
        gzip -9 -n -f -k rootfs.cpio
        xz -9 -C crc32 -f -k rootfs.cpio
    )

