FROM benst/kali-full

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get install -y \
    python3-pip -f &&
    
CMD ["/bin/bash"]
