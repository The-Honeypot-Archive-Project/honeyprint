# Honeyprint Honeypot
[![Docker Image CI](https://github.com/The-Honeypot-Archive-Project/honeyprint/actions/workflows/docker-image.yml/badge.svg)](https://github.com/The-Honeypot-Archive-Project/honeyprint/actions/workflows/docker-image.yml)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/The-Honeypot-Archive-Project/honeyprint)
![Docker Pulls](https://img.shields.io/docker/pulls/The-Honeypot-Archive-Project/honeyprint?color=green)

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

### Troubleshooting

If you do not see the server running it's possible you are having issues with the library used. It's possible that if you run it outside docker you will see this error:

```bash
    from pkipplib import pkipplib
  File "/usr/local/lib/python3.10/dist-packages/pkipplib/pkipplib.py", line 308
    raise KeyError, key
                  ^
```

The error is caused by the not-ported pkipplib library to Python3. Run the following command to solve:

```bash
2to3 -w /usr/local/lib/python3.10/dist-packages/pkipplib/pkipplib.py
```

### Run honeyprint using Docker

Run honeyprint using a Docker image from DockerHub in one command:

```bash
docker container run -d --name honeyprint -p 9100:9100 thehoneypotarchiveproject/honeyprint:latest
```
