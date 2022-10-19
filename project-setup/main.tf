module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "0.0.2"
}

output frontend_op {
    value = module.ec2.spot_public_ip
}
