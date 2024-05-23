#ec2
variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL latest AMI"

}

variable "instance_type" {
    type = string
    default="t2.micro"
}

variable "instance_name" {
    type = list
    default=["db" , "frontend" , "backend"]  
   
}
variable "common_tags" {
    default = {
        Env = "UAT"
        Created = "RAJA"
        Project = "expense"
        terraform= "true"
    }   
}

#aws_security_group

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

#aws_route53_record

variable "zone_id" {
    default="Z07779852ESP6TKS0688R"
}

variable "domain_name" {
    default="rajapeta.cloud"
}
