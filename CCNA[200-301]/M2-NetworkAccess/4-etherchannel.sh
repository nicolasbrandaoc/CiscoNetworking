

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

