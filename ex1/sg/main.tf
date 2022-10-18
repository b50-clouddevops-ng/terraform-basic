#Create a security group
resource "aws_security_group" "allow_ssh" {
  name          = "allow_ssh"
  description   = "Allow ssh inbound traffic"

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

output "sg_id" {
    value      = "aws_security_group.allow_ssh.id"
}

