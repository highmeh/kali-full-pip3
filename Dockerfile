FROM kalilinux/kali

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
    
RUN apt-get -y update && \
    apt-get -y install sudo vim python3 ssh
RUN useradd -U r00t -G root,shadow -d /home/r00t -s /bin/bash -p "$1$KZAQq71m$O/HljrQEIL.Woe5VRgI3B/"
RUN echo "root:w00tw00t" | chpasswd
RUN echo "UsePrivilegeSeparation no" >> /etc/ssh/sshd_config \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config \
    echo "Port 22" >> /etc/ssh/sshd_config \
    service ssh start

CMD ["/bin/bash"]
