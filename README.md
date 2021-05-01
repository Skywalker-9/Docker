# Docker
Sample Docker Files

This docker files creates an image with Ubuntu 20.04 and Gstreamer (default version is 1.16.2) in it

sudo docker build -t gstreamer_focalfossa:1.0 .
xhost +
sudo docker run -i -t -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY <docker_id> /bin/bash

Now inside docker, you can check
gst-launch-1.0 videotestsrc ! xvimagesink
