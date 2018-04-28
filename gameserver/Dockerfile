FROM gpn-snake:baselayer-1.0.0

LABEL maintainer="nachtgold"

COPY ./gameserver/code /code
RUN export CC=/usr/bin/clang-5.0 && \
    export CXX=/usr/bin/clang++-5.0 && \
    mkdir -p /build && \
    cd /build && \
    cmake /code && \
    make -j4

# connecting to database is working
# RUN apt-get install -y -q mysql-client

EXPOSE 9010
