#!/usr/bin/env bash
set -e
EC2_IP1="$1"
EC2_IP2="$2"
DB_IP="$3"

if [[ -z "$EC2_IP1" || -z "$EC2_IP2" || -z "$DB_IP" ]]; then
  echo "Usage: $0 <ec2_ip1> <ec2_ip2> <db_ip>"
  exit 1
fi

INVENTORY="ansible/inventory/hosts.yml"
cp "$INVENTORY" "$INVENTORY.bak"
sed -i "s/PLACEHOLDER_EC2_IP1/$EC2_IP1/g" "$INVENTORY"
sed -i "s/PLACEHOLDER_EC2_IP2/$EC2_IP2/g" "$INVENTORY"

echo "✅ Inventory updated:"
echo "   EC2-1: $EC2_IP1"
echo "   EC2-2: $EC2_IP2"
echo "   DB:    $DB_IP"
