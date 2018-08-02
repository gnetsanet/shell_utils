#!/bin/bash
exec 200>/tmp/netslockfile.txt || exit 1
flock 200 || exit 1
    for i in {1..1000}; do echo $i; done
    sleep 30

flock -u 200
