FROM arm32v7/openjdk:8-jre
# Note: Getting different architectures in slim images
#   see https://github.com/docker-library/openjdk/issues/278
#FROM arm32v7/openjdk:8-jre-slim

ARG url=http://jminim.com/cada/MinimServer-0.8.5.2-linux-armhf.tar.gz

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends wget && \
    wget -O /opt/MinimServer.tar.gz ${url} && \
    cd /opt && \
    tar xf MinimServer.tar.gz && \
    rm MinimServer.tar.gz && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./minimserver.config /opt/minimserver/data/minimserver.config

EXPOSE 9790 9791

ENTRYPOINT [ "/opt/minimserver/bin/startc" ]
