#!/usr/bin/env sh

set -x

cd project

export UNITY_EXECUTABLE=${UNITY_EXECUTABLE:-"c:/PROGRA~1/Unity/Hub/Editor/2022.3.7f1/Editor/Unity"}

../scripts/build.sh
read -p "Any kay"