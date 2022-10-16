variable  "sample" {
    define = "Hello world from variable example"
}

output "sample-op"{
    value = var.sample
}