FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y wget
# run everything with bash from now on
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN useradd -m someone
USER someone
WORKDIR /home/someone
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
RUN source .nvm/nvm.sh && nvm install 6 && npm i pm2 -g
COPY app ./app
