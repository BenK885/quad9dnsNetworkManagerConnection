#!/bin/bash

cp quad9dns.nmconnection /etc/NetworkManager/system-connections/
chown root:root /etc/NetworkManager/system-connections/quad9dns.nmconnection
chmod 600 /etc/NetworkManager/system-connections/quad9dns.nmconnection
nmcli connection reload
nmcli connection up quad9dns
