#!/bin/bash 
wall "	#Architecture: $(uname -a)
	#CPU physical: $(cat /proc/cpuinfo | grep "physical id" |  uniq | wc -l)
	#vCPU: $(grep "^processor" /proc/cpuinfo | wc -l)
	#Memory Usage: $(free -m | grep Mem | awk '{printf"%d/%dMB (%.2f%%)\n", $3, $2, $3/$2 * 100}')
	#Disk Usage: $(df -h |awk NR==4'{printf "%d/%dGb (%s)",$3,$2,$5}')
	#CPU load: $(mpstat | grep all | awk '{printf "%.2f%%\n", 100-$13}')
	#Last boot: $(who -b | awk '{print($3,$4)}')
	#LVM use: $(if [ "$(lsblk | grep lvm | wc -l)" != 0 ] ; then printf "yes\n"; else printf "no\n" ;fi)
	#Connexions TCP:$(cat /proc/net/sockstat | awk  NR==2'{print $3}') ESTABLISHED
	#User log:$(users | wc -w)
	#Network: IP $(hostname -I) $(ip a |grep "link/ether" | awk '{print "("$2")"}')
	#Sudo:$(cat /var/log/sudo/sudo.log |grep "COMMAND" | wc -l) cmd
	"
