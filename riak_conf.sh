#!/bin/sh
local_host=$(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
sed -i -e 's/nodename = riak@127.0.0.1/nodename = riak@'$local_host'/g' /etc/riak/riak.conf
sed -i -e 's/listener.http.internal = 127.0.0.1:8098/listener.http.internal = '$local_host':8098/g' /etc/riak/riak.conf
sed -i -e 's/listener.protobuf.internal = 127.0.0.1:8087/listener.protobuf.internal = '$local_host':8087/g' /etc/riak/riak.conf
sed -i -e 's/search = off/search = on/g' /etc/riak/riak.conf
echo riak.conf updated with ip : $local_host
