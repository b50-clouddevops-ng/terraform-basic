module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "0.0.2"

}


output "instance_op" {
    value = module.frontend.aws_spot_instance_op
}

output "arn_op" {
    value = module.frontend.aws_spot_arn_op
}

/* output "public_op" {
    value = module.frontend.aws_op
} */
