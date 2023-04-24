#!/bin/bash

# Set variables for the connection profile name and DNS servers
connection_name="Quad9DNS"
ipv4_dns1="9.9.9.9"
ipv4_dns2="149.112.112.112"
ipv6_dns1="2620:fe::fe"
ipv6_dns2="2620:fe::9"

# Create the new connection profile with nmcli
nmcli con add con-name "$connection_name" type generic

# Add the IPv4 DNS servers to the connection profile
nmcli con mod "$connection_name" ipv4.dns "$ipv4_dns1 $ipv4_dns2"

# Add the IPv6 DNS servers to the connection profile
nmcli con mod "$connection_name" ipv6.dns "$ipv6_dns1 $ipv6_dns2"

# Reload the network manager configuration
nmcli general reload

# Bring up the new connection
nmcli con up "$connection_name"
