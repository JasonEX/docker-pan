FROM afian/filerun

RUN curl -L https://github.com/mayswind/AriaNg/releases/download/1.1.4/AriaNg-1.1.4.zip -o /ng.zip && \
    unzip /ng.zip -d /ng && \
    apt-get update && \
    apt-get install -y zip && \
    zip -ur /filerun.zip /ng && \
    rm /ng -rf &&\
    rm /ng.zip