FROM benst/kali-full

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN apt-get update -y
RUN apt-get install -y \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install kube-hunter

CMD ["/bin/bash"]
