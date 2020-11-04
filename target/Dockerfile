FROM nginx:1.19

# 依存パッケージのインストール
RUN set -x && \
    apt update && \
    apt upgrade -y && \
    apt install -y openssh-server curl software-properties-common apt-transport-https gnupg vim

# Vaultのインストール
RUN set -x && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt update && \
    apt install vault
