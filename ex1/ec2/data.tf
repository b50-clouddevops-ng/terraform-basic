data "aws_ami" "my_ami" {
  most_recent      = true
  name_regex       = "b50_ansible_AMI"
  owners           = ["self"]
}