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
    default = [
        "Nimmi",
        "Westford",
        26
    ] 
}

output "introduction-op" {
    value = "My name is ${var.introduction[0]}"
}

output "introduction-op1" {
    value = "My name is  ${var.introduction[0]} and living in  ${var.introduction[1]} and house number is  ${var.introduction[2]}"
    
}

variablr ex-map {
    default = {
        Name = "Nimmi"
        address = "Westford"
        number = 26
    }
}

#How to print the map varibale
output ex-map {
    value = "My name is ${var.ex-map["Name"]}"
}

