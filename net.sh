

ip netns add ns1
ip link add name ns1-nic type veth peer name ns1-vnic
ip link set ns1-vnic netns ns1
ip netns exec ns1 ip link set ns1-vnic name eth0
ip netns exec ns1 ip addr add 10.0.0.100/24 dev eth0
ip netns exec ns1 ip link set eth0 up
ip netns exec ns1 ip link set lo up
brctl addbr testbr
brctl addif testbr ns1-nic
ip link set ns1-nic up
ip addr add 10.0.0.1/24 dev testbr
ip link set testbr up
ip netns exec ns1 ip route add default via 10.0.0.1


iptables -A FORWARD -i testbr -o ens33 -j ACCEPT
iptables -A FORWARD -o testbr -i ens33 -j ACCEPT
iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o ens33 -j MASQUERADE

