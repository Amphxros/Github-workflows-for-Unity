#!/bin/bash

# Configura las variables necesarias
PROJECT_PATH=$(pwd)
BUILD_PATH=$PROJECT_PATH/Build

# Ejecuta la construcción en modo batch usando la imagen de GameCI
docker run --rm \
    -v $PROJECT_PATH:/project \
    -v $BUILD_PATH:/build \
    gameci/unity3d:2020.3.11f1 \
    -projectPath /project \
    -buildTarget StandaloneLinux64 \
    -quit \
    -batchmode \
    -nographics \
    -logFile /build/build.log