#!/bin/bash -e


if [ -z "$1" ]; then
	exit 1
fi

for x in `cat $1`; do
	_dir=`echo $x| sed 's,/,__,g'| awk -F':' '{print $1}'`
	_ver=`echo $x| awk -F':' '{print $2}'`
	if [ -z "$_ver" ]; then
		_ver="null"
	fi
	mkdir -p $_dir
	echo "FROM $x" > $_dir/$_ver
done
