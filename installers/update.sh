#!/bin/sh
PULL=$(git pull origin master > /dev/null)
UPDATE_STRING="Already up to date."

if [ "$PULL" = "$UPDATE_STRING" ]; then
    echo "abd: [ERROR] Already up to date."
    exit 0
else
    NOW_DIR=$(pwd)
    ABD_DIR=${NOW_DIR%/installers}
    source $ABD_DIR/.env

    echo "Auto-build update..."
    docker-compose build
    echo ""
    echo "######### Update complete! #########"
    echo "Update complete!"
    echo "Welcome to Auto-build Version:$VERSION!"
    echo "Check release notes -> https://github.com/rp-agota/auto-build/releases/tag/$VERSION"
fi