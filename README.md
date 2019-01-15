# docker-minimserver

# Introduction

MinimServer is a new UPnP AV music server with a number of innovative features that make it easier to organize and explore your music collection. If you have a network music player that supports the UPnP AV standards (see this page), you'll get much more from your music collection if you're using MinimServer as your music server software.

# Installation

Clone this repository:

```git clone https://github.com/wdstar/docker-minimserver.git```

Build the image:

```cd docker-minimserver```

```git checkout armhf #Run this command if the device is a Raspberry```

```docker build --tag="$USER/docker-minimserver" .```

# Quick Start

Run your build (as a daemon):

```docker run -d --name=<your_container_name> --net=host -v <path_to_your_music>:/media/:ro $USER/docker-minimserver:latest```

# Configuration

Configuration is available through minimwatch program

# Shell Access

For debugging and maintenance purposes you may want access the containers shell. Either add after the run command or tun e.g.

```docker exec -it "$USER/docker-minimserver" bash  ```

or

```docker ps```
```docker exec -it <container-id> bash   ```

# Autostart the container

add the parameter ``--restart=always`` to your docker run command.
