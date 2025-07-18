terraform {
  backend "s3" {
    bucket = "dec2024class"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "dec2024class"
  }
}
