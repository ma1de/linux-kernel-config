#!/bin/sh
emerge gentoo-sources
eselect kernel set 1
cp .config /usr/src/linux 
cd /usr/src/linux 
make && make modules_install && make install 
echo "Done!"
