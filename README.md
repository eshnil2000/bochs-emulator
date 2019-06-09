# bochs-emulator

## https://defuse.ca/bochs-hacking-guide.htm
```
sudo apt-get install bochs bochs-x
sudo apt-get install xorg xauth xterm nasm
```
```sudo nano /etc/ssh/sshd_config
```
```
  PasswordAuthentication yes
	X11Forwarding yes
```
```
sudo mkdir -p /home/nick
sudo useradd nick
sudo passwd nick
sudo chown nick:nick /home/nick
sudo usermod --home /home/nick nick
login to server with:
ssh -Y nick@ipaddress
```
```
bochs
```

# To customize, add a .bochsrc file
```nano .bochsrc ```
```
megs: 256
romimage: file=/usr/share/bochs/BIOS-bochs-latest
vgaromimage: file=/usr/share/bochs/VGABIOS-lgpl-latest
ata0-master: type=disk, path="c.img", mode=flat
boot: cdrom,disk
log: bochsout.txt
mouse: enabled=0
clock: sync=realtime
display_library: x

# CDROM
ata1: enabled=1, ioaddr1=0x170, ioaddr2=0x370, irq=15
ata1-master: type=cdrom, path="TinyCore-current.iso", status=inserted
```

# To make an image:
```
bximage
