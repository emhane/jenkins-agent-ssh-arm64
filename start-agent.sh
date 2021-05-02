#!/bin/bash

docker build -t ci1 . 

docker run --platform linux/amd64 -d --rm --name=ci1 -p 22:22 -e "JENKINS_AGENT_SSH_PUBKEY=$@" -v /var/run/docker.sock:/var/run/docker.sock:rw ci1

VARS1="HOME=|USER=|MAIL=|LC_ALL=|LS_COLORS=|LANG="
VARS2="HOSTNAME=|PWD=|TERM=|SHLVL=|LANGUAGE=|_="
VARS="${VARS1}|${VARS2}"
docker exec ci1 sh -c "env | egrep -v '^(${VARS})' >> /etc/environment"
