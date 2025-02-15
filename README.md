# learn_terraform_on_google_cloud

## 前提

- terraformのインストール

```
❯❯❯ brew install terraform
❯❯❯ terraform --version
Terraform v1.5.7
on darwin_amd64

Your version of Terraform is out of date! The latest version
is 1.10.5. You can update by downloading from https://www.terraform.io/downloads.html
```

- gcloudコマンドのインストールとアカウント設定

```
❯❯❯ brew install --cask google-cloud-sdk
❯❯❯ gcloud config set account {mail addrress}
❯❯❯ gcloud config set project {project id}
❯❯❯ gcloud config list
```

- デプロイするリソースのAPIを有効化

