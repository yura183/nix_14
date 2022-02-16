#!/bin/sh

ant destroy
ant build
ant jar
java -jar build/jar/Ant.jar

echo END