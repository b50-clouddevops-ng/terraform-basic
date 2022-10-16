/* #Declaring a list variable
variable "ex-list" {
    default = [
        "AWS",
        "GCP",
        "DevOps",
        100,
        true,
        "Verma" 
    ]
}
output "ex-list-op1" {
    value = "Hello ${var.ex-list[3]}"
}

# From the above list, you can see that data in list can be of any type indivudually. 
output "ex-list-op" {
    value = "Welcome to ${var.ex-list[2]} Training and this contains  ${var.ex-list[0]} and the trainer name is  ${var.ex-list[5]}"
} */