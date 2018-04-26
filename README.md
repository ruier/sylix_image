# sylix_image
SylixOS qemu mini2440 image

该项目是 SylixOS 编译后的 mini2440 的 qemu 系统镜像，参考：
http://ruier.coding.me/2018/04/25/sylix-warmup/

# 使用
 1. 下载仓库： https://github.com/ruier/sylix_image.git
 2. 超级用户安装系统 tap 网络驱动： cd qemu-mini2440; addtap.bat; 
 3. 重名了网卡为 virtual
 4. 配置 virtual IPv4 为 192.168.7.20  （因为板卡 IP 192.168.7.30，配置为同一网段均可）
 5. 用命令：  nandCreator.exe 创建 nand.bin 
 6. 运行：  mini2440_run.bat
 
 执行后：cmd 打印：
 
λ mini2440_run.bat

start qemu-system-arm.exe -M mini2440 -show-cursor -kernel ../bspmini2440/Debug/bspmini2440.bin -serial telnet:127.0.0.1:1200,server -mtdblock nand.bin -serial file:virtualkbd -net nic -net tap,ifname=virtual

start putty.exe telnet://127.0.0.1:1200/

启动界面：


![启动界面](http://ruier.coding.me/images/blog/sylix_start.png)

系统进程

![top](http://ruier.coding.me/images/blog/sylix_top.png)
