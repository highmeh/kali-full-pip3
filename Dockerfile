FROM kalilinux/kali-rolling

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN apt-get -y update && apt-get install -y \
    kali-linux-all \
    python3-pip \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install kube-hunter

CMD ["/bin/bash"]
