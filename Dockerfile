FROM python:2.7.18-alpine3.11
LABEL maintainer="mjy@z.mjyai.com"

RUN apk add --no-cache git bash && \
    mkdir -p ~/bin ~/.local && \
    git clone "https://github.com/pyroscope/pyrocore.git" ~/.local/pyroscope && \
    sed -i 's/in_docker=0/in_docker=1/g' ~/.local/pyroscope/update-to-head.sh && \
    sed -i 's/git:/https:/g' ~/.local/pyroscope/update-to-head.sh && \
    bash ~/.local/pyroscope/update-to-head.sh && \
    apk del git bash
ENV PATH=$PATH:/root/bin
WORKDIR /root/bin