#!/usr/bin/env bash

ip ="$1"

for p in 22 80 443 135 139 445 3389; do
  nc -z -w1 $p && echo "$ip:$p open" || echo "$ip:$p closed"
done
