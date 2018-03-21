# One Hour One Life: Dockerized

This will let you easily bring up a container running a One Hour One Life game server.

## Setup for build

You will need to add your ticket ID you receieved when you purchased the game (it's a long string comprised of 4 groups of 5 alpha-numeric characters) to the container configurations.  Save a file at the repo root called `ticketID.cfg` and place just your ticket ID in that file.

## Build the image

You will need to have Docker installed to build and run the image.  From the repo root in your terminal run:

`$ docker-compose build`

## Working with the server

### Run

Once the Docker image has been built, you can bring up a container:

`$ ./utils/up`

### Stop

To stop the server and preserve state:

`$ ./utils/halt`

### Remove

To stop the server and remove the persisted state:

`$ ./utils/destroy`

### Restart

To restart a running server:

`$ ./utils/bounce`

To restart destructively (remove the persisted state):

`$ ./utils/bounce hard`

_`bounce` will also implicitly run the following command_

### Logs

To view and follow the server's log output

`$ ./utils/logwatch`

### Shell

To shell into the Alpine Linux environment running the server:

`$ ./utils/shell`

## Limitations

Right now, the game and its data are installed into the Docker image.  This is probably fine for casual play, running a home server, etc.  If you want to run this as a persistent, public server though, you may not like this setup and want things like game data to be external.  I've tried running a setup with a Docker volume mounted, but the server does not seem to start properly, and I haven't been able to get it working yet.  If you have any success in this area, please send a PR.