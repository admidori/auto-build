#!/bin/sh
NOW_DIR=$(pwd)
ABD_DIR=${NOW_DIR%/installers}
source ABD_DIR/.env

echo "Auto-build update..."
git pull
docker-compose build
echo "Update complete!"
echo "Welcome to Auto-build Version:$VERSION!"
echo "Check release notes -> https://github.com/rp-agota/auto-build/releases/tag/$VERSION"