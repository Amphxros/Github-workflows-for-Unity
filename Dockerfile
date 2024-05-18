# Usa una imagen base con Ubuntu
FROM  unityci/editor:ubuntu-2022.3.29f1-windows-mono-3
# Instala las dependencias necesarias
RUN apt-get update && \
    apt-get install -y \
    wget \
    tar \
    libgtk2.0-0 \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    libxi6 \
    libgl1-mesa-glx \
    xvfb

# Descarga e instala Unity
RUN wget ${UNITY_DOWNLOAD_URL} -O Unity.tar.xz && \
    mkdir -p /opt/unity && \
    tar -xf Unity.tar.xz -C /opt/unity && \
    rm Unity.tar.xz

# Configura el directorio de trabajo
WORKDIR /opt/unity/Editor

# Configura la entrada del contenedor
ENTRYPOINT ["./Unity"]