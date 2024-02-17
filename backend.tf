terraform {
  backend "s3" {
    bucket = "my-tf-pro-bucket"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-tf-temp-table"
  }
}
