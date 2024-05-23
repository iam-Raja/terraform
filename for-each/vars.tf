variable "instance_name" {
    type = map
    default = {
        db = "t2.micro"
        backend = "t3.micro"
        frontend = "t2.micro"
    }

}
variable "tags" {
    type = map
    default = {
        created = "raja"
        terraform = "true"
    }
  
}