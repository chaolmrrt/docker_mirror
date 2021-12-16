#!/bin/bash

if [ $# -lt 1 ]; then
	echo './import_img.sh  ceph_ceph:v16 [path]'
	exit
fi

_mirror="registry.cn-beijing.aliyuncs.com/rrt"
if [ -n "$2" ]; then
	_upload="127.0.0.1/$2"
else
	_upload="127.0.0.1/pub"
fi


_url_from_mirror=$_mirror"/"`echo $1|sed 's,/,_,g'`

_url_origin=`basename "$_url_from_mirror"| tr '_' '/'`
_url_upload=$_upload"/"$_url_origin

echo docker pull $_url_from_mirror
echo docker tag $_url_from_mirror  $_url_upload
echo docker push $_url_upload
echo docker rmi $_url_upload
#echo docker rmi $_url_from_mirror $_url_upload

