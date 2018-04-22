FROM ubuntu:artful

LABEL maintainer="nachtgold"

COPY ./gameserver/code /code
RUN apt-get update -q \
        && apt-get install -y -q clang-5.0 clang-tidy-5.0 clang-format-5.0
RUN apt-get install -y -q cmake libeigen3-dev liblua5.3-dev libmysqlcppconn-dev
RUN export CC=/usr/bin/clang-5.0 && \
    export CXX=/usr/bin/clang++-5.0 && \
    mkdir -p /build && \
    cd /build && \
    cmake /code && \
    make -j4

# connecting to database is working
# RUN apt-get install -y -q mysql-client

EXPOSE 9010
