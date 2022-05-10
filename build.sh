#!/bin/sh

lb config -d sid \
	--debian-installer live \
	--debian-installer-distribution sid \
	--debian-installer-gui true \
	--archive-areas "main contrib non-free" \
	--debootstrap-options "--variant=minbase" \
         --iso-publisher 'Custom Debian Builds; https://github.com/alex31bel/Debian-Live-Builds; alex@31bel.ru' \
         --iso-volume debian-sid-gnome \
         --clean \
         --color \
         --image-name debian-sid-gnome.beta
          
sudo lb build
