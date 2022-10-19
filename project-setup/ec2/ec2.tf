/* resource "aws_spot_instance_request" "spot_worker" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = "t2.micro"
  wait_for_fulfillment      = true 
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "vars.COMPONENT"
  } */

resource "aws_instance" "demo" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "EC2 instance tf remote state"
  }
}

  /* output "spot_public_ip" {
    value = aws_spot_instance_request.spot_worker.public_ip
  } */

/*   provisioner "remote-exec" {
  
  # Connection Provisioner
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

    inline = [
      "ansible-pull -U https://github.com/b50-clouddevops-ng/ansible.git -e COMPONENT=${var.COMPONENT} -e ENV=dev -e APP_VERSION=${var.APP_VERSION} roboshop.yml",
    ]
  } */


}

