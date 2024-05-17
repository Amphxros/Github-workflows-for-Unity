#!/bin/bash

# Configura las variables necesarias
PROJECT_PATH=./project
BUILD_PATH=$PROJECT_PATH/Build

# Ejecuta la construcción en modo batch usando la imagen de GameCI
docker run --rm \
    -v $PROJECT_PATH:/project \
    -v $BUILD_PATH:/build \
    unityci/editor:ubuntu-2022.3.29f1-windows-mono-3 \
    -projectPath /project \
    -buildTarget StandaloneLinux64 \
    -quit \
    -batchmode \
    -nographics \
    -logFile /build/build.log