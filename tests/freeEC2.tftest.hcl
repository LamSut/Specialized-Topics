variables {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
}

run "ec2_tests" {
  command = plan

  assert {
    condition     = module.ec2.ami == var.ami
    error_message = "Not a free AMI type!"
  }

  assert {
    condition     = module.ec2.instance_type == var.instance_type
    error_message = "Not a free instance type!"
  }
}

