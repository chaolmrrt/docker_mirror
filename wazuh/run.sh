#!/bin/bash -e
p=`pwd`
t=`basename $p`
p=`dirname $p`
p=`basename $p`

echo $p:$t
docker build  --network=host -f Dockerfile -t "$p:$t" --add-host=gcc.gnu.org:127.0.0.1 --add-host=packages.wazuh.com:127.0.0.1 .
echo $p:$t

docker save $p:$t | gzip > ../../"$p""_""$t".tgz
