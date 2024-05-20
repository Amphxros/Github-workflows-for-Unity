UNITY_VERSION=2018.4.3f1
docker run -it --rm \
-e "UNITY_USERNAME=username@example.com" \
-e "UNITY_PASSWORD=example_password" \
-e "TEST_PLATFORM=linux" \
-e "WORKDIR=/project/project" \
-v "$(pwd):/project/project" \
gableroux/unity3d:$UNITY_VERSION \
bash

echo "Unity installed"