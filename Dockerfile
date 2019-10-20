FROM debian:10.1-slim
ARG CORURN_VERSION=4.5.1.1-1.1
RUN apt-get update -q && \
    apt-get install -q -y coturn=${CORURN_VERSION}

ENTRYPOINT [ "/usr/bin/turnserver" ]