variable  "sample" {
    default = "Hello world from variable example"
}

output "sample-op"{
    value = var.sample
}

output "sample-op2" {
    value = "value of sample is ${var.sample}"
}

variable "ex-list" {
    default = [
        "Nimmi",
        "Westford",
        26
    ] 
}

#Print the list example
output "ex-list" {
    value = "My name is  ${var.ex-list[0]} and living in  ${var.ex-list[1]} and house number is  ${var.ex-list[2]}"
    
}

#Declare the variable map
variable ex-map {
    default = {
        Name = "Nimmi"
        address = "Boston"
        number = 26
    }
}

#How to print the map varibale
output ex-map {
    value = "My name is ${var.ex-map["Name"]} and my address is ${var.ex-map["address"]} and my house number is ${var.ex-map["number"]}"
}

#How to declare the empty variables
variable "City" {}

output city {
    value = "My city name is ${var.City}"
}

variable State {}
output state {
    value = var.State
}
