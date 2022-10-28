FROM quay.io/almalinux/almalinux:8.6

RUN dnf install -y dnf-plugins-core epel-release yum-utils
RUN dnf config-manager --enable epel
RUN dnf config-manager --set-enabled powertools
RUN dnf update -y
RUN dnf upgrade --refresh -y
RUN dnf group install -y "Development Tools"
RUN dnf install -y \
        bc \
        openssl \
        openssl-devel \
        dwarves \
        python3 \
        bash-completion

# arm64 build support
RUN dnf install -y binutils-aarch64-linux-gnu gcc-aarch64-linux-gnu

