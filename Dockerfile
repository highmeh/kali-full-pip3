FROM benst/kali-full

LABEL maintainer "Jayme Hancock <jayme@blackjacknetworks.com>"

RUN apt-get update -y
RUN apt-get install -y \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*
    
CMD ["/bin/bash"]
