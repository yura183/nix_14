#!/bin/sh
echo "Start"
mvn clean install
sleep 1s
java -jar target/main.jar
sleep 1s
echo "End"