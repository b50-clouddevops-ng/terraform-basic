module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "0.0.2"

}

output "availability_zone_op" {
    value = module.frontend.availability_zone_op
}

output "instance_op" {
    value = module.frontend.aws_spot_instance_op
}



/* output "public_op" {
    value = module.frontend.aws_op
} */
