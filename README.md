# SPN Docker Environment

This repository contains DockerFiles and scripts used to set up a SPN server for quick testing.

**The Docker environment should currently not be used to set up a “production”
server** as database migrations do not work properly.

## Preparing the repository

This repository contains the other SPN repositories (gameserver, relayserver
and website) as git submodules. These have to be initialized:

    git submodule update --init --recursive

Afterwards you can go to each `<program>/code` directory and check out the
revision you’d like to test.

## Preparing Docker images

Some program share a common, static base layer, which must be built first:

    ./0_build_baselayer.sh

Afterwards, images for the different programs can be built:

    ./1_build_images.sh

## Running the programs

A wrapper script exists for convenience:

    ./2_run.sh

This script starts the database container in the background, waits 5 seconds
and then starts the other containers in the foreground.

If you are starting the containers from a clean state, 5 seconds may not be
enough to get the database up before the other containers. It is recommended to
run the containers individually like this:

    docker-compose up -d database
    sleep 10
    docker-compose up -d website    # this initializes the database
    sleep 10
    docker-compose up               # runs the rest and shows log messages
