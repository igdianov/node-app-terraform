terraform {
  backend "s3" {
    bucket = "node-app-terraform"
    key = "terraform.tfstate"
    region = "ap-south-1a"
  }
}
# Remote State data source
data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "node-app-terraform"
    key    = "terraform.tfstate"
    region = "ap-south-1a"
  }
}
