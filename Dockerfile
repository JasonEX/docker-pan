FROM afian/filerun

ARG NG_VER='1.1.4'

RUN curl -L https://github.com/mayswind/AriaNg/releases/download/${NG_VER}/AriaNg-${NG_VER}.zip -o /ng.zip && \
    unzip /ng.zip -d /ng && \
    apt-get update && \
    apt-get install -y zip && \
    zip -ur /filerun.zip /ng && \
    rm /ng -rf &&\
    rm /ng.zip