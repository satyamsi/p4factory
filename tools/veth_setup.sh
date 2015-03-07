#!/bin/bash
for idx in 0 1 2 3 125; do
    intf0="veth$(($idx*2))"
    intf1="veth$(($idx*2+1))"
    if ! ip link show $intf0 &> /dev/null; then
        ip link add name $intf0 type veth peer name $intf1
        ip link set dev $intf0 up
        ip link set dev $intf1 up
        TOE_OPTIONS="rx tx sg tso ufo gso gro lro rxvlan txvlan rxhash"
        for TOE_OPTION in $TOE_OPTIONS; do
           /sbin/ethtool --offload $intf0 "$TOE_OPTION" off
           /sbin/ethtool --offload $intf1 "$TOE_OPTION" off
        done
    fi
done