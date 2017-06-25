#!/bin/bash

PID=`cat .pid`
kill "${PID}"
mvn clean wildfly-swarm:run &
echo $! > .pid
