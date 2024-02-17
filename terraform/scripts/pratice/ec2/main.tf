provider "aws" {

}
resource "aws_instance" "example" {
  ami = "ami-0bfcd22702bd20490"
  instance_type = "t2.micro"
  tags =  {
    Name = "junior"
  } 
}

