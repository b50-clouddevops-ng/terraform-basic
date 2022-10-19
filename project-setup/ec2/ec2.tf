resource "aws_spot_instance_request" "spot_worker" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = "t2.micro"
  wait_for_fulfillment      = true 
  vpc_security_group_ids = [aws_security_group.allow_ssh1.id]

  tags = {
    Name = "vars.COMPONENT"
  }
}

output "aws_spot_instance_op" {
   value = aws_spot_instance_request.spot_worker.public_ip
}

output "availability_zone_op" {
   value = aws_spot_instance_request.spot_worker.availability_zone
}

/* resource "aws_instance" "demo" {
  ami                    = data.aws_ami.my_ami.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh1.id]

  tags = {
    Name = var.COMPONENT
  }
} */

/* output "aws_op" {
   value = aws_instance.demo.public_ip
}
 */


