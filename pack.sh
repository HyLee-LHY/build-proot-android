#!/bin/bash

set -e
shopt -s nullglob

. ./config

for ARCH in $ARCHS
do

set-arch $ARCH

tar -czvf "$PKG_DIR/root-proot-android-$ARCH.tar.gz" -C "$INSTALL_ROOT/.." root

done
