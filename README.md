# learn_terraform_on_google_cloud

## 前提

- terraformのインストール

```zsh
❯❯❯ brew install terraform
❯❯❯ terraform --version
Terraform v1.5.7
on darwin_amd64

Your version of Terraform is out of date! The latest version
is 1.10.5. You can update by downloading from https://www.terraform.io/downloads.html
```

- gcloudコマンドのインストールとアカウント設定

```zsh
❯❯❯ brew install --cask google-cloud-sdk
❯❯❯ gcloud config set account {mail addrress}
❯❯❯ gcloud config set project {project id}
❯❯❯ gcloud config list
```

- デプロイするリソースのAPIを有効化

## Google CloudのプロジェクトIDの設定

- .envファイルを用意

```zsh
make env
```

- .envファイルに自信が使用するGoogle CloudのプロジェクトIDを書き換える

```
TF_VAR_google_project_id={プロジェクトIDを書き換える}
```

- 環境変数として読み込み

```zsh
source set-env.sh
```


## terraformの基本操作

### terraform init

terraformを実行するための初期化処理

```zsh
terraform init
```

### terraform plan

terraformでどのような変更が加えられるかを確認

```zsh
terraform plan
```

### terraform apply

実際に変更を適用

```zsh
terraform apply
```

### terraform destroy

作成したリソースを削除

```zsh
terraform destroy
```
