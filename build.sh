#!/bin/sh

lb config -d sid \
	--debian-installer live \
	--debian-installer-distribution testing \
	--debian-installer-gui true \
	--archive-areas "main contrib non-free" \
	--debootstrap-options "--variant=minbase" \
         --iso-publisher 'Custom Debian Builds; https://github.com/alex31bel/Debian-Live-Builds; alex@31bel.ru' \
         --iso-volume debian-testing-gnome \
         --clean \
         --color \
         --image-name debian-testing-gnome.beta
          
sudo lb build 
