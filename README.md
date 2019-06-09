# bochs-emulator

* https://github.com/eshnil2000/littleosbook 
* https://defuse.ca/bochs-hacking-guide.htm
* https://github.com/eshnil2000/os-tutorial

### aws instance, use ubuntu t3.medium at minimum
```
sudo apt-get install bochs bochs-x
sudo apt-get install xorg xauth xterm nasm
```

```
sudo nano /etc/ssh/sshd_config

```

```
PasswordAuthentication yes
X11Forwarding yes
```

```
sudo /etc/init.d/ssh restart
```
```
sudo mkdir -p /home/nick
sudo useradd nick
sudo passwd nick
sudo usermod -s /bin/bash nick
sudo chown nick:nick /home/nick
sudo usermod --home /home/nick nick
login to server with:
ssh -Y nick@ipaddress
```

```
wget http://distro.ibiblio.org/tinycorelinux/10.x/x86/release/TinyCore-current.iso
wget http://distro.ibiblio.org/tinycorelinux/10.x/x86/release/Core-current.iso
```

```
bochs
```

# To customize, add a .bochsrc file
```nano .bochsrc ```
```
megs: 512
romimage: file=/usr/share/bochs/BIOS-bochs-latest
vgaromimage: file=/usr/share/bochs/VGABIOS-lgpl-latest
#ata0-master: type=disk, path="c.img", mode=flat
boot: cdrom,disk
log: bochsout.txt
mouse: enabled=0
clock: sync=realtime
display_library: x
cpu: count=1, ips=1000000000
# CDROM
ata1: enabled=1, ioaddr1=0x170, ioaddr2=0x370, irq=15
#ata1-master: type=cdrom, path="/home/nick/bochs/Core-current.iso", status=inserted
ata1-master: type=cdrom, path="/home/nick/bochs/TinyCore-current.iso", status=inserted
```
## To run program: 
```
bochs -f .bochsrc 
```

# To make an image:
```
bximage
```

# To compile a simple boot sector, make sure input file name is not more than 8 characters long:
* in dos, the file name would follow the ‘short name rule’, which in a ‘8.3’ format. file name can not over 8 characters long, and suffix can not be over 3 characters long. all space would be removed
```
nasm -f bin bssimple.asm -o bssimple.bin
```
### To view contents of bin
```
od -t x1 -A n bssimple.bin
```
