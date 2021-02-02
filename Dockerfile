FROM kalilinux/kali

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
    
RUN apt-get -y update && \
    apt-get -y install sudo vim curl python3
RUN useradd -U r00t -G root,shadow -d /home/r00t -s /bin/bash -p "$1$KZAQq71m$O/HljrQEIL.Woe5VRgI3B/"
RUN mkdir /home/r00t && \
    chmod 777 /home/r00t &&\
    chown r00t:r00t /home/r00t
RUN echo "root:w00tw00t" | chpasswd
RUN echo "nameserver 198.18.70.137" > /etc/resolv.conf

CMD ["/bin/bash"]
