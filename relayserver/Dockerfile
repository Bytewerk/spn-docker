FROM ubuntu:artful

LABEL maintainer="nachtgold"

COPY ./relayserver/code /code
RUN apt-get update -q \
        && apt-get install -y -q clang-5.0 clang-tidy-5.0 clang-format-5.0
RUN apt-get install -y -q cmake libeigen3-dev libssl-dev
RUN export CC=/usr/bin/clang-5.0 && \
    export CXX=/usr/bin/clang++-5.0 && \
    mkdir -p /build && \
    cd /build && \
    cmake /code && \
    make
                            
