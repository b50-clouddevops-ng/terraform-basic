variable  "sample" {
    default = "Hello world from variable example"
}

output "sample-op"{
    value = var.sample
}

output "sample-op2" {
    value = "value of sample is ${var.sample}"
}

variable "introduction" {
    name = "Nimmi"
}

output "introduction-op" {
    value = "My name is ${var.introduction}"
}


