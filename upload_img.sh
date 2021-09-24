#!/bin/bash -e

if [ -n "$1" ]; then
        _dir="$1"/
        docker images| grep -v ^REPOS | awk '{a=$1":"$2; b="'"$_dir"'"""a;print "docker tag "a" "b" && docker push "b" && docker rmi "b}'
fi

