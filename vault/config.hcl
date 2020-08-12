# データを保存するバックグラウンドストレージ
# MySQLやAWS S3, Zookeeperなど様々なものを指定可能 (ここではローカルファイル)
storage "file" {
  path = "/vault/file"
}

# Vaultサーバのアドレスバインディング
listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
}

# VaultCLIからアクセスするアドレスバインディング
api_addr = "http://0.0.0.0:8200"

disable_mlock = true

# WebUIをON
ui = true
