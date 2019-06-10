FROM ubuntu

RUN apt-get update && apt-get install -y xterm bochs bochs-x xorg xauth nasm 
RUN apt-get update && apt-get install -y wget build-essential
#RUN useradd -ms /bin/bash xterm
#USER xterm
#WORKDIR /home/xterm

#RUN useradd -ms /bin/bash nick
#USER nick
WORKDIR /home/nick
RUN cd /home/nick && wget http://distro.ibiblio.org/tinycorelinux/10.x/x86/release/TinyCore-current.iso
RUN cd /home/nick && wget http://distro.ibiblio.org/tinycorelinux/10.x/x86/release/Core-current.iso

ADD .bochsrc /home/nick
WORKDIR /home/nick
