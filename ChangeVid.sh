#!/bin/bash
BRANCH=-340xx # Enter a brach if needed, i.e. -340xx or -304xx
NVIDIA=nvidia${branch} # If no branch entered above this would be "nvidia"
NOUVEAU=xf86-video-nouveau

# Replace -R with -Rs if you want to remove the unndeeded dependencies
if [ $(pacman -Qqs ^mesa-libgl$) ]; then
	pacman -S $NVIDIA ${NVIDIA}-libgl # Add lib23-${NVIDIA}-libgl and ${NVIDIA}-lts if needed
	# pacman -R $NOUVEAU
elif [ $(pacman -Qqs ^${NVIDIA}$) ]; then
	pacman -S --needed $NOUVEAU mesa-libgl # Add lib32-mesa-libgl if needed 
	pacman -R $NVIDIA # Add ${NVIDIA}-lts if needed
fi
