#! /bin/bash

VPN="SM HQ" 
if [[ -n $(expressvpn status | grep "Not connected") ]]; then 
echo ""
else 
expressvpn status | grep Connected | awk '{$1="";$2="";printf "%s\n", $0}'
fi

