terraform {
  backend "s3" {
    bucket = "terraformstatevenky"
    key    = "statefile/terraform.tfstate"
    region = "us-east-2"
  }
}
