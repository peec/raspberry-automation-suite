#!/bin/bash

# CONFIG
STREAM_URL="tcp://10.0.0.5:6666"

# SCRIPT
v4l2-ctl --set-fmt-video=width=1080,height=720,pixelformat=H264 -d /dev/video0
dd if=/dev/video0 bs=512K | /usr/local/bin/ffmpeg -i - -vcodec copy -an -f flv -metadata streamName=streamgang $STREAM_URL
v4l2-ctl --set-ctrl=brightness=50 --device=/dev/video0
