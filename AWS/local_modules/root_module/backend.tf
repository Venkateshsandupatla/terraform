terraform {
  backend "s3" {
    bucket = "terraformstatevenky"
    key    = "local-module-tf/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform_state"
  }
}
