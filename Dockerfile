# Usa una imagen base con Ubuntu
FROM  unityci/editor:ubuntu-2022.3.29f1-windows-mono-3

WORKDIR /root
COPY . .

CMD cd /root && ./main.sh