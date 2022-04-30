FROM ubuntu:20.04

RUN apt-get update && apt-get install -y make gcc git curl

COPY --from=golang:1.18.1-buster /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"

RUN curl https://get.gitopia.com | bash

RUN git clone gitopia://gitopia1dlpc7ps63kj5v0kn5v8eq9sn2n8v8r5z9jmwff/gitopia &&\
    cd gitopia && make install 
RUN cp /root/go/bin/gitopiad /usr/local/bin/gitopiad

ENV GITOPIA_MONIKER="djinn"
ENV GITOPIA_CHAIN_ID="gitopia-janus-testnet"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]