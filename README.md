# Container image to build RHEL 8

A container image to build the
[RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux)
8 OS.

## Usage

```sh
podman pull docker.io/walac/rhel8-build:latest

podman run -it -v <source dir>:/rhel8 -w /rhel8 docker.io/walac/rhel8-build:latest 
```
