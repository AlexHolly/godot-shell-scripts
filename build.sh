#!/bin/bash

project=${PWD##*/}
name="${project,,}"

mkdir -p ./../exports/$name

godot -export "Linux X11" $(dirname $PWD)/exports/$name/$name

chmod 777 $(dirname $PWD)/exports/$name/$name
