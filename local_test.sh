#!/usr/bin/env sh

set -x

export UNITY_EXECUTABLE=${UNITY_EXECUTABLE:-"c:/PROGRA~1/Unity/Hub/Editor/2022.3.7f1/Editor/Unity"}

cd project

TEST_PLATFORM=editmode ../scripts/test.sh
TEST_PLATFORM=playmode ../scripts/test.sh
read -p "Press any key..."