variable  "ami" {
    default = "ami-0520e698dd500b1d1"
}
variable "instance_type" {
    default = "t2.micro"
}

variable "Name" {
   default = "Helloworld" 
}
variable "awsiam_nane" {
   default = "loadbalancer"
}

variable "awsiam_path" {
   default = "system"
}

