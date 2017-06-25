#!/bin/bash

GIT_PULL="$(git pull)"

if [ "${GIT_PULL}" == "Already up-to-date." ]; then
	echo "${GIT_PULL}"
else
	PID=`cat .pid`
	kill "${PID}"
	mvn clean wildfly-swarm:run &
	echo $! > .pid
fi