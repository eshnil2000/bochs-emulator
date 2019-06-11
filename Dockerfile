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
#Dependencies for X-COmpiler
RUN apt install bison flex libgmp3-dev libmpc-dev libmpfr-dev texinfo
RUN apt install libcloog-isl-dev
RUN apt install libisl-dev

ADD .bochsrc /home/nick
WORKDIR /home/nick

