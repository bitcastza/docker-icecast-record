#!/bin/bash
# {{ ansible_managed }}
# Record audio from the standard audio interface for the time specified. Saves
# the file with the format
set -e

DESTINATION=/srv/logs/
DURATION=10
FILENAME=`(date +%Y.%m.%d_%H.%M.%S)`-`(date -d "+$DURATION sec" +%H.%M.%S)`

ffmpeg -i $ICECAST_SOURCE -r 44100 -ab 160k -t $DURATION $DESTINATION/$FILENAME.mp3 1>/dev/null
