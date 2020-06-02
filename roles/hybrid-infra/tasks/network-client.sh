#!/usr/bin/env bash
yum update
yum install wget mtr traceroute tcpdump -y -q
yum --enablerepo=epel install hping3 -y -q
wget --no-check-certificate http://downloads.es.net/pub/iperf/iperf-3.0.6.tar.gz
tar zxvf iperf-3.0.6.tar.gz
yum install gcc -y
cd iperf-3.0.6
./configure
make
make install
cd src
