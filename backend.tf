terraform {
  backend "s3" {
    bucket = "node-app-s3-terraform"
    key = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}
# Remote State data source
data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "node-app-s3-terraform"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}
