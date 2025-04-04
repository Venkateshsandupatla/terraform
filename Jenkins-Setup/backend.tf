terraform {
  backend "s3" {
    bucket = "terraformstatevenky"
    key    = "Jenkins/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform_state"
  }
}
