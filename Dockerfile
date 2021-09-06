FROM alpine:latest

WORKDIR /bin

RUN apk add --no-cache gzip tar wget && \
    wget https://github.com/slackhq/nebula/releases/latest/download/nebula-linux-amd64.tar.gz && \
    tar xzvf nebula-linux-amd64.tar.gz && \
    rm nebula-linux-amd64.tar.gz && \
    apk del gzip tar wget
    
RUN mkdir /nebula
    
WORKDIR /nebula
EXPOSE 4242/udp

CMD nebula -config /nebula/config.yml
