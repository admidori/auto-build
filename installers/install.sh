#!/bin/sh
NOW_DIR=$(pwd)
ABD_DIR=${NOW_DIR%/installers}

chmod a+x $ABD_DIR/abd
ln -si $ABD_DIR/abd /usr/local/bin
echo "Install complete!"
echo "Thank you for installing! Welcome to Auto-build(abd)!"