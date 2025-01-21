//just for practice

variables {
  bucket         = "b2111933-tfbucket"
  dynamodb_table = "b2111933-tftable"
  dynamodb_key   = "b2111933-tfstate"
  //more
}

run "bucket_tests" {
  command = plan
  assert {
    condition     = var.bucket == "b2111933-tfbucket"
    error_message = "Not our bucket!"
  }
}

run "dynamodb_table_tests" {
  command = plan
  assert {
    condition     = var.dynamodb_table == "b2111933-tftable"
    error_message = "Not our table!"
  }
}

run "dynamodb_key_tests" {
  command = plan
  assert {
    condition     = var.dynamodb_key == "b2111933-tfstate"
    error_message = "Not a valid key!"
  }
}

