#
# Ubuntu Dockerfile to build a OmniRom build environment
#
#

FROM ubuntu:14.04

# Install.
RUN apt-get update -y

RUN apt-get install -y git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib

RUN apt-get install -y openjdk-7-jre openjdk-7-jdk

RUN apt-get clean

ADD http://commondatastorage.googleapis.com/git-repo-downloads/repo /bin/repo
RUN chmod a+rx /bin/repo

RUN \
  useradd -m builder && \
  chown builder:users -R /home/builder/

USER builder

RUN \
  git config --global user.email "your@email.address" && \
  git config --global user.name "Your Name"

# Set environment variables.
ENV HOME /home/builder

WORKDIR $HOME
ENTRYPOINT ["/bin/bash"]

# to run: docker run --tty --interactive -v /run/media/masciospam/Pippirippipi/out-of-container/:/home/builder/ 
masciospam/omnirom-builder
