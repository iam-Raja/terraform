variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL latest AMI"
}

variable "instance_type" {
    type = string
    default="t2.micro"
}


variable "instace_name" {
    default="DB"

}
    
