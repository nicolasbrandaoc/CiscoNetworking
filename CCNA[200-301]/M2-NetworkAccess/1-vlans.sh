
#!/bin/bash

# Script to display Cisco VLAN information
# How to use this script:
# Make it executable: chmod +x script.sh
# Run the script: ./script.sh


echo "         __               __                 __                            __ ";
echo " .-----.|__|.----..-----.|  |.---.-..-----. |  |--..----..---.-..-----..--|  |.---.-..-----. ";
echo " |     ||  ||  __||  _  ||  ||  _  ||__ --| |  _  ||   _||  _  ||     ||  _  ||  _  ||  _  | ";
echo " |__|__||__||____||_____||__||___._||_____| |_____||__|  |___._||__|__||_____||___._||_____| ";
echo "==============================="
echo "     CISCO VLANS"
echo "==============================="
echo ""

echo "Features:"
echo "1. Separates broadcast domain"
echo "2. Provides better security"
echo "3. Controls broadcast like ARP"
echo "4. Provides hierarchical subnet usage"
echo ""

echo "VLAN RANGES:"
echo "-------------------------------"
echo "VLAN range is 1-4094"
echo "1-1001 are usable normal-range VLANs"
echo "1002-1005 are reserved for token ring"
echo "1006-4094 are extended-range VLANs"
echo ""

echo "Configuring VLAN:"
echo "-------------------------------"

echo "LEGACY METHOD WITH VLAN DATABASE"
echo "sw1# vlan database"
echo "sw1(vlan-database)# vlan <vlan-id>"
echo "sw1(vlan-database)# end"
echo ""

echo "MODERN METHOD OF CONFIGURING VLAN"
echo "sw1(config)# vlan <vlan id>"
echo "sw1(config-vlan)# name <vlan name>"
echo ""

echo "Configuring Access Ports:"
echo "-------------------------------"
echo "Access port = switchport configured for only a single broadcast domain (VLAN)"
echo ""
echo "Access port configuration:"
echo "Switch(config)# interface <interface>"
echo "Switch(config-if)# switchport mode access"
echo "Switch(config-if)# switchport access vlan <vlan-id>"
echo ""

echo "Verifying VLAN:"
echo "-------------------------------"
echo "Verification commands:"
echo "sw1# show vlan brief"
echo "sw1# show interface <type> <number> switchport"
echo ""

echo "==============================="
echo "        End of Document"
echo "==============================="
echo "         __               __                 __                            __ ";
echo " .-----.|__|.----..-----.|  |.---.-..-----. |  |--..----..---.-..-----..--|  |.---.-..-----. ";
echo " |     ||  ||  __||  _  ||  ||  _  ||__ --| |  _  ||   _||  _  ||     ||  _  ||  _  ||  _  | ";
echo " |__|__||__||____||_____||__||___._||_____| |_____||__|  |___._||__|__||_____||___._||_____| ";