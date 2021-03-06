# Docker
Sample Docker Files

This docker files creates an image with Ubuntu 20.04 and Gstreamer (default version is 1.16.2) in it


$ sudo docker build -t gstreamer_focalfossa:1.0 .

$ xhost +

$ sudo docker run -i -t -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY gstreamer_focalfossa:1.0 /bin/bash

Now inside docker, you can check

$ gst-launch-1.0 videotestsrc ! xvimagesink


In this docker you cannot get avdec_h264 plugin as gstreamer1.0-libav is not installed while creating docker.
For that, run the docker and inside it run following command and exit

$ apt install gstreamer1.0-libav

$ docker ps -a

$ docker commit <container_id> new_image_name:tag_name(optional)

$ docker images

$ sudo docker run -i -t -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY new_image_name:tag_name /bin/bash

$ gst-inspect-1.0 avdec_h264


This way any changes made will get commited in the new docker image


For removing stopped containers, dangling images, dangling build cache

$ docker system prune

this will show nothing as the output of "docker ps -a" command if no container is running


To map a host directory inside a docker simply add below option to docker run

-v /host/directory/:/docker/directory/

e.g.

$ sudo docker run -i -t -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/vpagar/:/tmp/ -e DISPLAY=$DISPLAY new_image_name:tag_name /bin/bash

above command will map host machine's home directory i.e. /home/vpagar/ here into /tmp/ directory of docker 











