FROM kalilinux/kali

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
RUN useradd -U r00t -G root -d /home/r00t -s /bin/bash -p $(echo w00tw00t | openssl passwd -1 -stdin) r00t
RUN echo -e "w00tw00t\nw00tw00t" | passwd root

CMD ["/bin/bash"]
