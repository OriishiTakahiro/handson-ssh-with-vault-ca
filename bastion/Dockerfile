FROM debian:stretch-slim

# 依存パッケージのインストール
RUN set -x && \
    apt update && \
    apt upgrade -y && \
    apt install -y ssh curl software-properties-common apt-transport-https gnupg

# Vaultのインストール
RUN set -x && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt update && \
    apt install -y vault

# ただただ待機するだけ
ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
