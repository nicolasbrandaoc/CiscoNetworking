

-===========CDP E LLDP


cisco discovery protocol cdp

cisco proprietary
layer 2 protocol for neighbor discovery
provides information of platform, interface ip address and os version
helps witch preparing network diagram

configuration
enabling cdp
router(config)# cdp Run
router(config)# cdp timer <seconds>

disabling cdp 
router(config)# no cdp Run
router(config-if)# no cdp enable 

verifying cdp 
verification commands

router# show cdp naighbor
router# show cdp neighbor <interface>
router# show cdp neighbor <interface> detail

---link layer discovery protocol lldp

open standard protocol, equivalent to cdp 
defined in ieee 802.1ab
media endpoint discovery (med) is an lldp enhancement for voice over ip (voip) applications
limited to only 802.1 media types (i.e. ethernet...but not wan interfaces)
cdp and lldp can be operational on same interface


lldp configuration

device(config)# lldp Run
device(config)# lldp holdtime 150
device(config)# lldp timer 15
device2(config)# interface ethernet 0/0
device2(config-if)# lldp transmit
device2(config-if)# end


verifying lldp 

show lldp traffic
show lldp neighbors


