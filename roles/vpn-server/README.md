# Foxpass vPN

https://github.com/foxpass/foxpass-ipsec-vpn

# VPC Cheat Sheet, IP and CIDR ranges

https://kthx.at/subnetmask/


# Docker IPSec VPN Server

https://github.com/hwdsl2/docker-ipsec-vpn-server

https://github.com/hwdsl2/setup-ipsec-vpn/blob/master/docs/clients.md

# Check server status

```
ipsec status

ipsec whack --trafficstatus
```

# Services starting

```
# Start services
mkdir -p /run/pluto /var/run/pluto /var/run/xl2tpd
rm -f /run/pluto/pluto.pid /var/run/pluto/pluto.pid /var/run/xl2tpd.pid

/usr/local/sbin/ipsec start
exec /usr/sbin/xl2tpd -D -c /etc/xl2tpd/xl2tpd.conf
```

PSK: cjhpiGctrm8dfd6uiGiz
Pass: MHENymF6sUcpZiF8
User: vpnuser

# Site to Site IPSec VPN with Strongswan

https://medium.com/@georgeswizzalonge/how-to-setup-a-site-to-site-vpn-connection-with-strongswan-32d4ed034ae2

https://www.youtube.com/watch?v=JrgvfzX34UI

https://github.com/rgl/strongswan-site-to-site-vpn-vagrant
