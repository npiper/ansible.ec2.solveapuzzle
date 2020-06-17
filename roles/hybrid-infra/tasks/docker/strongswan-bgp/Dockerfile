FROM centos:7
LABEL maintainer="Neil Piper <neiltpiper@gmail.com>"

ENV REFRESHED_AT 2020-05-19
ENV SWAN_VER 3.32

WORKDIR /opt/src

RUN yum install -y -q epel-release
RUN yum repolist all
RUN yum clean all
RUN yum update -y -q
RUN yum install strongswan -y -q
RUN systemctl enable strongswan

RUN yum install -y -q ntp
#RUN systemctl status chronyd

RUN echo "Installing a BGP Router"

#RUN sed -i 's/enforcing/disabled/g' /etc/selinux/config /etc/selinux/config
#RUN setenforce 0
RUN yum install -y -q iptables-services
RUN systemctl enable iptables
#RUN systemctl start iptables
RUN yum install -y -q quagga setsebool zebra_write_config 1
RUN chmod -R 777 /etc/quagga/
RUN systemctl enable zebra
#RUN systemctl start zebra
#RUN systemctl start bgpd
RUN systemctl enable bgpd
#RUN cp /usr/share/doc/quagga-*/bgpd.conf.sample /etc/quagga/bgpd.conf

CMD ["/usr/bin/wc","--help"]
