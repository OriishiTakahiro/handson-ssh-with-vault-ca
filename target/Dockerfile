FROM nginx:1.19

# 依存パッケージのインストール
RUN apt update && \
    apt upgrade && \
    apt install -y openssh-server curl software-properties-common apt-transport-https gnupg vim

# Vaultのインストール
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt update && \
    apt install vault
