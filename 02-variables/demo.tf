variable  "sample" {
    default = "Hello world from variable example"
}

output "sample-op"{
    value = var.sample
}

output "sample-op2" {
    value = "value of sample is ${var.sample}"
}

variable "intro-person" {
    default = [
        "Nimmi",
        "Westford",
        26
    ] 
}

output "introduction-op" {
    value = "My name is ${var.intro-person[0]}"
}

output "introduction-op1" {
    value = "My name is  ${var.intro-person[0]} and living in  ${var.intro-person[1]} and house number is  ${var.intro-person[2]}}"
    
}


