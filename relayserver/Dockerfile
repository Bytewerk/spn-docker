FROM gpn-snake:baselayer-1.0.0

LABEL maintainer="nachtgold"

COPY ./relayserver/code /code
RUN export CC=/usr/bin/clang-5.0 && \
    export CXX=/usr/bin/clang++-5.0 && \
    mkdir -p /build && \
    cd /build && \
    cmake /code && \
    make
                            
EXPOSE 9009
