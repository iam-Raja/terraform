variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL latest AMI"
}

variable "instance_type" {
    type = string
    default="t2.micro"
}


variable "tags" {
    default = {
        Name = "Demo_Instance"
        Env = "UAT"
        Created = "RAJA"
    }   
}

variable "name" {
    type = string
    default = "allow_SSH"
}

variable "port" {
    type = number
    default = "22"
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

