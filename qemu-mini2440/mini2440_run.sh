#!/bin/sh
./qemu-system-arm -M mini2440 -show-cursor -kernel ../bspmini2440/Debug/bspmini2440.bin -serial stdio -mtdblock nand.bin -net nic,vlan=0 -net tap,vlan=0,ifname=tap0
