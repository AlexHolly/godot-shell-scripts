#!/bin/bash

PROJECTS="project1 project2 project3"

for PROJECT in $PROJECTS
do
	cd ./$PROJECT
	./build.sh
	cd ..
done
