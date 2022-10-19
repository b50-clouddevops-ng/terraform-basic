module "ec2" {
    source       = "./ec2"
    COMPONENT    = "frontend"
     APP_VERSION  = "0.0.2"

}


output "ec2_op" {
    value = module.ec2.aws_op
}
