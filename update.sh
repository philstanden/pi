#!/bin/bash

GIT_PULL="$(git pull)"

if [ "${GIT_PULL}" == "Already up-to-date." ]; then
         echo true
else
         echo false
fi
echo "${GIT_PULL}"