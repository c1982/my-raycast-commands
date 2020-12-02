#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title IP Location
# @raycast.mode fullOutput
# @raycast.packageName Tools

# Optional parameters:
# @raycast.icon 🤖

ipaddr=$(pbpaste)

if [[ $ipaddr =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    output=$(curl -s http://ip-api.com/line/$ipaddr)
    echo "IP: $ipaddr"
    echo $output
    echo ""
else
  echo "invalid IP"
fi
