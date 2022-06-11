#!/bin/bash -e

img="
pub/lanjelot/patator:master
pub/centos:7
ues_dev/hydra:v9.2
ues_dev/ues_crypto:1
uhs_dev/bd-mirroring:2.3.1_centos7
"

dev="127.0.0.1"
lab="10.182.172.119:3389"

for x in $img; do
	from="$dev"/"$x"
	to="$lab"/"$x"
	echo docker pull "$from"
	echo docker tag "$from" "$to"
	echo docker push "$to"
done

