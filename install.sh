#!/bin/sh
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections 
sudo apt install -y oracle-java8-installer
sudo apt install oracle-java8-set-default
javac -version
cd ~
wget http://s3.amazonaws.com/downloads.basho.com/riak/2.2/2.2.0/ubuntu/trusty/riak_2.2.0-1_amd64.deb
sudo dpkg -i riak_2.2.0-1_amd64.deb
echo Riak installed!
