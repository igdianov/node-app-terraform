terraform {
  backend "s3" {
    bucket = "node-app-terraform"
    key = "node-app-terraform.tfstate"
    region = "ap-south-1a"
  }
}
