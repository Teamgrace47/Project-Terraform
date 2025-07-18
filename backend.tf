terraform {
  backend "s3" {
    bucket = "dec2024class"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dec2024-table"
  }
}
