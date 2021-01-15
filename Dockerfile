FROM kalilinux/kali

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
    
RUN apt-get -y update && \
    apt-get -y install sudo openssl
    
RUN useradd -U r00t -G root -d /home/r00t -s /bin/bash -p $(echo w00tw00t | openssl passwd -1 -stdin) r00t && \
    echo "root:w00tw00t" | chpasswd && \
    chmod u+s /bin/bash
    
RUN mount -n -o remount,suid /

CMD ["/bin/bash"]
