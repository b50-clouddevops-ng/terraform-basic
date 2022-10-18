
resource "aws_instance" "demo" {
  ami                    = "ami-0427dccbe06f9c360"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg"]

  tags = {
    Name = "EC2 instance tf remote state"
  }

}

  output "public_ip" {
    value = "aws_instance.demo.public_ip"
   }


variable sg {}
