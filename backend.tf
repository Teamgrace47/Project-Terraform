terraform {
  backend "s3" {
    bucket = "may2025class"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "may2025table"
  }
}
