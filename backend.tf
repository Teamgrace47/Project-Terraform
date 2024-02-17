terraform {
  backend "s3" {
    bucket = "my-1st-terraform-bucket"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "temp-table"
  }
}
