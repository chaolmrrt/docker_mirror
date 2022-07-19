docker run -it --network=host --add-host=gcc.gnu.org:127.0.0.1 --add-host=packages.wazuh.com:127.0.0.1 -v `pwd`/i.sh:/i.sh -v `pwd`/qemu-aarch64-static:/usr/bin/qemu-aarch64-static arm64v8/centos:7

