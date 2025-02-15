# プロバイダの設定
provider "google" {
  project = var.google_project_id
  region = "asia-northeast1"
  
}

variable "google_project_id" {
  description = "The project ID"
  type = string
}

resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
  auto_create_subnetworks = false # 自動的にサブネットを作成しない
  mtu = 1460 # ネットワーク最大転送ユニット(MTU)の設定
}

resource "google_compute_subnetwork" "default" {
  name = "default-subnet"
  ip_cidr_range = "10.0.1.0/24" # サブネットのIPアドレス範囲
  region = "asia-northeast1" # 東京リージョン
  network = google_compute_network.vpc_network.id # 作成したネットワークのID
}

# Create a single VM instance
resource "google_compute_instance" "default" {
  name         = "vm-instance"
  machine_type = "f1-micro"
  zone         = "asia-northeast1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  # Install Django
  metadata_startup_script = "sudo apt-get update && sudo apt-get install -y python3 python3-pip && sudo pip3 install Django==4.2"
  network_interface {
    network = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.default.id
    access_config {
      # Include this section to give the VM an external ip address
    }
  }
}