module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
     APP_VERSION  = "0.0.2"

}


output "public_op" {
    value = module.frontend.aws_op
}
