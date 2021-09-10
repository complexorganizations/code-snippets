#!/usr/bin/env bash

BASE_IP="10.0.0.0"
IP_CIDR="8"

if [ ${IP_CIDR} -lt 8 ]; then
    echo "Max range is 8."
    exit
fi

IP_MASK=$((0xFFFFFFFF << (32 - ${IP_CIDR})))

IFS=. read one two three four <<<${BASE_IP}

ip=$(((${two} << 16) + (${three} << 8) + ${four}))

ipstart=$((${ip} & ${IP_MASK}))
ipend=$(((${ipstart} | ~${IP_MASK}) & 0x7FFFFFFF))

seq ${ipstart} ${ipend} | while read currentip; do
    echo ${one}.$(((${currentip} & 0xFF0000) >> 16)).$(((${currentip} & 0xFF00) >> 8)).$((${currentip} & 0x00FF))
done
