#!/bin/sh
echo "Auto-build update..."
ABD_DIR=${NOW_DIR%/installers}
git pull
docker-compose build
echo "Update complete!"