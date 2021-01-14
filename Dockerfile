FROM kalilinux/kali-linux-docker

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN apt-get -y update && apt-get install -y \
    kali-linux-full \
    python3-pip \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install kube-hunter

CMD ["/bin/bash"]
