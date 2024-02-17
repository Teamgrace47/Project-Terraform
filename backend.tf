terraform {
  backend "s3" {
    bucket = "my-tfpro-bucket"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "tf-temp-table"
  }
}
