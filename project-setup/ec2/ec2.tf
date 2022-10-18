resource "aws_spot_instance_request" "spot_worker" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = "t2.micro"
  wait_for_fulfillment      = true 
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "var.COMPONENT"
  }
}

