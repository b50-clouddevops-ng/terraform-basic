module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "0.0.2"
}

output "frontend-op" {
    value = module.frontend.public_ip
}
