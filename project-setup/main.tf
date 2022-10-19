module "ec2" {
    source       = "./ec2"
}

output frontend_op {
    value = module.ec2.
}
