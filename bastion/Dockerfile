FROM debian:stretch-slim

# 依存パッケージのインストール
RUN apt update && \
    apt upgrade && \
    apt install -y ssh curl software-properties-common apt-transport-https gnupg

# Vaultのインストール
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt update && \
    apt install vault

# ただただ待機するだけ
ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
