#!/bin/bash

GIT_PULL="$(git pull)"

if [ "${GIT_PULL}" == "Already up-to-date." ]; then
	echo "${GIT_PULL}"
else
	./restart.sh
fi