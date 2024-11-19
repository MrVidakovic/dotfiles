#!/usr/bin/env bash
set -x
openvpn3 sessions-list | grep "Config name" | while read -r vpn_connection ; do
  openvpn3 session-manage --disconnect --config $(echo $vpn_connection | awk -F ':' '{ print $NF}' | tr -d ' ')
done
