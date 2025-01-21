terraform {
  backend "s3" {
    bucket         = "b2111933-tfbucket"
    key            = "b2111933-tfstate"
    region         = "us-east-1"
    dynamodb_table = "b2111933-tftable"
  }
}
