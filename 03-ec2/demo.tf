resource "aws_instance" "web" {
  ami           = "ami-0427dccbe06f9c360"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 instance t2micro"
  }
}