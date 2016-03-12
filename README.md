## Dockerfile for building Omnirom

### Some info
This dockerfile is based on ubuntu 14.04 and will create a base environment for building android roms.
I choosed to keep the home folder outside the container to be able to move it when i want to build to another machine.

I've used [this](http://docs.omnirom.org/Setting_Up_A_Compile_Environment) guide as reference.


### Installation

1. Install [Docker](https://www.docker.com/).

2. To build run: docker build -t masciospam/omnirom-builder .


### Usage

    docker run --tty --interactive -v /PATH-TO-EXTERNAL-FOLDER/:/home/builder/ masciospam/omnirom-builder
