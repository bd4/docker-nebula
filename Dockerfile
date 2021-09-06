FROM debian:bullseye-slim

WORKDIR /bin

RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/slackhq/nebula/releases/latest/download/nebula-linux-amd64.tar.gz && \
    tar xzvf nebula-linux-amd64.tar.gz && \
    rm nebula-linux-amd64.tar.gz && \
    apt-get purge -y wget && \
    apt-get autopurge -y && \
    rm -rf /var/log/apt /var/cache/apt /var/lib/apt && \
    mkdir /nebula

COPY nebula-launch /bin
    
WORKDIR /nebula
EXPOSE 4242/udp

CMD /bin/nebula-launch
