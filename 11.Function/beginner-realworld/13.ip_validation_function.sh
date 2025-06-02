#!/bin/bash

is_valid_ip() {
  local ip="$1"
  if [[ $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "$ip is a valid IP"
  else
    echo "$ip is NOT a valid IP"
  fi
}

is_valid_ip "192.168.1.1"
is_valid_ip "999.999.999.999"

