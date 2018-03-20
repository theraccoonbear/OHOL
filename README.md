# One Hour One Life: Dockerized

This will let you easily bring up a container running a One Hour One Life game server.

## Setup

You will need to add your ticket ID you receieved when you purchased the game (it's a long string comprised of 4 groups of 5 alpha-numeric characters) to the container configurations.  Save a file at the repo root called `ticketID.cfg` and place just your ticket ID in that file.

## Build

You will need to Docker installed to build the image.  From the repo root run:

`$ docker-compose build`

## Run

Once the Docker image has been built, you can bring up a container:

`$ ./utils/bounce hard`

This will ensure a fresh container in a clean state is brought up.
