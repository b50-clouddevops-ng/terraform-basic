variable  "sample" {
    default = "Hello world from variable example"
}

output "sample-op"{
    value = var.sample
}