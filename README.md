# quad9dnsNetworkManagerConnection
Network Manager Connection Profile for Quad9 DNS servers and a simple script for installation and activation.

## NetworkManager connection profile
`quad9dns.nmconnection`
```shell
[connection]
id=quad9dns
uuid=301c8c82-a01e-411f-a366-d5f3d9a758f1
type=ethernet
autoconnect=false
permissions=
timestamp=1676735330

[ethernet]
mac-address-blacklist=

[ipv4]
dns=9.9.9.9;149.112.112.112;
dns-search=
ignore-auto-dns=true
method=auto

[ipv6]
addr-gen-mode=stable-privacy
dns=2620:fe::fe;2620:fe::9;
dns-search=
ignore-auto-dns=true
method=auto

[proxy]
```


## "Installation & activation script"
The script will copy the connection profile file to the right location, set permissions, reload connections in NetworkManager and automatically activate the new connection profile.

run via `sudo ./quad9dns.sh`

`quad9dns.sh`
```shell
cp quad9dns.nmconnection /etc/NetworkManager/system-connections/
chown root:root /etc/NetworkManager/system-connections/quad9dns.nmconnection
chmod 600 /etc/NetworkManager/system-connections/quad9dns.nmconnection
nmcli connection reload
nmcli connection up quad9dns
```
