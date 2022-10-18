
resource "aws_instance" "demo" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "EC2 instance tf remote state"
  }
}

  output "public_ip" {
    value = aws_instance.demo.public_ip
   }


variable "sg" {}
