FROM ubuntu:20.04
MAINTAINER viranjan.pagar@gmail.com

RUN apt-get update
RUN apt-get install -y libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly
CMD ["echo","Image Generated"]
