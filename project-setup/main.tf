module "ec2" {
    source       = "./ec2"
    sg = module.sg.sg_id
}


output frontend_op {
    value = module.ec2
}
