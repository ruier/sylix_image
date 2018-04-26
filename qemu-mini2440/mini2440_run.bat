start qemu-system-arm.exe -M mini2440 -show-cursor -kernel ../bspmini2440/Debug/bspmini2440.bin -serial telnet:127.0.0.1:1200,server -mtdblock nand.bin -serial file:virtualkbd -net nic -net tap,ifname=virtual
start putty.exe telnet://127.0.0.1:1200/
