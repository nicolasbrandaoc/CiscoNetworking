

layer2 etherchannel pagp e lacp


features

aggregates redundant links into a bundle
can provide aggregated bandwidth, avoiding congestion
can load balance using different algorithms
can bundle up to eight ports
all the ports should have the same speed and duplex
provides loop-gree layer 2 network

PAgP 
    cisco proprietary
    modes:
        on - no negotioation,forces the channel
        desirable - sends PAgP initiation messages
        auto - passively listens to the PAgP messages

lacp
ieee 802.3ad standard
modes  modes:
        on - no negotioation,forces the channel
        desirable - sends PAgP initiation messages
        auto - passively listens to the PAgP request



configuring etherchannel

configuration commands

switch(config-if)# channel-group <group number> mode <mode>

verifying etherchannel

verification commands
switch# show etherchannel summary








LAYER 3 ETHERCHANNEL (PAGP E LACP)

using a layer 3 etherchannel makes more sense with multiple parallel links between two switches. By doing so, each pair of links acts as one layer 3 link. So, each pair of switches has one routing protocol neighbor relationship with the neigbor, and no two. Each switch learns one route per destination per pair of links, and not two.
IOS then balances the traffic, often with better balancing than layer 3 balancing. Overall, the layer 3 etherchannel approach works much better than leaving each link as a separate routed por and using layer 3 balancing.

LAYER 3 - ETHERCHANNEL (LACP)

Configuring and monitoring etherchannel:


interface GigabitEthernet1/0/13
no switchport
no ip address
channel-group 12 mode on

!

intercae GigabirEthernet 1/0/14
no switchport 
no ip address
channel-group 12 mode on

!

interface Port-channeel12
no switchport
ip address 10.1.12.1 255.255.255.0




command of verification::
SW-1 show etherchannel 12 summary



