module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "0.0.2"
}

/* output frontend_op {
    value = module.frontend.spot_public_ip
}
 */