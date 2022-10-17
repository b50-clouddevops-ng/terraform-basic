resource "aws_instance" "web" {
  ami           = "ami-0427dccbe06f9c360"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web-sg.id]

  tags = {
    Name = "EC2 instance t2micro"
  }
}

resource "aws_security_group" "web-sg" {
  name = "${random_pet.name.id}-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}