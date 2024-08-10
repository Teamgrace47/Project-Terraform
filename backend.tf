terraform {
  backend "s3" {
    bucket = "june2024class"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "june2024class"
  }
}
