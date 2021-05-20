module "network" {
  source  = "app.terraform.io/mihail67-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name=mihai-network
  project_id=var.project
  subnets = [
  {
    subnet_name   = "mihai-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}