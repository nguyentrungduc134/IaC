
provider "aws" {
  region = "us-east-1"

  # Allow any 2.x version of the AWS provider
#  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-05723c3b9cf4bf4ff"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
