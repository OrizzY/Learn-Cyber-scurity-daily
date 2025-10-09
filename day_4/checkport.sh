#!/bin/bash
check(){
	ip=$1; port=$2
	nc -z -w1 "$ip" "$port" && echo "$ip:$port open" || echo "$ip:$port closed"
}
if [ $# -lt 2 ]; then
	echo "Usage: $0 <ip> <port>"
	exit 1
fi
check "$1" "$2"
