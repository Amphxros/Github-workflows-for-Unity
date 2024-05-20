# Usa una imagen base con Ubuntu
FROM  unityci/editor:ubuntu-2022.3.29f1-windows-mono-3


WORKDIR /project
COPY . .

CMD cd /project && ./main.sh