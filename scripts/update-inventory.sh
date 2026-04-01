#!/bin/bash
# Usage: ./scripts/update-inventory.sh '["1.2.3.4","5.6.7.8"]' '172.199.10.180'
EC2_IPS=$1
DB_IP=$2

EC2_1=$(echo "$EC2_IPS" | jq -r '.[0]')
EC2_2=$(echo "$EC2_IPS" | jq -r '.[1]')

sed -i "s/PLACEHOLDER_EC2_IP_1/$EC2_1/" ansible/inventory/hosts.yml
sed -i "s/PLACEHOLDER_EC2_IP_2/$EC2_2/" ansible/inventory/hosts.yml
echo "Updated EC2 IPs: $EC2_1, $EC2_2"
echo "DB IP: $DB_IP"
