#!/bin/bash
for ip in 192.168.0.{1..10}; do
ping -c 1 -W 1 "$ip" > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "$ip is up"
	else
		echo "$ip is down"
	fi
done
