#!/bin/bash

ip a | grep inet6 | grep -v "::1" | awk '{print $2}' | head -n 1 > ip_file.txt
IPV6=$(cat ip_file.txt)
sha256sum ip_file.txt > hash_file.txt
HASH=$(cat hash_file.txt | cut -d' ' -f1)

echo "******************************************"
echo "IPV6 Address =" $IPV6
echo "Sha256 =" $HASH
echo "******************************************"
