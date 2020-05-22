FROM debian:latest

RUN apt-get update
RUN apt-get install strongswan git -y -q
RUN cd /root
RUN git clone https://github.com/andrewpuch/multi_region_vpn_connection.git
RUN cp multi_region_vpn_connection/ipsec.sh /sbin
RUN cp multi_region_vpn_connection/ipsec.secrets /etc
RUN cp multi_region_vpn_connection/ipsec.conf /etc
RUN chmod 744 /sbin/ipsec.sh
RUN chmod 744 /etc/ipsec.secrets
RUN chmod 744 /etc/ipsec.conf
RUN openssl rand -base64 64

CMD ipsec restart
