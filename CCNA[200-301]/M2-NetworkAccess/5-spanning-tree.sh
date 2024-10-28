




=====================SPANNING-TREE====================


anti-bridging loop

IEE 802.1d 
- legacy protocol to prevent layer-2 loops
- usually called CST (Common Spanning Tree)
- No redundancy in traffic paths for frames



BPDUs 
-BPDU = Bridge protocol data unit
-Required to determine, and maintain, STP topology


IEEE 802.1d Timers
- Hello - 2 seconds
- Max Age - 20 seconds
- Fowarding Delay - more on this later


How the protocol work's?

elects root bridged based on the lowest BID, where BID consists of priority and MAC
Bridge priority
    by default, TDP bridge has priority of 32768
    can be configured in increments of 4096

STP PORT ROLES
    Port role = what is this port supposed to do in ordes to build/maintain the spanning-tree?
    designated ports
        -every collision domain requires one designated port
        -this port is responsible for transmitting BPDUs into the collision domain
        -DP = Port that has the least-cost path back to the root bridge
        -All ports on the root bridge are designated ports
        -Designated ports are always in the FORWARDING "state"


STP ROOT BRIDGE
    once root bridge elected, all other bridges/switches stop generating BPDUs
    root bridge generates BPDUs every hello interval
    other bridges receive, process, and foward BPDUs
        change "sending Bridge-ID" to their own value
        increment root cost to reflect their upstream cost to root bridge

STP CALCULATION
    after root bridge elected every other bridge elects its own, local root port 
    root port is a spanning-tree "port role"
        port on local switch with shortest, cumulative path-cost upstream to root bridge
        receives bpdus from upstream neighbors
        always in the fowarding state.

STP PORT COSTS
    every interface assigned an STP cost value.
    determined from interface bandwidth
    the higher the bandwidth the lower the cost
    10gbps=2
    1gbps=4
    100mbps=19
    10mbps=100

STP CACULATION 
1-Root bridge elected
2-after root bridge elected every other bridge elects its own, local root port
3-after each switch has determined its own root port, then a designated port is dethermined for each collision domain.


PORT STATES

STP PORT STATES
    DISABLE: port that is in the down state, usualy not part of stp topology
    BLOCKING:port the is only allowed to receive the BPDU, cannot send or receive data or add MAC addresses on this port
    LISTINING: port thet is allowed to send and receive BPDU, can acrively participate in the STP, cannot send or receive data
    LEARNING: allowed to send and receive bpdu, can learn MAC address to add its address table, cannot send or receive data.
    FORWARDING DELAY TIMER= 15-SECONDS
    FORWARDING:port that transitions to the fowarding state when the fowarding delay expires, can send and receive data


IMPLEMENTING A SPANNING-TREE

PER-VLAN SPANNING TREE

PVST = Cisco Default
Number of stp instances depends on number of vlans 
effective where load sharing is required
bpdu is sent for each vlan
rapid convergence
both the encapsulations isl and ieee 802.1q are supported
consumes resouces because of control traffic overhead


MONITORING PVST
    Verification commands:
        show spanning-tree
        show spanning-tree vlan <vlan-id>
        show spanning-tree root
        show spanning-tree blocked ports

IMPLEMENTING PVST
    CONFIGURIND PRIORITY PER VLAN   
    spanning-tree vlan <vlan-id> priority <priority>
    spanning-tree vlan <vlan-id> root primery
    spanning-tree vlan <vlan-id> root secondary



CONFIGURING PORT COST AND POR PRIORITYU PER VLAN

    spanning-tree vlan <vlan-id> port-priority <priority>
    spanning-tree vlan <vlan-id> cost <cost>



PROTECT MECANNING A BPDU


PORTFAST-
    access ports typically connect to hosts:
        laptops, servers
    end users dont want to wait up to a minute to gain network connectivity
    portfast designed to speed up this process


PORTFAST OPERATIN & RESTRICTIONS
    when enabled ona port, portfast places port immediately into fowarding state upon initial connection
    not to be used on vlan trunk ports unless there is certainty about lack-of-loops



PORTFAST CONFIGURATION
    CONFIGURATION
        spanning-tree portfast
        spanninf-tree portfast default

    VERIFICATION
        show spanning-tree interface <type/number> portfast



BPDU GUARD

    usually configured on access ports that lead to hosts
    if any BPDU is seen, port goes into err-disabled state
    configuration:
        spanning-tree bpduguard enable
        spanning-tree portfast bpduguard default

BPDU FILTER

confiured in access ports 
does not send or receive bpdu 
does not go into err-disabled when it receives unauthorized bpdu
configured with the spanning-tree bpdufilter enable interface-specific command

veryfing BPDU guard/filter

show spanning-tree interface <interface> detail



========RAPID SPANNING-TREE (RSTP)

RSTP (802.1w)

    WNHANCEMENT TO LEGACY 802.1D STP
    designed to speed up convergence
    link type is derived from duples mode
    full duplex link is considered as a p2p
    half cuples link is assumed to be shared

RSTP PORT ROLES

    ROOT PORT: port that has best root path cost to the root
    DESIGNATED PORT: downstream port that has best root path cost to the root
    ALTERNATE PORT: port that has alternate path to the root 
                    can only listen to the bpdus
    BAKCUP PORT: considered as a backup designated port
    DISCARDING: combines the 802.1d disabled, blocking, and listening states
                no MAC addresses are leardned and incoming frames are dropped
    LEARNING: cannot send or receive data
              MAC addresses are learned
    FOWARDING: can send and receive data
    altenate and backup is blocking 

RSTP ADDITIONAL FEATURES
    root port recovery
    immediate transition to designated port when connected to hosts.

            

CONFIGURING & VERIFYING RSTP
    configuring rapid mode 
        spanning-tree mode rapid-pvst

    verifying RSTP
        show spaanning-tree summary

