#!/bin/bash
#
# This script modifies the preferences of an old OpenToonz snap version in order to correctly set the ffmpeg path.
#

# Only run this command once so we don't add extra startup time after the upgrade.
if [[ ! -f "$SNAP_USER_COMMON/ffmpeg-path-fixed" ]]; then
    PREFERENCES_FILE="$SNAP_USER_COMMON/.config/OpenToonz/stuff/profiles/layouts/settings.$USER/preferences.ini"

    # If the file doesn't exist, it will be created by OpenToonz using the correct template in this snap, so no action is needed.
    if [[ -f "$PREFERENCES_FILE" ]]; then
      crudini --set "$PREFERENCES_FILE" General ffmpegPath "/snap/opentoonz/current/usr/bin/"
    fi
    touch "$SNAP_USER_COMMON/ffmpeg-path-fixed"
fi

# Run the next command in the command-chain
exec "$@"
