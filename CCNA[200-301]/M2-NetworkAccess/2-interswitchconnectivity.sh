


======= INTER SWITCH CONNECTIVITY ============

VLANS AND TRUNK PORTS


    What problem is solved by vlans?

    extending vlans between switches with VLAN Trunks
        isl compared to 801.1q
        Native vlan concept
        DTP and its various modes of operations

802.1q tag
    what is a 802.1q tag-?

Port types:

trunk port:
can have two or more vlans configured
can carry multiple vlan information
by default, all the vlan traffic is allowed from a trunk port

Trunking encapsulation
802.1q
    open standard
    all traffic axcept native vlan is inserted with a 802.1q tag
    support concept of native VLAN

Native vlan
    ieee 802.1q supported feature
    frame without tag is considered native vlan traffic
    must match on both ends of the trunk 
    by default. native vlan is 1
    can be changed using the swithport trunk native vlan <vlan-id> command

Configuring trunking encapsulation

Static turnk configuration
    switch(config)# interface <interface>
    switch(config-if)# switchport trunk encapsulation dot1q
    swithc(config-if)# switchport mode trunk
    switch(config-if)# end

Managing VLAN trunks 

one can manually control which vlans are allowd on a trunk 
(config-if)#switchport trunk allowrd vlan <vlan-list | add | all | except | none | remove>

Verifying trunk

verifying vlan and trunking 

switch# show vlan <brief>
switch# show interface trunk
show interface status
show interface <interface> switchport


======VLAN TRUNK PROTOCOL E VLAN NATIVA=======

VLan trunking protocol 
    used to advertise vlan attributes
    minimizes administrative overhead
    uses revision number to determine recent update
    higher revision number takes preference, default is 0
    trunk should form and VTP domain should match on both ends


VTP MODES
    SERVER:
        can add, remove, and modify vlan information
        vlan information is stored in vlan.dat located in the flash memory
        vlan 2-1001 are configurable.
    Client:
        cannot add, remove or modify vlan information
        vlan information is stored in vlan.dat file
    Transparent:
        can add, remove, and modify vlan information
        vlan information is not stored, pass through only
        dows support extended range vlans
        changes on the server do not affect the vlan database

Authentication:

VTP supports authentication
all the switches should have the same domain name and VTP password
md5 hash is checked before accespting vlan information
configured using the vtp password <password> command

configurating and verification

configuring VTP 

switch(config)# vtp mode server |client | Transparent
switch(config)# vtp domain <domain>
switch(config)# vtp password <password>
switch(config)# vtp version 1|2|3

Verifying vTP 

switch# show vtp status
switch# show vtp password



======dynamic trunk protocol==============

cisco propritary feature that allows cisco switches to negotiate trunk dnamically 
three modes:
    auto 
    on 
    desirable
desirable initiates the trunk, whereas auto responds only


Implementing DTP
configuring dtp
switch(config-if)# switchoprt mode dynamic 

disabling dtp
switch(config-if)# switchport nonegotiate

verigying dtp 

verification command

switch# show interface trunk
switch# show interface <interface> switchport



    



    