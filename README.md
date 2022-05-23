# Honeyprint Honeypot

Honeypot that emulates a printer server using the IPP protocol (pkipplib).

## Installation

### Dependencies

The following packages are required in order for honeyprint to operate: gevent, pkipplib. Install the required dependencies with:

```bash
pip3 install -r requirements.txt
```

### Run honeyprint

For Linux systems, screen is recommended since honeyprint does not run as a daemon and will terminate if a terminal is lost. To activate honeyprint simply issue the command:

```bash
# run honeyprint in a screen
screen -d -m -S honeyprint python3 server.py

# to attach to the running screen
screen -r honeyprint
```

### Run honeyprint using Docker

Run honeyprint using a Docker image from DockerHub in one command:

```bash
docker container run -d --name honeyprint -p 9100:9100 verovaleros/honeyprint:latest
```
