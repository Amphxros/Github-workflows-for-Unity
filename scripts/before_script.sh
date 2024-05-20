#!/usr/bin/env bash

set -e
set -x
mkdir -p /project/.cache/unity3d
mkdir -p /project/.local/share/unity3d/Unity/
set +x
echo 'Writing $UNITY_LICENSE_CONTENT to license file /project/.local/share/unity3d/Unity/Unity_lic.ulf'
echo "$UNITY_LICENSE_CONTENT" | base64 --decode | tr -d '\r' > /project/.local/share/unity3d/Unity/Unity_lic.ulf