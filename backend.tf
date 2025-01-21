terraform {
  backend "s3" {
    bucket         = "b2111933-tfbucket"
    key            = "state"
    region         = "us-east-1"
    dynamodb_table = "b2111933-tftable"
  }
}
