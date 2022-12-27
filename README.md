# Honeyprint Honeypot
[![Docker Image CI](https://github.com/verovaleros/honeypot_honeyprint/actions/workflows/docker-image.yml/badge.svg)](https://github.com/verovaleros/honeypot_honeyprint/actions/workflows/docker-image.yml)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/verovaleros/honeypot_honeyprint)
![Docker Pulls](https://img.shields.io/docker/pulls/verovaleros/honeyprint?color=green)

Honeypot that emulates a printer server using the IPP protocol (pkipplib).

## Installation

### Dependencies

The following packages are required in order for honeyprint to operate: gevent, pkipplib. Install the required dependencies with:

```bash
git clone https://github.com/The-Honeypot-Archive-Project/honeyprint.git
cd honeyprint/
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
