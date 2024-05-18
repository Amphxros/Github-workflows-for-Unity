#!/usr/bin/env sh

set -x

cd project

export UNITY_EXECUTABLE=${UNITY_EXECUTABLE:-"c:/PROGRA~1/Unity/Hub/Editor/2022.3.7f1/Editor/Unity"}
export BUILD_NAME=${BUILD_NAME:-"ExampleProjectName"}

BUILD_TARGET=StandaloneLinux64 ../scripts/build.sh
BUILD_TARGET=StandaloneOSX ../scripts/build.sh
BUILD_TARGET=StandaloneWindows64 ../scripts/build.sh
BUILD_TARGET=WebGL ../scripts/build.sh
read -p "Press any key..."