data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "bucket-tfst-fiap-hackaton-t32"
    key    = "vpc/terraform.state"
    region = "us-east-1"
  }
}


data "terraform_remote_state" "dynamodb" {
  backend = "s3"

  config = {
    bucket = "bucket-tfst-fiap-hackaton-t32"
    key    = "dynadb/terraform.state"
    region = "us-east-1"
  }
}
